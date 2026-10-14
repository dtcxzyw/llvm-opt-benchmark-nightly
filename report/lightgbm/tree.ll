Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/tree?download=true
inline.NumInlined: 6283
inline.NumDeleted: 1853
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN3fmt3v116detail14digit_groupingIcEC2INS1_10locale_refETnNSt9enable_ifIXsr3std7is_sameIT_S5_EE5valueEiE4typeELi0EEES7_b:bb.a
  store i64 %i.m, ptr %i.g, align 8, !tbaa !202, !alias.scope !886
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %.noexc
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.g, %.noexc ] ; 2 uses
  switch i64 %i.j, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !202
  store i8 %i.o, ptr %i.n, align 1, !tbaa !202
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !276, !noalias !886 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !263, !alias.scope !886
  %i.r = load ptr, ptr %4, align 8, !tbaa !262, !alias.scope !886
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !886
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.v = load i8, ptr %i.u, align 8, !tbaa !356, !noalias !886
  store i8 %i.v, ptr %i.t, align 8, !tbaa !356, !alias.scope !886
  %i.w = load ptr, ptr %3, align 8, !tbaa !262, !noalias !886 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.z = load i64, ptr %i.x, align 8, !tbaa !202, !noalias !886
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %3, align 8, !tbaa !262, !noalias !886 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN3fmt3v116detail20thousands_sep_resultIcED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i: ; preds = %bb.f
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !202, !noalias !886
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #41
  br label %_ZN3fmt3v116detail20thousands_sep_resultIcED2Ev.exit4.i

_ZN3fmt3v116detail20thousands_sep_resultIcED2Ev.exit4.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12, !noalias !886
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12, !noalias !886
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ah = load i8, ptr %i.t, align 8, !tbaa !356  ; 2 uses
  %.not = icmp eq i8 %i.ah, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ai = load i64, ptr %i.f, align 8, !tbaa !263
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 0, i64 noundef %i.ai, i64 noundef 1, i8 noundef signext %i.ah)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit unwind label %bb.i ; 0 uses

bb.h:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %4, align 8, !tbaa !262   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.g
  br i1 %i.an, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.ao = load i64, ptr %i.g, align 8, !tbaa !202
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #41
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.aq = load ptr, ptr %4, align 8, !tbaa !262   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.g
  br i1 %i.ar, label %_ZN3fmt3v116detail20thousands_sep_resultIcED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit
  %i.as = load i64, ptr %i.g, align 8, !tbaa !202
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #41
  br label %_ZN3fmt3v116detail20thousands_sep_resultIcED2Ev.exit11

_ZN3fmt3v116detail20thousands_sep_resultIcED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN3fmt3v116detail20thousands_sep_resultIcED2Ev.exit11
  ret void

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.h, %_ZN3fmt3v116detail20thousands_sep_resultIcED2Ev.exit4.i
  %.pn = phi { ptr, i32 } [ %i.ab, %_ZN3fmt3v116detail20thousands_sep_resultIcED2Ev.exit4.i ], [ %i.ak, %bb.h ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.al, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !262 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.e
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !202
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ay = load ptr, ptr %0, align 8, !tbaa !262   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.b
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !202
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_(ptr %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %.not.i = icmp eq i8 %4, 0
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %1, 99
  br i1 %i.b, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.020.i.i = phi i32 [ %i.c, %.lr.ph.i.i ], [ %2, %bb.b ]
  %.01819.i.i = phi i32 [ %i.k, %.lr.ph.i.i ], [ %1, %bb.b ] ; 3 uses
  %i.c = add i32 %.020.i.i, -2                    ; 3 uses
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  %i.f = urem i32 %.01819.i.i, 100
  %i.g = shl nuw nsw i32 %i.f, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2
  store i16 %i.j, ptr %i.e, align 1
  %i.k = udiv i32 %.01819.i.i, 100                ; 2 uses
  %i.l = icmp ugt i32 %.01819.i.i, 9999
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !5

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.018.lcssa.i.i = phi i32 [ %1, %bb.b ], [ %i.k, %.lr.ph.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi i32 [ %2, %bb.b ], [ %i.c, %.lr.ph.i.i ] ; 2 uses
  %i.m = icmp samesign ugt i32 %.018.lcssa.i.i, 9
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = add i32 %.0.lcssa.i.i, -2
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  %i.q = shl nuw nsw i32 %.018.lcssa.i.i, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2
  store i16 %i.t, ptr %i.p, align 1
  br label %_ZN3fmt3v116detail17do_format_decimalIcjEEPT_S4_T0_i.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.u = trunc nuw nsw i32 %.018.lcssa.i.i to i8
  %i.v = or disjoint i8 %i.u, 48
  %i.w = add i32 %.0.lcssa.i.i, -1
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x
  store i8 %i.v, ptr %i.y, align 1, !tbaa !202
  br label %_ZN3fmt3v116detail17do_format_decimalIcjEEPT_S4_T0_i.exit.i

_ZN3fmt3v116detail17do_format_decimalIcjEEPT_S4_T0_i.exit.i: ; preds = %bb.d, %bb.c
  %i.z = sext i32 %2 to i64
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z
  br label %_ZN3fmt3v116detail17write_significandIcjTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit

bb.e:                                             ; preds = %bb.a
  %i.ab = sext i32 %2 to i64
  %i.ac = getelementptr i8, ptr %i.a, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 1      ; 4 uses
  %i.ae = sub nsw i32 %2, %3                      ; 4 uses
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %5 = lshr i32 %i.ae, 1                          ; 3 uses
  %6 = and i32 %i.ae, 2
  %lcmp.mod.not = icmp eq i32 %6, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.a, label %.lr.ph.preheader.i.a

.lr.ph.preheader.i.a:                             ; preds = %.lr.ph.preheader.i
  %7 = getelementptr i8, ptr %i.ac, i64 -1        ; 3 uses
  %8 = urem i32 %1, 100
  %9 = shl nuw nsw i32 %8, 1
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %10
  %12 = load i16, ptr %11, align 2
  store i16 %12, ptr %7, align 1
  %13 = udiv i32 %1, 100                          ; 2 uses
  %14 = add nsw i32 %5, -1
  br label %._crit_edge.i.a

._crit_edge.i.a:                                  ; preds = %.lr.ph.preheader.i.a, %.lr.ph.preheader.i
  %.046.i.unr = phi i32 [ %5, %.lr.ph.preheader.i ], [ %14, %.lr.ph.preheader.i.a ]
  %.02845.i.unr = phi ptr [ %i.ad, %.lr.ph.preheader.i ], [ %7, %.lr.ph.preheader.i.a ]
  %.029.lcssa.i.a = phi i32 [ %1, %.lr.ph.preheader.i ], [ %13, %.lr.ph.preheader.i.a ]
  %.028.lcssa.i.a = phi ptr [ poison, %.lr.ph.preheader.i ], [ %7, %.lr.ph.preheader.i.a ]
  %.lcssa31.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %13, %.lr.ph.preheader.i.a ]
  %.not32.i.a = icmp eq i32 %5, 1
  br i1 %.not32.i.a, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.a, %.lr.ph.i, %bb.e
  %.029.lcssa.i = phi i32 [ %1, %bb.e ], [ %.lcssa31.unr, %._crit_edge.i.a ], [ %i.am, %.lr.ph.i ] ; 3 uses
  %.028.lcssa.i = phi ptr [ %i.ad, %bb.e ], [ %.028.lcssa.i.a, %._crit_edge.i.a ], [ %i.ag, %.lr.ph.i ] ; 2 uses
  %15 = and i32 %i.ae, 1
  %.not32.i = icmp eq i32 %15, 0
  br i1 %.not32.i, label %bb.g, label %bb.f

.lr.ph.i:                                         ; preds = %._crit_edge.i.a, %.lr.ph.i
  %.046.i = phi i32 [ %i.an, %.lr.ph.i ], [ %.046.i.unr, %._crit_edge.i.a ] ; 2 uses
  %.02845.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.02845.i.unr, %._crit_edge.i.a ] ; 2 uses
  %.02944.i = phi i32 [ %i.am, %.lr.ph.i ], [ %.029.lcssa.i.a, %._crit_edge.i.a ] ; 3 uses
  %16 = getelementptr inbounds i8, ptr %.02845.i, i64 -2
  %17 = urem i32 %.02944.i, 100
  %18 = shl nuw nsw i32 %17, 1
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %19
  %21 = load i16, ptr %20, align 2
  store i16 %21, ptr %16, align 1
  %22 = udiv i32 %.02944.i, 100
  %i.ag = getelementptr inbounds i8, ptr %.02845.i, i64 -4 ; 3 uses
  %i.ah = urem i32 %22, 100
  %i.ai = shl nuw nsw i32 %i.ah, 1
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2
  store i16 %i.al, ptr %i.ag, align 1
  %i.am = udiv i32 %.02944.i, 10000               ; 2 uses
  %i.an = add nsw i32 %.046.i, -2
  %23 = icmp sgt i32 %.046.i, 2
  br i1 %23, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !887

bb.f:                                             ; preds = %._crit_edge.i
  %i.ao = urem i32 %.029.lcssa.i, 10
  %i.ap = trunc nuw nsw i32 %i.ao to i8
  %i.aq = or disjoint i8 %i.ap, 48
  %i.ar = getelementptr inbounds i8, ptr %.028.lcssa.i, i64 -1 ; 2 uses
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !202
  %i.as = udiv i32 %.029.lcssa.i, 10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.130.i = phi i32 [ %i.as, %bb.f ], [ %.029.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.1.i = phi ptr [ %i.ar, %bb.f ], [ %.028.lcssa.i, %._crit_edge.i ]
  %i.at = getelementptr inbounds i8, ptr %.1.i, i64 -1 ; 2 uses
  store i8 %4, ptr %i.at, align 1, !tbaa !202
  %i.au = sext i32 %3 to i64
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %i.av ; 3 uses
  %i.ax = icmp ugt i32 %.130.i, 99
  br i1 %i.ax, label %.lr.ph.i37.i, label %._crit_edge.i33.i

.lr.ph.i37.i:                                     ; preds = %bb.g, %.lr.ph.i37.i
  %.020.i38.i = phi i32 [ %i.ay, %.lr.ph.i37.i ], [ %3, %bb.g ]
  %.01819.i39.i = phi i32 [ %i.bg, %.lr.ph.i37.i ], [ %.130.i, %bb.g ] ; 3 uses
  %i.ay = add i32 %.020.i38.i, -2                 ; 3 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az
  %i.bb = urem i32 %.01819.i39.i, 100
  %i.bc = shl nuw nsw i32 %i.bb, 1
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2
  store i16 %i.bf, ptr %i.ba, align 1
  %i.bg = udiv i32 %.01819.i39.i, 100             ; 2 uses
  %i.bh = icmp ugt i32 %.01819.i39.i, 9999
  br i1 %i.bh, label %.lr.ph.i37.i, label %._crit_edge.i33.i, !llvm.loop !5

._crit_edge.i33.i:                                ; preds = %.lr.ph.i37.i, %bb.g
  %.018.lcssa.i34.i = phi i32 [ %.130.i, %bb.g ], [ %i.bg, %.lr.ph.i37.i ] ; 3 uses
  %.0.lcssa.i35.i = phi i32 [ %3, %bb.g ], [ %i.ay, %.lr.ph.i37.i ] ; 2 uses
  %i.bi = icmp samesign ugt i32 %.018.lcssa.i34.i, 9
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i33.i
  %i.bj = add i32 %.0.lcssa.i35.i, -2
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bk
  %i.bm = shl nuw nsw i32 %.018.lcssa.i34.i, 1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2
  store i16 %i.bp, ptr %i.bl, align 1
  br label %_ZN3fmt3v116detail17write_significandIcjTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit

bb.i:                                             ; preds = %._crit_edge.i33.i
  %i.bq = trunc nuw nsw i32 %.018.lcssa.i34.i to i8
  %i.br = or disjoint i8 %i.bq, 48
  %i.bs = add i32 %.0.lcssa.i35.i, -1
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bt
  store i8 %i.br, ptr %i.bu, align 1, !tbaa !202
  br label %_ZN3fmt3v116detail17write_significandIcjTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit

_ZN3fmt3v116detail17write_significandIcjTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit: ; preds = %_ZN3fmt3v116detail17do_format_decimalIcjEEPT_S4_T0_i.exit.i, %bb.h, %bb.i
  %.027.i = phi ptr [ %i.aa, %_ZN3fmt3v116detail17do_format_decimalIcjEEPT_S4_T0_i.exit.i ], [ %i.ad, %bb.h ], [ %i.ad, %bb.i ]
  %i.bv = call ptr @_ZN3fmt3v116detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %.027.i, ptr %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %i.bv
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_(i32 noundef %0, ptr %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp slt i32 %0, 0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !270  ; 3 uses
  %i.d = add i64 %i.c, 1                          ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !271
  %i.g = icmp ugt i64 %i.d, %i.f                  ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !272
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.d), !inline_history !9
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !270 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

_ZN3fmt3v1114basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.d, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.j = phi i64 [ %i.c, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.k = load ptr, ptr %1, align 8, !tbaa !269
  store i64 %.pre-phi.i.i, ptr %i.b, align 8, !tbaa !270
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 45, ptr %i.l, align 1, !tbaa !202
  %i.m = sub nsw i32 0, %0
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit19

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !272
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.d), !inline_history !9
  %.pre.i.i17 = load i64, ptr %i.b, align 8, !tbaa !270 ; 2 uses
  %.pre2.i.i18 = add i64 %.pre.i.i17, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit19

_ZN3fmt3v1114basic_appenderIcEaSEc.exit19:        ; preds = %bb.d, %bb.e
  %.pre-phi.i.i16 = phi i64 [ %i.d, %bb.d ], [ %.pre2.i.i18, %bb.e ]
  %i.p = phi i64 [ %i.c, %bb.d ], [ %.pre.i.i17, %bb.e ]
  %i.q = load ptr, ptr %1, align 8, !tbaa !269
  store i64 %.pre-phi.i.i16, ptr %i.b, align 8, !tbaa !270
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 43, ptr %i.r, align 1, !tbaa !202
  br label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit19, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit
  %.0 = phi i32 [ %i.m, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit ], [ %0, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit19 ] ; 5 uses
  %i.s = icmp samesign ugt i32 %.0, 99
  br i1 %i.s, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.t = udiv i32 %.0, 100
  %i.u = urem i32 %.0, 100
  %i.v = shl nuw nsw i32 %i.t, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.w ; 2 uses
  %i.y = icmp samesign ugt i32 %.0, 999
  br i1 %i.y, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.z = load i8, ptr %i.x, align 2, !tbaa !202
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !270 ; 2 uses
  %i.ac = add i64 %i.ab, 1                        ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !271
  %i.af = icmp ugt i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.i, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit24

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !272
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ac), !inline_history !9
  %.pre.i.i22 = load i64, ptr %i.aa, align 8, !tbaa !270 ; 2 uses
  %.pre2.i.i23 = add i64 %.pre.i.i22, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit24

_ZN3fmt3v1114basic_appenderIcEaSEc.exit24:        ; preds = %bb.h, %bb.i
  %.pre-phi.i.i21 = phi i64 [ %i.ac, %bb.h ], [ %.pre2.i.i23, %bb.i ]
  %i.ai = phi i64 [ %i.ab, %bb.h ], [ %.pre.i.i22, %bb.i ]
  %i.aj = load ptr, ptr %1, align 8, !tbaa !269
  store i64 %.pre-phi.i.i21, ptr %i.aa, align 8, !tbaa !270
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 %i.z, ptr %i.ak, align 1, !tbaa !202
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit24, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !202
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !270 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !271
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.k, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit29

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !272
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ap), !inline_history !9
  %.pre.i.i27 = load i64, ptr %i.an, align 8, !tbaa !270 ; 2 uses
  %.pre2.i.i28 = add i64 %.pre.i.i27, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit29

_ZN3fmt3v1114basic_appenderIcEaSEc.exit29:        ; preds = %bb.j, %bb.k
  %.pre-phi.i.i26 = phi i64 [ %i.ap, %bb.j ], [ %.pre2.i.i28, %bb.k ]
  %i.av = phi i64 [ %i.ao, %bb.j ], [ %.pre.i.i27, %bb.k ]
  %i.aw = load ptr, ptr %1, align 8, !tbaa !269
  store i64 %.pre-phi.i.i26, ptr %i.an, align 8, !tbaa !270
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 %i.am, ptr %i.ax, align 1, !tbaa !202
  br label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit29, %bb.f
  %.013 = phi i32 [ %i.u, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit29 ], [ %.0, %bb.f ]
  %i.ay = shl nuw nsw i32 %.013, 1
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !202
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !270 ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !271
  %i.bh = icmp ugt i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.m, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit34

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !272
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.be), !inline_history !9
  %.pre.i.i32 = load i64, ptr %i.bc, align 8, !tbaa !270 ; 2 uses
  %.pre2.i.i33 = add i64 %.pre.i.i32, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit34
end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refE:bb.a
  br label %bb.bk

bb.az:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.kp = sub nsw i32 0, %i.aq                    ; 4 uses
  store i32 %i.kp, ptr %i.i, align 4, !tbaa !88
  %i.kq = icmp eq i32 %i.am, 0
  br i1 %i.kq, label %bb.ba, label %.thread156

.thread156:                                       ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  br label %.thread158

bb.ba:                                            ; preds = %bb.az
  %i.kr = icmp sgt i32 %.sroa.5150.0.copyload, -1
  %i.ks = icmp slt i32 %.sroa.5150.0.copyload, %i.kp
  %or.cond87 = select i1 %i.kr, i1 %i.ks, i1 false
  br i1 %or.cond87, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 %.sroa.5150.0.copyload, ptr %i.i, align 4, !tbaa !88
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.kt = phi i32 [ %.sroa.5150.0.copyload, %bb.bb ], [ %i.kp, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  %.not164 = icmp eq i32 %i.kt, 0
  br i1 %.not164, label %bb.bd, label %.thread158

.thread158:                                       ; preds = %bb.bc, %.thread156
  %.ph = phi i32 [ %i.kp, %.thread156 ], [ %i.kt, %bb.bc ]
  store i8 1, ptr %i.j, align 1, !tbaa !352
  br label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ku = and i64 %.sroa.0148.0.copyload.fr, 8192 ; 2 uses
  %.not165 = icmp eq i64 %i.ku, 0
  %.lobit = lshr exact i64 %i.ku, 13
  %i.kv = trunc nuw nsw i64 %.lobit to i8
  store i8 %i.kv, ptr %i.j, align 1, !tbaa !352
  %spec.select161 = select i1 %.not165, i32 1, i32 2
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.thread158
  %i.kw = phi i32 [ 0, %bb.bd ], [ %.ph, %.thread158 ]
  %i.kx = phi i32 [ %spec.select161, %bb.bd ], [ 2, %.thread158 ]
  %i.ky = add nuw i32 %i.kx, %i.kw
  %i.kz = zext i32 %i.ky to i64
  %i.la = add nuw nsw i64 %i.kz, %i.y             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  store ptr %i.a, ptr %10, align 8, !tbaa !193
  %i.lb = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.j, ptr %i.lb, align 8, !tbaa !354
  %i.lc = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.e, ptr %i.lc, align 8, !tbaa !275
  %i.ld = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.i, ptr %i.ld, align 8, !tbaa !175
  %i.le = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.d, ptr %i.le, align 8, !tbaa !275
  %i.lf = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %i.b, ptr %i.lf, align 8, !tbaa !359
  %i.lg = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.c, ptr %i.lg, align 8, !tbaa !175
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !315
  %i.lj = zext i32 %i.li to i64
  %i.lk = call i64 @llvm.usub.sat.i64(i64 %i.lj, i64 %i.la) ; 4 uses
  %i.ll = lshr i64 %.sroa.0148.0.copyload.fr, 3
  %i.lm = and i64 %i.ll, 7
  %i.ln = getelementptr inbounds nuw i8, ptr @.str.40, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !202
  %i.lp = sext i8 %i.lo to i64
  %i.lq = and i64 %i.lp, 4294967295
  %i.lr = lshr i64 %i.lk, %i.lq                   ; 4 uses
  %i.ls = sub nsw i64 %i.lk, %i.lr
  %i.lt = lshr i64 %.sroa.0148.0.copyload.fr, 15
  %i.lu = and i64 %i.lt, 7
  %i.lv = mul nuw nsw i64 %i.lk, %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !270
  %i.ly = add i64 %i.lx, %i.la
  %i.lz = add i64 %i.ly, %i.lv                    ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !271
  %i.mc = icmp ugt i64 %i.lz, %i.mb
  br i1 %i.mc, label %bb.bf, label %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i115

bb.bf:                                            ; preds = %bb.be
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !272
  call void %i.me(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.lz), !inline_history !924
  br label %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i115

_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i115: ; preds = %bb.bf, %bb.be
  %.not.i.i116 = icmp eq i64 %i.lr, 0
  br i1 %.not.i.i116, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i115
  %i.mf = call ptr @_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.lr, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i115
  %.sroa.09.0.i.i117 = phi ptr [ %i.mf, %bb.bg ], [ %0, %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i115 ]
  %i.mg = call ptr @_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEENKUlS4_E2_clES4_(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr %.sroa.09.0.i.i117) ; 2 uses
  %.not31.i.i118 = icmp eq i64 %i.lk, %i.lr
  br i1 %.not31.i.i118, label %_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_14do_write_floatIcS5_NS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SC_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEEUlS5_E2_EESD_SD_SI_mOT2_.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mh = call ptr @_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.mg, i64 noundef %i.ls, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_14do_write_floatIcS5_NS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SC_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEEUlS5_E2_EESD_SD_SI_mOT2_.exit

_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_14do_write_floatIcS5_NS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SC_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEEUlS5_E2_EESD_SD_SI_mOT2_.exit: ; preds = %bb.bh, %bb.bi
  %.sroa.09.1.i.i119 = phi ptr [ %i.mh, %bb.bi ], [ %i.mg, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_14do_write_floatIcS5_NS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SC_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEEUlS5_E2_EESD_SD_SI_mOT2_.exit, %_ZN3fmt3v116detail14digit_groupingIcED2Ev.exit114, %_ZN3fmt3v116detail14digit_groupingIcED2Ev.exit
  %.sroa.069.1 = phi ptr [ %.sroa.09.1.i.i92, %_ZN3fmt3v116detail14digit_groupingIcED2Ev.exit ], [ %i.kc, %_ZN3fmt3v116detail14digit_groupingIcED2Ev.exit114 ], [ %.sroa.09.1.i.i119, %_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_14do_write_floatIcS5_NS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SC_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEEUlS5_E2_EESD_SD_SI_mOT2_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcS5_NS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SC_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEEUlS5_E_EESD_SD_SI_mOT2_.exit

bb.bk:                                            ; preds = %bb.ay, %bb.ar
  %.pn83.pn = phi { ptr, i32 } [ %i.it, %bb.ar ], [ %i.ko, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %common.resume

_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcS5_NS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SC_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEEUlS5_E_EESD_SD_SI_mOT2_.exit: ; preds = %_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEENKUlS4_E_clES4_.exit, %_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEENKUlS4_E_clES4_.exit136, %bb.w, %bb.bj
  %.sroa.069.2 = phi ptr [ %.sroa.069.1, %bb.bj ], [ %i.fu, %_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEENKUlS4_E_clES4_.exit ], [ %i.eb, %bb.w ], [ %i.ea, %_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEENKUlS4_E_clES4_.exit136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret ptr %.sroa.069.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_(ptr %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %.not.i = icmp eq i8 %4, 0
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 99
  br i1 %i.b, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.020.i.i = phi i32 [ %i.c, %.lr.ph.i.i ], [ %2, %bb.b ]
  %.01819.i.i = phi i64 [ %i.j, %.lr.ph.i.i ], [ %1, %bb.b ] ; 3 uses
  %i.c = add i32 %.020.i.i, -2                    ; 3 uses
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  %i.f = urem i64 %.01819.i.i, 100
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2
  store i16 %i.i, ptr %i.e, align 1
  %i.j = udiv i64 %.01819.i.i, 100                ; 2 uses
  %i.k = icmp ugt i64 %.01819.i.i, 9999
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !6

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.018.lcssa.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %.lr.ph.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi i32 [ %2, %bb.b ], [ %i.c, %.lr.ph.i.i ] ; 2 uses
  %i.l = icmp samesign ugt i64 %.018.lcssa.i.i, 9
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = add i32 %.0.lcssa.i.i, -2
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  %i.p = shl nuw nsw i64 %.018.lcssa.i.i, 1
  %i.q = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2
  store i16 %i.r, ptr %i.o, align 1
  br label %_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.s = trunc nuw nsw i64 %.018.lcssa.i.i to i8
  %i.t = or disjoint i8 %i.s, 48
  %i.u = add i32 %.0.lcssa.i.i, -1
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.v
  store i8 %i.t, ptr %i.w, align 1, !tbaa !202
  br label %_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i

_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i: ; preds = %bb.d, %bb.c
  %i.x = sext i32 %2 to i64
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x
  br label %_ZN3fmt3v116detail17write_significandIcmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit

bb.e:                                             ; preds = %bb.a
  %i.z = sext i32 %2 to i64
  %i.aa = getelementptr i8, ptr %i.a, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 4 uses
  %i.ac = sub nsw i32 %2, %3                      ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %5 = lshr i32 %i.ac, 1                          ; 3 uses
  %6 = and i32 %i.ac, 2
  %lcmp.mod.not = icmp eq i32 %6, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.a, label %.lr.ph.preheader.i.a

.lr.ph.preheader.i.a:                             ; preds = %.lr.ph.preheader.i
  %7 = getelementptr i8, ptr %i.aa, i64 -1        ; 3 uses
  %8 = urem i64 %1, 100
  %9 = shl nuw nsw i64 %8, 1
  %10 = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %9
  %11 = load i16, ptr %10, align 2
  store i16 %11, ptr %7, align 1
  %12 = udiv i64 %1, 100                          ; 2 uses
  %13 = add nsw i32 %5, -1
  br label %._crit_edge.i.a

._crit_edge.i.a:                                  ; preds = %.lr.ph.preheader.i.a, %.lr.ph.preheader.i
  %.046.i.unr = phi i32 [ %5, %.lr.ph.preheader.i ], [ %13, %.lr.ph.preheader.i.a ]
  %.02845.i.unr = phi ptr [ %i.ab, %.lr.ph.preheader.i ], [ %7, %.lr.ph.preheader.i.a ]
  %.029.lcssa.i.a = phi i64 [ %1, %.lr.ph.preheader.i ], [ %12, %.lr.ph.preheader.i.a ]
  %.028.lcssa.i.a = phi ptr [ poison, %.lr.ph.preheader.i ], [ %7, %.lr.ph.preheader.i.a ]
  %.lcssa31.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %12, %.lr.ph.preheader.i.a ]
  %.not32.i.a = icmp eq i32 %5, 1
  br i1 %.not32.i.a, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.a, %.lr.ph.i, %bb.e
  %.029.lcssa.i = phi i64 [ %1, %bb.e ], [ %.lcssa31.unr, %._crit_edge.i.a ], [ %i.aj, %.lr.ph.i ] ; 3 uses
  %.028.lcssa.i = phi ptr [ %i.ab, %bb.e ], [ %.028.lcssa.i.a, %._crit_edge.i.a ], [ %i.ae, %.lr.ph.i ] ; 2 uses
  %14 = and i32 %i.ac, 1
  %.not32.i = icmp eq i32 %14, 0
  br i1 %.not32.i, label %bb.g, label %bb.f

.lr.ph.i:                                         ; preds = %._crit_edge.i.a, %.lr.ph.i
  %.046.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %.046.i.unr, %._crit_edge.i.a ] ; 2 uses
  %.02845.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.02845.i.unr, %._crit_edge.i.a ] ; 2 uses
  %.02944.i = phi i64 [ %i.aj, %.lr.ph.i ], [ %.029.lcssa.i.a, %._crit_edge.i.a ] ; 3 uses
  %15 = getelementptr inbounds i8, ptr %.02845.i, i64 -2
  %16 = urem i64 %.02944.i, 100
  %17 = shl nuw nsw i64 %16, 1
  %18 = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %17
  %19 = load i16, ptr %18, align 2
  store i16 %19, ptr %15, align 1
  %20 = udiv i64 %.02944.i, 100
  %i.ae = getelementptr inbounds i8, ptr %.02845.i, i64 -4 ; 3 uses
  %i.af = urem i64 %20, 100
  %i.ag = shl nuw nsw i64 %i.af, 1
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2
  store i16 %i.ai, ptr %i.ae, align 1
  %i.aj = udiv i64 %.02944.i, 10000               ; 2 uses
  %i.ak = add nsw i32 %.046.i, -2
  %21 = icmp sgt i32 %.046.i, 2
  br i1 %21, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !927

bb.f:                                             ; preds = %._crit_edge.i
  %i.al = urem i64 %.029.lcssa.i, 10
  %i.am = trunc nuw nsw i64 %i.al to i8
  %i.an = or disjoint i8 %i.am, 48
  %i.ao = getelementptr inbounds i8, ptr %.028.lcssa.i, i64 -1 ; 2 uses
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !202
  %i.ap = udiv i64 %.029.lcssa.i, 10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.130.i = phi i64 [ %i.ap, %bb.f ], [ %.029.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.1.i = phi ptr [ %i.ao, %bb.f ], [ %.028.lcssa.i, %._crit_edge.i ]
  %i.aq = getelementptr inbounds i8, ptr %.1.i, i64 -1 ; 2 uses
  store i8 %4, ptr %i.aq, align 1, !tbaa !202
  %i.ar = sext i32 %3 to i64
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 %i.as ; 3 uses
  %i.au = icmp ugt i64 %.130.i, 99
  br i1 %i.au, label %.lr.ph.i37.i, label %._crit_edge.i33.i

.lr.ph.i37.i:                                     ; preds = %bb.g, %.lr.ph.i37.i
  %.020.i38.i = phi i32 [ %i.av, %.lr.ph.i37.i ], [ %3, %bb.g ]
  %.01819.i39.i = phi i64 [ %i.bc, %.lr.ph.i37.i ], [ %.130.i, %bb.g ] ; 3 uses
  %i.av = add i32 %.020.i38.i, -2                 ; 3 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aw
  %i.ay = urem i64 %.01819.i39.i, 100
  %i.az = shl nuw nsw i64 %i.ay, 1
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2
  store i16 %i.bb, ptr %i.ax, align 1
  %i.bc = udiv i64 %.01819.i39.i, 100             ; 2 uses
  %i.bd = icmp ugt i64 %.01819.i39.i, 9999
  br i1 %i.bd, label %.lr.ph.i37.i, label %._crit_edge.i33.i, !llvm.loop !6

._crit_edge.i33.i:                                ; preds = %.lr.ph.i37.i, %bb.g
  %.018.lcssa.i34.i = phi i64 [ %.130.i, %bb.g ], [ %i.bc, %.lr.ph.i37.i ] ; 3 uses
  %.0.lcssa.i35.i = phi i32 [ %3, %bb.g ], [ %i.av, %.lr.ph.i37.i ] ; 2 uses
  %i.be = icmp samesign ugt i64 %.018.lcssa.i34.i, 9
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i33.i
  %i.bf = add i32 %.0.lcssa.i35.i, -2
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bg
  %i.bi = shl nuw nsw i64 %.018.lcssa.i34.i, 1
  %i.bj = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2
  store i16 %i.bk, ptr %i.bh, align 1
  br label %_ZN3fmt3v116detail17write_significandIcmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit

bb.i:                                             ; preds = %._crit_edge.i33.i
  %i.bl = trunc nuw nsw i64 %.018.lcssa.i34.i to i8
  %i.bm = or disjoint i8 %i.bl, 48
  %i.bn = add i32 %.0.lcssa.i35.i, -1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bo
  store i8 %i.bm, ptr %i.bp, align 1, !tbaa !202
  br label %_ZN3fmt3v116detail17write_significandIcmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit

_ZN3fmt3v116detail17write_significandIcmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit: ; preds = %_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i, %bb.h, %bb.i
  %.027.i = phi ptr [ %i.y, %_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i ], [ %i.ab, %bb.h ], [ %i.ab, %bb.i ]
  %i.bq = call ptr @_ZN3fmt3v116detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %.027.i, ptr %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %i.bq
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr ptr @_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEENKUlS4_E0_clES4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !929, !nonnull !116, !align !333
  %i.b = load i32, ptr %i.a, align 4, !tbaa !348  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %i.b, 3
  %i.d = lshr i32 539700480, %i.c
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !270  ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !271
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !272
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h), !inline_history !9
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !270 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

_ZN3fmt3v1114basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !269
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !270
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !202
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !930, !nonnull !116, !align !223
  %i.s = load i64, ptr %i.r, align 8, !tbaa !276
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !931, !nonnull !116, !align !333
  %i.v = load i32, ptr %i.u, align 4, !tbaa !88
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !932, !nonnull !116, !align !223
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !358
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !933, !nonnull !116, !align !223
  %i.ac = tail call ptr @_ZN3fmt3v116detail17write_significandIcNS0_14basic_appenderIcEEmNS1_14digit_groupingIcEEEET0_S7_T1_iiRKT2_(ptr %1, i64 noundef %i.s, i32 noundef %i.v, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.ab) ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !934, !nonnull !116, !align !223
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !294
  %i.ag = and i64 %i.af, 8192
  %.not13 = icmp eq i64 %i.ag, 0
  br i1 %.not13, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !935, !nonnull !116
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !202
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 6 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !270 ; 2 uses
  %i.am = add i64 %i.al, 1                        ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !271
  %i.ap = icmp ugt i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.f, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit10

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !272
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.am), !inline_history !9
  %.pre.i.i8 = load i64, ptr %i.ak, align 8, !tbaa !270 ; 2 uses
  %.pre2.i.i9 = add i64 %.pre.i.i8, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit10

_ZN3fmt3v1114basic_appenderIcEaSEc.exit10:        ; preds = %bb.e, %bb.f
  %.pre-phi.i.i7 = phi i64 [ %i.am, %bb.e ], [ %.pre2.i.i9, %bb.f ]
  %i.as = phi i64 [ %i.al, %bb.e ], [ %.pre.i.i8, %bb.f ]
  %i.at = load ptr, ptr %i.ac, align 8, !tbaa !269
  store i64 %.pre-phi.i.i7, ptr %i.ak, align 8, !tbaa !270
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 %i.aj, ptr %i.au, align 1, !tbaa !202
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !936, !nonnull !116, !align !333
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !88 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit10
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !937, !nonnull !116
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  br label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bl, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i ]
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !202
  %i.bd = load i64, ptr %i.ak, align 8, !tbaa !270 ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load i64, ptr %i.an, align 8, !tbaa !271
  %i.bg = icmp ugt i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.h, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

bb.h:                                             ; preds = %bb.g
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !272
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.be), !inline_history !24
  %.pre.i.i.i = load i64, ptr %i.ak, align 8, !tbaa !270 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i:        ; preds = %bb.h, %bb.g
  %.pre-phi.i.i.i = phi i64 [ %i.be, %bb.g ], [ %.pre2.i.i.i, %bb.h ]
  %i.bi = phi i64 [ %i.bd, %bb.g ], [ %.pre.i.i.i, %bb.h ]
  %i.bj = load ptr, ptr %i.ac, align 8, !tbaa !269
  store i64 %.pre-phi.i.i.i, ptr %i.ak, align 8, !tbaa !270
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 %i.bc, ptr %i.bk, align 1, !tbaa !202
  %i.bl = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bl, %i.ax
  br i1 %exitcond.not.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.g, !llvm.loop !23

_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit10, %bb.d
  ret ptr %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail17write_significandIcNS0_14basic_appenderIcEEmNS1_14digit_groupingIcEEEET0_S7_T1_iiRKT2_(ptr %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !263
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_ZN3fmt3v116detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES6_S6_T0_i(ptr %0, i64 noundef %1, i32 noundef %2) ; 7 uses
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
end_hunk_1
