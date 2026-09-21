Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/view?download=true
inline.NumInlined: 14012
inline.NumDeleted: 4156
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN35ViewMultiStorage_UseAndRefresh_Test8TestBodyEv:bb.a
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !191, !noalias !1196
  %i.nu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !191, !noalias !1196
  %i.nv = icmp eq i32 %i.nt, %i.nu
  br i1 %i.nv, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit222
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %24)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt9type_infoES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit225 unwind label %bb.dw

bb.du:                                            ; preds = %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit222
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt9type_infoES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %24, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.214, ptr noundef nonnull align 8 dereferenceable(24) %i.nn, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt9type_infoES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit225 unwind label %bb.dw

_ZN7testing8internal8EqHelper7CompareIN4entt9type_infoES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit225: ; preds = %bb.dt, %bb.du
  %i.nw = load i8, ptr %24, align 8, !tbaa !91, !range !92, !noundef !93
  %i.nx = trunc nuw i8 %i.nw to i1
  br i1 %i.nx, label %bb.eg, label %bb.dx

bb.dv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit212, %bb.df
  %.pn62.pn.pn = phi { ptr, i32 } [ %.pn62.pn, %_ZN7testing7MessageD2Ev.exit212 ], [ %i.lr, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %bb.ek

bb.dw:                                            ; preds = %bb.du, %bb.dt
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.dx:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt9type_infoES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit225
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.dy unwind label %bb.ec

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  %i.nz = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i226 = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i226, label %_ZNK7testing15AssertionResult15failure_messageEv.exit227, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit227

_ZNK7testing15AssertionResult15failure_messageEv.exit227: ; preds = %bb.dz, %bb.dy
  %i.oc = phi ptr [ %i.ob, %bb.dz ], [ @.str.319, %bb.dy ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %26, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 940, ptr noundef %i.oc)
          to label %bb.ea unwind label %bb.ed

bb.ea:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit227
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.eb unwind label %bb.ee

bb.eb:                                            ; preds = %bb.ea
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  %i.od = load ptr, ptr %25, align 8, !tbaa !79   ; 3 uses
  %.not.i.i228 = icmp eq ptr %i.od, null
  br i1 %.not.i.i228, label %_ZN7testing7MessageD2Ev.exit230, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i229

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i229: ; preds = %bb.eb
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !43
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.og = load ptr, ptr %i.of, align 8
  call void %i.og(ptr noundef nonnull align 8 dereferenceable(128) %i.od) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit230

_ZN7testing7MessageD2Ev.exit230:                  ; preds = %bb.eb, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i229
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br label %bb.eg

bb.ec:                                            ; preds = %bb.dx
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit233

bb.ed:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit227
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ea
  %i.oj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #26
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.pn66 = phi { ptr, i32 } [ %i.oj, %bb.ee ], [ %i.oi, %bb.ed ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  %i.ok = load ptr, ptr %25, align 8, !tbaa !79   ; 3 uses
  %.not.i.i231 = icmp eq ptr %i.ok, null
  br i1 %.not.i.i231, label %_ZN7testing7MessageD2Ev.exit233, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232: ; preds = %bb.ef
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !43
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.on = load ptr, ptr %i.om, align 8
  call void %i.on(ptr noundef nonnull align 8 dereferenceable(128) %i.ok) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit233

_ZN7testing7MessageD2Ev.exit233:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232, %bb.ef, %bb.ec
  %.pn66.pn = phi { ptr, i32 } [ %i.oh, %bb.ec ], [ %.pn66, %bb.ef ], [ %.pn66, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #26
  br label %bb.ej

bb.eg:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt9type_infoES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit225, %_ZN7testing7MessageD2Ev.exit230
  %i.oo = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !94 ; 4 uses
  %.not.i.i234 = icmp eq ptr %i.op, null
  br i1 %.not.i.i234, label %_ZN7testing15AssertionResultD2Ev.exit238, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !76 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 16 ; 2 uses
  %i.os = icmp eq ptr %i.oq, %i.or
  br i1 %i.os, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i235: ; preds = %bb.eh
  %i.ot = load i64, ptr %i.or, align 8, !tbaa !77
  %i.ou = add i64 %i.ot, 1
  call void @_ZdlPvm(ptr noundef %i.oq, i64 noundef %i.ou) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236: ; preds = %bb.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i235
  call void @_ZdlPvm(ptr noundef nonnull %i.op, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit238

_ZN7testing15AssertionResultD2Ev.exit238:         ; preds = %bb.eg, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.ei

bb.ei:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit209, %_ZN7testing15AssertionResultD2Ev.exit188, %_ZN7testing15AssertionResultD2Ev.exit155, %_ZN7testing15AssertionResultD2Ev.exit130, %_ZN7testing15AssertionResultD2Ev.exit109, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit238
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZN4entt13basic_storageIiNS_6entityESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ab) #26
  call void @_ZN4entt13basic_storageIcNS_6entityESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.r) #26
  call void @_ZN4entt13basic_storageIdNS_6entityESaIdEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(312) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.ej:                                            ; preds = %_ZN7testing7MessageD2Ev.exit233, %bb.dw
  %.pn66.pn.pn = phi { ptr, i32 } [ %.pn66.pn, %_ZN7testing7MessageD2Ev.exit233 ], [ %i.ny, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.dv, %bb.de, %bb.co, %bb.bt, %bb.bc, %bb.am, %bb.r
  %.pn66.pn.pn.pn = phi { ptr, i32 } [ %.pn66.pn.pn, %bb.ej ], [ %.pn62.pn.pn, %bb.dv ], [ %.pn58.pn.pn, %bb.de ], [ %.pn54.pn.pn, %bb.co ], [ %.pn50.pn.pn, %bb.bt ], [ %.pn46.pn.pn, %bb.bc ], [ %.pn.pn.pn, %bb.am ], [ %i.by, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZNSt11_Tuple_implILm0EJN4entt13basic_storageIiNS0_6entityESaIiEEENS1_IcS2_SaIcEEENS1_IdS2_SaIdEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn66.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE4backEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !188  ; 4 uses
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %i.b, 3                 ; 2 uses
  %.ptr46 = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.c = load ptr, ptr %.ptr46, align 8, !tbaa !126 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.f = load i8, ptr %i.e, align 8, !tbaa !69
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !70
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE6offsetEv.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE6offsetEv.exit

_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE6offsetEv.exit: ; preds = %bb.c, %bb.d
  %i.q = phi i64 [ %i.i, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE6offsetEv.exit
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !81
  %cond = icmp eq i64 %i.b, 0
  %.not6.i9 = icmp eq i64 %i.b, 1
  %.add = add nuw nsw i64 %.idx, 8
  %.07.i22.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge4
  %.sroa.8.052 = phi i64 [ 0, %.lr.ph ], [ %i.bs, %.critedge4 ] ; 2 uses
  %i.t = getelementptr [4 x i8], ptr %i.s, i64 %.sroa.8.052
  %i.u = load i32, ptr %i.t, align 4, !tbaa !102  ; 5 uses
  %i.v = and i32 %i.u, 1048575
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = and i64 %i.w, 4095                       ; 3 uses
  %.pre = lshr i64 %i.w, 12                       ; 6 uses
  %.pre61 = and i32 %i.u, -1048576                ; 3 uses
  br i1 %cond, label %.lr.ph.i10.preheader, label %.lr.ph.i

bb.f:                                             ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.y, %.ptr46
  br i1 %.not.i, label %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !25

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.07.i = phi ptr [ %i.y, %bb.f ], [ %0, %bb.e ] ; 2 uses
  %i.z = load ptr, ptr %.07.i, align 8, !tbaa !126 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !127
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !103 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3
  %i.ai = icmp ult i64 %.pre, %i.ah
  br i1 %i.ai, label %bb.g, label %.critedge4

bb.g:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.pre
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %.critedge4, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i: ; preds = %bb.g
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.x
  %i.am = load i32, ptr %i.al, align 4, !tbaa !102
  %i.an = xor i32 %i.am, %.pre61
  %i.ao = icmp ult i32 %i.an, 1048575
  br i1 %i.ao, label %bb.f, label %.critedge4

_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit: ; preds = %bb.f
  br i1 %.not6.i9, label %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit16, label %.lr.ph.i10.preheader

.lr.ph.i10.preheader:                             ; preds = %bb.e, %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit
  br label %.lr.ph.i10

bb.h:                                             ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i14
  %.07.i11.add = add nuw nsw i64 %.07.i11.idx, 8  ; 2 uses
  %.not.i15 = icmp eq i64 %.07.i11.add, 16
  br i1 %.not.i15, label %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit16, label %.lr.ph.i10, !llvm.loop !25

.lr.ph.i10:                                       ; preds = %.lr.ph.i10.preheader, %bb.h
  %.07.i11.idx = phi i64 [ %.07.i11.add, %bb.h ], [ %.add, %.lr.ph.i10.preheader ] ; 2 uses
  %.07.i11.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.07.i11.idx
  %i.ap = load ptr, ptr %.07.i11.ptr, align 8, !tbaa !126 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !127
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !103 ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3
  %i.ay = icmp ult i64 %.pre, %i.ax
  br i1 %i.ay, label %bb.i, label %.critedge4

bb.i:                                             ; preds = %.lr.ph.i10
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.pre
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i13, label %.critedge4, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i14

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i14: ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.x
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !102
  %i.bd = xor i32 %i.bc, %.pre61
  %i.be = icmp ult i32 %i.bd, 1048575
  br i1 %i.be, label %bb.h, label %.critedge4

_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit16: ; preds = %bb.h, %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit
  %1 = load ptr, ptr %.07.i22.ptr, align 8, !tbaa !126 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load ptr, ptr %3, align 8, !tbaa !127
  %i.bg = load ptr, ptr %2, align 8, !tbaa !103   ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3
  %i.bl = icmp ult i64 %.pre, %i.bk
  br i1 %i.bl, label %bb.j, label %.critedge.thread

bb.j:                                             ; preds = %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit16
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.pre
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i25, label %.critedge.thread, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i26

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i26: ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.x
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !102
  %i.bq = xor i32 %i.bp, %.pre61
  %i.br = icmp ult i32 %i.bq, 1048575
  br i1 %i.br, label %.critedge4, label %.critedge.thread

.critedge4:                                       ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i, %.lr.ph.i, %bb.g, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i14, %.lr.ph.i10, %bb.i, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i26
  %i.bs = add nuw nsw i64 %.sroa.8.052, 1         ; 2 uses
  %i.bt = icmp eq i64 %i.bs, %i.q
  br i1 %i.bt, label %.critedge.thread, label %bb.e, !llvm.loop !1197

.critedge.thread:                                 ; preds = %.critedge4, %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit16, %bb.j, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i26, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE6offsetEv.exit, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE6offsetEv.exit ], [ -1, %.critedge4 ], [ %i.u, %bb.j ], [ %i.u, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i26 ], [ %i.u, %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit16 ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt11_Tuple_implILm0EJN4entt13basic_storageIiNS0_6entityESaIiEEENS1_IcS2_SaIcEEENS1_IdS2_SaIdEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN4entt13basic_storageIiNS_6entityESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4entt13basic_storageIcNS_6entityESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.b) #26
  tail call void @_ZN4entt13basic_storageIdNS_6entityESaIdEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(208) %0) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN26ViewMultiStorage_Each_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.entt::internal::view_iterator.179", align 8 ; 9 uses
  %2 = alloca %"class.entt::internal::view_iterator.179", align 8 ; 8 uses
  %3 = alloca %class.anon.248, align 4            ; 4 uses
  %4 = alloca %class.anon.248, align 4            ; 4 uses
  %5 = alloca %class.anon.247, align 4            ; 4 uses
  %6 = alloca %"class.std::tuple.240", align 8    ; 6 uses
  %7 = alloca %class.anon.247, align 4            ; 5 uses
  %8 = alloca %"class.std::tuple.240", align 8    ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.entt::internal::view_iterator.179", align 8 ; 9 uses
  %11 = alloca %"class.entt::internal::view_iterator.179", align 8 ; 9 uses
  %.sroa.09.i.sroa.9 = alloca { %"struct.std::array.73", i64 }, align 8 ; 4 uses
  %12 = alloca %"class.entt::internal::view_iterator.236", align 8 ; 11 uses
  %13 = alloca %"class.std::tuple.222", align 8   ; 52 uses
  %14 = alloca %"struct.std::array", align 8      ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %.sroa.17 = alloca { %"struct.std::array.73", i64 }, align 8 ; 5 uses
  %15 = alloca %"struct.entt::iterable_adaptor.237", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %17 = alloca %"struct.entt::internal::extended_view_iterator.238", align 8 ; 6 uses
  %18 = alloca %"struct.entt::internal::extended_view_iterator.238", align 8 ; 6 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"struct.testing::internal::TrueWithString", align 8 ; 18 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %27 = alloca %"class.testing::Message", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"struct.entt::internal::extended_view_iterator.235", align 8 ; 15 uses
  %30 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %31 = alloca %"class.entt::internal::view_iterator.236", align 8 ; 6 uses
  %32 = alloca %"class.entt::internal::view_iterator.236", align 8 ; 12 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %36 = alloca %"struct.entt::internal::extended_view_iterator.235", align 8 ; 17 uses
  %37 = alloca %"class.testing::Message", align 8 ; 7 uses
  %38 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %39 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %40 = alloca %"class.entt::internal::view_iterator.236", align 8 ; 6 uses
  %41 = alloca %"class.entt::internal::view_iterator.236", align 8 ; 10 uses
  %42 = alloca %"class.testing::Message", align 8 ; 7 uses
  %43 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %44 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %45 = alloca %"class.std::tuple.240", align 8   ; 6 uses
  %46 = alloca %"class.testing::Message", align 8 ; 7 uses
  %47 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %48 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %49 = alloca %"class.std::tuple.249", align 8   ; 6 uses
  %50 = alloca %"struct.entt::internal::extended_view_iterator.238", align 8 ; 9 uses
  %51 = alloca %"class.testing::Message", align 8 ; 7 uses
  %52 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %.sroa.0417 = alloca %"class.entt::internal::view_iterator.179", align 8 ; 5 uses
  %53 = alloca %"struct.entt::internal::extended_view_iterator.257", align 8 ; 9 uses
  %54 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %55 = alloca %"class.testing::Message", align 8 ; 7 uses
  %56 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %57 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %58 = alloca %"class.testing::Message", align 8 ; 7 uses
  %59 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.g = load atomic i8, ptr @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZNSt11_Tuple_implILm2EJN4entt13basic_storageIdNS0_6entityESaIdEEEEEC2Ev.exit.i, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i.i.i.i414 = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i.i414, label %_ZNSt11_Tuple_implILm2EJN4entt13basic_storageIdNS0_6entityESaIdEEEEEC2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IdEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIdEERKNS_9type_infoEvE8instance) #26
  br label %_ZNSt11_Tuple_implILm2EJN4entt13basic_storageIdNS0_6entityESaIdEEEEEC2Ev.exit.i

_ZNSt11_Tuple_implILm2EJN4entt13basic_storageIdNS0_6entityESaIdEEEEEC2Ev.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIdEERKNS_9type_infoEvE8instance, ptr %i.l, align 8, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 64
  store i8 0, ptr %i.m, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 72
  store i64 1048575, ptr %i.n, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt13basic_storageIdNS_6entityESaIdEEE, i64 16), ptr %13, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.p = load atomic i8, ptr @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance acquire, align 8
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.d, label %_ZNSt11_Tuple_implILm1EJN4entt13basic_storageIcNS0_6entityESaIcEEENS1_IdS2_SaIdEEEEEC2Ev.exit, !prof !55

bb.d:                                             ; preds = %_ZNSt11_Tuple_implILm2EJN4entt13basic_storageIdNS0_6entityESaIdEEEEEC2Ev.exit.i
  %i.r = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i.i.i413 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i413, label %_ZNSt11_Tuple_implILm1EJN4entt13basic_storageIcNS0_6entityESaIcEEENS1_IdS2_SaIdEEEEEC2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4entt9type_infoC2IcEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  %i.s = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIcEERKNS_9type_infoEvE8instance) #26
  br label %_ZNSt11_Tuple_implILm1EJN4entt13basic_storageIcNS0_6entityESaIcEEENS1_IdS2_SaIdEEEEEC2Ev.exit

_ZNSt11_Tuple_implILm1EJN4entt13basic_storageIcNS0_6entityESaIcEEENS1_IdS2_SaIdEEEEEC2Ev.exit: ; preds = %_ZNSt11_Tuple_implILm2EJN4entt13basic_storageIdNS0_6entityESaIdEEEEEC2Ev.exit.i, %bb.d, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 14 uses
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 112 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIcEERKNS_9type_infoEvE8instance, ptr %i.v, align 8, !tbaa !68
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 168
  store i8 0, ptr %i.w, align 8, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 176
  store i64 1048575, ptr %i.x, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt13basic_storageIcNS_6entityESaIcEEE, i64 16), ptr %i.t, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 184 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.z = load atomic i8, ptr @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance acquire, align 8
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt5tupleIJN4entt13basic_storageIiNS0_6entityESaIiEEENS1_IcS2_SaIcEEENS1_IdS2_SaIdEEEEEC2IvTnNSt9enable_ifIXclsr4_TCCIXsr7is_voidIT_EE5valueEEE37__is_implicitly_default_constructibleEEbE4typeELb1EEEv.exit, !prof !55

bb.f:                                             ; preds = %_ZNSt11_Tuple_implILm1EJN4entt13basic_storageIcNS0_6entityESaIcEEENS1_IdS2_SaIdEEEEEC2Ev.exit
  %i.ab = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt5tupleIJN4entt13basic_storageIiNS0_6entityESaIiEEENS1_IcS2_SaIcEEENS1_IdS2_SaIdEEEEEC2IvTnNSt9enable_ifIXclsr4_TCCIXsr7is_voidIT_EE5valueEEE37__is_implicitly_default_constructibleEEbE4typeELb1EEEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4entt9type_infoC2IiEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  %i.ac = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #26
  br label %_ZNSt5tupleIJN4entt13basic_storageIiNS0_6entityESaIiEEENS1_IcS2_SaIcEEENS1_IdS2_SaIdEEEEEC2IvTnNSt9enable_ifIXclsr4_TCCIXsr7is_voidIT_EE5valueEEE37__is_implicitly_default_constructibleEEbE4typeELb1EEEv.exit

_ZNSt5tupleIJN4entt13basic_storageIiNS0_6entityESaIiEEENS1_IcS2_SaIcEEENS1_IdS2_SaIdEEEEEC2IvTnNSt9enable_ifIXclsr4_TCCIXsr7is_voidIT_EE5valueEEE37__is_implicitly_default_constructibleEEbE4typeELb1EEEv.exit: ; preds = %_ZNSt11_Tuple_implILm1EJN4entt13basic_storageIcNS0_6entityESaIcEEENS1_IdS2_SaIdEEEEEC2Ev.exit, %bb.f, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 208 ; 14 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 216 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance, ptr %i.af, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 272
  store i8 0, ptr %i.ag, align 8, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 280
  store i64 1048575, ptr %i.ah, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt13basic_storageIiNS_6entityESaIiEEE, i64 16), ptr %i.ad, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 288 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %i.aj = load atomic i8, ptr @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder acquire, align 8, !noalias !1354
  %i.ak = icmp eq i8 %i.aj, 0
end_hunk_0
