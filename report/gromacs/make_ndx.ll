Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/make_ndx?download=true
inline.NumInlined: 812
inline.NumDeleted: 371
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@fgets

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZL9parse_intPPcPi(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #15 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !29    ; 2 uses
  %i.c = icmp eq i8 %i.b, 32
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.d = phi ptr [ %i.e, %.lr.ph.i ], [ %i.a, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !21
  %i.f = load i8, ptr %i.e, align 1, !tbaa !29    ; 2 uses
  %i.g = icmp eq i8 %i.f, 32
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %i.h = phi i8 [ %i.b, %bb.a ], [ %i.f, %.lr.ph.i ]
  %i.i = phi ptr [ %i.a, %bb.a ], [ %i.e, %.lr.ph.i ] ; 2 uses
  %i.j = sext i8 %i.h to i32
  %isdigittmp.i = add nsw i32 %i.j, -48           ; 3 uses
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %._crit_edge.i
  store i32 %isdigittmp.i, ptr %1, align 4, !tbaa !15
  %storemerge29.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  store ptr %storemerge29.i, ptr %0, align 8, !tbaa !21
  %i.k = load i8, ptr %storemerge29.i, align 1, !tbaa !29 ; 2 uses
  %i.l = sext i8 %i.k to i32                      ; 3 uses
  %isdigittmp2130.i = add nsw i32 %i.l, -48
  %isdigit2231.i = icmp ult i32 %isdigittmp2130.i, 10
  br i1 %isdigit2231.i, label %.lr.ph34.i, label %._crit_edge35.i

.lr.ph34.i:                                       ; preds = %.preheader.i, %.lr.ph34.i
  %i.m = phi i32 [ %i.q, %.lr.ph34.i ], [ %i.l, %.preheader.i ]
  %storemerge33.i = phi ptr [ %storemerge.i, %.lr.ph34.i ], [ %storemerge29.i, %.preheader.i ] ; 2 uses
  %storemerge2432.i = phi i32 [ %storemerge24.i, %.lr.ph34.i ], [ %isdigittmp.i, %.preheader.i ]
  %i.n = mul nsw i32 %storemerge2432.i, 10
  %i.o = add nsw i32 %i.m, -48
  %storemerge24.i = add i32 %i.o, %i.n            ; 2 uses
  store i32 %storemerge24.i, ptr %1, align 4, !tbaa !15
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge33.i, i64 1 ; 3 uses
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !21
  %i.p = load i8, ptr %storemerge.i, align 1, !tbaa !29 ; 2 uses
  %i.q = sext i8 %i.p to i32                      ; 3 uses
  %isdigittmp21.i = add nsw i32 %i.q, -48
  %isdigit22.i = icmp ult i32 %isdigittmp21.i, 10
  br i1 %isdigit22.i, label %.lr.ph34.i, label %._crit_edge35.i, !llvm.loop !2

._crit_edge35.i:                                  ; preds = %.lr.ph34.i, %.preheader.i
  %i.r = phi ptr [ %i.i, %.preheader.i ], [ %storemerge33.i, %.lr.ph34.i ]
  %.lcssa25.i = phi i8 [ %i.k, %.preheader.i ], [ %i.p, %.lr.ph34.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.l, %.preheader.i ], [ %i.q, %.lr.ph34.i ]
  %i.s = tail call i32 @isalpha(i32 noundef %.lcssa.i) #30
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge35.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 2 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !21
  %.pre.i = load i8, ptr %i.t, align 1, !tbaa !29
  %i.u = sext i8 %.pre.i to i32
  %i.v = tail call i32 @isalnum(i32 noundef %i.u) #30
  %.not23.i = icmp eq i32 %i.v, 0
  br i1 %.not23.i, label %_ZL14parse_int_charPPcPiPh.exit, label %bb.c

.thread:                                          ; preds = %._crit_edge35.i
  %i.w = sext i8 %.lcssa25.i to i32
  %i.x = tail call i32 @isalnum(i32 noundef %i.w) #30
  %.not23.i17 = icmp eq i32 %i.x, 0
  br i1 %.not23.i17, label %_ZL14parse_int_charPPcPiPh.exit.thread, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  store ptr %i.a, ptr %0, align 8, !tbaa !21
  br label %_ZL14parse_int_charPPcPiPh.exit.thread

bb.d:                                             ; preds = %._crit_edge.i
  store i32 -92637, ptr %1, align 4, !tbaa !15
  br label %_ZL14parse_int_charPPcPiPh.exit.thread

_ZL14parse_int_charPPcPiPh.exit:                  ; preds = %bb.b
  %.not = icmp eq i8 %.lcssa25.i, 32
  br i1 %.not, label %_ZL14parse_int_charPPcPiPh.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZL14parse_int_charPPcPiPh.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !21
  br label %_ZL14parse_int_charPPcPiPh.exit.thread

_ZL14parse_int_charPPcPiPh.exit.thread:           ; preds = %.thread, %bb.d, %bb.c, %bb.e, %_ZL14parse_int_charPPcPiPh.exit
  %.0 = phi i1 [ false, %bb.e ], [ true, %_ZL14parse_int_charPPcPiPh.exit ], [ false, %bb.c ], [ false, %bb.d ], [ true, %.thread ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL12remove_groupiiPSt6vectorI10IndexGroupSaIS0_EE(i32 noundef %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not20 = icmp slt i32 %1, %0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = icmp slt i32 %0, 0
  %i.b = zext nneg i32 %0 to i64                  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = add i32 %1, 1
  %i.e = sub i32 %i.d, %0                         ; 2 uses
  br i1 %i.a, label %_ZNSt6vectorI10IndexGroupSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit.us, label %.lr.ph.split

_ZNSt6vectorI10IndexGroupSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit.us: ; preds = %.lr.ph, %_ZNSt6vectorI10IndexGroupSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit.us
  %.021.us = phi i32 [ %i.h, %_ZNSt6vectorI10IndexGroupSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = add nsw i32 %.021.us, %0
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.112, i32 noundef %i.f) ; 0 uses
  %i.h = add nuw i32 %.021.us, 1                  ; 2 uses
  %exitcond23.not = icmp eq i32 %i.h, %i.e
  br i1 %exitcond23.not, label %._crit_edge, label %_ZNSt6vectorI10IndexGroupSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit.us, !llvm.loop !144

._crit_edge:                                      ; preds = %_ZNSt6vectorI10IndexGroupSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit, %_ZNSt6vectorI10IndexGroupSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit.us, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNSt6vectorI10IndexGroupSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit
  %.021 = phi i32 [ %i.am, %_ZNSt6vectorI10IndexGroupSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.j = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 56
  %.not17 = icmp sgt i64 %i.n, %i.b
  %i.o = add nuw nsw i32 %.021, %0                ; 2 uses
  br i1 %.not17, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.112, i32 noundef %i.o) ; 0 uses
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit

bb.c:                                             ; preds = %.lr.ph.split
  %i.q = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %i.b
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.113, i32 noundef %i.o, ptr noundef %i.r) ; 0 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw [56 x i8], ptr %i.t, i64 %i.b ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !40   ; 3 uses
  %.not.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = tail call noundef ptr @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIP10IndexGroupS4_EET0_T_S6_S5_(ptr noundef nonnull %i.v, ptr noundef %i.w, ptr noundef %i.u) ; 0 uses
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = phi ptr [ %.pre.i.i, %bb.d ], [ %i.w, %bb.c ] ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -56 ; 2 uses
  store ptr %i.z, ptr %i.c, align 8, !tbaa !43
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i:              ; preds = %bb.f, %bb.e
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !28  ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.y, i64 -40 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt6vectorI10IndexGroupSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !29
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #29
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit

_ZNSt6vectorI10IndexGroupSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.b
  %i.am = add nuw i32 %.021, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.am, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !144
}

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL11split_groupPK7t_atomsiPSt6vectorI10IndexGroupSaIS3_EEb(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr noundef nonnull %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [4096 x i8], align 16             ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %struct.IndexGroup, align 8         ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !69
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !56   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.j, ptr %i.b, align 8, !tbaa !70
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !28
  %i.m = load i64, ptr %i.b, align 8, !tbaa !70
  store i64 %i.m, ptr %i.g, align 8, !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.g, %bb.a ] ; 2 uses
  switch i64 %i.j, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !29
  store i8 %i.o, ptr %i.n, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.p = load i64, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !56
  %i.r = load ptr, ptr %4, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.t = load ptr, ptr %4, align 8, !tbaa !28
  %i.u = select i1 %3, ptr @.str.126, ptr @.str.127
  %i.v = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, i32 noundef %1, ptr noundef %i.t, ptr noundef nonnull %i.u) ; 0 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.w, i64 %i.d ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55 ; 2 uses
  %.not4849 = icmp eq ptr %i.z, %i.ab
  br i1 %.not4849, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.al = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.g
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge
  %i.an = load i64, ptr %i.g, align 8, !tbaa !29
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.02951 = phi i32 [ -1, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.045.050 = phi ptr [ %i.z, %.lr.ph ], [ %i.dy, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.ap = load i32, ptr %.sroa.045.050, align 4, !tbaa !15 ; 5 uses
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !57 ; 2 uses
  %i.ar = sext i32 %i.ap to i64                   ; 2 uses
  %i.as = getelementptr inbounds [36 x i8], ptr %i.aq, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i32, ptr %i.at, align 4, !tbaa !62 ; 2 uses
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !63
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [32 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !66
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !21
  %i.ba = icmp eq i32 %.02951, -1
  %or.cond = or i1 %3, %i.ba
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = sext i32 %.02951 to i64
  %i.bc = getelementptr inbounds [36 x i8], ptr %i.aq, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !62
  %.not = icmp eq i32 %i.be, %i.au
  br i1 %.not, label %bb.t, label %bb.h

bb.f:                                             ; preds = %bb.d
  br i1 %3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %6 = load ptr, ptr %4, align 8, !tbaa !28
  %i.bf = load ptr, ptr %i.ae, align 8, !tbaa !67
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.ar
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !21
  %i.bj = add nsw i32 %i.ap, 1
  %i.bk = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.128, ptr noundef %6, ptr noundef %i.bi, i32 noundef %i.bj) #26 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.f
  %7 = load ptr, ptr %4, align 8, !tbaa !28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !80
  %i.bn = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.128, ptr noundef %7, ptr noundef %i.az, i32 noundef %i.bm) #26 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.af, ptr %5, align 8, !tbaa !69
  %i.bo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.bo, ptr %i.a, align 8, !tbaa !70
  %i.bp = icmp ugt i64 %i.bo, 15
  br i1 %i.bp, label %.noexc.i35, label %._crit_edge.i.i34

.noexc.i35:                                       ; preds = %bb.i
  %i.bq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.q     ; 2 uses

.noexc:                                           ; preds = %.noexc.i35
  store ptr %i.bq, ptr %5, align 8, !tbaa !28
  %i.br = load i64, ptr %i.a, align 8, !tbaa !70
  store i64 %i.br, ptr %i.af, align 8, !tbaa !29
  br label %._crit_edge.i.i34

._crit_edge.i.i34:                                ; preds = %.noexc, %bb.i
  %i.bs = phi ptr [ %i.bq, %.noexc ], [ %i.af, %bb.i ] ; 2 uses
  switch i64 %i.bo, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i34
  %i.bt = load i8, ptr %i.c, align 16, !tbaa !29
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !29
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i34
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr nonnull align 16 %i.c, i64 %i.bo, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i34
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  store i64 %i.bu, ptr %i.ag, align 8, !tbaa !56
  %i.bv = load ptr, ptr %5, align 8, !tbaa !28
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  store i8 0, ptr %i.bw, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.bx = load ptr, ptr %i.ai, align 8, !tbaa !43 ; 8 uses
  %i.by = load ptr, ptr %i.aj, align 8, !tbaa !49
  %.not.i.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 3 uses
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !69
  %i.ca = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.af
  br i1 %i.cb, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.cc = load i64, ptr %i.ag, align 8, !tbaa !56 ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.cd)
  %i.ce = add nuw nsw i64 %i.cc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  store ptr %i.ca, ptr %i.bx, align 8, !tbaa !28
  %i.cf = load i64, ptr %i.af, align 8, !tbaa !29
  store i64 %i.cf, ptr %i.bz, align 8, !tbaa !29
  %.pre = load i64, ptr %i.ag, align 8, !tbaa !56
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit.thread

_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit.thread: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.cg = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.cc, %bb.n ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !56
  store ptr %i.af, ptr %5, align 8, !tbaa !28
  store i64 0, ptr %i.ag, align 8, !tbaa !56
  store i8 0, ptr %i.af, align 8, !tbaa !29
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cj = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !50
  store <2 x ptr> %i.cj, ptr %i.ci, align 8, !tbaa !50
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.cl = load ptr, ptr %i.ak, align 8, !tbaa !47
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.cm = load ptr, ptr %i.ai, align 8, !tbaa !43
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  store ptr %i.cn, ptr %i.ai, align 8, !tbaa !43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

bb.o:                                             ; preds = %bb.l
  invoke void @_ZNSt6vectorI10IndexGroupSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.bx, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit unwind label %bb.r

_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit: ; preds = %bb.o
  %.pr = load ptr, ptr %i.ah, align 8, !tbaa !46  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit
  %i.co = load ptr, ptr %i.ak, align 8, !tbaa !47
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %.pr to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.cr) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit.thread, %bb.p, %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit
  %i.cs = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.af
  br i1 %i.ct, label %_ZN10IndexGroupD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.cu = load i64, ptr %i.af, align 8, !tbaa !29
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #29
  br label %_ZN10IndexGroupD2Ev.exit

_ZN10IndexGroupD2Ev.exit:                         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.t

bb.q:                                             ; preds = %.noexc.i35
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10IndexGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #26
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.r ], [ %i.cw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.loopexit.split-lp

bb.t:                                             ; preds = %_ZN10IndexGroupD2Ev.exit, %bb.e
  %i.cy = load ptr, ptr %i.ai, align 8, !tbaa !40 ; 3 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -24 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -16 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !55 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.db, %i.dd
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.ap, ptr %i.db, align 4, !tbaa !15
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store ptr %i.de, ptr %i.da, align 8, !tbaa !55
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.v:                                             ; preds = %bb.t
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !46 ; 4 uses
  %i.dg = ptrtoint ptr %i.db to i64
  %i.dh = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.di = sub i64 %i.dg, %i.dh                    ; 5 uses
  %i.dj = icmp eq i64 %i.di, 9223372036854775804
  br i1 %i.dj, label %bb.w, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.124) #27
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc37:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.dk = ashr exact i64 %i.di, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dk, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i.i, %i.dk ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dk
  %i.dn = call i64 @llvm.umin.i64(i64 %i.dl, i64 2305843009213693951)
  %i.do = select i1 %i.dm, i64 2305843009213693951, i64 %i.dn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.do, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dp = shl nuw nsw i64 %i.do, 2
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #31
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc38:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %i.di ; 2 uses
  store i32 %i.ap, ptr %i.dr, align 4, !tbaa !15
  %i.ds = icmp sgt i64 %i.di, 0
  br i1 %i.ds, label %bb.x, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.x:                                             ; preds = %.noexc38
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dq, ptr align 4 %i.df, i64 %i.di, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.x, %.noexc38
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %.not.i17.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.du = load ptr, ptr %i.dc, align 8, !tbaa !47
end_hunk_0
