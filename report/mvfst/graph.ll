Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mvfst/original/graph?download=true
inline.NumInlined: 1288
inline.NumDeleted: 415
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN14DependencyScan20RecomputeOutputDirtyEPK4EdgePK4NodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS3_:bb.a
bb.ac:                                            ; preds = %bb.ab
  %i.dn = load i8, ptr @g_explaining, align 1, !tbaa !764, !range !746, !noundef !583
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.ad, label %.critedge64

bb.ad:                                            ; preds = %bb.ac
  %i.dp = load ptr, ptr @stderr, align 8, !tbaa !748
  %i.dq = load ptr, ptr %4, align 8, !tbaa !749
  %i.dr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dp, ptr noundef nonnull @.str.12, ptr noundef %i.dq) #23 ; 0 uses
  br label %.critedge64

.critedge64:                                      ; preds = %bb.h, %bb.g, %bb.q, %bb.p, %bb.y, %.critedge3, %bb.ab, %bb.r, %bb.ad, %bb.aa, %bb.x, %bb.z, %bb.ac, %bb.w, %bb.j, %bb.k, %bb.f, %bb.d, %bb.e
  %.247 = phi i1 [ true, %bb.d ], [ false, %bb.f ], [ true, %bb.j ], [ true, %bb.e ], [ true, %bb.w ], [ true, %bb.k ], [ false, %bb.r ], [ true, %bb.p ], [ true, %bb.q ], [ false, %bb.y ], [ false, %.critedge3 ], [ false, %bb.ab ], [ true, %bb.ad ], [ true, %bb.aa ], [ true, %bb.x ], [ true, %bb.z ], [ true, %bb.ac ], [ false, %bb.g ], [ false, %bb.h ]
  ret i1 %.247
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4Edge14GetBindingBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.EdgeEnv, align 8            ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !855
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV7EdgeEnv, i64 16), ptr %2, align 8, !tbaa !34, !noalias !855
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !noalias !855
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %0, ptr %i.b, align 8, !tbaa !777, !noalias !855
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 0, ptr %i.c, align 8, !tbaa !778, !noalias !855
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i8 0, ptr %i.d, align 4, !tbaa !779, !noalias !855
  call void @_ZN7EdgeEnv14LookupVariableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(45) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV7EdgeEnv, i64 16), ptr %2, align 8, !tbaa !34, !noalias !855
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !780, !noalias !855 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !781, !noalias !855 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !749 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.h) #22, !inline_history !782
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !780, !noalias !855
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i, %bb.a
  %i.l = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i.i, label %_ZNK4Edge10GetBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.l) #22, !inline_history !782
  br label %_ZNK4Edge10GetBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK4Edge10GetBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !855
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !762  ; 2 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !749    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNK4Edge10GetBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.r = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.r)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4Edge10GetBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @_ZdlPv(ptr noundef %i.o) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.s = icmp ne i64 %i.n, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i1 %i.s
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

declare noundef ptr @_ZN8BuildLog14LookupByOutputERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(97), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare noundef i64 @_ZN8BuildLog8LogEntry11HashCommandE11StringPiece(ptr, i64) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK12DyndepLoader11LoadDyndepsEP4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK14DependencyScan11LoadDyndepsEP4NodeP10DyndepFilePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = tail call noundef zeroext i1 @_ZNK12DyndepLoader11LoadDyndepsEP4NodeP10DyndepFilePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %1, ptr noundef %2, ptr noundef %3) #20
  ret i1 %i.b
}

declare noundef zeroext i1 @_ZNK12DyndepLoader11LoadDyndepsEP4NodeP10DyndepFilePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4Edge14AllInputsReadyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !723  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !723  ; 2 uses
  %.not78 = icmp eq ptr %i.b, %i.d
  br i1 %.not78, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.03.09 = phi ptr [ %i.k, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.03.09, align 8, !tbaa !715
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !737  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.i = load i8, ptr %i.h, align 8, !tbaa !761, !range !746, !noundef !583
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.03.09, i64 8 ; 2 uses
  %.not7 = icmp eq ptr %i.k, %i.d
  br i1 %.not7, label %._crit_edge, label %.lr.ph, !llvm.loop !856

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.not7.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.not7.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN7EdgeEnv14LookupVariableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !762  ; 2 uses
  %i.d = icmp eq i64 %i.c, 2                      ; 2 uses
  br i1 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread28

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !749    ; 2 uses
  %i.f = load i16, ptr %i.e, align 1
  %i.g = icmp ne i16 %i.f, 28265
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread33

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread28: ; preds = %bb.a
  switch i64 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread33 [
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread28
  %i.j = load ptr, ptr %2, align 8, !tbaa !749    ; 3 uses
  %i.k = load i64, ptr %i.j, align 1
  %i.l = xor i64 %i.k, 7596577948994334313
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %i.n = load i16, ptr %i.m, align 1
  %i.o = zext i16 %i.n to i64
  %i.p = xor i64 %i.o, 25966
  %i.q = or i64 %i.l, %i.p
  %i.r = icmp ne i64 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread33

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.u = phi ptr [ %i.j, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18 ], [ %i.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !777  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !734
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !733 ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !766
  %6 = zext i32 %i.ag to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 148
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !763
  %7 = zext i32 %i.ai to i64
  %8 = add nuw nsw i64 %7, %6
  %9 = sub nsw i64 %i.ae, %8
  %sext = shl i64 %9, 32
  %10 = ashr exact i64 %sext, 32
  br i1 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread31

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.aj = load i16, ptr %i.u, align 1
  %i.ak = icmp ne i16 %i.aj, 28265
  %i.al = zext i1 %i.ak to i32
  %bcmp.i19.fr = freeze i32 %i.al
  %i.am = icmp eq i32 %bcmp.i19.fr, 0
  %spec.select = select i1 %i.am, i8 32, i8 10
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread31

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread31: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.an = phi i8 [ 10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20 ]
  tail call void @_ZNK7EdgeEnv12MakePathListB5cxx11EPKPK4Nodemc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %1, ptr noundef %i.aa, i64 noundef %10, i8 noundef signext %i.an)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread28
  %i.ao = load ptr, ptr %2, align 8, !tbaa !749   ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 1
  %i.aq = xor i16 %i.ap, 30063
  %i.ar = getelementptr i8, ptr %i.ao, i64 2
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i16
  %i.au = xor i16 %i.at, 116
  %i.av = or i16 %i.aq, %i.au
  %i.aw = icmp ne i16 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread33

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !777 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !734
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !733 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = lshr exact i64 %i.bh, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 152
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !862
  %i.bl = trunc i64 %i.bi to i32
  %i.bm = sub i32 %i.bl, %i.bk
  %i.bn = sext i32 %i.bm to i64
  tail call void @_ZNK7EdgeEnv12MakePathListB5cxx11EPKPK4Nodemc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %1, ptr noundef nonnull %i.be, i64 noundef %i.bn, i8 noundef signext 32)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread33: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread28, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !779, !range !746, !noundef !583
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread33
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !863
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !863
  %i.bv = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIKS7_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.bs, ptr %i.bu, ptr nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !863
  %.not = icmp eq ptr %i.bv, %i.bw
  br i1 %.not, label %bb.g, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.bx, ptr %3, align 8, !tbaa !767
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.by, align 8, !tbaa !762
  store i8 0, ptr %i.bx, align 8, !tbaa !768
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.024.038 = phi ptr [ %i.bv, %.lr.ph ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.cb = load ptr, ptr %.sroa.024.038, align 8, !tbaa !749, !noalias !864
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.024.038, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !762, !noalias !864 ; 3 uses
  store ptr %i.bz, ptr %4, align 8, !tbaa !767, !alias.scope !865
  store i64 0, ptr %i.ca, align 8, !tbaa !762, !alias.scope !865
  store i8 0, ptr %i.bz, align 8, !tbaa !768, !alias.scope !865
  %i.ce = add i64 %i.cd, 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ce) #20
  %i.cf = load i64, ptr %i.ca, align 8, !tbaa !762, !alias.scope !865
  %i.cg = sub i64 4611686018427387903, %i.cf
  %i.ch = icmp ult i64 %i.cg, %i.cd
  br i1 %i.ch, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.c
  %i.ci = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.cb, i64 noundef %i.cd) #20 ; 0 uses
  %i.cj = load i64, ptr %i.ca, align 8, !tbaa !762, !alias.scope !865
  %i.ck = and i64 %i.cj, -4
  %i.cl = icmp eq i64 %i.ck, 4611686018427387900
  br i1 %i.cl, label %bb.e, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #24
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.3, i64 noundef 4) #20 ; 0 uses
  %i.cn = load i64, ptr %i.ca, align 8, !tbaa !762 ; 2 uses
  %i.co = load i64, ptr %i.by, align 8, !tbaa !762
  %i.cp = sub i64 4611686018427387903, %i.co
  %i.cq = icmp ult i64 %i.cp, %i.cn
  br i1 %i.cq, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.f:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.cr = load ptr, ptr %4, align 8, !tbaa !749
  %i.cs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.cr, i64 noundef %i.cn) #20 ; 0 uses
  %i.ct = load ptr, ptr %4, align 8, !tbaa !749   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bz
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  call void @_ZdlPv(ptr noundef %i.ct) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.024.038, i64 32 ; 2 uses
  %i.cw = load ptr, ptr %i.bt, align 8, !tbaa !863
  %.not34 = icmp eq ptr %i.cv, %i.cw
  br i1 %.not34, label %._crit_edge, label %bb.c, !llvm.loop !861

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.cy = load ptr, ptr %5, align 8, !tbaa !749
  call void (ptr, ...) @_Z5FatalPKcz(ptr noundef %i.cy) #24
  unreachable

bb.g:                                             ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread33
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !777
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !765
  %i.dc = tail call noundef ptr @_ZNK4Rule10GetBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.db, ptr noundef nonnull align 8 dereferenceable(32) %2) #20 ; 3 uses
  %i.dd = load i8, ptr %i.bo, align 4, !tbaa !779, !range !746, !noundef !583
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = icmp ne ptr %i.dc, null
  %i.dg = and i1 %i.df, %i.de
  br i1 %i.dg, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !781 ; 8 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !783
  %.not.i = icmp eq ptr %i.di, %i.dk
  br i1 %.not.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 3 uses
  store ptr %i.dl, ptr %i.di, align 8, !tbaa !767
  %i.dm = load ptr, ptr %2, align 8, !tbaa !749   ; 2 uses
  %i.dn = load i64, ptr %i.b, align 8, !tbaa !762 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.dn, ptr %i.a, align 8, !tbaa !713
  %i.do = icmp ugt i64 %i.dn, 15
  br i1 %i.do, label %bb.j, label %._crit_edge.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.dp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.dp, ptr %i.di, align 8, !tbaa !749
  %i.dq = load i64, ptr %i.a, align 8, !tbaa !713
  store i64 %i.dq, ptr %i.dl, align 8, !tbaa !768
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.j, %bb.i
  %i.dr = phi ptr [ %i.dp, %bb.j ], [ %i.dl, %bb.i ] ; 2 uses
  switch i64 %i.dn, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.ds = load i8, ptr %i.dm, align 1, !tbaa !768
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !768
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.l:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr align 1 %i.dm, i64 %i.dn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i
  %i.dt = load i64, ptr %i.a, align 8, !tbaa !713 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !762
  %i.dv = load ptr, ptr %i.di, align 8, !tbaa !749
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dt
  store i8 0, ptr %i.dw, align 1, !tbaa !768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.dx = load ptr, ptr %i.dh, align 8, !tbaa !781
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  store ptr %i.dy, ptr %i.dh, align 8, !tbaa !781
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.m:                                             ; preds = %bb.h
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr %i.di, ptr noundef nonnull align 8 dereferenceable(32) %2)
end_hunk_0
