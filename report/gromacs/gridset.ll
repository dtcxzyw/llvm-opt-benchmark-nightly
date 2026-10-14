Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gridset?download=true
inline.NumInlined: 463
inline.NumDeleted: 296
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt6vectorIN3gmx8GridWorkESaIS1_EED2Ev:bb.a
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN3gmx8GridWorkES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN3gmx8GridWorkEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.q, %_ZSt8_DestroyIN3gmx8GridWorkEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i:            ; preds = %bb.b, %.lr.ph.i.i
  %i.k = load ptr, ptr %.05.i.i, align 8, !tbaa !57 ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZSt8_DestroyIN3gmx8GridWorkEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZSt8_DestroyIN3gmx8GridWorkEEvPT_.exit.i.i

_ZSt8_DestroyIN3gmx8GridWorkEEvPT_.exit.i.i:      ; preds = %bb.c, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN3gmx8GridWorkES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !112

_ZSt8_DestroyIPN3gmx8GridWorkES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN3gmx8GridWorkEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPN3gmx8GridWorkES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN3gmx8GridWorkES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN3gmx8GridWorkES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.r = phi ptr [ %.pr, %_ZSt8_DestroyIPN3gmx8GridWorkES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.r, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN3gmx8GridWorkESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN3gmx8GridWorkES1_EvT_S3_RSaIT0_E.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #25
  br label %_ZNSt12_Vector_baseIN3gmx8GridWorkESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN3gmx8GridWorkESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3gmx8GridWorkES1_EvT_S3_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx11GridSetDataD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull %i.b) #15
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit

_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit
  tail call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.e) #15
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit2

_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit2: ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx4GridESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN3gmx4GridES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN3gmx4GridD2Ev(ptr noundef nonnull align 8 dead_on_return(372) dereferenceable(372) %.05.i.i) #15
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 376 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN3gmx4GridES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !113

_ZSt8_DestroyIPN3gmx4GridES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !53
  br label %_ZSt8_DestroyIPN3gmx4GridES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN3gmx4GridES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN3gmx4GridES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN3gmx4GridES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN3gmx4GridESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN3gmx4GridES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #25
  br label %_ZNSt12_Vector_baseIN3gmx4GridESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN3gmx4GridESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3gmx4GridES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @_ZN3gmx20HostAllocationPolicyC2ENS_13PinningPolicyEb(ptr noundef nonnull align 4 dereferenceable(5), i32 noundef, i1 noundef zeroext) unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 4 dereferenceable(5), ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZN3gmx20HostAllocationPolicyC1ENS_13PinningPolicyEb(ptr noundef nonnull align 4 dereferenceable(5), i32 noundef, i1 noundef zeroext) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEEC2EOS4_RKS3_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(5) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %2, align 4
  store i64 %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.c = load i32, ptr %2, align 4, !tbaa !117
  %i.d = icmp eq i32 %i.c, %.sroa.0.0.extract.trunc
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load <2 x ptr>, ptr %i.e, align 8, !tbaa !60
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59
  store ptr %i.i, ptr %i.f, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = tail call noundef ptr @_ZNK3gmx20HostAllocationPolicy6mallocEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.p) #15 ; 11 uses
  %3 = ptrtoaddr ptr %i.q to i64
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !62
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  store ptr %i.q, ptr %i.b, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.t, align 8, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !59
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !60   ; 9 uses
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !60   ; 3 uses
  %.not12.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not12.i.i, label %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3gmx9AllocatorIiNS4_20HostAllocationPolicyEEEEEES2_S7_ET0_T_SB_SA_RT1_.exit, label %iter.check

iter.check:                                       ; preds = %bb.f
  %i.y = ptrtoaddr ptr %i.w to i64                ; 2 uses
  %i.z = ptrtoaddr ptr %i.x to i64
  %i.aa = add i64 %i.z, -4
  %i.ab = sub i64 %i.aa, %i.y                     ; 3 uses
  %i.ac = lshr i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ab, 28
  %i.ae = sub i64 %i.y, %3
  %diff.check = icmp ugt i64 %i.ae, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check22 = icmp ult i64 %i.ab, 124
  br i1 %min.iters.check22, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.ad, 24
  %n.vec = and i64 %i.ad, 9223372036854775776     ; 4 uses
  %i.ag = shl i64 %n.vec, 2                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.q, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.aj ; 4 uses
  %next.gep23 = getelementptr i8, ptr %i.w, i64 %i.aj ; 4 uses
  %i.ak = getelementptr i8, ptr %next.gep23, i64 32
  %i.al = getelementptr i8, ptr %next.gep23, i64 64
  %i.am = getelementptr i8, ptr %next.gep23, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep23, align 4, !tbaa !16
  %wide.load24 = load <8 x i32>, ptr %i.ak, align 4, !tbaa !16
  %wide.load25 = load <8 x i32>, ptr %i.al, align 4, !tbaa !16
  %wide.load26 = load <8 x i32>, ptr %i.am, align 4, !tbaa !16
  %i.an = getelementptr i8, ptr %next.gep, i64 32
  %i.ao = getelementptr i8, ptr %next.gep, i64 64
  %i.ap = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16
  store <8 x i32> %wide.load24, ptr %i.an, align 4, !tbaa !16
  store <8 x i32> %wide.load25, ptr %i.ao, align 4, !tbaa !16
  store <8 x i32> %wide.load26, ptr %i.ap, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3gmx9AllocatorIiNS4_20HostAllocationPolicyEEEEEES2_S7_ET0_T_SB_SA_RT1_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %i.ad, 9223372036854775800   ; 3 uses
  %i.ar = shl i64 %n.vec28, 2                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.q, i64 %i.ar   ; 2 uses
  %i.at = getelementptr i8, ptr %i.w, i64 %i.ar
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 2 uses
  %i.au = shl i64 %index29, 2                     ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.q, i64 %i.au
  %next.gep31 = getelementptr i8, ptr %i.w, i64 %i.au
  %wide.load32 = load <8 x i32>, ptr %next.gep31, align 4, !tbaa !16
  store <8 x i32> %wide.load32, ptr %next.gep30, align 4, !tbaa !16
  %index.next33 = add nuw i64 %index29, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next33, %n.vec28
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !115

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %i.ad, %n.vec28
  br i1 %cmp.n34, label %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3gmx9AllocatorIiNS4_20HostAllocationPolicyEEEEEES2_S7_ET0_T_SB_SA_RT1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.i.i.ph = phi ptr [ %i.q, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  %.sroa.010.013.i.i.ph = phi ptr [ %i.w, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.010.013.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.sroa.010.013.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.aw = load i32, ptr %.sroa.010.013.i.i, align 4, !tbaa !16
  store i32 %i.aw, ptr %.014.i.i, align 4, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 4 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.ax, %i.x
  br i1 %.not.i.i14, label %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3gmx9AllocatorIiNS4_20HostAllocationPolicyEEEEEES2_S7_ET0_T_SB_SA_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !116

_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3gmx9AllocatorIiNS4_20HostAllocationPolicyEEEEEES2_S7_ET0_T_SB_SA_RT1_.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.f
  %.0.lcssa.i.i = phi ptr [ %i.q, %bb.f ], [ %i.as, %vec.epilog.middle.block ], [ %i.ah, %middle.block ], [ %i.ay, %.lr.ph.i.i ]
  store ptr %.0.lcssa.i.i, ptr %i.t, align 8, !tbaa !63
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !63
  %.not.i.i15 = icmp eq ptr %i.az, %i.w
  br i1 %.not.i.i15, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE5clearEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3gmx9AllocatorIiNS4_20HostAllocationPolicyEEEEEES2_S7_ET0_T_SB_SA_RT1_.exit
  store ptr %i.w, ptr %i.k, align 8, !tbaa !63
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE5clearEv.exit

bb.h:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i16, label %_ZNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit, label %bb.i

_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE5clearEv.exit: ; preds = %bb.g, %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiN3gmx9AllocatorIiNS4_20HostAllocationPolicyEEEEEES2_S7_ET0_T_SB_SA_RT1_.exit, %bb.c, %bb.b
  ret void

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.bb) #15
  br label %_ZNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit

_ZNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.ba
}

; Function Attrs: nounwind
declare noundef ptr @_ZNK3gmx20HostAllocationPolicy6mallocEm(ptr noundef nonnull align 4 dereferenceable(5), i64 noundef) local_unnamed_addr #9

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZSt14__relocate_a_1IPN3gmx4GridES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat {
bb.a:
  %.not10 = icmp eq ptr %0, %1
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.cb, %.lr.ph ], [ %2, %bb.a ] ; 28 uses
  %.0911 = phi ptr [ %i.ca, %.lr.ph ], [ %0, %bb.a ] ; 30 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(372) %.012, ptr noundef nonnull align 8 dereferenceable(372) %.0911, i64 108, i1 false), !alias.scope !124
  %i.a = getelementptr inbounds nuw i8, ptr %.012, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %.0911, i64 112
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !123, !noalias !122
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !122, !noalias !123
  %i.d = getelementptr inbounds nuw i8, ptr %.012, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %.0911, i64 120 ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.e, align 8, !tbaa !60, !alias.scope !123, !noalias !122
  store <2 x ptr> %i.f, ptr %i.d, align 8, !tbaa !60, !alias.scope !122, !noalias !123
  %i.g = getelementptr inbounds nuw i8, ptr %.012, i64 136
  %i.h = getelementptr inbounds nuw i8, ptr %.0911, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59, !alias.scope !123, !noalias !122
  store ptr %i.i, ptr %i.g, align 8, !tbaa !59, !alias.scope !122, !noalias !123
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !alias.scope !123, !noalias !122
  %i.j = getelementptr inbounds nuw i8, ptr %.012, i64 144
  %i.k = getelementptr inbounds nuw i8, ptr %.0911, i64 144
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !123, !noalias !122
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !122, !noalias !123
  %i.m = getelementptr inbounds nuw i8, ptr %.012, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %.0911, i64 152 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24, !alias.scope !123, !noalias !122
  store ptr %i.o, ptr %i.m, align 8, !tbaa !24, !alias.scope !122, !noalias !123
  %i.p = getelementptr inbounds nuw i8, ptr %.012, i64 160
  %i.q = getelementptr inbounds nuw i8, ptr %.0911, i64 160
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63, !alias.scope !123, !noalias !122
  store ptr %i.r, ptr %i.p, align 8, !tbaa !63, !alias.scope !122, !noalias !123
  %i.s = getelementptr inbounds nuw i8, ptr %.012, i64 168
  %i.t = getelementptr inbounds nuw i8, ptr %.0911, i64 168
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !59, !alias.scope !123, !noalias !122
  store ptr %i.u, ptr %i.s, align 8, !tbaa !59, !alias.scope !122, !noalias !123
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false), !alias.scope !123, !noalias !122
  %i.v = getelementptr inbounds nuw i8, ptr %.012, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %.0911, i64 176 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57, !alias.scope !123, !noalias !122
  store ptr %i.x, ptr %i.v, align 8, !tbaa !57, !alias.scope !122, !noalias !123
  %i.y = getelementptr inbounds nuw i8, ptr %.012, i64 184
  %i.z = getelementptr inbounds nuw i8, ptr %.0911, i64 184
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !67, !alias.scope !123, !noalias !122
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !67, !alias.scope !122, !noalias !123
  %i.ab = getelementptr inbounds nuw i8, ptr %.012, i64 192
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911, i64 192
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58, !alias.scope !123, !noalias !122
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !58, !alias.scope !122, !noalias !123
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false), !alias.scope !123, !noalias !122
  %i.ae = getelementptr inbounds nuw i8, ptr %.012, i64 200
  %i.af = getelementptr inbounds nuw i8, ptr %.0911, i64 200 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !70, !alias.scope !123, !noalias !122
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !70, !alias.scope !122, !noalias !123
  %i.ah = getelementptr inbounds nuw i8, ptr %.012, i64 208
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911, i64 208
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125, !alias.scope !123, !noalias !122
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !125, !alias.scope !122, !noalias !123
  %i.ak = getelementptr inbounds nuw i8, ptr %.012, i64 216
  %i.al = getelementptr inbounds nuw i8, ptr %.0911, i64 216
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !71, !alias.scope !123, !noalias !122
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !71, !alias.scope !122, !noalias !123
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false), !alias.scope !123, !noalias !122
  %i.an = getelementptr inbounds nuw i8, ptr %.012, i64 224
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911, i64 224 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !74, !alias.scope !123, !noalias !122
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !74, !alias.scope !122, !noalias !123
  %i.aq = getelementptr inbounds nuw i8, ptr %.012, i64 232
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911, i64 232
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !126, !alias.scope !123, !noalias !122
end_hunk_0
begin_hunk_1_@_ZN3gmx7GridSet17setLocalAtomOrderEv:bb.a
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.026.unr = phi i32 [ %.026.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ce, %vec.epilog.scalar.ph.prol ]
  %i.cf = sub i32 %.026.ph, %i.aq
  %i.cg = icmp ugt i32 %i.cf, -4
  br i1 %i.cg, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next31.lcssa = phi i64 [ %i.bt, %vec.epilog.middle.block ], [ %i.bj, %middle.block ], [ %indvars.iv.next31.lcssa71.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next31.3, %vec.epilog.scalar.ph ]
  %i.ch = trunc nsw i64 %indvars.iv.next31.lcssa to i32
  %.pre = load i32, ptr %i.g, align 8, !tbaa !16
  %.pre38 = load i32, ptr %i.h, align 4, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %i.ci = phi i32 [ %i.an, %bb.g ], [ %.pre38, %._crit_edge.loopexit ] ; 2 uses
  %i.cj = phi i32 [ %i.ao, %bb.g ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.02327, %bb.g ], [ %i.ch, %._crit_edge.loopexit ]
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.ck = mul nsw i32 %i.ci, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = icmp slt i64 %indvars.iv.next36, %i.cl
  br i1 %i.cm, label %bb.g, label %.loopexit, !llvm.loop !137

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv30 = phi i64 [ %indvars.iv.next31.3, %vec.epilog.scalar.ph ], [ %indvars.iv30.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %.026 = phi i32 [ %i.dd, %vec.epilog.scalar.ph ], [ %.026.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  %i.co = trunc nsw i64 %indvars.iv30 to i32
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !16
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv30
  %i.cq = trunc nsw i64 %indvars.iv to i32
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !16
  %indvars.iv.next31 = add nsw i64 %indvars.iv30, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next
  %i.cs = trunc nsw i64 %indvars.iv.next31 to i32
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !16
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next31
  %i.cu = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !16
  %indvars.iv.next31.1 = add nsw i64 %indvars.iv30, 2 ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.1
  %i.cw = trunc nsw i64 %indvars.iv.next31.1 to i32
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !16
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next31.1
  %i.cy = trunc nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !16
  %indvars.iv.next31.2 = add nsw i64 %indvars.iv30, 3 ; 2 uses
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.2
  %i.da = trunc nsw i64 %indvars.iv.next31.2 to i32
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !16
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next31.2
  %i.dc = trunc nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !16
  %indvars.iv.next31.3 = add nsw i64 %indvars.iv30, 4 ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %i.dd = add nuw nsw i32 %.026, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.dd, %i.aq
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !138

.loopexit:                                        ; preds = %._crit_edge, %.preheader, %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit
  ret void
}

declare noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmx7GridSet17setLocalAtomOrderEv.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %2, ptr nofree noundef readonly captures(none) %3) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.f = load i32, ptr %i.e, align 8, !tbaa !100
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !101
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = add nsw i32 %i.i, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 %i.k, ptr %i.b, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 1, ptr %i.c, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 0, ptr %i.d, align 4, !tbaa !16
  %i.l = load i32, ptr %0, align 4, !tbaa !16     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.l, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.m = load i32, ptr %i.b, align 4, !tbaa !16
  %i.n = call i32 @llvm.smin.i32(i32 %i.m, i32 %i.k) ; 2 uses
  store i32 %i.n, ptr %i.b, align 4, !tbaa !16
  %i.o = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %.not17 = icmp sgt i32 %i.o, %i.n
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24
  %i.t = sext i32 %i.o to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.v = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  store i32 %i.v, ptr %i.u, align 4, !tbaa !16
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  store i32 %i.v, ptr %i.w, align 4, !tbaa !16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.x = load i32, ptr %i.b, align 4, !tbaa !16
  %i.y = sext i32 %i.x to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.y
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #15

; Function Attrs: nounwind
declare !callback !103 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63   ; 5 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !24   ; 9 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.e
  %i.m = ashr exact i64 %i.l, 2                   ; 2 uses
  %i.n = icmp ult i64 %i.h, 2305843009213693952
  tail call void @llvm.assume(i1 %i.n)
  %i.o = xor i64 %i.h, 2305843009213693951        ; 2 uses
  %i.p = icmp ule i64 %i.m, %i.o
  tail call void @llvm.assume(i1 %i.p)
  %.not23 = icmp ult i64 %i.m, %1
  br i1 %.not23, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit

_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit: ; preds = %bb.b
  %i.q = shl nuw nsw i64 %1, 2                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.c, i8 0, i64 %i.q, i1 false), !tbaa !16
  %scevgep.i = getelementptr i8, ptr %i.c, i64 %i.q
  store ptr %scevgep.i, ptr %i.b, align 8, !tbaa !63
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.o, %1
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
  unreachable

_ZNKSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %1)
  %i.s = add nuw nsw i64 %.sroa.speculated.i, %i.h
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 2305843009213693951) ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = tail call noundef ptr @_ZNK3gmx20HostAllocationPolicy6mallocEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.u) #15 ; 10 uses
  %2 = ptrtoaddr ptr %i.v to i64
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.e, label %_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit28

bb.e:                                             ; preds = %_ZNKSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE12_M_check_lenEmPKc.exit
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !62
  tail call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit28: ; preds = %_ZNKSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.g ; 2 uses
  %i.z = shl nuw nsw i64 %1, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.z, i1 false), !tbaa !16
  %.not10.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit, label %iter.check

iter.check:                                       ; preds = %_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit28
  %i.aa = add i64 %i.e, -4
  %i.ab = sub i64 %i.aa, %i.f                     ; 3 uses
  %i.ac = lshr i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ab, 28
  %i.ae = sub i64 %i.f, %2
  %diff.check = icmp ugt i64 %i.ae, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check33 = icmp ult i64 %i.ab, 124
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.ad, 24
  %n.vec = and i64 %i.ad, 9223372036854775776     ; 4 uses
  %i.ag = shl i64 %n.vec, 2                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.v, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.d, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.aj ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.d, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.ak = getelementptr i8, ptr %next.gep34, i64 32
  %i.al = getelementptr i8, ptr %next.gep34, i64 64
  %i.am = getelementptr i8, ptr %next.gep34, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep34, align 4, !tbaa !16, !alias.scope !148, !noalias !147
  %wide.load35 = load <8 x i32>, ptr %i.ak, align 4, !tbaa !16, !alias.scope !148, !noalias !147
  %wide.load36 = load <8 x i32>, ptr %i.al, align 4, !tbaa !16, !alias.scope !148, !noalias !147
  %wide.load37 = load <8 x i32>, ptr %i.am, align 4, !tbaa !16, !alias.scope !148, !noalias !147
  %i.an = getelementptr i8, ptr %next.gep, i64 32
  %i.ao = getelementptr i8, ptr %next.gep, i64 64
  %i.ap = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16, !alias.scope !147, !noalias !148
  store <8 x i32> %wide.load35, ptr %i.an, align 4, !tbaa !16, !alias.scope !147, !noalias !148
  store <8 x i32> %wide.load36, ptr %i.ao, align 4, !tbaa !16, !alias.scope !147, !noalias !148
  store <8 x i32> %wide.load37, ptr %i.ap, align 4, !tbaa !16, !alias.scope !147, !noalias !148
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.ad, 9223372036854775800   ; 3 uses
  %i.ar = shl i64 %n.vec39, 2                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.v, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.d, i64 %i.ar
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 2 uses
  %i.au = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.v, i64 %i.au
  %next.gep42 = getelementptr i8, ptr %i.d, i64 %i.au
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %wide.load43 = load <8 x i32>, ptr %next.gep42, align 4, !tbaa !16, !alias.scope !148, !noalias !147
  store <8 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !16, !alias.scope !147, !noalias !148
  %index.next44 = add nuw i64 %index40, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !145

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %i.ad, %n.vec39
  br i1 %cmp.n45, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.aw = load i32, ptr %.0911.i.i.i, align 4, !tbaa !16, !alias.scope !148, !noalias !147
  store i32 %i.aw, ptr %.012.i.i.i, align 4, !tbaa !16, !alias.scope !147, !noalias !148
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.ax, %i.c
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !146

_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit28
  %.not.i29 = icmp eq ptr %i.d, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE13_M_deallocateEPim.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit
  tail call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.d) #15
  br label %_ZNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit, %bb.f
  store ptr %i.v, ptr %i.a, align 8, !tbaa !24
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.az, ptr %i.b, align 8, !tbaa !63
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ba, ptr %i.i, align 8, !tbaa !59
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit, %_ZNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx7GridSet9putOnGridEPA3_KfiPS1_S4_PKNS_15UpdateGroupsCogENS_5RangeIiEEifNS_8ArrayRefIKiEENSA_IKNS_11BasicVectorIfEEEEPSB_PNS_16nbnxn_atomdata_tE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 %6, i32 noundef %7, float noundef %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.32") align 8 captures(none) %9, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.35") align 8 captures(none) %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 7 uses
  %13 = alloca %"class.gmx::ArrayRef.35", align 8 ; 7 uses
  %14 = alloca %"class.gmx::ArrayRef.32", align 8 ; 3 uses
  %15 = alloca %"class.gmx::ArrayRef.35", align 8 ; 3 uses
  %.sroa.083.0.extract.trunc = trunc i64 %6 to i32
  %.sroa.4.0.extract.shift = lshr i64 %6, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  store float %8, ptr %i.a, align 4, !tbaa !152
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 125
  %i.c = load i8, ptr %i.b, align 1, !tbaa !46, !range !50, !noundef !51
  %i.d = trunc nuw i8 %i.c to i1
  %.not = xor i1 %i.d, true
  %i.e = icmp eq i32 %2, 0                        ; 3 uses
  %or.cond = or i1 %i.e, %.not
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !range !50
  %i.h = trunc nuw i8 %i.g to i1                  ; 4 uses
  %or.cond62 = select i1 %or.cond, i1 true, i1 %i.h
  br i1 %or.cond62, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx7GridSet9putOnGridEPA3_KfiPS1_S4_PKNS_15UpdateGroupsCogENS_5RangeIiEEifNS_8ArrayRefIKiEENSA_IKNS_11BasicVectorIfEEEEPSB_PNS_16nbnxn_atomdata_tEENK3$_0clEv", ptr noundef nonnull @.str.7, i32 noundef 199) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %or.cond3 = or i1 %i.e, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %2, %i.j
  %or.cond97 = select i1 %or.cond3, i1 true, i1 %i.k
  br i1 %or.cond97, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx7GridSet9putOnGridEPA3_KfiPS1_S4_PKNS_15UpdateGroupsCogENS_5RangeIiEEifNS_8ArrayRefIKiEENSA_IKNS_11BasicVectorIfEEEEPSB_PNS_16nbnxn_atomdata_tEENK3$_0clEv", ptr noundef nonnull @.str.7, i32 noundef 202) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = add i32 %2, 1                            ; 4 uses
  store i32 %i.l, ptr %i.i, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = sext i32 %2 to i64
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !53   ; 3 uses
  %i.p = getelementptr [376 x i8], ptr %i.o, i64 %i.n ; 6 uses
  br i1 %i.e, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.r = load float, ptr %1, align 4, !tbaa !152
  store float %i.r, ptr %i.q, align 4, !tbaa !152
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !152
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float %i.t, ptr %i.u, align 8, !tbaa !152
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !152
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %i.w, ptr %i.x, align 4, !tbaa !152
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aa = load float, ptr %i.y, align 4, !tbaa !152
  store float %i.aa, ptr %i.z, align 8, !tbaa !152
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !152
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float %i.ac, ptr %i.ad, align 4, !tbaa !152
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.af = load float, ptr %i.ae, align 4, !tbaa !152
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  store float %i.af, ptr %i.ag, align 8, !tbaa !152
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.aj = load float, ptr %i.ah, align 4, !tbaa !152
  store float %i.aj, ptr %i.ai, align 4, !tbaa !152
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.al = load float, ptr %i.ak, align 4, !tbaa !152
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 160
  store float %i.al, ptr %i.am, align 8, !tbaa !152
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load float, ptr %i.an, align 4, !tbaa !152
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 164
  store float %i.ao, ptr %i.ap, align 4, !tbaa !152
  %.not57 = icmp eq ptr %5, null
  br i1 %.not57, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_1
