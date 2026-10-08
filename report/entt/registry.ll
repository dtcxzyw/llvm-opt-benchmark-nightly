Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/registry?download=true
inline.NumInlined: 24885
inline.NumDeleted: 7508
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZN7testing8internal18CmpHelperOpFailureIttEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_:bb.a
  %i.eo = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !217
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.es = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !237 ; 4 uses
  %.not.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !216 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !217
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  ret void

bb.ah:                                            ; preds = %bb.s, %bb.p, %bb.m, %bb.j, %bb.g, %bb.d, %bb.a
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.v
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.aj:                                            ; preds = %bb.y, %_ZN7testing8internal33FormatForComparisonFailureMessageIttEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body77

bb.ak:                                            ; preds = %bb.ab
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

bb.al:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIttEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit88, %bb.ae
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body96

.body96:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i91, %bb.al
  %eh.lpad-body97 = phi { ptr, i32 } [ %i.fd, %bb.al ], [ %i.ed, %_ZN7testing7MessageD2Ev.exit5.i91 ] ; 2 uses
  %i.fe = load ptr, ptr %18, align 8, !tbaa !216  ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %.body96
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !217
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %.body96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fc, %bb.ak ], [ %eh.lpad-body97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %eh.lpad-body97, %.body96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %.body77

.body77:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i73, %_ZN7testing7MessageD2Ev.exit5.i81, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %i.dc, %_ZN7testing7MessageD2Ev.exit5.i73 ], [ %i.fb, %bb.aj ], [ %i.do, %_ZN7testing7MessageD2Ev.exit5.i81 ] ; 2 uses
  %i.fj = load ptr, ptr %17, align 8, !tbaa !216  ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %.body77
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !217
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %.body77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.ai
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fa, %bb.ai ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %.pn.pn, %.body77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %.body

.body:                                            ; preds = %_ZN7testing7MessageD2Ev.exit5.i, %_ZN7testing7MessageD2Ev.exit5.i20, %_ZN7testing7MessageD2Ev.exit5.i40, %bb.ah, %_ZN7testing7MessageD2Ev.exit5.i62, %_ZN7testing7MessageD2Ev.exit6.i52, %_ZN7testing7MessageD2Ev.exit6.i30, %_ZN7testing7MessageD2Ev.exit6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %i.h, %_ZN7testing7MessageD2Ev.exit5.i ], [ %i.x, %_ZN7testing7MessageD2Ev.exit6.i ], [ %i.aj, %_ZN7testing7MessageD2Ev.exit5.i20 ], [ %i.az, %_ZN7testing7MessageD2Ev.exit6.i30 ], [ %i.bl, %_ZN7testing7MessageD2Ev.exit5.i40 ], [ %i.cb, %_ZN7testing7MessageD2Ev.exit6.i52 ], [ %i.ez, %bb.ah ], [ %i.cn, %_ZN7testing7MessageD2Ev.exit5.i62 ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureIttEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %3, ptr noundef nonnull align 2 dereferenceable(2) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN7testing13PrintToStringItEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 2 dereferenceable(2) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN7testing13PrintToStringItEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 2 dereferenceable(2) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIttEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageIttEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIttEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !216    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !217
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.f = load ptr, ptr %5, align 8, !tbaa !216    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !217
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIttEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !216    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !217
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.r = load ptr, ptr %5, align 8, !tbaa !216    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.u = load i64, ptr %i.s, align 8, !tbaa !217
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE8generateITkSt15output_iteratorIT_EPS1_EEvS6_S6_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !221
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !222
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.not13 = icmp eq ptr %1, %2
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.014 = phi ptr [ %i.x, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !249  ; 2 uses
  %.not9 = icmp eq i64 %i.j, %i.h
  br i1 %.not9, label %.critedge, label %bb.b

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi ptr [ %i.x, %bb.b ], [ %.014, %.lr.ph ] ; 2 uses
  %.not1017 = icmp eq ptr %.0.lcssa, %2
  br i1 %.not1017, label %._crit_edge, label %.lr.ph19

.lr.ph19:                                         ; preds = %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !222
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.j
  %i.p = load i32, ptr %i.o, align 4, !tbaa !254
  %i.q = tail call { ptr, i64 } @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE11try_emplaceES1_bPKv(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.p, i1 noundef zeroext true, ptr noundef null) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0
  %i.s = extractvalue { ptr, i64 } %i.q, 1
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !222
  %i.u = getelementptr [4 x i8], ptr %i.t, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !254
  store i32 %i.w, ptr %.014, align 4, !tbaa !254
  %i.x = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 3 uses
  %.not = icmp eq ptr %i.x, %2
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !2583

bb.c:                                             ; preds = %.lr.ph19, %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit
  %.118 = phi ptr [ %.0.lcssa, %.lr.ph19 ], [ %i.bk, %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit ] ; 2 uses
  %i.y = load i64, ptr %i.k, align 8, !tbaa !443  ; 3 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.z, 1048575                   ; 3 uses
  %i.ab = icmp ne i32 %i.aa, 1048575
  %i.ac = zext i1 %i.ab to i64
  %i.ad = add i64 %i.y, %i.ac                     ; 2 uses
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !300
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !301 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = and i64 %i.y, 1048575                   ; 2 uses
  %i.al = lshr i64 %i.ak, 12                      ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %.lr.ph.i, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %i.an = phi i64 [ %i.bb, %bb.d ], [ %i.al, %bb.c ]
  %i.ao = phi i64 [ %i.ba, %bb.d ], [ %i.ak, %bb.c ]
  %.05.i = phi i32 [ %i.aw, %bb.d ], [ %i.aa, %bb.c ] ; 3 uses
  %storemerge4.i = phi i64 [ %i.az, %bb.d ], [ %i.ad, %bb.c ] ; 5 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.an
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !251 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i: ; preds = %.lr.ph.i
  %i.ar = and i64 %i.ao, 4095
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !254
  %.not.i = icmp ugt i32 %i.at, -1048577
  %i.au = icmp eq i32 %.05.i, 1048575
  %or.cond.i = or i1 %i.au, %.not.i
  br i1 %or.cond.i, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i
  %i.av = trunc i64 %storemerge4.i to i32
  %i.aw = and i32 %i.av, 1048575                  ; 3 uses
  %i.ax = icmp ne i32 %i.aw, 1048575
  %i.ay = zext i1 %i.ax to i64
  %i.az = add i64 %storemerge4.i, %i.ay           ; 2 uses
  %i.ba = and i64 %storemerge4.i, 1048575         ; 2 uses
  %i.bb = lshr i64 %i.ba, 12                      ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.aj
  br i1 %i.bc, label %.lr.ph.i, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit, !llvm.loop !27

_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit: ; preds = %.lr.ph.i, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i, %bb.d, %bb.c
  %storemerge.lcssa.i = phi i64 [ %i.ad, %bb.c ], [ %storemerge4.i, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i ], [ %i.az, %bb.d ], [ %storemerge4.i, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ %i.aa, %bb.c ], [ %.05.i, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i ], [ %i.aw, %bb.d ], [ %.05.i, %.lr.ph.i ]
  store i64 %storemerge.lcssa.i, ptr %i.k, align 8, !tbaa !443
  %i.bd = tail call { ptr, i64 } @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE11try_emplaceES1_bPKv(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.0.lcssa.i, i1 noundef zeroext true, ptr noundef null) ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 0
  %i.bf = extractvalue { ptr, i64 } %i.bd, 1
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !222
  %i.bh = getelementptr [4 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.bh, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !254
  store i32 %i.bj, ptr %.118, align 4, !tbaa !254
  %i.bk = getelementptr inbounds nuw i8, ptr %.118, i64 4 ; 2 uses
  %.not10 = icmp eq ptr %i.bk, %2
  br i1 %.not10, label %._crit_edge, label %bb.c, !llvm.loop !2584

._crit_edge:                                      ; preds = %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit, %bb.a, %.critedge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE7connectITnDaXadL_ZN8Registry8listener4incrERKS4_S2_EESA_EEvRT0_ENUlPKvS5_S2_E_8__invokeESG_S5_S2_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef %2) #9 comdat align 2 {
bb.a:
  store i32 %2, ptr %0, align 4, !tbaa !447
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !448
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !448
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIiEEEE7releaseITnDaXadL_ZN8Registry8listener4incrERKSA_S8_EERSI_EEvT0_S1_EESI_EEvRSM_ENUlPKvS1_E_8__invokeESP_S1_(ptr noundef %0, ptr noundef %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !270  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !271    ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not9.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIiEEEE7releaseITnDaXadL_ZN8Registry8listener4incrERKSA_S8_EERSI_EEvT0_S1_EESI_EEvRSM_ENKUlPKvS1_E_clESP_S1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.e, %i.d
  %i.g = ashr exact i64 %i.f, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.h = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %.010.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ %i.j, %bb.d ]
  %i.j = add i64 %.010.i.i.i.i, -1                ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !273
  %i.n = icmp eq ptr %i.m, @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE7connectITnDaXadL_ZN8Registry8listener4incrERKS4_S2_EESA_EEvRT0_ENUlPKvS5_S2_E_8__invokeESG_S5_S2_
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = icmp eq ptr %i.o, %0
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.h, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !387
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !270
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !270
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !271
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ %i.t, %bb.c ], [ %i.h, %bb.b ]
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.c ], [ %i.i, %bb.b ]
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIiEEEE7releaseITnDaXadL_ZN8Registry8listener4incrERKSA_S8_EERSI_EEvT0_S1_EESI_EEvRSM_ENKUlPKvS1_E_clESP_S1_.exit, label %bb.b, !llvm.loop !30

_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIiEEEE7releaseITnDaXadL_ZN8Registry8listener4incrERKSA_S8_EERSI_EEvT0_S1_EESI_EEvRSM_ENKUlPKvS1_E_clESP_S1_.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIN4test8internal10empty_typeEEEEE7releaseITnDaXadL_ZN8Registry8listener4incrERKSA_S8_EERSL_EEvT0_S1_EESL_EEvRSP_ENUlPKvS1_E_8__invokeESS_S1_(ptr noundef %0, ptr noundef %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !270  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !271    ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not9.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIN4test8internal10empty_typeEEEEE7releaseITnDaXadL_ZN8Registry8listener4incrERKSA_S8_EERSL_EEvT0_S1_EESL_EEvRSP_ENKUlPKvS1_E_clESS_S1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.e, %i.d
  %i.g = ashr exact i64 %i.f, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.h = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %.010.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ %i.j, %bb.d ]
  %i.j = add i64 %.010.i.i.i.i, -1                ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !273
  %i.n = icmp eq ptr %i.m, @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE7connectITnDaXadL_ZN8Registry8listener4incrERKS4_S2_EESA_EEvRT0_ENUlPKvS5_S2_E_8__invokeESG_S5_S2_
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = icmp eq ptr %i.o, %0
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.h, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !387
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !270
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !270
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !271
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ %i.t, %bb.c ], [ %i.h, %bb.b ]
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.c ], [ %i.i, %bb.b ]
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIN4test8internal10empty_typeEEEEE7releaseITnDaXadL_ZN8Registry8listener4incrERKSA_S8_EERSL_EEvT0_S1_EESL_EEvRSP_ENKUlPKvS1_E_clESS_S1_.exit, label %bb.b, !llvm.loop !32

_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIN4test8internal10empty_typeEEEEE7releaseITnDaXadL_ZN8Registry8listener4incrERKSA_S8_EERSL_EEvT0_S1_EESL_EEvRSP_ENKUlPKvS1_E_clESS_S1_.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureIitEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 2 dereferenceable(2) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN7testing13PrintToStringItEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 2 dereferenceable(2) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageItiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageItiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageItiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !216    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !217
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.f = load ptr, ptr %5, align 8, !tbaa !216    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !217
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageItiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !216    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !217
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.r = load ptr, ptr %5, align 8, !tbaa !216    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.u = load i64, ptr %i.s, align 8, !tbaa !217
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt14basic_registryIN8Registry9my_entityESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(336) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.entt::basic_any", align 8   ; 9 uses
  %4 = alloca %"class.entt::basic_any", align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_0
begin_hunk_1_@_ZN4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setIN8Registry9my_entityESaIS4_EEEESt8identitySt8equal_toIvESaISt4pairIKjS7_EEEaSEOSF_:bb.a
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !686  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !687  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !688
  %i.q = load <2 x ptr>, ptr %i.k, align 8, !tbaa !770
  store <2 x ptr> %i.q, ptr %i.j, align 8, !tbaa !770
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !688
  store ptr %i.s, ptr %i.o, align 8, !tbaa !688
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN8Registry9my_entityESaIS6_EEEEEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN8Registry9my_entityESaIS6_EEEEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN8Registry9my_entityESaIS6_EEEEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.l, %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !427  ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN8Registry9my_entityESaIS6_EEEEEEEvPT_.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.v, align 8, !tbaa !436
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !437
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !199
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #27, !inline_history !2615
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !199
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #27, !inline_history !2615
  br label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN8Registry9my_entityESaIS6_EEEEEEEvPT_.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !217
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !224
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.f ], [ %i.ai, %bb.g ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.h, label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN8Registry9my_entityESaIS6_EEEEEEEvPT_.exit.i.i.i.i.i.i.i, !prof !304

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #27
  br label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN8Registry9my_entityESaIS6_EEEEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN8Registry9my_entityESaIS6_EEEEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i4 = icmp eq ptr %i.ak, %i.n
  br i1 %.not.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN8Registry9my_entityESaIS6_EEEEEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !106

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN8Registry9my_entityESaIS6_EEEEEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN8Registry9my_entityESaIS6_EEEEEEEvPT_.exit.i.i.i.i.i.i.i, %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEaSEOS5_.exit
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN4entt15compressed_pairISt6vectorINS_8internal14dense_map_nodeIjSt10shared_ptrINS_16basic_sparse_setIN8Registry9my_entityESaIS7_EEEEEESaISB_EESt8equal_toIvEEaSEOSG_.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN8Registry9my_entityESaIS6_EEEEEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i
  %i.al = ptrtoint ptr %i.p to i64
  %i.am = ptrtoint ptr %i.l to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.an) #28
  br label %_ZN4entt15compressed_pairISt6vectorINS_8internal14dense_map_nodeIjSt10shared_ptrINS_16basic_sparse_setIN8Registry9my_entityESaIS7_EEEEEESaISB_EESt8equal_toIvEEaSEOSG_.exit

_ZN4entt15compressed_pairISt6vectorINS_8internal14dense_map_nodeIjSt10shared_ptrINS_16basic_sparse_setIN8Registry9my_entityESaIS7_EEEEEESaISB_EESt8equal_toIvEEaSEOSG_.exit: ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setIN8Registry9my_entityESaIS6_EEEEEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !760
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.ap, ptr %i.aq, align 8, !tbaa !760
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sigh_mixinINS_13basic_storageIN8Registry9my_entityES3_SaIS3_EEENS_14basic_registryIS3_S4_EEE4swapERS8_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !2616
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !2616
  store ptr %i.d, ptr %i.a, align 8, !tbaa !2616
  store ptr %i.c, ptr %i.b, align 8, !tbaa !2616
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !679
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.e, align 8, !tbaa !769
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.k = load <2 x ptr>, ptr %i.f, align 8, !tbaa !769
  store <2 x ptr> %i.k, ptr %i.e, align 8, !tbaa !769
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !679
  store ptr %i.l, ptr %i.g, align 8, !tbaa !679
  store <2 x ptr> %i.j, ptr %i.f, align 8, !tbaa !769
  store ptr %i.h, ptr %i.i, align 8, !tbaa !679
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !679
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.m, align 8, !tbaa !769
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.s = load <2 x ptr>, ptr %i.n, align 8, !tbaa !769
  store <2 x ptr> %i.s, ptr %i.m, align 8, !tbaa !769
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !679
  store ptr %i.t, ptr %i.o, align 8, !tbaa !679
  store <2 x ptr> %i.r, ptr %i.n, align 8, !tbaa !769
  store ptr %i.p, ptr %i.q, align 8, !tbaa !679
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !679
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.u, align 8, !tbaa !769
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.aa = load <2 x ptr>, ptr %i.v, align 8, !tbaa !769
  store <2 x ptr> %i.aa, ptr %i.u, align 8, !tbaa !769
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !679
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !679
  store <2 x ptr> %i.z, ptr %i.v, align 8, !tbaa !769
  store ptr %i.x, ptr %i.y, align 8, !tbaa !679
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !223
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !223
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !223
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !223
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !683
  %i.ak = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !398
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !398
  store <2 x ptr> %i.ak, ptr %i.ag, align 8, !tbaa !398
  store <2 x ptr> %i.am, ptr %i.ah, align 8, !tbaa !398
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !681
  %i.as = load <2 x ptr>, ptr %i.al, align 8, !tbaa !251
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.av = load <2 x ptr>, ptr %i.an, align 8, !tbaa !251
  store <2 x ptr> %i.as, ptr %i.ai, align 8, !tbaa !251
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !683
  %i.aw = load <2 x ptr>, ptr %i.at, align 8, !tbaa !251
  store <2 x ptr> %i.aw, ptr %i.ap, align 8, !tbaa !251
  store <2 x ptr> %i.av, ptr %i.ao, align 8, !tbaa !251
  store ptr %i.ar, ptr %i.au, align 8, !tbaa !681
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !752
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !752
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !752
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !752
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bd = load i8, ptr %i.bb, align 8, !tbaa !753
  %i.be = load i8, ptr %i.bc, align 8, !tbaa !753
  store i8 %i.be, ptr %i.bb, align 8, !tbaa !753
  store i8 %i.bd, ptr %i.bc, align 8, !tbaa !753
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !223
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !223
  store i64 %i.bi, ptr %i.bf, align 8, !tbaa !223
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !223
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sigh_mixinINS_13basic_storageIN8Registry9my_entityES3_SaIS3_EEENS_14basic_registryIS3_S4_EEE8generateITkSt15output_iteratorINT_11entity_typeEEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEEEvSB_SB_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !472
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !473
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = icmp eq ptr %1, %2
  br i1 %i.j, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.05.011.i = phi ptr [ %i.x, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %i.k = load i64, ptr %i.i, align 8, !tbaa !471  ; 2 uses
  %.not.i = icmp eq i64 %i.k, %i.h
  br i1 %.not.i, label %.critedge.i, label %bb.b

.critedge.i:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.05.0.lcssa.i = phi ptr [ %i.x, %bb.b ], [ %.sroa.05.011.i, %.lr.ph.i ] ; 2 uses
  %i.l = icmp eq ptr %.sroa.05.0.lcssa.i, %2
  br i1 %i.l, label %_ZN4entt13basic_storageIN8Registry9my_entityES2_SaIS2_EE8generateITkSt15output_iteratorIT_EN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_S3_EEEEEvS7_S7_.exit, label %.lr.ph15.i

.lr.ph15.i:                                       ; preds = %.critedge.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !473
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.k
  %i.p = load i32, ptr %i.o, align 4, !tbaa !477
  %i.q = tail call { ptr, i64 } @_ZN4entt16basic_sparse_setIN8Registry9my_entityESaIS2_EE11try_emplaceES2_bPKv(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %i.p, i1 noundef zeroext true, ptr noundef null) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0
  %i.s = extractvalue { ptr, i64 } %i.q, 1
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !473
  %i.u = getelementptr [4 x i8], ptr %i.t, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !477
  store i32 %i.w, ptr %.sroa.05.011.i, align 4, !tbaa !477
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i, i64 4 ; 3 uses
  %i.y = icmp eq ptr %i.x, %2
  br i1 %i.y, label %.critedge.i, label %.lr.ph.i, !llvm.loop !2617

bb.c:                                             ; preds = %bb.c, %.lr.ph15.i
  %.sroa.05.114.i = phi ptr [ %.sroa.05.0.lcssa.i, %.lr.ph15.i ], [ %i.am, %bb.c ] ; 2 uses
  %i.z = load i64, ptr %i.m, align 8, !tbaa !475  ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 255                      ; 2 uses
  %i.ac = icmp ne i32 %i.ab, 255
  %i.ad = zext i1 %i.ac to i64
  %i.ae = add i64 %i.z, %i.ad
  store i64 %i.ae, ptr %i.m, align 8, !tbaa !475
  %i.af = tail call { ptr, i64 } @_ZN4entt16basic_sparse_setIN8Registry9my_entityESaIS2_EE11try_emplaceES2_bPKv(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %i.ab, i1 noundef zeroext true, ptr noundef null) ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0
  %i.ah = extractvalue { ptr, i64 } %i.af, 1
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !473
  %i.aj = getelementptr [4 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = getelementptr i8, ptr %i.aj, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !477
  store i32 %i.al, ptr %.sroa.05.114.i, align 4, !tbaa !477
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.05.114.i, i64 4 ; 2 uses
  %i.an = icmp eq ptr %i.am, %2
  br i1 %i.an, label %_ZN4entt13basic_storageIN8Registry9my_entityES2_SaIS2_EE8generateITkSt15output_iteratorIT_EN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_S3_EEEEEvS7_S7_.exit, label %bb.c, !llvm.loop !2618

_ZN4entt13basic_storageIN8Registry9my_entityES2_SaIS2_EE8generateITkSt15output_iteratorIT_EN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_S3_EEEEEvS7_S7_.exit: ; preds = %bb.c, %.critedge.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !486
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !769
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !769
  %i.au = icmp eq ptr %i.ar, %i.at
  br i1 %i.au, label %.loopexit, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %_ZN4entt13basic_storageIN8Registry9my_entityES2_SaIS2_EE8generateITkSt15output_iteratorIT_EN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_S3_EEEEEvS7_S7_.exit, %_ZNK4entt4sighIFvRNS_14basic_registryIN8Registry9my_entityESaIS3_EEES3_ES4_E7publishES6_S3_.exit
  %.sroa.05.08 = phi ptr [ %i.bi, %_ZNK4entt4sighIFvRNS_14basic_registryIN8Registry9my_entityESaIS3_EEES3_ES4_E7publishES6_S3_.exit ], [ %1, %_ZN4entt13basic_storageIN8Registry9my_entityES2_SaIS2_EE8generateITkSt15output_iteratorIT_EN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_S3_EEEEEvS7_S7_.exit ] ; 2 uses
  %i.av = load i32, ptr %.sroa.05.08, align 4, !tbaa !477
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !487 ; 2 uses
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !488 ; 2 uses
  %.not5.i = icmp eq ptr %i.aw, %i.ax
  br i1 %.not5.i, label %_ZNK4entt4sighIFvRNS_14basic_registryIN8Registry9my_entityESaIS3_EEES3_ES4_E7publishES6_S3_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.split
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 4
  br label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %.lr.ph.i3, %.lr.ph.preheader.i
  %.06.i = phi i64 [ %i.bc, %.lr.ph.i3 ], [ %i.bb, %.lr.ph.preheader.i ]
  %i.bc = add i64 %.06.i, -1                      ; 3 uses
  %i.bd = load ptr, ptr %i.aq, align 8, !tbaa !488
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bc ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !490
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !491
  tail call void %i.bg(ptr noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(336) %i.ap, i32 noundef %i.av), !inline_history !141
  %.not.i4 = icmp eq i64 %i.bc, 0
  br i1 %.not.i4, label %_ZNK4entt4sighIFvRNS_14basic_registryIN8Registry9my_entityESaIS3_EEES3_ES4_E7publishES6_S3_.exit, label %.lr.ph.i3, !llvm.loop !35

_ZNK4entt4sighIFvRNS_14basic_registryIN8Registry9my_entityESaIS3_EEES3_ES4_E7publishES6_S3_.exit: ; preds = %.lr.ph.i3, %.lr.ph.split
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 4 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %2
  br i1 %i.bj, label %.loopexit, label %.lr.ph.split, !llvm.loop !2619

.loopexit:                                        ; preds = %_ZNK4entt4sighIFvRNS_14basic_registryIN8Registry9my_entityESaIS3_EEES3_ES4_E7publishES6_S3_.exit, %bb.a, %_ZN4entt13basic_storageIN8Registry9my_entityES2_SaIS2_EE8generateITkSt15output_iteratorIT_EN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_S3_EEEEEvS7_S7_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7sort_asITkSt14input_iteratorNS_8internal13view_iteratorIS3_Lb0ELm2ELm0EEEEENS5_19sparse_set_iteratorISt6vectorIS1_S2_EEET_SC_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef byval(%"class.entt::internal::view_iterator") align 8 %1, ptr noundef byval(%"class.entt::internal::view_iterator") align 8 %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !325
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !249
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !221
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !222
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i64 [ %i.e, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !560
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread
  %.sroa.311.015 = phi i64 [ %i.n, %.lr.ph ], [ %.sroa.311.1, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread ] ; 6 uses
  %i.v = load i64, ptr %i.p, align 8, !tbaa !560  ; 6 uses
  %i.w = icmp eq i64 %i.v, %i.s
  br i1 %i.w, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.e, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread, %bb.d
  %.sroa.311.0.lcssa = phi i64 [ 0, %bb.d ], [ 0, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread ], [ %.sroa.311.015, %bb.e ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.o, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.311.0.lcssa, 1
  ret { ptr, i64 } %.fca.1.insert

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %1, align 8, !tbaa !561
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !222
  %i.z = getelementptr [4 x i8], ptr %i.y, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !254 ; 3 uses
  %i.ac = and i32 %i.ab, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12                      ; 2 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !300
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !301 ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = icmp ult i64 %i.ae, %i.ak
  br i1 %i.al, label %bb.g, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !251 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit: ; preds = %bb.g
  %i.ao = and i64 %i.ad, 4095
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = and i32 %i.ab, -1048576
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !254 ; 2 uses
  %i.as = xor i32 %i.ar, %i.aq
  %i.at = icmp ult i32 %i.as, 1048575
  br i1 %i.at, label %bb.h, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread

bb.h:                                             ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !222
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %.sroa.311.015
  %i.aw = getelementptr i8, ptr %i.av, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !254 ; 2 uses
  %.not = icmp eq i32 %i.ax, %i.ab
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = and i32 %i.ax, 1048575
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = lshr i64 %i.az, 12
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !251
  %i.bd = and i64 %i.az, 4095
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !254
  %i.bg = and i32 %i.bf, 1048575                  ; 2 uses
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = and i32 %i.ar, 1048575                  ; 2 uses
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !199
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.bh, i64 noundef %i.bj), !inline_history !142
  %i.bn = load ptr, ptr %i.o, align 8, !tbaa !222 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bh ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bj ; 3 uses
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !254 ; 2 uses
  %i.br = and i32 %i.bq, -1048576
  %i.bs = or disjoint i32 %i.br, %i.bi
  %i.bt = and i32 %i.bq, 1048575
  %i.bu = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.bv = lshr i64 %i.bu, 12
  %i.bw = load ptr, ptr %i.t, align 8, !tbaa !301 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !251
  %i.bz = and i64 %i.bu, 4095
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bz
  store i32 %i.bs, ptr %i.ca, align 4, !tbaa !254
  %i.cb = load i32, ptr %i.bp, align 4, !tbaa !254 ; 2 uses
  %i.cc = and i32 %i.cb, -1048576
  %i.cd = or disjoint i32 %i.cc, %i.bg
  %i.ce = and i32 %i.cb, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !251
  %i.cj = and i64 %i.cf, 4095
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cj
  store i32 %i.cd, ptr %i.ck, align 4, !tbaa !254
  %i.cl = load i32, ptr %i.bo, align 4, !tbaa !254
  %i.cm = load i32, ptr %i.bp, align 4, !tbaa !254
  store i32 %i.cm, ptr %i.bo, align 4, !tbaa !254
  store i32 %i.cl, ptr %i.bp, align 4, !tbaa !254
  %.pre.pre = load i64, ptr %i.p, align 8, !tbaa !560
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre = phi i64 [ %.pre.pre, %bb.i ], [ %i.v, %bb.h ]
  %i.cn = add nsw i64 %.sroa.311.015, -1
  br label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread: ; preds = %bb.g, %bb.f, %bb.j, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit
  %i.co = phi i64 [ %.pre, %bb.j ], [ %i.v, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit ], [ %i.v, %bb.f ], [ %i.v, %bb.g ]
  %.sroa.311.1 = phi i64 [ %i.cn, %bb.j ], [ %.sroa.311.015, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit ], [ %.sroa.311.015, %bb.f ], [ %.sroa.311.015, %bb.g ] ; 2 uses
  %i.cp = add nsw i64 %i.co, -1
  store i64 %i.cp, ptr %i.p, align 8, !tbaa !560
  call void @_ZN4entt8internal13view_iteratorINS_16basic_sparse_setINS_6entityESaIS3_EEELb0ELm2ELm0EE9seek_nextEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.cq = icmp eq i64 %.sroa.311.1, 0
  br i1 %i.cq, label %.critedge, label %bb.e, !llvm.loop !2620
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7sort_asITkSt14input_iteratorNS_8internal19sparse_set_iteratorISt6vectorIS1_S2_EEEEES9_T_SA_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !325
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !249
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !221
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !222
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i64 [ %i.e, %bb.b ], [ %i.m, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = icmp eq i64 %i.n, 0
  %i.q = icmp eq i64 %2, %4
  %or.cond19 = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond19, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !301
  br label %bb.e

.critedge:                                        ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread, %bb.d
  %.sroa.315.0.lcssa = phi i64 [ %i.n, %bb.d ], [ %.sroa.315.1, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.o, 0
end_hunk_1
