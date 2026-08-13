inline.NumInlined: 742
inline.NumDeleted: 316
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12initFastConvERKNS0_11_InputArrayEPfiiiRKSt6vectorImSaImEESE_SE_SE_SE_ibbE3$_1E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %i.nj = getelementptr inbounds [4 x i8], ptr %i.my, i64 %i.ni ; 4 uses
  %i.nk = load ptr, ptr %i.j, align 8, !tbaa !240, !nonnull !74, !align !222
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !93 ; 2 uses
  %.not.14.i.i.i = icmp ugt ptr %i.nl, %i.nj
  br i1 %.not.14.i.i.i, label %.noexc.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nn = load ptr, ptr %i.l, align 8, !tbaa !242, !nonnull !74, !align !222
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !41
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %i.no
  %.not75.14.i.i.i = icmp ugt ptr %i.nm, %i.np
  br i1 %.not75.14.i.i.i, label %.noexc.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.12.224.vec.extract = shufflevector <32 x float> %interleaved.vec.1, <32 x float> poison, <4 x i32> <i32 24, i32 25, i32 26, i32 27>
  store <4 x float> %.sroa.12.224.vec.extract, ptr %i.nj, align 4
  %i.nq = load ptr, ptr %i.f, align 8, !tbaa !232, !nonnull !74, !align !224
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !42
  %i.ns = shl nsw i32 %i.nr, 4
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.nj, i64 %i.nt ; 3 uses
  %i.nv = load ptr, ptr %i.j, align 8, !tbaa !240, !nonnull !74, !align !222
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !93 ; 2 uses
  %.not.15.i.i.i = icmp ugt ptr %i.nw, %i.nu
  br i1 %.not.15.i.i.i, label %.noexc.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.ny = load ptr, ptr %i.l, align 8, !tbaa !242, !nonnull !74, !align !222
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !41
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %i.nz
  %.not75.15.i.i.i = icmp ugt ptr %i.nx, %i.oa
  br i1 %.not75.15.i.i.i, label %.noexc.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.12.240.vec.extract = shufflevector <32 x float> %interleaved.vec.1, <32 x float> poison, <4 x i32> <i32 28, i32 29, i32 30, i32 31>
  store <4 x float> %.sroa.12.240.vec.extract, ptr %i.nu, align 4
  %indvars.iv.next97.i.i.i = add nuw nsw i64 %indvars.iv96.i.i.i, 1 ; 2 uses
  %i.ob = load ptr, ptr %i.f, align 8, !tbaa !232, !nonnull !74, !align !224
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !42 ; 3 uses
  %i.od = sext i32 %i.oc to i64
  %i.oe = icmp slt i64 %indvars.iv.next97.i.i.i, %i.od
  br i1 %i.oe, label %.preheader.preheader.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !243

"_ZSt10__invoke_rIvRZN2cv3dnn12initFastConvERKNS0_11_InputArrayEPfiiiRKSt6vectorImSaImEESA_SA_SA_SA_ibbE3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit": ; preds = %._crit_edge.i.i.i, %bb.a, %.lr.ph85.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12initFastConvERKNS0_11_InputArrayEPfiiiRKSt6vectorImSaImEESE_SE_SE_SE_ibbE3$_1E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_1E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn12initFastConvERKNS_11_InputArrayEPfiiiRKSt6vectorImSaImEES9_S9_S9_S9_ibbE3$_1", ptr %0, align 8, !tbaa !229
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_1E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %.val, ptr %0, align 8, !tbaa !103
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_1E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.val6, i64 64, i1 false), !tbaa.struct !244
  store ptr %i.a, ptr %0, align 8, !tbaa !103
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_1E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !103 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_1E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 64) #22
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_1E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_1E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12initFastConvERKNS0_11_InputArrayEPfiiiRKSt6vectorImSaImEESE_SE_SE_SE_ibbE3$_2E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %.val2 = load i32, ptr %1, align 4, !tbaa !95   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4            ; 2 uses
  %i.b = icmp slt i32 %.val2, %.val3
  br i1 %i.b, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn12initFastConvERKNS0_11_InputArrayEPfiiiRKSt6vectorImSaImEESA_SA_SA_SA_ibbE3$_2JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !103   ; 11 uses
  %i.c = load ptr, ptr %.val, align 8, !tbaa !245, !nonnull !74, !align !224
  %i.d = load i32, ptr %i.c, align 4, !tbaa !42   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !247, !nonnull !74, !align !224
  %i.g = load i32, ptr %i.f, align 4, !tbaa !42   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !74, !align !222
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !74, !align !224
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !74, !align !224
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !74, !align !224
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !74, !align !224
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !74, !align !224
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !74, !align !224
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.x = load ptr, ptr %i.v, align 8, !nonnull !74, !align !222
  %i.y = load ptr, ptr %i.w, align 8, !nonnull !74, !align !222
  %i.z = mul i32 %.val2, -4
  %i.aa = shl i32 %i.d, 2
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge14.split.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %._crit_edge14.split.i.i.i ], [ %i.z, %.lr.ph.i.i.i ] ; 2 uses
  %.03917.i.i.i = phi i32 [ %i.ci, %._crit_edge14.split.i.i.i ], [ %.val2, %.lr.ph.i.i.i ] ; 3 uses
  %i.ab = sdiv i32 %.03917.i.i.i, %i.d            ; 4 uses
  %i.ac = mul nsw i32 %i.ab, %i.d                 ; 0 uses
  %.recomposed = srem i32 %.03917.i.i.i, %i.d
  %i.ad = shl nsw i32 %.recomposed, 2             ; 4 uses
  %i.ae = icmp slt i32 %i.ad, %i.g
  br i1 %i.ae, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @"__func__._ZZN2cv3dnn12initFastConvERKNS_11_InputArrayEPfiiiRKSt6vectorImSaImEES9_S9_S9_S9_ibbENK3$_1clERKNS_5RangeE", ptr noundef nonnull @.str.1, i32 noundef 424) #24
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %2, align 8, !tbaa !32    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !37
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.af

bb.f:                                             ; preds = %bb.b
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.am = load i32, ptr %i.k, align 4, !tbaa !42
  %i.an = mul i32 %i.ab, %i.g
  %i.ao = add i32 %i.ad, %i.an
  %i.ap = mul i32 %i.am, %i.ao
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [4 x i8], ptr %i.al, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.m, align 4, !tbaa !42  ; 3 uses
  %i.at = sub i32 %i.as, %i.ad                    ; 2 uses
  %i.au = tail call i32 @llvm.umin.i32(i32 %i.at, i32 4)
  %i.av = load i32, ptr %i.o, align 4, !tbaa !42
  %i.aw = load i32, ptr %i.q, align 4, !tbaa !42
  %i.ax = mul i32 %i.aw, %i.av
  %i.ay = load i32, ptr %i.s, align 4, !tbaa !42
  %i.az = mul i32 %i.ax, %i.ay                    ; 4 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.preheader1.lr.ph.i.i.i, label %._crit_edge14.split.i.i.i

.preheader1.lr.ph.i.i.i:                          ; preds = %bb.f
  %i.bb = load i32, ptr %i.u, align 4, !tbaa !42  ; 3 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.preheader1.lr.ph.split.i.i.i, label %._crit_edge14.split.i.i.i

.preheader1.lr.ph.split.i.i.i:                    ; preds = %.preheader1.lr.ph.i.i.i
  %i.bd = icmp sgt i32 %i.at, 0
  %i.be = mul nsw i32 %i.as, %i.ab
  %i.bf = add nsw i32 %i.be, %i.ad
  %i.bg = sext i32 %i.bf to i64
  %i.bh = load ptr, ptr %i.x, align 8, !tbaa !93
  %i.bi = load i64, ptr %i.y, align 8, !tbaa !41  ; 4 uses
  %i.bj = mul i64 %i.bi, %i.bg
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bj
  br i1 %i.bd, label %.preheader1.us.preheader.i.i.i, label %.preheader1.lr.ph.split.split.i.i.i

.preheader1.us.preheader.i.i.i:                   ; preds = %.preheader1.lr.ph.split.i.i.i
  %i.bl = tail call i32 @llvm.usub.sat.i32(i32 3, i32 %i.au)
  %i.bm = shl nuw nsw i32 %i.bl, 2
  %narrow.i.i.i = add nuw nsw i32 %i.bm, 4
  %i.bn = zext nneg i32 %narrow.i.i.i to i64
  %wide.trip.count35.i.i.i = zext nneg i32 %i.az to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.bb to i64
  %i.bo = mul i32 %i.aa, %i.ab
  %i.bp = add i32 %i.bo, %indvars.iv.i.i
  %i.bq = add i32 %i.bp, %i.as                    ; 3 uses
  %exitcond.not.i.i = icmp eq i32 %i.bq, 1
  %exitcond.not.i.i.1 = icmp eq i32 %i.bq, 2
  %exitcond.not.i.i.2 = icmp eq i32 %i.bq, 3
  br label %.preheader1.us.i.i.i

.preheader1.us.i.i.i:                             ; preds = %._crit_edge9.split.us.us.i.i.i, %.preheader1.us.preheader.i.i.i
  %indvars.iv32.i.i.i = phi i64 [ 0, %.preheader1.us.preheader.i.i.i ], [ %indvars.iv.next33.i.i.i, %._crit_edge9.split.us.us.i.i.i ] ; 2 uses
  %.04012.us.i.i.i = phi ptr [ %i.ar, %.preheader1.us.preheader.i.i.i ], [ %i.ce, %._crit_edge9.split.us.us.i.i.i ] ; 2 uses
  %invariant.gep.us.i.i.i = getelementptr [4 x i8], ptr %i.bk, i64 %indvars.iv32.i.i.i
  br label %.lr.ph.us.us.i.i.i

.lr.ph.us.us.i.i.i:                               ; preds = %._crit_edge.us.us.i.i.i, %.preheader1.us.i.i.i
  %indvar.i.i.i = phi i64 [ %indvar.next.i.i.i, %._crit_edge.us.us.i.i.i ], [ 0, %.preheader1.us.i.i.i ] ; 3 uses
  %.1416.us.us.i.i.i = phi ptr [ %i.ce, %._crit_edge.us.us.i.i.i ], [ %.04012.us.i.i.i, %.preheader1.us.i.i.i ] ; 5 uses
  %i.br = trunc nuw nsw i64 %indvar.i.i.i to i32
  %i.bs = mul i32 %i.az, %i.br
  %i.bt = sext i32 %i.bs to i64
  %gep.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.us.i.i.i, i64 %i.bt ; 2 uses
  %i.bu = load float, ptr %gep.us.us.i.i.i, align 4, !tbaa !108
  store float %i.bu, ptr %.1416.us.us.i.i.i, align 4, !tbaa !108
  br i1 %exitcond.not.i.i, label %.lr.ph5.us.us.preheader.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.us.us.i.i.i
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %gep.us.us.i.i.i, i64 %i.bi ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !108
  %i.bx = getelementptr inbounds nuw i8, ptr %.1416.us.us.i.i.i, i64 4
  store float %i.bw, ptr %i.bx, align 4, !tbaa !108
  br i1 %exitcond.not.i.i.1, label %.lr.ph5.us.us.preheader.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bi ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !108
  %i.ca = getelementptr inbounds nuw i8, ptr %.1416.us.us.i.i.i, i64 8
  store float %i.bz, ptr %i.ca, align 4, !tbaa !108
  br i1 %exitcond.not.i.i.2, label %.lr.ph5.us.us.preheader.i.i.i, label %._crit_edge.us.us.i.i.i.critedge

._crit_edge.us.us.i.i.i.critedge:                 ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bi
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !108
  %i.cd = getelementptr inbounds nuw i8, ptr %.1416.us.us.i.i.i, i64 12
  store float %i.cc, ptr %i.cd, align 4, !tbaa !108
  br label %._crit_edge.us.us.i.i.i

._crit_edge.us.us.i.i.i:                          ; preds = %._crit_edge.us.us.i.i.i.critedge, %.lr.ph5.us.us.preheader.i.i.i
  %indvar.next.i.i.i = add nuw nsw i64 %indvar.i.i.i, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.1416.us.us.i.i.i, i64 16 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvar.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge9.split.us.us.i.i.i, label %.lr.ph.us.us.i.i.i, !llvm.loop !248

.lr.ph5.us.us.preheader.i.i.i:                    ; preds = %.lr.ph.us.us.i.i.i, %bb.g, %bb.h
  %indvars.iv.i.i.i.lcssa = phi i64 [ 0, %.lr.ph.us.us.i.i.i ], [ 4, %bb.g ], [ 8, %bb.h ]
  %i.cf = shl nuw nsw i64 %indvar.i.i.i, 4
  %i.cg = getelementptr i8, ptr %.04012.us.i.i.i, i64 %indvars.iv.i.i.i.lcssa
  %i.ch = getelementptr i8, ptr %i.cg, i64 %i.cf
  %scevgep.i.i.i = getelementptr i8, ptr %i.ch, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.bn, i1 false), !tbaa !108
  br label %._crit_edge.us.us.i.i.i

._crit_edge9.split.us.us.i.i.i:                   ; preds = %._crit_edge.us.us.i.i.i
  %indvars.iv.next33.i.i.i = add nuw nsw i64 %indvars.iv32.i.i.i, 1 ; 2 uses
  %exitcond36.not.i.i.i = icmp eq i64 %indvars.iv.next33.i.i.i, %wide.trip.count35.i.i.i
  br i1 %exitcond36.not.i.i.i, label %._crit_edge14.split.i.i.i, label %.preheader1.us.i.i.i, !llvm.loop !249

.preheader1.lr.ph.split.split.i.i.i:              ; preds = %.preheader1.lr.ph.split.i.i.i
  %4 = zext nneg i32 %i.bb to i64
  %5 = zext nneg i32 %i.az to i64
  %flatten.tripcount.i.i.i = shl nuw nsw i64 %5, 4
  %6 = mul i64 %flatten.tripcount.i.i.i, %4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ar, i8 0, i64 %6, i1 false), !tbaa !108
  br label %._crit_edge14.split.i.i.i

._crit_edge14.split.i.i.i:                        ; preds = %._crit_edge9.split.us.us.i.i.i, %.preheader1.lr.ph.split.split.i.i.i, %.preheader1.lr.ph.i.i.i, %bb.f
  %i.ci = add i32 %.03917.i.i.i, 1                ; 2 uses
  %exitcond37.not.i.i.i = icmp eq i32 %i.ci, %.val3
  %indvars.iv.next.i.i = add i32 %indvars.iv.i.i, -4
  br i1 %exitcond37.not.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn12initFastConvERKNS0_11_InputArrayEPfiiiRKSt6vectorImSaImEESA_SA_SA_SA_ibbE3$_2JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", label %bb.b, !llvm.loop !250

"_ZSt10__invoke_rIvRZN2cv3dnn12initFastConvERKNS0_11_InputArrayEPfiiiRKSt6vectorImSaImEESA_SA_SA_SA_ibbE3$_2JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit": ; preds = %._crit_edge14.split.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12initFastConvERKNS0_11_InputArrayEPfiiiRKSt6vectorImSaImEESE_SE_SE_SE_ibbE3$_2E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_2E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn12initFastConvERKNS_11_InputArrayEPfiiiRKSt6vectorImSaImEES9_S9_S9_S9_ibbE3$_2", ptr %0, align 8, !tbaa !229
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_2E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %.val, ptr %0, align 8, !tbaa !103
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_2E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #21 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(88) %.val6, i64 88, i1 false), !tbaa.struct !251
  store ptr %i.a, ptr %0, align 8, !tbaa !103
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_2E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !103 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_2E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 88) #22
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_2E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_2E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #18

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn11runFastConvERKNS0_11_InputArrayERKNS0_12_OutputArrayERKNS0_3PtrINS5_8FastConvEEEiRKNSC_INS5_14dnn5_v2026060515ActivationLayerEEERKSt6vectorIfSaIfEEbE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #1 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !103   ; 37 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !95     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !97
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph80.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn11runFastConvERKNS0_11_InputArrayERKNS0_12_OutputArrayERKNS0_3PtrINS1_8FastConvEEEiRKNS8_INS1_14dnn5_v2026060515ActivationLayerEEERKSt6vectorIfSaIfEEbE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EEST_E4typeEOSU_DpOSV_.exit"

.lr.ph80.i.i.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 72 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 88 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 120 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 80 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 96 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 104 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 112 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 136 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 152 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 160 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 168 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 176 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 184 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 192 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 200 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 208 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 216 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 224 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 232 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 240 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 248 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 256 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 264 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 272 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i.i.i, %.lr.ph80.i.i.i
  %.079.i.i.i = phi i32 [ %i.a, %.lr.ph80.i.i.i ], [ %.pre-phi.i.i.i, %.loopexit.i.i.i ] ; 4 uses
  %i.am = load ptr, ptr %.val, align 8, !tbaa !252, !nonnull !74
  %i.an = load i8, ptr %i.am, align 1, !tbaa !120, !range !73, !noundef !74
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !254, !nonnull !74, !align !224
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !42 ; 2 uses
  br i1 %i.ao, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !255, !nonnull !74, !align !224
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !42
  %i.at = mul i32 %i.as, %i.aq                    ; 2 uses
  %i.au = mul i32 %i.at, %.079.i.i.i
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !256, !nonnull !74, !align !224
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !42 ; 2 uses
  %i.ax = sdiv i32 %i.au, %i.aw                   ; 2 uses
  %i.ay = add nsw i32 %.079.i.i.i, 1              ; 3 uses
  %i.az = mul i32 %i.at, %i.ay
  %i.ba = sdiv i32 %i.az, %i.aw                   ; 3 uses
  %i.bb = icmp slt i32 %i.ax, %i.ba
  br i1 %i.bb, label %.lr.ph78.i.i.i, label %.loopexit.i.i.i

.lr.ph78.i.i.i:                                   ; preds = %bb.c, %.lr.ph78.i.i.i
  %.06377.i.i.i = phi i32 [ %i.es, %.lr.ph78.i.i.i ], [ %i.ax, %bb.c ] ; 5 uses
  %i.bc = load ptr, ptr %i.al, align 8, !tbaa !255, !nonnull !74, !align !224
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !42 ; 3 uses
  %i.be = sdiv i32 %.06377.i.i.i, %i.bd           ; 2 uses
  %i.bf = mul nsw i32 %i.be, %i.bd                ; 0 uses
  %.recomposed = srem i32 %.06377.i.i.i, %i.bd    ; 2 uses
  %i.bg = load ptr, ptr %i.l, align 8, !tbaa !257, !nonnull !74, !align !224
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !42 ; 4 uses
  %i.bi = sdiv i32 %.recomposed, %i.bh            ; 2 uses
  %i.bj = mul nsw i32 %i.bi, %i.bh                ; 0 uses
  %.recomposed11 = srem i32 %.recomposed, %i.bh   ; 2 uses
  %i.bk = sub nsw i32 %i.bh, %.recomposed11
  %i.bl = sub nsw i32 %i.ba, %.06377.i.i.i
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.bk, i32 %i.bl) ; 2 uses
  %i.bm = load ptr, ptr %i.k, align 8, !tbaa !258, !nonnull !74, !align !222
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !93
  %i.bo = sext i32 %.06377.i.i.i to i64
  %i.bp = load ptr, ptr %i.m, align 8, !tbaa !259, !nonnull !74, !align !222
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !41 ; 2 uses
  %i.br = mul i64 %i.bq, %i.bo
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.br
  %i.bt = load ptr, ptr %i.n, align 8, !tbaa !260, !nonnull !74, !align !222
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !182
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !261, !nonnull !74, !align !224
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !42
  %i.bx = mul nsw i32 %i.bw, %i.be
  %i.by = add nsw i32 %i.bx, %i.bi
  %i.bz = load ptr, ptr %i.g, align 8, !tbaa !262, !nonnull !74, !align !224
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !42
  %i.cb = mul nsw i32 %i.by, %i.ca
  %i.cc = sext i32 %i.cb to i64
  %i.cd = load ptr, ptr %i.o, align 8, !tbaa !263, !nonnull !74, !align !222
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !41 ; 2 uses
  %i.cf = mul i64 %i.ce, %i.cc
  %i.cg = load ptr, ptr %i.i, align 8, !tbaa !264, !nonnull !74, !align !224
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !42 ; 2 uses
  %i.ci = mul nsw i32 %i.ch, %.recomposed11
  %i.cj = sext i32 %i.ci to i64
  %i.ck = add i64 %i.cf, %i.cj
  %i.cl = load ptr, ptr %i.p, align 8, !tbaa !265, !nonnull !74, !align !224
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !42 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul i64 %i.ck, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.co
  %i.cq = load ptr, ptr %i.q, align 8, !tbaa !266, !nonnull !74, !align !222
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !101
  %i.cs = load ptr, ptr %i.r, align 8, !tbaa !267, !nonnull !74, !align !222
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !101
  %i.cu = load ptr, ptr %i.j, align 8, !tbaa !268, !nonnull !74, !align !222
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !41
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = load ptr, ptr %i.s, align 8, !tbaa !269, !nonnull !74, !align !224
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !42
  %i.cz = load ptr, ptr %i.t, align 8, !tbaa !270, !nonnull !74, !align !224
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !42
  %i.db = load ptr, ptr %i.u, align 8, !tbaa !271, !nonnull !74, !align !224
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !42
  %i.dd = load ptr, ptr %i.v, align 8, !tbaa !272, !nonnull !74, !align !224
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !42
  %i.df = load ptr, ptr %i.w, align 8, !tbaa !273, !nonnull !74, !align !224
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !42
  %i.dh = load ptr, ptr %i.x, align 8, !tbaa !274, !nonnull !74, !align !224
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !42
  %i.dj = load ptr, ptr %i.y, align 8, !tbaa !275, !nonnull !74, !align !224
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !42
  %i.dl = load ptr, ptr %i.z, align 8, !tbaa !276, !nonnull !74, !align !224
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !42
  %i.dn = load ptr, ptr %i.aa, align 8, !tbaa !277, !nonnull !74, !align !224
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !42
  %i.dp = load ptr, ptr %i.ab, align 8, !tbaa !278, !nonnull !74, !align !224
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !42
  %i.dr = load ptr, ptr %i.ac, align 8, !tbaa !279, !nonnull !74, !align !224
end_hunk_0
