Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/distribute?download=true
inline.NumInlined: 931
inline.NumDeleted: 491
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZL13distributeVecP12gmx_domdec_tN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEENS2_IS4_EE:bb.a

bb.g:                                             ; preds = %bb.e
  %i.ak = icmp slt i32 %i.v, 0
  br i1 %i.ak, label %bb.h, label %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #17
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.ac)
  %i.al = add nuw nsw i64 %.sroa.speculated.i.i.i.i, %i.aa
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 768614336404564650) ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 12
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #18
          to label %.noexc45.i unwind label %.loopexit.i ; 4 uses

.noexc45.i:                                       ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.z
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.055.080.i, %.sroa.10.078.i
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc45.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %i.ao, %.noexc45.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.055.080.i, %.noexc45.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !477, !alias.scope !478
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aq, %.sroa.10.078.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !474

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc45.i
  %.not.i31.i.i.i = icmp eq ptr %.sroa.055.080.i, null
  br i1 %.not.i31.i.i.i, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i
  %i.as = sub i64 %i.ad, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.055.080.i, i64 noundef %i.as) #19
  br label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i.i

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i.i: ; preds = %bb.i, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %i.ap, i64 %i.ac
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.ao, i64 %i.am
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit.i

bb.j:                                             ; preds = %bb.d
  %i.av = icmp ugt i64 %i.aa, %i.w
  br i1 %i.av, label %bb.k, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %.sroa.055.080.i, i64 %i.w ; 2 uses
  %.not.i4.i.i = icmp eq ptr %.sroa.10.078.i, %i.aw
  %spec.select.i = select i1 %.not.i4.i.i, ptr %.sroa.10.078.i, ptr %i.aw
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit.i: ; preds = %bb.k, %bb.j, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i.i, %bb.f
  %.sroa.10.2.i = phi ptr [ %i.at, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i.i ], [ %scevgep.i.i.i.i.i.i, %bb.f ], [ %spec.select.i, %bb.k ], [ %.sroa.10.078.i, %bb.j ]
  %.sroa.14.4.i = phi ptr [ %i.au, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i.i ], [ %.sroa.14.079.i, %bb.f ], [ %.sroa.14.079.i, %bb.k ], [ %.sroa.14.079.i, %bb.j ] ; 3 uses
  %.sroa.055.4.i = phi ptr [ %i.ao, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i.i ], [ %.sroa.055.080.i, %bb.f ], [ %.sroa.055.080.i, %bb.k ], [ %.sroa.055.080.i, %bb.j ] ; 5 uses
  %.sroa.0.0.copyload.i46.i = load ptr, ptr %i.t, align 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0.0.copyload.i47.i = load ptr, ptr %i.ax, align 8 ; 2 uses
  %.not6875.i = icmp eq ptr %.sroa.0.0.copyload.i46.i, %.sroa.0.0.copyload.i47.i
  br i1 %.not6875.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.ay = trunc nuw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit.i
  %.041.lcssa.i = phi i32 [ 0, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit.i ], [ %i.ay, %._crit_edge.loopexit.i ] ; 2 uses
  %i.az = load i32, ptr %i.u, align 8, !tbaa !151
  %i.ba = icmp eq i32 %.041.lcssa.i, %i.az
  br i1 %i.ba, label %bb.m, label %bb.l

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit.i ] ; 2 uses
  %.sroa.053.076.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %.sroa.0.0.copyload.i46.i, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm.exit.i ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.053.076.i, align 4, !tbaa !240
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [12 x i8], ptr %1, i64 %i.bc
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %.sroa.055.4.i, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.be, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.bd, i64 12, i1 false), !tbaa.struct !477
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.053.076.i, i64 4 ; 2 uses
  %.not68.i = icmp eq ptr %i.bf, %.sroa.0.0.copyload.i47.i
  br i1 %.not68.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

bb.l:                                             ; preds = %._crit_edge.i
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL21distributeVecSendrecvP12gmx_domdec_tN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEENS2_IS4_EEENK3$_0clEv", ptr noundef nonnull @.str.11, i32 noundef 102) #17
          to label %.noexc48.i unwind label %bb.n

.noexc48.i:                                       ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %._crit_edge.i
  %i.bg = mul i32 %.041.lcssa.i, 12
  %i.bh = load ptr, ptr %i.g, align 8, !tbaa !479
  %i.bi = trunc nuw nsw i64 %indvars.iv99.i to i32 ; 2 uses
  %i.bj = invoke noundef i32 @_Z9tMPI_SendPKviP14tmpi_datatype_iiP10tmpi_comm_(ptr noundef %.sroa.055.4.i, i32 noundef %i.bg, ptr noundef %i.i, i32 noundef %i.bi, i32 noundef %i.bi, ptr noundef %i.bh)
          to label %._crit_edge105.i unwind label %.loopexit.i ; 0 uses

._crit_edge105.i:                                 ; preds = %bb.m
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !144
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.i:                                      ; preds = %bb.m, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.sroa.14.1.ph.i = phi ptr [ %.sroa.14.079.i, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.14.4.i, %bb.m ]
  %.sroa.055.1.ph.i = phi ptr [ %.sroa.055.080.i, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.055.4.i, %bb.m ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.i:                             ; preds = %bb.h
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.n
  %.sroa.14.2.i = phi ptr [ %.sroa.14.4.i, %bb.n ], [ %.sroa.14.1.ph.i, %.loopexit.i ], [ %.sroa.14.079.i, %.loopexit.split-lp.i ]
  %.sroa.055.2.i = phi ptr [ %.sroa.055.4.i, %bb.n ], [ %.sroa.055.1.ph.i, %.loopexit.i ], [ %.sroa.055.080.i, %.loopexit.split-lp.i ] ; 3 uses
  %.pn.pn.i = phi { ptr, i32 } [ %i.bk, %bb.n ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %.not.i.i.i.i = icmp eq ptr %.sroa.055.2.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = ptrtoint ptr %.sroa.14.2.i to i64
  %i.bm = ptrtoint ptr %.sroa.055.2.i to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.055.2.i, i64 noundef %i.bn) #19
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i: ; preds = %bb.p, %bb.o
  resume { ptr, i32 } %.pn.pn.i

bb.q:                                             ; preds = %._crit_edge105.i, %bb.c
  %i.bo = phi i32 [ %i.o, %bb.c ], [ %.pre.i, %._crit_edge105.i ] ; 2 uses
  %.sroa.10.1.i = phi ptr [ %.sroa.10.078.i, %bb.c ], [ %.sroa.10.2.i, %._crit_edge105.i ]
  %.sroa.14.3.i = phi ptr [ %.sroa.14.079.i, %bb.c ], [ %.sroa.14.4.i, %._crit_edge105.i ] ; 2 uses
  %.sroa.055.3.i = phi ptr [ %.sroa.055.080.i, %bb.c ], [ %.sroa.055.4.i, %._crit_edge105.i ] ; 2 uses
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1 ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i64 %indvars.iv.next100.i, %i.bp
  br i1 %i.bq, label %bb.c, label %._crit_edge83.loopexit.i, !llvm.loop !475

._crit_edge91.i:                                  ; preds = %.lr.ph90.i, %._crit_edge83.i
  %.not.i.i.i49.i = icmp eq ptr %.sroa.055.0.lcssa.i, null
  br i1 %.not.i.i.i49.i, label %_ZL21distributeVecSendrecvP12gmx_domdec_tN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEENS2_IS4_EE.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge91.i
  %i.br = ptrtoint ptr %.sroa.055.0.lcssa.i to i64
  %i.bs = sub i64 %.sroa.14.0.lcssa.i, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.055.0.lcssa.i, i64 noundef %i.bs) #19
  br label %_ZL21distributeVecSendrecvP12gmx_domdec_tN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEENS2_IS4_EE.exit

.lr.ph90.i:                                       ; preds = %._crit_edge83.i, %.lr.ph90.i
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i, %.lr.ph90.i ], [ 0, %._crit_edge83.i ] ; 2 uses
  %.sroa.0.087.i = phi ptr [ %i.bx, %.lr.ph90.i ], [ %.sroa.0.0.copyload.i.i, %._crit_edge83.i ] ; 2 uses
  %i.bt = load i32, ptr %.sroa.0.087.i, align 4, !tbaa !240
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [12 x i8], ptr %1, i64 %i.bu
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv102.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bw, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.bv, i64 12, i1 false), !tbaa.struct !477
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.087.i, i64 4 ; 2 uses
  %.not67.i = icmp eq ptr %i.bx, %.sroa.0.0.copyload.i44.i
  br i1 %.not67.i, label %._crit_edge91.i, label %.lr.ph90.i

bb.s:                                             ; preds = %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !157
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1020
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !240
  %i.cc = mul i32 %i.cb, 12
  %i.cd = load ptr, ptr @TMPI_BYTE, align 8, !tbaa !480
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !479
  %i.cg = tail call noundef i32 @_Z9tMPI_RecvPviP14tmpi_datatype_iiP10tmpi_comm_P12tmpi_status_(ptr noundef %2, i32 noundef %i.cc, ptr noundef %i.cd, i32 noundef 0, i32 noundef -1, ptr noundef %i.cf, ptr noundef null) ; 0 uses
  br label %_ZL21distributeVecSendrecvP12gmx_domdec_tN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEENS2_IS4_EE.exit

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.ch = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %.val21.i = load i32, ptr %i.ch, align 4, !tbaa !46
  %i.ci = icmp eq i32 %.val21.i, 0
  br i1 %i.ci, label %bb.u, label %.loopexit.i3

bb.u:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !48 ; 3 uses
  call void @_Z21get_commbuffer_countsP16AtomDistributionPN3gmx8ArrayRefIKiEES5_(ptr noundef nonnull %i.ck, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 144
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !481
  %i.cn = load i32, ptr %i.a, align 8, !tbaa !144 ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph38.i, label %.loopexit.i3

.lr.ph38.i:                                       ; preds = %bb.u, %._crit_edge.i12
  %i.cp = phi i32 [ %i.cu, %._crit_edge.i12 ], [ %i.cn, %bb.u ]
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %._crit_edge.i12 ], [ 0, %bb.u ] ; 2 uses
  %.036.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i12 ], [ 0, %bb.u ] ; 2 uses
  %5 = load ptr, ptr %i.ck, align 8, !tbaa !147
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %indvars.iv40.i ; 2 uses
  %.sroa.0.0.copyload.i.i5 = load ptr, ptr %i.cq, align 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.0.0.copyload.i22.i = load ptr, ptr %i.cr, align 8 ; 2 uses
  %.not32.i = icmp eq ptr %.sroa.0.0.copyload.i.i5, %.sroa.0.0.copyload.i22.i
  br i1 %.not32.i, label %._crit_edge.i12, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph38.i
  %i.cs = sext i32 %.036.i to i64
  br label %.lr.ph.i6

._crit_edge.loopexit.i10:                         ; preds = %.lr.ph.i6
  %i.ct = trunc nsw i64 %indvars.iv.next.i8 to i32
  %.pre.i11.a = load i32, ptr %i.a, align 8, !tbaa !144
  br label %._crit_edge.i12

._crit_edge.i12:                                  ; preds = %._crit_edge.loopexit.i10, %.lr.ph38.i
  %i.cu = phi i32 [ %i.cp, %.lr.ph38.i ], [ %.pre.i11.a, %._crit_edge.loopexit.i10 ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.036.i, %.lr.ph38.i ], [ %i.ct, %._crit_edge.loopexit.i10 ]
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i64 %indvars.iv.next41.i, %i.cv
  br i1 %i.cw, label %.lr.ph38.i, label %.loopexit.i3, !llvm.loop !476

.lr.ph.i6:                                        ; preds = %.lr.ph.i6, %.lr.ph.preheader.i
  %indvars.iv.i7 = phi i64 [ %i.cs, %.lr.ph.preheader.i ], [ %indvars.iv.next.i8, %.lr.ph.i6 ] ; 2 uses
  %.sroa.025.033.i = phi ptr [ %.sroa.0.0.copyload.i.i5, %.lr.ph.preheader.i ], [ %i.db, %.lr.ph.i6 ] ; 2 uses
  %i.cx = load i32, ptr %.sroa.025.033.i, align 4, !tbaa !240
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [12 x i8], ptr %1, i64 %i.cy
  %indvars.iv.next.i8 = add nsw i64 %indvars.iv.i7, 1 ; 2 uses
  %i.da = getelementptr inbounds [12 x i8], ptr %i.cm, i64 %indvars.iv.i7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.da, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.cz, i64 12, i1 false), !tbaa.struct !477
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.025.033.i, i64 4 ; 2 uses
  %.not.i9 = icmp eq ptr %i.db, %.sroa.0.0.copyload.i22.i
  br i1 %.not.i9, label %._crit_edge.loopexit.i10, label %.lr.ph.i6

.loopexit.i3:                                     ; preds = %._crit_edge.i12, %bb.u, %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !157
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1020
  %i.df = load i32, ptr %i.de, align 4, !tbaa !240
  %i.dg = load ptr, ptr %3, align 8, !tbaa !482   ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !482
  %i.dj = load ptr, ptr %4, align 8, !tbaa !482   ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !482
  %.val.i4 = load i32, ptr %i.ch, align 4, !tbaa !46
  %i.dm = icmp eq i32 %.val.i4, 0
  br i1 %i.dm, label %bb.v, label %_ZL21distributeVecScattervP12gmx_domdec_tN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEENS2_IS4_EE.exit

bb.v:                                             ; preds = %.loopexit.i3
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !48
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 144
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !481
  br label %_ZL21distributeVecScattervP12gmx_domdec_tN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEENS2_IS4_EE.exit

_ZL21distributeVecScattervP12gmx_domdec_tN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEENS2_IS4_EE.exit: ; preds = %.loopexit.i3, %bb.v
  %i.dr = phi ptr [ %i.dq, %bb.v ], [ null, %.loopexit.i3 ]
  %i.ds = ptrtoint ptr %i.dl to i64
  %i.dt = ptrtoint ptr %i.dj to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.du
  %i.dw = ptrtoint ptr %i.di to i64
  %i.dx = ptrtoint ptr %i.dg to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dy
  call void @_Z11dd_scattervIN3gmx11BasicVectorIfEEEvPK12gmx_domdec_tNS0_8ArrayRefIKiEES8_PKT_iPS9_(ptr noundef nonnull %0, ptr %i.dg, ptr %i.dz, ptr %i.dj, ptr %i.dv, ptr noundef %i.dr, i32 noundef %i.df, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %_ZL21distributeVecSendrecvP12gmx_domdec_tN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEENS2_IS4_EE.exit

_ZL21distributeVecSendrecvP12gmx_domdec_tN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEENS2_IS4_EE.exit: ; preds = %bb.s, %bb.r, %._crit_edge91.i, %_ZL21distributeVecScattervP12gmx_domdec_tN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEENS2_IS4_EE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = load ptr, ptr %1, align 8, !tbaa !33     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.i = load ptr, ptr %0, align 8, !tbaa !33     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, !prof !252

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !251

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !240
  store i32 %i.r, ptr %i.o, align 4, !tbaa !240
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !33     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #19
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !241
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34   ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !251

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 4
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !240
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !240
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 4
  br i1 %i.af, label %bb.o, label %bb.p, !prof !251

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !33
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !34 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !33
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !34
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 4
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !240
  store i32 %i.ah, ptr %i.i, align 4, !tbaa !240
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 4, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 4
  br i1 %i.an, label %bb.r, label %bb.s, !prof !251

bb.r:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 4
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !240
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !240
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit
end_hunk_0
