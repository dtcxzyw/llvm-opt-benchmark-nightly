inline.NumInlined: 2273
inline.NumDeleted: 502
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN12_GLOBAL__N_122AllocateCTestResourcesINS_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS8_ESaISt4pairIKS8_SA_EEERKSt6vectorIS8_SaIS8_EEmRSK_IP26cmCTestBinPackerAllocationSaISQ_EE:bb.a
  %i.fe = getelementptr inbounds nuw [32 x i8], ptr %i.ez, i64 %.041197
  %i.ff = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.fe) ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !66
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !68
  %i.fj = sub i32 %i.fg, %i.fi
  %i.fk = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.fl = load ptr, ptr %1, align 8, !tbaa !36    ; 3 uses
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = ashr exact i64 %i.fo, 5                 ; 2 uses
  %i.fq = add nuw i64 %.041197, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.fp, i64 %i.fq)
  %i.fr = add i64 %umax, -1                       ; 2 uses
  %exitcond.not339 = icmp eq i64 %.041197, %i.fr
  br i1 %exitcond.not339, label %.critedge50, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61.preheader

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61.preheader: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit
  %i.fs = load ptr, ptr %i.l, align 8, !tbaa !71  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.fs, null
  br label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61

bb.z:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_.exit
  %exitcond.not = icmp eq i64 %i.ft, %i.fr
  br i1 %exitcond.not, label %.critedge50, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61, !llvm.loop !81

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61.preheader, %bb.z
  %.in = phi i64 [ %i.ft, %bb.z ], [ %.041197, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61.preheader ]
  %i.ft = add nuw i64 %.in, 1                     ; 5 uses
  br i1 %.not10.i.i.i.i, label %.critedge.i63, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61
  %i.fu = getelementptr inbounds nuw [32 x i8], ptr %i.fl, i64 %i.ft ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !17 ; 4 uses
  %i.fx = load ptr, ptr %i.fu, align 8            ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.fs, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !17 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.fw, i64 %i.fz) ; 2 uses
  %i.ga = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.ga, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !18
  %i.gd = call i32 @memcmp(ptr noundef %i.gc, ptr noundef %i.fx, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.gd, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.aa
  %i.ge = sub i64 %i.fz, %i.fw
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ge, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.gd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.gf = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.gf, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.gf, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i.i62 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i62, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.i, label %bb.aa, !llvm.loop !80

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.gg = icmp eq ptr %.19.i.i.i.i, %i.r
  br i1 %i.gg, label %.critedge.i63, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !17 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gi, i64 %i.fw) ; 2 uses
  %i.gj = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.gj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.ab
  %i.gk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !18
  %i.gm = call i32 @memcmp(ptr noundef %i.fx, ptr noundef %i.gl, i64 noundef %.sroa.speculated.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i3.i = icmp eq i32 %i.gm, 0
  br i1 %.not.i.i.i3.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.ab
  %i.gn = sub i64 %i.fw, %i.gi
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.gn, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.gm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.go = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.go, label %.critedge.i63, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_.exit

.critedge.i63:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.i, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61
  call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.2) #22
  unreachable

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !66
  %i.gr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 68
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !68
  %i.gt = sub i32 %i.gq, %i.gs
  %i.gu = icmp eq i32 %i.gt, %i.fj
  br i1 %i.gu, label %bb.z, label %.critedge, !llvm.loop !81

.critedge:                                        ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_.exit
  %i.gv = icmp ult i64 %i.ft, %i.fp
  br i1 %i.gv, label %bb.b, label %.critedge50, !llvm.loop !82

.critedge50:                                      ; preds = %.critedge, %bb.c, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit, %bb.z, %bb.a
  %.lcssa170 = phi i1 [ false, %bb.a ], [ false, %bb.z ], [ true, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit ], [ true, %bb.c ], [ false, %.critedge ], [ false, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit ]
  ret i1 %.lcssa170
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !18 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !53
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !54

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !36
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #25
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt21__inplace_stable_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %0, ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %3 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %4 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %5 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %6 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %7 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8 ; 4 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.f, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -8 ; 4 uses
  %.not12.i = icmp eq ptr %i.g, %.sroa.0.0.copyload.i2.i
  br i1 %.not12.i, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.f
  %.sroa.07.013.i = phi ptr [ %i.h, %bb.f ], [ %i.g, %bb.c ] ; 6 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.07.013.i, i64 -8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.k = getelementptr i8, ptr %i.i, i64 8
  %.val.i.i = load i32, ptr %i.k, align 8, !tbaa !16 ; 3 uses
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.val1.i.i = load i32, ptr %i.l, align 8, !tbaa !16
  %i.m = icmp slt i32 %.val.i.i, %.val1.i.i
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.n = ptrtoint ptr %.sroa.07.013.i to i64
  %i.o = sub i64 %i.a, %i.n                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull align 8 %.sroa.07.013.i, i64 %i.o, i1 false), !tbaa !30, !noalias !83
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %bb.d
  store ptr %i.i, ptr %i.g, align 8, !tbaa !30
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %.sroa.07.013.i, align 8, !tbaa !30 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val2.i7.i.i = load i32, ptr %i.r, align 8, !tbaa !16
  %i.s = icmp slt i32 %.val.i.i, %.val2.i7.i.i
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.t = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.q, %bb.e ]
  %.pn8.i.i = phi ptr [ %.sroa.02.0.i.i, %.lr.ph.i.i ], [ %.sroa.07.013.i, %bb.e ] ; 2 uses
  %.sroa.02.0.i.i = getelementptr inbounds nuw i8, ptr %.pn8.i.i, i64 8 ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.pn8.i.i, i64 -8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !30
  %i.v = load ptr, ptr %.sroa.02.0.i.i, align 8, !tbaa !30 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val2.i.i.i = load i32, ptr %i.w, align 8, !tbaa !16
  %i.x = icmp slt i32 %.val.i.i, %.val2.i.i.i
  br i1 %i.x, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i, !llvm.loop !94

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.e
  %.pre-phi.i.i = phi ptr [ %.sroa.07.013.i, %bb.e ], [ %.sroa.02.0.i.i, %.lr.ph.i.i ]
  %i.y = getelementptr inbounds i8, ptr %.pre-phi.i.i, i64 -8
  store ptr %i.i, ptr %i.y, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i
  %.not.i = icmp eq ptr %i.h, %.sroa.0.0.copyload.i2.i
  br i1 %.not.i, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit, label %.lr.ph.i, !llvm.loop !95

bb.g:                                             ; preds = %bb.a
  %i.z = lshr i64 %i.d, 1
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.aa
  store i64 %i.a, ptr %2, align 8, !tbaa !26
  %i.ac = ptrtoint ptr %i.ab to i64               ; 5 uses
  store i64 %i.ac, ptr %3, align 8, !tbaa !26
  call fastcc void @_ZSt21__inplace_stable_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_(ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3)
  store i64 %i.ac, ptr %4, align 8, !tbaa !26
  %i.ad = load i64, ptr %1, align 8, !tbaa !26
  store i64 %i.ad, ptr %5, align 8, !tbaa !26
  call fastcc void @_ZSt21__inplace_stable_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_(ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5)
  %i.ae = load i64, ptr %0, align 8, !tbaa !26    ; 2 uses
  store i64 %i.ae, ptr %6, align 8, !tbaa !26
  %i.af = load i64, ptr %1, align 8, !tbaa !26    ; 2 uses
  store i64 %i.af, ptr %7, align 8, !tbaa !26
  %i.ag = sub i64 %i.ae, %i.ac
  %i.ah = ashr exact i64 %i.ag, 3
  %i.ai = sub i64 %i.ac, %i.af
  %i.aj = ashr exact i64 %i.ai, 3
  call fastcc void @_ZSt22__merge_without_bufferISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_S13_T0_S14_T1_(ptr noundef align 8 dead_on_return %6, i64 %i.ac, ptr noundef align 8 dead_on_return %7, i64 noundef %i.ah, i64 noundef %i.aj)
  br label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit: ; preds = %bb.f, %bb.c, %bb.b, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt29__stable_sort_adaptive_resizeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_lNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_T2_(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %0, ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %1, ptr noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %6 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %7 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %8 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %9 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %10 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %11 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %12 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %13 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 4 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64 ; 4 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 3 uses
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.g ; 2 uses
  %i.i = icmp sgt i64 %i.f, %3
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.a, ptr %8, align 8, !tbaa !26
  %i.j = ptrtoint ptr %i.h to i64                 ; 5 uses
  store i64 %i.j, ptr %9, align 8, !tbaa !26
  call fastcc void @_ZSt29__stable_sort_adaptive_resizeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_lNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_T2_(ptr noundef align 8 dead_on_return %8, ptr noundef align 8 dead_on_return %9, ptr noundef %2, i64 noundef %3)
  store i64 %i.j, ptr %10, align 8, !tbaa !26
  %i.k = load i64, ptr %1, align 8, !tbaa !26
  store i64 %i.k, ptr %11, align 8, !tbaa !26
  call fastcc void @_ZSt29__stable_sort_adaptive_resizeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_lNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_T2_(ptr noundef align 8 dead_on_return %10, ptr noundef align 8 dead_on_return %11, ptr noundef %2, i64 noundef %3)
  %i.l = load i64, ptr %0, align 8, !tbaa !26     ; 2 uses
  store i64 %i.l, ptr %12, align 8, !tbaa !26
  %i.m = load i64, ptr %1, align 8, !tbaa !26     ; 2 uses
  store i64 %i.m, ptr %13, align 8, !tbaa !26
  %i.n = sub i64 %i.l, %i.j
  %i.o = ashr exact i64 %i.n, 3
  %i.p = sub i64 %i.j, %i.m
  %i.q = ashr exact i64 %i.p, 3
  call fastcc void @_ZSt23__merge_adaptive_resizeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElS5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_S13_T0_S14_T1_S14_T2_(ptr noundef align 8 dead_on_return %12, i64 %i.j, ptr noundef align 8 dead_on_return %13, i64 noundef %i.o, i64 noundef %i.q, ptr noundef %2, i64 noundef %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = ptrtoint ptr %i.h to i64                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %i.a, ptr %4, align 8, !tbaa !26
  store i64 %i.r, ptr %5, align 8, !tbaa !26
  call fastcc void @_ZSt24__merge_sort_with_bufferISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_(ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef %2)
  store i64 %i.r, ptr %6, align 8, !tbaa !26
  store i64 %i.b, ptr %7, align 8, !tbaa !26
  call fastcc void @_ZSt24__merge_sort_with_bufferISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_(ptr noundef align 8 dead_on_return %6, ptr noundef align 8 dead_on_return %7, ptr noundef %2)
  %i.s = sub i64 %i.r, %i.b
  %i.t = ashr exact i64 %i.s, 3
  tail call fastcc void @_ZSt16__merge_adaptiveISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElS5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_S13_T0_S14_T1_T2_(i64 %i.a, i64 %i.r, i64 %i.b, i64 noundef %i.f, i64 noundef %i.t, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt24__merge_sort_with_bufferISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %0, ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %1, ptr noundef %2) unnamed_addr #11 {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8 ; 4 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 7 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64 ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c ; 3 uses
  %i.f = icmp sgt i64 %i.c, 48
  br i1 %i.f, label %.lr.ph.i.preheader.i, label %._crit_edge.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit.i
  %i.g = phi i64 [ %i.co, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit.i ], [ %i.a, %bb.a ] ; 7 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 8 uses
  %.ptr38.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 13 uses
  %scevgep.i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 7 uses
  %i.i = load ptr, ptr %scevgep.i.i, align 8, !tbaa !30 ; 3 uses
  %i.j = load ptr, ptr %.ptr38.i, align 8, !tbaa !30
  %i.k = getelementptr i8, ptr %i.i, i64 8
  %.val.i.i.i = load i32, ptr %i.k, align 8, !tbaa !16 ; 2 uses
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.val1.i.i.i = load i32, ptr %i.l, align 8, !tbaa !16 ; 2 uses
  %i.m = icmp slt i32 %.val.i.i.i, %.val1.i.i.i
  br i1 %i.m, label %bb.b, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.preheader.i
  %i.n = ptrtoint ptr %.ptr38.i to i64
  %i.o = sub i64 %i.g, %i.n                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.preheader.i.i, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i

.lr.ph.i.i.i.i.i.preheader.i.i:                   ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %scevgep.i.i, ptr nonnull align 8 %.ptr38.i, i64 %i.o, i1 false), !tbaa !30, !noalias !96
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i, %bb.b
  store ptr %i.i, ptr %.ptr38.i, align 8, !tbaa !30
  br label %.lr.ph.i.i.1

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.preheader.i
  %i.q = getelementptr inbounds i8, ptr %i.h, i64 -16
  store ptr %i.i, ptr %i.q, align 8, !tbaa !30
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i
  %.val1.i.i.i.1 = phi i32 [ %.val1.i.i.i, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i ], [ %.val.i.i.i, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i ]
  %scevgep.i.i.1 = getelementptr inbounds i8, ptr %i.h, i64 -24 ; 7 uses
  %i.r = load ptr, ptr %scevgep.i.i.1, align 8, !tbaa !30 ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val.i.i.i.1 = load i32, ptr %i.s, align 8, !tbaa !16 ; 4 uses
  %i.t = icmp slt i32 %.val.i.i.i.1, %.val1.i.i.i.1
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.1
  %i.u = load ptr, ptr %scevgep.i.i, align 8, !tbaa !30 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val2.i7.i.i.i.1 = load i32, ptr %i.v, align 8, !tbaa !16
  %i.w = icmp slt i32 %.val.i.i.i.1, %.val2.i7.i.i.i.1
  br i1 %i.w, label %.lr.ph.i.i.i.1, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.c, %.lr.ph.i.i.i.1
  %i.x = phi ptr [ %i.z, %.lr.ph.i.i.i.1 ], [ %i.u, %bb.c ]
  %.pn8.i.i.i.1 = phi ptr [ %.sroa.02.0.i.i.i.1, %.lr.ph.i.i.i.1 ], [ %scevgep.i.i, %bb.c ] ; 2 uses
  %.sroa.02.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.pn8.i.i.i.1, i64 8 ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %.pn8.i.i.i.1, i64 -8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !30
  %i.z = load ptr, ptr %.sroa.02.0.i.i.i.1, align 8, !tbaa !30 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val2.i.i.i.i.1 = load i32, ptr %i.aa, align 8, !tbaa !16
  %i.ab = icmp slt i32 %.val.i.i.i.1, %.val2.i.i.i.i.1
  br i1 %i.ab, label %.lr.ph.i.i.i.1, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.1, !llvm.loop !94

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.1: ; preds = %.lr.ph.i.i.i.1, %bb.c
  %.pre-phi.i.i.i.1 = phi ptr [ %scevgep.i.i, %bb.c ], [ %.sroa.02.0.i.i.i.1, %.lr.ph.i.i.i.1 ]
  %i.ac = getelementptr inbounds i8, ptr %.pre-phi.i.i.i.1, i64 -8
  store ptr %i.r, ptr %i.ac, align 8, !tbaa !30
  %.pre = load ptr, ptr %.ptr38.i, align 8, !tbaa !30
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 8
  %.val1.i.i.i.2.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %.lr.ph.i.i.2

bb.d:                                             ; preds = %.lr.ph.i.i.1
  %i.ad = ptrtoint ptr %scevgep.i.i to i64
  %i.ae = sub i64 %i.g, %i.ad                     ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.preheader.i.i.1, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.1

.lr.ph.i.i.i.i.i.preheader.i.i.1:                 ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %scevgep.i.i.1, ptr nonnull align 8 %scevgep.i.i, i64 %i.ae, i1 false), !tbaa !30, !noalias !96
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.1

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.1, %bb.d
  store ptr %i.r, ptr %.ptr38.i, align 8, !tbaa !30
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.1, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.1
  %.val1.i.i.i.2 = phi i32 [ %.val.i.i.i.1, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.1 ], [ %.val1.i.i.i.2.pre, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.1 ]
  %scevgep.i.i.2 = getelementptr inbounds i8, ptr %i.h, i64 -32 ; 7 uses
  %i.ag = load ptr, ptr %scevgep.i.i.2, align 8, !tbaa !30 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i.i.i.2 = load i32, ptr %i.ah, align 8, !tbaa !16 ; 4 uses
  %i.ai = icmp slt i32 %.val.i.i.i.2, %.val1.i.i.i.2
  br i1 %i.ai, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.2
  %i.aj = load ptr, ptr %scevgep.i.i.1, align 8, !tbaa !30 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %.val2.i7.i.i.i.2 = load i32, ptr %i.ak, align 8, !tbaa !16
  %i.al = icmp slt i32 %.val.i.i.i.2, %.val2.i7.i.i.i.2
  br i1 %i.al, label %.lr.ph.i.i.i.2, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.e, %.lr.ph.i.i.i.2
  %i.am = phi ptr [ %i.ao, %.lr.ph.i.i.i.2 ], [ %i.aj, %bb.e ]
  %.pn8.i.i.i.2 = phi ptr [ %.sroa.02.0.i.i.i.2, %.lr.ph.i.i.i.2 ], [ %scevgep.i.i.1, %bb.e ] ; 2 uses
  %.sroa.02.0.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.pn8.i.i.i.2, i64 8 ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %.pn8.i.i.i.2, i64 -8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !30
  %i.ao = load ptr, ptr %.sroa.02.0.i.i.i.2, align 8, !tbaa !30 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val2.i.i.i.i.2 = load i32, ptr %i.ap, align 8, !tbaa !16
  %i.aq = icmp slt i32 %.val.i.i.i.2, %.val2.i.i.i.i.2
  br i1 %i.aq, label %.lr.ph.i.i.i.2, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.2, !llvm.loop !94

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.2: ; preds = %.lr.ph.i.i.i.2, %bb.e
  %.pre-phi.i.i.i.2 = phi ptr [ %scevgep.i.i.1, %bb.e ], [ %.sroa.02.0.i.i.i.2, %.lr.ph.i.i.i.2 ]
  %i.ar = getelementptr inbounds i8, ptr %.pre-phi.i.i.i.2, i64 -8
  store ptr %i.ag, ptr %i.ar, align 8, !tbaa !30
  %.pre66 = load ptr, ptr %.ptr38.i, align 8, !tbaa !30
  %.phi.trans.insert67 = getelementptr i8, ptr %.pre66, i64 8
  %.val1.i.i.i.3.pre = load i32, ptr %.phi.trans.insert67, align 8, !tbaa !16
  br label %.lr.ph.i.i.3

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.as = ptrtoint ptr %scevgep.i.i.1 to i64
  %i.at = sub i64 %i.g, %i.as                     ; 2 uses
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.preheader.i.i.2, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.2

.lr.ph.i.i.i.i.i.preheader.i.i.2:                 ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %scevgep.i.i.2, ptr nonnull align 8 %scevgep.i.i.1, i64 %i.at, i1 false), !tbaa !30, !noalias !96
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.2

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.2, %bb.f
  store ptr %i.ag, ptr %.ptr38.i, align 8, !tbaa !30
  br label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.2, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.2
  %.val1.i.i.i.3 = phi i32 [ %.val.i.i.i.2, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.2 ], [ %.val1.i.i.i.3.pre, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.2 ]
  %scevgep.i.i.3 = getelementptr inbounds i8, ptr %i.h, i64 -40 ; 7 uses
  %i.av = load ptr, ptr %scevgep.i.i.3, align 8, !tbaa !30 ; 3 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.val.i.i.i.3 = load i32, ptr %i.aw, align 8, !tbaa !16 ; 4 uses
  %i.ax = icmp slt i32 %.val.i.i.i.3, %.val1.i.i.i.3
  br i1 %i.ax, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.3
  %i.ay = load ptr, ptr %scevgep.i.i.2, align 8, !tbaa !30 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %.val2.i7.i.i.i.3 = load i32, ptr %i.az, align 8, !tbaa !16
  %i.ba = icmp slt i32 %.val.i.i.i.3, %.val2.i7.i.i.i.3
  br i1 %i.ba, label %.lr.ph.i.i.i.3, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.g, %.lr.ph.i.i.i.3
  %i.bb = phi ptr [ %i.bd, %.lr.ph.i.i.i.3 ], [ %i.ay, %bb.g ]
  %.pn8.i.i.i.3 = phi ptr [ %.sroa.02.0.i.i.i.3, %.lr.ph.i.i.i.3 ], [ %scevgep.i.i.2, %bb.g ] ; 2 uses
  %.sroa.02.0.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.pn8.i.i.i.3, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds i8, ptr %.pn8.i.i.i.3, i64 -8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !30
  %i.bd = load ptr, ptr %.sroa.02.0.i.i.i.3, align 8, !tbaa !30 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %.val2.i.i.i.i.3 = load i32, ptr %i.be, align 8, !tbaa !16
  %i.bf = icmp slt i32 %.val.i.i.i.3, %.val2.i.i.i.i.3
  br i1 %i.bf, label %.lr.ph.i.i.i.3, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.3, !llvm.loop !94

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.3: ; preds = %.lr.ph.i.i.i.3, %bb.g
  %.pre-phi.i.i.i.3 = phi ptr [ %scevgep.i.i.2, %bb.g ], [ %.sroa.02.0.i.i.i.3, %.lr.ph.i.i.i.3 ]
  %i.bg = getelementptr inbounds i8, ptr %.pre-phi.i.i.i.3, i64 -8
  store ptr %i.av, ptr %i.bg, align 8, !tbaa !30
  %.pre69 = load ptr, ptr %.ptr38.i, align 8, !tbaa !30
  %.phi.trans.insert70 = getelementptr i8, ptr %.pre69, i64 8
  %.val1.i.i.i.4.pre = load i32, ptr %.phi.trans.insert70, align 8, !tbaa !16
  br label %.lr.ph.i.i.4

bb.h:                                             ; preds = %.lr.ph.i.i.3
  %i.bh = ptrtoint ptr %scevgep.i.i.2 to i64
  %i.bi = sub i64 %i.g, %i.bh                     ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.preheader.i.i.3, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.3

.lr.ph.i.i.i.i.i.preheader.i.i.3:                 ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %scevgep.i.i.3, ptr nonnull align 8 %scevgep.i.i.2, i64 %i.bi, i1 false), !tbaa !30, !noalias !96
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.3

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.3: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.3, %bb.h
  store ptr %i.av, ptr %.ptr38.i, align 8, !tbaa !30
  br label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.3, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.3
  %.val1.i.i.i.4 = phi i32 [ %.val.i.i.i.3, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.3 ], [ %.val1.i.i.i.4.pre, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.3 ]
  %scevgep.i.i.4 = getelementptr inbounds i8, ptr %i.h, i64 -48 ; 7 uses
  %i.bk = load ptr, ptr %scevgep.i.i.4, align 8, !tbaa !30 ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %.val.i.i.i.4 = load i32, ptr %i.bl, align 8, !tbaa !16 ; 4 uses
  %i.bm = icmp slt i32 %.val.i.i.i.4, %.val1.i.i.i.4
  br i1 %i.bm, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.4
  %i.bn = load ptr, ptr %scevgep.i.i.3, align 8, !tbaa !30 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %.val2.i7.i.i.i.4 = load i32, ptr %i.bo, align 8, !tbaa !16
  %i.bp = icmp slt i32 %.val.i.i.i.4, %.val2.i7.i.i.i.4
  br i1 %i.bp, label %.lr.ph.i.i.i.4, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %bb.i, %.lr.ph.i.i.i.4
  %i.bq = phi ptr [ %i.bs, %.lr.ph.i.i.i.4 ], [ %i.bn, %bb.i ]
  %.pn8.i.i.i.4 = phi ptr [ %.sroa.02.0.i.i.i.4, %.lr.ph.i.i.i.4 ], [ %scevgep.i.i.3, %bb.i ] ; 2 uses
  %.sroa.02.0.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.pn8.i.i.i.4, i64 8 ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %.pn8.i.i.i.4, i64 -8
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !30
  %i.bs = load ptr, ptr %.sroa.02.0.i.i.i.4, align 8, !tbaa !30 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %.val2.i.i.i.i.4 = load i32, ptr %i.bt, align 8, !tbaa !16
  %i.bu = icmp slt i32 %.val.i.i.i.4, %.val2.i.i.i.i.4
  br i1 %i.bu, label %.lr.ph.i.i.i.4, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.4, !llvm.loop !94

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.4: ; preds = %.lr.ph.i.i.i.4, %bb.i
  %.pre-phi.i.i.i.4 = phi ptr [ %scevgep.i.i.3, %bb.i ], [ %.sroa.02.0.i.i.i.4, %.lr.ph.i.i.i.4 ]
  %i.bv = getelementptr inbounds i8, ptr %.pre-phi.i.i.i.4, i64 -8
  store ptr %i.bk, ptr %i.bv, align 8, !tbaa !30
  %.pre72 = load ptr, ptr %.ptr38.i, align 8, !tbaa !30
  %.phi.trans.insert73 = getelementptr i8, ptr %.pre72, i64 8
  %.val1.i.i.i.5.pre = load i32, ptr %.phi.trans.insert73, align 8, !tbaa !16
  br label %.lr.ph.i.i.5

bb.j:                                             ; preds = %.lr.ph.i.i.4
  %i.bw = ptrtoint ptr %scevgep.i.i.3 to i64
  %i.bx = sub i64 %i.g, %i.bw                     ; 2 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.preheader.i.i.4, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.4

.lr.ph.i.i.i.i.i.preheader.i.i.4:                 ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %scevgep.i.i.4, ptr nonnull align 8 %scevgep.i.i.3, i64 %i.bx, i1 false), !tbaa !30, !noalias !96
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.4

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.4: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.4, %bb.j
  store ptr %i.bk, ptr %.ptr38.i, align 8, !tbaa !30
  br label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.4, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.4
  %.val1.i.i.i.5 = phi i32 [ %.val.i.i.i.4, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.4 ], [ %.val1.i.i.i.5.pre, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.4 ]
  %scevgep.i.i.5 = getelementptr inbounds i8, ptr %i.h, i64 -56 ; 3 uses
  %i.bz = load ptr, ptr %scevgep.i.i.5, align 8, !tbaa !30 ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %.val.i.i.i.5 = load i32, ptr %i.ca, align 8, !tbaa !16 ; 3 uses
  %i.cb = icmp slt i32 %.val.i.i.i.5, %.val1.i.i.i.5
  br i1 %i.cb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.5
  %i.cc = load ptr, ptr %scevgep.i.i.4, align 8, !tbaa !30 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  %.val2.i7.i.i.i.5 = load i32, ptr %i.cd, align 8, !tbaa !16
  %i.ce = icmp slt i32 %.val.i.i.i.5, %.val2.i7.i.i.i.5
  br i1 %i.ce, label %.lr.ph.i.i.i.5, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.5

.lr.ph.i.i.i.5:                                   ; preds = %bb.k, %.lr.ph.i.i.i.5
  %i.cf = phi ptr [ %i.ch, %.lr.ph.i.i.i.5 ], [ %i.cc, %bb.k ]
  %.pn8.i.i.i.5 = phi ptr [ %.sroa.02.0.i.i.i.5, %.lr.ph.i.i.i.5 ], [ %scevgep.i.i.4, %bb.k ] ; 2 uses
  %.sroa.02.0.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.pn8.i.i.i.5, i64 8 ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %.pn8.i.i.i.5, i64 -8
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !30
  %i.ch = load ptr, ptr %.sroa.02.0.i.i.i.5, align 8, !tbaa !30 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  %.val2.i.i.i.i.5 = load i32, ptr %i.ci, align 8, !tbaa !16
  %i.cj = icmp slt i32 %.val.i.i.i.5, %.val2.i.i.i.i.5
  br i1 %i.cj, label %.lr.ph.i.i.i.5, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.5, !llvm.loop !94

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.5: ; preds = %.lr.ph.i.i.i.5, %bb.k
  %.pre-phi.i.i.i.5 = phi ptr [ %scevgep.i.i.4, %bb.k ], [ %.sroa.02.0.i.i.i.5, %.lr.ph.i.i.i.5 ]
  %i.ck = getelementptr inbounds i8, ptr %.pre-phi.i.i.i.5, i64 -8
  store ptr %i.bz, ptr %i.ck, align 8, !tbaa !30
  br label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i.5
  %i.cl = ptrtoint ptr %scevgep.i.i.4 to i64
  %i.cm = sub i64 %i.g, %i.cl                     ; 2 uses
  %i.cn = icmp sgt i64 %i.cm, 0
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i.preheader.i.i.5, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.5

.lr.ph.i.i.i.i.i.preheader.i.i.5:                 ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %scevgep.i.i.5, ptr nonnull align 8 %scevgep.i.i.4, i64 %i.cm, i1 false), !tbaa !30, !noalias !96
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.5

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.5: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.5, %bb.l
  store ptr %i.bz, ptr %.ptr38.i, align 8, !tbaa !30
  br label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit.i

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit.i: ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.5, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.5
  %i.co = ptrtoint ptr %scevgep.i.i.5 to i64      ; 3 uses
  %i.cp = sub i64 %i.co, %i.b
  %i.cq = icmp sgt i64 %i.cp, 48
  br i1 %i.cq, label %.lr.ph.i.preheader.i, label %._crit_edge.i, !llvm.loop !107

._crit_edge.i:                                    ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit.i, %bb.a
  %i.cr = phi i64 [ %i.a, %bb.a ], [ %i.co, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit.i ] ; 3 uses
  %i.cs = icmp eq i64 %i.cr, %i.b
  br i1 %i.cs, label %_ZSt22__chunk_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  %3 = inttoptr i64 %i.cr to ptr
  %i.ct = getelementptr inbounds i8, ptr %3, i64 -8 ; 4 uses
  %.not12.i8.i = icmp eq ptr %i.ct, %.sroa.0.0.copyload.i2.i
  br i1 %.not12.i8.i, label %_ZSt22__chunk_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_.exit, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %bb.m, %bb.p
  %.sroa.07.013.i11.i = phi ptr [ %i.cu, %bb.p ], [ %i.ct, %bb.m ] ; 6 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.07.013.i11.i, i64 -8 ; 4 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !30 ; 3 uses
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !30
  %i.cx = getelementptr i8, ptr %i.cv, i64 8
  %.val.i.i13.i = load i32, ptr %i.cx, align 8, !tbaa !16 ; 3 uses
  %i.cy = getelementptr i8, ptr %i.cw, i64 8
  %.val1.i.i14.i = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.cz = icmp slt i32 %.val.i.i13.i, %.val1.i.i14.i
  br i1 %i.cz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i9.i
  %i.da = ptrtoint ptr %.sroa.07.013.i11.i to i64
  %i.db = sub i64 %i.cr, %i.da                    ; 2 uses
  %i.dc = icmp sgt i64 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i.preheader.i25.i, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i24.i

.lr.ph.i.i.i.i.i.preheader.i25.i:                 ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cu, ptr nonnull align 8 %.sroa.07.013.i11.i, i64 %i.db, i1 false), !tbaa !30, !noalias !108
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i24.i

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i24.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i25.i, %bb.n
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !30
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i9.i
  %i.dd = load ptr, ptr %.sroa.07.013.i11.i, align 8, !tbaa !30 ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %.val2.i7.i.i15.i = load i32, ptr %i.de, align 8, !tbaa !16
  %i.df = icmp slt i32 %.val.i.i13.i, %.val2.i7.i.i15.i
  br i1 %i.df, label %.lr.ph.i.i20.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i16.i

.lr.ph.i.i20.i:                                   ; preds = %bb.o, %.lr.ph.i.i20.i
  %i.dg = phi ptr [ %i.di, %.lr.ph.i.i20.i ], [ %i.dd, %bb.o ]
  %.pn8.i.i21.i = phi ptr [ %.sroa.02.0.i.i22.i, %.lr.ph.i.i20.i ], [ %.sroa.07.013.i11.i, %bb.o ] ; 2 uses
  %.sroa.02.0.i.i22.i = getelementptr inbounds nuw i8, ptr %.pn8.i.i21.i, i64 8 ; 3 uses
  %i.dh = getelementptr inbounds i8, ptr %.pn8.i.i21.i, i64 -8
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !30
  %i.di = load ptr, ptr %.sroa.02.0.i.i22.i, align 8, !tbaa !30 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  %.val2.i.i.i23.i = load i32, ptr %i.dj, align 8, !tbaa !16
  %i.dk = icmp slt i32 %.val.i.i13.i, %.val2.i.i.i23.i
  br i1 %i.dk, label %.lr.ph.i.i20.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i16.i, !llvm.loop !94

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i16.i: ; preds = %.lr.ph.i.i20.i, %bb.o
  %.pre-phi.i.i17.i = phi ptr [ %.sroa.07.013.i11.i, %bb.o ], [ %.sroa.02.0.i.i22.i, %.lr.ph.i.i20.i ]
  %i.dl = getelementptr inbounds i8, ptr %.pre-phi.i.i17.i, i64 -8
  store ptr %i.cv, ptr %i.dl, align 8, !tbaa !30
  br label %bb.p

bb.p:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i16.i, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i24.i
  %.not.i18.i = icmp eq ptr %i.cu, %.sroa.0.0.copyload.i2.i
  br i1 %.not.i18.i, label %_ZSt22__chunk_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_.exit, label %.lr.ph.i9.i, !llvm.loop !95

_ZSt22__chunk_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_.exit: ; preds = %bb.p, %._crit_edge.i, %bb.m
  %i.dm = icmp sgt i64 %i.d, 7
  br i1 %i.dm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_.exit
  %i.dn = ptrtoint ptr %i.e to i64                ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPP26cmCTestBinPackerAllocationSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEElNS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS0_SaIS0_EEEUlS1_S1_E_EEEvT_S13_T0_T1_T2_.exit
  %.049 = phi i64 [ 7, %.lr.ph ], [ %i.ks, %_ZSt17__merge_sort_loopIPP26cmCTestBinPackerAllocationSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEElNS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS0_SaIS0_EEEUlS1_S1_E_EEEvT_S13_T0_T1_T2_.exit ] ; 6 uses
  %i.do = shl nsw i64 %.049, 1                    ; 4 uses
  %.not59.i = icmp slt i64 %i.d, %i.do
  br i1 %.not59.i, label %._crit_edge.i21, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q
  %i.dp = sub i64 0, %i.do
  %.neg.i = mul i64 %.049, -8                     ; 2 uses
  %.not22.i.i = icmp eq i64 %.neg.i, 0
  br label %bb.r

bb.r:                                             ; preds = %_ZSt12__move_mergeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET0_T_S14_S14_S14_S13_T1_.exit.i, %.lr.ph.i
  %i.dq = phi i64 [ %i.a, %.lr.ph.i ], [ %i.ei, %_ZSt12__move_mergeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET0_T_S14_S14_S14_S13_T1_.exit.i ] ; 3 uses
  %.060.i = phi ptr [ %2, %.lr.ph.i ], [ %.04.lcssa.i.i.i.i.i7.i.i, %_ZSt12__move_mergeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET0_T_S14_S14_S14_S13_T1_.exit.i ] ; 2 uses
  %i.dr = inttoptr i64 %i.dq to ptr               ; 4 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %.neg.i ; 3 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.dp ; 3 uses
  %i.du = ptrtoint ptr %i.ds to i64
  br i1 %.not22.i.i, label %.critedge.i.i, label %.lr.ph.i.i16

.lr.ph.i.i16:                                     ; preds = %bb.r, %bb.s
  %.sroa.043.0.i = phi ptr [ %.sroa.043.1.i, %bb.s ], [ %i.ds, %bb.r ] ; 3 uses
  %.sroa.045.0.i = phi ptr [ %.sroa.045.1.i, %bb.s ], [ %i.dr, %bb.r ]
  %i.dv = phi i64 [ %i.ef, %bb.s ], [ %i.dq, %bb.r ] ; 2 uses
  %.023.i.i = phi ptr [ %i.ee, %bb.s ], [ %.060.i, %bb.r ] ; 3 uses
  %.not18.i.i = icmp eq ptr %.sroa.043.0.i, %i.dt
  br i1 %.not18.i.i, label %.critedge.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i16
  %i.dw = getelementptr inbounds i8, ptr %.sroa.043.0.i, i64 -8 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !30 ; 2 uses
  %i.dy = inttoptr i64 %i.dv to ptr
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !30 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dx, i64 8
  %.val.i.i.i17 = load i32, ptr %i.eb, align 8, !tbaa !16
  %i.ec = getelementptr i8, ptr %i.ea, i64 8
  %.val1.i.i.i18 = load i32, ptr %i.ec, align 8, !tbaa !16
  %i.ed = icmp slt i32 %.val.i.i.i17, %.val1.i.i.i18 ; 3 uses
  %.sroa.043.1.i = select i1 %i.ed, ptr %i.dw, ptr %.sroa.043.0.i ; 2 uses
  %.sroa.045.1.idx.i = select i1 %i.ed, i64 0, i64 -8
  %.sroa.045.1.i = getelementptr inbounds i8, ptr %.sroa.045.0.i, i64 %.sroa.045.1.idx.i ; 3 uses
  %.sink.i.i = select i1 %i.ed, ptr %i.dx, ptr %i.ea
  store ptr %.sink.i.i, ptr %.023.i.i, align 8, !tbaa !30
  %i.ee = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i19 = icmp eq ptr %.sroa.045.1.i, %i.ds
  %i.ef = ptrtoint ptr %.sroa.045.1.i to i64      ; 2 uses
  br i1 %.not.i.i19, label %.critedge.i.i, label %.lr.ph.i.i16, !llvm.loop !119

.critedge.i.i:                                    ; preds = %bb.s, %.lr.ph.i.i16, %bb.r
  %.sroa.043.2.i = phi ptr [ %i.dr, %bb.r ], [ %i.dt, %.lr.ph.i.i16 ], [ %.sroa.043.1.i, %bb.s ] ; 3 uses
  %i.eg = phi i64 [ %i.dq, %bb.r ], [ %i.dv, %.lr.ph.i.i16 ], [ %i.ef, %bb.s ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %.060.i, %bb.r ], [ %.023.i.i, %.lr.ph.i.i16 ], [ %i.ee, %bb.s ] ; 3 uses
  %i.eh = ptrtoint ptr %.sroa.043.2.i to i64
  %i.ei = ptrtoint ptr %i.dt to i64               ; 4 uses
  %i.ej = sub i64 %i.eg, %i.du
  %i.ek = ashr exact i64 %i.ej, 3                 ; 5 uses
  %i.el = icmp sgt i64 %i.ek, 0
  br i1 %i.el, label %.lr.ph.i.i.i.i.preheader.i.i.i, label %_ZSt4moveISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_ET0_T_SC_SB_.exit.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %.critedge.i.i
  %i.em = inttoptr i64 %i.eg to ptr               ; 2 uses
  %xtraiter = and i64 %i.ek, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol
  %i.en = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.em, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %.06.i.i.i.i.i.i.i.prol = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.ek, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %.045.i.i.i.i.i.i.i.prol = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.0.lcssa.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -8 ; 3 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !30
  store ptr %i.ep, ptr %.045.i.i.i.i.i.i.i.prol, align 8, !tbaa !30
  %i.eq = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.prol, i64 8 ; 3 uses
  %i.er = add nsw i64 %.06.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !120

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.unr = phi ptr [ %i.em, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.i.i.unr = phi i64 [ %i.ek, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.er, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.045.i.i.i.i.i.i.i.unr = phi ptr [ %.0.lcssa.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.eq, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.eq, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.es = icmp ult i64 %i.ek, 8
  br i1 %i.es, label %_ZSt4moveISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_ET0_T_SC_SB_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %i.et = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.06.i.i.i.i.i.i.i = phi i64 [ %i.fs, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.045.i.i.i.i.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i.i.i ], [ %.045.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !30
  store ptr %i.ev, ptr %.045.i.i.i.i.i.i.i, align 8, !tbaa !30
  %i.ew = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i, i64 8
  %i.ex = getelementptr inbounds i8, ptr %i.et, i64 -16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !30
  store ptr %i.ey, ptr %i.ew, align 8, !tbaa !30
  %i.ez = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i, i64 16
  %i.fa = getelementptr inbounds i8, ptr %i.et, i64 -24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !30
  store ptr %i.fb, ptr %i.ez, align 8, !tbaa !30
  %i.fc = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i, i64 24
  %i.fd = getelementptr inbounds i8, ptr %i.et, i64 -32
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !30
  store ptr %i.fe, ptr %i.fc, align 8, !tbaa !30
  %i.ff = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i, i64 32
  %i.fg = getelementptr inbounds i8, ptr %i.et, i64 -40
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !30
  store ptr %i.fh, ptr %i.ff, align 8, !tbaa !30
  %i.fi = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i, i64 40
  %i.fj = getelementptr inbounds i8, ptr %i.et, i64 -48
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !30
  store ptr %i.fk, ptr %i.fi, align 8, !tbaa !30
  %i.fl = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i, i64 48
  %i.fm = getelementptr inbounds i8, ptr %i.et, i64 -56
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !30
  store ptr %i.fn, ptr %i.fl, align 8, !tbaa !30
  %i.fo = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i, i64 56
  %i.fp = getelementptr inbounds i8, ptr %i.et, i64 -64 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !30
  store ptr %i.fq, ptr %i.fo, align 8, !tbaa !30
  %i.fr = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.fs = add nsw i64 %.06.i.i.i.i.i.i.i, -8
  %i.ft = icmp sgt i64 %.06.i.i.i.i.i.i.i, 8
  br i1 %i.ft, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_ET0_T_SC_SB_.exit.i.i, !llvm.loop !122

_ZSt4moveISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_ET0_T_SC_SB_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %.critedge.i.i
  %.04.lcssa.i.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i.i, %.critedge.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.fr, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.fu = sub i64 %i.eh, %i.ei
  %i.fv = ashr exact i64 %i.fu, 3                 ; 5 uses
  %i.fw = icmp sgt i64 %i.fv, 0
  br i1 %i.fw, label %.lr.ph.i.i.i.i.i9.i.i.preheader, label %_ZSt12__move_mergeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET0_T_S14_S14_S14_S13_T1_.exit.i

.lr.ph.i.i.i.i.i9.i.i.preheader:                  ; preds = %_ZSt4moveISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_ET0_T_SC_SB_.exit.i.i
  %xtraiter143 = and i64 %i.fv, 7                 ; 2 uses
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %.lr.ph.i.i.i.i.i9.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i9.i.i.prol

.lr.ph.i.i.i.i.i9.i.i.prol:                       ; preds = %.lr.ph.i.i.i.i.i9.i.i.preheader, %.lr.ph.i.i.i.i.i9.i.i.prol
  %i.fx = phi ptr [ %i.fy, %.lr.ph.i.i.i.i.i9.i.i.prol ], [ %.sroa.043.2.i, %.lr.ph.i.i.i.i.i9.i.i.preheader ]
  %.06.i.i.i.i.i10.i.i.prol = phi i64 [ %i.gb, %.lr.ph.i.i.i.i.i9.i.i.prol ], [ %i.fv, %.lr.ph.i.i.i.i.i9.i.i.preheader ]
  %.045.i.i.i.i.i11.i.i.prol = phi ptr [ %i.ga, %.lr.ph.i.i.i.i.i9.i.i.prol ], [ %.04.lcssa.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i9.i.i.preheader ] ; 2 uses
  %prol.iter145 = phi i64 [ %prol.iter145.next, %.lr.ph.i.i.i.i.i9.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i9.i.i.preheader ]
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -8 ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !30
  store ptr %i.fz, ptr %.045.i.i.i.i.i11.i.i.prol, align 8, !tbaa !30
  %i.ga = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i11.i.i.prol, i64 8 ; 3 uses
  %i.gb = add nsw i64 %.06.i.i.i.i.i10.i.i.prol, -1 ; 2 uses
  %prol.iter145.next = add i64 %prol.iter145, 1   ; 2 uses
  %prol.iter145.cmp.not = icmp eq i64 %prol.iter145.next, %xtraiter143
  br i1 %prol.iter145.cmp.not, label %.lr.ph.i.i.i.i.i9.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i9.i.i.prol, !llvm.loop !123

.lr.ph.i.i.i.i.i9.i.i.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i9.i.i.prol, %.lr.ph.i.i.i.i.i9.i.i.preheader
  %.unr146 = phi ptr [ %.sroa.043.2.i, %.lr.ph.i.i.i.i.i9.i.i.preheader ], [ %i.fy, %.lr.ph.i.i.i.i.i9.i.i.prol ]
  %.06.i.i.i.i.i10.i.i.unr = phi i64 [ %i.fv, %.lr.ph.i.i.i.i.i9.i.i.preheader ], [ %i.gb, %.lr.ph.i.i.i.i.i9.i.i.prol ]
  %.045.i.i.i.i.i11.i.i.unr = phi ptr [ %.04.lcssa.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i9.i.i.preheader ], [ %i.ga, %.lr.ph.i.i.i.i.i9.i.i.prol ]
  %.lcssa130.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i9.i.i.preheader ], [ %i.ga, %.lr.ph.i.i.i.i.i9.i.i.prol ]
  %i.gc = icmp ult i64 %i.fv, 8
  br i1 %i.gc, label %_ZSt12__move_mergeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET0_T_S14_S14_S14_S13_T1_.exit.i, label %.lr.ph.i.i.i.i.i9.i.i

.lr.ph.i.i.i.i.i9.i.i:                            ; preds = %.lr.ph.i.i.i.i.i9.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i9.i.i
  %i.gd = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i9.i.i ], [ %.unr146, %.lr.ph.i.i.i.i.i9.i.i.prol.loopexit ] ; 8 uses
  %.06.i.i.i.i.i10.i.i = phi i64 [ %i.hc, %.lr.ph.i.i.i.i.i9.i.i ], [ %.06.i.i.i.i.i10.i.i.unr, %.lr.ph.i.i.i.i.i9.i.i.prol.loopexit ] ; 2 uses
  %.045.i.i.i.i.i11.i.i = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i9.i.i ], [ %.045.i.i.i.i.i11.i.i.unr, %.lr.ph.i.i.i.i.i9.i.i.prol.loopexit ] ; 9 uses
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 -8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !30
  store ptr %i.gf, ptr %.045.i.i.i.i.i11.i.i, align 8, !tbaa !30
  %i.gg = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i11.i.i, i64 8
  %i.gh = getelementptr inbounds i8, ptr %i.gd, i64 -16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !30
  store ptr %i.gi, ptr %i.gg, align 8, !tbaa !30
  %i.gj = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i11.i.i, i64 16
  %i.gk = getelementptr inbounds i8, ptr %i.gd, i64 -24
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !30
  store ptr %i.gl, ptr %i.gj, align 8, !tbaa !30
  %i.gm = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i11.i.i, i64 24
  %i.gn = getelementptr inbounds i8, ptr %i.gd, i64 -32
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !30
  store ptr %i.go, ptr %i.gm, align 8, !tbaa !30
  %i.gp = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i11.i.i, i64 32
  %i.gq = getelementptr inbounds i8, ptr %i.gd, i64 -40
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !30
  store ptr %i.gr, ptr %i.gp, align 8, !tbaa !30
  %i.gs = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i11.i.i, i64 40
  %i.gt = getelementptr inbounds i8, ptr %i.gd, i64 -48
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !30
  store ptr %i.gu, ptr %i.gs, align 8, !tbaa !30
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_122AllocateCTestResourcesINS_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS8_ESaISt4pairIKS8_SA_EEERKSt6vectorIS8_SaIS8_EEmRSK_IP26cmCTestBinPackerAllocationSaISQ_EE:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !53
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %i.cr, %i.bc
  br i1 %.not.i.i.i57, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !54

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.ay) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.cs = load ptr, ptr %i.h, align 8, !tbaa !71
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24cmCTestResourceAllocator8ResourceEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.cs)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #27
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %i.ck, label %.critedge50, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit._crit_edge

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit._crit_edge: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !57
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %2
  %.pre113 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !30
  br label %bb.s

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.i, %.body55
  %.pn = phi { ptr, i32 } [ %eh.lpad-body56, %.body55 ], [ %i.bd, %bb.i ], [ %i.bd, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  resume { ptr, i32 } %.pn

bb.s:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit._crit_edge, %bb.b
  %i.cv = phi ptr [ %.pre113, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit._crit_edge ], [ %i.ab, %bb.b ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store i64 0, ptr %i.cx, align 8, !tbaa !17
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !18
  store i8 0, ptr %i.cy, align 1, !tbaa !53
  %i.cz = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.da = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = ashr exact i64 %i.dd, 5                 ; 2 uses
  %.not.i.i59 = icmp ult i64 %.04196, %i.de
  br i1 %.not.i.i59, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, i64 noundef %.04196, i64 noundef %i.de) #22
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit: ; preds = %bb.s
  %i.df = getelementptr inbounds nuw [32 x i8], ptr %i.da, i64 %.04196
  %i.dg = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.df) ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !66
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !68
  %i.dk = sub i32 %i.dh, %i.dj
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.dm = load ptr, ptr %1, align 8, !tbaa !36    ; 3 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 5                 ; 2 uses
  %i.dr = add nuw i64 %.04196, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.dq, i64 %i.dr)
  %i.ds = add i64 %umax, -1                       ; 2 uses
  %exitcond.not184 = icmp eq i64 %.04196, %i.ds
  br i1 %exitcond.not184, label %.critedge50, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61.preheader

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61.preheader: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit
  %i.dt = load ptr, ptr %i.l, align 8, !tbaa !71  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.dt, null
  br label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61

bb.u:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_.exit
  %exitcond.not = icmp eq i64 %i.du, %i.ds
  br i1 %exitcond.not, label %.critedge50, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61, !llvm.loop !593

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61.preheader, %bb.u
  %.in = phi i64 [ %i.du, %bb.u ], [ %.04196, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61.preheader ]
  %i.du = add nuw i64 %.in, 1                     ; 5 uses
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !17 ; 4 uses
  %i.dy = load ptr, ptr %i.dv, align 8            ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !17 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.dx, i64 %i.ea) ; 2 uses
  %i.eb = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.eb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.v
  %i.ec = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !18
  %i.ee = call i32 @memcmp(ptr noundef %i.ed, ptr noundef %i.dy, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.v
  %i.ef = sub i64 %i.ea, %i.dx
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ef, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ee, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.eg = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.eg, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.eg, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i.i62 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i62, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.i, label %bb.v, !llvm.loop !80

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.eh = icmp eq ptr %.19.i.i.i.i, %i.r
  br i1 %i.eh, label %.critedge.i, label %bb.w

bb.w:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !17 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ej, i64 %i.dx) ; 2 uses
  %i.ek = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.ek, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.w
  %i.el = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !18
  %i.en = call i32 @memcmp(ptr noundef %i.dy, ptr noundef %i.em, i64 noundef %.sroa.speculated.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i3.i = icmp eq i32 %i.en, 0
  br i1 %.not.i.i.i3.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.w
  %i.eo = sub i64 %i.dx, %i.ej
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.eo, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.en, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.ep = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.ep, label %.critedge.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.i, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61
  call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.2) #22
  unreachable

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !66
  %i.es = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 68
  %i.et = load i32, ptr %i.es, align 4, !tbaa !68
  %i.eu = sub i32 %i.er, %i.et
  %i.ev = icmp eq i32 %i.eu, %i.dk
  br i1 %i.ev, label %bb.u, label %.critedge, !llvm.loop !593

.critedge:                                        ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_.exit
  %i.ew = icmp ult i64 %i.du, %i.dq
  br i1 %i.ew, label %bb.b, label %.critedge50, !llvm.loop !594

.critedge50:                                      ; preds = %.critedge, %bb.c, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit, %bb.u, %bb.a
  %.lcssa75 = phi i1 [ false, %bb.a ], [ false, %bb.u ], [ true, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit ], [ true, %bb.c ], [ false, %.critedge ], [ false, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit ]
  ret i1 %.lcssa75
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt21__inplace_stable_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %0, ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %3 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %4 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %5 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %6 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %7 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8 ; 4 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.f, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -8 ; 4 uses
  %.not12.i = icmp eq ptr %i.g, %.sroa.0.0.copyload.i2.i
  br i1 %.not12.i, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.f
  %.sroa.07.013.i = phi ptr [ %i.h, %bb.f ], [ %i.g, %bb.c ] ; 6 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.07.013.i, i64 -8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.k = getelementptr i8, ptr %i.i, i64 8
  %.val.i.i = load i32, ptr %i.k, align 8, !tbaa !16 ; 3 uses
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.val1.i.i = load i32, ptr %i.l, align 8, !tbaa !16
  %i.m = icmp slt i32 %.val.i.i, %.val1.i.i
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.n = ptrtoint ptr %.sroa.07.013.i to i64
  %i.o = sub i64 %i.a, %i.n                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull align 8 %.sroa.07.013.i, i64 %i.o, i1 false), !tbaa !30, !noalias !595
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %bb.d
  store ptr %i.i, ptr %i.g, align 8, !tbaa !30
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %.sroa.07.013.i, align 8, !tbaa !30 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val2.i7.i.i = load i32, ptr %i.r, align 8, !tbaa !16
  %i.s = icmp slt i32 %.val.i.i, %.val2.i7.i.i
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.t = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.q, %bb.e ]
  %.pn8.i.i = phi ptr [ %.sroa.02.0.i.i, %.lr.ph.i.i ], [ %.sroa.07.013.i, %bb.e ] ; 2 uses
  %.sroa.02.0.i.i = getelementptr inbounds nuw i8, ptr %.pn8.i.i, i64 8 ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.pn8.i.i, i64 -8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !30
  %i.v = load ptr, ptr %.sroa.02.0.i.i, align 8, !tbaa !30 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val2.i.i.i = load i32, ptr %i.w, align 8, !tbaa !16
  %i.x = icmp slt i32 %.val.i.i, %.val2.i.i.i
  br i1 %i.x, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i, !llvm.loop !606

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.e
  %.pre-phi.i.i = phi ptr [ %.sroa.07.013.i, %bb.e ], [ %.sroa.02.0.i.i, %.lr.ph.i.i ]
  %i.y = getelementptr inbounds i8, ptr %.pre-phi.i.i, i64 -8
  store ptr %i.i, ptr %i.y, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i
  %.not.i = icmp eq ptr %i.h, %.sroa.0.0.copyload.i2.i
  br i1 %.not.i, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit, label %.lr.ph.i, !llvm.loop !607

bb.g:                                             ; preds = %bb.a
  %i.z = lshr i64 %i.d, 1
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.aa
  store i64 %i.a, ptr %2, align 8, !tbaa !26
  %i.ac = ptrtoint ptr %i.ab to i64               ; 5 uses
  store i64 %i.ac, ptr %3, align 8, !tbaa !26
  call fastcc void @_ZSt21__inplace_stable_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_(ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3)
  store i64 %i.ac, ptr %4, align 8, !tbaa !26
  %i.ad = load i64, ptr %1, align 8, !tbaa !26
  store i64 %i.ad, ptr %5, align 8, !tbaa !26
  call fastcc void @_ZSt21__inplace_stable_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_(ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5)
  %i.ae = load i64, ptr %0, align 8, !tbaa !26    ; 2 uses
  store i64 %i.ae, ptr %6, align 8, !tbaa !26
  %i.af = load i64, ptr %1, align 8, !tbaa !26    ; 2 uses
  store i64 %i.af, ptr %7, align 8, !tbaa !26
  %i.ag = sub i64 %i.ae, %i.ac
  %i.ah = ashr exact i64 %i.ag, 3
  %i.ai = sub i64 %i.ac, %i.af
  %i.aj = ashr exact i64 %i.ai, 3
  call fastcc void @_ZSt22__merge_without_bufferISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_S13_T0_S14_T1_(ptr noundef align 8 dead_on_return %6, i64 %i.ac, ptr noundef align 8 dead_on_return %7, i64 noundef %i.ah, i64 noundef %i.aj)
  br label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit: ; preds = %bb.f, %bb.c, %bb.b, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt29__stable_sort_adaptive_resizeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_lNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_T2_(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %0, ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %1, ptr noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %6 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %7 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %8 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %9 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %10 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %11 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %12 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %13 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 4 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64 ; 4 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 3 uses
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.g ; 2 uses
  %i.i = icmp sgt i64 %i.f, %3
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.a, ptr %8, align 8, !tbaa !26
  %i.j = ptrtoint ptr %i.h to i64                 ; 5 uses
  store i64 %i.j, ptr %9, align 8, !tbaa !26
  call fastcc void @_ZSt29__stable_sort_adaptive_resizeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_lNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_T2_(ptr noundef align 8 dead_on_return %8, ptr noundef align 8 dead_on_return %9, ptr noundef %2, i64 noundef %3)
  store i64 %i.j, ptr %10, align 8, !tbaa !26
  %i.k = load i64, ptr %1, align 8, !tbaa !26
  store i64 %i.k, ptr %11, align 8, !tbaa !26
  call fastcc void @_ZSt29__stable_sort_adaptive_resizeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_lNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_T2_(ptr noundef align 8 dead_on_return %10, ptr noundef align 8 dead_on_return %11, ptr noundef %2, i64 noundef %3)
  %i.l = load i64, ptr %0, align 8, !tbaa !26     ; 2 uses
  store i64 %i.l, ptr %12, align 8, !tbaa !26
  %i.m = load i64, ptr %1, align 8, !tbaa !26     ; 2 uses
  store i64 %i.m, ptr %13, align 8, !tbaa !26
  %i.n = sub i64 %i.l, %i.j
  %i.o = ashr exact i64 %i.n, 3
  %i.p = sub i64 %i.j, %i.m
  %i.q = ashr exact i64 %i.p, 3
  call fastcc void @_ZSt23__merge_adaptive_resizeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElS5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_S13_T0_S14_T1_S14_T2_(ptr noundef align 8 dead_on_return %12, i64 %i.j, ptr noundef align 8 dead_on_return %13, i64 noundef %i.o, i64 noundef %i.q, ptr noundef %2, i64 noundef %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = ptrtoint ptr %i.h to i64                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %i.a, ptr %4, align 8, !tbaa !26
  store i64 %i.r, ptr %5, align 8, !tbaa !26
  call fastcc void @_ZSt24__merge_sort_with_bufferISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_(ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef %2)
  store i64 %i.r, ptr %6, align 8, !tbaa !26
  store i64 %i.b, ptr %7, align 8, !tbaa !26
  call fastcc void @_ZSt24__merge_sort_with_bufferISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_(ptr noundef align 8 dead_on_return %6, ptr noundef align 8 dead_on_return %7, ptr noundef %2)
  %i.s = sub i64 %i.r, %i.b
  %i.t = ashr exact i64 %i.s, 3
  tail call fastcc void @_ZSt16__merge_adaptiveISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElS5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_S13_T0_S14_T1_T2_(i64 %i.a, i64 %i.r, i64 %i.b, i64 noundef %i.f, i64 noundef %i.t, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt24__merge_sort_with_bufferISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %0, ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return %1, ptr noundef %2) unnamed_addr #11 {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8 ; 4 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 7 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64 ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c ; 3 uses
  %i.f = icmp sgt i64 %i.c, 48
  br i1 %i.f, label %.lr.ph.i.preheader.i, label %._crit_edge.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit.i
  %i.g = phi i64 [ %i.co, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit.i ], [ %i.a, %bb.a ] ; 7 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 8 uses
  %.ptr38.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 13 uses
  %scevgep.i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 7 uses
  %i.i = load ptr, ptr %scevgep.i.i, align 8, !tbaa !30 ; 3 uses
  %i.j = load ptr, ptr %.ptr38.i, align 8, !tbaa !30
  %i.k = getelementptr i8, ptr %i.i, i64 8
  %.val.i.i.i = load i32, ptr %i.k, align 8, !tbaa !16 ; 2 uses
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.val1.i.i.i = load i32, ptr %i.l, align 8, !tbaa !16 ; 2 uses
  %i.m = icmp slt i32 %.val.i.i.i, %.val1.i.i.i
  br i1 %i.m, label %bb.b, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.preheader.i
  %i.n = ptrtoint ptr %.ptr38.i to i64
  %i.o = sub i64 %i.g, %i.n                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.preheader.i.i, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i

.lr.ph.i.i.i.i.i.preheader.i.i:                   ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %scevgep.i.i, ptr nonnull align 8 %.ptr38.i, i64 %i.o, i1 false), !tbaa !30, !noalias !608
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i, %bb.b
  store ptr %i.i, ptr %.ptr38.i, align 8, !tbaa !30
  br label %.lr.ph.i.i.1

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.preheader.i
  %i.q = getelementptr inbounds i8, ptr %i.h, i64 -16
  store ptr %i.i, ptr %i.q, align 8, !tbaa !30
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i
  %.val1.i.i.i.1 = phi i32 [ %.val1.i.i.i, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i ], [ %.val.i.i.i, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i ]
  %scevgep.i.i.1 = getelementptr inbounds i8, ptr %i.h, i64 -24 ; 7 uses
  %i.r = load ptr, ptr %scevgep.i.i.1, align 8, !tbaa !30 ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val.i.i.i.1 = load i32, ptr %i.s, align 8, !tbaa !16 ; 4 uses
  %i.t = icmp slt i32 %.val.i.i.i.1, %.val1.i.i.i.1
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.1
  %i.u = load ptr, ptr %scevgep.i.i, align 8, !tbaa !30 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val2.i7.i.i.i.1 = load i32, ptr %i.v, align 8, !tbaa !16
  %i.w = icmp slt i32 %.val.i.i.i.1, %.val2.i7.i.i.i.1
  br i1 %i.w, label %.lr.ph.i.i.i.1, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.c, %.lr.ph.i.i.i.1
  %i.x = phi ptr [ %i.z, %.lr.ph.i.i.i.1 ], [ %i.u, %bb.c ]
  %.pn8.i.i.i.1 = phi ptr [ %.sroa.02.0.i.i.i.1, %.lr.ph.i.i.i.1 ], [ %scevgep.i.i, %bb.c ] ; 2 uses
  %.sroa.02.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.pn8.i.i.i.1, i64 8 ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %.pn8.i.i.i.1, i64 -8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !30
  %i.z = load ptr, ptr %.sroa.02.0.i.i.i.1, align 8, !tbaa !30 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val2.i.i.i.i.1 = load i32, ptr %i.aa, align 8, !tbaa !16
  %i.ab = icmp slt i32 %.val.i.i.i.1, %.val2.i.i.i.i.1
  br i1 %i.ab, label %.lr.ph.i.i.i.1, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.1, !llvm.loop !606

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.1: ; preds = %.lr.ph.i.i.i.1, %bb.c
  %.pre-phi.i.i.i.1 = phi ptr [ %scevgep.i.i, %bb.c ], [ %.sroa.02.0.i.i.i.1, %.lr.ph.i.i.i.1 ]
  %i.ac = getelementptr inbounds i8, ptr %.pre-phi.i.i.i.1, i64 -8
  store ptr %i.r, ptr %i.ac, align 8, !tbaa !30
  %.pre = load ptr, ptr %.ptr38.i, align 8, !tbaa !30
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 8
  %.val1.i.i.i.2.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %.lr.ph.i.i.2

bb.d:                                             ; preds = %.lr.ph.i.i.1
  %i.ad = ptrtoint ptr %scevgep.i.i to i64
  %i.ae = sub i64 %i.g, %i.ad                     ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.preheader.i.i.1, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.1

.lr.ph.i.i.i.i.i.preheader.i.i.1:                 ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %scevgep.i.i.1, ptr nonnull align 8 %scevgep.i.i, i64 %i.ae, i1 false), !tbaa !30, !noalias !608
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.1

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.1, %bb.d
  store ptr %i.r, ptr %.ptr38.i, align 8, !tbaa !30
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.1, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.1
  %.val1.i.i.i.2 = phi i32 [ %.val.i.i.i.1, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.1 ], [ %.val1.i.i.i.2.pre, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.1 ]
  %scevgep.i.i.2 = getelementptr inbounds i8, ptr %i.h, i64 -32 ; 7 uses
  %i.ag = load ptr, ptr %scevgep.i.i.2, align 8, !tbaa !30 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i.i.i.2 = load i32, ptr %i.ah, align 8, !tbaa !16 ; 4 uses
  %i.ai = icmp slt i32 %.val.i.i.i.2, %.val1.i.i.i.2
  br i1 %i.ai, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.2
  %i.aj = load ptr, ptr %scevgep.i.i.1, align 8, !tbaa !30 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %.val2.i7.i.i.i.2 = load i32, ptr %i.ak, align 8, !tbaa !16
  %i.al = icmp slt i32 %.val.i.i.i.2, %.val2.i7.i.i.i.2
  br i1 %i.al, label %.lr.ph.i.i.i.2, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.e, %.lr.ph.i.i.i.2
  %i.am = phi ptr [ %i.ao, %.lr.ph.i.i.i.2 ], [ %i.aj, %bb.e ]
  %.pn8.i.i.i.2 = phi ptr [ %.sroa.02.0.i.i.i.2, %.lr.ph.i.i.i.2 ], [ %scevgep.i.i.1, %bb.e ] ; 2 uses
  %.sroa.02.0.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.pn8.i.i.i.2, i64 8 ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %.pn8.i.i.i.2, i64 -8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !30
  %i.ao = load ptr, ptr %.sroa.02.0.i.i.i.2, align 8, !tbaa !30 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val2.i.i.i.i.2 = load i32, ptr %i.ap, align 8, !tbaa !16
  %i.aq = icmp slt i32 %.val.i.i.i.2, %.val2.i.i.i.i.2
  br i1 %i.aq, label %.lr.ph.i.i.i.2, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.2, !llvm.loop !606

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.2: ; preds = %.lr.ph.i.i.i.2, %bb.e
  %.pre-phi.i.i.i.2 = phi ptr [ %scevgep.i.i.1, %bb.e ], [ %.sroa.02.0.i.i.i.2, %.lr.ph.i.i.i.2 ]
  %i.ar = getelementptr inbounds i8, ptr %.pre-phi.i.i.i.2, i64 -8
  store ptr %i.ag, ptr %i.ar, align 8, !tbaa !30
  %.pre66 = load ptr, ptr %.ptr38.i, align 8, !tbaa !30
  %.phi.trans.insert67 = getelementptr i8, ptr %.pre66, i64 8
  %.val1.i.i.i.3.pre = load i32, ptr %.phi.trans.insert67, align 8, !tbaa !16
  br label %.lr.ph.i.i.3

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.as = ptrtoint ptr %scevgep.i.i.1 to i64
  %i.at = sub i64 %i.g, %i.as                     ; 2 uses
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.preheader.i.i.2, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.2

.lr.ph.i.i.i.i.i.preheader.i.i.2:                 ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %scevgep.i.i.2, ptr nonnull align 8 %scevgep.i.i.1, i64 %i.at, i1 false), !tbaa !30, !noalias !608
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.2

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.2, %bb.f
  store ptr %i.ag, ptr %.ptr38.i, align 8, !tbaa !30
  br label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.2, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.2
  %.val1.i.i.i.3 = phi i32 [ %.val.i.i.i.2, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.2 ], [ %.val1.i.i.i.3.pre, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.2 ]
  %scevgep.i.i.3 = getelementptr inbounds i8, ptr %i.h, i64 -40 ; 7 uses
  %i.av = load ptr, ptr %scevgep.i.i.3, align 8, !tbaa !30 ; 3 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.val.i.i.i.3 = load i32, ptr %i.aw, align 8, !tbaa !16 ; 4 uses
  %i.ax = icmp slt i32 %.val.i.i.i.3, %.val1.i.i.i.3
  br i1 %i.ax, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.3
  %i.ay = load ptr, ptr %scevgep.i.i.2, align 8, !tbaa !30 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %.val2.i7.i.i.i.3 = load i32, ptr %i.az, align 8, !tbaa !16
  %i.ba = icmp slt i32 %.val.i.i.i.3, %.val2.i7.i.i.i.3
  br i1 %i.ba, label %.lr.ph.i.i.i.3, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.g, %.lr.ph.i.i.i.3
  %i.bb = phi ptr [ %i.bd, %.lr.ph.i.i.i.3 ], [ %i.ay, %bb.g ]
  %.pn8.i.i.i.3 = phi ptr [ %.sroa.02.0.i.i.i.3, %.lr.ph.i.i.i.3 ], [ %scevgep.i.i.2, %bb.g ] ; 2 uses
  %.sroa.02.0.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.pn8.i.i.i.3, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds i8, ptr %.pn8.i.i.i.3, i64 -8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !30
  %i.bd = load ptr, ptr %.sroa.02.0.i.i.i.3, align 8, !tbaa !30 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %.val2.i.i.i.i.3 = load i32, ptr %i.be, align 8, !tbaa !16
  %i.bf = icmp slt i32 %.val.i.i.i.3, %.val2.i.i.i.i.3
  br i1 %i.bf, label %.lr.ph.i.i.i.3, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.3, !llvm.loop !606

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.3: ; preds = %.lr.ph.i.i.i.3, %bb.g
  %.pre-phi.i.i.i.3 = phi ptr [ %scevgep.i.i.2, %bb.g ], [ %.sroa.02.0.i.i.i.3, %.lr.ph.i.i.i.3 ]
  %i.bg = getelementptr inbounds i8, ptr %.pre-phi.i.i.i.3, i64 -8
  store ptr %i.av, ptr %i.bg, align 8, !tbaa !30
  %.pre69 = load ptr, ptr %.ptr38.i, align 8, !tbaa !30
  %.phi.trans.insert70 = getelementptr i8, ptr %.pre69, i64 8
  %.val1.i.i.i.4.pre = load i32, ptr %.phi.trans.insert70, align 8, !tbaa !16
  br label %.lr.ph.i.i.4

bb.h:                                             ; preds = %.lr.ph.i.i.3
  %i.bh = ptrtoint ptr %scevgep.i.i.2 to i64
  %i.bi = sub i64 %i.g, %i.bh                     ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.preheader.i.i.3, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.3

.lr.ph.i.i.i.i.i.preheader.i.i.3:                 ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %scevgep.i.i.3, ptr nonnull align 8 %scevgep.i.i.2, i64 %i.bi, i1 false), !tbaa !30, !noalias !608
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.3

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.3: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.3, %bb.h
  store ptr %i.av, ptr %.ptr38.i, align 8, !tbaa !30
  br label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.3, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.3
  %.val1.i.i.i.4 = phi i32 [ %.val.i.i.i.3, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.3 ], [ %.val1.i.i.i.4.pre, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.3 ]
  %scevgep.i.i.4 = getelementptr inbounds i8, ptr %i.h, i64 -48 ; 7 uses
  %i.bk = load ptr, ptr %scevgep.i.i.4, align 8, !tbaa !30 ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %.val.i.i.i.4 = load i32, ptr %i.bl, align 8, !tbaa !16 ; 4 uses
  %i.bm = icmp slt i32 %.val.i.i.i.4, %.val1.i.i.i.4
  br i1 %i.bm, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.4
  %i.bn = load ptr, ptr %scevgep.i.i.3, align 8, !tbaa !30 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %.val2.i7.i.i.i.4 = load i32, ptr %i.bo, align 8, !tbaa !16
  %i.bp = icmp slt i32 %.val.i.i.i.4, %.val2.i7.i.i.i.4
  br i1 %i.bp, label %.lr.ph.i.i.i.4, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %bb.i, %.lr.ph.i.i.i.4
  %i.bq = phi ptr [ %i.bs, %.lr.ph.i.i.i.4 ], [ %i.bn, %bb.i ]
  %.pn8.i.i.i.4 = phi ptr [ %.sroa.02.0.i.i.i.4, %.lr.ph.i.i.i.4 ], [ %scevgep.i.i.3, %bb.i ] ; 2 uses
  %.sroa.02.0.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.pn8.i.i.i.4, i64 8 ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %.pn8.i.i.i.4, i64 -8
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !30
  %i.bs = load ptr, ptr %.sroa.02.0.i.i.i.4, align 8, !tbaa !30 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %.val2.i.i.i.i.4 = load i32, ptr %i.bt, align 8, !tbaa !16
  %i.bu = icmp slt i32 %.val.i.i.i.4, %.val2.i.i.i.i.4
  br i1 %i.bu, label %.lr.ph.i.i.i.4, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.4, !llvm.loop !606

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.4: ; preds = %.lr.ph.i.i.i.4, %bb.i
  %.pre-phi.i.i.i.4 = phi ptr [ %scevgep.i.i.3, %bb.i ], [ %.sroa.02.0.i.i.i.4, %.lr.ph.i.i.i.4 ]
  %i.bv = getelementptr inbounds i8, ptr %.pre-phi.i.i.i.4, i64 -8
  store ptr %i.bk, ptr %i.bv, align 8, !tbaa !30
  %.pre72 = load ptr, ptr %.ptr38.i, align 8, !tbaa !30
  %.phi.trans.insert73 = getelementptr i8, ptr %.pre72, i64 8
  %.val1.i.i.i.5.pre = load i32, ptr %.phi.trans.insert73, align 8, !tbaa !16
  br label %.lr.ph.i.i.5

bb.j:                                             ; preds = %.lr.ph.i.i.4
  %i.bw = ptrtoint ptr %scevgep.i.i.3 to i64
  %i.bx = sub i64 %i.g, %i.bw                     ; 2 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.preheader.i.i.4, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.4

.lr.ph.i.i.i.i.i.preheader.i.i.4:                 ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %scevgep.i.i.4, ptr nonnull align 8 %scevgep.i.i.3, i64 %i.bx, i1 false), !tbaa !30, !noalias !608
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.4

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.4: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.4, %bb.j
  store ptr %i.bk, ptr %.ptr38.i, align 8, !tbaa !30
  br label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.4, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.4
  %.val1.i.i.i.5 = phi i32 [ %.val.i.i.i.4, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.4 ], [ %.val1.i.i.i.5.pre, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.4 ]
  %scevgep.i.i.5 = getelementptr inbounds i8, ptr %i.h, i64 -56 ; 3 uses
  %i.bz = load ptr, ptr %scevgep.i.i.5, align 8, !tbaa !30 ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %.val.i.i.i.5 = load i32, ptr %i.ca, align 8, !tbaa !16 ; 3 uses
  %i.cb = icmp slt i32 %.val.i.i.i.5, %.val1.i.i.i.5
  br i1 %i.cb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.5
  %i.cc = load ptr, ptr %scevgep.i.i.4, align 8, !tbaa !30 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  %.val2.i7.i.i.i.5 = load i32, ptr %i.cd, align 8, !tbaa !16
  %i.ce = icmp slt i32 %.val.i.i.i.5, %.val2.i7.i.i.i.5
  br i1 %i.ce, label %.lr.ph.i.i.i.5, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.5

.lr.ph.i.i.i.5:                                   ; preds = %bb.k, %.lr.ph.i.i.i.5
  %i.cf = phi ptr [ %i.ch, %.lr.ph.i.i.i.5 ], [ %i.cc, %bb.k ]
  %.pn8.i.i.i.5 = phi ptr [ %.sroa.02.0.i.i.i.5, %.lr.ph.i.i.i.5 ], [ %scevgep.i.i.4, %bb.k ] ; 2 uses
  %.sroa.02.0.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.pn8.i.i.i.5, i64 8 ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %.pn8.i.i.i.5, i64 -8
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !30
  %i.ch = load ptr, ptr %.sroa.02.0.i.i.i.5, align 8, !tbaa !30 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  %.val2.i.i.i.i.5 = load i32, ptr %i.ci, align 8, !tbaa !16
  %i.cj = icmp slt i32 %.val.i.i.i.5, %.val2.i.i.i.i.5
  br i1 %i.cj, label %.lr.ph.i.i.i.5, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.5, !llvm.loop !606

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.5: ; preds = %.lr.ph.i.i.i.5, %bb.k
  %.pre-phi.i.i.i.5 = phi ptr [ %scevgep.i.i.4, %bb.k ], [ %.sroa.02.0.i.i.i.5, %.lr.ph.i.i.i.5 ]
  %i.ck = getelementptr inbounds i8, ptr %.pre-phi.i.i.i.5, i64 -8
  store ptr %i.bz, ptr %i.ck, align 8, !tbaa !30
  br label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i.5
  %i.cl = ptrtoint ptr %scevgep.i.i.4 to i64
  %i.cm = sub i64 %i.g, %i.cl                     ; 2 uses
  %i.cn = icmp sgt i64 %i.cm, 0
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i.preheader.i.i.5, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.5

.lr.ph.i.i.i.i.i.preheader.i.i.5:                 ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %scevgep.i.i.5, ptr nonnull align 8 %scevgep.i.i.4, i64 %i.cm, i1 false), !tbaa !30, !noalias !608
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.5

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.5: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.5, %bb.l
  store ptr %i.bz, ptr %.ptr38.i, align 8, !tbaa !30
  br label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit.i

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit.i: ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i.i.5, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i.i.5
  %i.co = ptrtoint ptr %scevgep.i.i.5 to i64      ; 3 uses
  %i.cp = sub i64 %i.co, %i.b
  %i.cq = icmp sgt i64 %i.cp, 48
  br i1 %i.cq, label %.lr.ph.i.preheader.i, label %._crit_edge.i, !llvm.loop !619

._crit_edge.i:                                    ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit.i, %bb.a
  %i.cr = phi i64 [ %i.a, %bb.a ], [ %i.co, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_.exit.i ] ; 3 uses
  %i.cs = icmp eq i64 %i.cr, %i.b
  br i1 %i.cs, label %_ZSt22__chunk_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  %3 = inttoptr i64 %i.cr to ptr
  %i.ct = getelementptr inbounds i8, ptr %3, i64 -8 ; 4 uses
  %.not12.i8.i = icmp eq ptr %i.ct, %.sroa.0.0.copyload.i2.i
  br i1 %.not12.i8.i, label %_ZSt22__chunk_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_.exit, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %bb.m, %bb.p
  %.sroa.07.013.i11.i = phi ptr [ %i.cu, %bb.p ], [ %i.ct, %bb.m ] ; 6 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.07.013.i11.i, i64 -8 ; 4 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !30 ; 3 uses
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !30
  %i.cx = getelementptr i8, ptr %i.cv, i64 8
  %.val.i.i13.i = load i32, ptr %i.cx, align 8, !tbaa !16 ; 3 uses
  %i.cy = getelementptr i8, ptr %i.cw, i64 8
  %.val1.i.i14.i = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.cz = icmp slt i32 %.val.i.i13.i, %.val1.i.i14.i
  br i1 %i.cz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i9.i
  %i.da = ptrtoint ptr %.sroa.07.013.i11.i to i64
  %i.db = sub i64 %i.cr, %i.da                    ; 2 uses
  %i.dc = icmp sgt i64 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i.preheader.i25.i, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i24.i

.lr.ph.i.i.i.i.i.preheader.i25.i:                 ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cu, ptr nonnull align 8 %.sroa.07.013.i11.i, i64 %i.db, i1 false), !tbaa !30, !noalias !620
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i24.i

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i24.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i25.i, %bb.n
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !30
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i9.i
  %i.dd = load ptr, ptr %.sroa.07.013.i11.i, align 8, !tbaa !30 ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %.val2.i7.i.i15.i = load i32, ptr %i.de, align 8, !tbaa !16
  %i.df = icmp slt i32 %.val.i.i13.i, %.val2.i7.i.i15.i
  br i1 %i.df, label %.lr.ph.i.i20.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i16.i

.lr.ph.i.i20.i:                                   ; preds = %bb.o, %.lr.ph.i.i20.i
  %i.dg = phi ptr [ %i.di, %.lr.ph.i.i20.i ], [ %i.dd, %bb.o ]
  %.pn8.i.i21.i = phi ptr [ %.sroa.02.0.i.i22.i, %.lr.ph.i.i20.i ], [ %.sroa.07.013.i11.i, %bb.o ] ; 2 uses
  %.sroa.02.0.i.i22.i = getelementptr inbounds nuw i8, ptr %.pn8.i.i21.i, i64 8 ; 3 uses
  %i.dh = getelementptr inbounds i8, ptr %.pn8.i.i21.i, i64 -8
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !30
  %i.di = load ptr, ptr %.sroa.02.0.i.i22.i, align 8, !tbaa !30 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  %.val2.i.i.i23.i = load i32, ptr %i.dj, align 8, !tbaa !16
  %i.dk = icmp slt i32 %.val.i.i13.i, %.val2.i.i.i23.i
  br i1 %i.dk, label %.lr.ph.i.i20.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i16.i, !llvm.loop !606

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i16.i: ; preds = %.lr.ph.i.i20.i, %bb.o
  %.pre-phi.i.i17.i = phi ptr [ %.sroa.07.013.i11.i, %bb.o ], [ %.sroa.02.0.i.i22.i, %.lr.ph.i.i20.i ]
  %i.dl = getelementptr inbounds i8, ptr %.pre-phi.i.i17.i, i64 -8
  store ptr %i.cv, ptr %i.dl, align 8, !tbaa !30
  br label %bb.p

bb.p:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_T0_.exit.i16.i, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i24.i
  %.not.i18.i = icmp eq ptr %i.cu, %.sroa.0.0.copyload.i2.i
  br i1 %.not.i18.i, label %_ZSt22__chunk_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_.exit, label %.lr.ph.i9.i, !llvm.loop !607

_ZSt22__chunk_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_.exit: ; preds = %bb.p, %._crit_edge.i, %bb.m
  %i.dm = icmp sgt i64 %i.d, 7
  br i1 %i.dm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEEvT_S13_T0_T1_.exit
  %i.dn = ptrtoint ptr %i.e to i64                ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPP26cmCTestBinPackerAllocationSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEElNS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS0_SaIS0_EEEUlS1_S1_E_EEEvT_S13_T0_T1_T2_.exit
  %.049 = phi i64 [ 7, %.lr.ph ], [ %i.ks, %_ZSt17__merge_sort_loopIPP26cmCTestBinPackerAllocationSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEElNS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS0_SaIS0_EEEUlS1_S1_E_EEEvT_S13_T0_T1_T2_.exit ] ; 6 uses
  %i.do = shl nsw i64 %.049, 1                    ; 4 uses
  %.not59.i = icmp slt i64 %i.d, %i.do
  br i1 %.not59.i, label %._crit_edge.i21, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q
  %i.dp = sub i64 0, %i.do
  %.neg.i = mul i64 %.049, -8                     ; 2 uses
  %.not22.i.i = icmp eq i64 %.neg.i, 0
  br label %bb.r

bb.r:                                             ; preds = %_ZSt12__move_mergeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET0_T_S14_S14_S14_S13_T1_.exit.i, %.lr.ph.i
  %i.dq = phi i64 [ %i.a, %.lr.ph.i ], [ %i.ei, %_ZSt12__move_mergeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET0_T_S14_S14_S14_S13_T1_.exit.i ] ; 3 uses
  %.060.i = phi ptr [ %2, %.lr.ph.i ], [ %.04.lcssa.i.i.i.i.i7.i.i, %_ZSt12__move_mergeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET0_T_S14_S14_S14_S13_T1_.exit.i ] ; 2 uses
  %i.dr = inttoptr i64 %i.dq to ptr               ; 4 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %.neg.i ; 3 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.dp ; 3 uses
  %i.du = ptrtoint ptr %i.ds to i64
  br i1 %.not22.i.i, label %.critedge.i.i, label %.lr.ph.i.i16

.lr.ph.i.i16:                                     ; preds = %bb.r, %bb.s
  %.sroa.043.0.i = phi ptr [ %.sroa.043.1.i, %bb.s ], [ %i.ds, %bb.r ] ; 3 uses
  %.sroa.045.0.i = phi ptr [ %.sroa.045.1.i, %bb.s ], [ %i.dr, %bb.r ]
  %i.dv = phi i64 [ %i.ef, %bb.s ], [ %i.dq, %bb.r ] ; 2 uses
  %.023.i.i = phi ptr [ %i.ee, %bb.s ], [ %.060.i, %bb.r ] ; 3 uses
  %.not18.i.i = icmp eq ptr %.sroa.043.0.i, %i.dt
  br i1 %.not18.i.i, label %.critedge.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i16
  %i.dw = getelementptr inbounds i8, ptr %.sroa.043.0.i, i64 -8 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !30 ; 2 uses
  %i.dy = inttoptr i64 %i.dv to ptr
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !30 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dx, i64 8
  %.val.i.i.i17 = load i32, ptr %i.eb, align 8, !tbaa !16
  %i.ec = getelementptr i8, ptr %i.ea, i64 8
  %.val1.i.i.i18 = load i32, ptr %i.ec, align 8, !tbaa !16
  %i.ed = icmp slt i32 %.val.i.i.i17, %.val1.i.i.i18 ; 3 uses
  %.sroa.043.1.i = select i1 %i.ed, ptr %i.dw, ptr %.sroa.043.0.i ; 2 uses
  %.sroa.045.1.idx.i = select i1 %i.ed, i64 0, i64 -8
  %.sroa.045.1.i = getelementptr inbounds i8, ptr %.sroa.045.0.i, i64 %.sroa.045.1.idx.i ; 3 uses
  %.sink.i.i = select i1 %i.ed, ptr %i.dx, ptr %i.ea
  store ptr %.sink.i.i, ptr %.023.i.i, align 8, !tbaa !30
  %i.ee = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i19 = icmp eq ptr %.sroa.045.1.i, %i.ds
  %i.ef = ptrtoint ptr %.sroa.045.1.i to i64      ; 2 uses
  br i1 %.not.i.i19, label %.critedge.i.i, label %.lr.ph.i.i16, !llvm.loop !631

.critedge.i.i:                                    ; preds = %bb.s, %.lr.ph.i.i16, %bb.r
  %.sroa.043.2.i = phi ptr [ %i.dr, %bb.r ], [ %i.dt, %.lr.ph.i.i16 ], [ %.sroa.043.1.i, %bb.s ] ; 3 uses
  %i.eg = phi i64 [ %i.dq, %bb.r ], [ %i.dv, %.lr.ph.i.i16 ], [ %i.ef, %bb.s ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %.060.i, %bb.r ], [ %.023.i.i, %.lr.ph.i.i16 ], [ %i.ee, %bb.s ] ; 3 uses
  %i.eh = ptrtoint ptr %.sroa.043.2.i to i64
  %i.ei = ptrtoint ptr %i.dt to i64               ; 4 uses
  %i.ej = sub i64 %i.eg, %i.du
  %i.ek = ashr exact i64 %i.ej, 3                 ; 5 uses
  %i.el = icmp sgt i64 %i.ek, 0
  br i1 %i.el, label %.lr.ph.i.i.i.i.preheader.i.i.i, label %_ZSt4moveISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_ET0_T_SC_SB_.exit.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %.critedge.i.i
  %i.em = inttoptr i64 %i.eg to ptr               ; 2 uses
  %xtraiter = and i64 %i.ek, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol
  %i.en = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.em, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %.06.i.i.i.i.i.i.i.prol = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.ek, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %.045.i.i.i.i.i.i.i.prol = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.0.lcssa.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -8 ; 3 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !30
  store ptr %i.ep, ptr %.045.i.i.i.i.i.i.i.prol, align 8, !tbaa !30
  %i.eq = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.prol, i64 8 ; 3 uses
  %i.er = add nsw i64 %.06.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !632

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.unr = phi ptr [ %i.em, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.i.i.unr = phi i64 [ %i.ek, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.er, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.045.i.i.i.i.i.i.i.unr = phi ptr [ %.0.lcssa.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.eq, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader.i.i.i ], [ %i.eq, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.es = icmp ult i64 %i.ek, 8
  br i1 %i.es, label %_ZSt4moveISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_ET0_T_SC_SB_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %i.et = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.06.i.i.i.i.i.i.i = phi i64 [ %i.fs, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.045.i.i.i.i.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i.i.i ], [ %.045.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !30
  store ptr %i.ev, ptr %.045.i.i.i.i.i.i.i, align 8, !tbaa !30
  %i.ew = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i, i64 8
  %i.ex = getelementptr inbounds i8, ptr %i.et, i64 -16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !30
  store ptr %i.ey, ptr %i.ew, align 8, !tbaa !30
  %i.ez = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i, i64 16
  %i.fa = getelementptr inbounds i8, ptr %i.et, i64 -24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !30
  store ptr %i.fb, ptr %i.ez, align 8, !tbaa !30
  %i.fc = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i, i64 24
  %i.fd = getelementptr inbounds i8, ptr %i.et, i64 -32
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !30
  store ptr %i.fe, ptr %i.fc, align 8, !tbaa !30
  %i.ff = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i, i64 32
  %i.fg = getelementptr inbounds i8, ptr %i.et, i64 -40
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !30
  store ptr %i.fh, ptr %i.ff, align 8, !tbaa !30
  %i.fi = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i, i64 40
  %i.fj = getelementptr inbounds i8, ptr %i.et, i64 -48
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !30
  store ptr %i.fk, ptr %i.fi, align 8, !tbaa !30
  %i.fl = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i, i64 48
  %i.fm = getelementptr inbounds i8, ptr %i.et, i64 -56
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !30
  store ptr %i.fn, ptr %i.fl, align 8, !tbaa !30
  %i.fo = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i, i64 56
  %i.fp = getelementptr inbounds i8, ptr %i.et, i64 -64 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !30
  store ptr %i.fq, ptr %i.fo, align 8, !tbaa !30
  %i.fr = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.fs = add nsw i64 %.06.i.i.i.i.i.i.i, -8
  %i.ft = icmp sgt i64 %.06.i.i.i.i.i.i.i, 8
  br i1 %i.ft, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_ET0_T_SC_SB_.exit.i.i, !llvm.loop !122

_ZSt4moveISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_ET0_T_SC_SB_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %.critedge.i.i
  %.04.lcssa.i.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i.i, %.critedge.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.fr, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.fu = sub i64 %i.eh, %i.ei
  %i.fv = ashr exact i64 %i.fu, 3                 ; 5 uses
  %i.fw = icmp sgt i64 %i.fv, 0
  br i1 %i.fw, label %.lr.ph.i.i.i.i.i9.i.i.preheader, label %_ZSt12__move_mergeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET0_T_S14_S14_S14_S13_T1_.exit.i

.lr.ph.i.i.i.i.i9.i.i.preheader:                  ; preds = %_ZSt4moveISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_ET0_T_SC_SB_.exit.i.i
  %xtraiter143 = and i64 %i.fv, 7                 ; 2 uses
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %.lr.ph.i.i.i.i.i9.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i9.i.i.prol

.lr.ph.i.i.i.i.i9.i.i.prol:                       ; preds = %.lr.ph.i.i.i.i.i9.i.i.preheader, %.lr.ph.i.i.i.i.i9.i.i.prol
  %i.fx = phi ptr [ %i.fy, %.lr.ph.i.i.i.i.i9.i.i.prol ], [ %.sroa.043.2.i, %.lr.ph.i.i.i.i.i9.i.i.preheader ]
  %.06.i.i.i.i.i10.i.i.prol = phi i64 [ %i.gb, %.lr.ph.i.i.i.i.i9.i.i.prol ], [ %i.fv, %.lr.ph.i.i.i.i.i9.i.i.preheader ]
  %.045.i.i.i.i.i11.i.i.prol = phi ptr [ %i.ga, %.lr.ph.i.i.i.i.i9.i.i.prol ], [ %.04.lcssa.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i9.i.i.preheader ] ; 2 uses
  %prol.iter145 = phi i64 [ %prol.iter145.next, %.lr.ph.i.i.i.i.i9.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i9.i.i.preheader ]
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -8 ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !30
  store ptr %i.fz, ptr %.045.i.i.i.i.i11.i.i.prol, align 8, !tbaa !30
  %i.ga = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i11.i.i.prol, i64 8 ; 3 uses
  %i.gb = add nsw i64 %.06.i.i.i.i.i10.i.i.prol, -1 ; 2 uses
  %prol.iter145.next = add i64 %prol.iter145, 1   ; 2 uses
  %prol.iter145.cmp.not = icmp eq i64 %prol.iter145.next, %xtraiter143
  br i1 %prol.iter145.cmp.not, label %.lr.ph.i.i.i.i.i9.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i9.i.i.prol, !llvm.loop !633

.lr.ph.i.i.i.i.i9.i.i.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i9.i.i.prol, %.lr.ph.i.i.i.i.i9.i.i.preheader
  %.unr146 = phi ptr [ %.sroa.043.2.i, %.lr.ph.i.i.i.i.i9.i.i.preheader ], [ %i.fy, %.lr.ph.i.i.i.i.i9.i.i.prol ]
  %.06.i.i.i.i.i10.i.i.unr = phi i64 [ %i.fv, %.lr.ph.i.i.i.i.i9.i.i.preheader ], [ %i.gb, %.lr.ph.i.i.i.i.i9.i.i.prol ]
  %.045.i.i.i.i.i11.i.i.unr = phi ptr [ %.04.lcssa.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i9.i.i.preheader ], [ %i.ga, %.lr.ph.i.i.i.i.i9.i.i.prol ]
  %.lcssa130.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i9.i.i.preheader ], [ %i.ga, %.lr.ph.i.i.i.i.i9.i.i.prol ]
  %i.gc = icmp ult i64 %i.fv, 8
  br i1 %i.gc, label %_ZSt12__move_mergeISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPP26cmCTestBinPackerAllocationSt6vectorIS4_SaIS4_EEEEES5_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122AllocateCTestResourcesINSD_23BlockAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessISM_ESaISt4pairIKSM_SO_EEERS6_IS3_SaIS3_EEEUlS4_S4_E_EEET0_T_S14_S14_S14_S13_T1_.exit.i, label %.lr.ph.i.i.i.i.i9.i.i

.lr.ph.i.i.i.i.i9.i.i:                            ; preds = %.lr.ph.i.i.i.i.i9.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i9.i.i
  %i.gd = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i9.i.i ], [ %.unr146, %.lr.ph.i.i.i.i.i9.i.i.prol.loopexit ] ; 8 uses
  %.06.i.i.i.i.i10.i.i = phi i64 [ %i.hc, %.lr.ph.i.i.i.i.i9.i.i ], [ %.06.i.i.i.i.i10.i.i.unr, %.lr.ph.i.i.i.i.i9.i.i.prol.loopexit ] ; 2 uses
  %.045.i.i.i.i.i11.i.i = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i9.i.i ], [ %.045.i.i.i.i.i11.i.i.unr, %.lr.ph.i.i.i.i.i9.i.i.prol.loopexit ] ; 9 uses
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 -8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !30
  store ptr %i.gf, ptr %.045.i.i.i.i.i11.i.i, align 8, !tbaa !30
  %i.gg = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i11.i.i, i64 8
  %i.gh = getelementptr inbounds i8, ptr %i.gd, i64 -16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !30
  store ptr %i.gi, ptr %i.gg, align 8, !tbaa !30
  %i.gj = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i11.i.i, i64 16
  %i.gk = getelementptr inbounds i8, ptr %i.gd, i64 -24
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !30
  store ptr %i.gl, ptr %i.gj, align 8, !tbaa !30
  %i.gm = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i11.i.i, i64 24
  %i.gn = getelementptr inbounds i8, ptr %i.gd, i64 -32
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !30
  store ptr %i.go, ptr %i.gm, align 8, !tbaa !30
  %i.gp = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i11.i.i, i64 32
  %i.gq = getelementptr inbounds i8, ptr %i.gd, i64 -40
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !30
  store ptr %i.gr, ptr %i.gp, align 8, !tbaa !30
  %i.gs = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i11.i.i, i64 40
  %i.gt = getelementptr inbounds i8, ptr %i.gd, i64 -48
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !30
  store ptr %i.gu, ptr %i.gs, align 8, !tbaa !30
end_hunk_1
