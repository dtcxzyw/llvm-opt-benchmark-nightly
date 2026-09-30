Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/phonenumber?download=true
inline.NumInlined: 97
inline.NumDeleted: 59
begin_hunk_0_@_ZN4i18n12phonenumbers13ExactlySameAsERKNS0_11PhoneNumberES3_:bb.a
  br i1 %i.be, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = load i32, ptr %i.a, align 8, !tbaa !9
  %i.bg = load i32, ptr %i.c, align 8, !tbaa !9
  %i.bh = xor i32 %i.bg, %i.bf                    ; 2 uses
  %i.bi = and i32 %i.bh, 64
  %.not54 = icmp eq i32 %i.bi, 0
  br i1 %.not54, label %bb.j, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !19
  %.not42 = icmp eq i32 %i.bk, %i.bm
  %i.bn = and i32 %i.bh, 4
  %.not55 = icmp eq i32 %i.bn, 0
  %or.cond64 = and i1 %.not42, %.not55
  br i1 %or.cond64, label %bb.k, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !12
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = and i64 %i.bq, -4
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !12
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = and i64 %i.bv, -4
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = tail call noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.bx) #4
  %not. = xor i1 %i.by, true
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.d, %bb.k, %bb.i, %bb.j, %bb.h, %bb.g, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread44, %bb.f, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.g ], [ false, %bb.a ], [ %not., %bb.k ], [ false, %bb.d ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread44 ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.b ], [ false, %bb.c ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %bb.f ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !18
  %i.h = load ptr, ptr %0, align 8, !tbaa !18
  %bcmp.i = tail call i32 @bcmp(ptr %i.h, ptr %i.g, i64 %i.b)
  %i.i = icmp ne i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ true, %bb.a ], [ %i.i, %bb.c ], [ false, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4i18n12phonenumbers13ExactlySameAsERKNS0_15PhoneNumberDescES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %i.e = xor i32 %i.d, %i.b                       ; 3 uses
  %i.f = trunc i32 %i.e to i1
  br i1 %i.f, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, -4
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, -4
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !17   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.v = icmp eq i64 %i.r, 0
  br i1 %i.v, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread37, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !18
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.x, ptr %i.w, i64 %i.r)
  %i.y = and i32 %i.e, 2
  %i.z = or i32 %bcmp.i.i, %i.y
  %or.cond = icmp eq i32 %i.z, 0
  br i1 %or.cond, label %bb.d, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread37: ; preds = %bb.c
  %.old = and i32 %i.e, 2
  %.not41.old = icmp eq i32 %.old, 0
  br i1 %.not41.old, label %bb.d, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.d:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread37
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !12
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = and i64 %i.ac, -4
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !12
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = and i64 %i.ah, -4
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !17 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !17
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %bb.e, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ap = icmp eq i64 %i.al, 0
  br i1 %i.ap, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit36.thread38, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit36

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit36: ; preds = %bb.e
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !18
  %bcmp.i.i35 = tail call i32 @bcmp(ptr %i.ar, ptr %i.aq, i64 %i.al)
  %.not42 = icmp eq i32 %bcmp.i.i35, 0
  br i1 %.not42, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit36.thread38, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit36.thread38: ; preds = %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit36
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !25 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !25
  %.not = icmp eq i32 %i.at, %i.av
  br i1 %.not, label %.preheader43, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

.preheader43:                                     ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit36.thread38
  %i.aw = icmp sgt i32 %i.at, 0
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader43
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !26
  %wide.trip.count = zext nneg i32 %i.at to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !22

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !9
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !9
  %.not32 = icmp eq i32 %i.bc, %i.be
  br i1 %.not32, label %bb.f, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

._crit_edge:                                      ; preds = %bb.f, %.preheader43
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !25 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !25
  %.not33 = icmp eq i32 %i.bg, %i.bi
  br i1 %.not33, label %.preheader, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

.preheader:                                       ; preds = %._crit_edge
  %i.bj = icmp slt i32 %i.bg, 1
  br i1 %i.bj, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %.lr.ph47

.lr.ph47:                                         ; preds = %.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !26
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !26
  %wide.trip.count56 = zext nneg i32 %i.bg to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph47
  %indvars.iv53 = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next54, %bb.h ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv53
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !9
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv53
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !9
  %.not34 = icmp eq i32 %i.bp, %i.br              ; 2 uses
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp ne i64 %indvars.iv.next54, %wide.trip.count56
  %or.cond63.not = select i1 %.not34, i1 %exitcond57.not, i1 false
  br i1 %or.cond63.not, label %bb.h, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, !llvm.loop !23

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.g, %bb.h, %.preheader, %bb.d, %bb.b, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit36.thread38, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread37, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit36, %bb.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread37 ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit36.thread38 ], [ false, %._crit_edge ], [ false, %bb.d ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit36 ], [ true, %.preheader ], [ %.not34, %bb.h ], [ false, %bb.g ]
  ret i1 %.2
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"_ZTSN6google8protobuf8internal15TaggedStringPtrE", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !15, i64 8, !5, i64 16}
!17 = !{!16, !15, i64 8}
!18 = !{!16, !13, i64 0}
!19 = !{!5, !5, i64 0}
!20 = !{i8 0, i8 2}
!21 = !{}
!22 = distinct !{!22, !27}
!23 = distinct !{!23, !27}
!24 = !{!"_ZTSN6google8protobuf13RepeatedFieldIiEE", !6, i64 0, !6, i64 4, !10, i64 8}
!25 = !{!24, !6, i64 0}
!26 = !{!24, !10, i64 8}
!27 = !{!"llvm.loop.mustprogress"}
end_hunk_0
