Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/options?download=true
inline.NumInlined: 1118
inline.NumDeleted: 421
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6casadi7Options4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread: ; preds = %.lr.ph, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi7Options5EntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %._crit_edge
  %.4 = phi ptr [ null, %._crit_edge ], [ null, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi7Options5EntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit ], [ %i.f, %.lr.ph ]
  ret ptr %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi7Options5Entry4dispERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str, i64 noundef 3) ; 0 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.b, i64 noundef %i.d) ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.1, i64 noundef 12) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.g = load i32, ptr %0, align 8, !tbaa !36
  call void @_ZN6casadi11GenericType20get_type_descriptionB5cxx11ENS_6TypeIDE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef %i.g)
  %i.h = load ptr, ptr %3, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.h, i64 noundef %i.j)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.m = load ptr, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !37
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.3, i64 noundef 6) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !30
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.t, i64 noundef %i.v) ; 4 uses
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !39
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 240
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !55 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !61
  %.not.i1.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 67
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !37
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ad)
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noundef signext i8 %i.ak(ptr noundef nonnull align 8 dereferenceable(570) %i.ad, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.ah, %bb.c ], [ %i.al, %bb.d ]
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef signext %.0.i.i.i)
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am) ; 0 uses
  ret void

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.e
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !37
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.ao
}

declare void @_ZN6casadi11GenericType20get_type_descriptionB5cxx11ENS_6TypeIDE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi7Options4dispERSo(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not18 = icmp eq ptr %i.a, %i.c
  br i1 %.not18, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not1720 = icmp eq ptr %i.e, %i.f
  br i1 %.not1720, label %._crit_edge24, label %.lr.ph23

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.014.019 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.014.019, align 8, !tbaa !20
  tail call void @_ZNK6casadi7Options4dispERSo(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.014.019, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.h, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge24:                                    ; preds = %.lr.ph23, %._crit_edge
  ret void

.lr.ph23:                                         ; preds = %._crit_edge, %.lr.ph23
  %.sroa.010.021 = phi ptr [ %i.k, %.lr.ph23 ], [ %i.e, %._crit_edge ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.021, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.021, i64 64
  tail call void @_ZNK6casadi7Options5Entry4dispERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.k = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.010.021) #24 ; 2 uses
  %.not17 = icmp eq ptr %i.k, %i.f
  br i1 %.not17, label %._crit_edge24, label %.lr.ph23
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN6casadi7Options13word_distanceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::locale", align 8       ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30   ; 9 uses
  %i.e = icmp eq i64 %i.b, %i.d
  %i.f = icmp eq i64 %i.b, 0                      ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !31
  %i.h = load ptr, ptr %0, align 8, !tbaa !31
  %bcmp.i = tail call i32 @bcmp(ptr %i.h, ptr %i.g, i64 %i.b)
  %i.i = icmp eq i32 %bcmp.i, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %.thread

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %_ZNSt6vectorIxSaIxEED2Ev.exit68, label %.thread

.thread:                                          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.c
  %i.j = icmp eq i64 %i.d, 0
  br i1 %i.j, label %_ZNSt6vectorIxSaIxEED2Ev.exit68, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.k = add nsw i64 %i.d, 1                      ; 10 uses
  %i.l = icmp ugt i64 %i.k, 1152921504606846975
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #23
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.d
  %.not.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.thread, label %.noexc56

.noexc56:                                         ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 3                  ; 4 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25 ; 17 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.m, i1 false), !tbaa !104
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k ; 4 uses
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25
          to label %.lr.ph.preheader unwind label %.thread117 ; 21 uses

.lr.ph.preheader:                                 ; preds = %.noexc56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.p, i8 0, i64 %i.m, i1 false), !tbaa !104
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.k
  %i.r = ptrtoint ptr %i.q to i64                 ; 4 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph.preheader202, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.k, 1152921504606846972      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x i64> %vec.ind, ptr %i.s, align 8, !tbaa !104
  store <2 x i64> %step.add, ptr %i.t, align 8, !tbaa !104
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader202

.lr.ph.preheader202:                              ; preds = %.lr.ph.preheader, %middle.block
  %.044128.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  %i.v = icmp sgt i64 %i.b, 0
  br i1 %i.v, label %.lr.ph137, label %_ZNSt6vectorIxSaIxEED2Ev.exit

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  %i.w = icmp slt i64 %i.b, 1
  call void @llvm.assume(i1 %i.w)
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

.lr.ph137:                                        ; preds = %._crit_edge
  %i.x = icmp sgt i64 %i.d, 0
  %3 = shl nsw i64 %i.d, 3
  %4 = add nsw i64 %3, 8                          ; 6 uses
  br i1 %i.x, label %.lr.ph131.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph137
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.y = icmp ult i64 %i.b, 4
  br i1 %i.y, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %.preheader

.lr.ph131.us:                                     ; preds = %.lr.ph137, %.loopexit.us
  %.043135.us = phi i64 [ %i.z, %.loopexit.us ], [ 0, %.lr.ph137 ] ; 2 uses
  %i.z = add nuw nsw i64 %.043135.us, 1           ; 3 uses
  store i64 %i.z, ptr %i.p, align 8, !tbaa !104
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph131.us, %_ZSt7tolowerIcET_S0_RKSt6locale.exit75.us
  %.042129.us = phi i64 [ 0, %.lr.ph131.us ], [ %i.bc, %_ZSt7tolowerIcET_S0_RKSt6locale.exit75.us ] ; 4 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.043135.us
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !37
  %i.ad = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #21
  %i.ae = load ptr, ptr %2, align 8, !tbaa !107
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !111
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ad
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !113 ; 3 uses
  %.not.not.i.i.us = icmp eq ptr %i.ai, null
  br i1 %.not.not.i.i.us, label %.split139.us.invoke, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.us

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.us: ; preds = %bb.e
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !39
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef signext i8 %i.al(ptr noundef nonnull align 8 dereferenceable(570) %i.ai, i8 noundef signext %i.ac)
          to label %_ZSt7tolowerIcET_S0_RKSt6locale.exit.us unwind label %.loopexit126.split.us, !inline_history !98

_ZSt7tolowerIcET_S0_RKSt6locale.exit.us:          ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.us
  %i.an = load ptr, ptr %1, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.042129.us
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37
  %i.aq = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #21
  %i.ar = load ptr, ptr %2, align 8, !tbaa !107
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !111
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.aq
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !113 ; 3 uses
  %.not.not.i.i71.us = icmp eq ptr %i.av, null
  br i1 %.not.not.i.i71.us, label %.split139.us.invoke, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i72.us

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i72.us: ; preds = %_ZSt7tolowerIcET_S0_RKSt6locale.exit.us
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef signext i8 %i.ay(ptr noundef nonnull align 8 dereferenceable(570) %i.av, i8 noundef signext %i.ap)
          to label %_ZSt7tolowerIcET_S0_RKSt6locale.exit75.us unwind label %.loopexit126.split.us, !inline_history !98

_ZSt7tolowerIcET_S0_RKSt6locale.exit75.us:        ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i72.us
  %.not55.us = icmp ne i8 %i.am, %i.az
  %spec.store.select.us = zext i1 %.not55.us to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.042129.us
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !104
  %i.bc = add nuw nsw i64 %.042129.us, 1          ; 4 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !104
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.042129.us
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !104
  %i.bh = add nsw i64 %i.bg, %spec.store.select.us
  %i.bi = call i64 @llvm.smin.i64(i64 %i.be, i64 %i.bb)
  %.sroa.speculated82.us = add nsw i64 %i.bi, 1
  %.sroa.speculated.us = call i64 @llvm.smin.i64(i64 %i.bh, i64 %.sroa.speculated82.us)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bc
  store i64 %.sroa.speculated.us, ptr %i.bj, align 8, !tbaa !104
  %exitcond145.not = icmp eq i64 %i.bc, %i.d
  br i1 %exitcond145.not, label %.loopexit.us, label %bb.e, !llvm.loop !99

.loopexit.us:                                     ; preds = %_ZSt7tolowerIcET_S0_RKSt6locale.exit75.us
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.p, i64 %4, i1 false), !tbaa !104
  %exitcond146.not = icmp eq i64 %i.z, %i.b
  br i1 %exitcond146.not, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %.lr.ph131.us, !llvm.loop !100

.loopexit126.split.us:                            ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i72.us, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.thread117:                                       ; preds = %.noexc56
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit80

.lr.ph:                                           ; preds = %.lr.ph.preheader202, %.lr.ph
  %.044128 = phi i64 [ %i.bm, %.lr.ph ], [ %.044128.ph, %.lr.ph.preheader202 ] ; 4 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.044128
  store i64 %.044128, ptr %i.bl, align 8, !tbaa !104
  %i.bm = add nuw i64 %.044128, 1
  %exitcond.not = icmp eq i64 %.044128, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !101

_ZNSt6vectorIxSaIxEED2Ev.exit.loopexit201.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.loopexit201.unr-lcssa, %.preheader.preheader
  %.043135.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.bv, %_ZNSt6vectorIxSaIxEED2Ev.exit.loopexit201.unr-lcssa ]
  %lcmp.mod203 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod203)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.043135.epil = phi i64 [ %i.bn, %.preheader.epil ], [ %.043135.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.bn = add nuw nsw i64 %.043135.epil, 1        ; 2 uses
  store i64 %i.bn, ptr %i.p, align 8, !tbaa !104
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.p, i64 %4, i1 false), !tbaa !104
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %.preheader.epil, !llvm.loop !102

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.loopexit201.unr-lcssa, %.preheader.epil, %.loopexit.us, %._crit_edge.thread, %._crit_edge
  %.sroa.0100.0115158177 = phi ptr [ null, %._crit_edge.thread ], [ %i.n, %.loopexit.us ], [ %i.n, %._crit_edge ], [ %i.n, %.preheader.epil ], [ %i.n, %_ZNSt6vectorIxSaIxEED2Ev.exit.loopexit201.unr-lcssa ] ; 3 uses
  %.sroa.13106.0112160175 = phi ptr [ null, %._crit_edge.thread ], [ %i.o, %.loopexit.us ], [ %i.o, %._crit_edge ], [ %i.o, %.preheader.epil ], [ %i.o, %_ZNSt6vectorIxSaIxEED2Ev.exit.loopexit201.unr-lcssa ]
  %.sroa.090.0162174 = phi ptr [ null, %._crit_edge.thread ], [ %i.p, %.loopexit.us ], [ %i.p, %._crit_edge ], [ %i.p, %.preheader.epil ], [ %i.p, %_ZNSt6vectorIxSaIxEED2Ev.exit.loopexit201.unr-lcssa ] ; 3 uses
  %.sroa.14.0163172 = phi i64 [ 0, %._crit_edge.thread ], [ %i.r, %.loopexit.us ], [ %i.r, %._crit_edge ], [ %i.r, %.preheader.epil ], [ %i.r, %_ZNSt6vectorIxSaIxEED2Ev.exit.loopexit201.unr-lcssa ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.090.0162174, i64 %i.d
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !104 ; 2 uses
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.bq = ptrtoint ptr %.sroa.090.0162174 to i64
  %i.br = sub i64 %.sroa.14.0163172, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.0162174, i64 noundef %i.br) #22
  %.not.i.i.i67 = icmp eq ptr %.sroa.0100.0115158177, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorIxSaIxEED2Ev.exit68, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.bs = ptrtoint ptr %.sroa.13106.0112160175 to i64
  %i.bt = ptrtoint ptr %.sroa.0100.0115158177 to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0100.0115158177, i64 noundef %i.bu) #22
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit68

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.043135 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.bv, %.preheader ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %5 = or disjoint i64 %.043135, 1
  store i64 %5, ptr %i.p, align 8, !tbaa !104
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.p, i64 %4, i1 false), !tbaa !104
  %6 = or disjoint i64 %.043135, 2
  store i64 %6, ptr %i.p, align 8, !tbaa !104
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.p, i64 %4, i1 false), !tbaa !104
  %7 = or disjoint i64 %.043135, 3
  store i64 %7, ptr %i.p, align 8, !tbaa !104
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.p, i64 %4, i1 false), !tbaa !104
  %i.bv = add nuw nsw i64 %.043135, 4             ; 3 uses
  store i64 %i.bv, ptr %i.p, align 8, !tbaa !104
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.p, i64 %4, i1 false), !tbaa !104
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNSt6vectorIxSaIxEED2Ev.exit.loopexit201.unr-lcssa, label %.preheader, !llvm.loop !100

.split139.us.invoke:                              ; preds = %_ZSt7tolowerIcET_S0_RKSt6locale.exit.us, %bb.e
  invoke void @_ZSt16__throw_bad_castv() #23
          to label %.split139.us.cont unwind label %.loopexit.split-lp

.split139.us.cont:                                ; preds = %.split139.us.invoke
  unreachable

.loopexit.split-lp:                               ; preds = %.split139.us.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit126.split.us
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.us, %.loopexit126.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.idx = shl nuw nsw i64 %i.k, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %.idx) #22
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit80

_ZNSt6vectorIxSaIxEED2Ev.exit80:                  ; preds = %.thread117, %bb.g
  %.pn124 = phi { ptr, i32 } [ %i.bk, %.thread117 ], [ %lpad.phi, %bb.g ]
  %.idx199 = shl nuw nsw i64 %i.k, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %.idx199) #22
  resume { ptr, i32 } %.pn124

_ZNSt6vectorIxSaIxEED2Ev.exit68:                  ; preds = %bb.f, %_ZNSt6vectorIxSaIxEED2Ev.exit, %.thread, %bb.c
  %.041.in = phi i64 [ %i.b, %.thread ], [ %i.d, %bb.c ], [ %i.bp, %_ZNSt6vectorIxSaIxEED2Ev.exit ], [ %i.bp, %bb.f ]
  %.041 = sitofp i64 %.041.in to double
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZNSt6vectorIxSaIxEED2Ev.exit68
  %.1 = phi double [ %.041, %_ZNSt6vectorIxSaIxEED2Ev.exit68 ], [ 0.000000e+00, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ 0.000000e+00, %bb.b ]
  ret double %.1
}

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi7Options11suggestionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEx(ptr dead_on_unwind noalias writable sret(%"class.std::vector.11") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i64 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::vector.16", align 8    ; 8 uses
  %5 = alloca %"struct.std::pair.21", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store double +inf, ptr %5, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !30
  store i8 0, ptr %i.c, align 8, !tbaa !37
  %i.e = icmp ugt i64 %3, 230584300921369395
  br i1 %i.e, label %bb.a, label %_ZNSt6vectorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i

bb.a:                                             ; preds = %._crit_edge.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #23
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.a
  unreachable

_ZNSt6vectorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i: ; preds = %._crit_edge.i.i.i
  %.not.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEC2EmRKS8_.exit.i, label %_ZNSt15__new_allocatorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i
  %i.f = mul nuw nsw i64 %3, 40
  %i.g = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25
          to label %_ZNSt12_Vector_baseISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEC2EmRKS8_.exit.i unwind label %bb.h

_ZNSt12_Vector_baseISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEC2EmRKS8_.exit.i: ; preds = %_ZNSt15__new_allocatorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i
  %.pr.i = phi ptr [ null, %_ZNSt6vectorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i ], [ %i.g, %_ZNSt15__new_allocatorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 11 uses
  store ptr %.pr.i, ptr %4, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %.pr.i, i64 %3
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !70
  %i.j = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmS7_ET_S9_T0_RKT1_(ptr noundef %.pr.i, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.d unwind label %bb.b       ; 5 uses

bb.b:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEC2EmRKS8_.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.idx = mul nuw nsw i64 %3, 40
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %.idx) #22
  br label %.body

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEC2EmRKS8_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.j, ptr %i.l, align 8, !tbaa !71
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.c
  br i1 %i.n, label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.c, align 8, !tbaa !37
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #22
  br label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  invoke void @_ZNK6casadi7Options12best_matchesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISt4pairIdS6_ESaISB_EE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_less_iterEEvT_SH_T0_(ptr %.pr.i, ptr %i.j)
          to label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit unwind label %bb.i

_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit: ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %3)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit
  %.not32 = icmp eq ptr %.pr.i, %i.j
  br i1 %.not32, label %_ZSt8_DestroyIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.k

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZSt8_DestroyISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i ], [ %.pr.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !37
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #22
  br label %_ZSt8_DestroyISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.y, %i.j
  br i1 %.not.i.i.i19, label %_ZSt8_DestroyIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i, %bb.f
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i
  %.idx45 = mul nuw nsw i64 %3, 40
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %.idx45) #22
  br label %_ZNSt6vectorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.k, %bb.c ], [ %i.k, %bb.b ]
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.c
  br i1 %i.ab, label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21: ; preds = %.body
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !37
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #22
  br label %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit23

_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit23: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.t

bb.i:                                             ; preds = %bb.e, %_ZNSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.j:                                             ; preds = %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.k:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.sroa.028.033 = phi ptr [ %.pr.i, %.lr.ph ], [ %i.bb, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 4 uses
end_hunk_0
