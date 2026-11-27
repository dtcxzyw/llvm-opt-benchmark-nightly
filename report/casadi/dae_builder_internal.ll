Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/dae_builder_internal?download=true
inline.NumInlined: 12008
inline.NumDeleted: 2573
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN6casadi18DaeBuilderInternal6add_lcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef 8) #31
  ret void

_ZNSt13_Bvector_baseISaIbEED2Ev.exit254:          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219, %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %bb.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %.pn99.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200 ], [ %.pn99.pn.pn.pn.pn.pn.pn313, %bb.br ], [ %.pn99.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252 ], [ %.pn99.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219 ], [ %i.jv, %bb.bz ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef 8) #31
  br label %.body

.body:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %bb.q
  %.pn126.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn126.pn.pn.pn.pn.pn.pn276, %bb.q ], [ %.pn126.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %.pn126.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %.pn110.pn.pn.pn.pn.pn.pn301, %bb.ax ], [ %.pn110.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ], [ %.pn110.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192 ], [ %.pn118.pn.pn.pn.pn.pn.pn289, %bb.ah ], [ %.pn118.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ], [ %.pn118.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171 ], [ %.pn99.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit254 ]
  resume { ptr, i32 } %.pn126.pn.pn.pn.pn.pn.pn.pn

bb.ce:                                            ; preds = %bb.bj, %bb.aq, %bb.aa, %bb.j
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN6casadi7to_enumINS_14OutputCategoryEEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::vector", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = icmp ne i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 19 ; 2 uses
  %i.l = load ptr, ptr %0, align 8
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !54
  store i8 0, ptr %i.m, align 8, !tbaa !53
  %i.o = invoke noundef i32 @_ZN6casadi7to_enumINS_14OutputCategoryEEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.m
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.m, align 8, !tbaa !53
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.m
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.d
  %i.w = load i64, ptr %i.m, align 8, !tbaa !53
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.al

bb.e:                                             ; preds = %.preheader, %bb.n
  %.019122 = phi i64 [ 0, %.preheader ], [ %i.ac, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.y = trunc nuw nsw i64 %.019122 to i32        ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !48, !alias.scope !1041
  switch i32 %i.y, label %default.unreachable [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 7, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.g, ptr noundef nonnull align 1 dereferenceable(3) @.str.176, i64 3, i1 false)
  store i64 3, ptr %i.h, align 8, !tbaa !54, !alias.scope !1041
  store i8 0, ptr %i.k, align 1, !tbaa !53, !alias.scope !1041
  br label %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.g, ptr noundef nonnull align 1 dereferenceable(3) @.str.401, i64 3, i1 false)
  store i64 3, ptr %i.h, align 8, !tbaa !54, !alias.scope !1041
  store i8 0, ptr %i.k, align 1, !tbaa !53, !alias.scope !1041
  br label %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit

bb.h:                                             ; preds = %bb.e
  store i32 1684108657, ptr %i.g, align 8, !alias.scope !1041
  store i64 4, ptr %i.h, align 8, !tbaa !54, !alias.scope !1041
  store i8 0, ptr %i.i, align 4, !tbaa !53, !alias.scope !1041
  br label %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit

bb.i:                                             ; preds = %bb.e
  store i32 1869768058, ptr %i.g, align 8, !alias.scope !1041
  store i64 4, ptr %i.h, align 8, !tbaa !54, !alias.scope !1041
  store i8 0, ptr %i.i, align 4, !tbaa !53, !alias.scope !1041
  br label %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit

bb.j:                                             ; preds = %bb.e
  store i32 1717920868, ptr %i.g, align 8, !alias.scope !1041
  store i64 4, ptr %i.h, align 8, !tbaa !54, !alias.scope !1041
  store i8 0, ptr %i.i, align 4, !tbaa !53, !alias.scope !1041
  br label %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit

bb.k:                                             ; preds = %bb.e
  store i32 1717920887, ptr %i.g, align 8, !alias.scope !1041
  store i64 4, ptr %i.h, align 8, !tbaa !54, !alias.scope !1041
  store i8 0, ptr %i.i, align 4, !tbaa !53, !alias.scope !1041
  br label %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit

bb.l:                                             ; preds = %bb.e
  store i8 121, ptr %i.g, align 8, !tbaa !53, !alias.scope !1041
  store i64 1, ptr %i.h, align 8, !tbaa !54, !alias.scope !1041
  store i8 0, ptr %i.j, align 1, !tbaa !53, !alias.scope !1041
  br label %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit

bb.m:                                             ; preds = %bb.e
  store i32 1702125938, ptr %i.g, align 8, !alias.scope !1041
  store i64 4, ptr %i.h, align 8, !tbaa !54, !alias.scope !1041
  store i8 0, ptr %i.i, align 4, !tbaa !53, !alias.scope !1041
  br label %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit

default.unreachable:                              ; preds = %bb.e
  unreachable

_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %i.z = phi i64 [ 3, %bb.f ], [ 3, %bb.g ], [ 4, %bb.h ], [ 4, %bb.i ], [ 4, %bb.j ], [ 4, %bb.k ], [ 1, %bb.l ], [ 4, %bb.m ]
  %i.aa = icmp eq i64 %i.b, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread96: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit
  %bcmp.i = call i32 @bcmp(ptr %i.l, ptr nonnull %i.g, i64 %i.b)
  %i.ab = icmp eq i32 %bcmp.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.ab, label %.thread, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.ac = add nuw nsw i64 %.019122, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, 8
  br i1 %exitcond.not, label %bb.o, label %bb.e, !llvm.loop !1035

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.732, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.o
  %i.af = load ptr, ptr %0, align 8, !tbaa !52
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !54
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.af, i64 noundef %i.ag)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.733, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 19 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 19 ; 3 uses
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit67.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit67.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.aj, ptr %5, align 8, !tbaa !48, !alias.scope !1042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.aj, ptr noundef nonnull align 1 dereferenceable(3) @.str.176, i64 3, i1 false)
  store i64 3, ptr %i.ak, align 8, !tbaa !54, !alias.scope !1042
  store i8 0, ptr %i.an, align 1, !tbaa !53, !alias.scope !1042
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %i.aj, i64 noundef 3)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.peel unwind label %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.peel: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit67.peel
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.peel unwind label %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.peel
  %i.ar = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.aj
  br i1 %i.as, label %.peel.next, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.peel
  %i.at = load i64, ptr %i.aj, align 8, !tbaa !53
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #31
  br label %.peel.next

.peel.next:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.p

.loopexit138:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.av = call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.734, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.y unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %.peel.next
  %.017123 = phi i64 [ 1, %.peel.next ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ] ; 2 uses
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.189, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.o
  %lpad.loopexit.split-lp173 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %bb.p
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ay = trunc nuw nsw i64 %.017123 to i32
  store ptr %i.aj, ptr %5, align 8, !tbaa !48, !alias.scope !1042
  switch i32 %i.ay, label %default.unreachable113 [
    i32 0, label %bb.q
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.t
    i32 4, label %bb.u
    i32 5, label %bb.v
    i32 6, label %bb.w
    i32 7, label %bb.x
  ]

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.aj, ptr noundef nonnull align 1 dereferenceable(3) @.str.176, i64 3, i1 false)
  store i64 3, ptr %i.ak, align 8, !tbaa !54, !alias.scope !1042
  store i8 0, ptr %i.an, align 1, !tbaa !53, !alias.scope !1042
  br label %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit67

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.aj, ptr noundef nonnull align 1 dereferenceable(3) @.str.401, i64 3, i1 false)
  store i64 3, ptr %i.ak, align 8, !tbaa !54, !alias.scope !1042
  store i8 0, ptr %i.an, align 1, !tbaa !53, !alias.scope !1042
  br label %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit67

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  store i32 1684108657, ptr %i.aj, align 8, !alias.scope !1042
  store i64 4, ptr %i.ak, align 8, !tbaa !54, !alias.scope !1042
  store i8 0, ptr %i.al, align 4, !tbaa !53, !alias.scope !1042
  br label %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit67

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  store i32 1869768058, ptr %i.aj, align 8, !alias.scope !1042
  store i64 4, ptr %i.ak, align 8, !tbaa !54, !alias.scope !1042
  store i8 0, ptr %i.al, align 4, !tbaa !53, !alias.scope !1042
  br label %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit67

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  store i32 1717920868, ptr %i.aj, align 8, !alias.scope !1042
  store i64 4, ptr %i.ak, align 8, !tbaa !54, !alias.scope !1042
  store i8 0, ptr %i.al, align 4, !tbaa !53, !alias.scope !1042
  br label %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit67

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  store i32 1717920887, ptr %i.aj, align 8, !alias.scope !1042
  store i64 4, ptr %i.ak, align 8, !tbaa !54, !alias.scope !1042
  store i8 0, ptr %i.al, align 4, !tbaa !53, !alias.scope !1042
  br label %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit67

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  store i8 121, ptr %i.aj, align 8, !tbaa !53, !alias.scope !1042
  store i64 1, ptr %i.ak, align 8, !tbaa !54, !alias.scope !1042
  store i8 0, ptr %i.am, align 1, !tbaa !53, !alias.scope !1042
  br label %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit67

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  store i32 1702125938, ptr %i.aj, align 8, !alias.scope !1042
  store i64 4, ptr %i.ak, align 8, !tbaa !54, !alias.scope !1042
  store i8 0, ptr %i.al, align 4, !tbaa !53, !alias.scope !1042
  br label %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit67

default.unreachable113:                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  unreachable

_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit67: ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %i.az = phi i64 [ 4, %bb.x ], [ 1, %bb.w ], [ 4, %bb.v ], [ 4, %bb.u ], [ 4, %bb.t ], [ 4, %bb.s ], [ 3, %bb.r ], [ 3, %bb.q ]
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %i.aj, i64 noundef %i.az)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69 unwind label %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit67
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71 unwind label %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69
  %i.bc = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.aj
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  %i.be = load i64, ptr %i.aj, align 8, !tbaa !53
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.bg = add nuw nsw i64 %.017123, 1             ; 2 uses
  %exitcond131.not = icmp eq i64 %i.bg, 8
  br i1 %exitcond131.not, label %.loopexit138, label %bb.p, !llvm.loop !1038

.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69, %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit67, %_ZN6casadi9to_stringB5cxx11ENS_14OutputCategoryE.exit67.peel, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.aj
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp
  %i.bj = load i64, ptr %i.aj, align 8, !tbaa !53
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.loopexit.split-lp

bb.y:                                             ; preds = %.loopexit138
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.z unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread

bb.z:                                             ; preds = %bb.y
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.5)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !alias.scope !1043
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  invoke void @__cxa_throw(ptr nonnull %i.av, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #29
          to label %bb.am unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread: ; preds = %.loopexit138
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.af:                                            ; preds = %bb.z
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.ag:                                            ; preds = %bb.aa
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.ah:                                            ; preds = %bb.ab
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

bb.ai:                                            ; preds = %bb.ac
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

bb.aj:                                            ; preds = %bb.ae, %bb.ad
  %.0 = phi i1 [ false, %bb.ae ], [ true, %bb.ad ] ; 2 uses
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %6, align 8, !tbaa !52    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
end_hunk_0
begin_hunk_1_@_ZNK6casadi18DaeBuilderInternal13dependent_funERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EESD_:bb.a
  resume { ptr, i32 } %.pn177.pn

bb.fd:                                            ; preds = %bb.bs, %bb.bc, %bb.ah, %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN6casadi7to_enumINS_8CategoryEEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::vector", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = icmp ne i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 17 ; 9 uses
  %i.k = load ptr, ptr %0, align 8
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !54
  store i8 0, ptr %i.l, align 8, !tbaa !53
  %i.n = invoke noundef i32 @_ZN6casadi7to_enumINS_8CategoryEEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.l
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.l, align 8, !tbaa !53
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.l
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.d
  %i.v = load i64, ptr %i.l, align 8, !tbaa !53
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.ap

bb.e:                                             ; preds = %.preheader, %bb.p
  %.019122 = phi i64 [ 0, %.preheader ], [ %i.ab, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.x = trunc nuw nsw i64 %.019122 to i32        ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !48, !alias.scope !1164
  switch i32 %i.x, label %default.unreachable [
    i32 0, label %bb.f
    i32 2, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
    i32 8, label %bb.k
    i32 1, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.n
    i32 9, label %bb.o
  ]

bb.f:                                             ; preds = %bb.e
  store i8 116, ptr %i.g, align 8, !tbaa !53, !alias.scope !1164
  store i64 1, ptr %i.h, align 8, !tbaa !54, !alias.scope !1164
  store i8 0, ptr %i.j, align 1, !tbaa !53, !alias.scope !1164
  br label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit

bb.g:                                             ; preds = %bb.e
  store i8 112, ptr %i.g, align 8, !tbaa !53, !alias.scope !1164
  store i64 1, ptr %i.h, align 8, !tbaa !54, !alias.scope !1164
  store i8 0, ptr %i.j, align 1, !tbaa !53, !alias.scope !1164
  br label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit

bb.h:                                             ; preds = %bb.e
  store i8 117, ptr %i.g, align 8, !tbaa !53, !alias.scope !1164
  store i64 1, ptr %i.h, align 8, !tbaa !54, !alias.scope !1164
  store i8 0, ptr %i.j, align 1, !tbaa !53, !alias.scope !1164
  br label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit

bb.i:                                             ; preds = %bb.e
  store i8 120, ptr %i.g, align 8, !tbaa !53, !alias.scope !1164
  store i64 1, ptr %i.h, align 8, !tbaa !54, !alias.scope !1164
  store i8 0, ptr %i.j, align 1, !tbaa !53, !alias.scope !1164
  br label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit

bb.j:                                             ; preds = %bb.e
  store i8 122, ptr %i.g, align 8, !tbaa !53, !alias.scope !1164
  store i64 1, ptr %i.h, align 8, !tbaa !54, !alias.scope !1164
  store i8 0, ptr %i.j, align 1, !tbaa !53, !alias.scope !1164
  br label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit

bb.k:                                             ; preds = %bb.e
  store i8 113, ptr %i.g, align 8, !tbaa !53, !alias.scope !1164
  store i64 1, ptr %i.h, align 8, !tbaa !54, !alias.scope !1164
  store i8 0, ptr %i.j, align 1, !tbaa !53, !alias.scope !1164
  br label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit

bb.l:                                             ; preds = %bb.e
  store i8 99, ptr %i.g, align 8, !tbaa !53, !alias.scope !1164
  store i64 1, ptr %i.h, align 8, !tbaa !54, !alias.scope !1164
  store i8 0, ptr %i.j, align 1, !tbaa !53, !alias.scope !1164
  br label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit

bb.m:                                             ; preds = %bb.e
  store i8 100, ptr %i.g, align 8, !tbaa !53, !alias.scope !1164
  store i64 1, ptr %i.h, align 8, !tbaa !54, !alias.scope !1164
  store i8 0, ptr %i.j, align 1, !tbaa !53, !alias.scope !1164
  br label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit

bb.n:                                             ; preds = %bb.e
  store i8 119, ptr %i.g, align 8, !tbaa !53, !alias.scope !1164
  store i64 1, ptr %i.h, align 8, !tbaa !54, !alias.scope !1164
  store i8 0, ptr %i.j, align 1, !tbaa !53, !alias.scope !1164
  br label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit

bb.o:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.g, ptr noundef nonnull align 1 dereferenceable(10) @.str.41, i64 10, i1 false)
  store i64 10, ptr %i.h, align 8, !tbaa !54, !alias.scope !1164
  store i8 0, ptr %i.i, align 2, !tbaa !53, !alias.scope !1164
  br label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit

default.unreachable:                              ; preds = %bb.e
  unreachable

_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit:   ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %i.y = phi i64 [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 10, %bb.o ]
  %i.z = icmp eq i64 %i.b, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread96: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit
  %bcmp.i = call i32 @bcmp(ptr %i.k, ptr nonnull %i.g, i64 %i.b)
  %i.aa = icmp eq i32 %bcmp.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.aa, label %.thread, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.ab = add nuw nsw i64 %.019122, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, 10
  br i1 %exitcond.not, label %bb.q, label %bb.e, !llvm.loop !1158

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.732, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.q
  %i.ae = load ptr, ptr %0, align 8, !tbaa !52
  %i.af = load i64, ptr %i.a, align 8, !tbaa !54
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.ae, i64 noundef %i.af)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.733, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 21 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 11 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 17 ; 10 uses
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit67.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit67.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.ai, ptr %5, align 8, !tbaa !48, !alias.scope !1165
  store i8 116, ptr %i.ai, align 8, !tbaa !53, !alias.scope !1165
  store i64 1, ptr %i.aj, align 8, !tbaa !54, !alias.scope !1165
  store i8 0, ptr %i.al, align 1, !tbaa !53, !alias.scope !1165
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull %i.ai, i64 noundef 1)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.peel unwind label %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.peel: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit67.peel
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.peel unwind label %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.peel
  %i.ap = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ai
  br i1 %i.aq, label %.peel.next, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.peel
  %i.ar = load i64, ptr %i.ai, align 8, !tbaa !53
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #31
  br label %.peel.next

.peel.next:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.r

.loopexit138:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.at = call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.734, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ac unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %.peel.next
  %.017123 = phi i64 [ 1, %.peel.next ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ] ; 2 uses
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.189, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.q
  %lpad.loopexit.split-lp173 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %bb.r
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.aw = trunc nuw nsw i64 %.017123 to i32
  store ptr %i.ai, ptr %5, align 8, !tbaa !48, !alias.scope !1165
  switch i32 %i.aw, label %default.unreachable113 [
    i32 0, label %bb.s
    i32 2, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.v
    i32 7, label %bb.w
    i32 8, label %bb.x
    i32 1, label %bb.y
    i32 3, label %bb.z
    i32 4, label %bb.aa
    i32 9, label %bb.ab
  ]

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  store i8 116, ptr %i.ai, align 8, !tbaa !53, !alias.scope !1165
  store i64 1, ptr %i.aj, align 8, !tbaa !54, !alias.scope !1165
  store i8 0, ptr %i.al, align 1, !tbaa !53, !alias.scope !1165
  br label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit67

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  store i8 112, ptr %i.ai, align 8, !tbaa !53, !alias.scope !1165
  store i64 1, ptr %i.aj, align 8, !tbaa !54, !alias.scope !1165
  store i8 0, ptr %i.al, align 1, !tbaa !53, !alias.scope !1165
  br label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit67

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  store i8 117, ptr %i.ai, align 8, !tbaa !53, !alias.scope !1165
  store i64 1, ptr %i.aj, align 8, !tbaa !54, !alias.scope !1165
  store i8 0, ptr %i.al, align 1, !tbaa !53, !alias.scope !1165
  br label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit67

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  store i8 120, ptr %i.ai, align 8, !tbaa !53, !alias.scope !1165
  store i64 1, ptr %i.aj, align 8, !tbaa !54, !alias.scope !1165
  store i8 0, ptr %i.al, align 1, !tbaa !53, !alias.scope !1165
  br label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit67

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  store i8 122, ptr %i.ai, align 8, !tbaa !53, !alias.scope !1165
  store i64 1, ptr %i.aj, align 8, !tbaa !54, !alias.scope !1165
  store i8 0, ptr %i.al, align 1, !tbaa !53, !alias.scope !1165
  br label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit67

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  store i8 113, ptr %i.ai, align 8, !tbaa !53, !alias.scope !1165
  store i64 1, ptr %i.aj, align 8, !tbaa !54, !alias.scope !1165
  store i8 0, ptr %i.al, align 1, !tbaa !53, !alias.scope !1165
  br label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit67

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  store i8 99, ptr %i.ai, align 8, !tbaa !53, !alias.scope !1165
  store i64 1, ptr %i.aj, align 8, !tbaa !54, !alias.scope !1165
  store i8 0, ptr %i.al, align 1, !tbaa !53, !alias.scope !1165
  br label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit67

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  store i8 100, ptr %i.ai, align 8, !tbaa !53, !alias.scope !1165
  store i64 1, ptr %i.aj, align 8, !tbaa !54, !alias.scope !1165
  store i8 0, ptr %i.al, align 1, !tbaa !53, !alias.scope !1165
  br label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit67

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  store i8 119, ptr %i.ai, align 8, !tbaa !53, !alias.scope !1165
  store i64 1, ptr %i.aj, align 8, !tbaa !54, !alias.scope !1165
  store i8 0, ptr %i.al, align 1, !tbaa !53, !alias.scope !1165
  br label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit67

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ai, ptr noundef nonnull align 1 dereferenceable(10) @.str.41, i64 10, i1 false)
  store i64 10, ptr %i.aj, align 8, !tbaa !54, !alias.scope !1165
  store i8 0, ptr %i.ak, align 2, !tbaa !53, !alias.scope !1165
  br label %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit67

default.unreachable113:                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  unreachable

_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit67: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %i.ax = phi i64 [ 10, %bb.ab ], [ 1, %bb.aa ], [ 1, %bb.z ], [ 1, %bb.y ], [ 1, %bb.x ], [ 1, %bb.w ], [ 1, %bb.v ], [ 1, %bb.u ], [ 1, %bb.t ], [ 1, %bb.s ]
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull %i.ai, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69 unwind label %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit67
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71 unwind label %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69
  %i.ba = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ai
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  %i.bc = load i64, ptr %i.ai, align 8, !tbaa !53
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.be = add nuw nsw i64 %.017123, 1             ; 2 uses
  %exitcond131.not = icmp eq i64 %i.be, 10
  br i1 %exitcond131.not, label %.loopexit138, label %bb.r, !llvm.loop !1161

.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69, %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit67, %_ZN6casadi9to_stringB5cxx11ENS_8CategoryE.exit67.peel, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ai
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp
  %i.bh = load i64, ptr %i.ai, align 8, !tbaa !53
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.loopexit.split-lp

bb.ac:                                            ; preds = %.loopexit138
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ad unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.5)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !alias.scope !1166
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ai unwind label %bb.an

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #29
          to label %bb.aq unwind label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread: ; preds = %.loopexit138
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.aj:                                            ; preds = %bb.ad
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.ak:                                            ; preds = %bb.ae
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.al:                                            ; preds = %bb.af
  %i.bm = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZN6casadi7to_enumINS_4TypeEEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.n = load ptr, ptr %0, align 8
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !54
  store i8 0, ptr %i.o, align 8, !tbaa !53
  %i.q = invoke noundef i32 @_ZN6casadi7to_enumINS_4TypeEEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.o
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.o, align 8, !tbaa !53
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.o
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.d
  %i.y = load i64, ptr %i.o, align 8, !tbaa !53
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.ak

bb.e:                                             ; preds = %.preheader, %bb.u
  %.019119 = phi i64 [ 0, %.preheader ], [ %i.ae, %bb.u ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.aa = trunc nuw nsw i64 %.019119 to i32       ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !48, !alias.scope !1215
  switch i32 %i.aa, label %default.unreachable [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 7, label %bb.m
    i32 8, label %bb.n
    i32 9, label %bb.o
    i32 10, label %bb.p
    i32 11, label %bb.q
    i32 12, label %bb.r
    i32 13, label %bb.s
    i32 14, label %bb.t
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.g, ptr noundef nonnull align 1 dereferenceable(7) @.str.13, i64 7, i1 false)
  store i64 7, ptr %i.h, align 8, !tbaa !54, !alias.scope !1215
  store i8 0, ptr %i.l, align 1, !tbaa !53, !alias.scope !1215
  br label %_ZN6casadi9to_stringB5cxx11ENS_4TypeE.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.g, ptr noundef nonnull align 1 dereferenceable(7) @.str.14, i64 7, i1 false)
  store i64 7, ptr %i.h, align 8, !tbaa !54, !alias.scope !1215
  store i8 0, ptr %i.l, align 1, !tbaa !53, !alias.scope !1215
  br label %_ZN6casadi9to_stringB5cxx11ENS_4TypeE.exit

bb.h:                                             ; preds = %bb.e
  store i32 947154505, ptr %i.g, align 8, !alias.scope !1215
  store i64 4, ptr %i.h, align 8, !tbaa !54, !alias.scope !1215
  store i8 0, ptr %i.m, align 4, !tbaa !53, !alias.scope !1215
  br label %_ZN6casadi9to_stringB5cxx11ENS_4TypeE.exit

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.g, ptr noundef nonnull align 1 dereferenceable(5) @.str.16, i64 5, i1 false)
  store i64 5, ptr %i.h, align 8, !tbaa !54, !alias.scope !1215
  store i8 0, ptr %i.i, align 1, !tbaa !53, !alias.scope !1215
  br label %_ZN6casadi9to_stringB5cxx11ENS_4TypeE.exit

bb.j:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.g, ptr noundef nonnull align 1 dereferenceable(5) @.str.17, i64 5, i1 false)
  store i64 5, ptr %i.h, align 8, !tbaa !54, !alias.scope !1215
  store i8 0, ptr %i.i, align 1, !tbaa !53, !alias.scope !1215
  br label %_ZN6casadi9to_stringB5cxx11ENS_4TypeE.exit

bb.k:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.g, ptr noundef nonnull align 1 dereferenceable(6) @.str.18, i64 6, i1 false)
  store i64 6, ptr %i.h, align 8, !tbaa !54, !alias.scope !1215
  store i8 0, ptr %i.k, align 2, !tbaa !53, !alias.scope !1215
  br label %_ZN6casadi9to_stringB5cxx11ENS_4TypeE.exit

bb.l:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.g, ptr noundef nonnull align 1 dereferenceable(5) @.str.19, i64 5, i1 false)
  store i64 5, ptr %i.h, align 8, !tbaa !54, !alias.scope !1215
  store i8 0, ptr %i.i, align 1, !tbaa !53, !alias.scope !1215
  br label %_ZN6casadi9to_stringB5cxx11ENS_4TypeE.exit

bb.m:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.g, ptr noundef nonnull align 1 dereferenceable(6) @.str.20, i64 6, i1 false)
  store i64 6, ptr %i.h, align 8, !tbaa !54, !alias.scope !1215
  store i8 0, ptr %i.k, align 2, !tbaa !53, !alias.scope !1215
  br label %_ZN6casadi9to_stringB5cxx11ENS_4TypeE.exit

bb.n:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.g, ptr noundef nonnull align 1 dereferenceable(5) @.str.21, i64 5, i1 false)
  store i64 5, ptr %i.h, align 8, !tbaa !54, !alias.scope !1215
  store i8 0, ptr %i.i, align 1, !tbaa !53, !alias.scope !1215
  br label %_ZN6casadi9to_stringB5cxx11ENS_4TypeE.exit

bb.o:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.g, ptr noundef nonnull align 1 dereferenceable(6) @.str.22, i64 6, i1 false)
  store i64 6, ptr %i.h, align 8, !tbaa !54, !alias.scope !1215
  store i8 0, ptr %i.k, align 2, !tbaa !53, !alias.scope !1215
  br label %_ZN6casadi9to_stringB5cxx11ENS_4TypeE.exit

bb.p:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.g, ptr noundef nonnull align 1 dereferenceable(7) @.str.23, i64 7, i1 false)
  store i64 7, ptr %i.h, align 8, !tbaa !54, !alias.scope !1215
  store i8 0, ptr %i.l, align 1, !tbaa !53, !alias.scope !1215
  br label %_ZN6casadi9to_stringB5cxx11ENS_4TypeE.exit

bb.q:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.g, ptr noundef nonnull align 1 dereferenceable(6) @.str.24, i64 6, i1 false)
  store i64 6, ptr %i.h, align 8, !tbaa !54, !alias.scope !1215
  store i8 0, ptr %i.k, align 2, !tbaa !53, !alias.scope !1215
  br label %_ZN6casadi9to_stringB5cxx11ENS_4TypeE.exit

bb.r:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.g, ptr noundef nonnull align 1 dereferenceable(6) @.str.25, i64 6, i1 false)
  store i64 6, ptr %i.h, align 8, !tbaa !54, !alias.scope !1215
  store i8 0, ptr %i.k, align 2, !tbaa !53, !alias.scope !1215
  br label %_ZN6casadi9to_stringB5cxx11ENS_4TypeE.exit

bb.s:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.g, ptr noundef nonnull align 1 dereferenceable(11) @.str.26, i64 11, i1 false)
  store i64 11, ptr %i.h, align 8, !tbaa !54, !alias.scope !1215
  store i8 0, ptr %i.j, align 1, !tbaa !53, !alias.scope !1215
  br label %_ZN6casadi9to_stringB5cxx11ENS_4TypeE.exit

bb.t:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.g, ptr noundef nonnull align 1 dereferenceable(5) @.str.27, i64 5, i1 false)
  store i64 5, ptr %i.h, align 8, !tbaa !54, !alias.scope !1215
  store i8 0, ptr %i.i, align 1, !tbaa !53, !alias.scope !1215
  br label %_ZN6casadi9to_stringB5cxx11ENS_4TypeE.exit

default.unreachable:                              ; preds = %bb.e
  unreachable

_ZN6casadi9to_stringB5cxx11ENS_4TypeE.exit:       ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %i.ab = phi i64 [ 7, %bb.f ], [ 7, %bb.g ], [ 4, %bb.h ], [ 5, %bb.i ], [ 5, %bb.j ], [ 6, %bb.k ], [ 5, %bb.l ], [ 6, %bb.m ], [ 5, %bb.n ], [ 6, %bb.o ], [ 7, %bb.p ], [ 6, %bb.q ], [ 6, %bb.r ], [ 11, %bb.s ], [ 5, %bb.t ]
  %i.ac = icmp eq i64 %i.b, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread95: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_4TypeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_4TypeE.exit
  %bcmp.i = call i32 @bcmp(ptr %i.n, ptr nonnull %i.g, i64 %i.b)
  %i.ad = icmp eq i32 %bcmp.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.ad, label %.thread, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.ae = add nuw nsw i64 %.019119, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, 15
  br i1 %exitcond.not, label %bb.v, label %bb.e, !llvm.loop !1211

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.732, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.v
  %i.ah = load ptr, ptr %0, align 8, !tbaa !52
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !54
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.ah, i64 noundef %i.ai)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.733, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN6casadi9to_stringB5cxx11ENS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i32 noundef 0)
  %i.ao = load ptr, ptr %5, align 8, !tbaa !52
  %i.ap = load i64, ptr %i.al, align 8, !tbaa !54
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.ao, i64 noundef %i.ap)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit68.peel unwind label %.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit68.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.peel
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70.peel unwind label %.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit68.peel
  %i.as = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.am
  br i1 %i.at, label %.peel.next, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70.peel
  %i.au = load i64, ptr %i.am, align 8, !tbaa !53
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #31
  br label %.peel.next

.peel.next:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.w

.loopexit135:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.aw = call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.734, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.x unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.thread

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %.peel.next
  %.017120 = phi i64 [ 1, %.peel.next ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ] ; 2 uses
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.189, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.v
  %lpad.loopexit.split-lp170 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %bb.w
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.az = trunc nuw nsw i64 %.017120 to i32
  call void @_ZN6casadi9to_stringB5cxx11ENS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i32 noundef %i.az)
  %i.ba = load ptr, ptr %5, align 8, !tbaa !52
  %i.bb = load i64, ptr %i.al, align 8, !tbaa !54
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.ba, i64 noundef %i.bb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit68 unwind label %.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit68: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70 unwind label %.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit68
  %i.be = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.am
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  %i.bg = load i64, ptr %i.am, align 8, !tbaa !53
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.bi = add nuw nsw i64 %.017120, 1             ; 2 uses
  %exitcond128.not = icmp eq i64 %i.bi, 15
  br i1 %exitcond128.not, label %.loopexit135, label %bb.w, !llvm.loop !1212

.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit68, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.peel, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit68.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.am
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp
  %i.bl = load i64, ptr %i.am, align 8, !tbaa !53
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit135
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.y unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.thread

bb.y:                                             ; preds = %bb.x
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.5)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !alias.scope !1216
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  invoke void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #29
          to label %bb.al unwind label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.thread: ; preds = %.loopexit135
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ae:                                            ; preds = %bb.y
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.af:                                            ; preds = %bb.z
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

bb.ag:                                            ; preds = %bb.aa
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.ah:                                            ; preds = %bb.ab
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

bb.ai:                                            ; preds = %bb.ad, %bb.ac
  %.0 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %6, align 8, !tbaa !52    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.ai
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !53
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %bb.ah
  %.pn41 = phi { ptr, i32 } [ %i.br, %bb.ah ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %i.bs, %bb.ai ] ; 2 uses
  %.1 = phi i1 [ true, %bb.ah ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %.0, %bb.ai ] ; 2 uses
  %i.by = load ptr, ptr %11, align 8, !tbaa !52   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !53
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.ag
  %.pn41.pn = phi { ptr, i32 } [ %i.bq, %bb.ag ], [ %.pn41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %.pn41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ] ; 2 uses
  %.2 = phi i1 [ true, %bb.ag ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.cd = load ptr, ptr %12, align 8, !tbaa !52   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !53
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.af
  %.pn41.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.af ], [ %.pn41.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %.pn41.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.af ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.ci = load ptr, ptr %7, align 8, !tbaa !52    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !53
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.ae
  %.pn41.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.ae ], [ %.pn41.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %.pn41.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ] ; 4 uses
  %.4 = phi i1 [ true, %bb.ae ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ] ; 2 uses
  %i.cn = load ptr, ptr %8, align 8, !tbaa !52    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

end_hunk_2
begin_hunk_3_@_ZN6casadi7to_enumINS_11VariabilityEEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 23
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.m = icmp eq i64 %.fr129, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread96.us.4, label %_ZN6casadi9to_stringB5cxx11ENS_11VariabilityE.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread96.us.4: ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.split.us.sink.split.sink.split

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !54
  store i8 0, ptr %i.n, align 8, !tbaa !53
  %i.p = invoke noundef i32 @_ZN6casadi7to_enumINS_11VariabilityEEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.n
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.n, align 8, !tbaa !53
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.n
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.d
  %i.x = load i64, ptr %i.n, align 8, !tbaa !53
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.r

_ZN6casadi9to_stringB5cxx11ENS_11VariabilityE.exit: ; preds = %.preheader
  store ptr %i.g, ptr %3, align 8, !tbaa !48, !alias.scope !1348
  store i64 8389750308618530659, ptr %i.g, align 8, !alias.scope !1348
  store i64 8, ptr %i.h, align 8, !tbaa !54, !alias.scope !1348
  store i8 0, ptr %i.j, align 8, !tbaa !53, !alias.scope !1348
  %i.z = icmp eq i64 %.fr129, 8
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZN6casadi9to_stringB5cxx11ENS_11VariabilityE.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_11VariabilityE.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !52
  %i.ab = load i64, ptr %i.aa, align 1
  %i.ac = load i64, ptr %i.g, align 1
  %i.ad = icmp ne i64 %i.ab, %i.ac
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.af, label %.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.3

_ZN6casadi9to_stringB5cxx11ENS_11VariabilityE.exit.1: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_11VariabilityE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %i.g, ptr %3, align 8, !tbaa !48, !alias.scope !1348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.g, ptr noundef nonnull align 1 dereferenceable(5) @.str.35, i64 5, i1 false)
  store i64 5, ptr %i.h, align 8, !tbaa !54, !alias.scope !1348
  store i8 0, ptr %i.l, align 1, !tbaa !53, !alias.scope !1348
  %i.ag = icmp eq i64 %.fr129, 5
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.1, label %_ZN6casadi9to_stringB5cxx11ENS_11VariabilityE.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.1: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_11VariabilityE.exit.1
  %i.ah = load ptr, ptr %0, align 8, !tbaa !52    ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 1
  %i.aj = load i32, ptr %i.g, align 1
  %i.ak = xor i32 %i.ai, %i.aj
  %i.al = getelementptr i8, ptr %i.ah, i64 4
  %i.am = getelementptr i8, ptr %i.g, i64 4
  %i.an = load i8, ptr %i.al, align 1
  %i.ao = load i8, ptr %i.am, align 1
  %i.ap = zext i8 %i.an to i32
  %i.aq = zext i8 %i.ao to i32
  %i.ar = xor i32 %i.ap, %i.aq
  %i.as = or i32 %i.ak, %i.ar
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.av, label %.thread, label %.split.us.sink.split.sink.split

_ZN6casadi9to_stringB5cxx11ENS_11VariabilityE.exit.2: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_11VariabilityE.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %i.g, ptr %3, align 8, !tbaa !48, !alias.scope !1348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.g, ptr noundef nonnull align 1 dereferenceable(7) @.str.36, i64 7, i1 false)
  store i64 7, ptr %i.h, align 8, !tbaa !54, !alias.scope !1348
  store i8 0, ptr %i.k, align 1, !tbaa !53, !alias.scope !1348
  %i.aw = icmp eq i64 %.fr129, 7
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.2, label %_ZN6casadi9to_stringB5cxx11ENS_11VariabilityE.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.2: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_11VariabilityE.exit.2
  %i.ax = load ptr, ptr %0, align 8, !tbaa !52    ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 1
  %i.az = load i32, ptr %i.g, align 1
  %i.ba = xor i32 %i.ay, %i.az
  %i.bb = getelementptr i8, ptr %i.ax, i64 3
  %i.bc = getelementptr i8, ptr %i.g, i64 3
  %i.bd = load i32, ptr %i.bb, align 1
  %i.be = load i32, ptr %i.bc, align 1
  %i.bf = xor i32 %i.bd, %i.be
  %i.bg = or i32 %i.ba, %i.bf
  %i.bh = icmp ne i32 %i.bg, 0
  %i.bi = zext i1 %i.bh to i32
  %i.bj = icmp eq i32 %i.bi, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.bj, label %.thread, label %.split.us.sink.split.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %i.g, ptr %3, align 8, !tbaa !48, !alias.scope !1348
  store i64 7310579637098342756, ptr %i.g, align 8, !alias.scope !1348
  store i64 8, ptr %i.h, align 8, !tbaa !54, !alias.scope !1348
  store i8 0, ptr %i.j, align 8, !tbaa !53, !alias.scope !1348
  %i.bk = load ptr, ptr %0, align 8, !tbaa !52
  %i.bl = load i64, ptr %i.bk, align 1
  %i.bm = load i64, ptr %i.g, align 1
  %i.bn = icmp ne i64 %i.bl, %i.bm
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.bp, label %.thread, label %.split.us.sink.split.sink.split

_ZN6casadi9to_stringB5cxx11ENS_11VariabilityE.exit.4: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_11VariabilityE.exit.2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %i.g, ptr %3, align 8, !tbaa !48, !alias.scope !1348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.g, ptr noundef nonnull align 1 dereferenceable(10) @.str.38, i64 10, i1 false)
  store i64 10, ptr %i.h, align 8, !tbaa !54, !alias.scope !1348
  store i8 0, ptr %i.i, align 2, !tbaa !53, !alias.scope !1348
  %i.bq = icmp eq i64 %.fr129, 10
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.4, label %.split.us.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.4: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_11VariabilityE.exit.4
  %i.br = load ptr, ptr %0, align 8, !tbaa !52    ; 2 uses
  %i.bs = load i64, ptr %i.br, align 1
  %i.bt = load i64, ptr %i.g, align 1
  %i.bu = xor i64 %i.bs, %i.bt
  %i.bv = getelementptr i8, ptr %i.br, i64 8
  %i.bw = getelementptr i8, ptr %i.g, i64 8
  %i.bx = load i16, ptr %i.bv, align 1
  %i.by = load i16, ptr %i.bw, align 1
  %i.bz = zext i16 %i.bx to i64
  %i.ca = zext i16 %i.by to i64
  %i.cb = xor i64 %i.bz, %i.ca
  %i.cc = or i64 %i.bu, %i.cb
  %i.cd = icmp ne i64 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %i.cf = icmp eq i32 %i.ce, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.cf, label %.thread, label %.split.us

.split.us.sink.split.sink.split:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread96.us.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  br label %.split.us.sink.split

.split.us.sink.split:                             ; preds = %.split.us.sink.split.sink.split, %_ZN6casadi9to_stringB5cxx11ENS_11VariabilityE.exit.4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.split.us

.split.us:                                        ; preds = %.split.us.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 16 uses
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull @.str.732, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %.split.us
  %i.ci = load ptr, ptr %0, align 8, !tbaa !52
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !54
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef %i.ci, i64 noundef %i.cj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str.733, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 27 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 23
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 21
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZN6casadi9to_stringB5cxx11ENS_11VariabilityE.exit67.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6casadi9to_stringB5cxx11ENS_11VariabilityE.exit67.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.cm, ptr %5, align 8, !tbaa !48, !alias.scope !1349
  store i64 8389750308618530659, ptr %i.cm, align 8, !alias.scope !1349
  store i64 8, ptr %i.cn, align 8, !tbaa !54, !alias.scope !1349
  store i8 0, ptr %i.cp, align 8, !tbaa !53, !alias.scope !1349
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull %i.cm, i64 noundef 8)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.peel unwind label %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.peel: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_11VariabilityE.exit67.peel
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.peel unwind label %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.peel
  %i.cv = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.cm
  br i1 %i.cw, label %.peel.next, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.peel
  %i.cx = load i64, ptr %i.cm, align 8, !tbaa !53
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #31
  br label %.peel.next

.peel.next:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull @.str.189, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.split.us
  %lpad.loopexit.split-lp178 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %.peel.next
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.cm, ptr %5, align 8, !tbaa !48, !alias.scope !1349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cm, ptr noundef nonnull align 1 dereferenceable(5) @.str.35, i64 5, i1 false)
  store i64 5, ptr %i.cn, align 8, !tbaa !54, !alias.scope !1349
  store i8 0, ptr %i.cr, align 1, !tbaa !53, !alias.scope !1349
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull %i.cm, i64 noundef 5)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69 unwind label %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71 unwind label %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69
  %i.dd = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.cm
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  %i.df = load i64, ptr %i.cm, align 8, !tbaa !53
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull @.str.189, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.cm, ptr %5, align 8, !tbaa !48, !alias.scope !1349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.cm, ptr noundef nonnull align 1 dereferenceable(7) @.str.36, i64 7, i1 false)
  store i64 7, ptr %i.cn, align 8, !tbaa !54, !alias.scope !1349
  store i8 0, ptr %i.cq, align 1, !tbaa !53, !alias.scope !1349
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull %i.cm, i64 noundef 7)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.1 unwind label %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.1
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.1 unwind label %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.1: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.1
  %i.dl = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.cm
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.1
  %i.dn = load i64, ptr %i.cm, align 8, !tbaa !53
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull @.str.189, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.1
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.cm, ptr %5, align 8, !tbaa !48, !alias.scope !1349
  store i64 7310579637098342756, ptr %i.cm, align 8, !alias.scope !1349
  store i64 8, ptr %i.cn, align 8, !tbaa !54, !alias.scope !1349
  store i8 0, ptr %i.cp, align 8, !tbaa !53, !alias.scope !1349
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull %i.cm, i64 noundef 8)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.2 unwind label %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.2
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.2 unwind label %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.2: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.2
  %i.dt = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.cm
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.2
  %i.dv = load i64, ptr %i.cm, align 8, !tbaa !53
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull @.str.189, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.3: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.cm, ptr %5, align 8, !tbaa !48, !alias.scope !1349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.cm, ptr noundef nonnull align 1 dereferenceable(10) @.str.38, i64 10, i1 false)
  store i64 10, ptr %i.cn, align 8, !tbaa !54, !alias.scope !1349
  store i8 0, ptr %i.co, align 2, !tbaa !53, !alias.scope !1349
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull %i.cm, i64 noundef 10)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.3 unwind label %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.3: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.3
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.3 unwind label %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.3: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.3
  %i.eb = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.cm
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.3: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.3
  %i.ed = load i64, ptr %i.cm, align 8, !tbaa !53
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ef = call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.734, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread

.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.1, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.2, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.3, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.3, %_ZN6casadi9to_stringB5cxx11ENS_11VariabilityE.exit67.peel, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.eg = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.cm
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp
  %i.ei = load i64, ptr %i.cm, align 8, !tbaa !53
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.3
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.5)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !alias.scope !1350
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ef, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.ef, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #29
          to label %bb.s unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.3
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split
end_hunk_3
begin_hunk_4_@_ZN6casadi7to_enumINS_16DependenciesKindEEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.split.us.sink.split.sink.split

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !54
  store i8 0, ptr %i.m, align 8, !tbaa !53
  %i.o = invoke noundef i32 @_ZN6casadi7to_enumINS_16DependenciesKindEEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.m
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.m, align 8, !tbaa !53
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.m
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.d
  %i.w = load i64, ptr %i.m, align 8, !tbaa !53
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.r

_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit: ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 25
  store ptr %i.g, ptr %3, align 8, !tbaa !48, !alias.scope !1370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.g, ptr noundef nonnull align 1 dereferenceable(9) @.str.49, i64 9, i1 false)
  store i64 9, ptr %i.h, align 8, !tbaa !54, !alias.scope !1370
  store i8 0, ptr %i.y, align 1, !tbaa !53, !alias.scope !1370
  %i.z = icmp eq i64 %.fr129, 9
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !52    ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 1
  %i.ac = load i64, ptr %i.g, align 1
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = getelementptr i8, ptr %i.aa, i64 8
  %i.af = getelementptr i8, ptr %i.g, i64 8
  %i.ag = load i8, ptr %i.ae, align 1
  %i.ah = load i8, ptr %i.af, align 1
  %i.ai = zext i8 %i.ag to i64
  %i.aj = zext i8 %i.ah to i64
  %i.ak = xor i64 %i.ai, %i.aj
  %i.al = or i64 %i.ad, %i.ak
  %i.am = icmp ne i64 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.ao, label %.thread, label %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.3.thread172

_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.1: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %i.g, ptr %3, align 8, !tbaa !48, !alias.scope !1370
  store i64 8389750308618530659, ptr %i.g, align 8, !alias.scope !1370
  store i64 8, ptr %i.h, align 8, !tbaa !54, !alias.scope !1370
  store i8 0, ptr %i.i, align 8, !tbaa !53, !alias.scope !1370
  %i.ap = icmp eq i64 %.fr129, 8
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.1, label %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.1: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.1
  %i.aq = load ptr, ptr %0, align 8, !tbaa !52
  %i.ar = load i64, ptr %i.aq, align 1
  %i.as = load i64, ptr %i.g, align 1
  %i.at = icmp ne i64 %i.ar, %i.as
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.av, label %.thread, label %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.3.thread172

_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.2: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %i.g, ptr %3, align 8, !tbaa !48, !alias.scope !1370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.g, ptr noundef nonnull align 1 dereferenceable(5) @.str.35, i64 5, i1 false)
  store i64 5, ptr %i.h, align 8, !tbaa !54, !alias.scope !1370
  store i8 0, ptr %i.k, align 1, !tbaa !53, !alias.scope !1370
  %i.aw = icmp eq i64 %.fr129, 5
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.2, label %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.2: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.2
  %i.ax = load ptr, ptr %0, align 8, !tbaa !52    ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 1
  %i.az = load i32, ptr %i.g, align 1
  %i.ba = xor i32 %i.ay, %i.az
  %i.bb = getelementptr i8, ptr %i.ax, i64 4
  %i.bc = getelementptr i8, ptr %i.g, i64 4
  %i.bd = load i8, ptr %i.bb, align 1
  %i.be = load i8, ptr %i.bc, align 1
  %i.bf = zext i8 %i.bd to i32
  %i.bg = zext i8 %i.be to i32
  %i.bh = xor i32 %i.bf, %i.bg
  %i.bi = or i32 %i.ba, %i.bh
  %i.bj = icmp ne i32 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.bl, label %.thread, label %.split.us.sink.split.sink.split

_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.3.thread172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  br label %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.4

_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.3: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %i.g, ptr %3, align 8, !tbaa !48, !alias.scope !1370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.g, ptr noundef nonnull align 1 dereferenceable(7) @.str.36, i64 7, i1 false)
  store i64 7, ptr %i.h, align 8, !tbaa !54, !alias.scope !1370
  store i8 0, ptr %i.j, align 1, !tbaa !53, !alias.scope !1370
  %i.bm = icmp eq i64 %.fr129, 7
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.3, label %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.3: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.3
  %i.bn = load ptr, ptr %0, align 8, !tbaa !52    ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 1
  %i.bp = load i32, ptr %i.g, align 1
  %i.bq = xor i32 %i.bo, %i.bp
  %i.br = getelementptr i8, ptr %i.bn, i64 3
  %i.bs = getelementptr i8, ptr %i.g, i64 3
  %i.bt = load i32, ptr %i.br, align 1
  %i.bu = load i32, ptr %i.bs, align 1
  %i.bv = xor i32 %i.bt, %i.bu
  %i.bw = or i32 %i.bq, %i.bv
  %i.bx = icmp ne i32 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.bz, label %.thread, label %.split.us.sink.split.sink.split

_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.4: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.3, %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.3.thread172
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %i.g, ptr %3, align 8, !tbaa !48, !alias.scope !1370
  store i64 7310579637098342756, ptr %i.g, align 8, !alias.scope !1370
  store i64 8, ptr %i.h, align 8, !tbaa !54, !alias.scope !1370
  store i8 0, ptr %i.i, align 8, !tbaa !53, !alias.scope !1370
  %i.ca = icmp eq i64 %.fr129, 8
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.4, label %.split.us.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.4: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.4
  %i.cb = load ptr, ptr %0, align 8, !tbaa !52
  %i.cc = load i64, ptr %i.cb, align 1
  %i.cd = load i64, ptr %i.g, align 1
  %i.ce = icmp ne i64 %i.cc, %i.cd
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.cg, label %.thread, label %.split.us

.split.us.sink.split.sink.split:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread96.us.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  br label %.split.us.sink.split

.split.us.sink.split:                             ; preds = %.split.us.sink.split.sink.split, %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit.4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.split.us

.split.us:                                        ; preds = %.split.us.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 16 uses
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.732, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %.split.us
  %i.cj = load ptr, ptr %0, align 8, !tbaa !52
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !54
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef %i.cj, i64 noundef %i.ck)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.733, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 27 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 23
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 21
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit67.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit67.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.cn, ptr %5, align 8, !tbaa !48, !alias.scope !1371
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cn, ptr noundef nonnull align 1 dereferenceable(9) @.str.49, i64 9, i1 false)
  store i64 9, ptr %i.co, align 8, !tbaa !54, !alias.scope !1371
  store i8 0, ptr %i.ct, align 1, !tbaa !53, !alias.scope !1371
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull %i.cn, i64 noundef 9)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.peel unwind label %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.peel: ; preds = %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit67.peel
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.peel unwind label %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.peel
  %i.cw = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.cn
  br i1 %i.cx, label %.peel.next, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.peel
  %i.cy = load i64, ptr %i.cn, align 8, !tbaa !53
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #31
  br label %.peel.next

.peel.next:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.189, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.split.us
  %lpad.loopexit.split-lp177 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %.peel.next
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.cn, ptr %5, align 8, !tbaa !48, !alias.scope !1371
  store i64 8389750308618530659, ptr %i.cn, align 8, !alias.scope !1371
  store i64 8, ptr %i.co, align 8, !tbaa !54, !alias.scope !1371
  store i8 0, ptr %i.cp, align 8, !tbaa !53, !alias.scope !1371
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull %i.cn, i64 noundef 8)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69 unwind label %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71 unwind label %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69
  %i.de = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.cn
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  %i.dg = load i64, ptr %i.cn, align 8, !tbaa !53
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.189, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.cn, ptr %5, align 8, !tbaa !48, !alias.scope !1371
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cn, ptr noundef nonnull align 1 dereferenceable(5) @.str.35, i64 5, i1 false)
  store i64 5, ptr %i.co, align 8, !tbaa !54, !alias.scope !1371
  store i8 0, ptr %i.cr, align 1, !tbaa !53, !alias.scope !1371
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull %i.cn, i64 noundef 5)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.1 unwind label %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.1
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.1 unwind label %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.1: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.1
  %i.dm = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cn
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.1
  %i.do = load i64, ptr %i.cn, align 8, !tbaa !53
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.189, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.1
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.cn, ptr %5, align 8, !tbaa !48, !alias.scope !1371
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.cn, ptr noundef nonnull align 1 dereferenceable(7) @.str.36, i64 7, i1 false)
  store i64 7, ptr %i.co, align 8, !tbaa !54, !alias.scope !1371
  store i8 0, ptr %i.cq, align 1, !tbaa !53, !alias.scope !1371
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull %i.cn, i64 noundef 7)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.2 unwind label %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.2
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.2 unwind label %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.2: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.2
  %i.du = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.cn
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.2
  %i.dw = load i64, ptr %i.cn, align 8, !tbaa !53
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.189, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.3: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.cn, ptr %5, align 8, !tbaa !48, !alias.scope !1371
  store i64 7310579637098342756, ptr %i.cn, align 8, !alias.scope !1371
  store i64 8, ptr %i.co, align 8, !tbaa !54, !alias.scope !1371
  store i8 0, ptr %i.cp, align 8, !tbaa !53, !alias.scope !1371
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull %i.cn, i64 noundef 8)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.3 unwind label %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.3: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.3
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull @.str.534, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.3 unwind label %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.3: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.3
  %i.ec = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.cn
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.3: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.3
  %i.ee = load i64, ptr %i.cn, align 8, !tbaa !53
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71.3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.eg = call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.734, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread

.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.1, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.2, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.3, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.3, %_ZN6casadi9to_stringB5cxx11ENS_16DependenciesKindE.exit67.peel, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.eh = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.cn
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp
  %i.ej = load i64, ptr %i.cn, align 8, !tbaa !53
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.3
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.5)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !alias.scope !1372
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.eg, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #29
          to label %bb.s unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.3
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split
end_hunk_4
