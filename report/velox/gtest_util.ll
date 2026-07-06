inline.NumInlined: 5869
inline.NumDeleted: 2271
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5arrow16AssertZeroPaddedERKNS_5ArrayE:bb.a
  store i32 %i.ac, ptr %i.b, align 4, !tbaa !3
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.55, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.g

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ae = load i8, ptr %1, align 8, !tbaa !51, !range !162, !noundef !163
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %.critedge, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit44

bb.h:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !67  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !32
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.j, %bb.i
  %i.aj = phi ptr [ %i.ai, %bb.j ], [ @.str.76, %bb.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 737, ptr noundef %i.aj)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ak = load ptr, ptr %2, align 8, !tbaa !61    ; 3 uses
  %.not.i.i38 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i38, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(128) %i.ak) #30, !inline_history !108
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !67  ; 4 uses
  %.not.i.i39 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i39, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !25
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #32
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 32) #32
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.o) #32
  br label %.critedge34

bb.n:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit42

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #30
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.p ], [ %i.av, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ax = load ptr, ptr %2, align 8, !tbaa !61    ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i40, label %_ZN7testing7MessageD2Ev.exit42, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41: ; preds = %bb.q
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !63
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #30, !inline_history !108
  br label %_ZN7testing7MessageD2Ev.exit42

_ZN7testing7MessageD2Ev.exit42:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41, %bb.q, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.au, %bb.n ], [ %.pn, %bb.q ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit44

_ZNSt6vectorIhSaIhEED2Ev.exit44:                  ; preds = %_ZN7testing7MessageD2Ev.exit42, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit42 ], [ %i.ag, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.o) #32
  resume { ptr, i32 } %.pn.pn.pn

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !67  ; 4 uses
  %.not.i.i45 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i45, label %_ZNSt6vectorIhSaIhEED2Ev.exit51, label %bb.r

bb.r:                                             ; preds = %.critedge
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46: ; preds = %bb.r
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !25
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #32
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i47

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i47: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 32) #32
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit51

_ZNSt6vectorIhSaIhEED2Ev.exit51:                  ; preds = %.critedge, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.o) #32
  br label %.critedge32

.critedge32:                                      ; preds = %bb.c, %_ZNSt6vectorIhSaIhEED2Ev.exit51, %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.059.067, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.h
  br i1 %.not, label %.critedge34, label %bb.b

.critedge34:                                      ; preds = %.critedge32, %bb.a, %_ZNSt6vectorIhSaIhEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, target_mem: none) uwtable
define void @_ZN5arrow15TestInitializedERKNS_5ArrayE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @_ZN5arrow15TestInitializedERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(120) %i.b)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define void @_ZN5arrow15TestInitializedERKNS_9ArrayDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #16 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %._crit_edge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.ap, %._crit_edge ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !720  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !720  ; 2 uses
  %.not38 = icmp eq ptr %i.b, %i.d
  br i1 %.not38, label %.preheader, label %.lr.ph41

.preheader.loopexit:                              ; preds = %.loopexit
  %i.e = zext i8 %.2 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %tailrecurse
  %.0.lcssa = phi i32 [ 0, %tailrecurse ], [ %i.e, %.preheader.loopexit ] ; 8 uses
  %1 = trunc nuw i32 %.0.lcssa to i8
  %2 = trunc nuw i32 %.0.lcssa to i8
  %3 = lshr i8 %2, 1
  %4 = xor i8 %3, %1
  %5 = trunc nuw i32 %.0.lcssa to i8
  %6 = lshr i8 %5, 2
  %7 = xor i8 %4, %6
  %8 = trunc nuw i32 %.0.lcssa to i8
  %9 = lshr i8 %8, 3
  %10 = xor i8 %7, %9
  %11 = trunc nuw i32 %.0.lcssa to i8
  %12 = lshr i8 %11, 4
  %13 = xor i8 %10, %12
  %14 = trunc nuw i32 %.0.lcssa to i8
  %15 = lshr i8 %14, 5
  %16 = xor i8 %13, %15
  %17 = trunc nuw i32 %.0.lcssa to i8
  %18 = lshr i8 %17, 6
  %19 = xor i8 %16, %18
  %i.f = trunc i8 %19 to i1
  %i.g = icmp samesign ult i32 %.0.lcssa, 128
  %i.h = xor i1 %i.g, %i.f
  br i1 %i.h, label %bb.d, label %bb.e

.lr.ph41:                                         ; preds = %tailrecurse, %.loopexit
  %.040 = phi i8 [ %.2, %.loopexit ], [ 0, %tailrecurse ] ; 6 uses
  %.sroa.030.039 = phi ptr [ %i.ah, %.loopexit ], [ %i.b, %tailrecurse ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.030.039, align 8, !tbaa !664 ; 4 uses
  %.not35 = icmp eq ptr %i.i, null
  br i1 %.not35, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph41
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !721
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !254  ; 9 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.p, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check56 = icmp ult i64 %i.p, 32
  br i1 %min.iters.check56, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.p, 28
  %n.vec = and i64 %i.p, 9223372036854775776      ; 4 uses
  %i.r = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.040, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %i.r, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi57 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <16 x i8>, ptr %i.s, align 1, !tbaa !25
  %wide.load58 = load <16 x i8>, ptr %i.t, align 1, !tbaa !25
  %i.u = xor <16 x i8> %wide.load, %vec.phi       ; 2 uses
  %i.v = xor <16 x i8> %wide.load58, %vec.phi57   ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !722

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <16 x i8> %i.v, %i.u
  %i.x = tail call i8 @llvm.vector.reduce.xor.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !725

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.x, %vec.epilog.iter.check ], [ %.040, %vector.main.loop.iter.check ]
  %n.vec60 = and i64 %i.p, 9223372036854775804    ; 3 uses
  %i.y = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi62 = phi <4 x i8> [ %i.y, %vec.epilog.ph ], [ %i.aa, %vec.epilog.vector.body ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 %index61
  %wide.load63 = load <4 x i8>, ptr %i.z, align 1, !tbaa !25
  %i.aa = xor <4 x i8> %wide.load63, %vec.phi62   ; 2 uses
  %index.next64 = add nuw i64 %index61, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next64, %n.vec60
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !726

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ac = tail call i8 @llvm.vector.reduce.xor.v4i8(<4 x i8> %i.aa) ; 2 uses
  %cmp.n65 = icmp eq i64 %i.p, %n.vec60
  br i1 %cmp.n65, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.137.ph = phi i8 [ %.040, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  %.02536.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec60, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.137 = phi i8 [ %i.af, %.lr.ph ], [ %.137.ph, %.lr.ph.preheader ]
  %.02536 = phi i64 [ %i.ag, %.lr.ph ], [ %.02536.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 %.02536
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !25
  %i.af = xor i8 %i.ae, %.137                     ; 2 uses
  %i.ag = add nuw nsw i64 %.02536, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.p
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !727

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.c, %bb.b, %.lr.ph41
  %.2 = phi i8 [ %.040, %.lr.ph41 ], [ %.040, %bb.b ], [ %.040, %bb.c ], [ %i.ac, %vec.epilog.middle.block ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.030.039, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ah, %i.d
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph41

bb.d:                                             ; preds = %.preheader
  %i.ai = load volatile i32, ptr @_ZN5arrow12_GLOBAL__N_110throw_awayE, align 4, !tbaa !3
  %i.aj = add nsw i32 %i.ai, 1
  store volatile i32 %i.aj, ptr @_ZN5arrow12_GLOBAL__N_110throw_awayE, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !728 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !728 ; 2 uses
  %.not3345 = icmp eq ptr %i.al, %i.an
  br i1 %.not3345, label %._crit_edge, label %.lr.ph47

._crit_edge:                                      ; preds = %.lr.ph47, %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20 ; 2 uses
  %.not34 = icmp eq ptr %i.ap, null
  br i1 %.not34, label %bb.f, label %tailrecurse

.lr.ph47:                                         ; preds = %bb.e, %.lr.ph47
  %.sroa.026.046 = phi ptr [ %i.ar, %.lr.ph47 ], [ %i.al, %bb.e ] ; 2 uses
  %i.aq = load ptr, ptr %.sroa.026.046, align 8, !tbaa !20
  tail call void @_ZN5arrow15TestInitializedERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(120) %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.026.046, i64 16 ; 2 uses
  %.not33 = icmp eq ptr %i.ar, %i.an
  br i1 %.not33, label %._crit_edge, label %.lr.ph47

bb.f:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8SleepForEd(double noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 6 uses
  %i.a = fmul double %0, 1.000000e+09
  %i.b = fptosi double %i.a to i64                ; 3 uses
  %i.c = icmp slt i64 %i.b, 1
  br i1 %i.c, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 %i.b, 1000000000                ; 2 uses
  %.neg.i.i = mul nsw i64 %i.d, -1000000000
  %i.e = add nsw i64 %.neg.i.i, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store i64 %i.d, ptr %1, align 8, !tbaa !729
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !731
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.g = call i32 @nanosleep(ptr noundef nonnull %1, ptr noundef nonnull %1)
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__errno_location() #36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = icmp eq i32 %i.j, 4
  br i1 %i.k, label %bb.c, label %.critedge.i, !llvm.loop !732

.critedge.i:                                      ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit: ; preds = %bb.a, %.critedge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow9SleepABitEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  store i64 0, ptr %0, align 8, !tbaa !729
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1000000, ptr %i.a, align 8, !tbaa !731
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = call i32 @nanosleep(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %_ZN5arrow8SleepForEd.exit

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__errno_location() #36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3
  %i.f = icmp eq i32 %i.e, 4
  br i1 %i.f, label %bb.b, label %_ZN5arrow8SleepForEd.exit, !llvm.loop !732

_ZN5arrow8SleepForEd.exit:                        ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  ret void
end_hunk_0
