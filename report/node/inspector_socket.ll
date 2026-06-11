inline.NumInlined: 1128
inline.NumDeleted: 514
begin_hunk_0_@_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag:bb.a
bb.n:                                             ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1
  store i8 %i.ak, ptr %i.g, align 1
  br label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !13

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit47

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit47

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1
  store i8 %i.ap, ptr %i.an, align 1
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit47

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit47: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit47
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit47
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1
  store i8 %i.au, ptr %1, align 1
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8               ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #24
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1
  store i8 %i.bk, ptr %i.bf, align 1
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ac, label %bb.ad, !prof !13

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit49

bb.ad:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.ae, label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit49

bb.ae:                                            ; preds = %bb.ad
  %i.bo = load i8, ptr %2, align 1
  store i8 %i.bo, ptr %i.bl, align 1
  br label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit49

_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit49: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.af, label %bb.ag, !prof !13

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit50

bb.ag:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit49
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit50

bb.ah:                                            ; preds = %bb.ag
  %i.bt = load i8, ptr %1, align 1
  store i8 %i.bt, ptr %i.bp, align 1
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit50

_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit50: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i51 = icmp eq ptr %i.av, null
  br i1 %.not.i51, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit50
  %i.bv = sub i64 %i.h, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bv) #25
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit50, %bb.ai
  store ptr %i.bf, ptr %0, align 8
  store ptr %i.bu, ptr %i.f, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.bw, ptr %i.d, align 8
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler17WaitForCloseReplyEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(57) initializes((40, 56)) %0) #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 17, ptr %i.a, align 8
  %.repack1 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.repack1, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler18CloseFrameReceivedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) initializes((24, 40)) %0) #0 align 2 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 17, ptr %i.a, align 8
  %.repack1 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.repack1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.c = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #24 ; 4 uses
  store ptr %i.c, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.d, ptr %i.e, align 8
  store i16 136, ptr %i.c, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.d, ptr %i.f, align 8
  %i.g = call noundef range(i32 0, 2) i32 @_ZN4node9inspector9TcpHolder8WriteRawERKSt6vectorIcSaIcEEPFvP10uv_write_siE(ptr noundef nonnull align 8 dereferenceable(288) %.val, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noundef nonnull @_ZN4node9inspector12_GLOBAL__N_19WsHandler19OnCloseFrameWrittenEP10uv_write_si) ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler13AcceptUpgradeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler6OnDataEPSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.elt5.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %i.a, align 8
  %.pre10 = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit, %bb.a
  %i.f = phi ptr [ %i.dw, %_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit ], [ %.pre10, %bb.a ] ; 5 uses
  %i.g = phi ptr [ %i.dv, %_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit ], [ %.pre, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.h = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, 2
  br i1 %i.k, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.m = load i8, ptr %i.f, align 1               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 4 uses
  %i.o = load i8, ptr %i.l, align 1               ; 2 uses
  %i.p = zext i8 %i.m to i32                      ; 2 uses
  %.not64.i.i = icmp sgt i8 %i.m, -1
  %i.q = icmp slt i8 %i.o, 0
  %i.r = and i32 %i.p, 48
  %i.s = icmp ne i32 %i.r, 0
  %or.cond3.i.i = or i1 %.not64.i.i, %i.s
  br i1 %or.cond3.i.i, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = and i32 %i.p, 15
  switch i32 %i.t, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i [
    i32 8, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.056.i.i = phi i32 [ 2, %bb.e ], [ 0, %bb.d ]
  br i1 %i.q, label %bb.g, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.u = and i8 %i.o, 127                         ; 3 uses
  %i.v = icmp samesign ugt i8 %i.u, 125
  br i1 %i.v, label %bb.h, label %..thread_crit_edge.i.i

..thread_crit_edge.i.i:                           ; preds = %bb.g
  %i.w = zext nneg i8 %i.u to i64
  br label %.thread.i.i

bb.h:                                             ; preds = %bb.g
  %i.x = icmp eq i8 %i.u, 126                     ; 2 uses
  %.058.i.i = select i1 %i.x, i32 2, i32 8        ; 3 uses
  %i.y = ptrtoint ptr %i.n to i64
  %i.z = sub i64 %i.h, %i.y
  %i.aa = zext nneg i32 %.058.i.i to i64          ; 2 uses
  %.not.i.i = icmp slt i64 %i.z, %i.aa
  br i1 %.not.i.i, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.h
  %xtraiter = and i32 %.058.i.i, 2                ; 2 uses
  br i1 %i.x, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i32 %.058.i.i, 8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.05986.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.au, %.preheader.i.i ]
  %.sroa.075.085.i.i = phi ptr [ %i.n, %.preheader.i.i.preheader.new ], [ %i.ar, %.preheader.i.i ] ; 5 uses
  %niter = phi i32 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.075.085.i.i, i64 1
  %i.ac = load i8, ptr %.sroa.075.085.i.i, align 1
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl i64 %.05986.i.i, 16
  %i.af = shl nuw nsw i64 %i.ad, 8
  %i.ag = or disjoint i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.075.085.i.i, i64 2
  %i.ai = load i8, ptr %i.ab, align 1
  %i.aj = zext i8 %i.ai to i64
  %i.ak = or disjoint i64 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.075.085.i.i, i64 3
  %i.am = load i8, ptr %i.ah, align 1
  %i.an = zext i8 %i.am to i64
  %i.ao = shl i64 %i.ak, 16
  %i.ap = shl nuw nsw i64 %i.an, 8
  %i.aq = or disjoint i64 %i.ao, %i.ap            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.075.085.i.i, i64 4 ; 2 uses
  %i.as = load i8, ptr %i.al, align 1
  %i.at = zext i8 %i.as to i64
  %i.au = or disjoint i64 %i.aq, %i.at            ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader.i.i, !llvm.loop !47

.unr-lcssa:                                       ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %.unr-lcssa, %.preheader.i.i.preheader
  %.05986.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.au, %.unr-lcssa ]
  %.sroa.075.085.i.i.epil.init = phi ptr [ %i.n, %.preheader.i.i.preheader ], [ %i.ar, %.unr-lcssa ]
  %lcmp.mod32 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod32)
  br label %.preheader.i.i.epil

.preheader.i.i.epil:                              ; preds = %.preheader.i.i.epil, %.preheader.i.i.epil.preheader
  %.05986.i.i.epil = phi i64 [ %i.az, %.preheader.i.i.epil ], [ %.05986.i.i.epil.init, %.preheader.i.i.epil.preheader ]
  %.sroa.075.085.i.i.epil = phi ptr [ %i.aw, %.preheader.i.i.epil ], [ %.sroa.075.085.i.i.epil.init, %.preheader.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader.i.i.epil ], [ 0, %.preheader.i.i.epil.preheader ]
  %i.av = shl i64 %.05986.i.i.epil, 8             ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.075.085.i.i.epil, i64 1
  %i.ax = load i8, ptr %.sroa.075.085.i.i.epil, align 1
  %i.ay = zext i8 %i.ax to i64
  %i.az = or disjoint i64 %i.av, %i.ay            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.i.i.epil, !llvm.loop !48

.epilog-lcssa:                                    ; preds = %.preheader.i.i.epil, %.unr-lcssa
  %.lcssa29 = phi i64 [ %i.aq, %.unr-lcssa ], [ %i.av, %.preheader.i.i.epil ]
  %.lcssa = phi i64 [ %i.au, %.unr-lcssa ], [ %i.az, %.preheader.i.i.epil ]
  %i.ba = getelementptr i8, ptr %i.f, i64 %i.aa
  %scevgep.i = getelementptr i8, ptr %i.ba, i64 2
  %i.bb = icmp slt i64 %.lcssa29, 0
  br i1 %i.bb, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %.epilog-lcssa, %..thread_crit_edge.i.i
  %.26184.i.i = phi i64 [ %i.w, %..thread_crit_edge.i.i ], [ %.lcssa, %.epilog-lcssa ] ; 4 uses
  %.sroa.075.183.i.i = phi ptr [ %i.n, %..thread_crit_edge.i.i ], [ %scevgep.i, %.epilog-lcssa ] ; 2 uses
  %i.bc = add i64 %i.h, -4
  %i.bd = sub i64 %i.bc, %i.i
  %i.be = icmp ult i64 %i.bd, %.26184.i.i
  br i1 %i.be, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i, label %bb.i

bb.i:                                             ; preds = %.thread.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.075.183.i.i, i64 4 ; 2 uses
  %.not89.i.i = icmp eq i64 %.26184.i.i, 0
  br i1 %.not89.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %_ZNSt6vectorIcSaIcEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKcS1_EEOc.exit.i
  %.pre93.i.i = load ptr, ptr %1, align 8
  %.pre94.i.i = ptrtoint ptr %.pre93.i.i to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.i
  %.pre-phi.i.i = phi i64 [ %.pre94.i.i, %._crit_edge.loopexit.i.i ], [ %i.i, %bb.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.26184.i.i
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %.pre-phi.i.i
  %i.bj = trunc i64 %i.bi to i32
  br label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i

.lr.ph.i.i:                                       ; preds = %bb.i, %_ZNSt6vectorIcSaIcEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKcS1_EEOc.exit.i
  %i.bk = phi ptr [ %i.ch, %_ZNSt6vectorIcSaIcEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKcS1_EEOc.exit.i ], [ null, %bb.i ] ; 3 uses
  %.05588.i.i = phi i64 [ %i.ci, %_ZNSt6vectorIcSaIcEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKcS1_EEOc.exit.i ], [ 0, %bb.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.05588.i.i
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = and i64 %.05588.i.i, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.075.183.i.i, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = xor i8 %i.bp, %i.bm                     ; 2 uses
  %3 = load ptr, ptr %2, align 8                  ; 4 uses
  %i.br = ptrtoint ptr %i.bk to i64
  %i.bs = ptrtoint ptr %3 to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 8 uses
  %i.bu = load ptr, ptr %i.c, align 8
  %.not.i7.i = icmp eq ptr %i.bk, %i.bu
  br i1 %.not.i7.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  store i8 %i.bq, ptr %i.bk, align 1
  %i.bv = load ptr, ptr %i.b, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 2 uses
  store ptr %i.bw, ptr %i.b, align 8
  br label %_ZNSt6vectorIcSaIcEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKcS1_EEOc.exit.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bx = icmp eq i64 %i.bt, 9223372036854775807
  br i1 %i.bx, label %bb.l, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #23
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.by = add i64 %.sroa.speculated.i.i.i.i, %i.bt ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bt
  %i.ca = call i64 @llvm.umin.i64(i64 %i.by, i64 9223372036854775807)
  %i.cb = select i1 %i.bz, i64 9223372036854775807, i64 %i.ca ; 3 uses
  %.not.i.i.i8.i = icmp ne i64 %i.cb, 0
  call void @llvm.assume(i1 %.not.i.i.i8.i)
  %i.cc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #24 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bt ; 2 uses
  store i8 %i.bq, ptr %i.cd, align 1
  %i.ce = icmp sgt i64 %i.bt, 0
  br i1 %i.ce, label %bb.m, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr align 1 %3, i64 %i.bt, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.m, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 1 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %3, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.bt) #25
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  store ptr %i.cc, ptr %2, align 8
  store ptr %i.cf, ptr %i.b, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cb
  store ptr %i.cg, ptr %i.c, align 8
  br label %_ZNSt6vectorIcSaIcEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKcS1_EEOc.exit.i

_ZNSt6vectorIcSaIcEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKcS1_EEOc.exit.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, %bb.j
  %i.ch = phi ptr [ %i.bw, %bb.j ], [ %i.cf, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ]
  %i.ci = add nuw i64 %.05588.i.i, 1              ; 2 uses
  %exitcond92.not.i.i = icmp eq i64 %i.ci, %.26184.i.i
  br i1 %exitcond92.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !50

_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i: ; preds = %._crit_edge.i.i, %.thread.i.i, %bb.h
  %.1.i = phi i32 [ 0, %bb.h ], [ %i.bj, %._crit_edge.i.i ], [ 0, %.thread.i.i ] ; 2 uses
  %.5.i.i = phi i32 [ 1, %bb.h ], [ %.056.i.i, %._crit_edge.i.i ], [ 1, %.thread.i.i ]
  %i.cj = and i8 %i.m, 64
  %.not39.i = icmp eq i8 %i.cj, 0
  br i1 %.not39.i, label %bb.o, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i

_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i: ; preds = %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i, %.epilog-lcssa, %bb.f, %bb.d, %bb.c
  %i.ck = load ptr, ptr %0, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(57) %0) #22, !inline_history !51
  br label %.thread.ithread-pre-split

bb.o:                                             ; preds = %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i
  switch i32 %.5.i.i, label %.thread.ithread-pre-split [
    i32 2, label %bb.p
    i32 0, label %bb.t
  ]

bb.p:                                             ; preds = %bb.o
  %.unpack.i = load i64, ptr %i.e, align 8        ; 3 uses
  %.unpack6.i = load i64, ptr %.elt5.i, align 8
  %i.cn = getelementptr inbounds i8, ptr %0, i64 %.unpack6.i ; 2 uses
  %i.co = and i64 %.unpack.i, 1
  %.not.i = icmp eq i64 %i.co, 0
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = load ptr, ptr %i.cn, align 8
  %i.cq = getelementptr i8, ptr %i.cp, i64 %.unpack.i
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1
  %i.cs = load ptr, ptr %i.cr, align 8, !nosanitize !15
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ct = inttoptr i64 %.unpack.i to ptr
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cu = phi ptr [ %i.cs, %bb.q ], [ %i.ct, %bb.r ]
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(57) %i.cn) #22, !inline_history !51
  br label %.thread.ithread-pre-split

bb.t:                                             ; preds = %bb.o
  %i.cv = load ptr, ptr %i.d, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 248
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %2) #22, !inline_history !51
  br label %.thread.ithread-pre-split

.thread.ithread-pre-split:                        ; preds = %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i, %bb.o, %bb.s, %bb.t
  %.013.i.ph = phi i32 [ %.1.i, %bb.t ], [ 0, %bb.s ], [ %.1.i, %bb.o ], [ 0, %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i ]
  %.pr = load ptr, ptr %2, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.ithread-pre-split, %bb.b
  %4 = phi ptr [ %.pr, %.thread.ithread-pre-split ], [ null, %bb.b ] ; 3 uses
  %.013.i = phi i32 [ %.013.i.ph, %.thread.ithread-pre-split ], [ 0, %bb.b ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i.i.i, label %_ZN4node9inspector12_GLOBAL__N_19WsHandler13ParseWsFramesERKSt6vectorIcSaIcEE.exit, label %bb.u

bb.u:                                             ; preds = %.thread.i
  %i.db = load ptr, ptr %i.c, align 8
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %4 to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %4, i64 noundef %i.de) #25
  br label %_ZN4node9inspector12_GLOBAL__N_19WsHandler13ParseWsFramesERKSt6vectorIcSaIcEE.exit

_ZN4node9inspector12_GLOBAL__N_19WsHandler13ParseWsFramesERKSt6vectorIcSaIcEE.exit: ; preds = %.thread.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.df = icmp sgt i32 %.013.i, 0
  br i1 %i.df, label %bb.v, label %.critedge

bb.v:                                             ; preds = %_ZN4node9inspector12_GLOBAL__N_19WsHandler13ParseWsFramesERKSt6vectorIcSaIcEE.exit
  %i.dg = zext nneg i32 %.013.i to i64
  %i.dh = load ptr, ptr %1, align 8               ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg ; 4 uses
  %i.dj = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dk = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.dl = icmp eq ptr %i.di, %i.dk
  br i1 %i.dl, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dm, %i.dj                    ; 3 uses
  %i.do = icmp sgt i64 %i.dn, 1
  br i1 %i.do, label %bb.x, label %bb.y, !prof !13

bb.x:                                             ; preds = %bb.w
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dh, ptr nonnull align 1 %i.di, i64 %i.dn, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.dp = icmp eq i64 %i.dn, 1
  br i1 %i.dp, label %bb.z, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.dq = load i8, ptr %i.di, align 1
  store i8 %i.dq, ptr %i.dh, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.v
  %i.dr = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.dj
  %i.du = getelementptr inbounds i8, ptr %i.dh, i64 %i.dt ; 3 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.dr, %i.du
  br i1 %.not.i.i.i.i7, label %_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i
  store ptr %i.du, ptr %i.a, align 8
  br label %_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit

_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i, %bb.aa
  %i.dv = phi ptr [ %i.dr, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i ], [ %i.du, %bb.aa ] ; 2 uses
  %i.dw = load ptr, ptr %1, align 8               ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.dv
  br i1 %i.dx, label %.critedge, label %bb.b, !llvm.loop !52

.critedge:                                        ; preds = %_ZN4node9inspector12_GLOBAL__N_19WsHandler13ParseWsFramesERKSt6vectorIcSaIcEE.exit, %_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler5OnEofEv(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4node9inspector9TcpHolderENS0_15FunctionDeleterIS2_XadL_ZNS2_20DisconnectAndDisposeEPS2_EEEEE5resetES4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @uv_close(ptr noundef nonnull %i.b, ptr noundef nonnull @_ZN4node9inspector9TcpHolder8OnClosedEP11uv_handle_s) #22
  br label %_ZNSt10unique_ptrIN4node9inspector9TcpHolderENS0_15FunctionDeleterIS2_XadL_ZNS2_20DisconnectAndDisposeEPS2_EEEEE5resetES4_.exit

_ZNSt10unique_ptrIN4node9inspector9TcpHolderENS0_15FunctionDeleterIS2_XadL_ZNS2_20DisconnectAndDisposeEPS2_EEEEE5resetES4_.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i8, ptr %i.c, align 8, !range !14, !noundef !15
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4node9inspector9TcpHolderENS0_15FunctionDeleterIS2_XadL_ZNS2_20DisconnectAndDisposeEPS2_EEEEE5resetES4_.exit
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(57) %0) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt10unique_ptrIN4node9inspector9TcpHolderENS0_15FunctionDeleterIS2_XadL_ZNS2_20DisconnectAndDisposeEPS2_EEEEE5resetES4_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler5WriteESt6vectorIcSaIcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 12 uses
  %2 = alloca %"class.std::vector", align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !53
  %i.f = load ptr, ptr %1, align 8, !noalias !53
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 13 uses
  %i.j = icmp ult i64 %i.i, 126
  %i.k = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #24, !noalias !53 ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 3 uses
  br i1 %i.j, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i27.i, label %bb.b

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i27.i: ; preds = %bb.a
  %i.m = trunc nuw nsw i64 %i.i to i8
  store i8 %i.m, ptr %i.l, align 1, !noalias !53
  store i8 -127, ptr %i.k, align 1, !noalias !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 3 uses
  store ptr %i.k, ptr %2, align 8, !alias.scope !53
  store ptr %i.n, ptr %i.b, align 8, !alias.scope !53
  store ptr %i.n, ptr %i.c, align 8, !alias.scope !53
  br label %_ZN4node9inspector12_GLOBAL__N_119encode_frame_hybi17ERKSt6vectorIcSaIcEE.exit

bb.b:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %i.i, 65536
  br i1 %i.o, label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit44.i, label %bb.c

_ZNSt6vectorIcSaIcEE9push_backEOc.exit44.i:       ; preds = %bb.b
  store i8 126, ptr %i.l, align 1, !noalias !53
  store i8 -127, ptr %i.k, align 1, !noalias !53
  %i.p = lshr i64 %i.i, 8
  %i.q = trunc nuw i64 %i.p to i8
  %i.r = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #24, !noalias !53 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i8 %i.q, ptr %i.s, align 1, !noalias !53
  %i.t = load i16, ptr %i.k, align 1, !noalias !53
  store i16 %i.t, ptr %i.r, align 1, !noalias !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 2) #25, !noalias !53
  store ptr %i.r, ptr %2, align 8, !alias.scope !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 3 uses
  store ptr %i.v, ptr %i.c, align 8, !alias.scope !53
  %i.w = trunc i64 %i.i to i8
  store i8 %i.w, ptr %i.u, align 1, !noalias !53
  store ptr %i.v, ptr %i.b, align 8, !alias.scope !53
  br label %_ZN4node9inspector12_GLOBAL__N_119encode_frame_hybi17ERKSt6vectorIcSaIcEE.exit

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 3 uses
  store i8 127, ptr %i.l, align 1, !noalias !53
  store i8 -127, ptr %i.k, align 1, !noalias !53
  store ptr %i.k, ptr %2, align 8, !alias.scope !53
  store ptr %i.x, ptr %i.b, align 8, !alias.scope !53
  store ptr %i.x, ptr %i.c, align 8, !alias.scope !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !53
  %i.y = trunc i64 %i.i to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.y, ptr %i.z, align 1, !noalias !53
  %i.aa = lshr i64 %i.i, 8
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.ab, ptr %i.ac, align 1, !noalias !53
  %i.ad = lshr i64 %i.i, 16
  %i.ae = trunc i64 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.ae, ptr %i.af, align 1, !noalias !53
  %i.ag = lshr i64 %i.i, 24
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.ah, ptr %i.ai, align 1, !noalias !53
  %i.aj = lshr i64 %i.i, 32
  %i.ak = trunc i64 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.ak, ptr %i.al, align 1, !noalias !53
  %i.am = lshr i64 %i.i, 40
  %i.an = trunc i64 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.an, ptr %i.ao, align 1, !noalias !53
  %i.ap = lshr i64 %i.i, 48
  %i.aq = trunc i64 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.aq, ptr %i.ar, align 1, !noalias !53
  %i.as = lshr i64 %i.i, 56
  %i.at = trunc nuw i64 %i.as to i8
  store i8 %i.at, ptr %i.a, align 1, !noalias !53
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPcEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull %i.x, ptr noundef nonnull %i.a, ptr noundef nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !53
  %.pre.i = load ptr, ptr %i.b, align 8, !alias.scope !53
  %.pre78.i = load ptr, ptr %2, align 8, !alias.scope !53
  br label %_ZN4node9inspector12_GLOBAL__N_119encode_frame_hybi17ERKSt6vectorIcSaIcEE.exit

_ZN4node9inspector12_GLOBAL__N_119encode_frame_hybi17ERKSt6vectorIcSaIcEE.exit: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i27.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit44.i, %bb.c
  %i.av = phi ptr [ %.pre78.i, %bb.c ], [ %i.r, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit44.i ], [ %i.k, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i27.i ] ; 2 uses
  %i.aw = phi ptr [ %.pre.i, %bb.c ], [ %i.v, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit44.i ], [ %i.n, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i27.i ]
  %i.ax = load ptr, ptr %1, align 8, !noalias !53
  %i.ay = load ptr, ptr %i.d, align 8, !noalias !53
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.av to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.av, i64 %i.bb
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEvNS4_IPcS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.bc, ptr %i.ax, ptr %i.ay)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef range(i32 0, 2) i32 @_ZN4node9inspector9TcpHolder8WriteRawERKSt6vectorIcSaIcEEPFvP10uv_write_siE(ptr noundef nonnull align 8 dereferenceable(288) %i.be, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, ptr noundef nonnull @_ZN4node9inspector12_GLOBAL__N_112WriteRequest7CleanupEP10uv_write_si) ; 0 uses
  %i.bg = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4node9inspector12_GLOBAL__N_119encode_frame_hybi17ERKSt6vectorIcSaIcEE.exit
  %i.bh = load ptr, ptr %i.c, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bk) #25
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZN4node9inspector12_GLOBAL__N_119encode_frame_hybi17ERKSt6vectorIcSaIcEE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler15CancelHandshakeEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler8ShutdownEv(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.d = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #24 ; 4 uses
  store ptr %i.d, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.e, ptr %i.f, align 8
  store i16 136, ptr %i.d, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.e, ptr %i.g, align 8
  %i.h = call noundef range(i32 0, 2) i32 @_ZN4node9inspector9TcpHolder8WriteRawERKSt6vectorIcSaIcEEPFvP10uv_write_siE(ptr noundef nonnull align 8 dereferenceable(288) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noundef nonnull @_ZN4node9inspector12_GLOBAL__N_19WsHandler19OnCloseFrameWrittenEP10uv_write_si) ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(57) %0) #22
  br label %bb.d
end_hunk_0
