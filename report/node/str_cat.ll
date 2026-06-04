inline.NumInlined: 206
inline.NumDeleted: 50
begin_hunk_0_@_ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_S2_:bb.a
  store i64 %i.g, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.g
  store i8 0, ptr %i.p, align 1
  %.pre = load ptr, ptr %0, align 8
  %.val17.pre = load i64, ptr %1, align 8
  br label %_ZN4absl16strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit

_ZN4absl16strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit: ; preds = %bb.a, %.sink.split.i.i.i.i
  %.val17 = phi i64 [ %i.c, %bb.a ], [ %.val17.pre, %.sink.split.i.i.i.i ] ; 4 uses
  %i.q = phi ptr [ %i.a, %bb.a ], [ %.pre, %.sink.split.i.i.i.i ] ; 2 uses
  %.not.i = icmp eq i64 %.val17, 0
  br i1 %.not.i, label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4absl16strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val18 = load ptr, ptr %i.r, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr readonly align 1 %.val18, i64 %.val17, i1 false)
  br label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit

_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit: ; preds = %_ZN4absl16strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.val17 ; 2 uses
  %.val15 = load i64, ptr %2, align 8             ; 4 uses
  %.not.i19 = icmp eq i64 %.val15, 0
  br i1 %.not.i19, label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit20, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val16 = load ptr, ptr %i.t, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr readonly align 1 %.val16, i64 %.val15, i1 false)
  br label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit20

_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit20: ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit, %bb.h
  %.val = load i64, ptr %3, align 8               ; 3 uses
  %.not.i21 = icmp eq i64 %.val, 0
  br i1 %.not.i21, label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit22, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit20
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %.val15
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val14 = load ptr, ptr %i.v, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr readonly align 1 %.val14, i64 %.val, i1 false)
  br label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit22

_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit22: ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit20, %bb.i
  %i.w = load i64, ptr %i.b, align 8
  %i.x = add nuw nsw i64 %.val15, %.val17
  %i.y = add nuw nsw i64 %i.x, %.val
  %i.z = icmp samesign eq i64 %i.y, %i.w
  br i1 %i.z, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit22
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 96, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_S2_) #9
  unreachable

bb.k:                                             ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_S2_S2_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = load i64, ptr %2, align 8
  %i.e = load i64, ptr %3, align 8
  %i.f = load i64, ptr %4, align 8
  %i.g = add i64 %i.d, %i.c
  %i.h = add i64 %i.g, %i.e
  %i.i = add i64 %i.h, %i.f                       ; 10 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %_ZN4absl16strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #9
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.i, 15
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.k = icmp samesign ult i64 %i.i, 30
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.l = add nuw i64 %i.i, 1                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #9
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.n = phi i64 [ %i.l, %bb.d ], [ 31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %.0.i31 = phi i64 [ %i.i, %bb.d ], [ 30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #10 ; 2 uses
  store ptr %i.o, ptr %0, align 8
  store i64 %.0.i31, ptr %i.a, align 8
  br label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %cond.i.i.i.i.i.i = icmp eq i64 %i.i, 1
  br i1 %cond.i.i.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i
  %i.p = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread ], [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i, %bb.f
  %i.q = phi ptr [ %i.p, %bb.f ], [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i ]
  store i64 %i.i, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.i
  store i8 0, ptr %i.r, align 1
  %.pre = load ptr, ptr %0, align 8
  %.val22.pre = load i64, ptr %1, align 8
  br label %_ZN4absl16strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit

_ZN4absl16strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit: ; preds = %bb.a, %.sink.split.i.i.i.i
  %.val22 = phi i64 [ %i.c, %bb.a ], [ %.val22.pre, %.sink.split.i.i.i.i ] ; 4 uses
  %i.s = phi ptr [ %i.a, %bb.a ], [ %.pre, %.sink.split.i.i.i.i ] ; 2 uses
  %.not.i = icmp eq i64 %.val22, 0
  br i1 %.not.i, label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4absl16strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val23 = load ptr, ptr %i.t, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr readonly align 1 %.val23, i64 %.val22, i1 false)
  br label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit

_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit: ; preds = %_ZN4absl16strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %.val22 ; 2 uses
  %.val20 = load i64, ptr %2, align 8             ; 4 uses
  %.not.i24 = icmp eq i64 %.val20, 0
  br i1 %.not.i24, label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit25, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val21 = load ptr, ptr %i.v, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr readonly align 1 %.val21, i64 %.val20, i1 false)
  br label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit25

_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit25: ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %.val20 ; 2 uses
  %.val18 = load i64, ptr %3, align 8             ; 4 uses
  %.not.i26 = icmp eq i64 %.val18, 0
  br i1 %.not.i26, label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit27, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit25
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val19 = load ptr, ptr %i.x, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr readonly align 1 %.val19, i64 %.val18, i1 false)
  br label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit27

_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit27: ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit25, %bb.i
  %.val = load i64, ptr %4, align 8               ; 3 uses
  %.not.i28 = icmp eq i64 %.val, 0
  br i1 %.not.i28, label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit29, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit27
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %.val18
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val17 = load ptr, ptr %i.z, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr readonly align 1 %.val17, i64 %.val, i1 false)
  br label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit29

_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit29: ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit27, %bb.j
  %i.aa = load i64, ptr %i.b, align 8
  %i.ab = add nuw nsw i64 %.val20, %.val22
  %i.ac = add nuw nsw i64 %i.ab, %.val18
  %i.ad = add nuw nsw i64 %i.ac, %.val
  %i.ae = icmp samesign eq i64 %i.ad, %i.aa
  br i1 %i.ae, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit29
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_S2_S2_) #9
  unreachable

bb.l:                                             ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl16strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr readonly captures(address) %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %.idx = shl i64 %2, 4                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %.not38 = icmp eq i64 %2, 0
  br i1 %.not38, label %._crit_edge45, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add i64 %.idx, -16                       ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 64
  br i1 %min.iters.check, label %.lr.ph.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %3 = lshr exact i64 %i.d, 4
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %n.mod.vf = and i64 %4, 3                       ; 2 uses
  %5 = icmp eq i64 %n.mod.vf, 0
  %6 = select i1 %5, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %4, %6                     ; 2 uses
  %7 = shl i64 %n.vec, 4
  %8 = getelementptr i8, ptr %1, i64 %7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %12, %vector.body ]
  %vec.phi50 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %13, %vector.body ]
  %9 = shl i64 %index, 4                          ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %9
  %i.e = getelementptr i8, ptr %1, i64 %9
  %next.gep51 = getelementptr i8, ptr %i.e, i64 32
  %10 = load <3 x i64>, ptr %next.gep, align 8
  %strided.vec = shufflevector <3 x i64> %10, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %11 = load <3 x i64>, ptr %next.gep51, align 8
  %strided.vec53 = shufflevector <3 x i64> %11, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %12 = add <2 x i64> %strided.vec, %vec.phi      ; 2 uses
  %13 = add <2 x i64> %strided.vec53, %vec.phi50  ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !6

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %13, %12
  %14 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph.preheader54

.lr.ph.preheader54:                               ; preds = %.lr.ph.preheader, %middle.block
  %.040.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %14, %middle.block ]
  %.02439.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %8, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader54, %.lr.ph
  %.040.a = phi i64 [ %i.g, %.lr.ph ], [ %.040.ph, %.lr.ph.preheader54 ]
  %.02439.a = phi ptr [ %i.h, %.lr.ph ], [ %.02439.ph, %.lr.ph.preheader54 ] ; 2 uses
  %.sroa.029.0.copyload.a = load i64, ptr %.02439.a, align 8
  %i.g = add i64 %.sroa.029.0.copyload.a, %.040.a ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02439.a, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.h, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph
  %.not37 = icmp eq i64 %i.g, 0
  br i1 %.not37, label %.lr.ph44.preheader, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #9
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.g, 15
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef null, i64 noundef %i.g)
  %.pre.i.i.i.i = load ptr, ptr %0, align 8
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %cond.i.i.i.i.i.i = icmp eq i64 %i.g, 1
  br i1 %cond.i.i.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i
  %i.j = phi ptr [ %.pre.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.thread ], [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.j, i8 0, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %0, align 8
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i, %bb.d
  %i.k = phi ptr [ %.pre, %bb.d ], [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i ]
  store i64 %i.g, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  store i8 0, ptr %i.l, align 1
  %.pre47 = load ptr, ptr %0, align 8
  br label %.lr.ph44.preheader

.lr.ph44.preheader:                               ; preds = %._crit_edge, %.sink.split.i.i.i.i
  %.ph = phi ptr [ %.pre47, %.sink.split.i.i.i.i ], [ %i.a, %._crit_edge ] ; 6 uses
  %i.m = and i64 %i.d, 16
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph44.prol, label %.lr.ph44.prol.loopexit

.lr.ph44.prol:                                    ; preds = %.lr.ph44.preheader
  %.sroa.0.0.copyload.prol = load i64, ptr %1, align 8 ; 3 uses
  %.not28.prol = icmp eq i64 %.sroa.0.0.copyload.prol, 0
  br i1 %.not28.prol, label %.lr.ph44.prol.loopexit.unr-lcssa, label %bb.e

bb.e:                                             ; preds = %.lr.ph44.prol
  %.sroa.4.0..023.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.prol = load ptr, ptr %.sroa.4.0..023.sroa_idx.prol, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.ph, ptr align 1 %.sroa.4.0.copyload.prol, i64 %.sroa.0.0.copyload.prol, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.ph, i64 %.sroa.0.0.copyload.prol
  br label %.lr.ph44.prol.loopexit.unr-lcssa

.lr.ph44.prol.loopexit.unr-lcssa:                 ; preds = %bb.e, %.lr.ph44.prol
  %.1.prol = phi ptr [ %i.n, %bb.e ], [ %.ph, %.lr.ph44.prol ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph44.prol.loopexit

.lr.ph44.prol.loopexit:                           ; preds = %.lr.ph44.prol.loopexit.unr-lcssa, %.lr.ph44.preheader
  %.1.lcssa.unr = phi ptr [ poison, %.lr.ph44.preheader ], [ %.1.prol, %.lr.ph44.prol.loopexit.unr-lcssa ]
  %.02343.unr = phi ptr [ %1, %.lr.ph44.preheader ], [ %i.o, %.lr.ph44.prol.loopexit.unr-lcssa ]
  %.02542.unr = phi ptr [ %.ph, %.lr.ph44.preheader ], [ %.1.prol, %.lr.ph44.prol.loopexit.unr-lcssa ]
  %i.p = icmp eq i64 %i.d, 0
  br i1 %i.p, label %._crit_edge45, label %.lr.ph44

._crit_edge45:                                    ; preds = %.lr.ph44.prol.loopexit, %bb.h, %bb.a
  %i.q = phi ptr [ %i.a, %bb.a ], [ %.ph, %bb.h ], [ %.ph, %.lr.ph44.prol.loopexit ]
  %.025.lcssa = phi ptr [ %i.a, %bb.a ], [ %.1.lcssa.unr, %.lr.ph44.prol.loopexit ], [ %.1.1, %bb.h ]
  %i.r = load i64, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = icmp eq ptr %.025.lcssa, %i.s
  br i1 %i.t, label %bb.j, label %bb.i

.lr.ph44:                                         ; preds = %.lr.ph44.prol.loopexit, %bb.h
  %.02343 = phi ptr [ %i.x, %bb.h ], [ %.02343.unr, %.lr.ph44.prol.loopexit ] ; 5 uses
  %.02542 = phi ptr [ %.1.1, %bb.h ], [ %.02542.unr, %.lr.ph44.prol.loopexit ] ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %.02343, align 8 ; 3 uses
  %.not28 = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %.not28, label %.lr.ph44.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph44
  %.sroa.4.0..023.sroa_idx = getelementptr inbounds nuw i8, ptr %.02343, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..023.sroa_idx, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02542, ptr align 1 %.sroa.4.0.copyload, i64 %.sroa.0.0.copyload, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.02542, i64 %.sroa.0.0.copyload
  br label %.lr.ph44.1

.lr.ph44.1:                                       ; preds = %bb.f, %.lr.ph44
  %.1 = phi ptr [ %i.u, %bb.f ], [ %.02542, %.lr.ph44 ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.02343, i64 16
  %.sroa.0.0.copyload.1 = load i64, ptr %i.v, align 8 ; 3 uses
  %.not28.1 = icmp eq i64 %.sroa.0.0.copyload.1, 0
  br i1 %.not28.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph44.1
  %.sroa.4.0..023.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.02343, i64 24
  %.sroa.4.0.copyload.1 = load ptr, ptr %.sroa.4.0..023.sroa_idx.1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1, ptr align 1 %.sroa.4.0.copyload.1, i64 %.sroa.0.0.copyload.1, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.1, i64 %.sroa.0.0.copyload.1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph44.1
  %.1.1 = phi ptr [ %i.w, %bb.g ], [ %.1, %.lr.ph44.1 ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02343, i64 32 ; 2 uses
  %.not27.1 = icmp eq ptr %i.x, %i.c
  br i1 %.not27.1, label %._crit_edge45, label %.lr.ph44

bb.i:                                             ; preds = %._crit_edge45
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 148, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl16strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE) #9
  unreachable

bb.j:                                             ; preds = %._crit_edge45
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl16strings_internal12AppendPiecesEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt16initializer_listISt17basic_string_viewIcS4_EE(ptr noundef %0, ptr readonly captures(address) %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 7 uses
  %.idx = shl i64 %2, 4                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %.not43 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge
  %i.d = sub i64 9223372036854775807, %i.b
  %i.e = icmp ult i64 %i.d, %i.ad
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #9
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.a, %._crit_edge
  %.0.lcssa54 = phi i64 [ %i.ad, %._crit_edge ], [ 0, %bb.a ] ; 5 uses
  %i.f = add i64 %.0.lcssa54, %i.b                ; 3 uses
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.k = load i64, ptr %i.h, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not.i.i.i.i = icmp ugt i64 %i.f, %i.l
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef null, i64 noundef %.0.lcssa54)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not30.i.i.i.i = icmp eq i64 %.0.lcssa54, 0
  br i1 %.not30.i.i.i.i, label %_ZN4absl12_GLOBAL__N_137STLStringAppendUninitializedAmortizedEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %.0.lcssa54, 1
  br i1 %cond.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.n, align 1
  br label %_ZN4absl12_GLOBAL__N_137STLStringAppendUninitializedAmortizedEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 0, i64 %.0.lcssa54, i1 false)
  br label %_ZN4absl12_GLOBAL__N_137STLStringAppendUninitializedAmortizedEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit

_ZN4absl12_GLOBAL__N_137STLStringAppendUninitializedAmortizedEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i, %bb.f, %bb.g
  store i64 %i.f, ptr %i.a, align 8
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store i8 0, ptr %i.p, align 1
  %i.q = load ptr, ptr %0, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.b ; 5 uses
  br i1 %.not43, label %._crit_edge50, label %.lr.ph49.preheader

.lr.ph49.preheader:                               ; preds = %_ZN4absl12_GLOBAL__N_137STLStringAppendUninitializedAmortizedEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit
  %i.s = add i64 %.idx, -16                       ; 2 uses
  %i.t = and i64 %i.s, 16
  %lcmp.mod.not.not = icmp eq i64 %i.t, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph49.prol, label %.lr.ph49.prol.loopexit

.lr.ph49.prol:                                    ; preds = %.lr.ph49.preheader
  %.sroa.0.0.copyload.prol = load i64, ptr %1, align 8 ; 3 uses
  %.not33.prol = icmp eq i64 %.sroa.0.0.copyload.prol, 0
  br i1 %.not33.prol, label %.lr.ph49.prol.loopexit.unr-lcssa, label %bb.h

bb.h:                                             ; preds = %.lr.ph49.prol
  %.sroa.4.0..029.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.prol = load ptr, ptr %.sroa.4.0..029.sroa_idx.prol, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %.sroa.4.0.copyload.prol, i64 %.sroa.0.0.copyload.prol, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.copyload.prol
  br label %.lr.ph49.prol.loopexit.unr-lcssa

.lr.ph49.prol.loopexit.unr-lcssa:                 ; preds = %bb.h, %.lr.ph49.prol
  %.1.prol = phi ptr [ %i.u, %bb.h ], [ %i.r, %.lr.ph49.prol ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph49.prol.loopexit

.lr.ph49.prol.loopexit:                           ; preds = %.lr.ph49.prol.loopexit.unr-lcssa, %.lr.ph49.preheader
  %.1.lcssa.unr = phi ptr [ poison, %.lr.ph49.preheader ], [ %.1.prol, %.lr.ph49.prol.loopexit.unr-lcssa ]
  %.02948.unr = phi ptr [ %1, %.lr.ph49.preheader ], [ %i.v, %.lr.ph49.prol.loopexit.unr-lcssa ]
  %.03047.unr = phi ptr [ %i.r, %.lr.ph49.preheader ], [ %.1.prol, %.lr.ph49.prol.loopexit.unr-lcssa ]
  %i.w = icmp eq i64 %i.s, 0
  br i1 %i.w, label %._crit_edge50, label %.lr.ph49

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.045 = phi i64 [ %i.ad, %.critedge ], [ 0, %bb.a ]
  %.02844 = phi ptr [ %i.ae, %.critedge ], [ %1, %bb.a ] ; 3 uses
  %.sroa.034.0.copyload = load i64, ptr %.02844, align 8 ; 2 uses
  %i.x = icmp eq i64 %.sroa.034.0.copyload, 0
  br i1 %i.x, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %.sroa.5.0..028.sroa_idx = getelementptr inbounds nuw i8, ptr %.02844, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..028.sroa_idx, align 8
  %i.y = load ptr, ptr %0, align 8
  %i.z = ptrtoint ptr %.sroa.5.0.copyload to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
end_hunk_0
begin_hunk_1_@_ZN4absl9StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8AlphaNumES9_S9_S9_:bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %.critedge6

bb.h:                                             ; preds = %.critedge4
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load ptr, ptr %0, align 8
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  br i1 %i.ar, label %.critedge6, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 228, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl9StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8AlphaNumES9_S9_S9_) #9
  unreachable

.critedge6:                                       ; preds = %.critedge4..critedge6_crit_edge, %bb.h
  %i.as = phi i64 [ %.pre, %.critedge4..critedge6_crit_edge ], [ %i.aq, %bb.h ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = add i64 %i.l, %i.a
  %i.av = add i64 %i.au, %i.w
  %i.aw = add i64 %i.av, %i.ah                    ; 6 uses
  %i.ax = sub i64 9223372036854775807, %i.as
  %i.ay = icmp ult i64 %i.ax, %i.aw
  br i1 %i.ay, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.j:                                             ; preds = %.critedge6
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #9
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %.critedge6
  %i.az = add i64 %i.as, %i.aw                    ; 3 uses
  %i.ba = load ptr, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb                ; 2 uses
  br i1 %i.bc, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.bd = icmp ult i64 %i.as, 16
  tail call void @llvm.assume(i1 %i.bd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.be = load i64, ptr %i.bb, align 8
  %i.bf = select i1 %i.bc, i64 15, i64 %i.be
  %.not.i.i.i.i = icmp ugt i64 %i.az, %i.bf
  br i1 %.not.i.i.i.i, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.as, i64 noundef 0, ptr noundef null, i64 noundef %i.aw)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not30.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not30.i.i.i.i, label %_ZN4absl12_GLOBAL__N_137STLStringAppendUninitializedAmortizedEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  %i.bg = load ptr, ptr %0, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.as ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.aw, 1
  br i1 %cond.i.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.bh, align 1
  br label %_ZN4absl12_GLOBAL__N_137STLStringAppendUninitializedAmortizedEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bh, i8 0, i64 %i.aw, i1 false)
  br label %_ZN4absl12_GLOBAL__N_137STLStringAppendUninitializedAmortizedEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit

_ZN4absl12_GLOBAL__N_137STLStringAppendUninitializedAmortizedEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i, %bb.n, %bb.o
  store i64 %i.az, ptr %i.at, align 8
  %i.bi = load ptr, ptr %0, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.az
  store i8 0, ptr %i.bj, align 1
  %i.bk = load ptr, ptr %0, align 8               ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.as ; 2 uses
  %.val46 = load i64, ptr %1, align 8             ; 3 uses
  %.not.i = icmp eq i64 %.val46, 0
  br i1 %.not.i, label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4absl12_GLOBAL__N_137STLStringAppendUninitializedAmortizedEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val47 = load ptr, ptr %i.bm, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr readonly align 1 %.val47, i64 %.val46, i1 false)
  br label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit

_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit: ; preds = %_ZN4absl12_GLOBAL__N_137STLStringAppendUninitializedAmortizedEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit, %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.val46 ; 2 uses
  %.val44 = load i64, ptr %2, align 8             ; 3 uses
  %.not.i48 = icmp eq i64 %.val44, 0
  br i1 %.not.i48, label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit49, label %bb.q

bb.q:                                             ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val45 = load ptr, ptr %i.bo, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr readonly align 1 %.val45, i64 %.val44, i1 false)
  br label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit49

_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit49: ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit, %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.val44 ; 2 uses
  %.val42 = load i64, ptr %3, align 8             ; 3 uses
  %.not.i50 = icmp eq i64 %.val42, 0
  br i1 %.not.i50, label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit51, label %bb.r

bb.r:                                             ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit49
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val43 = load ptr, ptr %i.bq, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr readonly align 1 %.val43, i64 %.val42, i1 false)
  br label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit51

_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit51: ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit49, %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.val42 ; 2 uses
  %.val = load i64, ptr %4, align 8               ; 3 uses
  %.not.i52 = icmp eq i64 %.val, 0
  br i1 %.not.i52, label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit53, label %bb.s

bb.s:                                             ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit51
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val41 = load ptr, ptr %i.bs, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr readonly align 1 %.val41, i64 %.val, i1 false)
  br label %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit53

_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit53: ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit51, %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %.val
  %i.bu = load i64, ptr %i.at, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bu
  %i.bw = icmp eq ptr %i.bt, %i.bv
  br i1 %i.bw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit53
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 238, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl9StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8AlphaNumES9_S9_S9_) #9
  unreachable

bb.u:                                             ; preds = %_ZN4absl12_GLOBAL__N_16AppendEPcRKNS_8AlphaNumE.exit53
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #9
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !10

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #9
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #10 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1
  store i8 %i.x, ptr %i.w, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1
  store i8 %i.ac, ptr %i.z, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8
  store i64 %.0, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #8

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn nounwind }
attributes #10 = { builtin nounwind allocsize(0) }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!6 = distinct !{!6, !7, !8}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = distinct !{!9, !8, !7}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_1
