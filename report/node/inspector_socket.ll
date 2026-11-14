Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/inspector_socket?download=true
inline.NumInlined: 1127
inline.NumDeleted: 513
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
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
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !30

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
  br i1 %i.as, label %bb.t, label %bb.u, !prof !30

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
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !30

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
  br i1 %i.bm, label %bb.ac, label %bb.ad, !prof !30

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
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
  br i1 %i.br, label %bb.af, label %bb.ag, !prof !30

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit49
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
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
  %i.bv = load ptr, ptr %i.d, align 8
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bx) #25
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit50, %bb.ai
  store ptr %i.bf, ptr %0, align 8
  store ptr %i.bu, ptr %i.f, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.by, ptr %i.d, align 8
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler17WaitForCloseReplyEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(57) initializes((40, 56)) %0) #3 align 2 !guid !118 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 17, ptr %i.a, align 8
  %.repack1 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.repack1, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler18CloseFrameReceivedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) initializes((24, 40)) %0) #0 align 2 !guid !119 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 17, ptr %i.a, align 8
  %.repack1 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.repack1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.b = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #24 ; 4 uses
  store ptr %i.b, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.c, ptr %i.d, align 8
  store i16 136, ptr %i.b, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef range(i32 0, 2) i32 @_ZN4node9inspector9TcpHolder8WriteRawERKSt6vectorIcSaIcEEPFvP10uv_write_siE(ptr noundef nonnull align 8 dereferenceable(288) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noundef nonnull @_ZN4node9inspector12_GLOBAL__N_19WsHandler19OnCloseFrameWrittenEP10uv_write_si) ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler13AcceptUpgradeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #17 align 2 !guid !120 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler6OnDataEPSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 align 2 !guid !126 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::vector", align 8       ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.elt5.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %i.b, align 8
  %.pre10 = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit, %bb.a
  %i.g = phi ptr [ %i.dr, %_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit ], [ %.pre10, %bb.a ] ; 9 uses
  %i.h = phi ptr [ %i.dq, %_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit ], [ %.pre, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.i = ptrtoint ptr %i.h to i64                 ; 5 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 5 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 2
  br i1 %i.l, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.n = load i8, ptr %i.g, align 1               ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 3 uses
  %i.p = load i8, ptr %i.m, align 1               ; 3 uses
  %i.q = zext i8 %i.n to i32                      ; 2 uses
  %.not64.i.i = icmp sgt i8 %i.n, -1
  %i.r = icmp slt i8 %i.p, 0                      ; 2 uses
  %i.s = and i32 %i.q, 48
  %i.t = icmp ne i32 %i.s, 0
  %or.cond3.i.i = or i1 %.not64.i.i, %i.t
  br i1 %or.cond3.i.i, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = and i32 %i.q, 15
  switch i32 %i.u, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i [
    i32 8, label %bb.f
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %i.r, label %bb.g, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i

bb.f:                                             ; preds = %bb.d
  br i1 %i.r, label %bb.h, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i

bb.g:                                             ; preds = %bb.e
  %i.v = and i8 %i.p, 127                         ; 4 uses
  %i.w = icmp samesign ugt i8 %i.v, 125
  br i1 %i.w, label %bb.i, label %.thread.i.i.jt0

bb.h:                                             ; preds = %bb.f
  %i.x = and i8 %i.p, 127                         ; 4 uses
  %i.y = icmp samesign ugt i8 %i.x, 125
  br i1 %i.y, label %bb.i, label %.thread.i.i.jt2

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.z = phi i8 [ %i.v, %bb.g ], [ %i.x, %bb.h ]
  %.060.i.i24 = phi i32 [ 0, %bb.g ], [ 2, %bb.h ] ; 2 uses
  %i.aa = icmp eq i8 %i.z, 126                    ; 2 uses
  %.056.i.i = select i1 %i.aa, i32 2, i32 8       ; 3 uses
  %i.ab = ptrtoint ptr %i.o to i64
  %i.ac = sub i64 %i.i, %i.ab
  %3 = zext nneg i32 %.056.i.i to i64             ; 2 uses
  %.not.i.i = icmp slt i64 %i.ac, %3
  br i1 %.not.i.i, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt1, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.i
  %xtraiter = and i32 %.056.i.i, 2                ; 2 uses
  br i1 %i.aa, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i32 %.056.i.i, 8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.05786.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.at, %.preheader.i.i ]
  %.sroa.075.085.i.i = phi ptr [ %i.o, %.preheader.i.i.preheader.new ], [ %6, %.preheader.i.i ] ; 5 uses
  %niter = phi i32 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.075.085.i.i, i64 1
  %i.ae = load i8, ptr %.sroa.075.085.i.i, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl i64 %.05786.i.i, 16
  %i.ah = shl nuw nsw i64 %i.af, 8
  %i.ai = or disjoint i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.075.085.i.i, i64 2
  %i.ak = load i8, ptr %i.ad, align 1
  %i.al = zext i8 %i.ak to i64
  %i.am = or disjoint i64 %i.ai, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.075.085.i.i, i64 3
  %i.ao = load i8, ptr %i.aj, align 1
  %i.ap = zext i8 %i.ao to i64
  %4 = shl i64 %i.am, 16
  %i.aq = shl nuw nsw i64 %i.ap, 8
  %5 = or disjoint i64 %4, %i.aq                  ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.075.085.i.i, i64 4 ; 2 uses
  %i.ar = load i8, ptr %i.an, align 1
  %i.as = zext i8 %i.ar to i64
  %i.at = or disjoint i64 %5, %i.as               ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader.i.i, !llvm.loop !121

.unr-lcssa:                                       ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %.unr-lcssa, %.preheader.i.i.preheader
  %.05786.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.at, %.unr-lcssa ]
  %.sroa.075.085.i.i.epil.init = phi ptr [ %i.o, %.preheader.i.i.preheader ], [ %6, %.unr-lcssa ]
  %lcmp.mod35 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod35)
  br label %.preheader.i.i.epil

.preheader.i.i.epil:                              ; preds = %.preheader.i.i.epil, %.preheader.i.i.epil.preheader
  %.05786.i.i.epil = phi i64 [ %11, %.preheader.i.i.epil ], [ %.05786.i.i.epil.init, %.preheader.i.i.epil.preheader ]
  %.sroa.075.085.i.i.epil = phi ptr [ %8, %.preheader.i.i.epil ], [ %.sroa.075.085.i.i.epil.init, %.preheader.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader.i.i.epil ], [ 0, %.preheader.i.i.epil.preheader ]
  %7 = shl i64 %.05786.i.i.epil, 8                ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.075.085.i.i.epil, i64 1
  %9 = load i8, ptr %.sroa.075.085.i.i.epil, align 1
  %10 = zext i8 %9 to i64
  %11 = or disjoint i64 %7, %10                   ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.i.i.epil, !llvm.loop !122

.epilog-lcssa:                                    ; preds = %.preheader.i.i.epil, %.unr-lcssa
  %.lcssa32 = phi i64 [ %5, %.unr-lcssa ], [ %7, %.preheader.i.i.epil ]
  %.lcssa = phi i64 [ %i.at, %.unr-lcssa ], [ %11, %.preheader.i.i.epil ] ; 3 uses
  %i.au = getelementptr i8, ptr %i.g, i64 %3      ; 2 uses
  %12 = icmp slt i64 %.lcssa32, 0
  br i1 %12, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %.epilog-lcssa
  %i.av = add i64 %i.i, -4
  %i.aw = sub i64 %i.av, %i.j
  %i.ax = icmp ult i64 %i.aw, %.lcssa
  br i1 %i.ax, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt1, label %bb.j

.thread.i.i.jt0:                                  ; preds = %bb.g
  %i.ay = zext nneg i8 %i.v to i64                ; 2 uses
  %i.az = add i64 %i.i, -4
  %i.ba = sub i64 %i.az, %i.j
  %i.bb = icmp ult i64 %i.ba, %i.ay
  br i1 %i.bb, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i, label %bb.k

.thread.i.i.jt2:                                  ; preds = %bb.h
  %i.bc = zext nneg i8 %i.x to i64                ; 2 uses
  %i.bd = add i64 %i.i, -4
  %i.be = sub i64 %i.bd, %i.j
  %i.bf = icmp ult i64 %i.be, %i.bc
  br i1 %i.bf, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i, label %bb.l

bb.j:                                             ; preds = %.thread.i.i
  %i.bg = getelementptr i8, ptr %i.au, i64 6      ; 2 uses
  %.not89.i.i = icmp eq i64 %.lcssa, 0
  br i1 %.not89.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

bb.k:                                             ; preds = %.thread.i.i.jt0
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %.not89.i.i.jt0 = icmp eq i8 %i.v, 0
  br i1 %.not89.i.i.jt0, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt0, label %.lr.ph.i.i.preheader

bb.l:                                             ; preds = %.thread.i.i.jt2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %.not89.i.i.jt2 = icmp eq i8 %i.x, 0
  br i1 %.not89.i.i.jt2, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt2, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.k, %bb.l, %bb.j
  %i.bj = phi ptr [ %i.bh, %bb.k ], [ %i.bi, %bb.l ], [ %i.bg, %bb.j ] ; 2 uses
  %i.bk = phi ptr [ %i.g, %bb.k ], [ %i.g, %bb.l ], [ %i.au, %bb.j ]
  %.25984.i.i27 = phi i64 [ %i.ay, %bb.k ], [ %i.bc, %bb.l ], [ %.lcssa, %bb.j ] ; 2 uses
  %.060.i.i25 = phi i32 [ 0, %bb.k ], [ 2, %bb.l ], [ %.060.i.i24, %bb.j ]
  %i.bl = getelementptr i8, ptr %i.bk, i64 2
  br label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre93.i.i = load ptr, ptr %1, align 8
  %.pre94.i.i = ptrtoint ptr %.pre93.i.i to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.j
  %i.bm = phi ptr [ %i.bj, %._crit_edge.loopexit.i.i ], [ %i.bg, %bb.j ]
  %.25984.i.i28 = phi i64 [ %.25984.i.i27, %._crit_edge.loopexit.i.i ], [ 0, %bb.j ]
  %.060.i.i26 = phi i32 [ %.060.i.i25, %._crit_edge.loopexit.i.i ], [ %.060.i.i24, %bb.j ]
  %.pre-phi.i.i = phi i64 [ %.pre94.i.i, %._crit_edge.loopexit.i.i ], [ %i.j, %bb.j ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.25984.i.i28
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %.pre-phi.i.i
  %i.bq = trunc i64 %i.bp to i32
  br label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05488.i.i = phi i64 [ %i.bz, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.br = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.05488.i.i
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = and i64 %.05488.i.i, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = xor i8 %i.bw, %i.bt
  store i8 %i.bx, ptr %i.a, align 1
  %i.by = call ptr @_ZNSt6vectorIcSaIcEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKcS1_EEOc(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.br, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.bz = add nuw i64 %.05488.i.i, 1              ; 2 uses
  %exitcond92.not.i.i = icmp eq i64 %i.bz, %.25984.i.i27
  br i1 %exitcond92.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !123

_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i: ; preds = %.thread.i.i.jt0, %.thread.i.i.jt2, %._crit_edge.i.i
  %.1.i = phi i32 [ 0, %.thread.i.i.jt0 ], [ %i.bq, %._crit_edge.i.i ], [ 0, %.thread.i.i.jt2 ] ; 2 uses
  %.5.i.i = phi i32 [ 1, %.thread.i.i.jt0 ], [ %.060.i.i26, %._crit_edge.i.i ], [ 1, %.thread.i.i.jt2 ]
  %i.ca = and i8 %i.n, 64
  %.not30.i = icmp eq i8 %i.ca, 0
  br i1 %.not30.i, label %bb.m, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i

_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt0: ; preds = %bb.k
  %i.cb = and i8 %i.n, 64
  %.not30.i.jt0 = icmp eq i8 %i.cb, 0
  br i1 %.not30.i.jt0, label %bb.r, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i

_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt2: ; preds = %bb.l
  %i.cc = and i8 %i.n, 64
  %.not30.i.jt2 = icmp eq i8 %i.cc, 0
  br i1 %.not30.i.jt2, label %bb.n, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i

_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt1: ; preds = %.thread.i.i, %bb.i
  %i.cd = and i8 %i.n, 64
  %.not30.i.jt1 = icmp eq i8 %i.cd, 0
  br i1 %.not30.i.jt1, label %.thread.ithread-pre-split, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i

_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i: ; preds = %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt0, %bb.e, %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt2, %bb.f, %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt1, %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i, %.epilog-lcssa, %bb.d, %bb.c
  %i.ce = load ptr, ptr %0, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(57) %0) #22, !inline_history !124
  br label %.thread.ithread-pre-split

bb.m:                                             ; preds = %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i
  switch i32 %.5.i.i, label %.thread.ithread-pre-split [
    i32 2, label %bb.n
    i32 0, label %bb.r
  ]

bb.n:                                             ; preds = %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt2, %bb.m
  %.unpack.i = load i64, ptr %i.e, align 8        ; 3 uses
  %.unpack6.i = load i64, ptr %.elt5.i, align 8
  %i.ch = getelementptr inbounds i8, ptr %0, i64 %.unpack6.i ; 2 uses
  %i.ci = and i64 %.unpack.i, 1
  %.not.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = load ptr, ptr %i.ch, align 8
  %i.ck = getelementptr i8, ptr %i.cj, i64 %.unpack.i
  %i.cl = getelementptr i8, ptr %i.ck, i64 -1
  %i.cm = load ptr, ptr %i.cl, align 8, !nosanitize !32
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cn = inttoptr i64 %.unpack.i to ptr
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.co = phi ptr [ %i.cm, %bb.o ], [ %i.cn, %bb.p ]
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(57) %i.ch) #22, !inline_history !124
  br label %.thread.ithread-pre-split

bb.r:                                             ; preds = %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt0, %bb.m
  %.1.i23 = phi i32 [ %.1.i, %bb.m ], [ 6, %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt0 ]
  %i.cp = load ptr, ptr %i.d, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 248
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %2) #22, !inline_history !124
  br label %.thread.ithread-pre-split

.thread.ithread-pre-split:                        ; preds = %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i, %bb.m, %bb.q, %bb.r, %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt1
  %.08.i.ph = phi i32 [ 0, %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt1 ], [ %.1.i23, %bb.r ], [ 0, %bb.q ], [ %.1.i, %bb.m ], [ 0, %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i ]
  %.pr = load ptr, ptr %2, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.ithread-pre-split, %bb.b
  %i.cv = phi ptr [ %.pr, %.thread.ithread-pre-split ], [ null, %bb.b ] ; 3 uses
  %.08.i = phi i32 [ %.08.i.ph, %.thread.ithread-pre-split ], [ 0, %bb.b ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i, label %_ZN4node9inspector12_GLOBAL__N_19WsHandler13ParseWsFramesERKSt6vectorIcSaIcEE.exit, label %bb.s

bb.s:                                             ; preds = %.thread.i
  %i.cw = load ptr, ptr %i.f, align 8
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.cz) #25
  br label %_ZN4node9inspector12_GLOBAL__N_19WsHandler13ParseWsFramesERKSt6vectorIcSaIcEE.exit

_ZN4node9inspector12_GLOBAL__N_19WsHandler13ParseWsFramesERKSt6vectorIcSaIcEE.exit: ; preds = %.thread.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.da = icmp sgt i32 %.08.i, 0
  br i1 %i.da, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZN4node9inspector12_GLOBAL__N_19WsHandler13ParseWsFramesERKSt6vectorIcSaIcEE.exit
  %i.db = zext nneg i32 %.08.i to i64
  %i.dc = load ptr, ptr %1, align 8               ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.db ; 4 uses
  %i.de = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.df = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dg = icmp eq ptr %i.dd, %i.df
  br i1 %i.dg, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dh, %i.de                    ; 3 uses
  %i.dj = icmp sgt i64 %i.di, 1
  br i1 %i.dj, label %bb.v, label %bb.w, !prof !30

bb.v:                                             ; preds = %bb.u
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dc, ptr nonnull align 1 %i.dd, i64 %i.di, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.dk = icmp eq i64 %i.di, 1
  br i1 %i.dk, label %bb.x, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.dl = load i8, ptr %i.dd, align 1
  store i8 %i.dl, ptr %i.dc, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  %i.dm = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = sub i64 %i.dn, %i.de
  %i.dp = getelementptr inbounds i8, ptr %i.dc, i64 %i.do ; 3 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.dm, %i.dp
  br i1 %.not.i.i.i.i7, label %_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i
  store ptr %i.dp, ptr %i.b, align 8
  br label %_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit

_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i, %bb.y
  %i.dq = phi ptr [ %i.dm, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i ], [ %i.dp, %bb.y ] ; 2 uses
  %i.dr = load ptr, ptr %1, align 8               ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.dq
  br i1 %i.ds, label %.critedge, label %bb.b, !llvm.loop !125

.critedge:                                        ; preds = %_ZN4node9inspector12_GLOBAL__N_19WsHandler13ParseWsFramesERKSt6vectorIcSaIcEE.exit, %_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler5OnEofEv(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #0 align 2 !guid !128 {
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
  %i.d = load i8, ptr %i.c, align 8, !range !31, !noundef !32
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
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler5WriteESt6vectorIcSaIcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 !guid !131 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %2 = alloca %"class.std::vector", align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #24, !noalias !132 ; 7 uses
  store i8 -127, ptr %i.d, align 1, !noalias !132
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !132
  %i.g = load ptr, ptr %1, align 8, !noalias !132
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 6 uses
  %i.k = icmp ult i64 %i.j, 126
  %i.l = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #24, !noalias !132 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 3 uses
  br i1 %i.k, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i27.i, label %bb.b

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i27.i: ; preds = %bb.a
  %i.n = trunc nuw nsw i64 %i.j to i8
  store i8 %i.n, ptr %i.m, align 1, !noalias !132
  %i.o = load i8, ptr %i.d, align 1, !noalias !132
  store i8 %i.o, ptr %i.l, align 1, !noalias !132
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 3 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1) #25, !noalias !132
  store ptr %i.l, ptr %2, align 8, !alias.scope !132
  store ptr %i.p, ptr %i.b, align 8, !alias.scope !132
  store ptr %i.p, ptr %i.c, align 8, !alias.scope !132
  br label %_ZN4node9inspector12_GLOBAL__N_119encode_frame_hybi17ERKSt6vectorIcSaIcEE.exit

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %i.j, 65536
  br i1 %i.q, label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit44.i, label %bb.c

_ZNSt6vectorIcSaIcEE9push_backEOc.exit44.i:       ; preds = %bb.b
  store i8 126, ptr %i.m, align 1, !noalias !132
  %i.r = load i8, ptr %i.d, align 1, !noalias !132
  store i8 %i.r, ptr %i.l, align 1, !noalias !132
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1) #25, !noalias !132
  %i.s = lshr i64 %i.j, 8
  %i.t = trunc nuw i64 %i.s to i8
  %i.u = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #24, !noalias !132 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i8 %i.t, ptr %i.v, align 1, !noalias !132
  %i.w = load i16, ptr %i.l, align 1, !noalias !132
  store i16 %i.w, ptr %i.u, align 1, !noalias !132
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 2) #25, !noalias !132
  store ptr %i.u, ptr %2, align 8, !alias.scope !132
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 3 uses
  store ptr %i.y, ptr %i.c, align 8, !alias.scope !132
  %i.z = trunc i64 %i.j to i8
  store i8 %i.z, ptr %i.x, align 1, !noalias !132
  store ptr %i.y, ptr %i.b, align 8, !alias.scope !132
  br label %_ZN4node9inspector12_GLOBAL__N_119encode_frame_hybi17ERKSt6vectorIcSaIcEE.exit

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 3 uses
  store i8 127, ptr %i.m, align 1, !noalias !132
  %i.ab = load i8, ptr %i.d, align 1, !noalias !132
  store i8 %i.ab, ptr %i.l, align 1, !noalias !132
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1) #25, !noalias !132
  store ptr %i.l, ptr %2, align 8, !alias.scope !132
  store ptr %i.aa, ptr %i.b, align 8, !alias.scope !132
  store ptr %i.aa, ptr %i.c, align 8, !alias.scope !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !132
  %i.ac = tail call i64 @llvm.bswap.i64(i64 %i.j)
  store i64 %i.ac, ptr %i.a, align 8, !noalias !132
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPcEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !132
  %.pre.i = load ptr, ptr %i.b, align 8, !alias.scope !132
  %.pre78.i = load ptr, ptr %2, align 8, !alias.scope !132
  br label %_ZN4node9inspector12_GLOBAL__N_119encode_frame_hybi17ERKSt6vectorIcSaIcEE.exit

_ZN4node9inspector12_GLOBAL__N_119encode_frame_hybi17ERKSt6vectorIcSaIcEE.exit: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i27.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit44.i, %bb.c
  %i.ae = phi ptr [ %.pre78.i, %bb.c ], [ %i.u, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit44.i ], [ %i.l, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i27.i ] ; 2 uses
  %i.af = phi ptr [ %.pre.i, %bb.c ], [ %i.y, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit44.i ], [ %i.p, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i27.i ]
  %i.ag = load ptr, ptr %1, align 8, !noalias !132
  %i.ah = load ptr, ptr %i.e, align 8, !noalias !132
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.ae to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 %i.ak
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEvNS4_IPcS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.al, ptr %i.ag, ptr %i.ah)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef range(i32 0, 2) i32 @_ZN4node9inspector9TcpHolder8WriteRawERKSt6vectorIcSaIcEEPFvP10uv_write_siE(ptr noundef nonnull align 8 dereferenceable(288) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, ptr noundef nonnull @_ZN4node9inspector12_GLOBAL__N_112WriteRequest7CleanupEP10uv_write_si) ; 0 uses
  %i.ap = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4node9inspector12_GLOBAL__N_119encode_frame_hybi17ERKSt6vectorIcSaIcEE.exit
  %i.aq = load ptr, ptr %i.c, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #25
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZN4node9inspector12_GLOBAL__N_119encode_frame_hybi17ERKSt6vectorIcSaIcEE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler15CancelHandshakeEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 align 2 !guid !133 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler8ShutdownEv(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #0 align 2 !guid !134 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
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
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = call noundef range(i32 0, 2) i32 @_ZN4node9inspector9TcpHolder8WriteRawERKSt6vectorIcSaIcEEPFvP10uv_write_siE(ptr noundef nonnull align 8 dereferenceable(288) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noundef nonnull @_ZN4node9inspector12_GLOBAL__N_19WsHandler19OnCloseFrameWrittenEP10uv_write_si) ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(57) %0) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(57) initializes((0, 8)) %0) unnamed_addr #13 align 2 !guid !135 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4node9inspector15ProtocolHandlerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4node9inspector15ProtocolHandlerD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @uv_close(ptr noundef nonnull %i.b, ptr noundef nonnull @_ZN4node9inspector9TcpHolder8OnClosedEP11uv_handle_s) #22, !inline_history !34
  br label %_ZN4node9inspector15ProtocolHandlerD2Ev.exit

_ZN4node9inspector15ProtocolHandlerD2Ev.exit:     ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler19OnCloseFrameWrittenEP10uv_write_si(ptr noundef %0, i32 %1) #0 align 2 !guid !136 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, -32
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.e, align 8             ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i, label %_ZN4node9inspector12_GLOBAL__N_112WriteRequestD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 24
  %.val9 = load ptr, ptr %i.f, align 8
  %i.g = ptrtoint ptr %.val9 to i64
  %i.h = ptrtoint ptr %.val to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.i) #25
  br label %_ZN4node9inspector12_GLOBAL__N_112WriteRequestD2Ev.exit

_ZN4node9inspector12_GLOBAL__N_112WriteRequestD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 240) #25
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.unpack = load i64, ptr %i.j, align 8          ; 3 uses
  %.elt7 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.unpack8 = load i64, ptr %.elt7, align 8
  %i.k = getelementptr inbounds i8, ptr %i.d, i64 %.unpack8 ; 2 uses
  %i.l = and i64 %.unpack, 1
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4node9inspector12_GLOBAL__N_112WriteRequestD2Ev.exit
  %i.m = load ptr, ptr %i.k, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 %.unpack
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  %i.p = load ptr, ptr %i.o, align 8, !nosanitize !32
  br label %bb.e

bb.d:                                             ; preds = %_ZN4node9inspector12_GLOBAL__N_112WriteRequestD2Ev.exit
  %i.q = inttoptr i64 %.unpack to ptr
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %i.p, %bb.c ], [ %i.q, %bb.d ]
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(57) %i.k) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIcSaIcEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKcS1_EEOc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 !guid !137 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %2, align 1
  store i8 %i.j, ptr %i.f, align 1
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.l, ptr %i.e, align 8
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -1
  %i.o = load i8, ptr %i.n, align 1
  store i8 %i.o, ptr %i.f, align 1
  %i.p = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.q, ptr %i.e, align 8
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -1 ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.b                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %bb.f, !prof !30

bb.e:                                             ; preds = %bb.d
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds i8, ptr %i.p, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.m, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIcSaIcEE13_M_insert_auxIcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.x = icmp eq i64 %i.t, 1
  br i1 %i.x, label %bb.g, label %_ZNSt6vectorIcSaIcEE13_M_insert_auxIcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEOT_.exit

bb.g:                                             ; preds = %bb.f
  %i.y = load i8, ptr %i.m, align 1
  store i8 %i.y, ptr %i.r, align 1
  br label %_ZNSt6vectorIcSaIcEE13_M_insert_auxIcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEOT_.exit

_ZNSt6vectorIcSaIcEE13_M_insert_auxIcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEOT_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.z = load i8, ptr %2, align 1
  store i8 %i.z, ptr %i.m, align 1
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.ab = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.ac = sub i64 %i.ab, %i.c                     ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775807
  br i1 %i.ad, label %bb.i, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #23
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.h
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ae = add i64 %.sroa.speculated.i.i, %i.ac    ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ac
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 9223372036854775807)
  %i.ah = select i1 %i.af, i64 9223372036854775807, i64 %i.ag ; 3 uses
  %.not.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #24 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.d ; 2 uses
  %i.ak = load i8, ptr %2, align 1
  store i8 %i.ak, ptr %i.aj, align 1
  %i.al = icmp sgt i64 %i.d, 0
  br i1 %i.al, label %bb.j, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i

bb.j:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr align 1 %i.a, i64 %i.d, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i: ; preds = %bb.j, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  %i.an = sub i64 %i.ab, %i.b                     ; 3 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %bb.k, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i

bb.k:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.aa, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i: ; preds = %bb.k, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  %.not.i17.i = icmp eq ptr %i.a, null
  br i1 %.not.i17.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i
  %i.ap = load ptr, ptr %i.g, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.ar) #25
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit: ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i, %bb.l
  %i.as = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  store ptr %i.ai, ptr %0, align 8
  store ptr %i.as, ptr %i.e, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  store ptr %i.at, ptr %i.g, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %_ZNSt6vectorIcSaIcEE13_M_insert_auxIcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEOT_.exit, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit
  %i.au = load ptr, ptr %0, align 8
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.d
  ret ptr %i.av
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIcSaIcEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEvNS4_IPcS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 !guid !138 {
bb.a:
  %i.a = icmp eq ptr %2, %3
  br i1 %i.a, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 8 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.d
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 10 uses
  %i.n = icmp ugt i64 %i.m, %i.d
  br i1 %i.n, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.o = sub i64 0, %i.d
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %i.o ; 3 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = icmp sgt i64 %i.d, 1                     ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.f, !prof !30

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.p, i64 %i.d, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.s = icmp eq i64 %i.d, 1
  br i1 %i.s, label %bb.g, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.t = load i8, ptr %i.p, align 1
  store i8 %i.t, ptr %i.h, align 1
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.u = load ptr, ptr %i.g, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.d
  store ptr %i.v, ptr %i.g, align 8
  %i.w = sub i64 %i.q, %i.l                       ; 4 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !30

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds i8, ptr %i.h, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %1, i64 %i.w, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.w, 1
  br i1 %i.aa, label %bb.j, label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.h, i64 -1
  %i.ac = load i8, ptr %1, align 1
  store i8 %i.ac, ptr %i.ab, align 1
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.r, label %bb.k, label %bb.l, !prof !30

bb.k:                                             ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.d, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  %i.ad = icmp eq i64 %i.d, 1
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i8, ptr %2, align 1
  store i8 %i.ae, ptr %1, align 1
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.af = icmp eq i64 %i.m, 1
  %i.ag = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.b, %i.ah                     ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.n, label %bb.o, !prof !30

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.ag, i64 %i.ai, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ak = icmp eq i64 %i.ai, 1
  br i1 %i.ak, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.al = load i8, ptr %i.ag, align 1
  store i8 %i.al, ptr %i.h, align 1
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.am = sub nuw i64 %i.d, %i.m
  %i.an = load ptr, ptr %i.g, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am ; 3 uses
  store ptr %i.ao, ptr %i.g, align 8
  %i.ap = icmp sgt i64 %i.m, 1
  br i1 %i.ap, label %bb.q, label %bb.r, !prof !30

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %1, i64 %i.m, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit43

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit
  br i1 %i.af, label %bb.s, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit43

bb.s:                                             ; preds = %bb.r
  %i.aq = load i8, ptr %1, align 1
  store i8 %i.aq, ptr %i.ao, align 1
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit43

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit43: ; preds = %bb.q, %bb.r, %bb.s
  %i.ar = load ptr, ptr %i.g, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.m
  store ptr %i.as, ptr %i.g, align 8
  %i.at = icmp sgt i64 %i.m, 1
  br i1 %i.at, label %bb.t, label %bb.u, !prof !30

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit43
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit43
  %i.au = icmp eq i64 %i.m, 1
  br i1 %i.au, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.v:                                             ; preds = %bb.u
  %i.av = load i8, ptr %2, align 1
  store i8 %i.av, ptr %1, align 1
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.w:                                             ; preds = %bb.b
  %i.aw = load ptr, ptr %0, align 8               ; 5 uses
  %i.ax = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.ay = sub i64 %i.j, %i.ax                     ; 4 uses
  %i.az = sub i64 9223372036854775807, %i.ay
  %i.ba = icmp ult i64 %i.az, %i.d
  br i1 %i.ba, label %bb.x, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 %i.d)
  %i.bb = add i64 %.sroa.speculated.i, %i.ay      ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ay
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 9223372036854775807)
  %i.be = select i1 %i.bc, i64 9223372036854775807, i64 %i.bd ; 3 uses
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %i.bf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #24
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bg = phi ptr [ %i.bf, %bb.y ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bh = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bi = sub i64 %i.bh, %i.ax                    ; 4 uses
  %i.bj = icmp sgt i64 %i.bi, 1
  br i1 %i.bj, label %bb.z, label %bb.aa, !prof !30

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.aw, i64 %i.bi, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  %i.bk = icmp eq i64 %i.bi, 1
  br i1 %i.bk, label %bb.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bl = load i8, ptr %i.aw, align 1
  store i8 %i.bl, ptr %i.bg, align 1
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bm = getelementptr inbounds i8, ptr %i.bg, i64 %i.bi ; 3 uses
  %i.bn = icmp sgt i64 %i.d, 1
  br i1 %i.bn, label %bb.ac, label %bb.ad, !prof !30

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %2, i64 %i.d, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit45

bb.ad:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.bo = icmp eq i64 %i.d, 1
  br i1 %i.bo, label %bb.ae, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit45

bb.ae:                                            ; preds = %bb.ad
  %i.bp = load i8, ptr %2, align 1
  store i8 %i.bp, ptr %i.bm, align 1
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit45

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit45: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %i.d ; 3 uses
  %i.br = sub i64 %i.j, %i.bh                     ; 4 uses
  %i.bs = icmp sgt i64 %i.br, 1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !30

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit45
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %1, i64 %i.br, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit46

bb.ag:                                            ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit45
  %i.bt = icmp eq i64 %i.br, 1
  br i1 %i.bt, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit46

bb.ah:                                            ; preds = %bb.ag
  %i.bu = load i8, ptr %1, align 1
  store i8 %i.bu, ptr %i.bq, align 1
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit46

_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit46: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bv = getelementptr inbounds i8, ptr %i.bq, i64 %i.br
  %.not.i47 = icmp eq ptr %i.aw, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit46
  %i.bw = load ptr, ptr %i.e, align 8
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bx, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.by) #25
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit46, %bb.ai
  store ptr %i.bg, ptr %0, align 8
  store ptr %i.bv, ptr %i.g, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store ptr %i.bz, ptr %i.e, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, %bb.a
  ret void
}

declare i32 @llhttp_execute(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @llhttp_resume_after_upgrade(ptr noundef) local_unnamed_addr #1

declare i32 @uv_inet_pton(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_111HttpHandler25ThenCloseAndReportFailureEP10uv_write_si(ptr noundef %0, i32 %1) #0 align 2 !guid !139 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, -32                        ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZN4node9inspector12_GLOBAL__N_112WriteRequest7CleanupEP10uv_write_si.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %.val.i = load ptr, ptr %i.f, align 8           ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN4node9inspector12_GLOBAL__N_112WriteRequestD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.c, i64 24
  %.val1.i = load ptr, ptr %i.g, align 8
  %i.h = ptrtoint ptr %.val1.i to i64
  %i.i = ptrtoint ptr %.val.i to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.j) #25
  br label %_ZN4node9inspector12_GLOBAL__N_112WriteRequestD2Ev.exit.i

_ZN4node9inspector12_GLOBAL__N_112WriteRequestD2Ev.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 240) #25
  br label %_ZN4node9inspector12_GLOBAL__N_112WriteRequest7CleanupEP10uv_write_si.exit

_ZN4node9inspector12_GLOBAL__N_112WriteRequest7CleanupEP10uv_write_si.exit: ; preds = %bb.a, %_ZN4node9inspector12_GLOBAL__N_112WriteRequestD2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  store ptr null, ptr %i.l, align 8
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZN4node9inspector15InspectorSocket14SwitchProtocolEPNS0_15ProtocolHandlerE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4node9inspector12_GLOBAL__N_112WriteRequest7CleanupEP10uv_write_si.exit
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(24) %i.m) #22, !inline_history !1
  br label %_ZN4node9inspector15InspectorSocket14SwitchProtocolEPNS0_15ProtocolHandlerE.exit

_ZN4node9inspector15InspectorSocket14SwitchProtocolEPNS0_15ProtocolHandlerE.exit: ; preds = %_ZN4node9inspector12_GLOBAL__N_112WriteRequest7CleanupEP10uv_write_si.exit, %bb.d
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #21

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin nounwind allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { cold nounwind }

!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{null, null, null}
!1 = distinct !{ptr @_ZN4node9inspector15InspectorSocket14SwitchProtocolEPNS0_15ProtocolHandlerE, null, null, null, ptr @_ZN4node9inspector15InspectorSocket8ShutdownEPNS0_15ProtocolHandlerE}
!2 = distinct !{!2, !33}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{i64 -1404533279865040624}
!9 = !{i64 4925150368149295467}
!10 = !{i64 -6931358333084573691}
!11 = !{i64 3316741647558743158}
!12 = !{i64 -4349247748842761981}
!13 = !{i64 5504090837059366225}
!14 = !{i64 7526127732837688995}
!15 = !{i64 -3738740938427085773}
!16 = !{i64 -6341132526968798710}
!17 = !{i64 -3219953455550850430}
!18 = !{i64 -5664675498808830119}
!19 = !{i64 -5977176234699217726}
!20 = !{i64 -4725200577254806020}
!21 = !{i64 -3610971881287245612}
!22 = !{i64 3062624483220662727}
!23 = !{i64 -7477624083840725667}
!24 = !{i64 8012914003368597672}
!25 = !{i64 4211744876971588004}
!26 = !{i64 -3660046480730921020}
!27 = !{i64 880794167705930355}
!28 = !{i64 -2371062854926971381}
!29 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{ptr @_ZN4node9inspector15ProtocolHandlerD2Ev}
!35 = !{i64 -855186460170827105}
!36 = !{i64 5864821557281139382}
!37 = !{i64 3951469666726708534}
!38 = !{i64 -1179728588715158053}
!39 = !{i64 -6729509448761096731}
!40 = !{i64 8544236733904773861}
!41 = !{i64 -8043342119714755878}
!42 = !{i64 -6746315999219721783}
!43 = !{i64 -5771024542230273576}
!44 = !{i64 -1235354382264911121}
!45 = !{i64 -3608407141074697058}
!46 = !{i64 1858923189643052583}
!47 = !{i64 4562927249008109876}
!48 = !{i64 -2165016898720474956}
!49 = distinct !{null, null, ptr @_ZN4node9inspector15InspectorSocket8ShutdownEPNS0_15ProtocolHandlerE}
!50 = !{i64 -2670442452355578570}
!51 = !{i64 2180083203531518217}
!52 = distinct !{null, null}
!53 = !{i64 -6922717930731188023}
!54 = distinct !{null, null, null, ptr @_ZN4node9inspector15InspectorSocket8ShutdownEPNS0_15ProtocolHandlerE}
!55 = !{i64 4914206018494225674}
!56 = !{i64 7174347811592614889}
!57 = !{i64 -294596050538977384}
!58 = !{i64 -1018356112933716292}
!59 = !{i64 3893892453347280802}
!60 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!61 = !{i64 6469333634275747624}
!62 = !{i64 1588272326212680591}
!63 = !{i64 8025736925520667340}
!64 = !{i64 6960776231403323863}
!65 = !{i64 2866440836454194294}
!66 = distinct !{!66, i1 true, !"_ZSt19__relocate_object_aIN4node9inspector12_GLOBAL__N_19HttpEventES3_SaIS3_EEvPT_PT0_RT1_"}
!67 = distinct !{!67, !66, !"_ZSt19__relocate_object_aIN4node9inspector12_GLOBAL__N_19HttpEventES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!68 = distinct !{!68, !66, !"_ZSt19__relocate_object_aIN4node9inspector12_GLOBAL__N_19HttpEventES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!69 = distinct !{!69, !33}
!70 = !{i64 7817599476740410347}
!71 = !{!67}
!72 = !{!68}
!73 = !{!67, !68}
!74 = !{i64 -6243033420538760015}
!75 = distinct !{!75, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!76 = distinct !{!76, !75, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!77 = distinct !{!77, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!78 = distinct !{!78, !77, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!79 = !{i64 1762155243869805956}
!80 = !{!76}
!81 = !{!78}
!82 = distinct !{!82, i1 true, !"_ZN4node9inspector12_GLOBAL__N_18TrimPortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!83 = distinct !{!83, !82, !"_ZN4node9inspector12_GLOBAL__N_18TrimPortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!84 = distinct !{!84, !33}
!85 = distinct !{!85, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!86 = distinct !{!86, !85, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!87 = distinct !{!87, !33}
!88 = distinct !{null, null, null, null, null}
!89 = distinct !{!89, !33}
!90 = !{i64 -8584517825480445453}
!91 = !{!83}
!92 = !{!86, !83}
!93 = !{i64 -8890436950949485927}
!94 = !{i64 5453205726828048018}
!95 = !{i64 3260384599004402434}
!96 = !{i64 -6237607281572011361}
!97 = !{i64 8602995523847805720}
!98 = !{i64 7412019879999734319}
!99 = !{i64 -3904468634405276655}
!100 = distinct !{!100, !33}
!101 = !{i64 -4120857031734393378}
!102 = !{i64 -3115242607004390806}
!103 = !{i64 -2540140164256545025}
!104 = distinct !{!104, !33}
!105 = !{i64 5413930133054112455}
!106 = distinct !{null, null, null, null}
!107 = distinct !{!107, !33}
!108 = !{i64 -6402124769558170431}
!109 = !{i64 -7203896852411189745}
!110 = !{i64 3280872627081213428}
!111 = !{i64 -856022040860986649}
!112 = distinct !{!112, !33}
!113 = !{i64 7982447227491492869}
!114 = !{i64 5197448460765198405}
!115 = !{i64 -1174630241674881092}
!116 = !{i64 -416204639662039794}
!117 = !{i64 2592811439258110266}
!118 = !{i64 7432727362602793817}
!119 = !{i64 3898354734008791561}
!120 = !{i64 4416861383638416357}
!121 = distinct !{!121, !33}
!122 = distinct !{!122, !127}
!123 = distinct !{!123, !33}
!124 = distinct !{null}
!125 = distinct !{!125, !33}
!126 = !{i64 -7967483134884386181}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = !{i64 -9185721435864208451}
!129 = distinct !{!129, i1 true, !"_ZN4node9inspector12_GLOBAL__N_119encode_frame_hybi17ERKSt6vectorIcSaIcEE"}
!130 = distinct !{!130, !129, !"_ZN4node9inspector12_GLOBAL__N_119encode_frame_hybi17ERKSt6vectorIcSaIcEE: argument 0"}
!131 = !{i64 -2353386944647870502}
!132 = !{!130}
!133 = !{i64 8659554832721966491}
!134 = !{i64 8476132410409099974}
!135 = !{i64 2585597018778690241}
!136 = !{i64 7709292702431422725}
!137 = !{i64 2792157490323247711}
!138 = !{i64 -210776782906816627}
!139 = !{i64 -1505463389456802173}
end_hunk_0
