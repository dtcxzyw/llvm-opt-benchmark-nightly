Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/eccms?download=true
inline.NumInlined: 2317
inline.NumDeleted: 957
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi:bb.a
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !28
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !28
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !27

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !28
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !28
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.dc) #24
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !24
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !23
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !26
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZN2cv4gemmERKNS_11_InputArrayES2_dS2_dRKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, ptr noundef nonnull align 8 dereferenceable(24), double noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_L16prepareGradientsERKNS0_3MatEE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #15 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !74    ; 5 uses
  %.val2 = load i32, ptr %1, align 4, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4, !tbaa !70
  %i.b = load ptr, ptr %.val, align 8, !tbaa !237, !nonnull !136, !align !137
  %i.c = load i32, ptr %i.b, align 4, !tbaa !28   ; 4 uses
  %i.d = mul nsw i32 %i.c, %.val2
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !238, !nonnull !136, !align !137
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28   ; 2 uses
  %i.h = sdiv i32 %i.d, %i.g                      ; 2 uses
  %i.i = mul nsw i32 %i.c, %.val3
  %i.j = sdiv i32 %i.i, %i.g                      ; 2 uses
  %i.k = icmp slt i32 %i.h, %i.j
  br i1 %i.k, label %.lr.ph21.i.i.i, label %"_ZSt10__invoke_rIvRZN2cvL16prepareGradientsERKNS0_3MatEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

.lr.ph21.i.i.i:                                   ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !239, !nonnull !136, !align !138 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.q = load i64, ptr %i.p, align 8, !tbaa !83   ; 6 uses
  %i.r = add nsw i32 %i.c, -1                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !240, !nonnull !136, !align !137
  %i.u = load i32, ptr %i.t, align 4, !tbaa !28   ; 5 uses
  %i.v = icmp sgt i32 %i.u, 0
  %i.w = add nsw i32 %i.u, -1                     ; 2 uses
  br i1 %i.v, label %.lr.ph21.split.i.i.i, label %"_ZSt10__invoke_rIvRZN2cvL16prepareGradientsERKNS0_3MatEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

.lr.ph21.split.i.i.i:                             ; preds = %.lr.ph21.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !136, !align !138
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !67   ; 3 uses
  %i.aa = zext nneg i32 %i.u to i64               ; 2 uses
  %i.ab = sext i32 %i.h to i64                    ; 2 uses
  %i.ac = sext i32 %i.c to i64                    ; 2 uses
  %wide.trip.count27.i.i.i = sext i32 %i.j to i64 ; 2 uses
  %.not.i.i = icmp eq i32 %i.w, 0
  %i.ad = select i1 %.not.i.i, i64 0, i64 2
  %exitcond.peel.not.i.i.i = icmp eq i32 %i.u, 1
  br i1 %exitcond.peel.not.i.i.i, label %.lr.ph.i.us.i.i, label %.lr.ph.i.i.i

.lr.ph.i.us.i.i:                                  ; preds = %.lr.ph21.split.i.i.i, %.lr.ph.i.us.i.i
  %indvars.iv24.i.us.i.i = phi i64 [ %indvars.iv.next25.i.us.i.i, %.lr.ph.i.us.i.i ], [ %i.ab, %.lr.ph21.split.i.i.i ] ; 4 uses
  %i.ae = mul i64 %indvars.iv24.i.us.i.i, %i.q
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ae ; 2 uses
  %i.ag = trunc nsw i64 %indvars.iv24.i.us.i.i to i32 ; 2 uses
  %i.ah = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 1)
  %.sroa.speculated14.i.us.i.i = add nsw i32 %i.ah, -1
  %i.ai = zext nneg i32 %.sroa.speculated14.i.us.i.i to i64
  %i.aj = mul i64 %i.q, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aj
  %indvars.iv.next25.i.us.i.i = add nsw i64 %indvars.iv24.i.us.i.i, 1 ; 4 uses
  %i.al = trunc nsw i64 %indvars.iv.next25.i.us.i.i to i32
  %.sroa.speculated9.i.us.i.i = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.al)
  %i.am = sext i32 %.sroa.speculated9.i.us.i.i to i64
  %i.an = mul i64 %i.q, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.an
  %i.ap = icmp sgt i64 %indvars.iv24.i.us.i.i, 0
  %i.aq = icmp slt i64 %indvars.iv.next25.i.us.i.i, %i.ac
  %i.ar = and i1 %i.ap, %i.aq
  %i.as = select i1 %i.ar, float 5.000000e-01, float 2.500000e-01
  %i.at = load float, ptr %i.af, align 4, !tbaa !140 ; 3 uses
  %i.au = shl i32 %i.ag, 2
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.av ; 4 uses
  store float %i.at, ptr %i.aw, align 4, !tbaa !140
  %i.ax = fsub float %i.at, %i.at
  %i.ay = fmul float %i.ax, 2.500000e-01
  %i.az = getelementptr i8, ptr %i.aw, i64 4
  store float %i.ay, ptr %i.az, align 4, !tbaa !140
  %i.ba = load float, ptr %i.ao, align 4, !tbaa !140
  %i.bb = load float, ptr %i.ak, align 4, !tbaa !140
  %i.bc = fsub float %i.ba, %i.bb
  %i.bd = fmul float %i.as, %i.bc
  %i.be = getelementptr i8, ptr %i.aw, i64 8
  store float %i.bd, ptr %i.be, align 4, !tbaa !140
  %i.bf = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !140
  %i.bh = getelementptr i8, ptr %i.aw, i64 12
  store float %i.bg, ptr %i.bh, align 4, !tbaa !140
  %exitcond28.not.i.us.i.i = icmp eq i64 %indvars.iv.next25.i.us.i.i, %wide.trip.count27.i.i.i
  br i1 %exitcond28.not.i.us.i.i, label %"_ZSt10__invoke_rIvRZN2cvL16prepareGradientsERKNS0_3MatEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", label %.lr.ph.i.us.i.i, !llvm.loop !234

..loopexit_crit_edge.i.loopexit.i.i:              ; preds = %.peel.next.i.i.i
  %exitcond28.not.i.i.i = icmp eq i64 %indvars.iv.next25.i.i.i, %wide.trip.count27.i.i.i
  br i1 %exitcond28.not.i.i.i, label %"_ZSt10__invoke_rIvRZN2cvL16prepareGradientsERKNS0_3MatEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", label %.lr.ph.i.i.i, !llvm.loop !234

.lr.ph.i.i.i:                                     ; preds = %.lr.ph21.split.i.i.i, %..loopexit_crit_edge.i.loopexit.i.i
  %indvars.iv24.i.i.i = phi i64 [ %indvars.iv.next25.i.i.i, %..loopexit_crit_edge.i.loopexit.i.i ], [ %i.ab, %.lr.ph21.split.i.i.i ] ; 4 uses
  %i.bi = mul i64 %indvars.iv24.i.i.i, %i.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bi ; 6 uses
  %i.bk = trunc nsw i64 %indvars.iv24.i.i.i to i32 ; 2 uses
  %i.bl = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 1)
  %.sroa.speculated14.i.i.i = add nsw i32 %i.bl, -1
  %i.bm = zext nneg i32 %.sroa.speculated14.i.i.i to i64
  %i.bn = mul i64 %i.q, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bn ; 2 uses
  %indvars.iv.next25.i.i.i = add nsw i64 %indvars.iv24.i.i.i, 1 ; 4 uses
  %i.bp = trunc nsw i64 %indvars.iv.next25.i.i.i to i32
  %.sroa.speculated9.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.bp)
  %i.bq = sext i32 %.sroa.speculated9.i.i.i to i64
  %i.br = mul i64 %i.q, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.br ; 2 uses
  %i.bt = icmp sgt i64 %indvars.iv24.i.i.i, 0
  %i.bu = icmp slt i64 %indvars.iv.next25.i.i.i, %i.ac
  %i.bv = and i1 %i.bt, %i.bu
  %i.bw = select i1 %i.bv, float 5.000000e-01, float 2.500000e-01 ; 2 uses
  %i.bx = load float, ptr %i.bj, align 4, !tbaa !140 ; 2 uses
  %i.by = mul i32 %i.u, %i.bk                     ; 2 uses
  %i.bz = shl i32 %i.by, 2
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ca ; 4 uses
  store float %i.bx, ptr %i.cb, align 4, !tbaa !140
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.ad
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !140
  %i.ce = fsub float %i.cd, %i.bx
  %i.cf = fmul float %i.ce, 2.500000e-01
  %i.cg = getelementptr i8, ptr %i.cb, i64 4
  store float %i.cf, ptr %i.cg, align 4, !tbaa !140
  %i.ch = load float, ptr %i.bs, align 4, !tbaa !140
  %i.ci = load float, ptr %i.bo, align 4, !tbaa !140
  %i.cj = fsub float %i.ch, %i.ci
  %i.ck = fmul float %i.bw, %i.cj
  %i.cl = getelementptr i8, ptr %i.cb, i64 8
  store float %i.ck, ptr %i.cl, align 4, !tbaa !140
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !140
  %i.co = getelementptr i8, ptr %i.cb, i64 12
  store float %i.cn, ptr %i.co, align 4, !tbaa !140
  br label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %.peel.next.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.peel.next.i.i.i ], [ 1, %.lr.ph.i.i.i ] ; 3 uses
  %i.cp = trunc nuw nsw i64 %indvars.iv.i.i.i to i32 ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 4 uses
  %i.cq = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %i.cq)
  %.not.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.aa
  %i.cr = select i1 %.not.i.i.i, float 5.000000e-01, float 2.500000e-01
  %i.cs = shl nuw nsw i64 %indvars.iv.i.i.i, 1    ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.cs ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !140
  %i.cv = add i32 %i.by, %i.cp
  %i.cw = shl i32 %i.cv, 2
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.cx ; 4 uses
  store float %i.cu, ptr %i.cy, align 4, !tbaa !140
  %i.cz = shl nsw i32 %.sroa.speculated.i.i.i, 1
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !140
  %.sroa.speculated4.i.i.i = shl nuw i32 %i.cp, 1
  %2 = add i32 %.sroa.speculated4.i.i.i, -2
  %3 = sext i32 %2 to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %3
  %i.de = load float, ptr %i.dd, align 4, !tbaa !140
  %i.df = fsub float %i.dc, %i.de
  %i.dg = fmul float %i.cr, %i.df
  %i.dh = getelementptr i8, ptr %i.cy, i64 4
  store float %i.dg, ptr %i.dh, align 4, !tbaa !140
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.cs
  %i.dj = load float, ptr %i.di, align 4, !tbaa !140
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cs
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !140
  %i.dm = fsub float %i.dj, %i.dl
  %i.dn = fmul float %i.bw, %i.dm
  %i.do = getelementptr i8, ptr %i.cy, i64 8
  store float %i.dn, ptr %i.do, align 4, !tbaa !140
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !140
  %i.dr = getelementptr i8, ptr %i.cy, i64 12
  store float %i.dq, ptr %i.dr, align 4, !tbaa !140
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.aa
  br i1 %exitcond.not.i.i.i, label %..loopexit_crit_edge.i.loopexit.i.i, label %.peel.next.i.i.i, !llvm.loop !235

"_ZSt10__invoke_rIvRZN2cvL16prepareGradientsERKNS0_3MatEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit": ; preds = %..loopexit_crit_edge.i.loopexit.i.i, %.lr.ph.i.us.i.i, %bb.a, %.lr.ph21.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_L16prepareGradientsERKNS0_3MatEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cvL16prepareGradientsERKNS1_3MatEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cvL16prepareGradientsERKNS_3MatEE3$_0", ptr %0, align 8, !tbaa !142
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cvL16prepareGradientsERKNS1_3MatEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !74
  store ptr %.val, ptr %0, align 8, !tbaa !74
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cvL16prepareGradientsERKNS1_3MatEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !242
  store ptr %i.a, ptr %0, align 8, !tbaa !74
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cvL16prepareGradientsERKNS1_3MatEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !74 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cvL16prepareGradientsERKNS1_3MatEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 40) #24
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cvL16prepareGradientsERKNS1_3MatEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cvL16prepareGradientsERKNS1_3MatEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare void @_ZNK2cv3Mat3invEi(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef) local_unnamed_addr #3

declare void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare noundef double @_ZNK2cv3Mat3dotERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN2cvmiERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZN2cvmlEdRKNS_3MatE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, double noundef, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #3

declare void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i64, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_L19imageHessianProjECCILi0EfEEdRKNS0_3MatES8_S8_RdS9_S9_S9_RiRS6_SB_SB_iiEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #17 align 2 {
bb.a:
  %2 = alloca %"struct.std::array", align 8       ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !74    ; 26 uses
  %.val2 = load i32, ptr %1, align 4, !tbaa !69   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4, !tbaa !70
  %i.b = load ptr, ptr %.val, align 8, !tbaa !246, !nonnull !136, !align !137
  %i.c = load i32, ptr %i.b, align 4, !tbaa !28   ; 2 uses
  %i.d = mul nsw i32 %i.c, %.val2
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !247, !nonnull !136, !align !137
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28   ; 2 uses
  %i.h = sdiv i32 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !248, !nonnull !136, !align !137
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28   ; 2 uses
  %i.l = add i32 %i.h, -1
  %i.m = add i32 %i.l, %i.k                       ; 2 uses
  %i.n = urem i32 %i.m, %i.k
  %i.o = sub nuw i32 %i.m, %i.n                   ; 2 uses
  %i.p = mul nsw i32 %i.c, %.val3
  %i.q = sdiv i32 %i.p, %i.g                      ; 2 uses
  %i.r = icmp slt i32 %i.o, %i.q
  br i1 %i.r, label %.lr.ph94.i.i.i, label %_ZSt10__invoke_rIvRZN2cvL19imageHessianProjECCILi0EfEEdRKNS0_3MatES4_S4_RdS5_S5_S5_RiRS2_S7_S7_iiEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit

.lr.ph94.i.i.i:                                   ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 80 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 120 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 136 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 152
  %i.ae = sext i32 %.val2 to i64                  ; 13 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 160
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 176
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 184
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 208
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 224
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 232
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 240
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph94.i.i.i
  %.092.i.i.i = phi i32 [ %i.o, %.lr.ph94.i.i.i ], [ %i.mb, %._crit_edge.i.i.i ] ; 3 uses
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !249, !nonnull !136, !align !138 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !65
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.au = load i64, ptr %i.at, align 8, !tbaa !83
  %i.av = sext i32 %.092.i.i.i to i64
  %i.aw = mul i64 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  %i.ay = sitofp i32 %.092.i.i.i to float         ; 2 uses
  %i.az = load ptr, ptr %i.t, align 8, !tbaa !250, !nonnull !136, !align !138
  %i.ba = load double, ptr %i.az, align 8, !tbaa !64
  %i.bb = fptrunc double %i.ba to float
  %i.bc = load ptr, ptr %i.u, align 8, !tbaa !251, !nonnull !136, !align !138
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !64
  %i.be = fptrunc double %i.bd to float
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.bb, float %i.be)
  %i.bg = load ptr, ptr %i.x, align 8, !tbaa !252, !nonnull !136, !align !137
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !28 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.bj = load ptr, ptr %i.v, align 8, !tbaa !253, !nonnull !136, !align !138
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !64
  %i.bl = fptrunc double %i.bk to float
  %i.bm = load ptr, ptr %i.w, align 8, !tbaa !254, !nonnull !136, !align !138
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !64
  %i.bo = fptrunc double %i.bn to float
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.bl, float %i.bo) ; 4 uses
  %i.bq = fcmp olt float %i.bp, 0.000000e+00
  %.sroa.speculated.i119.i.i.i = select i1 %i.bq, float 0.000000e+00, float %i.bp
  %i.br = tail call float @llvm.round.f32(float %.sroa.speculated.i119.i.i.i)
  %i.bs = fptoui float %i.br to i32               ; 2 uses
  %i.bt = shl i32 %i.bs, 2
  %i.bu = tail call float @llvm.floor.f32(float %i.bp)
  %i.bv = fptosi float %i.bu to i32               ; 3 uses
  %i.bw = uitofp i32 %i.bv to float
  %i.bx = fsub float %i.bp, %i.bw                 ; 3 uses
  %i.by = shl i32 %i.bv, 2                        ; 2 uses
  %i.bz = add i32 %i.by, 4
  %i.ca = fsub float 1.000000e+00, %i.bx          ; 2 uses
  %i.cb = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %i.cf = phi i32 [ %i.bh, %.lr.ph.i.i.i ], [ %i.jx, %bb.j ] ; 2 uses
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.j ] ; 3 uses
  %i.cg = phi <6 x float> [ zeroinitializer, %.lr.ph.i.i.i ], [ %i.jy, %bb.j ] ; 3 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.ci = uitofp nneg i32 %i.ch to float
  %i.cj = fadd float %i.bf, %i.ci                 ; 4 uses
  %i.ck = load ptr, ptr %i.y, align 8, !tbaa !255, !nonnull !136, !align !137
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !28 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 1
  br i1 %i.cm, label %bb.d, label %bb.e

end_hunk_0
