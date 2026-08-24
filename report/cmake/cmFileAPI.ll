Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmFileAPI?download=true
inline.NumInlined: 2111
inline.NumDeleted: 879
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9cmFileAPI13MaybeJsonFileEN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.d:                                             ; preds = %bb.c
  br i1 %i.b, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN4Json5ValueC1ENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 7)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.c = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %4) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN9cmFileAPI13WriteJsonFileERKN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFS9_SB_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @_ZN9cmFileAPI17ComputeSuffixHashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4Json5ValueC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.d = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.21)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.e = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %5) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #23
  %i.f = load ptr, ptr %6, align 8, !tbaa !81     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !68
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.q

bb.j:                                             ; preds = %bb.c, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.k:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.r

bb.l:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

bb.m:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.o, %bb.n ], [ %i.n, %bb.m ] ; 2 uses
  %i.p = load ptr, ptr %6, align 8, !tbaa !81     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.o
  %i.s = load i64, ptr %i.q, align 8, !tbaa !68
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.m, %bb.l ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ], [ %.pn, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.r

bb.p:                                             ; preds = %bb.d
  %i.u = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2) #23 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p
  ret void

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.k, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ], [ %i.l, %bb.k ], [ %i.k, %bb.j ]
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #23
  resume { ptr, i32 } %.pn.pn.pn
}

declare noundef zeroext i1 @_ZNK4Json5Value8isObjectEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK4Json5Value7isArrayEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9cmFileAPI17ComputeSuffixHashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.cmCryptoHash, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN12cmCryptoHashC1ENS_4AlgoE(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 7)
  invoke void @_ZN12cmCryptoHash8HashFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 20, i8 noundef signext 48)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !81     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !68
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  call void @_ZN12cmCryptoHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %.pn = phi { ptr, i32 } [ %i.a, %bb.c ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.b, %bb.d ]
  call void @_ZN12cmCryptoHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn
}

declare void @_ZN4Json5ValueC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #0

declare void @_ZN12cmCryptoHash8HashFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #0

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4 align 2

declare void @_ZNK11cmTimestamp24CreateTimestampFromTimeTElNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, ptr noundef align 8, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5 align 2

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !81
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN9cmFileAPI14ObjectKindNameENS_10ObjectKindE(i32 noundef %0) local_unnamed_addr #9 align 2 {
bb.a:
  %1 = sext i32 %0 to i64
  %i.a = getelementptr inbounds nuw [8 x i8], ptr @_ZZN9cmFileAPI14ObjectKindNameENS_10ObjectKindEE15objectKindNames, i64 %1
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN9cmFileAPI6ObjectESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 4
  store i64 %i.e, ptr %i.b, align 4
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !185
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.a, align 8, !tbaa !185
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !120    ; 7 uses
  %i.i = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIN9cmFileAPI6ObjectESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #26
  unreachable

_ZNKSt6vectorIN9cmFileAPI6ObjectESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i, %i.m  ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #27 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %i.u = load i64, ptr %1, align 4
  store i64 %i.u, ptr %i.t, align 4
  %.not10.i.i.i.i = icmp eq ptr %i.h, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN9cmFileAPI6ObjectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorIN9cmFileAPI6ObjectESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.v = ptrtoaddr ptr %i.s to i64
  %i.w = add i64 %i.i, -8
  %i.x = sub i64 %i.w, %i.j                       ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 72
  %i.aa = sub i64 %i.j, %i.v
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.s, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.h, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ae ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.h, i64 %i.ae ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.af = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep5, align 4, !alias.scope !346, !noalias !343
  %wide.load6 = load <2 x i64>, ptr %i.af, align 4, !alias.scope !346, !noalias !343
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !343, !noalias !346
  store <2 x i64> %wide.load6, ptr %i.ag, align 4, !alias.scope !343, !noalias !346
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !348

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN9cmFileAPI6ObjectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.preheader8

.lr.ph.i.i.i.i.preheader8:                        ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader8, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader8 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.ai = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !346, !noalias !343
  store i64 %i.ai, ptr %.012.i.i.i.i, align 4, !alias.scope !343, !noalias !346
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN9cmFileAPI6ObjectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !349

_ZNSt6vectorIN9cmFileAPI6ObjectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorIN9cmFileAPI6ObjectESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN9cmFileAPI6ObjectESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.ac, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN9cmFileAPI6ObjectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN9cmFileAPI6ObjectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.ao) #24
  br label %_ZNSt6vectorIN9cmFileAPI6ObjectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit

_ZNSt6vectorIN9cmFileAPI6ObjectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN9cmFileAPI6ObjectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, %bb.e
  store ptr %i.s, ptr %0, align 8, !tbaa !120
  store ptr %i.al, ptr %i.a, align 8, !tbaa !185
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !121
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN9cmFileAPI6ObjectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(224) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9cmFileAPI11ClientQueryESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.459", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.462", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !67   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !350 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9cmFileAPI11ClientQueryESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, label %bb.b, !llvm.loop !351

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9cmFileAPI11ClientQueryESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9cmFileAPI11ClientQueryESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !67   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #23 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
end_hunk_0
begin_hunk_1_@_ZN9cmFileAPI10BuildCMakeEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13cmSystemTools15GetCPackCommandB5cxx11Ev()
          to label %bb.l unwind label %bb.af

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4Json5ValueC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.m unwind label %bb.af

bb.m:                                             ; preds = %bb.l
  %i.m = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull @.str.37)
          to label %bb.n unwind label %bb.ag

bb.n:                                             ; preds = %bb.m
  %i.n = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %6) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13cmSystemTools12GetCMakeRootB5cxx11Ev()
          to label %bb.o unwind label %bb.ai

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4Json5ValueC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o
  %i.p = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull @.str.38)
          to label %bb.q unwind label %bb.aj

bb.q:                                             ; preds = %bb.p
  %i.q = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %7) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.r = load ptr, ptr %1, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !372  ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !108
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %8, ptr noundef nonnull align 8 dereferenceable(2202) %i.t)
          to label %bb.r unwind label %bb.al

bb.r:                                             ; preds = %bb.q
  %i.x = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.39)
          to label %bb.s unwind label %bb.am

bb.s:                                             ; preds = %bb.r
  %i.y = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %8) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  ret void

bb.t:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #23
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.u ], [ %i.z, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.ao

bb.w:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn17 = phi { ptr, i32 } [ %i.ac, %bb.x ], [ %i.ab, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ao

bb.z:                                             ; preds = %bb.f, %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn19 = phi { ptr, i32 } [ %i.ae, %bb.aa ], [ %i.ad, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ao

bb.ac:                                            ; preds = %bb.i, %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #23
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn21 = phi { ptr, i32 } [ %i.ag, %bb.ad ], [ %i.af, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ao

bb.af:                                            ; preds = %bb.l, %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #23
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn23 = phi { ptr, i32 } [ %i.ai, %bb.ag ], [ %i.ah, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ao

bb.ai:                                            ; preds = %bb.o, %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.p
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn25 = phi { ptr, i32 } [ %i.ak, %bb.aj ], [ %i.aj, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ao

bb.al:                                            ; preds = %bb.q
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.r
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #23
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn27 = phi { ptr, i32 } [ %i.am, %bb.am ], [ %i.al, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ao

bb.ao:                                            ; preds = %bb.y, %bb.ab, %bb.ae, %bb.ah, %bb.ak, %bb.an, %bb.v
  %.pn27.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %.pn27, %bb.an ], [ %.pn25, %bb.ak ], [ %.pn23, %bb.ah ], [ %.pn21, %bb.ae ], [ %.pn19, %bb.ab ], [ %.pn17, %bb.y ]
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #23
  resume { ptr, i32 } %.pn27.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9cmFileAPI10BuildReplyERKNS_5QueryE(ptr dead_on_unwind noalias nonnull writable sret(%"class.Json::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Json::Value", align 8       ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca [3 x %"struct.std::pair.441"], align 8 ; 12 uses
  %5 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.Json::Value", align 8       ; 7 uses
  %8 = alloca %"class.Json::Value", align 8       ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZN4Json5ValueC1ENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 7)
  %i.b = load ptr, ptr %2, align 8, !tbaa !213    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !213  ; 2 uses
  %.not55 = icmp eq ptr %i.b, %i.d
  br i1 %.not55, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4.0..sroa_idx.i11.i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.3.0..sroa_idx.i.i13.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.4.0..sroa_idx.i19.i.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br label %10

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !144  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !144  ; 2 uses
  %.not4657 = icmp eq ptr %i.l, %i.n
  br i1 %.not4657, label %._crit_edge59, label %.noexc.i.lr.ph

.noexc.i.lr.ph:                                   ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %.noexc.i

10:                                               ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.042.056 = phi ptr [ %i.b, %.lr.ph ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.sroa.06.0.copyload = load i64, ptr %.sroa.042.056, align 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %sext.i = shl i64 %.sroa.06.0.copyload, 32
  %11 = ashr exact i64 %sext.i, 29
  %12 = getelementptr inbounds nuw i8, ptr @_ZZN9cmFileAPI14ObjectKindNameENS_10ObjectKindEE15objectKindNames, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !86, !noalias !374 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !377
  %.not.i.i.i = icmp eq ptr %13, null
  br i1 %.not.i.i.i, label %_Z8cmStrCatIPKcRA3_S0_JRjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_.exit.i, label %14

14:                                               ; preds = %10
  %15 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #23, !noalias !377
  br label %_Z8cmStrCatIPKcRA3_S0_JRjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_.exit.i

_Z8cmStrCatIPKcRA3_S0_JRjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_.exit.i: ; preds = %14, %10
  %.sroa.426.0.i.i = phi i64 [ %15, %14 ], [ 0, %10 ]
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.06.0.copyload, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  store i64 %.sroa.426.0.i.i, ptr %4, align 8, !tbaa !82, !alias.scope !380, !noalias !377
  store ptr %13, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !86, !alias.scope !380, !noalias !377
  store ptr null, ptr %i.e, align 8, !tbaa !87, !alias.scope !380, !noalias !377
  store i64 2, ptr %i.f, align 8, !tbaa !82, !alias.scope !383, !noalias !377
  store ptr @.str.49, ptr %.sroa.4.0..sroa_idx.i11.i.i, align 8, !tbaa !86, !alias.scope !383, !noalias !377
  store ptr null, ptr %i.g, align 8, !tbaa !87, !alias.scope !383, !noalias !377
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !377
  invoke void @_ZN10cmAlphaNumC1Ej(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef %.sroa.2.0.extract.trunc.i)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %_Z8cmStrCatIPKcRA3_S0_JRjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.q = load ptr, ptr %5, align 8, !tbaa !389, !noalias !391 ; 4 uses
  %.not.i.i12.i.i = icmp eq ptr %i.q, null        ; 2 uses
  %.pn.in.i.i15.i.i = select i1 %.not.i.i12.i.i, ptr %.sroa.3.0..sroa_idx.i.i13.i.i, ptr %i.q
  %.pn.i.i16.i.i = load ptr, ptr %.pn.in.i.i15.i.i, align 8, !tbaa !86, !noalias !391
  %.pn3.i.i14.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i12.i.i, ptr %5, ptr %i.q
  %.pn3.i.i14.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.pn3.i.i14.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.pn2.i.i18.i.i = load i64, ptr %.pn3.i.i14.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !82, !noalias !391
  store i64 %.pn2.i.i18.i.i, ptr %i.h, align 8, !tbaa !82, !alias.scope !386, !noalias !377
  store ptr %.pn.i.i16.i.i, ptr %.sroa.4.0..sroa_idx.i19.i.i, align 8, !tbaa !86, !alias.scope !386, !noalias !377
  store ptr %i.q, ptr %i.i, align 8, !tbaa !87, !alias.scope !386, !noalias !377
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull %4, i64 3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !377
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !377
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZN9cmFileAPI15BuildReplyEntryENS_6ObjectE(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %7, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %.sroa.06.0.copyload)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %7) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.t = load ptr, ptr %6, align 8, !tbaa !81     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.j
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.v = load i64, ptr %i.j, align 8, !tbaa !68
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.042.056, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.d
  br i1 %.not, label %._crit_edge, label %10

bb.e:                                             ; preds = %.noexc, %_Z8cmStrCatIPKcRA3_S0_JRjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_.exit.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn21 = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.z, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.ab = load ptr, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.j
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.h
  %i.ad = load i64, ptr %i.j, align 8, !tbaa !68
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.r

._crit_edge59:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %._crit_edge
  ret void

.noexc.i:                                         ; preds = %.noexc.i.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.sroa.038.058 = phi ptr [ %i.l, %.noexc.i.lr.ph ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.o, ptr %9, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 18, ptr %i.a, align 8, !tbaa !82
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc29 unwind label %bb.o   ; 2 uses

.noexc29:                                         ; preds = %.noexc.i
  store ptr %i.af, ptr %9, align 8, !tbaa !81
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !82  ; 3 uses
  store i64 %i.ag, ptr %i.o, align 8, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.af, ptr noundef nonnull align 1 dereferenceable(18) @.str.40, i64 18, i1 false)
  store i64 %i.ag, ptr %i.p, align 8, !tbaa !67
  %i.ah = load ptr, ptr %9, align 8, !tbaa !81
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 0, ptr %i.ai, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN4Json5ValueC1ENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 7)
          to label %.noexc30 unwind label %bb.p

.noexc30:                                         ; preds = %.noexc29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !392
  invoke void @_ZN4Json5ValueC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc30
  %i.aj = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull @.str.13)
          to label %bb.m unwind label %bb.k

bb.j:                                             ; preds = %.noexc30
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.al, %bb.k ], [ %i.ak, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !392
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #23
  br label %.body

bb.m:                                             ; preds = %bb.i
  %i.am = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %3) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !392
  %i.an = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.038.058)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ao = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %8) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #23
  %i.ap = load ptr, ptr %9, align 8, !tbaa !81    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.o
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.n
  %i.ar = load i64, ptr %i.o, align 8, !tbaa !68
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.038.058, i64 32 ; 2 uses
  %.not46 = icmp eq ptr %i.at, %i.n
  br i1 %.not46, label %._crit_edge59, label %.noexc.i

bb.o:                                             ; preds = %.noexc.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.p:                                             ; preds = %.noexc29
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #23
  br label %.body

.body:                                            ; preds = %bb.p, %bb.l, %bb.q
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.q ], [ %i.av, %bb.p ], [ %.pn.i, %bb.l ] ; 2 uses
  %i.ax = load ptr, ptr %9, align 8, !tbaa !81    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.o
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %.body
  %i.az = load i64, ptr %i.o, align 8, !tbaa !68
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.au, %bb.o ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %.pn21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.y, %bb.e ]
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #23
  resume { ptr, i32 } %.pn21.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9cmFileAPI16BuildClientReplyERKNS_11ClientQueryE(ptr dead_on_unwind noalias writable sret(%"class.Json::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef nonnull align 8 dereferenceable(224) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Json::Value", align 8       ; 7 uses
  %4 = alloca %"class.Json::Value", align 8       ; 8 uses
  %5 = alloca %"class.Json::Value", align 8       ; 7 uses
  tail call void @_ZN9cmFileAPI10BuildReplyERKNS_5QueryE(ptr dead_on_unwind writable sret(%"class.Json::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !160, !range !95, !noundef !96
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.26)
          to label %bb.c unwind label %bb.j       ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = load i64, ptr %i.f, align 8, !tbaa !67
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN4Json5ValueC1ENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 7)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !395
  invoke void @_ZN4Json5ValueC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.i = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull @.str.13)
          to label %bb.i unwind label %bb.g

bb.f:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.j, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !395
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #23
  br label %.body

bb.i:                                             ; preds = %bb.e
  %i.l = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %3) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !395
  %i.m = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %4) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.k:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.k ], [ %.pn.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.aa

bb.l:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.q = invoke noundef zeroext i1 @_ZNK4Json5Value6isNullEv(ptr noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %i.q, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.r = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull @.str.29)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.s = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %bb.q unwind label %bb.p       ; 0 uses

bb.p:                                             ; preds = %bb.t, %bb.s, %bb.q, %bb.o, %bb.n, %bb.l
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.q:                                             ; preds = %bb.o, %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.v = invoke noundef zeroext i1 @_ZNK4Json5Value6isNullEv(ptr noundef nonnull align 8 dereferenceable(40) %i.u)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  br i1 %i.v, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.w = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull @.str.30)
          to label %bb.t unwind label %bb.p

bb.t:                                             ; preds = %bb.s
  %i.x = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(40) %i.u)
          to label %bb.u unwind label %bb.p       ; 0 uses

bb.u:                                             ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 168
  invoke void @_ZN9cmFileAPI25BuildClientReplyResponsesERKNS_14ClientRequestsE(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %5, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.z = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull @.str.59)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.aa = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %5) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ab

bb.x:                                             ; preds = %bb.u
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #23
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.y ], [ %i.ab, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.aa

bb.aa:                                            ; preds = %.body, %bb.p, %bb.z, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.n, %bb.j ], [ %.pn, %bb.z ], [ %i.t, %bb.p ], [ %eh.lpad-body, %.body ]
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #23
  resume { ptr, i32 } %.pn.pn.pn

bb.ab:                                            ; preds = %bb.a, %bb.w, %bb.i
  ret void
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5Value6appendEOS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #0

declare void @_ZNK5cmake17ReportVersionJsonEv(ptr dead_on_unwind writable sret(%"class.Json::Value") align 8, ptr noundef nonnull align 8 dereferenceable(2456)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN13cmSystemTools15GetCMakeCommandB5cxx11Ev() local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN13cmSystemTools15GetCTestCommandB5cxx11Ev() local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN13cmSystemTools15GetCPackCommandB5cxx11Ev() local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN13cmSystemTools12GetCMakeRootB5cxx11Ev() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9cmFileAPI10ObjectNameB5cxx11ENS_6ObjectE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1) local_unnamed_addr #4 align 2 {
  %3 = alloca [3 x %"struct.std::pair.441"], align 8 ; 12 uses
  %4 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %sext = shl i64 %1, 32
  %5 = ashr exact i64 %sext, 29
  %6 = getelementptr inbounds nuw i8, ptr @_ZZN9cmFileAPI14ObjectKindNameENS_10ObjectKindEE15objectKindNames, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !86       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !398
  %.not.i.i = icmp eq ptr %7, null
  br i1 %.not.i.i, label %_Z8cmStrCatIPKcRA3_S0_JRjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_.exit, label %8

8:                                                ; preds = %2
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #23, !noalias !398
  br label %_Z8cmStrCatIPKcRA3_S0_JRjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_.exit

_Z8cmStrCatIPKcRA3_S0_JRjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_.exit: ; preds = %2, %8
  %.sroa.426.0.i = phi i64 [ %9, %8 ], [ 0, %2 ]
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  store i64 %.sroa.426.0.i, ptr %3, align 8, !tbaa !82, !alias.scope !401, !noalias !398
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %7, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !86, !alias.scope !401, !noalias !398
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !87, !alias.scope !401, !noalias !398
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 2, ptr %i.b, align 8, !tbaa !82, !alias.scope !404, !noalias !398
  %.sroa.4.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @.str.49, ptr %.sroa.4.0..sroa_idx.i11.i, align 8, !tbaa !86, !alias.scope !404, !noalias !398
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.c, align 8, !tbaa !87, !alias.scope !404, !noalias !398
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !398
  call void @_ZN10cmAlphaNumC1Ej(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef %.sroa.2.0.extract.trunc), !noalias !398
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.e = load ptr, ptr %4, align 8, !tbaa !389, !noalias !410 ; 4 uses
  %.not.i.i12.i = icmp eq ptr %i.e, null          ; 2 uses
  %.sroa.3.0..sroa_idx.i.i13.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pn.in.i.i15.i = select i1 %.not.i.i12.i, ptr %.sroa.3.0..sroa_idx.i.i13.i, ptr %i.e
  %.pn.i.i16.i = load ptr, ptr %.pn.in.i.i15.i, align 8, !tbaa !86, !noalias !410
  %.pn3.i.i14.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i12.i, ptr %4, ptr %i.e
  %.pn3.i.i14.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.pn3.i.i14.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.pn2.i.i18.i = load i64, ptr %.pn3.i.i14.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !82, !noalias !410
  store i64 %.pn2.i.i18.i, ptr %i.d, align 8, !tbaa !82, !alias.scope !407, !noalias !398
  %.sroa.4.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %.pn.i.i16.i, ptr %.sroa.4.0..sroa_idx.i19.i, align 8, !tbaa !86, !alias.scope !407, !noalias !398
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %i.e, ptr %i.f, align 8, !tbaa !87, !alias.scope !407, !noalias !398
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %3, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !398
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !398
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9cmFileAPI15BuildReplyEntryENS_6ObjectE(ptr dead_on_unwind noalias writable sret(%"class.Json::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Json::Value", align 8       ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.c = load i32, ptr %i.b, align 8, !tbaa !77
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.02.0.extract.trunc = trunc i64 %2 to i32
  switch i32 %.sroa.02.0.extract.trunc, label %bb.i [
    i32 5, label %.noexc.i
    i32 0, label %.noexc.i
    i32 2, label %.noexc.i
    i32 3, label %.noexc.i
    i32 4, label %.noexc.i
  ]

.noexc.i:                                         ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 24, ptr %i.a, align 8, !tbaa !82
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !81
  %i.f = load i64, ptr %i.a, align 8, !tbaa !82   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.e, ptr noundef nonnull align 1 dereferenceable(24) @.str.41, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !67
  %i.h = load ptr, ptr %4, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.i, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN4Json5ValueC1ENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 7)
          to label %.noexc5 unwind label %bb.h

.noexc5:                                          ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !411
  invoke void @_ZN4Json5ValueC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc5
  %i.j = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.13)
          to label %bb.g unwind label %bb.e

bb.d:                                             ; preds = %.noexc5
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.k, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !411
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #23
  br label %.body

bb.g:                                             ; preds = %bb.c
  %i.m = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %3) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !411
  %i.n = load ptr, ptr %4, align 8, !tbaa !81     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.d
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.p = load i64, ptr %i.d, align 8, !tbaa !68
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.j

bb.h:                                             ; preds = %.noexc.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.h ], [ %.pn.i, %bb.f ]
  %i.s = load ptr, ptr %4, align 8, !tbaa !81     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.d
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %.body
  %i.u = load i64, ptr %i.d, align 8, !tbaa !68
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %eh.lpad-body

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.w = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN9cmFileAPI19AddReplyIndexObjectENS_6ObjectE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2)
  tail call void @_ZN4Json5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.w)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9cmFileAPI15BuildReplyErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable sret(%"class.Json::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Json::Value", align 8       ; 7 uses
  tail call void @_ZN4Json5ValueC1ENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 7)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZN4Json5ValueC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.13)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %2) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.c, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN9cmFileAPI19AddReplyIndexObjectENS_6ObjectE(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [3 x %"struct.std::pair.441"], align 8 ; 12 uses
  %3 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %4 = alloca %"class.std::tuple.469", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.462", align 1    ; 3 uses
  %6 = alloca %"struct.cmFileAPI::Object", align 8 ; 4 uses
  %7 = alloca %"class.Json::Value", align 8       ; 9 uses
  %8 = alloca %"class.Json::Value", align 8       ; 6 uses
  %9 = alloca %"class.Json::Value", align 8       ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i64 %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i = trunc i64 %1 to i32 ; 4 uses
  %.sroa.3.0.extract.shift.i.i.i.i.i.i = lshr i64 %1, 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 4 ; 2 uses
  %.sroa.02.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i.i.i.i to i32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.02.0.extract.trunc.i.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i
  %i.f = icmp slt i32 %.sroa.02.0.extract.trunc.i.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i
  %.sroa.34.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.01.0.copyload.i.i.i.i.i, 32
  %i.g = icmp samesign ult i64 %.sroa.34.0.extract.shift.i.i.i.i.i.i, %.sroa.3.0.extract.shift.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.g, i1 %i.f ; 2 uses
  %.19.i.i.i.i = select i1 %.0.i.i.i.i.i.i, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %.0.i.i.i.i.i.i, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !350 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN9cmFileAPI6ObjectEN4Json5ValueESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i, label %bb.b, !llvm.loop !414

_ZNSt3mapIN9cmFileAPI6ObjectEN4Json5ValueESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i.i, %i.d
  br i1 %i.h, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIN9cmFileAPI6ObjectEN4Json5ValueESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.i, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.sroa.0.0.extract.trunc.i.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i
  %i.j = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i
  %.sroa.3.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %i.k = icmp samesign ult i64 %.sroa.3.0.extract.shift.i.i.i.i.i.i, %.sroa.3.0.extract.shift.i.i.i
  %.0.i.i.i = select i1 %.not.i.i.i, i1 %i.k, i1 %i.j
  br i1 %.0.i.i.i, label %.critedge.i, label %_ZNSt3mapIN9cmFileAPI6ObjectEN4Json5ValueESt4lessIS1_ESaISt4pairIKS1_S3_EEEixERS7_.exit

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapIN9cmFileAPI6ObjectEN4Json5ValueESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i, %bb.a
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapIN9cmFileAPI6ObjectEN4Json5ValueESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %6, ptr %4, align 8, !tbaa !213
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.l = call ptr @_ZNSt8_Rb_treeIN9cmFileAPI6ObjectESt4pairIKS1_N4Json5ValueEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSt3mapIN9cmFileAPI6ObjectEN4Json5ValueESt4lessIS1_ESaISt4pairIKS1_S3_EEEixERS7_.exit

_ZNSt3mapIN9cmFileAPI6ObjectEN4Json5ValueESt4lessIS1_ESaISt4pairIKS1_S3_EEEixERS7_.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.l, %.critedge.i ], [ %.19.i.i.i.i, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 6 uses
  %i.n = call noundef zeroext i1 @_ZNK4Json5Value6isNullEv(ptr noundef nonnull align 8 dereferenceable(40) %i.m)
  br i1 %i.n, label %bb.d, label %bb.w

bb.d:                                             ; preds = %_ZNSt3mapIN9cmFileAPI6ObjectEN4Json5ValueESt4lessIS1_ESaISt4pairIKS1_S3_EEEixERS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %.sroa.01.0.copyload = load i64, ptr %6, align 8
  call void @_ZN9cmFileAPI11BuildObjectENS_6ObjectE(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %7, ptr noundef nonnull align 8 dereferenceable(304) %0, i64 %.sroa.01.0.copyload)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZN4Json5ValueC1ENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 7)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.o = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %8) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.p = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull @.str.42)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull @.str.42)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.r = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %bb.h unwind label %bb.p       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.s = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull @.str.34)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull @.str.34)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.u = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %12 unwind label %bb.p         ; 0 uses

12:                                               ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %.sroa.0.0.copyload = load i64, ptr %6, align 8 ; 2 uses
  %sext.i = shl i64 %.sroa.0.0.copyload, 32
  %13 = ashr exact i64 %sext.i, 29
  %14 = getelementptr inbounds nuw i8, ptr @_ZZN9cmFileAPI14ObjectKindNameENS_10ObjectKindEE15objectKindNames, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !86, !noalias !415 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !418
  %.not.i.i.i23 = icmp eq ptr %15, null
  br i1 %.not.i.i.i23, label %_Z8cmStrCatIPKcRA3_S0_JRjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_.exit.i, label %16

16:                                               ; preds = %12
  %17 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #23, !noalias !418
  br label %_Z8cmStrCatIPKcRA3_S0_JRjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_.exit.i

_Z8cmStrCatIPKcRA3_S0_JRjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_.exit.i: ; preds = %16, %12
  %.sroa.426.0.i.i = phi i64 [ %17, %16 ], [ 0, %12 ]
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  store i64 %.sroa.426.0.i.i, ptr %2, align 8, !tbaa !82, !alias.scope !421, !noalias !418
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %15, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !86, !alias.scope !421, !noalias !418
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.v, align 8, !tbaa !87, !alias.scope !421, !noalias !418
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 2, ptr %i.w, align 8, !tbaa !82, !alias.scope !424, !noalias !418
  %.sroa.4.0..sroa_idx.i11.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @.str.49, ptr %.sroa.4.0..sroa_idx.i11.i.i, align 8, !tbaa !86, !alias.scope !424, !noalias !418
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.x, align 8, !tbaa !87, !alias.scope !424, !noalias !418
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !418
  invoke void @_ZN10cmAlphaNumC1Ej(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef %.sroa.2.0.extract.trunc.i)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %_Z8cmStrCatIPKcRA3_S0_JRjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.z = load ptr, ptr %3, align 8, !tbaa !389, !noalias !430 ; 4 uses
  %.not.i.i12.i.i = icmp eq ptr %i.z, null        ; 2 uses
  %.sroa.3.0..sroa_idx.i.i13.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pn.in.i.i15.i.i = select i1 %.not.i.i12.i.i, ptr %.sroa.3.0..sroa_idx.i.i13.i.i, ptr %i.z
  %.pn.i.i16.i.i = load ptr, ptr %.pn.in.i.i15.i.i, align 8, !tbaa !86, !noalias !430
  %.pn3.i.i14.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i12.i.i, ptr %3, ptr %i.z
  %.pn3.i.i14.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.pn3.i.i14.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.pn2.i.i18.i.i = load i64, ptr %.pn3.i.i14.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !82, !noalias !430
  store i64 %.pn2.i.i18.i.i, ptr %i.y, align 8, !tbaa !82, !alias.scope !427, !noalias !418
  %.sroa.4.0..sroa_idx.i19.i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %.pn.i.i16.i.i, ptr %.sroa.4.0..sroa_idx.i19.i.i, align 8, !tbaa !86, !alias.scope !427, !noalias !418
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !87, !alias.scope !427, !noalias !418
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull %2, i64 3)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !418
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !418
  invoke void @_ZN9cmFileAPI13WriteJsonFileERKN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFS9_SB_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @_ZN9cmFileAPI17ComputeSuffixHashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4Json5ValueC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ab = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull @.str.21)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.ac = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %9) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #23
  %i.ad = load ptr, ptr %10, align 8, !tbaa !81   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !68
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ai = load ptr, ptr %11, align 8, !tbaa !81   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !68
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.w

bb.o:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.v

bb.p:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.q:                                             ; preds = %.noexc, %_Z8cmStrCatIPKcRA3_S0_JRjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_.exit.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.r:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.s:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #23
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.as, %bb.t ], [ %i.ar, %bb.s ] ; 2 uses
  %i.at = load ptr, ptr %10, align 8, !tbaa !81   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.u
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !68
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.r ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %.pn, %bb.u ] ; 2 uses
  %i.ay = load ptr, ptr %11, align 8, !tbaa !81   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !68
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.q ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.p, %bb.o
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.ao, %bb.p ], [ %i.an, %bb.o ]
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.w:                                             ; preds = %_ZNSt3mapIN9cmFileAPI6ObjectEN4Json5ValueESt4lessIS1_ESaISt4pairIKS1_S3_EEEixERS7_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  ret ptr %i.m
}

declare void @_ZN4Json5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9cmFileAPI11BuildObjectENS_6ObjectE(ptr dead_on_unwind noalias nonnull writable sret(%"class.Json::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Json::Value", align 8       ; 6 uses
  %4 = alloca %"class.Json::Value", align 8       ; 6 uses
  %5 = alloca %"class.Json::Value", align 8       ; 6 uses
  %6 = alloca %"class.Json::Value", align 8       ; 6 uses
  %7 = alloca %"class.Json::Value", align 8       ; 6 uses
  %8 = alloca %"class.Json::Value", align 8       ; 6 uses
  %.sroa.08.0.extract.trunc = trunc i64 %2 to i32
  tail call void @_ZN4Json5ValueC1ENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 0)
  switch i32 %.sroa.08.0.extract.trunc, label %bb.t [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.h
    i32 3, label %bb.k
    i32 4, label %bb.n
    i32 5, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.8.0.extract.shift = and i64 %2, -4294967296
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZN9cmFileAPI14BuildCodeModelENS_6ObjectE(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %3, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %.sroa.8.0.extract.shift)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.a = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.u

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %.sroa.8.0.insert.shift37 = and i64 %2, -4294967296
  %.sroa.08.0.insert.insert20 = or disjoint i64 %.sroa.8.0.insert.shift37, 1
  invoke void @_ZN9cmFileAPI17BuildConfigureLogENS_6ObjectE(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %4, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %.sroa.08.0.insert.insert20)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.c = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %4) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.u

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %.sroa.8.0.insert.shift33 = and i64 %2, -4294967296
  %.sroa.08.0.insert.insert17 = or disjoint i64 %.sroa.8.0.insert.shift33, 2
  invoke void @_ZN9cmFileAPI10BuildCacheENS_6ObjectE(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %5, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %.sroa.08.0.insert.insert17)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.e = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %5) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.u

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %.sroa.8.0.insert.shift29 = and i64 %2, -4294967296
  %.sroa.08.0.insert.insert14 = or disjoint i64 %.sroa.8.0.insert.shift29, 3
  invoke void @_ZN9cmFileAPI15BuildCMakeFilesENS_6ObjectE(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %6, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %.sroa.08.0.insert.insert14)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.g = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %6) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.u

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %.sroa.8.0.insert.shift25 = and i64 %2, -4294967296
  %.sroa.08.0.insert.insert11 = or disjoint i64 %.sroa.8.0.insert.shift25, 4
  invoke void @_ZN9cmFileAPI15BuildToolchainsENS_6ObjectE(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %7, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %.sroa.08.0.insert.insert11)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.i = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %7) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.u

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %.sroa.8.0.insert.shift = and i64 %2, -4294967296
  %.sroa.08.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift, 5
  invoke void @_ZN9cmFileAPI17BuildInternalTestENS_6ObjectE(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %8, ptr nonnull align 8 poison, i64 %.sroa.08.0.insert.insert)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.k = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %8) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.u

bb.t:                                             ; preds = %bb.a, %bb.c, %bb.f, %bb.i, %bb.l, %bb.o, %bb.r
  ret void

bb.u:                                             ; preds = %bb.s, %bb.p, %bb.m, %bb.j, %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.d, %bb.g ], [ %i.f, %bb.j ], [ %i.h, %bb.m ], [ %i.j, %bb.p ], [ %i.l, %bb.s ]
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #23
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9cmFileAPI12BuildVersionEjj(ptr dead_on_unwind noalias nonnull writable sret(%"class.Json::Value") align 8 %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Json::Value", align 8       ; 7 uses
  %4 = alloca %"class.Json::Value", align 8       ; 7 uses
  tail call void @_ZN4Json5ValueC1ENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZN4Json5ValueC1Ej(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.50)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.b = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %3) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN4Json5ValueC1Ej(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %2)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.c = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.51)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.d = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %4) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.f:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.f, %bb.g ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn8 = phi { ptr, i32 } [ %i.h, %bb.j ], [ %i.g, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.pn8.pn = phi { ptr, i32 } [ %.pn8, %bb.k ], [ %.pn, %bb.h ]
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #23
  resume { ptr, i32 } %.pn8.pn
}

declare void @_ZN4Json5ValueC1Ej(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9cmFileAPI14BuildCodeModelENS_6ObjectE(ptr dead_on_unwind noalias writable sret(%"class.Json::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Json::Value", align 8       ; 7 uses
  %4 = alloca %"class.Json::Value", align 8       ; 6 uses
  %.sroa.2.0.extract.shift = lshr i64 %2, 32      ; 2 uses
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  tail call void @_Z22cmFileAPICodemodelDumpR9cmFileAPIjj(ptr dead_on_unwind writable sret(%"class.Json::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i32 noundef %.sroa.2.0.extract.trunc, i32 noundef 11)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %sext = shl i64 %2, 32
  %5 = ashr exact i64 %sext, 29
  %6 = getelementptr inbounds nuw i8, ptr @_ZZN9cmFileAPI14ObjectKindNameENS_10ObjectKindEE15objectKindNames, i64 %5
  %i.a = load ptr, ptr %6, align 8, !tbaa !86
  invoke void @_ZN4Json5ValueC1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.a)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.42)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %3) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.d = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.34)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i64 %.sroa.2.0.extract.shift, 2
  br i1 %i.e, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN9cmFileAPI12BuildVersionEjj(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %4, i32 noundef 2, i32 noundef 11)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.f = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %4) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.m

bb.l:                                             ; preds = %bb.f, %bb.d
  ret void

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.j, %bb.k ], [ %i.i, %bb.j ]
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #23
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9cmFileAPI17BuildConfigureLogENS_6ObjectE(ptr dead_on_unwind noalias writable sret(%"class.Json::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Json::Value", align 8       ; 7 uses
  %4 = alloca %"class.Json::Value", align 8       ; 6 uses
  %.sroa.2.0.extract.shift = lshr i64 %2, 32      ; 2 uses
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  tail call void @_Z25cmFileAPIConfigureLogDumpR9cmFileAPIj(ptr dead_on_unwind writable sret(%"class.Json::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i32 noundef %.sroa.2.0.extract.trunc)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %sext = shl i64 %2, 32
  %5 = ashr exact i64 %sext, 29
  %6 = getelementptr inbounds nuw i8, ptr @_ZZN9cmFileAPI14ObjectKindNameENS_10ObjectKindEE15objectKindNames, i64 %5
  %i.a = load ptr, ptr %6, align 8, !tbaa !86
  invoke void @_ZN4Json5ValueC1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.a)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.42)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %3) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.d = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.34)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i64 %.sroa.2.0.extract.shift, 1
  br i1 %i.e, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN9cmFileAPI12BuildVersionEjj(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %4, i32 noundef 1, i32 noundef 0)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.f = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %4) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.m

bb.l:                                             ; preds = %bb.f, %bb.d
  ret void

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.j, %bb.k ], [ %i.i, %bb.j ]
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #23
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9cmFileAPI10BuildCacheENS_6ObjectE(ptr dead_on_unwind noalias writable sret(%"class.Json::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Json::Value", align 8       ; 7 uses
  %4 = alloca %"class.Json::Value", align 8       ; 6 uses
  %.sroa.2.0.extract.shift = lshr i64 %2, 32      ; 2 uses
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  tail call void @_Z18cmFileAPICacheDumpR9cmFileAPIj(ptr dead_on_unwind writable sret(%"class.Json::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i32 noundef %.sroa.2.0.extract.trunc)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %sext = shl i64 %2, 32
  %5 = ashr exact i64 %sext, 29
  %6 = getelementptr inbounds nuw i8, ptr @_ZZN9cmFileAPI14ObjectKindNameENS_10ObjectKindEE15objectKindNames, i64 %5
  %i.a = load ptr, ptr %6, align 8, !tbaa !86
  invoke void @_ZN4Json5ValueC1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.a)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.42)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %3) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.d = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.34)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i64 %.sroa.2.0.extract.shift, 2
  br i1 %i.e, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN9cmFileAPI12BuildVersionEjj(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %4, i32 noundef 2, i32 noundef 0)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.f = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %4) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.m

bb.l:                                             ; preds = %bb.f, %bb.d
  ret void

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.j, %bb.k ], [ %i.i, %bb.j ]
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #23
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9cmFileAPI15BuildCMakeFilesENS_6ObjectE(ptr dead_on_unwind noalias writable sret(%"class.Json::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Json::Value", align 8       ; 7 uses
  %4 = alloca %"class.Json::Value", align 8       ; 6 uses
  %.sroa.2.0.extract.shift = lshr i64 %2, 32      ; 2 uses
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  tail call void @_Z23cmFileAPICMakeFilesDumpR9cmFileAPIj(ptr dead_on_unwind writable sret(%"class.Json::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i32 noundef %.sroa.2.0.extract.trunc)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %sext = shl i64 %2, 32
  %5 = ashr exact i64 %sext, 29
  %6 = getelementptr inbounds nuw i8, ptr @_ZZN9cmFileAPI14ObjectKindNameENS_10ObjectKindEE15objectKindNames, i64 %5
  %i.a = load ptr, ptr %6, align 8, !tbaa !86
  invoke void @_ZN4Json5ValueC1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.a)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.42)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %3) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.d = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.34)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i64 %.sroa.2.0.extract.shift, 1
  br i1 %i.e, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN9cmFileAPI12BuildVersionEjj(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %4, i32 noundef 1, i32 noundef 1)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.f = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %4) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.m

bb.l:                                             ; preds = %bb.f, %bb.d
  ret void

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.j, %bb.k ], [ %i.i, %bb.j ]
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #23
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9cmFileAPI15BuildToolchainsENS_6ObjectE(ptr dead_on_unwind noalias writable sret(%"class.Json::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Json::Value", align 8       ; 7 uses
  %4 = alloca %"class.Json::Value", align 8       ; 6 uses
  %.sroa.2.0.extract.shift = lshr i64 %2, 32      ; 2 uses
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  tail call void @_Z23cmFileAPIToolchainsDumpR9cmFileAPIj(ptr dead_on_unwind writable sret(%"class.Json::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i32 noundef %.sroa.2.0.extract.trunc)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %sext = shl i64 %2, 32
  %5 = ashr exact i64 %sext, 29
  %6 = getelementptr inbounds nuw i8, ptr @_ZZN9cmFileAPI14ObjectKindNameENS_10ObjectKindEE15objectKindNames, i64 %5
  %i.a = load ptr, ptr %6, align 8, !tbaa !86
  invoke void @_ZN4Json5ValueC1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.a)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.42)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %3) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.d = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.34)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i64 %.sroa.2.0.extract.shift, 1
  br i1 %i.e, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN9cmFileAPI12BuildVersionEjj(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %4, i32 noundef 1, i32 noundef 1)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.f = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %4) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.m

bb.l:                                             ; preds = %bb.f, %bb.d
  ret void

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.j, %bb.k ], [ %i.i, %bb.j ]
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #23
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9cmFileAPI17BuildInternalTestENS_6ObjectE(ptr dead_on_unwind noalias nonnull writable sret(%"class.Json::Value") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Json::Value", align 8       ; 7 uses
  %4 = alloca %"class.Json::Value", align 8       ; 6 uses
  %5 = alloca %"class.Json::Value", align 8       ; 6 uses
  tail call void @_ZN4Json5ValueC1ENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 7)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %sext = shl i64 %2, 32
  %6 = ashr exact i64 %sext, 29
  %7 = getelementptr inbounds nuw i8, ptr @_ZZN9cmFileAPI14ObjectKindNameENS_10ObjectKindEE15objectKindNames, i64 %6
  %i.a = load ptr, ptr %7, align 8, !tbaa !86
  invoke void @_ZN4Json5ValueC1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.a)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.42)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %3) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.d = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.34)
          to label %bb.d unwind label %bb.j       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.sroa.2.0.extract.shift.mask = and i64 %2, -4294967296
  %i.e = icmp eq i64 %.sroa.2.0.extract.shift.mask, 8589934592
  br i1 %i.e, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN9cmFileAPI12BuildVersionEjj(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %4, i32 noundef 2, i32 noundef 0)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.f = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %4) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.p

bb.j:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.k:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.p

bb.l:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN9cmFileAPI12BuildVersionEjj(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %5, i32 noundef 1, i32 noundef 3)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.k = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %5) #23 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.p

bb.o:                                             ; preds = %bb.f, %bb.m
  ret void

bb.p:                                             ; preds = %bb.j, %bb.k, %bb.n, %bb.i
  %.pn8.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.j, %bb.k ], [ %i.l, %bb.n ], [ %i.i, %bb.j ]
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #23
  resume { ptr, i32 } %.pn8.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN9cmFileAPI13ClientRequestESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 230584300921369395
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !370
  %i.d = load ptr, ptr %0, align 8, !tbaa !367
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN9cmFileAPI13ClientRequestESaIS1_EE11_M_allocateEm.exit, label %bb.f

_ZNSt12_Vector_baseIN9cmFileAPI13ClientRequestESaIS1_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !368
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 40
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 4 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !367    ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !368  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9cmFileAPI13ClientRequestESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN9cmFileAPI13ClientRequestESaIS1_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aIN9cmFileAPI13ClientRequestES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ah, %_ZSt19__relocate_object_aIN9cmFileAPI13ClientRequestES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN9cmFileAPI13ClientRequestESaIS1_EE11_M_allocateEm.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ag, %_ZSt19__relocate_object_aIN9cmFileAPI13ClientRequestES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN9cmFileAPI13ClientRequestESaIS1_EE11_M_allocateEm.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.r = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !434, !noalias !431
  store i64 %i.r, ptr %.012.i.i.i, align 8, !alias.scope !431, !noalias !434
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !66, !alias.scope !431, !noalias !434
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !81, !alias.scope !434, !noalias !431 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !67, !alias.scope !434, !noalias !431 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false), !alias.scope !436
  br label %_ZSt19__relocate_object_aIN9cmFileAPI13ClientRequestES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.v, ptr %i.s, align 8, !tbaa !81, !alias.scope !431, !noalias !434
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !68, !alias.scope !434, !noalias !431
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !68, !alias.scope !431, !noalias !434
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !67, !alias.scope !434, !noalias !431
  br label %_ZSt19__relocate_object_aIN9cmFileAPI13ClientRequestES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9cmFileAPI13ClientRequestES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.ad = phi i64 [ %i.z, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !67, !alias.scope !431, !noalias !434
  store ptr %i.w, ptr %i.t, align 8, !tbaa !81, !alias.scope !434, !noalias !431
  store i64 0, ptr %i.ae, align 8, !tbaa !67, !alias.scope !434, !noalias !431
  store i8 0, ptr %i.w, align 8, !tbaa !68, !alias.scope !434, !noalias !431
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %.not.i.i.i = icmp eq ptr %i.ag, %i.q
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9cmFileAPI13ClientRequestESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !437

_ZNSt6vectorIN9cmFileAPI13ClientRequestESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split: ; preds = %_ZSt19__relocate_object_aIN9cmFileAPI13ClientRequestES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !367
  br label %_ZNSt6vectorIN9cmFileAPI13ClientRequestESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIN9cmFileAPI13ClientRequestESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZNSt6vectorIN9cmFileAPI13ClientRequestESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split, %_ZNSt12_Vector_baseIN9cmFileAPI13ClientRequestESaIS1_EE11_M_allocateEm.exit
  %i.ai = phi ptr [ %.pr, %_ZNSt6vectorIN9cmFileAPI13ClientRequestESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split ], [ %i.p, %_ZNSt12_Vector_baseIN9cmFileAPI13ClientRequestESaIS1_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.ai, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN9cmFileAPI13ClientRequestESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN9cmFileAPI13ClientRequestESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !370
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.am) #24
  br label %_ZNSt12_Vector_baseIN9cmFileAPI13ClientRequestESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN9cmFileAPI13ClientRequestESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN9cmFileAPI13ClientRequestESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !367
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.an, ptr %i.j, align 8, !tbaa !368
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %1
  store ptr %i.ao, ptr %i.b, align 8, !tbaa !370
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN9cmFileAPI13ClientRequestESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.c
  ret void
}

declare noundef i32 @_ZNK4Json5Value4sizeEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #0

declare { ptr, i8 } @_ZNK4Json5Value5beginEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #0

declare { ptr, i8 } @_ZNK4Json5Value3endEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9cmFileAPI18BuildClientRequestERKN4Json5ValueE(ptr dead_on_unwind noalias writable sret(%"struct.cmFileAPI::ClientRequest") align 8 initializes((4, 8)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(304) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_1
