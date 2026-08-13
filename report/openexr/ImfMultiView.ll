inline.NumInlined: 419
inline.NumDeleted: 136
begin_hunk_0_@_ZN7Imf_3_419viewFromChannelNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE:bb.a
  %.val15 = load ptr, ptr %i.ba, align 8          ; 2 uses
  %.not.i = icmp eq ptr %.val15, %.val14
  br i1 %.not.i, label %_ZN7Imf_3_412_GLOBAL__N_17viewNumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.bb = ptrtoint ptr %.val15 to i64
  %i.bc = ptrtoint ptr %.val14 to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 5                 ; 2 uses
  %i.bf = icmp eq i64 %.val13.fr, 0
  br i1 %i.bf, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.preheader.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.us
  %.089.i.us = phi i64 [ %i.bk, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.us ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %.val14, i64 %.089.i.us
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !19
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_ZN7Imf_3_412_GLOBAL__N_17viewNumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit.thread34, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.us: ; preds = %.lr.ph.i.us
  %i.bk = add nuw i64 %.089.i.us, 1               ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bk, %i.be
  br i1 %exitcond.not.i.us, label %_ZN7Imf_3_412_GLOBAL__N_17viewNumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit.thread, label %.lr.ph.i.us, !llvm.loop !22

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i
  %.089.i = phi i64 [ %i.br, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %.val14, i64 %.089.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !19
  %i.bo = icmp eq i64 %i.bn, %.val13.fr
  br i1 %i.bo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %.lr.ph.i
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !16
  %bcmp.i.i = call i32 @bcmp(ptr %i.bp, ptr readonly %.val, i64 %.val13.fr)
  %i.bq = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bq, label %_ZN7Imf_3_412_GLOBAL__N_17viewNumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %.lr.ph.i
  %i.br = add nuw i64 %.089.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.br, %i.be
  br i1 %exitcond.not.i, label %_ZN7Imf_3_412_GLOBAL__N_17viewNumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit.thread, label %.lr.ph.i, !llvm.loop !22

_ZN7Imf_3_412_GLOBAL__N_17viewNumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.bs = and i64 %.089.i, 2147483648
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.k, label %_ZN7Imf_3_412_GLOBAL__N_17viewNumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit.thread

_ZN7Imf_3_412_GLOBAL__N_17viewNumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit.thread34: ; preds = %.lr.ph.i.us
  %i.bu = and i64 %.089.i.us, 2147483648
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %._crit_edge.i.i25.thread, label %_ZN7Imf_3_412_GLOBAL__N_17viewNumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit.thread

._crit_edge.i.i25.thread:                         ; preds = %_ZN7Imf_3_412_GLOBAL__N_17viewNumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit.thread34
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bw, ptr %0, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit28

bb.k:                                             ; preds = %_ZN7Imf_3_412_GLOBAL__N_17viewNumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bx, ptr %0, align 8, !tbaa !13
  %i.by = load ptr, ptr %i.ay, align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %.val13.fr, ptr %i.a, align 8, !tbaa !20
  %i.bz = icmp ugt i64 %.val13.fr, 15
  br i1 %i.bz, label %.noexc.i26, label %._crit_edge.i.i25

.noexc.i26:                                       ; preds = %bb.k
  %i.ca = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %bb.n   ; 2 uses

.noexc27:                                         ; preds = %.noexc.i26
  store ptr %i.ca, ptr %0, align 8, !tbaa !16
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !20
  store i64 %i.cb, ptr %i.bx, align 8, !tbaa !21
  br label %._crit_edge.i.i25

._crit_edge.i.i25:                                ; preds = %.noexc27, %bb.k
  %i.cc = phi ptr [ %i.ca, %.noexc27 ], [ %i.bx, %bb.k ] ; 2 uses
  %cond = icmp eq i64 %.val13.fr, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i25
  %i.cd = load i8, ptr %i.by, align 1, !tbaa !21
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit28

bb.m:                                             ; preds = %._crit_edge.i.i25
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr align 1 %i.by, i64 %.val13.fr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit28: ; preds = %._crit_edge.i.i25.thread, %bb.l, %bb.m
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !19
  %i.cg = load ptr, ptr %0, align 8, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce
  store i8 0, ptr %i.ch, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.o

bb.n:                                             ; preds = %.noexc.i26
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZN7Imf_3_412_GLOBAL__N_17viewNumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.us, %bb.j, %_ZN7Imf_3_412_GLOBAL__N_17viewNumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit.thread34, %_ZN7Imf_3_412_GLOBAL__N_17viewNumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.cj, ptr %0, align 8, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ck, align 8, !tbaa !19
  store i8 0, ptr %i.cj, align 8, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit24, %_ZN7Imf_3_412_GLOBAL__N_17viewNumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit.thread, %._crit_edge.i.i16
  %i.cl = load ptr, ptr %3, align 8, !tbaa !12    ; 3 uses
  %i.cm = load ptr, ptr %i.u, align 8, !tbaa !8   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cs, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.cl, %bb.o ] ; 3 uses
  %i.cn = load ptr, ptr %.05.i.i.i, align 8, !tbaa !16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !21
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cs, %i.cm
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !12
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.o
  %i.ct = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.cl, %bb.o ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !25
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #19
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.q:                                             ; preds = %bb.n, %bb.i
  %.pn10 = phi { ptr, i32 } [ %i.ci, %bb.n ], [ %i.aw, %bb.i ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.q
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %bb.q ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.ad, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7Imf_3_412_GLOBAL__N_111parseStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %.not57 = icmp eq i64 %i.e, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not21.i = icmp eq ptr %3, %1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.m = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 46, i64 noundef 0) #18 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.n = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !26
  store ptr %i.f, ptr %2, align 8, !tbaa !13, !alias.scope !26
  %i.o = load ptr, ptr %1, align 8, !tbaa !16, !noalias !26 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.m, i64 %i.n) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18, !noalias !26
  store i64 %spec.select.i.i.i, ptr %i.c, align 8, !tbaa !20, !noalias !26
  %i.p = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.p, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.b
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc10.i.i
  store ptr %i.q, ptr %2, align 8, !tbaa !16, !alias.scope !26
  %i.r = load i64, ptr %i.c, align 8, !tbaa !20, !noalias !26
  store i64 %i.r, ptr %i.f, align 8, !tbaa !21, !alias.scope !26
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.b
  %i.s = phi ptr [ %i.q, %.noexc ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i8, ptr %i.o, align 1, !tbaa !21
  store i8 %i.t, ptr %i.s, align 1, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.o, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.u = load i64, ptr %i.c, align 8, !tbaa !20, !noalias !26 ; 2 uses
  store i64 %i.u, ptr %i.g, align 8, !tbaa !19, !alias.scope !26
  %i.v = load ptr, ptr %2, align 8, !tbaa !16, !alias.scope !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18, !noalias !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %.not11 = icmp eq i64 %i.x, 0
  br i1 %.not11, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !16
  %i.z = load i8, ptr %i.y, align 1, !tbaa !21
  %i.aa = icmp eq i8 %i.z, 32
  br i1 %i.aa, label %bb.f, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit unwind label %.loopexit

bb.g:                                             ; preds = %.noexc10.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %.noexc.i.i, %bb.k, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph:                                           ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit17
  %i.ac = phi i64 [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit17 ], [ %i.x, %bb.e ] ; 3 uses
  %4 = load ptr, ptr %2, align 8, !tbaa !16
  %5 = getelementptr i8, ptr %4, i64 %i.ac
  %i.ad = getelementptr i8, ptr %5, i64 -1        ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !21
  %i.af = icmp eq i8 %i.ae, 32
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit17, label %.critedge2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit17: ; preds = %.lr.ph
  %6 = add i64 %i.ac, -1
  store i64 %6, ptr %i.g, align 8, !tbaa !19
  store i8 0, ptr %i.ad, align 1, !tbaa !21
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !19  ; 2 uses
  %.not12 = icmp eq i64 %i.ag, 0
  br i1 %.not12, label %.critedge2, label %.lr.ph

.critedge2:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit17
  %.lcssa = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit17 ], [ %i.ac, %.lr.ph ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ] ; 4 uses
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !8   ; 8 uses
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.critedge2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !13
  %i.ak = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %.lcssa, ptr %i.b, align 8, !tbaa !20
  %i.al = icmp ugt i64 %.lcssa, 15
  br i1 %i.al, label %.noexc.i.i, label %._crit_edge.i.i.i18

.noexc.i.i:                                       ; preds = %bb.h
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc19 unwind label %.loopexit.split-lp ; 2 uses

.noexc19:                                         ; preds = %.noexc.i.i
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !16
  %i.an = load i64, ptr %i.b, align 8, !tbaa !20
  store i64 %i.an, ptr %i.aj, align 8, !tbaa !21
  br label %._crit_edge.i.i.i18

._crit_edge.i.i.i18:                              ; preds = %.noexc19, %bb.h
  %i.ao = phi ptr [ %i.am, %.noexc19 ], [ %i.aj, %bb.h ] ; 2 uses
  switch i64 %.lcssa, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i18
  %i.ap = load i8, ptr %i.ak, align 1, !tbaa !21
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.ak, i64 %.lcssa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i18
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !20  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !19
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store ptr %i.av, ptr %i.h, align 8, !tbaa !8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.k:                                             ; preds = %.critedge2
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.k
  %i.aw = icmp eq i64 %i.m, -1
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.ax = load i64, ptr %i.d, align 8, !tbaa !19
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.ax, ptr noundef nonnull @.str, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit.split-lp ; 0 uses

bb.m:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.az = add nuw i64 %i.m, 1                     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !29 ; 3 uses
  %.not35 = icmp ult i64 %i.m, %i.ba
  br i1 %.not35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i64 noundef %i.az, i64 noundef %i.ba) #20
          to label %.noexc25 unwind label %.loopexit.split-lp37

.noexc25:                                         ; preds = %bb.n
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.m
  store ptr %i.j, ptr %3, align 8, !tbaa !13, !alias.scope !29
  %i.bb = load ptr, ptr %1, align 8, !tbaa !16, !noalias !29
  %7 = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.m
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 2 uses
  %i.bd = sub nuw i64 %i.ba, %i.az                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !29
  store i64 %i.bd, ptr %i.a, align 8, !tbaa !20, !noalias !29
  %i.be = icmp ugt i64 %i.bd, 15
  br i1 %i.be, label %.noexc10.i.i24, label %._crit_edge.i.i.i23

.noexc10.i.i24:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc26 unwind label %.loopexit36 ; 2 uses

.noexc26:                                         ; preds = %.noexc10.i.i24
  store ptr %i.bf, ptr %3, align 8, !tbaa !16, !alias.scope !29
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !20, !noalias !29
  store i64 %i.bg, ptr %i.j, align 8, !tbaa !21, !alias.scope !29
  br label %._crit_edge.i.i.i23

._crit_edge.i.i.i23:                              ; preds = %.noexc26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bh = phi ptr [ %i.bf, %.noexc26 ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.bd, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i23
  %i.bi = load i8, ptr %i.bc, align 1, !tbaa !21
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !21
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr nonnull align 1 %i.bc, i64 %i.bd, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i23
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !20, !noalias !29 ; 2 uses
  store i64 %i.bj, ptr %i.k, align 8, !tbaa !19, !alias.scope !29
  %i.bk = load ptr, ptr %3, align 8, !tbaa !16, !alias.scope !29
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  store i8 0, ptr %i.bl, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !29
  %i.bm = load ptr, ptr %1, align 8, !tbaa !16    ; 6 uses
  %i.bn = icmp eq ptr %i.bm, %i.l
  %i.bo = load ptr, ptr %3, align 8, !tbaa !16    ; 6 uses
  %i.bp = icmp eq ptr %i.bo, %i.j                 ; 2 uses
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.q
  br i1 %i.bp, label %bb.r, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.q
  br i1 %i.bp, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bq = load i64, ptr %i.k, align 8, !tbaa !19  ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.s, !prof !32

bb.s:                                             ; preds = %bb.r
  switch i64 %i.bq, label %bb.u [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !21
  store i8 %i.bs, ptr %i.bm, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.bo, i64 %i.bq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.u, %bb.t, %bb.s
  %i.bt = load i64, ptr %i.k, align 8, !tbaa !19  ; 2 uses
  store i64 %i.bt, ptr %i.d, align 8, !tbaa !19
  %i.bu = load ptr, ptr %1, align 8, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  store i8 0, ptr %i.bv, align 1, !tbaa !21
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bo, ptr %1, align 8, !tbaa !16
  %i.bw = load <2 x i64>, ptr %i.k, align 8, !tbaa !21
  store <2 x i64> %i.bw, ptr %i.d, align 8, !tbaa !21
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bx = load i64, ptr %i.l, align 8, !tbaa !21
  store ptr %i.bo, ptr %1, align 8, !tbaa !16
  %i.by = load <2 x i64>, ptr %i.k, align 8, !tbaa !21
  store <2 x i64> %i.by, ptr %i.d, align 8, !tbaa !21
  %.not.i28 = icmp eq ptr %i.bm, null
  br i1 %.not.i28, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bm, ptr %3, align 8, !tbaa !16
  store i64 %i.bx, ptr %i.j, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.j, ptr %3, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.v, %bb.w
  %i.bz = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bm, %bb.v ], [ %i.j, %bb.w ], [ %i.bo, %bb.r ]
  store i64 0, ptr %i.k, align 8, !tbaa !19
  store i8 0, ptr %i.bz, align 1, !tbaa !21
  %i.ca = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.j
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cc = load i64, ptr %i.j, align 8, !tbaa !21
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

.loopexit36:                                      ; preds = %.noexc10.i.i24
  %lpad.loopexit38 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp37:                             ; preds = %bb.n
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp37, %.loopexit36
  %lpad.phi40 = phi { ptr, i32 } [ %lpad.loopexit38, %.loopexit36 ], [ %lpad.loopexit.split-lp39, %.loopexit.split-lp37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.f
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.cg = load i64, ptr %i.f, align 8, !tbaa !21
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.ci = load i64, ptr %i.d, align 8, !tbaa !19
  %.not = icmp eq i64 %i.ci, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !33

bb.y:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.x
  %.pn = phi { ptr, i32 } [ %lpad.phi40, %bb.x ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.cj = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.f
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.y
  %i.cl = load i64, ptr %i.f, align 8, !tbaa !21
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #18
  resume { ptr, i32 } %.pn.pn

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !21
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
end_hunk_0
