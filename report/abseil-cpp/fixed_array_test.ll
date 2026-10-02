Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/fixed_array_test?download=true
inline.NumInlined: 9190
inline.NumDeleted: 3189
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN12_GLOBAL__N_128FixedArrayTest_CopyCtor_Test8TestBodyEv:_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

bb.bp:                                            ; preds = %bb.bk
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bl
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #25
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn53 = phi { ptr, i32 } [ %i.fr, %bb.bq ], [ %i.fq, %bb.bp ] ; 2 uses
  %i.fs = load ptr, ptr %23, align 8, !tbaa !97   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.br
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !100
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145, %bb.bo
  %.pn53.pn = phi { ptr, i32 } [ %i.fp, %bb.bo ], [ %.pn53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %.pn53, %bb.br ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  %i.fx = load ptr, ptr %20, align 8, !tbaa !99   ; 3 uses
  %.not.i.i148 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i148, label %_ZN7testing7MessageD2Ev.exit150, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !56
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(128) %i.fx) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit150

_ZN7testing7MessageD2Ev.exit150:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %bb.bn
  %.pn53.pn.pn = phi { ptr, i32 } [ %i.fo, %bb.bn ], [ %.pn53.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ], [ %.pn53.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.bx

bb.bs:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  %.pr179 = load ptr, ptr %i.ez, align 8, !tbaa !93 ; 4 uses
  %.not.i.i.i151 = icmp eq ptr %.pr179, null
  br i1 %.not.i.i.i151, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit155, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gb = load ptr, ptr %.pr179, align 8, !tbaa !97 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.pr179, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i152: ; preds = %bb.bt
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !100
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i153

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i153: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i152
  call void @_ZdlPvm(ptr noundef nonnull %.pr179, i64 noundef 32) #27
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit155

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit155: ; preds = %bb.bg, %bb.bs, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %i.gg = load i64, ptr %i.cr, align 8, !tbaa !101 ; 2 uses
  %i.gh = icmp ult i64 %i.gg, 11
  br i1 %i.gh, label %_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit156, label %bb.bu

bb.bu:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit155
  %i.gi = load ptr, ptr %i.ct, align 8, !tbaa !75
  %i.gj = shl i64 %i.gg, 2
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gj) #27
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit156

_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit156: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit155, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 60) #27
  %i.gk = load i64, ptr %i.c, align 8, !tbaa !101 ; 2 uses
  %i.gl = icmp ult i64 %i.gk, 11
  br i1 %i.gl, label %_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit157, label %bb.bv

bb.bv:                                            ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit156
  %i.gm = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.gn = shl i64 %i.gk, 2
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gn) #27
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit157

_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit157: ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit156, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.go = load i64, ptr %i.a, align 8, !tbaa !101 ; 2 uses
  %i.gp = icmp ult i64 %i.go, 11
  br i1 %i.gp, label %_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit158, label %bb.bw

bb.bw:                                            ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit157
  %i.gq = load ptr, ptr %i.b, align 16, !tbaa !75
  %i.gr = shl i64 %i.go, 2
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gr) #27
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit158

_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit158: ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit157, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

bb.bx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit150, %bb.bh
  %.pn53.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn, %_ZN7testing7MessageD2Ev.exit150 ], [ %.pn49.pn.pn, %bb.bh ] ; 2 uses
  %i.gs = load i64, ptr %i.cr, align 8, !tbaa !101 ; 2 uses
  %i.gt = icmp ult i64 %i.gs, 11
  br i1 %i.gt, label %_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit159, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gu = load ptr, ptr %i.ct, align 8, !tbaa !75
  %i.gv = shl i64 %i.gs, 2
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gv) #27
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit159

_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit159: ; preds = %bb.by, %bb.bx, %bb.ap
  %.pn53.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.ap ], [ %.pn53.pn.pn.pn.pn, %bb.bx ], [ %.pn53.pn.pn.pn.pn, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 60) #27
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ao, %_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit159, %_ZN7testing7MessageD2Ev.exit88, %bb.w
  %.pn53.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn, %bb.w ], [ %.pn41.pn.pn, %_ZN7testing7MessageD2Ev.exit88 ], [ %.pn53.pn.pn.pn.pn.pn, %_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit159 ], [ %i.dl, %bb.ao ]
  %i.gw = load i64, ptr %i.c, align 8, !tbaa !101 ; 2 uses
  %i.gx = icmp ult i64 %i.gw, 11
  br i1 %i.gx, label %_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit161, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gy = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.gz = shl i64 %i.gw, 2
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.gz) #27
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit161

_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit161: ; preds = %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ha = load i64, ptr %i.a, align 8, !tbaa !101 ; 2 uses
  %i.hb = icmp ult i64 %i.ha, 11
  br i1 %i.hb, label %_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit162, label %bb.cb

bb.cb:                                            ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit161
  %i.hc = load ptr, ptr %i.b, align 16, !tbaa !75
  %i.hd = shl i64 %i.ha, 2
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hd) #27
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit162

_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit162: ; preds = %bb.cb, %_ZN4absl12lts_2026052610FixedArrayIiLm10ESaIiEED2Ev.exit161
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn53.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEENS0_29PredicateFormatterFromMatcherIT_EES5_(ptr dead_on_unwind noalias writable sret(%"class.testing::internal::PredicateFormatterFromMatcher") align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !78     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !106

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
  %.pre = load ptr, ptr %1, align 8, !tbaa !107   ; 3 uses
  %.pre11 = load ptr, ptr %i.a, align 8, !tbaa !107 ; 2 uses
  %.pre12 = ptrtoint ptr %.pre11 to i64
  %.pre13 = ptrtoint ptr %.pre to i64
  %i.i = icmp eq ptr %.pre11, %.pre
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %.pre-phi14 = phi i64 [ %.pre13, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre12, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.d, %bb.a ]
  %.not.i.i.i.i.i.i = phi i1 [ %i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.l = sub i64 %.pre-phi, %.pre-phi14           ; 10 uses
  %i.m = icmp sgt i64 %i.l, 4
  br i1 %i.m, label %bb.d, label %bb.e, !prof !429

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false)
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread, label %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit

_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit: ; preds = %bb.d, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %.thread, label %bb.f

_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread: ; preds = %bb.e
  %i.o = load i32, ptr %i.j, align 4, !tbaa !76
  store i32 %i.o, ptr %i.k, align 4, !tbaa !76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %.thread, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i

.thread:                                          ; preds = %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread, %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !79
  br label %bb.i

bb.f:                                             ; preds = %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit
  %i.s = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.s, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !430

.noexc.i.i.i.i:                                   ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread, %bb.f
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #28
          to label %.noexc1 unwind label %bb.k    ; 4 uses

.noexc1:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.t, ptr %0, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !79
  %2 = icmp samesign ugt i64 %i.l, 4
  br i1 %2, label %bb.g, label %bb.h, !prof !431

bb.g:                                             ; preds = %.noexc1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.t, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %.noexc1
  %i.x = icmp eq i64 %i.l, 4
  br i1 %i.x, label %.thread9, label %bb.i

.thread9:                                         ; preds = %bb.h
  %i.y = load i32, ptr %i.k, align 4, !tbaa !76
  store i32 %i.y, ptr %i.t, align 4, !tbaa !76
  store ptr %i.v, ptr %i.u, align 8, !tbaa !80
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread
  %i.z = phi ptr [ %i.v, %bb.g ], [ %i.v, %bb.h ], [ %i.q, %.thread ]
  %i.aa = phi ptr [ %i.u, %bb.g ], [ %i.u, %bb.h ], [ %i.p, %.thread ]
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !80
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.thread9, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #27
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit

_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit: ; preds = %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i.i2 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i2, label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit3, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #27
  br label %_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit3

_ZN7testing8internal23ElementsAreArrayMatcherIiED2Ev.exit3: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_23ElementsAreArrayMatcherIiEEEclIN4absl12lts_2026052610FixedArrayIiLm10ESaIiEEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::Matcher", align 8  ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28, !noalias !458 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !107, !noalias !458
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107, !noalias !458
  invoke void @_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052610FixedArrayIiLm10ESaIiEEEEC2IN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS5_EEEEET_SI_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr %i.b, ptr %i.d)
          to label %_ZN7testing15SafeMatcherCastIRKN4absl12lts_2026052610FixedArrayIiLm10ESaIiEEENS_8internal23ElementsAreArrayMatcherIiEEEENS_7MatcherIT_EERKT0_.exit unwind label %bb.b, !noalias !458

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn21, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #27, !noalias !458
  br label %common.resume

_ZN7testing15SafeMatcherCastIRKN4absl12lts_2026052610FixedArrayIiLm10ESaIiEEENS_8internal23ElementsAreArrayMatcherIiEEEENS_7MatcherIT_EERKT0_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052610FixedArrayIiLm10ESaIiEEEE9GetVTableINS9_11ValuePolicyIPKNS_16MatcherInterfaceIS8_EELb1EEEEEPKNS9_6VTableEvE7kVTable, ptr %i.f, align 8, !tbaa !111, !alias.scope !458
  %i.h = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28, !noalias !458 ; 3 uses
  store i32 1, ptr %i.h, align 4, !tbaa !113, !noalias !458
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = ptrtoint ptr %i.a to i64
  store i64 %i.j, ptr %i.i, align 8, !tbaa !115, !noalias !458
  store ptr %i.h, ptr %i.g, align 8, !tbaa !100, !alias.scope !458
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_2026052610FixedArrayIiLm10ESaIiEEEEE, i64 16), ptr %8, align 8, !tbaa !56, !alias.scope !458
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %7, align 8, !tbaa !56
  %i.l = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %_ZN7testing15SafeMatcherCastIRKN4absl12lts_2026052610FixedArrayIiLm10ESaIiEEENS_8internal23ElementsAreArrayMatcherIiEEEENS_7MatcherIT_EERKT0_.exit
  br i1 %i.l, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052610FixedArrayIiLm10ESaIiEEEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit.i, label %.noexc3.i

.noexc3.i:                                        ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef 3, ptr noundef nonnull @.str.96, i32 noundef 234)
          to label %.noexc23 unwind label %bb.e

.noexc23:                                         ; preds = %.noexc3.i
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.97, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc23
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052610FixedArrayIiLm10ESaIiEEEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit.i

.body.i:                                          ; preds = %.noexc23
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.body

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052610FixedArrayIiLm10ESaIiEEEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !120
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull %7)
          to label %bb.c unwind label %bb.e, !inline_history !442

bb.c:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052610FixedArrayIiLm10ESaIiEEEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
          to label %bb.al unwind label %bb.e

bb.e:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052610FixedArrayIiLm10ESaIiEEEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit.i, %.noexc3.i, %_ZN7testing15SafeMatcherCastIRKN4absl12lts_2026052610FixedArrayIiLm10ESaIiEEENS_8internal23ElementsAreArrayMatcherIiEEEENS_7MatcherIT_EERKT0_.exit, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.89, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !56
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !67
  %i.aa = or i32 %i.z, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.x, i32 noundef %i.aa)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.p

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ab = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %2, i64 noundef %i.ab)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %bb.h, %bb.i
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.90, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.91, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.ag = icmp ne ptr %i.af, null
  %i.ah = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.ag)
          to label %.noexc33 unwind label %bb.p

.noexc33:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  br i1 %i.ah, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.96, i32 noundef 246)
          to label %.noexc34 unwind label %bb.p

.noexc34:                                         ; preds = %bb.j
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.97, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc34
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
end_hunk_0
begin_hunk_1_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052610FixedArrayIiLm10ESaIiEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !100
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !97    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !100
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.113, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !99    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !142
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052610FixedArrayIiLm10ESaIiEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !99    ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !56
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.106, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.99, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !142
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !137
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.96, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.97, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !137
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !143
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !145
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !142
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.113, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !133
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !142
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !501

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052610FixedArrayIiLm10ESaIiEEEE15MatchAndExplainES8_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector.76", align 8    ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !142  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.88) #29
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #28 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !147
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !148
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !122
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !105
  store i8 0, ptr %i.q, align 8, !tbaa !100
  %i.s = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !503

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !122
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !105
  store i8 0, ptr %i.v, align 8, !tbaa !100
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !122
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !105
  store i8 0, ptr %i.y, align 8, !tbaa !100
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !122
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !105
  store i8 0, ptr %i.ab, align 8, !tbaa !100
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !122
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !105
  store i8 0, ptr %i.ae, align 8, !tbaa !100
  %i.ag = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !150
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !75 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !101
  %.not204 = icmp eq i64 %i.am, 0
  br i1 %.not204, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.ax = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.az = getelementptr i8, ptr %i.ax, i64 -24
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %.047206 = phi ptr [ %i.ak, %.lr.ph ], [ %i.ei, %bb.w ] ; 6 uses
  %storemerge205 = phi i64 [ 0, %.lr.ph ], [ %i.ej, %bb.w ] ; 8 uses
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !133
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !142 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 24
  %.not63 = icmp eq i64 %storemerge205, %i.bo
  br i1 %.not63, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !56
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ao)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !142
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %storemerge205 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !137
  %i.bt = icmp ne ptr %i.bs, null
  %i.bu = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bt)
          to label %.noexc84 unwind label %bb.r

.noexc84:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bu, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc84
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.96, i32 noundef 234)
          to label %.noexc85 unwind label %bb.r

.noexc85:                                         ; preds = %bb.e
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.97, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc85
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.g

bb.f:                                             ; preds = %.noexc85
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc84
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !137
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !151
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 4 dereferenceable(4) %.047206, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !8

_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  call void @llvm.experimental.noalias.scope.decl(metadata !516)
  store ptr %i.ar, ptr %11, align 8, !tbaa !122, !alias.scope !517
  store i64 0, ptr %i.as, align 8, !tbaa !105, !alias.scope !517
  store i8 0, ptr %i.ar, align 8, !tbaa !100, !alias.scope !517
  %i.ca = load ptr, ptr %i.at, align 8, !tbaa !124, !noalias !517 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %i.au, align 8, !noalias !517 ; 2 uses
  %i.cc = icmp ugt ptr %i.ca, %i.cb
  %.08.i.i.i.i = select i1 %i.cc, ptr %i.ca, ptr %i.cb ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  %i.cd = load ptr, ptr %i.av, align 8, !tbaa !125, !noalias !517 ; 2 uses
  %i.ce = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cg)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %11, align 8, !tbaa !97, !alias.scope !517 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ar
  br i1 %i.ck, label %.body87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.cl = load i64, ptr %i.ar, align 8, !tbaa !100, !alias.scope !517
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #27
  br label %.body87

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.cn = load ptr, ptr %9, align 8, !tbaa !147
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %storemerge205 ; 9 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !97 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 4 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  %i.cs = load ptr, ptr %11, align 8, !tbaa !97   ; 6 uses
  %i.ct = icmp eq ptr %i.cs, %i.ar                ; 2 uses
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.ct, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.ct, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cu = load i64, ptr %i.as, align 8, !tbaa !105 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  %.not21.i = icmp eq ptr %11, %i.co
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !106

bb.l:                                             ; preds = %bb.k
  switch i64 %i.cu, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !100
  store i8 %i.cw, ptr %i.cp, align 1, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.cs, i64 %i.cu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cx = load i64, ptr %i.as, align 8, !tbaa !105 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !105
  %i.cz = load ptr, ptr %i.co, align 8, !tbaa !97
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store i8 0, ptr %i.da, align 1, !tbaa !100
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !97
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cs, ptr %i.co, align 8, !tbaa !97
  %i.dc = load i64, ptr %i.as, align 8, !tbaa !105
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !105
  %i.dd = load i64, ptr %i.ar, align 8, !tbaa !100
  store i64 %i.dd, ptr %i.cq, align 8, !tbaa !100
  br label %bb.p

end_hunk_1
begin_hunk_2_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !100
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !97    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !100
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.113, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !99    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !142
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !99    ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !56
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.106, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.99, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !142
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !137
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.96, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.97, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !137
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !143
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !145
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !142
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.113, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !133
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !142
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !767

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEEE15MatchAndExplainES8_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(272) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector.76", align 8    ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !142  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.88) #29
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #28 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !147
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !148
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !122
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !105
  store i8 0, ptr %i.q, align 8, !tbaa !100
  %i.s = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !769

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !122
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !105
  store i8 0, ptr %i.v, align 8, !tbaa !100
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !122
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !105
  store i8 0, ptr %i.y, align 8, !tbaa !100
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !122
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !105
  store i8 0, ptr %i.ab, align 8, !tbaa !100
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !122
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !105
  store i8 0, ptr %i.ae, align 8, !tbaa !100
  %i.ag = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !150
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !167 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !101
  %.not202 = icmp eq i64 %i.am, 0
  br i1 %.not202, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.ax = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.az = getelementptr i8, ptr %i.ax, i64 -24
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %.047204 = phi ptr [ %i.ak, %.lr.ph ], [ %i.ei, %bb.w ] ; 6 uses
  %storemerge203 = phi i64 [ 0, %.lr.ph ], [ %i.ej, %bb.w ] ; 8 uses
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !133
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !142 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 24
  %.not62 = icmp eq i64 %storemerge203, %i.bo
  br i1 %.not62, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !56
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ao)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !142
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %storemerge203 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !137
  %i.bt = icmp ne ptr %i.bs, null
  %i.bu = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bt)
          to label %.noexc82 unwind label %bb.r

.noexc82:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bu, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc82
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.96, i32 noundef 234)
          to label %.noexc83 unwind label %bb.r

.noexc83:                                         ; preds = %bb.e
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.97, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc83
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.g

bb.f:                                             ; preds = %.noexc83
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc82
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !137
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !151
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 4 dereferenceable(4) %.047204, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !8

_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !780)
  call void @llvm.experimental.noalias.scope.decl(metadata !781)
  call void @llvm.experimental.noalias.scope.decl(metadata !782)
  store ptr %i.ar, ptr %11, align 8, !tbaa !122, !alias.scope !783
  store i64 0, ptr %i.as, align 8, !tbaa !105, !alias.scope !783
  store i8 0, ptr %i.ar, align 8, !tbaa !100, !alias.scope !783
  %i.ca = load ptr, ptr %i.at, align 8, !tbaa !124, !noalias !783 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %i.au, align 8, !noalias !783 ; 2 uses
  %i.cc = icmp ugt ptr %i.ca, %i.cb
  %.08.i.i.i.i = select i1 %i.cc, ptr %i.ca, ptr %i.cb ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  %i.cd = load ptr, ptr %i.av, align 8, !tbaa !125, !noalias !783 ; 2 uses
  %i.ce = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cg)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %11, align 8, !tbaa !97, !alias.scope !783 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ar
  br i1 %i.ck, label %.body85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.cl = load i64, ptr %i.ar, align 8, !tbaa !100, !alias.scope !783
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #27
  br label %.body85

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.cn = load ptr, ptr %9, align 8, !tbaa !147
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %storemerge203 ; 9 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !97 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 4 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  %i.cs = load ptr, ptr %11, align 8, !tbaa !97   ; 6 uses
  %i.ct = icmp eq ptr %i.cs, %i.ar                ; 2 uses
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.ct, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.ct, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cu = load i64, ptr %i.as, align 8, !tbaa !105 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  %.not21.i = icmp eq ptr %11, %i.co
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !106

bb.l:                                             ; preds = %bb.k
  switch i64 %i.cu, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !100
  store i8 %i.cw, ptr %i.cp, align 1, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.cs, i64 %i.cu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cx = load i64, ptr %i.as, align 8, !tbaa !105 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !105
  %i.cz = load ptr, ptr %i.co, align 8, !tbaa !97
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store i8 0, ptr %i.da, align 1, !tbaa !100
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !97
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cs, ptr %i.co, align 8, !tbaa !97
  %i.dc = load i64, ptr %i.as, align 8, !tbaa !105
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !105
  %i.dd = load i64, ptr %i.ar, align 8, !tbaa !100
  store i64 %i.dd, ptr %i.cq, align 8, !tbaa !100
  br label %bb.p

end_hunk_2
begin_hunk_3_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052610FixedArrayISt4pairIiiELm18446744073709551615ESaIS6_EEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !100
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !97    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !100
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.113, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !99    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !215
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !223
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052610FixedArrayISt4pairIiiELm18446744073709551615ESaIS6_EEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !99    ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !56
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.106, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.99, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !223
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !219
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.96, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.97, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !219
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !224
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !225
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !215
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !223
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.113, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !215
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !223
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !889

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052610FixedArrayISt4pairIiiELm18446744073709551615ESaIS6_EEEE15MatchAndExplainESA_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(272) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector.76", align 8    ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !215  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !223  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.88) #29
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #28 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !147
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !148
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !122
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !105
  store i8 0, ptr %i.q, align 8, !tbaa !100
  %i.s = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !891

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !122
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !105
  store i8 0, ptr %i.v, align 8, !tbaa !100
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !122
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !105
  store i8 0, ptr %i.y, align 8, !tbaa !100
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !122
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !105
  store i8 0, ptr %i.ab, align 8, !tbaa !100
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !122
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !105
  store i8 0, ptr %i.ae, align 8, !tbaa !100
  %i.ag = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !150
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !202 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !101
  %.not204 = icmp eq i64 %i.am, 0
  br i1 %.not204, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.ax = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.az = getelementptr i8, ptr %i.ax, i64 -24
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %.047206 = phi ptr [ %i.ak, %.lr.ph ], [ %i.ei, %bb.w ] ; 6 uses
  %storemerge205 = phi i64 [ 0, %.lr.ph ], [ %i.ej, %bb.w ] ; 8 uses
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !215
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !223 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 24
  %.not63 = icmp eq i64 %storemerge205, %i.bo
  br i1 %.not63, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !56
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ao)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !223
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %storemerge205 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !219
  %i.bt = icmp ne ptr %i.bs, null
  %i.bu = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bt)
          to label %.noexc84 unwind label %bb.r

.noexc84:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bu, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc84
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.96, i32 noundef 234)
          to label %.noexc85 unwind label %bb.r

.noexc85:                                         ; preds = %bb.e
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.97, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc85
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.g

bb.f:                                             ; preds = %.noexc85
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc84
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !219
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !904
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 4 dereferenceable(8) %.047206, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE15MatchAndExplainES5_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !892

_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE15MatchAndExplainES5_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !905)
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  call void @llvm.experimental.noalias.scope.decl(metadata !907)
  store ptr %i.ar, ptr %11, align 8, !tbaa !122, !alias.scope !908
  store i64 0, ptr %i.as, align 8, !tbaa !105, !alias.scope !908
  store i8 0, ptr %i.ar, align 8, !tbaa !100, !alias.scope !908
  %i.ca = load ptr, ptr %i.at, align 8, !tbaa !124, !noalias !908 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %i.au, align 8, !noalias !908 ; 2 uses
  %i.cc = icmp ugt ptr %i.ca, %i.cb
  %.08.i.i.i.i = select i1 %i.cc, ptr %i.ca, ptr %i.cb ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE15MatchAndExplainES5_PNS_19MatchResultListenerE.exit
  %i.cd = load ptr, ptr %i.av, align 8, !tbaa !125, !noalias !908 ; 2 uses
  %i.ce = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cg)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %11, align 8, !tbaa !97, !alias.scope !908 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ar
  br i1 %i.ck, label %.body87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.cl = load i64, ptr %i.ar, align 8, !tbaa !100, !alias.scope !908
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #27
  br label %.body87

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE15MatchAndExplainES5_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.cn = load ptr, ptr %9, align 8, !tbaa !147
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %storemerge205 ; 9 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !97 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 4 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  %i.cs = load ptr, ptr %11, align 8, !tbaa !97   ; 6 uses
  %i.ct = icmp eq ptr %i.cs, %i.ar                ; 2 uses
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.ct, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.ct, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cu = load i64, ptr %i.as, align 8, !tbaa !105 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  %.not21.i = icmp eq ptr %11, %i.co
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !106

bb.l:                                             ; preds = %bb.k
  switch i64 %i.cu, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !100
  store i8 %i.cw, ptr %i.cp, align 1, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.cs, i64 %i.cu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cx = load i64, ptr %i.as, align 8, !tbaa !105 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !105
  %i.cz = load ptr, ptr %i.co, align 8, !tbaa !97
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store i8 0, ptr %i.da, align 1, !tbaa !100
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !97
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cs, ptr %i.co, align 8, !tbaa !97
  %i.dc = load i64, ptr %i.as, align 8, !tbaa !105
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !105
  %i.dd = load i64, ptr %i.ar, align 8, !tbaa !100
  store i64 %i.dd, ptr %i.cq, align 8, !tbaa !100
  br label %bb.p

end_hunk_3
begin_hunk_4_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052610FixedArrayIiLm0ESaIiEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !100
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !97    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !100
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.113, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !99    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !142
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052610FixedArrayIiLm0ESaIiEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !99    ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !56
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.106, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.99, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !142
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !137
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.96, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.97, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !137
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !143
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !145
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !142
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.113, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !133
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !142
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1023

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052610FixedArrayIiLm0ESaIiEEEE15MatchAndExplainES8_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector.76", align 8    ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !142  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.88) #29
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #28 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !147
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !148
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !122
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !105
  store i8 0, ptr %i.q, align 8, !tbaa !100
  %i.s = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1025

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !122
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !105
  store i8 0, ptr %i.v, align 8, !tbaa !100
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !122
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !105
  store i8 0, ptr %i.y, align 8, !tbaa !100
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !122
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !105
  store i8 0, ptr %i.ab, align 8, !tbaa !100
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !122
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !105
  store i8 0, ptr %i.ae, align 8, !tbaa !100
  %i.ag = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !150
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !227 ; 3 uses
  %i.al = load i64, ptr %1, align 8, !tbaa !101
  %.not197 = icmp eq i64 %i.al, 0
  br i1 %.not197, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.aw = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ay = getelementptr i8, ptr %i.aw, i64 -24
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bf = getelementptr i8, ptr %i.bd, i64 -24
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %.047199 = phi ptr [ %i.ak, %.lr.ph ], [ %i.eh, %bb.w ] ; 6 uses
  %storemerge198 = phi i64 [ 0, %.lr.ph ], [ %i.ei, %bb.w ] ; 8 uses
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !133
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !142 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 24
  %.not63 = icmp eq i64 %storemerge198, %i.bn
  br i1 %.not63, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !56
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.an)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !142
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %storemerge198 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !137
  %i.bs = icmp ne ptr %i.br, null
  %i.bt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bs)
          to label %.noexc84 unwind label %bb.r

.noexc84:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bt, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc84
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.96, i32 noundef 234)
          to label %.noexc85 unwind label %bb.r

.noexc85:                                         ; preds = %bb.e
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.97, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc85
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.g

bb.f:                                             ; preds = %.noexc85
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc84
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !137
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !151
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 4 dereferenceable(4) %.047199, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !8

_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  call void @llvm.experimental.noalias.scope.decl(metadata !1038)
  store ptr %i.aq, ptr %11, align 8, !tbaa !122, !alias.scope !1039
  store i64 0, ptr %i.ar, align 8, !tbaa !105, !alias.scope !1039
  store i8 0, ptr %i.aq, align 8, !tbaa !100, !alias.scope !1039
  %i.bz = load ptr, ptr %i.as, align 8, !tbaa !124, !noalias !1039 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bz, null
  %i.ca = load ptr, ptr %i.at, align 8, !noalias !1039 ; 2 uses
  %i.cb = icmp ugt ptr %i.bz, %i.ca
  %.08.i.i.i.i = select i1 %i.cb, ptr %i.bz, ptr %i.ca ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  %i.cc = load ptr, ptr %i.au, align 8, !tbaa !125, !noalias !1039 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %11, align 8, !tbaa !97, !alias.scope !1039 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.aq
  br i1 %i.cj, label %.body87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ck = load i64, ptr %i.aq, align 8, !tbaa !100, !alias.scope !1039
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #27
  br label %.body87

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKiE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.cm = load ptr, ptr %9, align 8, !tbaa !147
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %storemerge198 ; 9 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !97 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 4 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  %i.cr = load ptr, ptr %11, align 8, !tbaa !97   ; 6 uses
  %i.cs = icmp eq ptr %i.cr, %i.aq                ; 2 uses
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.cs, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ct = load i64, ptr %i.ar, align 8, !tbaa !105 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %.not21.i = icmp eq ptr %11, %i.cn
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !106

bb.l:                                             ; preds = %bb.k
  switch i64 %i.ct, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !100
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cw = load i64, ptr %i.ar, align 8, !tbaa !105 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !105
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !97
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !100
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !97
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.cr, ptr %i.cn, align 8, !tbaa !97
  %i.db = load i64, ptr %i.ar, align 8, !tbaa !105
  store i64 %i.db, ptr %i.da, align 8, !tbaa !105
  %i.dc = load i64, ptr %i.aq, align 8, !tbaa !100
  store i64 %i.dc, ptr %i.cp, align 8, !tbaa !100
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
end_hunk_4
begin_hunk_5_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052610FixedArrayImLm18446744073709551615ESaImEEEE18DescribeNegationToEPSo:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !100
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !97    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !100
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.113, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !99    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !260
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !255
  %.not16 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052610FixedArrayImLm18446744073709551615ESaImEEEE8ElementsEm.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !99    ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %.body
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !56
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume

.lr.ph:                                           ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.m
  %.017 = phi i64 [ %i.bv, %bb.m ], [ 0, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.106, i64 noundef 9) ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.017)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.99, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !255
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.017 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !259
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.96, i32 noundef 252)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.97, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit: ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !259
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !266
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !268
  %i.bv = add i64 %.017, 1                        ; 3 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !260
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !255
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 2 uses
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.113, i64 noundef 5) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !260
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !255
  %.pre19 = ptrtoint ptr %.pre to i64
  %.pre20 = ptrtoint ptr %.pre18 to i64
  %.pre22 = sub i64 %.pre19, %.pre20
  %.pre24 = sdiv exact i64 %.pre22, 24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKmE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1145

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052610FixedArrayImLm18446744073709551615ESaImEEEE15MatchAndExplainES8_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(272) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector.76", align 8    ; 13 uses
  %10 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !260  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !255  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.88) #29
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #28 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !147
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !148
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !122
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !105
  store i8 0, ptr %i.q, align 8, !tbaa !100
  %i.s = add i64 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1147

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !122
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !105
  store i8 0, ptr %i.v, align 8, !tbaa !100
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !122
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !105
  store i8 0, ptr %i.y, align 8, !tbaa !100
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !122
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !105
  store i8 0, ptr %i.ab, align 8, !tbaa !100
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !122
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !105
  store i8 0, ptr %i.ae, align 8, !tbaa !100
  %i.ag = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !150
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !244 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !101
  %.not204 = icmp eq i64 %i.am, 0
  br i1 %.not204, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.ax = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.az = getelementptr i8, ptr %i.ax, i64 -24
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %.047206 = phi ptr [ %i.ak, %.lr.ph ], [ %i.ei, %bb.w ] ; 6 uses
  %storemerge205 = phi i64 [ 0, %.lr.ph ], [ %i.ej, %bb.w ] ; 8 uses
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !260
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !255 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 24
  %.not63 = icmp eq i64 %storemerge205, %i.bo
  br i1 %.not63, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !56
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ao)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.q

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %bb.d
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !255
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %storemerge205 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !259
  %i.bt = icmp ne ptr %i.bs, null
  %i.bu = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.bt)
          to label %.noexc84 unwind label %bb.r

.noexc84:                                         ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.bu, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc84
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.96, i32 noundef 234)
          to label %.noexc85 unwind label %bb.r

.noexc85:                                         ; preds = %bb.e
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.97, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc85
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.g

bb.f:                                             ; preds = %.noexc85
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc84
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !259
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !269
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %.047206, ptr noundef nonnull %10)
          to label %_ZNK7testing8internal11MatcherBaseIRKmE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !29

_ZNK7testing8internal11MatcherBaseIRKmE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  store ptr %i.ar, ptr %11, align 8, !tbaa !122, !alias.scope !1161
  store i64 0, ptr %i.as, align 8, !tbaa !105, !alias.scope !1161
  store i8 0, ptr %i.ar, align 8, !tbaa !100, !alias.scope !1161
  %i.ca = load ptr, ptr %i.at, align 8, !tbaa !124, !noalias !1161 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %i.au, align 8, !noalias !1161 ; 2 uses
  %i.cc = icmp ugt ptr %i.ca, %i.cb
  %.08.i.i.i.i = select i1 %i.cc, ptr %i.ca, ptr %i.cb ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKmE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  %i.cd = load ptr, ptr %i.av, align 8, !tbaa !125, !noalias !1161 ; 2 uses
  %i.ce = ptrtoint ptr %.08.i.i.i.i to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cg)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %11, align 8, !tbaa !97, !alias.scope !1161 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ar
  br i1 %i.ck, label %.body87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.cl = load i64, ptr %i.ar, align 8, !tbaa !100, !alias.scope !1161
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #27
  br label %.body87

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKmE15MatchAndExplainES3_PNS_19MatchResultListenerE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.cn = load ptr, ptr %9, align 8, !tbaa !147
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %storemerge205 ; 9 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !97 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 4 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  %i.cs = load ptr, ptr %11, align 8, !tbaa !97   ; 6 uses
  %i.ct = icmp eq ptr %i.cs, %i.ar                ; 2 uses
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.ct, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  br i1 %i.ct, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cu = load i64, ptr %i.as, align 8, !tbaa !105 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  %.not21.i = icmp eq ptr %11, %i.co
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !106

bb.l:                                             ; preds = %bb.k
  switch i64 %i.cu, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !100
  store i8 %i.cw, ptr %i.cp, align 1, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.cs, i64 %i.cu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cx = load i64, ptr %i.as, align 8, !tbaa !105 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !105
  %i.cz = load ptr, ptr %i.co, align 8, !tbaa !97
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store i8 0, ptr %i.da, align 1, !tbaa !100
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !97
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cs, ptr %i.co, align 8, !tbaa !97
  %i.dc = load i64, ptr %i.as, align 8, !tbaa !105
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !105
  %i.dd = load i64, ptr %i.ar, align 8, !tbaa !100
  store i64 %i.dd, ptr %i.cq, align 8, !tbaa !100
  br label %bb.p

end_hunk_5
