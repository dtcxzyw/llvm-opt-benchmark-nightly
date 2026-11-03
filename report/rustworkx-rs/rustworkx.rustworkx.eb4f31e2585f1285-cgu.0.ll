Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 141
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 400
begin_hunk_0_@_RNvNtCskcxRuJ53GpR_9rustworkx12bisimulation20maximum_bisimulation:bb.a
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  %i.ub = load i64, ptr %i.ua, align 8, !noalias !102088, !noundef !56
  %i.uc = icmp ult i64 %i.ub, 9223372036854775807
  br i1 %i.uc, label %_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBf_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEETjB21_ENCINvNvB1e_6min_by4foldB3K_NCNvB2U_20maximum_bisimulation0E0E0B2W_.exit.i.i.i, label %bb.dv, !prof !66

bb.dv:                                            ; preds = %bb.du
  invoke void @_RNvNtCslwFuT2d6ECx_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1391) #61
          to label %bb.dw unwind label %bb.dx, !noalias !102088

bb.dw:                                            ; preds = %bb.dv
  unreachable

bb.dx:                                            ; preds = %bb.dv
  %i.ud = landingpad { ptr, i32 }
          cleanup
  %i.ue = load i64, ptr %i.ts, align 8, !noalias !102088, !noundef !56
  %i.uf = add i64 %i.ue, -1
  store i64 %i.uf, ptr %i.ts, align 8, !noalias !102088
  br label %.thread470

_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBf_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEETjB21_ENCINvNvB1e_6min_by4foldB3K_NCNvB2U_20maximum_bisimulation0E0E0B2W_.exit.i.i.i: ; preds = %bb.du
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tz, i64 40
  %i.uh = load i64, ptr %i.ug, align 8, !noalias !102088, !noundef !56 ; 2 uses
  %i.ui = icmp ult i64 %i.uh, 2305843009213693952
  call void @llvm.assume(i1 %i.ui)
  store i64 %i.tt, ptr %i.ts, align 8, !noalias !102088
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.tx, %i.uh ; 3 uses
  %..i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.tr, ptr %.sroa.6.0.i.i.i ; 2 uses
  %.2.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 %.sroa.0.0.i.i.i, i64 %.sroa.02.0.i.i.i ; 2 uses
  %i.uj = icmp eq i64 %.sroa.0.0.i.i.i, %i.tp
  %i.uk = select i1 %.not.i.i.i.i.i.i, ptr %i.tz, ptr %i.tq
  br i1 %i.uj, label %.loopexit532, label %bb.ds

.loopexit532:                                     ; preds = %_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBf_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEETjB21_ENCINvNvB1e_6min_by4foldB3K_NCNvB2U_20maximum_bisimulation0E0E0B2W_.exit.i.i.i
  %i.ul = icmp eq ptr %..i.i.i.i.i.i, null
  br i1 %i.ul, label %.thread474, label %.loopexit532.thread

.loopexit532.thread:                              ; preds = %.loopexit533, %.loopexit532
  %.sroa.0.0.i2111 = phi i64 [ %.2.i.i.i.i.i.i, %.loopexit532 ], [ 0, %.loopexit533 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.experimental.noalias.scope.decl(metadata !102091)
  call void @llvm.experimental.noalias.scope.decl(metadata !102092)
  %i.um = icmp ult i64 %.val58, 1152921504606846976
  call void @llvm.assume(i1 %i.um)
  %.not.i.i = icmp ult i64 %.sroa.0.0.i2111, %.val58
  br i1 %.not.i.i, label %bb.eb, label %bb.dy

bb.dy:                                            ; preds = %.loopexit532.thread
  invoke void @_RNvNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %.sroa.0.0.i2111, i64 noundef %.val58, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2572) #60
          to label %.noexc86 unwind label %bb.dq

.noexc86:                                         ; preds = %bb.dy
  unreachable

.thread474:                                       ; preds = %.loopexit532, %.loopexit533.thread
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEEEB1L_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bc)
          to label %bb.dz unwind label %bb.dn

bb.dz:                                            ; preds = %.thread474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.un = load i64, ptr %i.sg, align 8, !noalias !102093, !noundef !56
  %i.uo = add i64 %i.un, -1                       ; 2 uses
  store i64 %i.uo, ptr %i.sg, align 8, !noalias !102093
  %i.up = icmp eq i64 %i.uo, 0
  br i1 %i.up, label %bb.ea, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEEB1a_.exit88

bb.ea:                                            ; preds = %bb.dz
  invoke fastcc void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockE9drop_slowBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bd) #62
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEEB1a_.exit88 unwind label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEEB1a_.exit119.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !18

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEEB1a_.exit88: ; preds = %bb.dz, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEEB1a_.exit88.invoke

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEEB1a_.exit88.invoke: ; preds = %.loopexit, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEEB1a_.exit88
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEEEB1L_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bg)
          to label %.invoke unwind label %bb.cd

.invoke:                                          ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEEB1a_.exit88.invoke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtBG_2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEEEB1q_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh)
          to label %bb.de unwind label %bb.dc

bb.eb:                                            ; preds = %.loopexit532.thread
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %.sroa.0.0.i2111 ; 3 uses
  %i.ur = load ptr, ptr %i.uq, align 8, !noalias !102094, !nonnull !56, !noundef !56 ; 17 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %i.ut = xor i64 %.sroa.0.0.i2111, -1
  %i.uu = add nsw i64 %.val58, %i.ut
  %i.uv = shl nuw nsw i64 %i.uu, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.uq, ptr nonnull align 8 %i.us, i64 %i.uv, i1 false), !noalias !102094
  %i.uw = add nsw i64 %.val58, -1
  store i64 %i.uw, ptr %.sroa.7.0..sroa_idx.i80, align 8, !alias.scope !102094
  store ptr %i.ur, ptr %i.bb, align 8
  %i.ux = getelementptr i8, ptr %i.sg, i64 24
  %.val55 = load ptr, ptr %i.ux, align 8, !nonnull !56, !noundef !56 ; 4 uses
  %i.uy = getelementptr i8, ptr %i.sg, i64 32
  %.val56 = load i64, ptr %i.uy, align 8, !noundef !56 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102095)
  %i.uz = shl i64 %.val56, 2                      ; 5 uses
  %i.va = icmp eq i64 %.val56, 0
  br i1 %i.va, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit107, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !102096
  %i.vb = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.uz, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102096 ; 7 uses
  %i.vc = icmp eq ptr %i.vb, null
  br i1 %i.vc, label %bb.ed, label %.lr.ph.preheader.i.i89

bb.ed:                                            ; preds = %bb.ec
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.uz) #61
          to label %.noexc92 unwind label %bb.eg

.noexc92:                                         ; preds = %bb.ed
  unreachable

.lr.ph.preheader.i.i89:                           ; preds = %bb.ec
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %.val55, i64 %.val56
  %i.ve = and i64 %.val56, 4611686018427387903
  %i.vf = add i64 %.val56, -1
  %i.vg = call i64 @llvm.umin.i64(i64 %i.ve, i64 %i.vf) ; 2 uses
  %min.iters.check3697 = icmp samesign ult i64 %i.vg, 8
  br i1 %min.iters.check3697, label %.lr.ph.i.i90.preheader, label %vector.ph3698

vector.ph3698:                                    ; preds = %.lr.ph.preheader.i.i89
  %i.vh = add nuw nsw i64 %i.vg, 1                ; 2 uses
  %i.vi = and i64 %i.vh, 7                        ; 2 uses
  %i.vj = icmp eq i64 %i.vi, 0
  %i.vk = select i1 %i.vj, i64 8, i64 %i.vi
  %n.vec3699 = sub nsw i64 %i.vh, %i.vk           ; 4 uses
  %i.vl = shl i64 %n.vec3699, 2
  %i.vm = getelementptr i8, ptr %.val55, i64 %i.vl
  %i.vn = sub i64 %.val56, %n.vec3699
  br label %vector.body3700

vector.body3700:                                  ; preds = %vector.body3700, %vector.ph3698
  %index3701 = phi i64 [ 0, %vector.ph3698 ], [ %index.next3705, %vector.body3700 ] ; 3 uses
  %i.vo = shl i64 %index3701, 2
  %next.gep3702 = getelementptr i8, ptr %.val55, i64 %i.vo ; 2 uses
  %i.vp = getelementptr i8, ptr %next.gep3702, i64 16
  %wide.load3703 = load <4 x i32>, ptr %next.gep3702, align 4, !alias.scope !102097, !noalias !102098
  %wide.load3704 = load <4 x i32>, ptr %i.vp, align 4, !alias.scope !102097, !noalias !102098
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %index3701 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 16
  store <4 x i32> %wide.load3703, ptr %i.vq, align 4, !noalias !102099
  store <4 x i32> %wide.load3704, ptr %i.vr, align 4, !noalias !102099
  %index.next3705 = add nuw i64 %index3701, 8     ; 2 uses
  %i.vs = icmp eq i64 %index.next3705, %n.vec3699
  br i1 %i.vs, label %.lr.ph.i.i90.preheader, label %vector.body3700, !llvm.loop !101557

.lr.ph.i.i90.preheader:                           ; preds = %vector.body3700, %.lr.ph.preheader.i.i89
  %.sroa.016.034.i.i.ph = phi ptr [ %.val55, %.lr.ph.preheader.i.i89 ], [ %i.vm, %vector.body3700 ]
  %.sroa.7.033.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i89 ], [ %n.vec3699, %vector.body3700 ]
  %.sroa.10.032.i.i.ph = phi i64 [ %.val56, %.lr.ph.preheader.i.i89 ], [ %i.vn, %vector.body3700 ]
  br label %.lr.ph.i.i90

.lr.ph.i.i90:                                     ; preds = %.lr.ph.i.i90.preheader, %bb.ee
  %.sroa.016.034.i.i = phi ptr [ %i.vw, %bb.ee ], [ %.sroa.016.034.i.i.ph, %.lr.ph.i.i90.preheader ] ; 3 uses
  %.sroa.7.033.i.i = phi i64 [ %i.vv, %bb.ee ], [ %.sroa.7.033.i.i.ph, %.lr.ph.i.i90.preheader ] ; 2 uses
  %.sroa.10.032.i.i = phi i64 [ %i.vu, %bb.ee ], [ %.sroa.10.032.i.i.ph, %.lr.ph.i.i90.preheader ]
  %i.vt = icmp eq ptr %.sroa.016.034.i.i, %i.vd
  br i1 %i.vt, label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit, label %bb.ee

bb.ee:                                            ; preds = %.lr.ph.i.i90
  %i.vu = add nsw i64 %.sroa.10.032.i.i, -1       ; 2 uses
  %i.vv = add nuw nsw i64 %.sroa.7.033.i.i, 1
  %i.vw = getelementptr inbounds nuw i8, ptr %.sroa.016.034.i.i, i64 4
  %.val.i.i91 = load i32, ptr %.sroa.016.034.i.i, align 4, !alias.scope !102097, !noalias !102098, !noundef !56
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %.sroa.7.033.i.i
  store i32 %.val.i.i91, ptr %i.vx, align 4, !noalias !102099
  %i.vy = icmp eq i64 %i.vu, 0
  br i1 %i.vy, label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit, label %.lr.ph.i.i90, !llvm.loop !101558

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.ex, %.body114, %bb.er, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i, %bb.eg
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body115, %bb.ex ], [ %i.xp, %bb.er ], [ %i.wc, %bb.eg ], [ %eh.lpad-body115, %.body114 ], [ %eh.lpad-body105, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i ] ; 2 uses
  %.sroa.024.1 = phi i1 [ false, %bb.ex ], [ false, %bb.er ], [ true, %bb.eg ], [ false, %.body114 ], [ true, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i ]
  %i.vz = load i64, ptr %i.ur, align 8, !noalias !102100, !noundef !56
  %i.wa = add i64 %i.vz, -1                       ; 2 uses
  store i64 %i.wa, ptr %i.ur, align 8, !noalias !102100
  %i.wb = icmp eq i64 %i.wa, 0
  br i1 %i.wb, label %bb.ef, label %.noexc93

bb.ef:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit
  invoke fastcc void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtCslwFuT2d6ECx_4core4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEE9drop_slowB1i_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bb) #62
          to label %.noexc93 unwind label %bb.le, !inline_history !23

bb.eg:                                            ; preds = %bb.ed
  %i.wc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit

_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.ee, %.lr.ph.i.i90
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vb, i64 %i.uz ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !102101
  %i.we = getelementptr inbounds nuw i8, ptr %i.ur, i64 16 ; 8 uses
  %.promoted = load i64, ptr %i.we, align 8, !noalias !102102 ; 4 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.ur, i64 32 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ur, i64 40 ; 2 uses
  %i.wh = icmp ult i64 %.promoted, 9223372036854775807
  br i1 %i.wh, label %.lr.ph.i.i.i.i.a, label %5, !prof !66

.lr.ph.i.i.i.i.a:                                 ; preds = %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit
  %.pre1970 = load ptr, ptr %i.wf, align 8, !noalias !102102 ; 2 uses
  %.pre1971 = load i64, ptr %i.wg, align 8, !noalias !102102 ; 2 uses
  %2 = add nuw nsw i64 %.promoted, 1
  %.idx = shl nuw nsw i64 %.pre1971, 2
  %i.wi = getelementptr inbounds nuw i8, ptr %.pre1970, i64 %.idx
  %.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i3566 = icmp eq i64 %.pre1971, 0
  br label %bb.eh

bb.eh:                                            ; preds = %.lr.ph.i.i.i.i.a, %bb.ej
  %3 = phi ptr [ %4, %bb.ej ], [ %i.vb, %.lr.ph.i.i.i.i.a ] ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  store i64 %2, ptr %i.we, align 8, !noalias !102102
  %.val2.i.i.i.i.i.i = load i32, ptr %3, align 4, !noalias !102102
  br i1 %.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i3566, label %._crit_edge3569, label %.lr.ph3568

5:                                                ; preds = %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1392) #60
          to label %.noexc102 unwind label %bb.ep

.noexc102:                                        ; preds = %5
  unreachable

bb.ei:                                            ; preds = %.lr.ph3568
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wk, i64 4 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i = icmp eq ptr %i.wj, %i.wi
  br i1 %.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i, label %._crit_edge3569, label %.lr.ph3568

.lr.ph3568:                                       ; preds = %bb.eh, %bb.ei
  %i.wk = phi ptr [ %i.wj, %bb.ei ], [ %.pre1970, %bb.eh ] ; 2 uses
  %.val2.i.i.i.i.i.i.i.i = load i32, ptr %i.wk, align 4, !alias.scope !102103, !noalias !102104, !noundef !56
  %i.wl = icmp eq i32 %.val2.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i
  br i1 %i.wl, label %bb.ej, label %bb.ei

bb.ej:                                            ; preds = %.lr.ph3568
  store i64 %.promoted, ptr %i.we, align 8, !noalias !102102
  %i.wm = icmp eq ptr %4, %i.wd
  br i1 %i.wm, label %.loopexit531, label %bb.eh

._crit_edge3569:                                  ; preds = %bb.eh, %bb.ei
  store i64 %.promoted, ptr %i.we, align 8, !noalias !102102
  %i.wn = load i32, ptr %3, align 4, !noalias !102105, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !102106
  %i.wo = call noundef align 4 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102106 ; 4 uses
  %i.wp = icmp eq ptr %i.wo, null
  br i1 %i.wp, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %._crit_edge3569
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 4, i64 16) #61
          to label %.noexc103 unwind label %bb.ep

.noexc103:                                        ; preds = %bb.ek
  unreachable

bb.el:                                            ; preds = %._crit_edge3569
  store i32 %i.wn, ptr %i.wo, align 4, !noalias !102101
  store i64 4, ptr %i.n, align 8, !noalias !102101
  store ptr %i.wo, ptr %.sroa.4.0..sroa_idx.i95, align 8, !noalias !102101
  store i64 1, ptr %.sroa.6.0..sroa_idx.i96, align 8, !noalias !102101
  call void @llvm.experimental.noalias.scope.decl(metadata !102107)
  call void @llvm.experimental.noalias.scope.decl(metadata !102108)
  %i.wq = icmp eq ptr %4, %i.wd
  br i1 %i.wq, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB25_6filter6FilterINtNtNtB29_5slice4iter4IterBR_ENCNvNtCskcxRuJ53GpR_9rustworkx12bisimulation20maximum_bisimulations0_0EEE11spec_extendB3S_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.el, %.noexc12.i
  %i.wr = phi ptr [ %i.xg, %.noexc12.i ], [ %i.wo, %bb.el ]
  %i.ws = phi i64 [ %i.xi, %.noexc12.i ], [ 1, %bb.el ] ; 6 uses
  %.lcssa121718.i.i.i = phi ptr [ %i.wx, %.noexc12.i ], [ %4, %bb.el ]
  %.pr = load i64, ptr %i.we, align 8, !noalias !102109 ; 4 uses
  %i.wt = icmp ult i64 %.pr, 9223372036854775807
  %i.wu = add nuw nsw i64 %.pr, 1
  br i1 %i.wt, label %.lr.ph.i.i.i.i.i.i.split.preheader, label %bb.em, !prof !66

.lr.ph.i.i.i.i.i.i.split.preheader:               ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre1970.a = load ptr, ptr %i.wf, align 8, !noalias !102109 ; 2 uses
  %.pre1971.a = load i64, ptr %i.wg, align 8, !noalias !102109 ; 2 uses
  %.idx3740.a = shl nuw nsw i64 %.pre1971.a, 2
  %i.wv = getelementptr inbounds nuw i8, ptr %.pre1970.a, i64 %.idx3740.a
  %.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i.i.i3574 = icmp eq i64 %.pre1971.a, 0
  br label %.lr.ph.i.i.i.i.i.i.split

.lr.ph.i.i.i.i.i.i.split:                         ; preds = %.lr.ph.i.i.i.i.i.i.split.preheader, %bb.eo
  %i.ww = phi ptr [ %i.wx, %bb.eo ], [ %.lcssa121718.i.i.i, %.lr.ph.i.i.i.i.i.i.split.preheader ] ; 3 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 4 ; 4 uses
  store i64 %i.wu, ptr %i.we, align 8, !noalias !102109
  %.val2.i.i.i.i.i.i.i11.i = load i32, ptr %i.ww, align 4, !noalias !102109
  br i1 %.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i.i.i3574, label %.lr.ph.i.i.i.i.i.i.split._crit_edge, label %.lr.ph3575

bb.em:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1392) #60
          to label %.noexc.i100 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !102101

.noexc.i100:                                      ; preds = %bb.em
  unreachable

bb.en:                                            ; preds = %.lr.ph3575
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wz, i64 4 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.wy, %i.wv
  br i1 %.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.split._crit_edge, label %.lr.ph3575

.lr.ph3575:                                       ; preds = %.lr.ph.i.i.i.i.i.i.split, %bb.en
  %i.wz = phi ptr [ %i.wy, %bb.en ], [ %.pre1970.a, %.lr.ph.i.i.i.i.i.i.split ] ; 2 uses
  %.val2.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.wz, align 4, !alias.scope !102110, !noalias !102111, !noundef !56
  %i.xa = icmp eq i32 %.val2.i.i.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i11.i
  br i1 %i.xa, label %bb.eo, label %bb.en

bb.eo:                                            ; preds = %.lr.ph3575
  store i64 %.pr, ptr %i.we, align 8, !noalias !102109
  %i.xb = icmp eq ptr %i.wx, %i.wd
  br i1 %i.xb, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB25_6filter6FilterINtNtNtB29_5slice4iter4IterBR_ENCNvNtCskcxRuJ53GpR_9rustworkx12bisimulation20maximum_bisimulations0_0EEE11spec_extendB3S_.exit.i, label %.lr.ph.i.i.i.i.i.i.split

.lr.ph.i.i.i.i.i.i.split._crit_edge:              ; preds = %.lr.ph.i.i.i.i.i.i.split, %bb.en
  store i64 %.pr, ptr %i.we, align 8, !noalias !102109
  %i.xc = load i32, ptr %i.ww, align 4, !noalias !102112, !noundef !56
  %i.xd = icmp samesign ult i64 %i.ws, 2305843009213693952
  call void @llvm.assume(i1 %i.xd)
  %i.xe = load i64, ptr %i.n, align 8, !range !59, !alias.scope !102113, !noalias !102101, !noundef !56
  %i.xf = icmp eq i64 %i.ws, %i.xe
  br i1 %i.xf, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.noexc12.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.split._crit_edge
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.ws, i64 noundef 1, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc12_crit_edge.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !102101

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc12_crit_edge.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.pre.i101 = load ptr, ptr %.sroa.4.0..sroa_idx.i95, align 8, !alias.scope !102113, !noalias !102101
  br label %.noexc12.i

.noexc12.i:                                       ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc12_crit_edge.i, %.lr.ph.i.i.i.i.i.i.split._crit_edge
  %i.xg = phi ptr [ %.pre.i101, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc12_crit_edge.i ], [ %i.wr, %.lr.ph.i.i.i.i.i.i.split._crit_edge ] ; 2 uses
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %i.ws
  store i32 %i.xc, ptr %i.xh, align 4, !noalias !102114
  %i.xi = add nuw nsw i64 %i.ws, 1                ; 3 uses
  store i64 %i.xi, ptr %.sroa.6.0..sroa_idx.i96, align 8, !alias.scope !102113, !noalias !102101
  %i.xj = icmp eq ptr %i.wx, %i.wd
  br i1 %i.xj, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB25_6filter6FilterINtNtNtB29_5slice4iter4IterBR_ENCNvNtCskcxRuJ53GpR_9rustworkx12bisimulation20maximum_bisimulations0_0EEE11spec_extendB3S_.exit.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.em
  %lpad.loopexit.split-lp3772 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i97 = load i64, ptr %i.n, align 8, !noalias !102101 ; 2 uses
  %i.xk = icmp eq i64 %.val.i97, 0
  br i1 %i.xk, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i98

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i98: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %.val8.i = load ptr, ptr %.sroa.4.0..sroa_idx.i95, align 8, !noalias !102101, !nonnull !56, !noundef !56
  %i.xl = shl nuw i64 %.val.i97, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.xl, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102101
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB25_6filter6FilterINtNtNtB29_5slice4iter4IterBR_ENCNvNtCskcxRuJ53GpR_9rustworkx12bisimulation20maximum_bisimulations0_0EEE11spec_extendB3S_.exit.i: ; preds = %.noexc12.i, %bb.eo, %bb.el
  %.sroa.8420.0.copyload422 = phi i64 [ %i.ws, %bb.eo ], [ 1, %bb.el ], [ %i.xi, %.noexc12.i ]
  %.sroa.0415.0.copyload416 = load i64, ptr %i.n, align 8, !noalias !102115
  %.sroa.6417.0.copyload419 = load ptr, ptr %.sroa.4.0..sroa_idx.i95, align 8, !noalias !102115
  br label %.loopexit531

bb.ep:                                            ; preds = %bb.ek, %5
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %bb.ep, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i98, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body105 = phi { ptr, i32 } [ %i.xm, %bb.ep ], [ %lpad.loopexit.split-lp3772, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i98 ], [ %lpad.loopexit.split-lp3772, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vb, i64 noundef %i.uz, i64 noundef range(i64 1, -9223372036854775807) 4) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit

.loopexit531:                                     ; preds = %bb.ej, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB25_6filter6FilterINtNtNtB29_5slice4iter4IterBR_ENCNvNtCskcxRuJ53GpR_9rustworkx12bisimulation20maximum_bisimulations0_0EEE11spec_extendB3S_.exit.i
  %.sroa.8420.0 = phi i64 [ %.sroa.8420.0.copyload422, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB25_6filter6FilterINtNtNtB29_5slice4iter4IterBR_ENCNvNtCskcxRuJ53GpR_9rustworkx12bisimulation20maximum_bisimulations0_0EEE11spec_extendB3S_.exit.i ], [ 0, %bb.ej ]
  %.sroa.6417.0 = phi ptr [ %.sroa.6417.0.copyload419, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB25_6filter6FilterINtNtNtB29_5slice4iter4IterBR_ENCNvNtCskcxRuJ53GpR_9rustworkx12bisimulation20maximum_bisimulations0_0EEE11spec_extendB3S_.exit.i ], [ inttoptr (i64 4 to ptr), %bb.ej ]
  %.sroa.0415.0 = phi i64 [ %.sroa.0415.0.copyload416, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB25_6filter6FilterINtNtNtB29_5slice4iter4IterBR_ENCNvNtCskcxRuJ53GpR_9rustworkx12bisimulation20maximum_bisimulations0_0EEE11spec_extendB3S_.exit.i ], [ 0, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !102101
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vb, i64 noundef %i.uz, i64 noundef range(i64 1, -9223372036854775807) 4) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit107

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit107: ; preds = %bb.eb, %.loopexit531
  %.sroa.0415.02117 = phi i64 [ %.sroa.0415.0, %.loopexit531 ], [ 0, %bb.eb ]
  %.sroa.6417.02116 = phi ptr [ %.sroa.6417.0, %.loopexit531 ], [ inttoptr (i64 4 to ptr), %bb.eb ]
  %.sroa.8420.02115 = phi i64 [ %.sroa.8420.0, %.loopexit531 ], [ 0, %bb.eb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i64 1, ptr %i.ao, align 8
  store i64 1, ptr %i.mh, align 8
  store i64 %.sroa.0415.02117, ptr %i.mi, align 8
  store ptr %.sroa.6417.02116, ptr %.sroa.010.sroa.4.0..sroa_idx, align 8
  store i64 %.sroa.8420.02115, ptr %.sroa.010.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.411.0..sroa_idx, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !102116
  %i.xn = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !102116 ; 28 uses
  %i.xo = icmp eq ptr %i.xn, null
  br i1 %i.xo, label %bb.eq, label %bb.et, !prof !88

bb.eq:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit107
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #61
          to label %.noexc108 unwind label %bb.er

.noexc108:                                        ; preds = %bb.eq
  unreachable

bb.er:                                            ; preds = %bb.eq
  %i.xp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc7RcInnerNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ao) #63
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.xq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.et:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.xn, ptr noundef nonnull align 8 dereferenceable(72) %i.ao, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  store ptr %i.xn, ptr %i.ba, align 8
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xn, i64 40 ; 15 uses
  %i.xs = load i64, ptr %i.xr, align 8, !noundef !56 ; 3 uses
  %i.xt = icmp ult i64 %i.xs, 9223372036854775807
  br i1 %i.xt, label %bb.ev, label %bb.eu, !prof !66

bb.eu:                                            ; preds = %bb.et
  invoke void @_RNvNtCslwFuT2d6ECx_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2573) #61
          to label %bb.do unwind label %bb.ew

bb.ev:                                            ; preds = %bb.et
  %i.xu = add nuw nsw i64 %i.xs, 1
  store i64 %i.xu, ptr %i.xr, align 8
  %i.xv = getelementptr i8, ptr %i.xn, i64 64     ; 3 uses
  %i.xw = load i64, ptr %i.xv, align 8, !noundef !56 ; 2 uses
  %i.xx = icmp ult i64 %i.xw, 1152921504606846976
  call void @llvm.assume(i1 %i.xx)
  %i.xy = icmp samesign ugt i64 %i.xw, 1
  store i64 %i.xs, ptr %i.xr, align 8
  br i1 %i.xy, label %bb.fa, label %bb.ey

bb.ew:                                            ; preds = %bb.eu
  %i.xz = landingpad { ptr, i32 }
          cleanup
  br label %.body114

.body114:                                         ; preds = %bb.fe, %bb.ff, %bb.ew
  %eh.lpad-body115 = phi { ptr, i32 } [ %i.xz, %bb.ew ], [ %i.yn, %bb.ff ], [ %i.yn, %bb.fe ] ; 2 uses
  %i.ya = load i64, ptr %i.xn, align 8, !noalias !102117, !noundef !56
  %i.yb = add i64 %i.ya, -1                       ; 2 uses
  store i64 %i.yb, ptr %i.xn, align 8, !noalias !102117
  %i.yc = icmp eq i64 %i.yb, 0
  br i1 %i.yc, label %bb.ex, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit

bb.ex:                                            ; preds = %.body114
  invoke fastcc void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockE9drop_slowBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ba) #62
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.le, !inline_history !18

bb.ey:                                            ; preds = %bb.ev, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEE8push_mutBX_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.yd = load i64, ptr %i.sg, align 8, !noalias !102118, !noundef !56
  %i.ye = add i64 %i.yd, -1                       ; 2 uses
  store i64 %i.ye, ptr %i.sg, align 8, !noalias !102118
  %i.yf = icmp eq i64 %i.ye, 0
  br i1 %i.yf, label %bb.ez, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEEB1a_.exit113

bb.ez:                                            ; preds = %bb.ey
  invoke fastcc void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockE9drop_slowBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bd) #62
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEEB1a_.exit113 unwind label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEEB1a_.exit119.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !18

bb.fa:                                            ; preds = %bb.ev
  %i.yg = load i64, ptr %i.xn, align 8, !noundef !56 ; 2 uses
  %i.yh = icmp ne i64 %i.yg, 0
  call void @llvm.assume(i1 %i.yh)
  %i.yi = add i64 %i.yg, 1                        ; 2 uses
  store i64 %i.yi, ptr %i.xn, align 8
  %i.yj = icmp eq i64 %i.yi, 0
  br i1 %i.yj, label %bb.fb, label %bb.fc, !prof !60

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.trap()
  unreachable

bb.fc:                                            ; preds = %bb.fa
  call void @llvm.experimental.noalias.scope.decl(metadata !102119)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.xn, ptr %i.m, align 8, !noalias !102119
  %i.yk = load i64, ptr %.sroa.6410.0..sroa_idx, align 8, !alias.scope !102119, !noundef !56 ; 3 uses
  %i.yl = load i64, ptr %i.bh, align 8, !range !59, !alias.scope !102119, !noundef !56
  %i.ym = icmp eq i64 %i.yk, %i.yl
  br i1 %i.ym, label %bb.fd, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEE8push_mutBX_.exit

bb.fd:                                            ; preds = %bb.fc
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEE8grow_oneB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEE8push_mutBX_.exit unwind label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.yn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yo = load i64, ptr %i.xn, align 8, !noalias !102120, !noundef !56
  %i.yp = add i64 %i.yo, -1                       ; 2 uses
  store i64 %i.yp, ptr %i.xn, align 8, !noalias !102120
  %i.yq = icmp eq i64 %i.yp, 0
  br i1 %i.yq, label %bb.ff, label %.body114

bb.ff:                                            ; preds = %bb.fe
  invoke fastcc void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockE9drop_slowBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.m) #62
          to label %.body114 unwind label %bb.fg, !noalias !102119, !inline_history !18

bb.fg:                                            ; preds = %bb.ff
  %i.yr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !102119
  unreachable

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEE8push_mutBX_.exit: ; preds = %bb.fc, %bb.fd
  %i.ys = load ptr, ptr %.sroa.5409.0..sroa_idx, align 8, !alias.scope !102119, !nonnull !56, !noundef !56
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.ys, i64 %i.yk
  store ptr %i.xn, ptr %i.yt, align 8, !noalias !102119
  %i.yu = add i64 %i.yk, 1
  store i64 %i.yu, ptr %.sroa.6410.0..sroa_idx, align 8, !alias.scope !102119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ey

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEEB1a_.exit113: ; preds = %bb.ey, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store ptr %i.ur, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store ptr %i.xn, ptr %i.be, align 8
  %i.yv = load i64, ptr %i.xr, align 8, !noundef !56 ; 3 uses
  %i.yw = icmp ugt i64 %i.yv, 9223372036854775806
  br i1 %i.yw, label %bb.fh, label %bb.fi, !prof !60

bb.fh:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEEB1a_.exit113
  invoke void @_RNvNtCslwFuT2d6ECx_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2574) #61
          to label %bb.do unwind label %.loopexit.split-lp

bb.fi:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEEB1a_.exit113
  %i.yx = add nuw nsw i64 %i.yv, 1
  store i64 %i.yx, ptr %i.xr, align 8
  %i.yy = getelementptr i8, ptr %i.xn, i64 56     ; 2 uses
  %i.yz = load ptr, ptr %i.yy, align 8, !nonnull !56, !noundef !56 ; 2 uses
  %i.za = load i64, ptr %i.xv, align 8, !noundef !56 ; 2 uses
  %.idx518 = shl nuw nsw i64 %i.za, 3
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 %.idx518
  %i.zc = icmp eq i64 %i.za, 0
  br i1 %i.zc, label %.loopexit529, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.fi, %_RNCNvNtCskcxRuJ53GpR_9rustworkx12bisimulation20maximum_bisimulations1_0B5_.exit.i
  %.sroa.0.06.i = phi ptr [ %i.zd, %_RNCNvNtCskcxRuJ53GpR_9rustworkx12bisimulation20maximum_bisimulations1_0B5_.exit.i ], [ %i.yz, %bb.fi ] ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 8 ; 2 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.06.i, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ze = load i64, ptr %i.xn, align 8, !noundef !56 ; 2 uses
  %i.zf = icmp ne i64 %i.ze, 0
  call void @llvm.assume(i1 %i.zf)
  %i.zg = add i64 %i.ze, 1                        ; 2 uses
  store i64 %i.zg, ptr %i.xn, align 8
  %i.zh = icmp eq i64 %i.zg, 0
  br i1 %i.zh, label %bb.fj, label %bb.fk, !prof !60
end_hunk_0
begin_hunk_1_@_RNvNtCskcxRuJ53GpR_9rustworkx12bisimulation38split_blocks_with_grouped_counterimage:bb.a
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body41

bb.x:                                             ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ck, i64 64 ; 6 uses
  %i.eg = load i64, ptr %i.ef, align 8, !noundef !56 ; 2 uses
  %i.eh = icmp ult i64 %i.eg, 1152921504606846976
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = load i64, ptr %i.du, align 8, !noundef !56 ; 2 uses
  %i.ej = icmp ne i64 %i.ei, 0
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = add i64 %i.ei, 1                        ; 2 uses
  store i64 %i.ek, ptr %i.du, align 8
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.y, label %bb.z, !prof !60

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.du, ptr %i.f, align 8
  %i.em = load i64, ptr %i.dy, align 8, !noundef !56
  %.not.i40 = icmp eq i64 %i.em, 0
  br i1 %.not.i40, label %bb.aa, label %bb.af, !prof !66

bb.aa:                                            ; preds = %bb.z
  store i64 -1, ptr %i.dy, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.ck, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102652)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.du, ptr %i.e, align 8, !noalias !102652
  %i.eo = load i64, ptr %i.ef, align 8, !alias.scope !102652, !noundef !56 ; 3 uses
  %i.ep = load i64, ptr %i.en, align 8, !range !59, !alias.scope !102652, !noundef !56
  %i.eq = icmp eq i64 %i.eo, %i.ep
  br i1 %i.eq, label %bb.ab, label %bb.al

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcINtNtCslwFuT2d6ECx_4core4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEE8grow_oneB1F_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %bb.al unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.er = landingpad { ptr, i32 }
          cleanup
  %i.es = load i64, ptr %i.du, align 8, !noalias !102653, !noundef !56
  %i.et = add i64 %i.es, -1                       ; 2 uses
  store i64 %i.et, ptr %i.du, align 8, !noalias !102653
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtCslwFuT2d6ECx_4core4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEE9drop_slowB1i_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.e) #62
          to label %bb.ag unwind label %bb.ae, !noalias !102652, !inline_history !23

bb.ae:                                            ; preds = %bb.ad
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !102652
  unreachable

bb.af:                                            ; preds = %bb.z
  invoke void @_RNvNtCslwFuT2d6ECx_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1521) #61
          to label %bb.ai unwind label %bb.aj

bb.ag:                                            ; preds = %bb.ad, %bb.ac
  %i.ew = load i64, ptr %i.dy, align 8, !noundef !56
  %i.ex = add i64 %i.ew, 1
  store i64 %i.ex, ptr %i.dy, align 8
  br label %.body41

bb.ah:                                            ; preds = %bb.ak
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.ai:                                            ; preds = %bb.af
  unreachable

bb.aj:                                            ; preds = %bb.af
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load i64, ptr %i.du, align 8, !noalias !102654, !noundef !56
  %i.fb = add i64 %i.fa, -1                       ; 2 uses
  store i64 %i.fb, ptr %i.du, align 8, !noalias !102654
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %bb.ak, label %.body41

bb.ak:                                            ; preds = %bb.aj
  invoke fastcc void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtCslwFuT2d6ECx_4core4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEE9drop_slowB1i_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.f) #62
          to label %.body41 unwind label %bb.ah, !inline_history !23

bb.al:                                            ; preds = %bb.ab, %bb.aa
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ck, i64 56 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !102652, !nonnull !56, !noundef !56
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.eo
  store ptr %i.du, ptr %i.ff, align 8, !noalias !102652
  %i.fg = add i64 %i.eo, 1
  store i64 %i.fg, ptr %i.ef, align 8, !alias.scope !102652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fh = load i64, ptr %i.dy, align 8, !noundef !56
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.dy, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.fj = icmp eq i64 %i.eg, 1
  br i1 %i.fj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fk = load i64, ptr %i.ck, align 8, !noundef !56 ; 2 uses
  %i.fl = icmp ne i64 %i.fk, 0
  tail call void @llvm.assume(i1 %i.fl)
  %i.fm = add i64 %i.fk, 1                        ; 2 uses
  store i64 %i.fm, ptr %i.ck, align 8
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %bb.ao, label %bb.ap, !prof !60

bb.an:                                            ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEE8push_mutBX_.exit, %bb.al
  %i.fo = load ptr, ptr %i.cn, align 8, !nonnull !56, !noundef !56 ; 2 uses
  %i.fp = load i64, ptr %i.co, align 8, !noundef !56 ; 2 uses
  %.idx254 = shl nuw nsw i64 %i.fp, 2
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.idx254
  %i.fr = icmp eq i64 %i.fp, 0
  br i1 %i.fr, label %._crit_edge, label %.lr.ph

bb.ao:                                            ; preds = %bb.am
  tail call void @llvm.trap()
  unreachable

bb.ap:                                            ; preds = %bb.am
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102655)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ck, ptr %i.d, align 8, !noalias !102655
  %i.fs = load i64, ptr %i.t, align 8, !alias.scope !102655, !noundef !56 ; 3 uses
  %i.ft = load i64, ptr %i.l, align 8, !range !59, !alias.scope !102655, !noundef !56
  %i.fu = icmp eq i64 %i.fs, %i.ft
  br i1 %i.fu, label %bb.aq, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEE8push_mutBX_.exit

bb.aq:                                            ; preds = %bb.ap
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEE8grow_oneB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEE8push_mutBX_.exit unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load i64, ptr %i.ck, align 8, !noalias !102656, !noundef !56
  %i.fx = add i64 %i.fw, -1                       ; 2 uses
  store i64 %i.fx, ptr %i.ck, align 8, !noalias !102656
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %bb.as, label %.body41

bb.as:                                            ; preds = %bb.ar
  invoke fastcc void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockE9drop_slowBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.d) #62
          to label %.body41 unwind label %bb.at, !noalias !102655, !inline_history !18

bb.at:                                            ; preds = %bb.as
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !102655
  unreachable

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEE8push_mutBX_.exit: ; preds = %bb.ap, %bb.aq
  %i.ga = load ptr, ptr %i.s, align 8, !alias.scope !102655, !nonnull !56, !noundef !56
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.fs
  store ptr %i.ck, ptr %i.gb, align 8, !noalias !102655
  %i.gc = add i64 %i.fs, 1
  store i64 %i.gc, ptr %i.t, align 8, !alias.scope !102655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.an

.lr.ph:                                           ; preds = %bb.an, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEEB1v_.exit54
  %.sroa.04.0245 = phi ptr [ %i.gd, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEEB1v_.exit54 ], [ %i.fo, %bb.an ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.04.0245, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ge = load i64, ptr %i.du, align 8, !noundef !56 ; 2 uses
  %i.gf = icmp ne i64 %i.ge, 0
  tail call void @llvm.assume(i1 %i.gf)
  %i.gg = add i64 %i.ge, 1                        ; 2 uses
  store i64 %i.gg, ptr %i.du, align 8
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %bb.bb, label %bb.bc, !prof !60

._crit_edge:                                      ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEEB1v_.exit54, %bb.an
  %i.gi = getelementptr inbounds i8, ptr %i.bt, i64 -48
  %i.gj = load ptr, ptr %i.gi, align 8, !nonnull !56, !noundef !56 ; 2 uses
  %i.gk = getelementptr inbounds i8, ptr %i.bt, i64 -40
  %i.gl = load i64, ptr %i.gk, align 8, !noundef !56 ; 2 uses
  %.idx = shl nuw nsw i64 %i.gl, 2
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 %.idx ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !102657
  %i.gn = icmp eq i64 %i.gl, 0
  br i1 %i.gn, label %.loopexit39, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %._crit_edge
  %i.go = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 8 uses
  %.promoted = load i64, ptr %i.go, align 8, !noalias !102658 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.du, i64 32 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.du, i64 40 ; 2 uses
  %i.gr = icmp ult i64 %.promoted, 9223372036854775807
  br i1 %i.gr, label %.lr.ph.i.i.i.i.preheader.split, label %.invoke, !prof !66

.lr.ph.i.i.i.i.preheader.split:                   ; preds = %.lr.ph.i.i.i.i.preheader
  %.pre = load ptr, ptr %i.gp, align 8, !noalias !102658 ; 2 uses
  %.pre419 = load i64, ptr %i.gq, align 8, !noalias !102658 ; 2 uses
  %2 = add nuw nsw i64 %.promoted, 1
  %.idx803 = shl nuw nsw i64 %.pre419, 2
  %3 = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx803
  %.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i787 = icmp eq i64 %.pre419, 0
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader.split, %bb.av
  %i.gs = phi ptr [ %i.gt, %bb.av ], [ %i.gj, %.lr.ph.i.i.i.i.preheader.split ] ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4 ; 4 uses
  store i64 %2, ptr %i.go, align 8, !noalias !102658
  %.val2.i.i.i.i.i.i = load i32, ptr %i.gs, align 4, !noalias !102658
  br i1 %.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i787, label %._crit_edge792, label %.lr.ph791

.invoke:                                          ; preds = %bb.u, %.lr.ph.i.i.i.i.preheader
  %i.gu = phi ptr [ @1395, %.lr.ph.i.i.i.i.preheader ], [ @1522, %bb.u ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gu) #60
          to label %.cont unwind label %bb.w

.cont:                                            ; preds = %.invoke
  unreachable

bb.au:                                            ; preds = %.lr.ph791
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gw, i64 4 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i = icmp eq ptr %i.gv, %3
  br i1 %.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i, label %._crit_edge792, label %.lr.ph791

.lr.ph791:                                        ; preds = %.lr.ph.i.i.i.i, %bb.au
  %i.gw = phi ptr [ %i.gv, %bb.au ], [ %.pre, %.lr.ph.i.i.i.i ] ; 2 uses
  %.val2.i.i.i.i.i.i.i.i = load i32, ptr %i.gw, align 4, !alias.scope !102659, !noalias !102660, !noundef !56
  %i.gx = icmp eq i32 %.val2.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i
  br i1 %i.gx, label %bb.av, label %bb.au

bb.av:                                            ; preds = %.lr.ph791
  store i64 %.promoted, ptr %i.go, align 8, !noalias !102658
  %i.gy = icmp eq ptr %i.gt, %i.gm
  br i1 %i.gy, label %.loopexit39, label %.lr.ph.i.i.i.i

._crit_edge792:                                   ; preds = %.lr.ph.i.i.i.i, %bb.au
  store i64 %.promoted, ptr %i.go, align 8, !noalias !102658
  %i.gz = load i32, ptr %i.gs, align 4, !noalias !102661, !noundef !56
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !102662
  %i.ha = tail call noundef align 4 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102662 ; 4 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %._crit_edge792
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 4, i64 16) #61
          to label %.noexc50 unwind label %bb.w

.noexc50:                                         ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %._crit_edge792
  store i32 %i.gz, ptr %i.ha, align 4, !noalias !102657
  store i64 4, ptr %i.c, align 8, !noalias !102657
  store ptr %i.ha, ptr %.sroa.4.0..sroa_idx.i45, align 8, !noalias !102657
  store i64 1, ptr %.sroa.6.0..sroa_idx.i46, align 8, !noalias !102657
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102664)
  %i.hc = icmp eq ptr %i.gt, %i.gm
  br i1 %i.hc, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB25_6filter6FilterINtNtNtB29_5slice4iter4IterBR_ENCNvNtCskcxRuJ53GpR_9rustworkx12bisimulation38split_blocks_with_grouped_counterimage0EEE11spec_extendB3S_.exit.i, label %.lr.ph.i.i.i.i.i.i47

.lr.ph.i.i.i.i.i.i47:                             ; preds = %bb.ax, %.noexc12.i
  %i.hd = phi ptr [ %i.hs, %.noexc12.i ], [ %i.ha, %bb.ax ]
  %i.he = phi i64 [ %i.hu, %.noexc12.i ], [ 1, %bb.ax ] ; 6 uses
  %.lcssa121718.i.i.i = phi ptr [ %i.hj, %.noexc12.i ], [ %i.gt, %bb.ax ]
  %.pr = load i64, ptr %i.go, align 8, !noalias !102665 ; 4 uses
  %i.hf = icmp ult i64 %.pr, 9223372036854775807
  %i.hg = add nuw nsw i64 %.pr, 1
  br i1 %i.hf, label %.lr.ph.i.i.i.i.i.i47.split.preheader, label %bb.ay, !prof !66

.lr.ph.i.i.i.i.i.i47.split.preheader:             ; preds = %.lr.ph.i.i.i.i.i.i47
  %.pre.a = load ptr, ptr %i.gp, align 8, !noalias !102665 ; 2 uses
  %.pre419.a = load i64, ptr %i.gq, align 8, !noalias !102665 ; 2 uses
  %.idx808 = shl nuw nsw i64 %.pre419.a, 2
  %i.hh = getelementptr inbounds nuw i8, ptr %.pre.a, i64 %.idx808
  %.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i.i.i797 = icmp eq i64 %.pre419.a, 0
  br label %.lr.ph.i.i.i.i.i.i47.split

.lr.ph.i.i.i.i.i.i47.split:                       ; preds = %.lr.ph.i.i.i.i.i.i47.split.preheader, %bb.ba
  %i.hi = phi ptr [ %i.hj, %bb.ba ], [ %.lcssa121718.i.i.i, %.lr.ph.i.i.i.i.i.i47.split.preheader ] ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4 ; 4 uses
  store i64 %i.hg, ptr %i.go, align 8, !noalias !102665
  %.val2.i.i.i.i.i.i.i11.i = load i32, ptr %i.hi, align 4, !noalias !102665
  br i1 %.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i.i.i797, label %.lr.ph.i.i.i.i.i.i47.split._crit_edge, label %.lr.ph798

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i.i47
  invoke void @_RNvNtCslwFuT2d6ECx_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1395) #60
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !102657

.noexc.i:                                         ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %.lr.ph798
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hl, i64 4 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hk, %i.hh
  br i1 %.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i47.split._crit_edge, label %.lr.ph798

.lr.ph798:                                        ; preds = %.lr.ph.i.i.i.i.i.i47.split, %bb.az
  %i.hl = phi ptr [ %i.hk, %bb.az ], [ %.pre.a, %.lr.ph.i.i.i.i.i.i47.split ] ; 2 uses
  %.val2.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.hl, align 4, !alias.scope !102666, !noalias !102667, !noundef !56
  %i.hm = icmp eq i32 %.val2.i.i.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i11.i
  br i1 %i.hm, label %bb.ba, label %bb.az

bb.ba:                                            ; preds = %.lr.ph798
  store i64 %.pr, ptr %i.go, align 8, !noalias !102665
  %i.hn = icmp eq ptr %i.hj, %i.gm
  br i1 %i.hn, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB25_6filter6FilterINtNtNtB29_5slice4iter4IterBR_ENCNvNtCskcxRuJ53GpR_9rustworkx12bisimulation38split_blocks_with_grouped_counterimage0EEE11spec_extendB3S_.exit.i, label %.lr.ph.i.i.i.i.i.i47.split

.lr.ph.i.i.i.i.i.i47.split._crit_edge:            ; preds = %.lr.ph.i.i.i.i.i.i47.split, %bb.az
  store i64 %.pr, ptr %i.go, align 8, !noalias !102665
  %i.ho = load i32, ptr %i.hi, align 4, !noalias !102668, !noundef !56
  %i.hp = icmp samesign ult i64 %i.he, 2305843009213693952
  tail call void @llvm.assume(i1 %i.hp)
  %i.hq = load i64, ptr %i.c, align 8, !range !59, !alias.scope !102669, !noalias !102657, !noundef !56
  %i.hr = icmp eq i64 %i.he, %i.hq
  br i1 %i.hr, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.noexc12.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i47.split._crit_edge
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.he, i64 noundef 1, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc12_crit_edge.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !102657

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc12_crit_edge.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.pre.i48 = load ptr, ptr %.sroa.4.0..sroa_idx.i45, align 8, !alias.scope !102669, !noalias !102657
  br label %.noexc12.i

.noexc12.i:                                       ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc12_crit_edge.i, %.lr.ph.i.i.i.i.i.i47.split._crit_edge
  %i.hs = phi ptr [ %.pre.i48, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc12_crit_edge.i ], [ %i.hd, %.lr.ph.i.i.i.i.i.i47.split._crit_edge ] ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.he
  store i32 %i.ho, ptr %i.ht, align 4, !noalias !102670
  %i.hu = add nuw nsw i64 %i.he, 1                ; 3 uses
  store i64 %i.hu, ptr %.sroa.6.0..sroa_idx.i46, align 8, !alias.scope !102669, !noalias !102657
  %i.hv = icmp eq ptr %i.hj, %i.gm
  br i1 %i.hv, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB25_6filter6FilterINtNtNtB29_5slice4iter4IterBR_ENCNvNtCskcxRuJ53GpR_9rustworkx12bisimulation38split_blocks_with_grouped_counterimage0EEE11spec_extendB3S_.exit.i, label %.lr.ph.i.i.i.i.i.i47

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.ay
  %lpad.loopexit.split-lp814 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load i64, ptr %i.c, align 8, !noalias !102657 ; 2 uses
  %i.hw = icmp eq i64 %.val.i, 0
  br i1 %i.hw, label %.body41, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %.val8.i = load ptr, ptr %.sroa.4.0..sroa_idx.i45, align 8, !noalias !102657, !nonnull !56, !noundef !56
  %i.hx = shl nuw i64 %.val.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.hx, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !102657
  br label %.body41

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB25_6filter6FilterINtNtNtB29_5slice4iter4IterBR_ENCNvNtCskcxRuJ53GpR_9rustworkx12bisimulation38split_blocks_with_grouped_counterimage0EEE11spec_extendB3S_.exit.i: ; preds = %.noexc12.i, %bb.ba, %bb.ax
  %.sroa.9.0.copyload21 = phi i64 [ %i.he, %bb.ba ], [ 1, %bb.ax ], [ %i.hu, %.noexc12.i ]
  %.sroa.011.0.copyload13 = load i64, ptr %i.c, align 8, !noalias !102671
  %.sroa.7.0.copyload17 = load ptr, ptr %.sroa.4.0..sroa_idx.i45, align 8, !noalias !102671
  br label %.loopexit39

bb.bb:                                            ; preds = %.lr.ph
  tail call void @llvm.trap()
  unreachable

bb.bc:                                            ; preds = %.lr.ph
  store ptr %i.du, ptr %i.i, align 8
  %i.hy = load i32, ptr %.sroa.04.0245, align 4, !noundef !56
  %i.hz = zext i32 %i.hy to i64                   ; 3 uses
  %.not = icmp ugt i64 %.16.val, %i.hz
  br i1 %.not, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %.8.val, i64 %i.hz ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102673)
  %i.ib = load ptr, ptr %i.ia, align 8, !alias.scope !102674, !nonnull !56, !noundef !56 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !noalias !102674, !noundef !56
  %i.id = add i64 %i.ic, -1                       ; 2 uses
  store i64 %i.id, ptr %i.ib, align 8, !noalias !102674
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %bb.be, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEEB1v_.exit54

bb.be:                                            ; preds = %bb.bd
  invoke fastcc void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtCslwFuT2d6ECx_4core4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEE9drop_slowB1i_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ia) #62
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEEB1v_.exit54 unwind label %.thread, !inline_history !23

bb.bf:                                            ; preds = %bb.bc
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.hz, i64 noundef %.16.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2578) #61
          to label %bb.i unwind label %bb.bg

.thread:                                          ; preds = %bb.be
  %i.if = landingpad { ptr, i32 }
          cleanup
  store ptr %i.du, ptr %i.ia, align 8
  br label %.body41

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEEEB1v_.exit54: ; preds = %bb.bd, %bb.be
  store ptr %i.du, ptr %i.ia, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ig = icmp eq ptr %i.gd, %i.fq
  br i1 %i.ig, label %._crit_edge, label %.lr.ph

bb.bg:                                            ; preds = %bb.bf
  %i.ih = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ii = load i64, ptr %i.du, align 8, !noalias !102675, !noundef !56
  %i.ij = add i64 %i.ii, -1                       ; 2 uses
  store i64 %i.ij, ptr %i.du, align 8, !noalias !102675
  %i.ik = icmp eq i64 %i.ij, 0
  br i1 %i.ik, label %bb.bh, label %.body41

bb.bh:                                            ; preds = %bb.bg
  invoke fastcc void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtCslwFuT2d6ECx_4core4cell7RefCellNtNtCskcxRuJ53GpR_9rustworkx12bisimulation9FineBlockEE9drop_slowB1i_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.i) #62
          to label %.body41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCskcxRuJ53GpR_9rustworkx12bisimulation17CounterImageGroupEE9next_implKb0_EB2k_.exit.i.i.i.i.i80, %bb.bh, %bb.v, %bb.k, %bb.cu, %bb.ct, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcNtNtCskcxRuJ53GpR_9rustworkx12bisimulation11CoarseBlockEEB1a_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

.loopexit39:                                      ; preds = %bb.av, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB25_6filter6FilterINtNtNtB29_5slice4iter4IterBR_ENCNvNtCskcxRuJ53GpR_9rustworkx12bisimulation38split_blocks_with_grouped_counterimage0EEE11spec_extendB3S_.exit.i, %._crit_edge
  %.sroa.9.0 = phi i64 [ %.sroa.9.0.copyload21, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB25_6filter6FilterINtNtNtB29_5slice4iter4IterBR_ENCNvNtCskcxRuJ53GpR_9rustworkx12bisimulation38split_blocks_with_grouped_counterimage0EEE11spec_extendB3S_.exit.i ], [ 0, %._crit_edge ], [ 0, %bb.av ]
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload17, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB25_6filter6FilterINtNtNtB29_5slice4iter4IterBR_ENCNvNtCskcxRuJ53GpR_9rustworkx12bisimulation38split_blocks_with_grouped_counterimage0EEE11spec_extendB3S_.exit.i ], [ inttoptr (i64 4 to ptr), %._crit_edge ], [ inttoptr (i64 4 to ptr), %bb.av ] ; 3 uses
  %.sroa.011.0 = phi i64 [ %.sroa.011.0.copyload13, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied6CopiedINtNtB25_6filter6FilterINtNtNtB29_5slice4iter4IterBR_ENCNvNtCskcxRuJ53GpR_9rustworkx12bisimulation38split_blocks_with_grouped_counterimage0EEE11spec_extendB3S_.exit.i ], [ 0, %._crit_edge ], [ 0, %bb.av ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !102657
  %i.il = load ptr, ptr %i.bv, align 8, !nonnull !56, !noundef !56 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16 ; 4 uses
  %i.in = load i64, ptr %i.im, align 8, !noundef !56
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %bb.bi, label %bb.bj, !prof !66

bb.bi:                                            ; preds = %.loopexit39
  store i64 -1, ptr %i.im, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 24 ; 2 uses
  %.val26 = load i64, ptr %i.ip, align 8          ; 2 uses
  %i.iq = getelementptr i8, ptr %i.il, i64 32     ; 2 uses
  %i.ir = icmp eq i64 %.val26, 0
  br i1 %i.ir, label %bb.bk, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %bb.bi
  %.val27 = load ptr, ptr %i.iq, align 8, !nonnull !56, !noundef !56
  %i.is = shl nuw i64 %.val26, 2
end_hunk_1
begin_hunk_2_@_RNvNtCskcxRuJ53GpR_9rustworkx8geometry38___pyfunction_hyperbolic_greedy_routing:bb.a
  %i.bw = icmp ugt i64 %.val102.i, %i.bv
  br i1 %i.bw, label %_RNvMsd_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraph8has_node.exit.i, label %_RNvMsd_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraph8has_node.exit.thread.i

bb.q:                                             ; preds = %bb.o
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !143440
  %i.bx = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !143440 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %.invoke.i, label %bb.ay, !prof !88

bb.r:                                             ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.thread150.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit54.i.i, %._crit_edge.i.i, %.invoke.i, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.x
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvMsd_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraph8has_node.exit.i: ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.val101.i, i64 %i.bv ; 4 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !143440, !noundef !56
  %.not.i.i.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.not.i, label %_RNvMsd_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraph8has_node.exit.thread.i, label %bb.s

_RNvMsd_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraph8has_node.exit.thread.i: ; preds = %_RNvMsd_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraph8has_node.exit109.i, %bb.s, %_RNvMsd_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraph8has_node.exit.i, %bb.p
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !143440
  %i.cc = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !143440 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %.invoke.i, label %bb.u, !prof !88

bb.s:                                             ; preds = %_RNvMsd_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraph8has_node.exit.i
  %i.ce = and i64 %i.bm, 4294967295               ; 5 uses
  %i.cf = icmp ugt i64 %.val102.i, %i.ce
  br i1 %i.cf, label %_RNvMsd_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraph8has_node.exit109.i, label %_RNvMsd_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraph8has_node.exit.thread.i

_RNvMsd_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraph8has_node.exit109.i: ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %.val101.i, i64 %i.ce
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !143440, !noundef !56
  %.not.i.i108.not.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i108.not.i, label %_RNvMsd_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraph8has_node.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %_RNvMsd_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraph8has_node.exit109.i
  %.not.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i, label %bb.x, label %bb.w

bb.u:                                             ; preds = %_RNvMsd_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraph8has_node.exit.thread.i
  store ptr @3130, ptr %i.cc, align 8, !noalias !143440
  br label %bb.v

bb.v:                                             ; preds = %bb.ay, %bb.ax, %bb.u
  %.sink334.i = phi ptr [ %i.bx, %bb.ay ], [ %i.de, %bb.ax ], [ %i.cc, %bb.u ] ; 2 uses
  %.sink332.i = phi i64 [ 51, %bb.ay ], [ 88, %bb.ax ], [ 57, %bb.u ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sink334.i, i64 8
  store i64 %.sink332.i, ptr %i.ci, align 8, !noalias !143440
  call void @llvm.experimental.noalias.scope.decl(metadata !143441)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !143442, !nonnull !56, !noundef !56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143443)
  %i.ck = icmp eq i64 %i.bo, 0
  br i1 %i.ck, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.012.i.i.i.i = phi i64 [ %i.cm, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ 0, %bb.v ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.0.012.i.i.i.i ; 2 uses
  %i.cm = add nuw nsw i64 %.sroa.0.012.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.cl, align 8, !alias.scope !143443, !noalias !143444 ; 2 uses
  %i.cn = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.cn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.co = getelementptr i8, ptr %i.cl, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.co, align 8, !alias.scope !143443, !noalias !143444, !nonnull !56, !noundef !56
  %i.cp = shl nuw i64 %.val8.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.cp, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !143445
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cq = icmp eq i64 %i.cm, %i.bo
  br i1 %i.cq, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.v
  %.val2.i.i = load i64, ptr %i.x, align 8, !alias.scope !143442 ; 2 uses
  %i.cr = icmp eq i64 %.val2.i.i, 0
  br i1 %i.cr, label %bb.az, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.cs = mul nuw i64 %.val2.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.cs, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !143444
  br label %bb.az

bb.w:                                             ; preds = %bb.t
  %i.ct = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !143439, !nonnull !56, !noundef !56 ; 9 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !143440, !noundef !56 ; 3 uses
  %i.cx = icmp ult i64 %i.cw, 1152921504606846976
  call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp samesign ult i64 %i.cw, 2
  br i1 %i.cy, label %.loopexit.i, label %.lr.ph

bb.x:                                             ; preds = %bb.t
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3131) #61
          to label %bb.y unwind label %bb.r, !noalias !143440

bb.y:                                             ; preds = %bb.x
  unreachable

.lr.ph:                                           ; preds = %bb.w
  %.idx = mul nuw nsw i64 %i.bo, 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.idx
  br label %bb.aa

bb.z:                                             ; preds = %bb.aa
  %i.da = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 2 uses
  %.not3.not.not.i.not.i = icmp eq ptr %i.da, %i.cz
  br i1 %.not3.not.not.i.not.i, label %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterINtNtCs87CvPiUlf0m_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routing0EB2f_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.z
  %i.db = phi ptr [ %i.cu, %.lr.ph ], [ %i.da, %bb.z ] ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %.val2.i110.i = load i64, ptr %i.dc, align 8, !noalias !143446, !noundef !56 ; 2 uses
  %i.dd = icmp ult i64 %.val2.i110.i, 1152921504606846976
  call void @llvm.assume(i1 %i.dd)
  %.not.i.i = icmp eq i64 %.val2.i110.i, %i.cw
  br i1 %.not.i.i, label %bb.z, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.aa, %bb.w
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !143440
  %i.de = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !143440 ; 3 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %.invoke.i, label %bb.ax, !prof !88

_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterINtNtCs87CvPiUlf0m_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routing0EB2f_.exit.i: ; preds = %bb.z
  %i.dg = trunc i64 %i.bf to i32                  ; 7 uses
  %i.dh = trunc i64 %i.bm to i32                  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143447)
  %i.di = icmp eq i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.ae, label %.lr.ph282

.lr.ph282:                                        ; preds = %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterINtNtCs87CvPiUlf0m_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routing0EB2f_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !143448
  %.idx283 = shl nuw nsw i64 %.val102.i, 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.val101.i, i64 %.idx283
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ac
  %.not.i.i.i.i.i = icmp eq ptr %.val101.i, %i.dl
  br i1 %.not.i.i.i.i.i, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph282, %bb.ab
  %i.dk = phi ptr [ %i.dj, %.lr.ph282 ], [ %i.dl, %bb.ab ]
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -16 ; 4 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.dl, align 8, !noalias !143449, !noundef !56
  %.not.i.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.ab, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i: ; preds = %bb.ac
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %.val101.i to i64
  %i.do = sub nuw i64 %i.dm, %i.dn
  %i.dp = lshr exact i64 %i.do, 4
  %i.dq = and i64 %i.dp, 4294967295
  %i.dr = add nuw nsw i64 %i.dq, 1
  br label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ab, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ %i.dr, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i ], [ 0, %bb.ab ]
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %.sroa.02.0.i.i.i.i.i.i)
          to label %.noexc115.i unwind label %bb.r, !noalias !143440

.noexc115.i:                                      ; preds = %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !143448
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !143448
  %i.ds = call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !143448 ; 3 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.ad, label %.lr.ph.i.i, !prof !88

bb.ad:                                            ; preds = %.noexc115.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #61
          to label %.noexc.i.i unwind label %bb.af, !noalias !143448

.noexc.i.i:                                       ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterINtNtCs87CvPiUlf0m_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routing0EB2f_.exit.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !143448
  %i.du = call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !143448 ; 4 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %.invoke.i, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit42.i.i, !prof !88

.invoke.i:                                        ; preds = %bb.ae, %.loopexit.i, %_RNvMsd_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraph8has_node.exit.thread.i, %bb.q
  %i.dw = phi i64 [ 8, %.loopexit.i ], [ 8, %_RNvMsd_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraph8has_node.exit.thread.i ], [ 4, %bb.ae ], [ 8, %bb.q ]
  %i.dx = phi i64 [ 16, %.loopexit.i ], [ 16, %_RNvMsd_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraph8has_node.exit.thread.i ], [ 4, %bb.ae ], [ 16, %bb.q ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef %i.dw, i64 noundef %i.dx) #61
          to label %.cont.i unwind label %bb.r, !noalias !143440

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit42.i.i: ; preds = %bb.ae
  store i32 %i.dg, ptr %i.du, align 4, !noalias !143448
  %i.dy = invoke fastcc noundef double @_RINvNtCskcxRuJ53GpR_9rustworkx8geometry4distINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1S_5types3any5PyAnyEB1N_NtBN_10UndirectedEEB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cu, i64 noundef %i.bo, i32 noundef %i.dg, i32 noundef %i.dg)
          to label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.thread150.i unwind label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit56.i.i, !noalias !143448

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.af
  %.pn22.i.i = phi { ptr, i32 } [ %i.dz, %bb.af ], [ %lpad.loopexit.split-lp270, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp270, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ]
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.au, !noalias !143448

bb.af:                                            ; preds = %bb.ad
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i

.lr.ph.i.i:                                       ; preds = %.noexc115.i
  store i32 %i.dg, ptr %i.ds, align 4, !noalias !143448
  store i64 1, ptr %i.d, align 8, !noalias !143448
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr %i.ds, ptr %i.ea, align 8, !noalias !143448
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 1, ptr %i.eb, align 8, !noalias !143448
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !143450, !nonnull !56 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !143450 ; 4 uses
  %i.eh = icmp samesign ugt i64 %i.bo, %i.ce
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.ce ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  br i1 %i.eh, label %.lr.ph.i.i.split.us, label %.lr.ph.i.i.split

.lr.ph.i.i.split.us:                              ; preds = %.lr.ph.i.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.us
  %.sroa.01.0129.i.i.us = phi double [ %i.hx, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.us ], [ 0.000000e+00, %.lr.ph.i.i ]
  %.sroa.513.0128.i.i.us = phi double [ %.sroa.513.1.i.us.i.us, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.us ], [ undef, %.lr.ph.i.i ]
  %.sroa.0.0127.i.i.us = phi i32 [ %.sroa.03.0.i.us.i.us, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.us ], [ %i.dg, %.lr.ph.i.i ] ; 4 uses
  %.val36.i.i.us = load i64, ptr %i.ec, align 8, !noalias !143448, !noundef !56
  %i.el = zext i32 %.sroa.0.0127.i.i.us to i64    ; 6 uses
  %i.em = icmp ugt i64 %.val36.i.i.us, %i.el
  br i1 %i.em, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i.us, label %.split.us

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i.us: ; preds = %.lr.ph.i.i.split.us
  %.val35.i.i.us = load ptr, ptr %i.e, align 8, !noalias !143448, !nonnull !56, !noundef !56
  %i.en = lshr i64 %i.el, 6
  %i.eo = and i64 %i.el, 63                       ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.val35.i.i.us, i64 %i.en ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !143448, !noundef !56 ; 2 uses
  %i.er = lshr i64 %i.eq, %i.eo
  %i.es = trunc i64 %i.er to i1
  br i1 %i.es, label %.critedge.i, label %bb.ag

bb.ag:                                            ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !143451
  %i.et = shl nuw i64 1, %i.eo
  %i.eu = or i64 %i.eq, %i.et
  store i64 %i.eu, ptr %i.ep, align 8, !noalias !143452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !143451
  %i.ev = icmp ugt i64 %.val102.i, %i.el
  br i1 %i.ev, label %bb.ah, label %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.preheader

bb.ah:                                            ; preds = %bb.ag
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %.val101.i, i64 %i.el ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !143453, !noundef !56
  %.not.i.i.i.i.i.i.us = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i.i.i.us, label %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.preheader, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.us

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.us: ; preds = %bb.ah
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.us = load i32, ptr %i.ey, align 8, !noalias !143453
  %.sroa.5.0..sroa_idx.i.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %.sroa.5.0.copyload.i.i.i.i.i.us = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.us, align 4, !noalias !143453
  br label %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.preheader

_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.preheader: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.us, %bb.ah, %bb.ag
  %.sroa.672.0.i.us.i.us.ph = phi i32 [ -1, %bb.ag ], [ %.sroa.0.0.copyload.i.i.i.i.i.us, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.us ], [ -1, %bb.ah ]
  %.sroa.9.0.i.us.i.us.ph = phi i32 [ -1, %bb.ag ], [ %.sroa.5.0.copyload.i.i.i.i.i.us, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.us ], [ -1, %bb.ah ]
  br label %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us

_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us: ; preds = %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.backedge, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.preheader
  %.sroa.672.0.i.us.i.us = phi i32 [ %.sroa.672.0.i.us.i.us.ph, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.preheader ], [ %.sroa.672.1.ph.i.us.i.us, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.backedge ] ; 2 uses
  %.sroa.9.0.i.us.i.us = phi i32 [ %.sroa.9.0.i.us.i.us.ph, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.preheader ], [ %.sroa.9.2.ph.i.us.i.us, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.backedge ] ; 2 uses
  %.sroa.513.1.i.us.i.us = phi double [ %.sroa.513.0128.i.i.us, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.preheader ], [ %.sroa.513.1.i.us.i.us.be, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.backedge ] ; 3 uses
  %i.ez = phi i1 [ true, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.preheader ], [ false, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.backedge ] ; 2 uses
  %.sroa.010.0.i.us.i.us = phi i1 [ false, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.preheader ], [ true, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.backedge ]
  %.sroa.03.0.i.us.i.us = phi i32 [ %.sroa.0.0127.i.i.us, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.preheader ], [ %.sroa.03.0.i.us.i.us.be, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.backedge ] ; 5 uses
  %i.fa = zext i32 %.sroa.672.0.i.us.i.us to i64  ; 2 uses
  %i.fb = icmp ugt i64 %i.eg, %i.fa
  br i1 %i.fb, label %bb.aj, label %.preheader.i.i.us.i.us

.preheader.i.i.us.i.us:                           ; preds = %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us, %bb.ai
  %.sroa.9.1.i.us.i.us = phi i32 [ %i.fg, %bb.ai ], [ %.sroa.9.0.i.us.i.us, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us ]
  %i.fc = zext i32 %.sroa.9.1.i.us.i.us to i64    ; 2 uses
  %i.fd = icmp ugt i64 %i.eg, %i.fc
  br i1 %i.fd, label %bb.ai, label %.split.us.i.us

bb.ai:                                            ; preds = %.preheader.i.i.us.i.us
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.fc ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.fg = load i32, ptr %i.ff, align 4, !noalias !143454, !noundef !56 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %.val.i47.i.us.i.us = load i32, ptr %i.fh, align 4, !noalias !143454, !noundef !56 ; 2 uses
  %i.fi = icmp eq i32 %.val.i47.i.us.i.us, %.sroa.0.0127.i.i.us
  br i1 %i.fi, label %.preheader.i.i.us.i.us, label %.loopexit.i.us.i.us

bb.aj:                                            ; preds = %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.fa ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i32, ptr %i.fk, align 8, !noalias !143454, !noundef !56
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 20
  %i.fn = load i32, ptr %i.fm, align 4, !noalias !143454, !noundef !56
  br label %.loopexit.i.us.i.us

.loopexit.i.us.i.us:                              ; preds = %bb.ai, %bb.aj
  %.sroa.672.1.ph.i.us.i.us = phi i32 [ %i.fl, %bb.aj ], [ %.sroa.672.0.i.us.i.us, %bb.ai ]
  %.sroa.9.2.ph.i.us.i.us = phi i32 [ %.sroa.9.0.i.us.i.us, %bb.aj ], [ %i.fg, %bb.ai ]
  %.sroa.4.0.i.ph.i.us.i.us = phi i32 [ %i.fn, %bb.aj ], [ %.val.i47.i.us.i.us, %bb.ai ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143455)
  %i.fo = zext i32 %.sroa.4.0.i.ph.i.us.i.us to i64 ; 3 uses
  %i.fp = icmp samesign ugt i64 %i.bo, %i.fo
  br i1 %i.fp, label %bb.ak, label %.invoke.i.i

bb.ak:                                            ; preds = %.loopexit.i.us.i.us
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.fo ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !143455, !noalias !143448, !nonnull !56, !noundef !56 ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !143455, !noalias !143448, !noundef !56 ; 5 uses
  %i.fv = load ptr, ptr %i.ej, align 8, !alias.scope !143455, !noalias !143448, !nonnull !56, !noundef !56 ; 5 uses
  %i.fw = load i64, ptr %i.ek, align 8, !alias.scope !143455, !noalias !143448, !noundef !56
  call void @llvm.experimental.noalias.scope.decl(metadata !143456)
  call void @llvm.experimental.noalias.scope.decl(metadata !143457)
  %.not.i.i.i.us.i.us = icmp eq i64 %i.fu, %i.fw
  br i1 %.not.i.i.i.us.i.us, label %.preheader.i.i.i.us.i.us, label %.split203.us.split.us.i

.preheader.i.i.i.us.i.us:                         ; preds = %bb.ak
  %.not30.i.i.i.us.i.us = icmp eq i64 %i.fu, 0
  br i1 %.not30.i.i.i.us.i.us, label %._crit_edge.thread.i.i.i.us.i.us, label %.lr.ph.i.i.i114.us.i.us.preheader

.lr.ph.i.i.i114.us.i.us.preheader:                ; preds = %.preheader.i.i.i.us.i.us
  %xtraiter = and i64 %i.fu, 3                    ; 3 uses
  %i.fx = icmp ult i64 %i.fu, 4
  br i1 %i.fx, label %.lr.ph.i.i.i114.us.i.us.epil.preheader, label %.lr.ph.i.i.i114.us.i.us.preheader.new

.lr.ph.i.i.i114.us.i.us.preheader.new:            ; preds = %.lr.ph.i.i.i114.us.i.us.preheader
  %unroll_iter = and i64 %i.fu, -4
  br label %.lr.ph.i.i.i114.us.i.us

.lr.ph.i.i.i114.us.i.us:                          ; preds = %.lr.ph.i.i.i114.us.i.us, %.lr.ph.i.i.i114.us.i.us.preheader.new
  %.sroa.01.027.i.i.i.us.i.us = phi double [ 0.000000e+00, %.lr.ph.i.i.i114.us.i.us.preheader.new ], [ %i.ha, %.lr.ph.i.i.i114.us.i.us ]
  %.sroa.03.026.i.i.i.us.i.us = phi double [ 0.000000e+00, %.lr.ph.i.i.i114.us.i.us.preheader.new ], [ %i.hc, %.lr.ph.i.i.i114.us.i.us ]
  %.sroa.05.025.i.i.i.us.i.us = phi double [ 0.000000e+00, %.lr.ph.i.i.i114.us.i.us.preheader.new ], [ %i.hd, %.lr.ph.i.i.i114.us.i.us ]
  %.sroa.8.024.i.i.i.us.i.us = phi i64 [ 0, %.lr.ph.i.i.i114.us.i.us.preheader.new ], [ %i.gw, %.lr.ph.i.i.i114.us.i.us ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i114.us.i.us.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i114.us.i.us ]
  %i.fy = or disjoint i64 %.sroa.8.024.i.i.i.us.i.us, 1 ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %.sroa.8.024.i.i.i.us.i.us
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %.sroa.8.024.i.i.i.us.i.us
  %i.gb = load double, ptr %i.fz, align 8, !alias.scope !143456, !noalias !143458, !noundef !56 ; 3 uses
  %i.gc = call noundef double @llvm.fma.f64(double %i.gb, double %i.gb, double %.sroa.01.027.i.i.i.us.i.us)
  %i.gd = load double, ptr %i.ga, align 8, !alias.scope !143457, !noalias !143458, !noundef !56 ; 3 uses
  %i.ge = call noundef double @llvm.fma.f64(double %i.gd, double %i.gd, double %.sroa.03.026.i.i.i.us.i.us)
  %i.gf = call noundef double @llvm.fma.f64(double %i.gb, double %i.gd, double %.sroa.05.025.i.i.i.us.i.us)
  %i.gg = or disjoint i64 %.sroa.8.024.i.i.i.us.i.us, 2 ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fy
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fy
  %i.gj = load double, ptr %i.gh, align 8, !alias.scope !143456, !noalias !143458, !noundef !56 ; 3 uses
  %i.gk = call noundef double @llvm.fma.f64(double %i.gj, double %i.gj, double %i.gc)
  %i.gl = load double, ptr %i.gi, align 8, !alias.scope !143457, !noalias !143458, !noundef !56 ; 3 uses
  %i.gm = call noundef double @llvm.fma.f64(double %i.gl, double %i.gl, double %i.ge)
  %i.gn = call noundef double @llvm.fma.f64(double %i.gj, double %i.gl, double %i.gf)
  %i.go = or disjoint i64 %.sroa.8.024.i.i.i.us.i.us, 3 ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.gg
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.gg
  %i.gr = load double, ptr %i.gp, align 8, !alias.scope !143456, !noalias !143458, !noundef !56 ; 3 uses
  %i.gs = call noundef double @llvm.fma.f64(double %i.gr, double %i.gr, double %i.gk)
  %i.gt = load double, ptr %i.gq, align 8, !alias.scope !143457, !noalias !143458, !noundef !56 ; 3 uses
  %i.gu = call noundef double @llvm.fma.f64(double %i.gt, double %i.gt, double %i.gm)
  %i.gv = call noundef double @llvm.fma.f64(double %i.gr, double %i.gt, double %i.gn)
  %i.gw = add nuw nsw i64 %.sroa.8.024.i.i.i.us.i.us, 4 ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.go
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.go
  %i.gz = load double, ptr %i.gx, align 8, !alias.scope !143456, !noalias !143458, !noundef !56 ; 3 uses
  %i.ha = call noundef double @llvm.fma.f64(double %i.gz, double %i.gz, double %i.gs) ; 3 uses
  %i.hb = load double, ptr %i.gy, align 8, !alias.scope !143457, !noalias !143458, !noundef !56 ; 3 uses
  %i.hc = call noundef double @llvm.fma.f64(double %i.hb, double %i.hb, double %i.gu) ; 3 uses
  %i.hd = call noundef double @llvm.fma.f64(double %i.gz, double %i.hb, double %i.gv) ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.us.i.us.unr-lcssa, label %.lr.ph.i.i.i114.us.i.us

._crit_edge.i.i.i.us.i.us.unr-lcssa:              ; preds = %.lr.ph.i.i.i114.us.i.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.us.i.us, label %.lr.ph.i.i.i114.us.i.us.epil.preheader

.lr.ph.i.i.i114.us.i.us.epil.preheader:           ; preds = %._crit_edge.i.i.i.us.i.us.unr-lcssa, %.lr.ph.i.i.i114.us.i.us.preheader
  %.sroa.01.027.i.i.i.us.i.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.i114.us.i.us.preheader ], [ %i.ha, %._crit_edge.i.i.i.us.i.us.unr-lcssa ]
  %.sroa.03.026.i.i.i.us.i.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.i114.us.i.us.preheader ], [ %i.hc, %._crit_edge.i.i.i.us.i.us.unr-lcssa ]
  %.sroa.05.025.i.i.i.us.i.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.i114.us.i.us.preheader ], [ %i.hd, %._crit_edge.i.i.i.us.i.us.unr-lcssa ]
  %.sroa.8.024.i.i.i.us.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.i114.us.i.us.preheader ], [ %i.gw, %._crit_edge.i.i.i.us.i.us.unr-lcssa ]
  %lcmp.mod316 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod316)
  br label %.lr.ph.i.i.i114.us.i.us.epil

.lr.ph.i.i.i114.us.i.us.epil:                     ; preds = %.lr.ph.i.i.i114.us.i.us.epil, %.lr.ph.i.i.i114.us.i.us.epil.preheader
  %.sroa.01.027.i.i.i.us.i.us.epil = phi double [ %i.hi, %.lr.ph.i.i.i114.us.i.us.epil ], [ %.sroa.01.027.i.i.i.us.i.us.epil.init, %.lr.ph.i.i.i114.us.i.us.epil.preheader ]
  %.sroa.03.026.i.i.i.us.i.us.epil = phi double [ %i.hk, %.lr.ph.i.i.i114.us.i.us.epil ], [ %.sroa.03.026.i.i.i.us.i.us.epil.init, %.lr.ph.i.i.i114.us.i.us.epil.preheader ]
  %.sroa.05.025.i.i.i.us.i.us.epil = phi double [ %i.hl, %.lr.ph.i.i.i114.us.i.us.epil ], [ %.sroa.05.025.i.i.i.us.i.us.epil.init, %.lr.ph.i.i.i114.us.i.us.epil.preheader ]
  %.sroa.8.024.i.i.i.us.i.us.epil = phi i64 [ %i.he, %.lr.ph.i.i.i114.us.i.us.epil ], [ %.sroa.8.024.i.i.i.us.i.us.epil.init, %.lr.ph.i.i.i114.us.i.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i114.us.i.us.epil ], [ 0, %.lr.ph.i.i.i114.us.i.us.epil.preheader ]
  %i.he = add nuw nsw i64 %.sroa.8.024.i.i.i.us.i.us.epil, 1
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %.sroa.8.024.i.i.i.us.i.us.epil
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %.sroa.8.024.i.i.i.us.i.us.epil
  %i.hh = load double, ptr %i.hf, align 8, !alias.scope !143456, !noalias !143458, !noundef !56 ; 3 uses
  %i.hi = call noundef double @llvm.fma.f64(double %i.hh, double %i.hh, double %.sroa.01.027.i.i.i.us.i.us.epil) ; 2 uses
  %i.hj = load double, ptr %i.hg, align 8, !alias.scope !143457, !noalias !143458, !noundef !56 ; 3 uses
  %i.hk = call noundef double @llvm.fma.f64(double %i.hj, double %i.hj, double %.sroa.03.026.i.i.i.us.i.us.epil) ; 2 uses
  %i.hl = call noundef double @llvm.fma.f64(double %i.hh, double %i.hj, double %.sroa.05.025.i.i.i.us.i.us.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.us.i.us, label %.lr.ph.i.i.i114.us.i.us.epil, !llvm.loop !143422

._crit_edge.i.i.i.us.i.us:                        ; preds = %.lr.ph.i.i.i114.us.i.us.epil, %._crit_edge.i.i.i.us.i.us.unr-lcssa
  %.lcssa287 = phi double [ %i.ha, %._crit_edge.i.i.i.us.i.us.unr-lcssa ], [ %i.hi, %.lr.ph.i.i.i114.us.i.us.epil ]
  %.lcssa286 = phi double [ %i.hc, %._crit_edge.i.i.i.us.i.us.unr-lcssa ], [ %i.hk, %.lr.ph.i.i.i114.us.i.us.epil ]
  %.lcssa285 = phi double [ %i.hd, %._crit_edge.i.i.i.us.i.us.unr-lcssa ], [ %i.hl, %.lr.ph.i.i.i114.us.i.us.epil ]
  %i.hm = insertelement <2 x double> poison, double %.lcssa287, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %.lcssa286, i64 1
  %i.ho = fadd <2 x double> %i.hn, splat (double 1.000000e+00)
  %i.hp = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ho) ; 2 uses
  %shift = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.hp, %shift
  %i.hq = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.hr = fsub double %i.hq, %.lcssa285           ; 2 uses
  %i.hs = fcmp olt double %i.hr, 1.000000e+00
  br i1 %i.hs, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0B5_.exit49.i.us.i.us, label %._crit_edge.thread.i.i.i.us.i.us

._crit_edge.thread.i.i.i.us.i.us:                 ; preds = %._crit_edge.i.i.i.us.i.us, %.preheader.i.i.i.us.i.us
  %i.ht = phi double [ %i.hr, %._crit_edge.i.i.i.us.i.us ], [ 1.000000e+00, %.preheader.i.i.i.us.i.us ]
  %i.hu = call noundef double @acosh(double noundef %i.ht) #59, !noalias !143459
  br label %_RNCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0B5_.exit49.i.us.i.us

_RNCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0B5_.exit49.i.us.i.us: ; preds = %._crit_edge.thread.i.i.i.us.i.us, %._crit_edge.i.i.i.us.i.us
  %.sroa.3.0.i.ph.i.i.us.i.us = phi double [ 0.000000e+00, %._crit_edge.i.i.i.us.i.us ], [ %i.hu, %._crit_edge.thread.i.i.i.us.i.us ] ; 3 uses
  br i1 %i.ez, label %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.backedge, label %bb.al

bb.al:                                            ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0B5_.exit49.i.us.i.us
  br i1 %.sroa.010.0.i.us.i.us, label %bb.am, label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !prof !66

bb.am:                                            ; preds = %bb.al
  %i.hv = fcmp olt double %.sroa.3.0.i.ph.i.i.us.i.us, %.sroa.513.1.i.us.i.us ; 2 uses
  %..sroa.513.1.i.us.i.us = select i1 %i.hv, double %.sroa.3.0.i.ph.i.i.us.i.us, double %.sroa.513.1.i.us.i.us
  %..sroa.03.0.i.us.i.us = select i1 %i.hv, i32 %.sroa.4.0.i.ph.i.us.i.us, i32 %.sroa.03.0.i.us.i.us
  br label %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.backedge

_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us.backedge: ; preds = %bb.am, %_RNCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0B5_.exit49.i.us.i.us
  %.sroa.513.1.i.us.i.us.be = phi double [ %.sroa.3.0.i.ph.i.i.us.i.us, %_RNCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0B5_.exit49.i.us.i.us ], [ %..sroa.513.1.i.us.i.us, %bb.am ]
  %.sroa.03.0.i.us.i.us.be = phi i32 [ %.sroa.4.0.i.ph.i.us.i.us, %_RNCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0B5_.exit49.i.us.i.us ], [ %..sroa.03.0.i.us.i.us, %bb.am ]
  br label %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.us.i.us

.split.us.i.us:                                   ; preds = %.preheader.i.i.us.i.us
  br i1 %i.ez, label %.critedge.i, label %bb.an

bb.an:                                            ; preds = %.split.us.i.us
  %i.hw = invoke fastcc noundef double @_RINvNtCskcxRuJ53GpR_9rustworkx8geometry4distINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1S_5types3any5PyAnyEB1N_NtBN_10UndirectedEEB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cu, i64 noundef %i.bo, i32 noundef %.sroa.0.0127.i.i.us, i32 noundef %.sroa.03.0.i.us.i.us)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !143448

bb.ao:                                            ; preds = %bb.an
  %i.hx = fadd double %.sroa.01.0129.i.i.us, %i.hw ; 2 uses
  %i.hy = load i64, ptr %i.eb, align 8, !alias.scope !143460, !noalias !143448, !noundef !56 ; 3 uses
  %i.hz = load i64, ptr %i.d, align 8, !range !59, !alias.scope !143460, !noalias !143448, !noundef !56
  %i.ia = icmp eq i64 %i.hy, %i.hz
  br i1 %i.ia, label %bb.ap, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.us

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.us unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !143448

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.us: ; preds = %bb.ap, %bb.ao
  %i.ib = load ptr, ptr %i.ea, align 8, !alias.scope !143460, !noalias !143448, !nonnull !56, !noundef !56
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.hy
  store i32 %.sroa.03.0.i.us.i.us, ptr %i.ic, align 4, !noalias !143448
  %i.id = add i64 %i.hy, 1                        ; 2 uses
  store i64 %i.id, ptr %i.eb, align 8, !noalias !143448
  %.not.i113.i.us = icmp eq i32 %.sroa.03.0.i.us.i.us, %i.dh
  br i1 %.not.i113.i.us, label %._crit_edge.i.i, label %.lr.ph.i.i.split.us

.split203.us.split.us.i:                          ; preds = %bb.ak
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1556, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @563) #60
          to label %.noexc58.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !143448

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.al
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826) #61
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !143448

._crit_edge.i.i:                                  ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.us
  %.sroa.0134.0.copyload135.i = load i64, ptr %i.d, align 8, !noalias !143461 ; 2 uses
  %.sroa.7.0.copyload137.i = load ptr, ptr %i.ea, align 8, !noalias !143461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !143448
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.i unwind label %bb.r, !noalias !143440

.lr.ph.i.i.split:                                 ; preds = %.lr.ph.i.i
  %.val36.i.i = load i64, ptr %i.ec, align 8, !noalias !143448, !noundef !56
  %i.ie = icmp ugt i64 %.val36.i.i, %i.bv
  br i1 %i.ie, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.split.us

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.lr.ph.i.i.split
  %.val35.i.i = load ptr, ptr %i.e, align 8, !noalias !143448, !nonnull !56, !noundef !56
  %i.if = lshr i64 %i.bv, 6
  %i.ig = and i64 %i.bf, 63                       ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.val35.i.i, i64 %i.if ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !noalias !143448, !noundef !56 ; 2 uses
  %i.ij = lshr i64 %i.ii, %i.ig
  %i.ik = trunc i64 %i.ij to i1
  br i1 %i.ik, label %.critedge.i, label %bb.aq

.split.us:                                        ; preds = %.lr.ph.i.i.split.us, %.lr.ph.i.i.split
  %.us-phi = phi i64 [ %i.bv, %.lr.ph.i.i.split ], [ %i.el, %.lr.ph.i.i.split.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !143451
  store i64 %.us-phi, ptr %i.c, align 8, !noalias !143452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !143452
  store ptr %i.c, ptr %i.b, align 8, !noalias !143452
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !143452
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ec, ptr %i.il, align 8, !noalias !143452
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !143452
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1581, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1582) #60
          to label %.noexc45.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !143448

.noexc45.i.i:                                     ; preds = %.split.us
  unreachable

bb.aq:                                            ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !143451
  %i.im = shl nuw i64 1, %i.ig
  %i.in = or i64 %i.ii, %i.im
  store i64 %i.in, ptr %i.ih, align 8, !noalias !143452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !143451
  %i.io = load ptr, ptr %i.ca, align 8, !noalias !143453, !noundef !56
  %.not.i.i.i.i.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.aq
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.ip, align 8, !noalias !143453
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %.sroa.5.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !143453
  %i.iq = zext i32 %.sroa.0.0.copyload.i.i.i.i.i to i64
  br label %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.i

_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.aq
  %.sroa.5.0.i.i.i.i.i.lcssa = phi i32 [ %.sroa.5.0.copyload.i.i.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ -1, %bb.aq ]
  %.sroa.0.0.i.i.i.i.i.lcssa = phi i64 [ %i.iq, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 4294967295, %bb.aq ] ; 2 uses
  %i.ir = icmp ugt i64 %i.eg, %.sroa.0.0.i.i.i.i.i.lcssa
  br i1 %i.ir, label %bb.ar, label %.preheader.i.i.i

bb.ar:                                            ; preds = %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.i
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %.sroa.0.0.i.i.i.i.i.lcssa
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 20
  %i.iu = load i32, ptr %i.it, align 4, !noalias !143454, !noundef !56
  br label %.loopexit.i.i

.preheader.i.i.i:                                 ; preds = %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.i, %bb.as
  %.sroa.9.1.i.i = phi i32 [ %i.iz, %bb.as ], [ %.sroa.5.0.i.i.i.i.i.lcssa, %_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.split.i ]
  %i.iv = zext i32 %.sroa.9.1.i.i to i64          ; 2 uses
  %i.iw = icmp ugt i64 %i.eg, %i.iv
  br i1 %i.iw, label %bb.as, label %.critedge.i

bb.as:                                            ; preds = %.preheader.i.i.i
  %i.ix = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.iv ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  %i.iz = load i32, ptr %i.iy, align 4, !noalias !143454, !noundef !56
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %.val.i47.i.i = load i32, ptr %i.ja, align 4, !noalias !143454, !noundef !56 ; 2 uses
  %i.jb = icmp eq i32 %.val.i47.i.i, %i.dg
  br i1 %i.jb, label %.preheader.i.i.i, label %.loopexit.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ap, %bb.an, %.invoke.i.i, %.split.us, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split203.us.split.us.i
  %lpad.loopexit.split-lp270 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val33.i.i = load i64, ptr %i.d, align 8, !noalias !143448 ; 2 uses
  %5 = icmp eq i64 %.val33.i.i, 0
  br i1 %5, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val34.i.i = load ptr, ptr %i.ea, align 8, !noalias !143448, !nonnull !56, !noundef !56
  %i.jc = shl nuw i64 %.val33.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34.i.i, i64 noundef %i.jc, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !143448
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i

.loopexit.i.i:                                    ; preds = %bb.as, %bb.ar
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.iu, %bb.ar ], [ %.val.i47.i.i, %bb.as ]
  call void @llvm.experimental.noalias.scope.decl(metadata !143455)
  %i.jd = zext i32 %.sroa.4.0.i.ph.i.i to i64     ; 2 uses
  %i.je = icmp samesign ugt i64 %i.bo, %i.jd      ; 2 uses
  %spec.select.i = select i1 %i.je, i64 %i.ce, i64 %i.jd
  %spec.select220.i = select i1 %i.je, ptr @562, ptr @561
  br label %.invoke.i.i

.noexc58.i.i:                                     ; preds = %.split203.us.split.us.i
  unreachable

.invoke.i.i:                                      ; preds = %.loopexit.i.us.i.us, %.loopexit.i.i
  %.us-phi200.i = phi i64 [ %spec.select.i, %.loopexit.i.i ], [ %i.fo, %.loopexit.i.us.i.us ]
  %.us-phi201.i = phi ptr [ %spec.select220.i, %.loopexit.i.i ], [ @561, %.loopexit.i.us.i.us ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.us-phi200.i, i64 noundef range(i64 0, 384307168202282326) %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.us-phi201.i) #60
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !143448

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.critedge.i:                                      ; preds = %.preheader.i.i.i, %.split.us.i.us, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i.us, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.val31.i.i = load i64, ptr %i.d, align 8, !noalias !143448 ; 2 uses
  %i.jf = icmp eq i64 %.val31.i.i, 0
  br i1 %i.jf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit54.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i53.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i53.i.i: ; preds = %.critedge.i
  %.val32.i.i = load ptr, ptr %i.ea, align 8, !noalias !143448, !nonnull !56, !noundef !56
  %i.jg = shl nuw i64 %.val31.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32.i.i, i64 noundef %i.jg, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !143448
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit54.i.i

bb.at:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit54.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i53.i.i, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !143448
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.thread.i unwind label %bb.r, !noalias !143440

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.thread.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit54.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !143448
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultTINtNtCs87CvPiUlf0m_5alloc3vec3VecjEdENtNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing19NodeNotReachedErrorEECskcxRuJ53GpR_9rustworkx.exit.i

bb.au:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !143448
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit56.i.i: ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit42.i.i
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.du, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !143448
  br label %.body

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.i: ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !143448
  %i.jj = icmp eq i64 %.sroa.0134.0.copyload135.i, -1
  br i1 %i.jj, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultTINtNtCs87CvPiUlf0m_5alloc3vec3VecjEdENtNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing19NodeNotReachedErrorEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.thread150.i

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.thread150.i: ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.i, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit42.i.i
  %.sroa.0134.0158.i = phi i64 [ %.sroa.0134.0.copyload135.i, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.i ], [ 1, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit42.i.i ]
  %.sroa.7.0157.i = phi ptr [ %.sroa.7.0.copyload137.i, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.i ], [ %i.du, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit42.i.i ]
  %.sroa.8138.0156.i = phi i64 [ %i.id, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.i ], [ 1, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit42.i.i ]
  %.sroa.9.0155.i = phi double [ %i.hx, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.i ], [ %i.dy, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit42.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !143440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !143440
  store i64 %.sroa.0134.0158.i, ptr %i.f, align 8, !noalias !143440
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.7.0157.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !143440
  %.sroa.5142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.8138.0156.i, ptr %.sroa.5142.0..sroa_idx.i, align 8, !noalias !143440
  %.sroa.6143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store double %.sroa.9.0155.i, ptr %.sroa.6143.0..sroa_idx.i, align 8, !noalias !143440
  invoke fastcc void @_RNCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings0_0B5_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %i.f)
          to label %bb.av unwind label %bb.r

bb.av:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.thread150.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !143440
  %.sroa.0132.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !143440 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !143440
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.10.i.sroa.0.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !143440
  %.sroa.10.i.sroa.4.0..sroa.10.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.10.i.sroa.4.0.copyload = load ptr, ptr %.sroa.10.i.sroa.4.0..sroa.10.0..sroa_idx.i.sroa_idx, align 8, !noalias !143440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !143440
  %i.jk = icmp eq i64 %.sroa.0132.0.copyload.i, -1
  br i1 %i.jk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultTINtNtCs87CvPiUlf0m_5alloc3vec3VecjEdENtNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing19NodeNotReachedErrorEECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultTINtNtCs87CvPiUlf0m_5alloc3vec3VecjEdENtNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing19NodeNotReachedErrorEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultTINtNtCs87CvPiUlf0m_5alloc3vec3VecjEdENtNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing19NodeNotReachedErrorEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.aw, %bb.av, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.i, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.thread.i
  %.sroa.5.sroa.4.i.sroa.0.0 = phi i64 [ undef, %bb.av ], [ %.sroa.10.i.sroa.0.0.copyload, %bb.aw ], [ undef, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.thread.i ], [ undef, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.i ]
  %.sroa.5.sroa.4.i.sroa.4.0 = phi ptr [ undef, %bb.av ], [ %.sroa.10.i.sroa.4.0.copyload, %bb.aw ], [ undef, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.thread.i ], [ undef, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.i ]
  %.sroa.0.0173.i = phi i64 [ -1, %bb.av ], [ %.sroa.0132.0.copyload.i, %bb.aw ], [ -1, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.thread.i ], [ -1, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.i ]
  %.sroa.5.sroa.0.0171.i = phi ptr [ undef, %bb.av ], [ %.sroa.8.0.copyload.i, %bb.aw ], [ undef, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.thread.i ], [ undef, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing14greedy_routingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings_0dEB3R_.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !143462)
  call void @llvm.experimental.noalias.scope.decl(metadata !143463)
  br label %.lr.ph.i.i.i121.i

.lr.ph.i.i.i121.i:                                ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultTINtNtCs87CvPiUlf0m_5alloc3vec3VecjEdENtNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing19NodeNotReachedErrorEECskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.0.012.i.i.i122.i = phi i64 [ %i.jm, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultTINtNtCs87CvPiUlf0m_5alloc3vec3VecjEdENtNtNtCsbNMRYq9Xj9a_14rustworkx_core8geometry14greedy_routing19NodeNotReachedErrorEECskcxRuJ53GpR_9rustworkx.exit.i ] ; 2 uses
  %i.jl = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %.sroa.0.012.i.i.i122.i ; 2 uses
  %i.jm = add nuw nsw i64 %.sroa.0.012.i.i.i122.i, 1 ; 2 uses
  %.val8.i.i.i123.i = load i64, ptr %i.jl, align 8, !alias.scope !143463, !noalias !143464 ; 2 uses
  %i.jn = icmp eq i64 %.val8.i.i.i123.i, 0
  br i1 %i.jn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i124.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i124.i: ; preds = %.lr.ph.i.i.i121.i
  %i.jo = getelementptr i8, ptr %i.jl, i64 8
  %.val9.i.i.i125.i = load ptr, ptr %i.jo, align 8, !alias.scope !143463, !noalias !143464, !nonnull !56, !noundef !56
  %i.jp = shl nuw i64 %.val8.i.i.i123.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i125.i, i64 noundef %i.jp, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !143465
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i124.i, %.lr.ph.i.i.i121.i
  %i.jq = icmp eq i64 %i.jm, %i.bo
  br i1 %i.jq, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i127.i, label %.lr.ph.i.i.i121.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i127.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126.i
  %.val2.i128.i = load i64, ptr %i.x, align 8, !alias.scope !143466 ; 2 uses
  %i.jr = icmp eq i64 %.val2.i128.i, 0
  br i1 %i.jr, label %bb.ba, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i129.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i129.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i127.i
  %i.js = mul nuw i64 %.val2.i128.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cu, i64 noundef %i.js, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !143464
  br label %bb.ba

bb.ax:                                            ; preds = %.loopexit.i
  store ptr @3132, ptr %i.de, align 8, !noalias !143440
  br label %bb.v

bb.ay:                                            ; preds = %bb.q
  store ptr @3133, ptr %i.bx, align 8, !noalias !143440
  br label %bb.v

bb.az:                                            ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jt, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr null, ptr %.sroa.681.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %.sink334.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr @518, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.1083.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store i32 3, ptr %.sroa.1083.0..sroa_idx, align 8
  br label %bb.bc

bb.ba:                                            ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i127.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i129.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %.sroa.0.0173.i, ptr %i.q, align 8
  %.sroa.10.8..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.5.sroa.0.0171.i, ptr %.sroa.10.8..sroa_idx71, align 8
  %.sroa.11.8..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.5.sroa.4.i.sroa.0.0, ptr %.sroa.11.8..sroa_idx73, align 8
  %.sroa.13.8..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %.sroa.5.sroa.4.i.sroa.4.0, ptr %.sroa.13.8..sroa_idx75, align 8
  invoke fastcc void @_RNvYINtNtCslwFuT2d6ECx_4core6option6OptionTINtNtCs87CvPiUlf0m_5alloc3vec3VecjEdEENtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.r, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.q)
          to label %bb.bb unwind label %bb.e

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ju = load i64, ptr %i.r, align 8, !range !57, !noundef !56
  %i.jv = trunc nuw i64 %i.ju to i1
  br i1 %i.jv, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.az
  %i.jw = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jx, ptr noundef nonnull align 8 dereferenceable(64) %i.jw, i64 64, i1 false)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit67

bb.bd:                                            ; preds = %bb.bb
  %i.jy = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8, !nonnull !56, !noundef !56
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jz, ptr %i.ka, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit67

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit67: ; preds = %bb.bd, %bb.bc
  %storemerge = phi i64 [ 0, %bb.bd ], [ 1, %bb.bc ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.kb = atomicrmw add ptr %i.aj, i64 -1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit68

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit68: ; preds = %bb.b, %.noexc54, %bb.bg, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  ret void

bb.be:                                            ; preds = %bb.n, %bb.k
  %.sroa.045.0.copyload.sink = phi i64 [ %.sroa.045.0.copyload, %bb.n ], [ %.sroa.039.0.copyload, %bb.k ]
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.045.0.copyload.sink, ptr %i.kc, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !143467)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val.i = load ptr, ptr %i.kd, align 8, !alias.scope !143467, !nonnull !56, !noundef !56 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val1.i = load i64, ptr %i.ke, align 8, !alias.scope !143467, !noundef !56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143468)
  %i.kf = icmp eq i64 %.val1.i, 0
  br i1 %i.kf, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.be, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.012.i.i.i = phi i64 [ %i.kh, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 0, %bb.be ] ; 2 uses
  %i.kg = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.012.i.i.i ; 2 uses
  %i.kh = add nuw nsw i64 %.sroa.0.012.i.i.i, 1   ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.kg, align 8, !alias.scope !143468, !noalias !143467 ; 2 uses
  %i.ki = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.ki, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.kj = getelementptr i8, ptr %i.kg, i64 8
  %.val9.i.i.i = load ptr, ptr %i.kj, align 8, !alias.scope !143468, !noalias !143467, !nonnull !56, !noundef !56
  %i.kk = shl nuw i64 %.val8.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.kk, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !143469
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i, %.lr.ph.i.i.i
  %i.kl = icmp eq i64 %i.kh, %.val1.i
  br i1 %i.kl, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i
end_hunk_2
begin_hunk_3_@_RNvXsv_NtNtCslwFuT2d6ECx_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bq = add nuw nsw i64 %i.bg, 2
  %i.br = icmp samesign ne i64 %i.bq, %i.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bt = add nuw nsw i64 %i.bg, 3
  %i.bu = icmp samesign ne i64 %i.bt, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164464)
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RNvXsv_NtNtCslwFuT2d6ECx_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %.not.i.i.us, label %bb.l, label %.split.i.i.us

.split.i.i.us:                                    ; preds = %bb.k
  br i1 %i.bi, label %bb.m, label %.split.us160

bb.l:                                             ; preds = %bb.k
  %i.bv = load i8, ptr %i.bj, align 1, !alias.scope !164461, !noalias !164465, !noundef !56
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.m, label %.split.us160

bb.m:                                             ; preds = %bb.l, %.split.i.i.us, %_RNvXsv_NtNtCslwFuT2d6ECx_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %i.bl, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %i.bk, align 1, !noalias !164466, !noundef !56 ; 5 uses
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.o, label %_RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit12.i.i.us

_RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit12.i.i.us: ; preds = %bb.n
  %i.bz = and i8 %i.bx, 31
  %i.ca = zext nneg i8 %i.bz to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bo)
  %i.cb = load i8, ptr %i.bm, align 1, !noalias !164466, !noundef !56
  %i.cc = shl nuw nsw i32 %i.ca, 6
  %i.cd = and i8 %i.cb, 63
  %i.ce = zext nneg i8 %i.cd to i32               ; 2 uses
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = icmp samesign ugt i8 %i.bx, -33
  br i1 %i.cg, label %_RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit14.i.i.us, label %.loopexit41.split.us.loopexit

_RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit14.i.i.us: ; preds = %_RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit12.i.i.us
  tail call void @llvm.assume(i1 %i.br)
  %i.ch = load i8, ptr %i.bp, align 1, !noalias !164466, !noundef !56
  %i.ci = shl nuw nsw i32 %i.ce, 6
  %i.cj = and i8 %i.ch, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ci, %i.ck            ; 2 uses
  %i.cm = shl nuw nsw i32 %i.ca, 12
  %i.cn = or disjoint i32 %i.cl, %i.cm
  %i.co = icmp samesign ugt i8 %i.bx, -17
  br i1 %i.co, label %_RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit16.i.i.us, label %.loopexit41.split.us.loopexit

_RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit16.i.i.us: ; preds = %_RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit14.i.i.us
  tail call void @llvm.assume(i1 %i.bu)
  %i.cp = load i8, ptr %i.bs, align 1, !noalias !164466, !noundef !56
  %i.cq = shl nuw nsw i32 %i.ca, 18
  %i.cr = and i32 %i.cq, 1835008
  %i.cs = shl nuw nsw i32 %i.cl, 6
  %i.ct = and i8 %i.cp, 63
  %i.cu = zext nneg i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cs, %i.cu
  %i.cw = or disjoint i32 %i.cv, %i.cr
  br label %.loopexit41.split.us.loopexit

bb.o:                                             ; preds = %bb.n
  %i.cx = zext nneg i8 %i.bx to i32
  br label %.loopexit41.split.us.loopexit

.loopexit41.split.us.loopexit:                    ; preds = %bb.o, %_RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit16.i.i.us, %_RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit14.i.i.us, %_RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit12.i.i.us
  %.sroa.4.0.i.ph.i.us = phi i32 [ %i.cn, %_RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit14.i.i.us ], [ %i.cw, %_RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit16.i.i.us ], [ %i.cf, %_RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit12.i.i.us ], [ %i.cx, %bb.o ]
  %i.cy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us, 1114112
  tail call void @llvm.assume(i1 %i.cy)
  br label %.loopexit41.split.us

.split.us160:                                     ; preds = %bb.l, %.split.i.i.us, %bb.c, %.split.i.i.us.peel
  %.lcssa322 = phi i64 [ %.promoted156, %.split.i.i.us.peel ], [ %.promoted156, %bb.c ], [ %i.bg, %.split.i.i.us ], [ %i.bg, %bb.l ]
  %.lcssa319 = phi i8 [ %.promoted205, %.split.i.i.us.peel ], [ %.promoted205, %bb.c ], [ 1, %.split.i.i.us ], [ 1, %bb.l ]
  %i.cz = xor i8 %.lcssa319, 1
  store i8 %i.cz, ptr %i.f, align 8, !alias.scope !164464
  tail call void @_RNvNtCslwFuT2d6ECx_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef %.lcssa322, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4371) #60, !noalias !164465
  unreachable

.split165.us:                                     ; preds = %bb.d
  %i.da = xor i8 %.promoted205, 1
  store i8 %i.da, ptr %i.f, align 8, !alias.scope !164464
  br i1 %i.k, label %bb.s, label %bb.p

.loopexit41.split.us:                             ; preds = %.loopexit41.split.us.loopexit, %bb.g
  %.lcssa324 = phi i64 [ %.promoted156, %bb.g ], [ %i.bg, %.loopexit41.split.us.loopexit ]
  store i8 0, ptr %i.f, align 8, !alias.scope !164464
  br label %bb.s

default.unreachable260:                           ; preds = %bb.a
  unreachable

bb.p:                                             ; preds = %.split165.us
  store i8 1, ptr %i.c, align 2, !alias.scope !164464
  br label %_RINvMsx_NtNtCslwFuT2d6ECx_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskcxRuJ53GpR_9rustworkx.exit

bb.q:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dc = load i64, ptr %i.db, align 8, !noundef !56 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !noundef !56 ; 4 uses
  %.not = icmp ult i64 %i.de, %i.dc
  br i1 %.not, label %bb.t, label %_RINvMsx_NtNtCslwFuT2d6ECx_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskcxRuJ53GpR_9rustworkx.exit

bb.r:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !56 ; 2 uses
  %i.di = icmp eq i64 %i.dh, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !56, !noundef !56 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !56 ; 10 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !56, !noundef !56 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !56 ; 14 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.ds = add nsw i64 %i.dq, -1                   ; 4 uses
  br i1 %i.di, label %bb.ae, label %bb.w

.critedge:                                        ; preds = %bb.m
  store i8 0, ptr %i.f, align 8, !alias.scope !164464
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %.loopexit41.split.us, %.split165.us
  %i.dt = phi i64 [ %.lcssa324, %.loopexit41.split.us ], [ %i.j, %.split165.us ], [ %i.j, %.critedge ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dt, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dt, ptr %i.dv, align 8
  br label %_RINvMsx_NtNtCslwFuT2d6ECx_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskcxRuJ53GpR_9rustworkx.exit

_RINvMsx_NtNtCslwFuT2d6ECx_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.s, %bb.p, %.preheader, %.split.us.i20, %._crit_edge.i12, %.split.us.i10, %._crit_edge.i, %.loopexit42, %.loopexit43, %bb.q
  %storemerge.i.sink = phi i64 [ 1, %.loopexit42 ], [ 1, %.split.us.i10 ], [ 0, %bb.q ], [ 1, %.split.us.i20 ], [ 0, %.loopexit43 ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i12 ], [ 1, %bb.s ], [ 0, %bb.p ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.t:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !56, !noundef !56
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dz = load i8, ptr %i.dy, align 8, !noundef !56 ; 2 uses
  %i.ea = sub nuw i64 %i.dc, %i.de                ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.de ; 2 uses
  %i.ec = icmp samesign ult i64 %i.ea, 16
  br i1 %i.ec, label %.lr.ph.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = tail call { i64, i64 } @_RNvNtNtCslwFuT2d6ECx_4core5slice6memchr14memchr_aligned(i8 noundef %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ea) ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ed, 0
  %i.ef = extractvalue { i64, i64 } %i.ed, 1
  %i.eg = trunc nuw i64 %i.ee to i1
  br i1 %i.eg, label %.loopexit42, label %.loopexit43

.lr.ph.i:                                         ; preds = %bb.t, %bb.v
  %.sroa.04.011.i = phi i64 [ %i.ek, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sroa.04.011.i
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !164467, !noundef !56
  %i.ej = icmp eq i8 %i.ei, %i.dz
  br i1 %i.ej, label %.loopexit42, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.ek = add nuw nsw i64 %.sroa.04.011.i, 1      ; 2 uses
  %exitcond.not.i7 = icmp eq i64 %i.ek, %i.ea
  br i1 %exitcond.not.i7, label %.loopexit43, label %.lr.ph.i

.loopexit42:                                      ; preds = %.lr.ph.i, %bb.u
  %.sroa.5.0.i = phi i64 [ %i.ef, %bb.u ], [ %.sroa.04.011.i, %.lr.ph.i ] ; 2 uses
  %i.el = icmp ult i64 %.sroa.5.0.i, %i.ea
  tail call void @llvm.assume(i1 %i.el)
  %i.em = add i64 %.sroa.5.0.i, %i.de             ; 2 uses
  %i.en = add i64 %i.em, 1                        ; 2 uses
  store i64 %i.en, ptr %i.dd, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.em, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.en, ptr %i.ep, align 8
  br label %_RINvMsx_NtNtCslwFuT2d6ECx_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskcxRuJ53GpR_9rustworkx.exit

.loopexit43:                                      ; preds = %bb.v, %bb.u
  store i64 %i.dc, ptr %i.dd, align 8
  br label %_RINvMsx_NtNtCslwFuT2d6ECx_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskcxRuJ53GpR_9rustworkx.exit

bb.w:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164471)
  %.promoted.i = load i64, ptr %i.dr, align 8, !alias.scope !164469 ; 2 uses
  %i.eq = add i64 %.promoted.i, %i.ds             ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.dm
  br i1 %i.er, label %.lr.ph.i8, label %._crit_edge.i

.lr.ph.i8:                                        ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !164469, !noundef !56
  %i.eu = load i64, ptr %i.df, align 8, !alias.scope !164469
  %.fr59.i = freeze i64 %i.eu                     ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !164469 ; 2 uses
  %i.ex = sub i64 %i.dq, %i.ew
  %invariant.op = sub i64 1, %.fr59.i
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.z, %bb.w
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !164469
  br label %_RINvMsx_NtNtCslwFuT2d6ECx_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskcxRuJ53GpR_9rustworkx.exit

.lr.ph.split.i:                                   ; preds = %bb.z, %.lr.ph.i8
  %i.ey = phi i64 [ %.sink69.i, %bb.z ], [ %i.dh, %.lr.ph.i8 ] ; 3 uses
  %i.ez = phi i64 [ %i.fk, %bb.z ], [ %i.eq, %.lr.ph.i8 ]
  %i.fa = phi i64 [ %.sink70.i, %bb.z ], [ %.promoted.i, %.lr.ph.i8 ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !164470, !noundef !56
  %i.fd = and i8 %i.fc, 63
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %i.et
  %.not.i9 = icmp eq i64 %i.fg, 0
  br i1 %.not.i9, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.i
  %i.fh = add i64 %i.fa, %i.dq
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph.split.i
  %i.fi = tail call i64 @llvm.umax.i64(i64 %.fr59.i, i64 %i.ey) ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.dq
  br i1 %i.fj, label %.lr.ph305, label %.preheader35.i.preheader

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.x
  %.sink70.i = phi i64 [ %i.gi, %bb.ad ], [ %i.gh, %bb.ac ], [ %i.fh, %bb.x ] ; 3 uses
  %.sink69.i = phi i64 [ 0, %bb.ad ], [ %i.ex, %bb.ac ], [ 0, %bb.x ] ; 2 uses
  store i64 %.sink70.i, ptr %i.dr, align 8, !alias.scope !164469
  store i64 %.sink69.i, ptr %i.dg, align 8, !alias.scope !164469
  %i.fk = add i64 %.sink70.i, %i.ds               ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.dm
  br i1 %i.fl, label %.lr.ph.split.i, label %._crit_edge.i

bb.aa:                                            ; preds = %.lr.ph305
  %i.fm = add nuw nsw i64 %.sroa.010.1.i304, 1    ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.dq
  br i1 %i.fn, label %.lr.ph305, label %.preheader35.i.preheader

.preheader35.i.preheader:                         ; preds = %bb.aa, %bb.y
  %i.fo = icmp ult i64 %i.ey, %.fr59.i
  br i1 %i.fo, label %.lr.ph307, label %.split.us.i10

.lr.ph305:                                        ; preds = %bb.y, %bb.aa
  %.sroa.010.1.i304 = phi i64 [ %i.fm, %bb.aa ], [ %i.fi, %bb.y ] ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.010.1.i304
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !164471, !noundef !56
  %i.fr = add i64 %.sroa.010.1.i304, %i.fa        ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.dm
  tail call void @llvm.assume(i1 %i.fs)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fr
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !164470, !noundef !56
  %.not20.i = icmp eq i8 %i.fq, %i.fu
  br i1 %.not20.i, label %bb.aa, label %bb.ad

.preheader35.i:                                   ; preds = %bb.ab
  %i.fv = icmp ult i64 %i.ey, %i.fz
  br i1 %i.fv, label %.lr.ph307, label %.split.us.i10

.split.us.i10:                                    ; preds = %.preheader35.i.preheader, %.preheader35.i
  %i.fw = add i64 %i.fa, %i.dq                    ; 2 uses
  store i64 %i.fw, ptr %i.dr, align 8, !alias.scope !164469
  store i64 0, ptr %i.dg, align 8, !alias.scope !164469
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fa, ptr %i.fx, align 8, !alias.scope !164472
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fw, ptr %i.fy, align 8, !alias.scope !164472
  br label %_RINvMsx_NtNtCslwFuT2d6ECx_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskcxRuJ53GpR_9rustworkx.exit

.lr.ph307:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.05.0.i306 = phi i64 [ %i.fz, %.preheader35.i ], [ %.fr59.i, %.preheader35.i.preheader ]
  %i.fz = add i64 %.sroa.05.0.i306, -1            ; 6 uses
  %i.ga = icmp ult i64 %i.fz, %i.dq
  br i1 %i.ga, label %bb.ab, label %.split31.us.i

bb.ab:                                            ; preds = %.lr.ph307
  %i.gb = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fz
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !164471, !noundef !56
  %i.gd = add i64 %i.fz, %i.fa                    ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.dm
  tail call void @llvm.assume(i1 %i.ge)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gd
  %i.gg = load i8, ptr %i.gf, align 1, !alias.scope !164470, !noundef !56
  %.not19.i = icmp eq i8 %i.gc, %i.gg
  br i1 %.not19.i, label %.preheader35.i, label %bb.ac

.split31.us.i:                                    ; preds = %.lr.ph307
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.fz, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #60, !noalias !164473
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.gh = add i64 %i.fa, %i.ew
  br label %bb.z

bb.ad:                                            ; preds = %.lr.ph305
  %.reass.reass = add i64 %i.fa, %invariant.op
  %i.gi = add i64 %.reass.reass, %.sroa.010.1.i304
  br label %bb.z

bb.ae:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164477)
  %.promoted.i11 = load i64, ptr %i.dr, align 8, !alias.scope !164475 ; 2 uses
  %i.gj = add i64 %.promoted.i11, %i.ds           ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %i.dm
  br i1 %i.gk, label %.lr.ph.i14, label %._crit_edge.i12

.lr.ph.i14:                                       ; preds = %bb.ae
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !164475, !noundef !56
  %i.gn = load i64, ptr %i.df, align 8, !alias.scope !164475
  %.fr214 = freeze i64 %i.gn                      ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !164475
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.fr214, i64 range(i64 0, -9223372036854775808) %i.dq)
  %i.gq = add i64 %.fr214, -1                     ; 2 uses
  %.first_iter.i15 = icmp ult i64 %i.gq, %i.dq
  %exitcond.not.i16309.not = icmp ult i64 %.fr214, %i.dq
  %invariant.op358 = sub i64 1, %.fr214
  %.not33.i.us312 = icmp eq i64 %.fr214, 0        ; 2 uses
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.ah, %.lr.ph.i14
  %i.gr = phi i64 [ %i.hq, %bb.ah ], [ %i.gj, %.lr.ph.i14 ]
  %i.gs = phi i64 [ %.sink.i17, %bb.ah ], [ %.promoted.i11, %.lr.ph.i14 ] ; 7 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gr
  %i.gu = load i8, ptr %i.gt, align 1, !alias.scope !164476, !noundef !56
  %i.gv = and i8 %i.gu, 63
  %i.gw = zext nneg i8 %i.gv to i64
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = and i64 %i.gx, %i.gm
  %.not.us.i = icmp eq i64 %i.gy, 0
  br i1 %.not.us.i, label %bb.ag, label %.preheader34.i.preheader

.preheader34.i.preheader:                         ; preds = %.lr.ph.split.us.i
  br i1 %exitcond.not.i16309.not, label %.lr.ph311, label %.preheader.i18.preheader

.preheader34.i:                                   ; preds = %.lr.ph311
  %i.gz = add i64 %.sroa.010.1.us.i310, 1         ; 2 uses
  %exitcond.not.i16 = icmp eq i64 %i.gz, %umax.i
  br i1 %exitcond.not.i16, label %.preheader.i18.preheader, label %.lr.ph311

.preheader.i18.preheader:                         ; preds = %.preheader34.i, %.preheader34.i.preheader
  br i1 %.first_iter.i15, label %.preheader.i18.us.preheader, label %.preheader.split.i20

.preheader.i18.us.preheader:                      ; preds = %.preheader.i18.preheader
  br i1 %.not33.i.us312, label %.split.us.i20, label %.lr.ph314

.preheader.i18.us:                                ; preds = %.lr.ph314
  %.not33.i.us = icmp eq i64 %i.ha, 0
  br i1 %.not33.i.us, label %.split.us.i20, label %.lr.ph314

.lr.ph314:                                        ; preds = %.preheader.i18.us.preheader, %.preheader.i18.us
  %.sroa.05.0.us.i.us313 = phi i64 [ %i.ha, %.preheader.i18.us ], [ %.fr214, %.preheader.i18.us.preheader ]
  %i.ha = add i64 %.sroa.05.0.us.i.us313, -1      ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !alias.scope !164477, !noundef !56
  %i.hd = add i64 %i.ha, %i.gs                    ; 2 uses
  %i.he = icmp ult i64 %i.hd, %i.dm
  tail call void @llvm.assume(i1 %i.he)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hd
  %i.hg = load i8, ptr %i.hf, align 1, !alias.scope !164476, !noundef !56
  %.not19.us.i.us = icmp eq i8 %i.hc, %i.hg
  br i1 %.not19.us.i.us, label %.preheader.i18.us, label %.split.us

.split.us:                                        ; preds = %.lr.ph314
  %i.hh = add i64 %i.gs, %i.gp
  br label %bb.ah

.preheader.split.i20:                             ; preds = %.preheader.i18.preheader
  br i1 %.not33.i.us312, label %.split.us.i20, label %.split31.us.i21

.lr.ph311:                                        ; preds = %.preheader34.i.preheader, %.preheader34.i
  %.sroa.010.1.us.i310 = phi i64 [ %i.gz, %.preheader34.i ], [ %.fr214, %.preheader34.i.preheader ] ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.010.1.us.i310
  %i.hj = load i8, ptr %i.hi, align 1, !alias.scope !164477, !noundef !56
  %i.hk = add i64 %.sroa.010.1.us.i310, %i.gs     ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.dm
  tail call void @llvm.assume(i1 %i.hl)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hk
  %i.hn = load i8, ptr %i.hm, align 1, !alias.scope !164476, !noundef !56
  %.not20.us.i = icmp eq i8 %i.hj, %i.hn
  br i1 %.not20.us.i, label %.preheader34.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph311
  %.reass281.reass = add i64 %i.gs, %invariant.op358
  %i.ho = add i64 %.reass281.reass, %.sroa.010.1.us.i310
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.us.i
  %i.hp = add i64 %i.gs, %i.dq
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.split.us
  %.sink.i17 = phi i64 [ %i.hp, %bb.ag ], [ %i.ho, %bb.af ], [ %i.hh, %.split.us ] ; 3 uses
  store i64 %.sink.i17, ptr %i.dr, align 8, !alias.scope !164475
  %i.hq = add i64 %.sink.i17, %i.ds               ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.dm
  br i1 %i.hr, label %.lr.ph.split.us.i, label %._crit_edge.i12

._crit_edge.i12:                                  ; preds = %bb.ah, %bb.ae
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !164475
  br label %_RINvMsx_NtNtCslwFuT2d6ECx_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskcxRuJ53GpR_9rustworkx.exit

.split.us.i20:                                    ; preds = %.preheader.i18.us.preheader, %.preheader.i18.us, %.preheader.split.i20
  %i.hs = add i64 %i.gs, %i.dq                    ; 2 uses
  store i64 %i.hs, ptr %i.dr, align 8, !alias.scope !164475
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gs, ptr %i.ht, align 8, !alias.scope !164478
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hs, ptr %i.hu, align 8, !alias.scope !164478
  br label %_RINvMsx_NtNtCslwFuT2d6ECx_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskcxRuJ53GpR_9rustworkx.exit

.split31.us.i21:                                  ; preds = %.preheader.split.i20
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.gq, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #60, !noalias !164479
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvYINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetTjjEENtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.11 = alloca [56 x i8], align 8           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164531)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !164532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !164532
  invoke void @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types3setNtB2_5PySet5empty(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c)
          to label %bb.b unwind label %bb.q, !noalias !164532

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.i, %.body.i.i
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.010.0.copyload.i.i) #59, !noalias !164532
  br label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !range !57, !noalias !164532, !noundef !56
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.010.0.copyload.i.i = load ptr, ptr %i.g, align 8, !noalias !164532 ; 8 uses
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.411.0..sroa_idx.i.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !164532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !164532
  %.val21.i.i = load ptr, ptr %1, align 8, !alias.scope !164533 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val22.i.i = load i64, ptr %i.h, align 8, !alias.scope !164533, !noundef !56 ; 3 uses
  %i.i = icmp eq i64 %.val22.i.i, 0
  br i1 %i.i, label %bb.r, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.j = shl i64 %.val22.i.i, 4                   ; 2 uses
  %i.k = add i64 %i.j, 16                         ; 2 uses
  %i.l = add i64 %.val22.i.i, 17
  %i.m = add i64 %i.l, %i.k                       ; 4 uses
  %i.n = icmp uge i64 %i.m, %i.k
  %i.o = icmp ult i64 %i.m, 9223372036854775793
  tail call void @llvm.assume(i1 %i.n)
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21.i.i) ]
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.r, label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.q = sub nuw nsw i64 -16, %i.j
  %i.r = getelementptr inbounds i8, ptr %.val21.i.i, i64 %i.q
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !164532
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !164532
  store ptr %.sroa.010.0.copyload.i.i, ptr %i.d, align 8, !noalias !164532
  %.sroa.029.0.copyload.i.i = load ptr, ptr %1, align 8, !alias.scope !164533, !nonnull !56, !noundef !56 ; 4 uses
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.430.0.copyload.i.i = load i64, ptr %.sroa.430.0..sroa_idx.i.i, align 8, !alias.scope !164533 ; 4 uses
  %.sroa.532.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.532.0.copyload.i.i = load i64, ptr %.sroa.532.0..sroa_idx.i.i, align 8, !alias.scope !164533 ; 2 uses
  %.val24.i.i.i.i.i.i = load <16 x i8>, ptr %.sroa.029.0.copyload.i.i, align 16, !noalias !164534
  %i.s = icmp eq i64 %.sroa.430.0.copyload.i.i, 0 ; 4 uses
  br i1 %i.s, label %bb.f, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.t = icmp slt i64 %.sroa.430.0.copyload.i.i, 1152921504606846975
  tail call void @llvm.assume(i1 %i.t)
  %i.u = shl i64 %.sroa.430.0.copyload.i.i, 4     ; 2 uses
  %i.v = add i64 %i.u, 16                         ; 2 uses
  %i.w = add nsw i64 %.sroa.430.0.copyload.i.i, 17
  %i.x = add i64 %i.w, %i.v                       ; 3 uses
  %i.y = icmp uge i64 %i.x, %i.v
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp ult i64 %i.x, 9223372036854775793
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = sub nuw nsw i64 -16, %i.u
  %i.ab = getelementptr inbounds i8, ptr %.sroa.029.0.copyload.i.i, i64 %i.aa
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.e
  %.sroa.513.0.i.i.i.i.i = phi ptr [ undef, %bb.e ], [ %i.ab, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ] ; 6 uses
  %.sroa.412.0.i.i.i.i.i = phi i64 [ undef, %bb.e ], [ %i.x, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ] ; 6 uses
  %.sink.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ 16, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ac = icmp eq i64 %.sroa.532.0.copyload.i.i, 0
  br i1 %i.ac, label %_RNvXsv_NtCs3sCKvcUjPpt_9hashbrown3setINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.ad = icmp sgt <16 x i8> %.val24.i.i.i.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.029.0.copyload.i.i, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.422.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.n, %.lr.ph.i.i
  %.sroa.15.070.i.i = phi ptr [ %.sroa.029.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.15.1.i.i, %bb.n ] ; 2 uses
  %.sroa.19.069.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.sroa.19.1.i.i, %bb.n ] ; 2 uses
  %.sroa.23.068.i.i = phi i16 [ %i.ae, %.lr.ph.i.i ], [ %i.as, %bb.n ] ; 2 uses
  %.sroa.27.067.i.i = phi i64 [ %.sroa.532.0.copyload.i.i, %.lr.ph.i.i ], [ %i.av, %bb.n ]
  %.not10.i.i.i.i = icmp eq i16 %.sroa.23.068.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.ai = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.sroa.19.069.i.i, %bb.g ] ; 2 uses
  %i.aj = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.sroa.15.070.i.i, %bb.g ]
  %.val68.i.i.i.i = load <16 x i8>, ptr %i.ai, align 16, !noalias !164535
  %i.ak = icmp sgt <16 x i8> %.val68.i.i.i.i, splat (i8 -1)
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -256 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ak to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i

bb.h:                                             ; preds = %.loopexit.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.an, %bb.h ], [ %i.bc, %bb.k ]
  %i.ao = icmp eq i64 %.sroa.412.0.i.i.i.i.i, 0
  %or.cond.i.i = or i1 %i.s, %i.ao
  br i1 %or.cond.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.body.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.513.0.i.i.i.i.i, i64 noundef %.sroa.412.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i.i) #59, !noalias !164536
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx.exit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.sroa.19.1.i.i = phi ptr [ %.sroa.19.069.i.i, %bb.g ], [ %i.am, %.lr.ph.i.i.i.i ]
  %.sroa.15.1.i.i = phi ptr [ %.sroa.15.070.i.i, %bb.g ], [ %i.al, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.23.068.i.i, %bb.g ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ap = add i16 %.lcssa.i.i.i.i, -1
  %i.aq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = and i16 %i.ap, %.lcssa.i.i.i.i
  %i.at = sub nsw i64 0, %i.ar
  %i.au = getelementptr inbounds [16 x i8], ptr %.sroa.15.1.i.i, i64 %i.at ; 2 uses
  %i.av = add i64 %.sroa.27.067.i.i, -1           ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -16
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !164537, !noundef !56
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.az = load i64, ptr %i.ay, align 8, !noalias !164537, !noundef !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !164532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !164538
  invoke fastcc void @_RNvXsn_NtNtCsi0YPOvDEjiZ_4pyo35types5tupleTjjENtNtB9_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, i64 noundef %i.ax, i64 noundef %i.az)
          to label %.noexc.i.i unwind label %bb.h, !noalias !164532

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.ba = load i64, ptr %i.a, align 8, !range !57, !noalias !164538, !noundef !56
  %i.bb = trunc nuw i64 %i.ba to i1
  %.sroa.021.0.copyload.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !164538 ; 4 uses
  br i1 %i.bb, label %_RINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3setINtNtB9_8instance5BoundNtB5_5PySetENtB5_12PySetMethods3addTjjEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %bb.j

_RINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3setINtNtB9_8instance5BoundNtB5_5PySetENtB5_12PySetMethods3addTjjEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.414.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.422.0..sroa_idx.i.i.i, i64 56, i1 false), !noalias !164539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !164538
  br label %.loopexit74.i.i

bb.j:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !164538
  invoke void @_RNvNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3setINtNtBa_8instance5BoundNtB6_5PySetENtB6_12PySetMethods3add5inner(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef nonnull %.sroa.021.0.copyload.i.i.i)
          to label %_RINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3setINtNtB9_8instance5BoundNtB5_5PySetENtB5_12PySetMethods3addTjjEECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.k, !noalias !164532

bb.k:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.021.0.copyload.i.i.i) #59, !noalias !164540
  br label %.body.i.i

_RNvXsv_NtCs3sCKvcUjPpt_9hashbrown3setINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.n, %bb.f
  %i.bd = icmp eq i64 %.sroa.412.0.i.i.i.i.i, 0
  %or.cond63.i.i = or i1 %i.s, %i.bd
  br i1 %or.cond63.i.i, label %bb.s, label %bb.l

bb.l:                                             ; preds = %_RNvXsv_NtCs3sCKvcUjPpt_9hashbrown3setINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.513.0.i.i.i.i.i, i64 noundef %.sroa.412.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i.i) #59, !noalias !164541
  br label %bb.s

_RINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3setINtNtB9_8instance5BoundNtB5_5PySetENtB5_12PySetMethods3addTjjEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.j
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.021.0.copyload.i.i.i) #59, !noalias !164540
  %.pre.i.i = load i64, ptr %i.b, align 8, !range !57, !noalias !164532
  %i.be = trunc nuw i64 %.pre.i.i to i1
  br i1 %i.be, label %.loopexit74.i.i.loopexit, label %bb.n

.loopexit74.i.i.loopexit:                         ; preds = %_RINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3setINtNtB9_8instance5BoundNtB5_5PySetENtB5_12PySetMethods3addTjjEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.6.8.copyload1.pre = load ptr, ptr %i.ah, align 8, !noalias !164533
  br label %.loopexit74.i.i

.loopexit74.i.i:                                  ; preds = %.loopexit74.i.i.loopexit, %_RINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3setINtNtB9_8instance5BoundNtB5_5PySetENtB5_12PySetMethods3addTjjEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i
end_hunk_3
begin_hunk_4_@llvm.fabs.v2f64
!164278 = !{!164242, !164240, !164239, !164238}
!164279 = !{!164244}
!164280 = !{!164256, !164255, !164253, !164252, !164250, !164249, !164247, !164246, !164240, !164239, !164238}
!164281 = !{!164258, !164240, !164239, !164238}
!164282 = !{!164262, !164260}
!164283 = distinct !{!164283, i1 true, !"_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newB21_"}
!164284 = distinct !{!164284, !164283, !"_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newB21_: argument 0"}
!164285 = distinct !{!164285, i1 true, !"_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherB1t_"}
!164286 = distinct !{!164286, !164285, !"_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherB1t_: argument 0"}
!164287 = distinct !{!164287, i1 true, !"_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newB21_"}
!164288 = distinct !{!164288, !164287, !"_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newB21_: argument 0"}
!164289 = distinct !{!164289, i1 true, !"_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherB1t_"}
!164290 = distinct !{!164290, !164289, !"_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherB1t_: argument 0"}
!164291 = distinct !{!164291, i1 true, !"_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newB21_"}
!164292 = distinct !{!164292, !164291, !"_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newB21_: argument 0"}
!164293 = distinct !{!164293, i1 true, !"_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherB1t_"}
!164294 = distinct !{!164294, !164293, !"_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherB1t_: argument 0"}
!164295 = distinct !{!164295, i1 true, !"_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newB21_"}
!164296 = distinct !{!164296, !164295, !"_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml3KeyNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newB21_: argument 0"}
!164297 = !{!164284}
!164298 = !{!164286, !164284}
!164299 = !{!164288}
!164300 = !{!164290, !164288}
!164301 = !{!164292}
!164302 = !{!164294, !164292}
!164303 = !{!164296}
!164304 = distinct !{!164304, i1 true, !"_RNvXsg_NtNtCsi0YPOvDEjiZ_4pyo35types5tupleTRINtNtB9_8instance2PyNtNtB7_3any5PyAnyEENtNtB9_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx"}
!164305 = distinct !{!164305, !164304, !"_RNvXsg_NtNtCsi0YPOvDEjiZ_4pyo35types5tupleTRINtNtB9_8instance2PyNtNtB7_3any5PyAnyEENtNtB9_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx: argument 0"}
!164306 = distinct !{!164306, i1 true, !"_RNvYRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx"}
!164307 = distinct !{!164307, !164306, !"_RNvYRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 0"}
!164308 = distinct !{!164308, i1 true, !"_RNvXs_NtCsi0YPOvDEjiZ_4pyo34callINtNtB6_8instance5BoundNtNtNtB6_5types5tuple7PyTupleENtB4_10PyCallArgs15call_positional"}
!164309 = distinct !{!164309, !164308, !"_RNvXs_NtCsi0YPOvDEjiZ_4pyo34callINtNtB6_8instance5BoundNtNtNtB6_5types5tuple7PyTupleENtB4_10PyCallArgs15call_positional: argument 0"}
!164310 = distinct !{!164310, i1 true, !"_RNvXs3_NtCsi0YPOvDEjiZ_4pyo34callINtNtB7_8instance8BorrowedNtNtNtB7_5types5tuple7PyTupleENtB5_10PyCallArgs15call_positional"}
!164311 = distinct !{!164311, !164310, !"_RNvXs3_NtCsi0YPOvDEjiZ_4pyo34callINtNtB7_8instance8BorrowedNtNtNtB7_5types5tuple7PyTupleENtB5_10PyCallArgs15call_positional: argument 0"}
!164312 = !{!164307, !164305}
!164313 = !{!164305}
!164314 = !{!164309}
!164315 = !{!164311}
!164316 = !{!164311, !164309}
!164317 = distinct !{!164317, i1 true, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE15make_contiguousCskcxRuJ53GpR_9rustworkx"}
!164318 = distinct !{!164318, !164317, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE15make_contiguousCskcxRuJ53GpR_9rustworkx: argument 0"}
!164319 = !{!164318}
!164320 = distinct !{!164320, i1 true, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBE_5types3any5PyAnyEENtNtBE_10conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx"}
!164321 = distinct !{!164321, !164320, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBE_5types3any5PyAnyEENtNtBE_10conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 1"}
!164322 = distinct !{!164322, !164320, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBE_5types3any5PyAnyEENtNtBE_10conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 0"}
!164323 = distinct !{!164323, i1 true, !"_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3vecINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB8_8instance2PyNtNtNtB8_5types3any5PyAnyEENtNtB8_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx"}
!164324 = distinct !{!164324, !164323, !"_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3vecINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB8_8instance2PyNtNtNtB8_5types3any5PyAnyEENtNtB8_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx: argument 1"}
!164325 = distinct !{!164325, !164323, !"_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3vecINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB8_8instance2PyNtNtNtB8_5types3any5PyAnyEENtNtB8_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx: argument 0"}
!164326 = distinct !{!164326, i1 true, !"_RINvYINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtCs87CvPiUlf0m_5alloc3vec3VecB3_EECskcxRuJ53GpR_9rustworkx"}
!164327 = distinct !{!164327, !164326, !"_RINvYINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtCs87CvPiUlf0m_5alloc3vec3VecB3_EECskcxRuJ53GpR_9rustworkx: argument 1"}
!164328 = distinct !{!164328, !164326, !"_RINvYINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtCs87CvPiUlf0m_5alloc3vec3VecB3_EECskcxRuJ53GpR_9rustworkx: argument 0"}
!164329 = distinct !{!164329, i1 true, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35types5tuple16array_into_tupleKj2_ECskcxRuJ53GpR_9rustworkx"}
!164330 = distinct !{!164330, !164329, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35types5tuple16array_into_tupleKj2_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!164331 = distinct !{!164331, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueAINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtBH_5types3any5PyAnyEj2_ECskcxRuJ53GpR_9rustworkx"}
!164332 = distinct !{!164332, !164331, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueAINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtBH_5types3any5PyAnyEj2_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!164333 = distinct !{!164333, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtBH_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx"}
!164334 = distinct !{!164334, !164333, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtBH_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164335 = !{!164328, !164327, !164325, !164324, !164322, !164321}
!164336 = !{!164330}
!164337 = !{!164334, !164332}
!164338 = distinct !{!164338, i1 true, !"_RNvYRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx"}
!164339 = distinct !{!164339, !164338, !"_RNvYRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 0"}
!164340 = distinct !{!164340, i1 true, !"_RNvYRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx"}
!164341 = distinct !{!164341, !164340, !"_RNvYRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 0"}
!164342 = distinct !{!164342, i1 true, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35types5tuple16array_into_tupleKj2_ECskcxRuJ53GpR_9rustworkx"}
!164343 = distinct !{!164343, !164342, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35types5tuple16array_into_tupleKj2_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!164344 = distinct !{!164344, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueAINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtBH_5types3any5PyAnyEj2_ECskcxRuJ53GpR_9rustworkx"}
!164345 = distinct !{!164345, !164344, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueAINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtBH_5types3any5PyAnyEj2_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!164346 = distinct !{!164346, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtBH_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx"}
!164347 = distinct !{!164347, !164346, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtBH_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164348 = !{!164339}
!164349 = !{!164341}
!164350 = !{!164343}
!164351 = !{!164347, !164345}
!164352 = distinct !{!164352, i1 true, !"_RNvYjNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx"}
!164353 = distinct !{!164353, !164352, !"_RNvYjNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 0"}
!164354 = distinct !{!164354, i1 true, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35types5tuple16array_into_tupleKj2_ECskcxRuJ53GpR_9rustworkx"}
!164355 = distinct !{!164355, !164354, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35types5tuple16array_into_tupleKj2_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!164356 = distinct !{!164356, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueAINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtBH_5types3any5PyAnyEj2_ECskcxRuJ53GpR_9rustworkx"}
!164357 = distinct !{!164357, !164356, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueAINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtBH_5types3any5PyAnyEj2_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!164358 = distinct !{!164358, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtBH_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx"}
!164359 = distinct !{!164359, !164358, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtBH_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164360 = !{!164353}
!164361 = !{!164355}
!164362 = !{!164359, !164357}
!164363 = distinct !{!164363, i1 true, !"_RNvYjNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx"}
!164364 = distinct !{!164364, !164363, !"_RNvYjNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 0"}
!164365 = distinct !{!164365, i1 true, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35types5tuple16array_into_tupleKj2_ECskcxRuJ53GpR_9rustworkx"}
!164366 = distinct !{!164366, !164365, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35types5tuple16array_into_tupleKj2_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!164367 = distinct !{!164367, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueAINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtBH_5types3any5PyAnyEj2_ECskcxRuJ53GpR_9rustworkx"}
!164368 = distinct !{!164368, !164367, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueAINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtBH_5types3any5PyAnyEj2_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!164369 = distinct !{!164369, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtBH_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx"}
!164370 = distinct !{!164370, !164369, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtBH_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164371 = !{!164364}
!164372 = !{!164366}
!164373 = !{!164370, !164368}
!164374 = distinct !{!164374, i1 true, !"_RNvXsr_NtCslwFuT2d6ECx_4core3fmtShNtB5_5Debug3fmtCskcxRuJ53GpR_9rustworkx"}
!164375 = distinct !{!164375, !164374, !"_RNvXsr_NtCslwFuT2d6ECx_4core3fmtShNtB5_5Debug3fmtCskcxRuJ53GpR_9rustworkx: argument 1"}
!164376 = distinct !{!164376, !164374, !"_RNvXsr_NtCslwFuT2d6ECx_4core3fmtShNtB5_5Debug3fmtCskcxRuJ53GpR_9rustworkx: argument 0"}
!164377 = distinct !{!164377, i1 true, !"_RINvMs6_NtNtCslwFuT2d6ECx_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECskcxRuJ53GpR_9rustworkx"}
!164378 = distinct !{!164378, !164377, !"_RINvMs6_NtNtCslwFuT2d6ECx_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164379 = !{!164376, !164375}
!164380 = !{!164376}
!164381 = !{!164378, !164376, !164375}
!164382 = distinct !{!164382, i1 true, !"_RNvXsr_NtCslwFuT2d6ECx_4core3fmtSjNtB5_5Debug3fmtCskcxRuJ53GpR_9rustworkx"}
!164383 = distinct !{!164383, !164382, !"_RNvXsr_NtCslwFuT2d6ECx_4core3fmtSjNtB5_5Debug3fmtCskcxRuJ53GpR_9rustworkx: argument 1"}
!164384 = distinct !{!164384, !164382, !"_RNvXsr_NtCslwFuT2d6ECx_4core3fmtSjNtB5_5Debug3fmtCskcxRuJ53GpR_9rustworkx: argument 0"}
!164385 = distinct !{!164385, i1 true, !"_RINvMs6_NtNtCslwFuT2d6ECx_4core3fmt8buildersNtB6_9DebugList7entriesRjINtNtNtBa_5slice4iter4IterjEECskcxRuJ53GpR_9rustworkx"}
!164386 = distinct !{!164386, !164385, !"_RINvMs6_NtNtCslwFuT2d6ECx_4core3fmt8buildersNtB6_9DebugList7entriesRjINtNtNtBa_5slice4iter4IterjEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164387 = !{!164384, !164383}
!164388 = !{!164384}
!164389 = !{!164386, !164384, !164383}
!164390 = distinct !{!164390, i1 true, !"_RNvMNtCsi0YPOvDEjiZ_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx7digraph19RemoveNodeEdgeValueE19create_class_objectB15_"}
!164391 = distinct !{!164391, !164390, !"_RNvMNtCsi0YPOvDEjiZ_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx7digraph19RemoveNodeEdgeValueE19create_class_objectB15_: argument 0"}
!164392 = distinct !{!164392, !164390, !"_RNvMNtCsi0YPOvDEjiZ_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx7digraph19RemoveNodeEdgeValueE19create_class_objectB15_: argument 1"}
!164393 = distinct !{!164393, i1 true, !"_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx7digraph19RemoveNodeEdgeValueE15get_or_try_initB1p_"}
!164394 = distinct !{!164394, !164393, !"_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx7digraph19RemoveNodeEdgeValueE15get_or_try_initB1p_: argument 0"}
!164395 = distinct !{!164395, i1 true, !"_RNvMNtCsi0YPOvDEjiZ_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx7digraph19RemoveNodeEdgeValueE27create_class_object_of_typeB15_"}
!164396 = distinct !{!164396, !164395, !"_RNvMNtCsi0YPOvDEjiZ_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx7digraph19RemoveNodeEdgeValueE27create_class_object_of_typeB15_: argument 0"}
!164397 = distinct !{!164397, !164395, !"_RNvMNtCsi0YPOvDEjiZ_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx7digraph19RemoveNodeEdgeValueE27create_class_object_of_typeB15_: argument 1"}
!164398 = distinct !{!164398, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx7digraph19RemoveNodeEdgeValueEBF_"}
!164399 = distinct !{!164399, !164398, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx7digraph19RemoveNodeEdgeValueEBF_: argument 0"}
!164400 = !{!164391}
!164401 = !{!164392}
!164402 = !{!164391, !164392}
!164403 = !{!164394, !164391, !164392}
!164404 = !{!164396}
!164405 = !{!164397}
!164406 = !{!164396, !164397, !164391, !164392}
!164407 = !{!164397, !164392}
!164408 = !{!164396, !164391}
!164409 = !{!164399}
!164410 = !{!164399, !164397, !164392}
!164411 = !{!164399, !164396, !164397, !164391, !164392}
!164412 = distinct !{!164412, i1 true, !"_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types5tuple7PyTupleECskcxRuJ53GpR_9rustworkx"}
!164413 = distinct !{!164413, !164412, !"_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types5tuple7PyTupleECskcxRuJ53GpR_9rustworkx: argument 0"}
!164414 = distinct !{!164414, i1 true, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!164415 = distinct !{!164415, !164414, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!164416 = distinct !{!164416, i1 true, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!164417 = distinct !{!164417, !164416, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!164418 = !{!164413}
!164419 = !{!164417, !164415}
!164420 = distinct !{!164420, i1 true, !"_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types5tuple7PyTupleECskcxRuJ53GpR_9rustworkx"}
!164421 = distinct !{!164421, !164420, !"_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types5tuple7PyTupleECskcxRuJ53GpR_9rustworkx: argument 0"}
!164422 = !{!164421}
!164423 = distinct !{!164423, i1 true, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35types5tuple16array_into_tupleKj3_ECskcxRuJ53GpR_9rustworkx"}
!164424 = distinct !{!164424, !164423, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35types5tuple16array_into_tupleKj3_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!164425 = !{!164424}
!164426 = distinct !{!164426, i1 true, !"_RNvYjNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx"}
!164427 = distinct !{!164427, !164426, !"_RNvYjNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 0"}
!164428 = distinct !{!164428, i1 true, !"_RNvYRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx"}
!164429 = distinct !{!164429, !164428, !"_RNvYRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 0"}
!164430 = distinct !{!164430, i1 true, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35types5tuple16array_into_tupleKj3_ECskcxRuJ53GpR_9rustworkx"}
!164431 = distinct !{!164431, !164430, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35types5tuple16array_into_tupleKj3_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!164432 = !{!164427}
!164433 = !{!164429}
!164434 = !{!164431}
!164435 = distinct !{!164435, i1 true, !"_RNvXsv_NtNtCslwFuT2d6ECx_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!164436 = distinct !{!164436, !164435, !"_RNvXsv_NtNtCslwFuT2d6ECx_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!164437 = distinct !{!164437, i1 true, !"_RNvXs9_NtNtCslwFuT2d6ECx_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!164438 = distinct !{!164438, !164437, !"_RNvXs9_NtNtCslwFuT2d6ECx_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!164439 = distinct !{!164439, i1 true, !"_RNvXsv_NtNtCslwFuT2d6ECx_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!164440 = distinct !{!164440, !164439, !"_RNvXsv_NtNtCslwFuT2d6ECx_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!164441 = distinct !{!164441, i1 true, !"_RINvNtNtCslwFuT2d6ECx_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECskcxRuJ53GpR_9rustworkx"}
!164442 = distinct !{!164442, !164441, !"_RINvNtNtCslwFuT2d6ECx_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164443 = distinct !{!164443, !164439, !"_RNvXsv_NtNtCslwFuT2d6ECx_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!164444 = distinct !{!164444, i1 true, !"_RNvNtNtCslwFuT2d6ECx_4core5slice6memchr6memchr"}
!164445 = distinct !{!164445, !164444, !"_RNvNtNtCslwFuT2d6ECx_4core5slice6memchr6memchr: argument 0"}
!164446 = distinct !{!164446, i1 true, !"_RINvMsx_NtNtCslwFuT2d6ECx_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskcxRuJ53GpR_9rustworkx"}
!164447 = distinct !{!164447, !164446, !"_RINvMsx_NtNtCslwFuT2d6ECx_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskcxRuJ53GpR_9rustworkx: argument 0"}
!164448 = distinct !{!164448, !164446, !"_RINvMsx_NtNtCslwFuT2d6ECx_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskcxRuJ53GpR_9rustworkx: argument 1"}
!164449 = distinct !{!164449, !164446, !"_RINvMsx_NtNtCslwFuT2d6ECx_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskcxRuJ53GpR_9rustworkx: argument 2"}
!164450 = distinct !{!164450, !164446, !"_RINvMsx_NtNtCslwFuT2d6ECx_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskcxRuJ53GpR_9rustworkx: argument 3"}
!164451 = distinct !{!164451, i1 true, !"_RNvXsy_NtNtCslwFuT2d6ECx_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!164452 = distinct !{!164452, !164451, !"_RNvXsy_NtNtCslwFuT2d6ECx_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!164453 = distinct !{!164453, i1 true, !"_RINvMsx_NtNtCslwFuT2d6ECx_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskcxRuJ53GpR_9rustworkx"}
!164454 = distinct !{!164454, !164453, !"_RINvMsx_NtNtCslwFuT2d6ECx_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskcxRuJ53GpR_9rustworkx: argument 0"}
!164455 = distinct !{!164455, !164453, !"_RINvMsx_NtNtCslwFuT2d6ECx_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskcxRuJ53GpR_9rustworkx: argument 1"}
!164456 = distinct !{!164456, !164453, !"_RINvMsx_NtNtCslwFuT2d6ECx_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskcxRuJ53GpR_9rustworkx: argument 2"}
!164457 = distinct !{!164457, !164453, !"_RINvMsx_NtNtCslwFuT2d6ECx_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECskcxRuJ53GpR_9rustworkx: argument 3"}
!164458 = distinct !{!164458, i1 true, !"_RNvXsy_NtNtCslwFuT2d6ECx_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!164459 = distinct !{!164459, !164458, !"_RNvXsy_NtNtCslwFuT2d6ECx_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!164460 = !{!164436}
!164461 = !{!164438}
!164462 = !{!164440, !164436}
!164463 = !{!164442, !164440, !164436}
!164464 = !{!164443}
!164465 = !{!164440, !164443}
!164466 = !{!164442, !164440, !164443}
!164467 = !{!164445}
!164468 = !{!164447}
!164469 = !{!164448}
!164470 = !{!164449}
!164471 = !{!164450}
!164472 = !{!164452, !164447}
!164473 = !{!164447, !164448, !164449, !164450}
!164474 = !{!164454}
!164475 = !{!164455}
!164476 = !{!164456}
!164477 = !{!164457}
!164478 = !{!164459, !164454}
!164479 = !{!164454, !164455, !164456, !164457}
!164480 = distinct !{!164480, i1 true, !"_RNvXs1_NtNtCsi0YPOvDEjiZ_4pyo311conversions9hashbrownINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetTjjEENtNtB9_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx"}
!164481 = distinct !{!164481, !164480, !"_RNvXs1_NtNtCsi0YPOvDEjiZ_4pyo311conversions9hashbrownINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetTjjEENtNtB9_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx: argument 1"}
!164482 = distinct !{!164482, i1 true, !"_RINvMNtNtCsi0YPOvDEjiZ_4pyo35types3setNtB3_5PySet3newTjjEINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetBP_EECskcxRuJ53GpR_9rustworkx"}
!164483 = distinct !{!164483, !164482, !"_RINvMNtNtCsi0YPOvDEjiZ_4pyo35types3setNtB3_5PySet3newTjjEINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetBP_EECskcxRuJ53GpR_9rustworkx: argument 1"}
!164484 = distinct !{!164484, !164480, !"_RNvXs1_NtNtCsi0YPOvDEjiZ_4pyo311conversions9hashbrownINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetTjjEENtNtB9_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx: argument 0"}
!164485 = distinct !{!164485, !164482, !"_RINvMNtNtCsi0YPOvDEjiZ_4pyo35types3setNtB3_5PySet3newTjjEINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetBP_EECskcxRuJ53GpR_9rustworkx: argument 0"}
!164486 = distinct !{!164486, i1 true, !"_RNvXsn_NtCs3sCKvcUjPpt_9hashbrown3setINtB5_7HashSetTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12IntoIterator9into_iterCskcxRuJ53GpR_9rustworkx"}
!164487 = distinct !{!164487, !164486, !"_RNvXsn_NtCs3sCKvcUjPpt_9hashbrown3setINtB5_7HashSetTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12IntoIterator9into_iterCskcxRuJ53GpR_9rustworkx: argument 1"}
!164488 = distinct !{!164488, !164486, !"_RNvXsn_NtCs3sCKvcUjPpt_9hashbrown3setINtB5_7HashSetTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12IntoIterator9into_iterCskcxRuJ53GpR_9rustworkx: argument 0"}
!164489 = distinct !{!164489, i1 true, !"_RNvXsH_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapTjjEuENtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12IntoIterator9into_iterCskcxRuJ53GpR_9rustworkx"}
!164490 = distinct !{!164490, !164489, !"_RNvXsH_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapTjjEuENtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12IntoIterator9into_iterCskcxRuJ53GpR_9rustworkx: argument 1"}
!164491 = distinct !{!164491, !164489, !"_RNvXsH_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapTjjEuENtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12IntoIterator9into_iterCskcxRuJ53GpR_9rustworkx: argument 0"}
!164492 = distinct !{!164492, i1 true, !"_RNvXsg_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTTjjEuEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12IntoIterator9into_iterCskcxRuJ53GpR_9rustworkx"}
!164493 = distinct !{!164493, !164492, !"_RNvXsg_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTTjjEuEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12IntoIterator9into_iterCskcxRuJ53GpR_9rustworkx: argument 1"}
!164494 = distinct !{!164494, !164492, !"_RNvXsg_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTTjjEuEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12IntoIterator9into_iterCskcxRuJ53GpR_9rustworkx: argument 0"}
!164495 = distinct !{!164495, i1 true, !"_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner4iterTTjjEuEECskcxRuJ53GpR_9rustworkx"}
!164496 = distinct !{!164496, !164495, !"_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner4iterTTjjEuEECskcxRuJ53GpR_9rustworkx: argument 1"}
!164497 = distinct !{!164497, !164495, !"_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner4iterTTjjEuEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164498 = distinct !{!164498, i1 true, !"_RNvXsv_NtCs3sCKvcUjPpt_9hashbrown3setINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx"}
!164499 = distinct !{!164499, !164498, !"_RNvXsv_NtCs3sCKvcUjPpt_9hashbrown3setINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx: argument 1"}
!164500 = distinct !{!164500, !164498, !"_RNvXsv_NtCs3sCKvcUjPpt_9hashbrown3setINtB5_8IntoIterTjjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx: argument 0"}
!164501 = distinct !{!164501, i1 true, !"_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTTjjEuEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx"}
!164502 = distinct !{!164502, !164501, !"_RINvMsh_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_12RawIterRangeTTjjEuEE9next_implKb0_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!164503 = distinct !{!164503, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx"}
!164504 = distinct !{!164504, !164503, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164505 = distinct !{!164505, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterTjjEuEECskcxRuJ53GpR_9rustworkx"}
!164506 = distinct !{!164506, !164505, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterTjjEuEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164507 = distinct !{!164507, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3raw11RawIntoIterTTjjEuEEECskcxRuJ53GpR_9rustworkx"}
!164508 = distinct !{!164508, !164507, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3raw11RawIntoIterTTjjEuEEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164509 = distinct !{!164509, i1 true, !"_RNvXsA_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_11RawIntoIterTTjjEuEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx"}
!164510 = distinct !{!164510, !164509, !"_RNvXsA_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_11RawIntoIterTTjjEuEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx: argument 0"}
!164511 = distinct !{!164511, i1 true, !"_RINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3setINtNtB9_8instance5BoundNtB5_5PySetENtB5_12PySetMethods3addTjjEECskcxRuJ53GpR_9rustworkx"}
!164512 = distinct !{!164512, !164511, !"_RINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3setINtNtB9_8instance5BoundNtB5_5PySetENtB5_12PySetMethods3addTjjEECskcxRuJ53GpR_9rustworkx: argument 1"}
!164513 = distinct !{!164513, !164511, !"_RINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3setINtNtB9_8instance5BoundNtB5_5PySetENtB5_12PySetMethods3addTjjEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164514 = distinct !{!164514, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx"}
!164515 = distinct !{!164515, !164514, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164516 = distinct !{!164516, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterTjjEuEECskcxRuJ53GpR_9rustworkx"}
!164517 = distinct !{!164517, !164516, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterTjjEuEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164518 = distinct !{!164518, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3raw11RawIntoIterTTjjEuEEECskcxRuJ53GpR_9rustworkx"}
!164519 = distinct !{!164519, !164518, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3raw11RawIntoIterTTjjEuEEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164520 = distinct !{!164520, i1 true, !"_RNvXsA_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_11RawIntoIterTTjjEuEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx"}
!164521 = distinct !{!164521, !164520, !"_RNvXsA_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_11RawIntoIterTTjjEuEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx: argument 0"}
!164522 = distinct !{!164522, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx"}
!164523 = distinct !{!164523, !164522, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterTjjEEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164524 = distinct !{!164524, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterTjjEuEECskcxRuJ53GpR_9rustworkx"}
!164525 = distinct !{!164525, !164524, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterTjjEuEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164526 = distinct !{!164526, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3raw11RawIntoIterTTjjEuEEECskcxRuJ53GpR_9rustworkx"}
!164527 = distinct !{!164527, !164526, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3raw11RawIntoIterTTjjEuEEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164528 = distinct !{!164528, i1 true, !"_RNvXsA_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_11RawIntoIterTTjjEuEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx"}
!164529 = distinct !{!164529, !164528, !"_RNvXsA_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_11RawIntoIterTTjjEuEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx: argument 0"}
!164530 = !{!164481}
!164531 = !{!164483}
!164532 = !{!164485, !164483, !164484, !164481}
!164533 = !{!164483, !164481}
!164534 = !{!164497, !164496, !164494, !164493, !164491, !164490, !164488, !164487, !164485, !164483, !164484, !164481}
!164535 = !{!164502, !164500, !164499, !164485, !164483, !164484, !164481}
!164536 = !{!164510, !164508, !164506, !164504, !164485, !164483, !164484, !164481}
!164537 = !{!164500, !164499, !164485, !164483, !164484, !164481}
!164538 = !{!164513, !164512, !164485, !164483, !164484, !164481}
!164539 = !{!164512, !164485, !164483, !164484, !164481}
!164540 = !{!164513, !164485, !164483, !164484, !164481}
!164541 = !{!164521, !164519, !164517, !164515, !164485, !164483, !164484, !164481}
!164542 = !{!164529, !164527, !164525, !164523, !164485, !164483, !164484, !164481}
!164543 = distinct !{!164543, i1 true, !"_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3vecINtNtCs87CvPiUlf0m_5alloc3vec3VecIBN_INtNtB8_8instance2PyNtNtNtB8_5types3any5PyAnyEEENtNtB8_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx"}
!164544 = distinct !{!164544, !164543, !"_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3vecINtNtCs87CvPiUlf0m_5alloc3vec3VecIBN_INtNtB8_8instance2PyNtNtNtB8_5types3any5PyAnyEEENtNtB8_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx: argument 1"}
!164545 = distinct !{!164545, i1 true, !"_RINvYINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBF_5types3any5PyAnyEENtNtBF_10conversion12IntoPyObject28owned_sequence_into_pyobjectIB4_B3_EECskcxRuJ53GpR_9rustworkx"}
!164546 = distinct !{!164546, !164545, !"_RINvYINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBF_5types3any5PyAnyEENtNtBF_10conversion12IntoPyObject28owned_sequence_into_pyobjectIB4_B3_EECskcxRuJ53GpR_9rustworkx: argument 1"}
!164547 = distinct !{!164547, i1 true, !"_RINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB3_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB7_8instance2PyNtNtB5_3any5PyAnyEEIBS_BR_EECskcxRuJ53GpR_9rustworkx"}
!164548 = distinct !{!164548, !164547, !"_RINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB3_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB7_8instance2PyNtNtB5_3any5PyAnyEEIBS_BR_EECskcxRuJ53GpR_9rustworkx: argument 1"}
!164549 = distinct !{!164549, !164543, !"_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3vecINtNtCs87CvPiUlf0m_5alloc3vec3VecIBN_INtNtB8_8instance2PyNtNtNtB8_5types3any5PyAnyEEENtNtB8_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx: argument 0"}
!164550 = distinct !{!164550, !164545, !"_RINvYINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBF_5types3any5PyAnyEENtNtBF_10conversion12IntoPyObject28owned_sequence_into_pyobjectIB4_B3_EECskcxRuJ53GpR_9rustworkx: argument 0"}
!164551 = distinct !{!164551, !164547, !"_RINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB3_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB7_8instance2PyNtNtB5_3any5PyAnyEEIBS_BR_EECskcxRuJ53GpR_9rustworkx: argument 0"}
!164552 = distinct !{!164552, i1 true, !"_RNvXsg_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_INtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBO_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12IntoIterator9into_iterCskcxRuJ53GpR_9rustworkx"}
!164553 = distinct !{!164553, !164552, !"_RNvXsg_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_INtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBO_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12IntoIterator9into_iterCskcxRuJ53GpR_9rustworkx: argument 1"}
!164554 = distinct !{!164554, i1 true, !"_RINvYINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtB8_3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB16_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3mapINtNtB2c_6result6ResultINtB14_5BoundB1B_ENtNtB16_3err5PyErrENCINvMNtB1F_4listNtB47_6PyList3newBR_IBS_BR_EE0ECskcxRuJ53GpR_9rustworkx"}
!164555 = distinct !{!164555, !164554, !"_RINvYINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtB8_3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB16_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3mapINtNtB2c_6result6ResultINtB14_5BoundB1B_ENtNtB16_3err5PyErrENCINvMNtB1F_4listNtB47_6PyList3newBR_IBS_BR_EE0ECskcxRuJ53GpR_9rustworkx: argument 1"}
!164556 = distinct !{!164556, !164554, !"_RINvYINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtB8_3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB16_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3mapINtNtB2c_6result6ResultINtB14_5BoundB1B_ENtNtB16_3err5PyErrENCINvMNtB1F_4listNtB47_6PyList3newBR_IBS_BR_EE0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!164557 = distinct !{!164557, i1 true, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtB12_3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB21_5types3any5PyAnyEEENCINvMNtB2A_4listNtB35_6PyList3newB1L_IB1M_B1L_EE0ENtNtNtBa_6traits8iterator8Iterator8try_foldiNCINvNvXs_NtB8_4takeINtB4G_4TakepEB3O_8try_fold5checkINtNtBc_6result6ResultINtB1Z_5BoundB2w_ENtNtB21_3err5PyErrEiIB5o_iB61_ENCB31_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6l_iEECskcxRuJ53GpR_9rustworkx"}
!164558 = distinct !{!164558, !164557, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtB12_3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB21_5types3any5PyAnyEEENCINvMNtB2A_4listNtB35_6PyList3newB1L_IB1M_B1L_EE0ENtNtNtBa_6traits8iterator8Iterator8try_foldiNCINvNvXs_NtB8_4takeINtB4G_4TakepEB3O_8try_fold5checkINtNtBc_6result6ResultINtB1Z_5BoundB2w_ENtNtB21_3err5PyErrEiIB5o_iB61_ENCB31_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6l_iEECskcxRuJ53GpR_9rustworkx: argument 1"}
!164559 = distinct !{!164559, i1 true, !"_RINvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB2g_8adapters3map12map_try_foldBX_INtNtB2i_6result6ResultINtB1a_5BoundB1H_ENtNtB1c_3err5PyErrEiINtNtNtB2i_3ops12control_flow11ControlFlowIB3X_iB4B_EiENCINvMNtB1L_4listNtB5U_6PyList3newBX_IBY_BX_EE0NCINvNvXs_NtB3m_4takeINtB6J_4TakepEB2a_8try_fold5checkB3W_iB5B_NCB5Q_s_0E0E0B4V_ECskcxRuJ53GpR_9rustworkx"}
!164560 = distinct !{!164560, !164559, !"_RINvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB2g_8adapters3map12map_try_foldBX_INtNtB2i_6result6ResultINtB1a_5BoundB1H_ENtNtB1c_3err5PyErrEiINtNtNtB2i_3ops12control_flow11ControlFlowIB3X_iB4B_EiENCINvMNtB1L_4listNtB5U_6PyList3newBX_IBY_BX_EE0NCINvNvXs_NtB3m_4takeINtB6J_4TakepEB2a_8try_fold5checkB3W_iB5B_NCB5Q_s_0E0E0B4V_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!164561 = distinct !{!164561, i1 true, !"_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters4takeINtB5_4TakeQINtNtB7_3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtB1k_3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2j_5types3any5PyAnyEEENCINvMNtB2S_4listNtB3n_6PyList3newB23_IB24_B23_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCB3j_s_0INtNtBb_6result6ResultiNtNtB2j_3err5PyErrEECskcxRuJ53GpR_9rustworkx"}
!164562 = distinct !{!164562, !164561, !"_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters4takeINtB5_4TakeQINtNtB7_3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtB1k_3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2j_5types3any5PyAnyEEENCINvMNtB2S_4listNtB3n_6PyList3newB23_IB24_B23_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCB3j_s_0INtNtBb_6result6ResultiNtNtB2j_3err5PyErrEECskcxRuJ53GpR_9rustworkx: argument 1"}
!164563 = distinct !{!164563, !164561, !"_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters4takeINtB5_4TakeQINtNtB7_3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtB1k_3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2j_5types3any5PyAnyEEENCINvMNtB2S_4listNtB3n_6PyList3newB23_IB24_B23_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCB3j_s_0INtNtBb_6result6ResultiNtNtB2j_3err5PyErrEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164564 = distinct !{!164564, i1 true, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtB1n_3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2m_5types3any5PyAnyEEENCINvMNtB2V_4listNtB3q_6PyList3newB26_IB27_B26_EE0ENtB6_8Iterator8try_foldiNCINvNvXs_NtBW_4takeINtB4H_4TakepEB49_8try_fold5checkINtNtBc_6result6ResultINtB2k_5BoundB2R_ENtNtB2m_3err5PyErrEiIB5p_iB62_ENCB3m_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6m_iEECskcxRuJ53GpR_9rustworkx"}
!164565 = distinct !{!164565, !164564, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtB1n_3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2m_5types3any5PyAnyEEENCINvMNtB2V_4listNtB3q_6PyList3newB26_IB27_B26_EE0ENtB6_8Iterator8try_foldiNCINvNvXs_NtBW_4takeINtB4H_4TakepEB49_8try_fold5checkINtNtBc_6result6ResultINtB2k_5BoundB2R_ENtNtB2m_3err5PyErrEiIB5p_iB62_ENCB3m_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6m_iEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164566 = distinct !{!164566, i1 true, !"_RINvXs2_NtNtNtCslwFuT2d6ECx_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtB1n_3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2m_5types3any5PyAnyEEENCINvMNtB2V_4listNtB3q_6PyList3newB26_IB27_B26_EE0ENtB6_15IteratorRefSpec13spec_try_foldiNCINvNvXs_NtBW_4takeINtB4V_4TakepENtB6_8Iterator8try_fold5checkINtNtBc_6result6ResultINtB2k_5BoundB2R_ENtNtB2m_3err5PyErrEiIB5N_iB6q_ENCB3m_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6K_iEECskcxRuJ53GpR_9rustworkx"}
!164567 = distinct !{!164567, !164566, !"_RINvXs2_NtNtNtCslwFuT2d6ECx_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtB1n_3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2m_5types3any5PyAnyEEENCINvMNtB2V_4listNtB3q_6PyList3newB26_IB27_B26_EE0ENtB6_15IteratorRefSpec13spec_try_foldiNCINvNvXs_NtBW_4takeINtB4V_4TakepENtB6_8Iterator8try_fold5checkINtNtBc_6result6ResultINtB2k_5BoundB2R_ENtNtB2m_3err5PyErrEiIB5N_iB6q_ENCB3m_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6K_iEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164568 = distinct !{!164568, !164557, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtB12_3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB21_5types3any5PyAnyEEENCINvMNtB2A_4listNtB35_6PyList3newB1L_IB1M_B1L_EE0ENtNtNtBa_6traits8iterator8Iterator8try_foldiNCINvNvXs_NtB8_4takeINtB4G_4TakepEB3O_8try_fold5checkINtNtBc_6result6ResultINtB1Z_5BoundB2w_ENtNtB21_3err5PyErrEiIB5o_iB61_ENCB31_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6l_iEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164569 = distinct !{!164569, !164559, !"_RINvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB2g_8adapters3map12map_try_foldBX_INtNtB2i_6result6ResultINtB1a_5BoundB1H_ENtNtB1c_3err5PyErrEiINtNtNtB2i_3ops12control_flow11ControlFlowIB3X_iB4B_EiENCINvMNtB1L_4listNtB5U_6PyList3newBX_IBY_BX_EE0NCINvNvXs_NtB3m_4takeINtB6J_4TakepEB2a_8try_fold5checkB3W_iB5B_NCB5Q_s_0E0E0B4V_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!164570 = distinct !{!164570, i1 true, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1B_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1z_5BoundB26_ENtNtB1B_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2z_iB3c_EiENCINvMNtB2a_4listNtB4u_6PyList3newBZ_IB10_BZ_EE0NCINvNvXs_NtB6_4takeINtB5k_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2y_iB4b_NCB4q_s_0E0E0CskcxRuJ53GpR_9rustworkx"}
!164571 = distinct !{!164571, !164570, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1B_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1z_5BoundB26_ENtNtB1B_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2z_iB3c_EiENCINvMNtB2a_4listNtB4u_6PyList3newBZ_IB10_BZ_EE0NCINvNvXs_NtB6_4takeINtB5k_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2y_iB4b_NCB4q_s_0E0E0CskcxRuJ53GpR_9rustworkx: argument 1"}
!164572 = distinct !{!164572, !164570, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1B_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1z_5BoundB26_ENtNtB1B_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2z_iB3c_EiENCINvMNtB2a_4listNtB4u_6PyList3newBZ_IB10_BZ_EE0NCINvNvXs_NtB6_4takeINtB5k_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2y_iB4b_NCB4q_s_0E0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!164573 = distinct !{!164573, i1 true, !"_RNCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB5_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB9_8instance2PyNtNtB7_3any5PyAnyEEIBU_BT_EE0CskcxRuJ53GpR_9rustworkx"}
!164574 = distinct !{!164574, !164573, !"_RNCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB5_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB9_8instance2PyNtNtB7_3any5PyAnyEEIBU_BT_EE0CskcxRuJ53GpR_9rustworkx: argument 1"}
!164575 = distinct !{!164575, !164573, !"_RNCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB5_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB9_8instance2PyNtNtB7_3any5PyAnyEEIBU_BT_EE0CskcxRuJ53GpR_9rustworkx: argument 0"}
!164576 = distinct !{!164576, i1 true, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBE_5types3any5PyAnyEENtNtBE_10conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx"}
!164577 = distinct !{!164577, !164576, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBE_5types3any5PyAnyEENtNtBE_10conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 1"}
!164578 = distinct !{!164578, !164576, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBE_5types3any5PyAnyEENtNtBE_10conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 0"}
!164579 = distinct !{!164579, i1 true, !"_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3vecINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB8_8instance2PyNtNtNtB8_5types3any5PyAnyEENtNtB8_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx"}
!164580 = distinct !{!164580, !164579, !"_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3vecINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB8_8instance2PyNtNtNtB8_5types3any5PyAnyEENtNtB8_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx: argument 1"}
!164581 = distinct !{!164581, !164579, !"_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3vecINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB8_8instance2PyNtNtNtB8_5types3any5PyAnyEENtNtB8_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx: argument 0"}
!164582 = distinct !{!164582, i1 true, !"_RINvYINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtCs87CvPiUlf0m_5alloc3vec3VecB3_EECskcxRuJ53GpR_9rustworkx"}
!164583 = distinct !{!164583, !164582, !"_RINvYINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtCs87CvPiUlf0m_5alloc3vec3VecB3_EECskcxRuJ53GpR_9rustworkx: argument 1"}
!164584 = distinct !{!164584, !164582, !"_RINvYINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtCs87CvPiUlf0m_5alloc3vec3VecB3_EECskcxRuJ53GpR_9rustworkx: argument 0"}
!164585 = distinct !{!164585, i1 true, !"_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkINtNtBf_6result6ResultINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtB2i_5types3any5PyAnyENtNtB2i_3err5PyErrEiIB1S_iB3h_ENCINvMNtB2U_4listNtB3S_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtB2g_2PyB2Q_EEIB4l_B4k_EEs_0E0CskcxRuJ53GpR_9rustworkx"}
!164586 = distinct !{!164586, !164585, !"_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkINtNtBf_6result6ResultINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtB2i_5types3any5PyAnyENtNtB2i_3err5PyErrEiIB1S_iB3h_ENCINvMNtB2U_4listNtB3S_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtB2g_2PyB2Q_EEIB4l_B4k_EEs_0E0CskcxRuJ53GpR_9rustworkx: argument 1"}
!164587 = distinct !{!164587, !164585, !"_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkINtNtBf_6result6ResultINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtB2i_5types3any5PyAnyENtNtB2i_3err5PyErrEiIB1S_iB3h_ENCINvMNtB2U_4listNtB3S_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtB2g_2PyB2Q_EEIB4l_B4k_EEs_0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!164588 = distinct !{!164588, i1 true, !"_RNCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB5_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB9_8instance2PyNtNtB7_3any5PyAnyEEIBU_BT_EEs_0CskcxRuJ53GpR_9rustworkx"}
!164589 = distinct !{!164589, !164588, !"_RNCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB5_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB9_8instance2PyNtNtB7_3any5PyAnyEEIBU_BT_EEs_0CskcxRuJ53GpR_9rustworkx: argument 1"}
!164590 = distinct !{!164590, !164588, !"_RNCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB5_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB9_8instance2PyNtNtB7_3any5PyAnyEEIBU_BT_EEs_0CskcxRuJ53GpR_9rustworkx: argument 0"}
!164591 = distinct !{!164591, i1 true, !"_RINvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2g_8adapters3map12map_try_foldBX_INtNtB2i_6result6ResultINtB1a_5BoundB1H_ENtNtB1c_3err5PyErrEuIB3X_uB4B_ENCINvMNtB1L_4listNtB5c_6PyList3newBX_IBY_BX_EE0NCINvNvB2a_12try_for_each4callB3W_B4V_NCB58_s0_0E0E0B4V_ECskcxRuJ53GpR_9rustworkx"}
!164592 = distinct !{!164592, !164591, !"_RINvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2g_8adapters3map12map_try_foldBX_INtNtB2i_6result6ResultINtB1a_5BoundB1H_ENtNtB1c_3err5PyErrEuIB3X_uB4B_ENCINvMNtB1L_4listNtB5c_6PyList3newBX_IBY_BX_EE0NCINvNvB2a_12try_for_each4callB3W_B4V_NCB58_s0_0E0E0B4V_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!164593 = distinct !{!164593, !164591, !"_RINvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1c_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2g_8adapters3map12map_try_foldBX_INtNtB2i_6result6ResultINtB1a_5BoundB1H_ENtNtB1c_3err5PyErrEuIB3X_uB4B_ENCINvMNtB1L_4listNtB5c_6PyList3newBX_IBY_BX_EE0NCINvNvB2a_12try_for_each4callB3W_B4V_NCB58_s0_0E0E0B4V_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!164594 = distinct !{!164594, i1 true, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1B_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1z_5BoundB26_ENtNtB1B_3err5PyErrEuIB2z_uB3c_ENCINvMNtB2a_4listNtB3N_6PyList3newBZ_IB10_BZ_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2y_B3w_NCB3J_s0_0E0E0CskcxRuJ53GpR_9rustworkx"}
!164595 = distinct !{!164595, !164594, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1B_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1z_5BoundB26_ENtNtB1B_3err5PyErrEuIB2z_uB3c_ENCINvMNtB2a_4listNtB3N_6PyList3newBZ_IB10_BZ_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2y_B3w_NCB3J_s0_0E0E0CskcxRuJ53GpR_9rustworkx: argument 1"}
!164596 = distinct !{!164596, !164594, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1B_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1z_5BoundB26_ENtNtB1B_3err5PyErrEuIB2z_uB3c_ENCINvMNtB2a_4listNtB3N_6PyList3newBZ_IB10_BZ_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2y_B3w_NCB3J_s0_0E0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!164597 = distinct !{!164597, i1 true, !"_RNCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB5_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB9_8instance2PyNtNtB7_3any5PyAnyEEIBU_BT_EE0CskcxRuJ53GpR_9rustworkx"}
!164598 = distinct !{!164598, !164597, !"_RNCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB5_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB9_8instance2PyNtNtB7_3any5PyAnyEEIBU_BT_EE0CskcxRuJ53GpR_9rustworkx: argument 1"}
!164599 = distinct !{!164599, !164597, !"_RNCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB5_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB9_8instance2PyNtNtB7_3any5PyAnyEEIBU_BT_EE0CskcxRuJ53GpR_9rustworkx: argument 0"}
!164600 = distinct !{!164600, i1 true, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBE_5types3any5PyAnyEENtNtBE_10conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx"}
!164601 = distinct !{!164601, !164600, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBE_5types3any5PyAnyEENtNtBE_10conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 1"}
!164602 = distinct !{!164602, !164600, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBE_5types3any5PyAnyEENtNtBE_10conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 0"}
!164603 = distinct !{!164603, i1 true, !"_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3vecINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB8_8instance2PyNtNtNtB8_5types3any5PyAnyEENtNtB8_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx"}
!164604 = distinct !{!164604, !164603, !"_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3vecINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB8_8instance2PyNtNtNtB8_5types3any5PyAnyEENtNtB8_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx: argument 1"}
!164605 = distinct !{!164605, !164603, !"_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3vecINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB8_8instance2PyNtNtNtB8_5types3any5PyAnyEENtNtB8_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx: argument 0"}
!164606 = distinct !{!164606, i1 true, !"_RINvYINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtCs87CvPiUlf0m_5alloc3vec3VecB3_EECskcxRuJ53GpR_9rustworkx"}
!164607 = distinct !{!164607, !164606, !"_RINvYINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtCs87CvPiUlf0m_5alloc3vec3VecB3_EECskcxRuJ53GpR_9rustworkx: argument 1"}
!164608 = distinct !{!164608, !164606, !"_RINvYINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8_5types3any5PyAnyENtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtCs87CvPiUlf0m_5alloc3vec3VecB3_EECskcxRuJ53GpR_9rustworkx: argument 0"}
!164609 = distinct !{!164609, i1 true, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator12try_for_each4callINtNtBe_6result6ResultINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtB1L_5types3any5PyAnyENtNtB1L_3err5PyErrEIB1l_uB2K_ENCINvMNtB2n_4listNtB3k_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtB1J_2PyB2j_EEIB3N_B3M_EEs0_0E0CskcxRuJ53GpR_9rustworkx"}
!164610 = distinct !{!164610, !164609, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator12try_for_each4callINtNtBe_6result6ResultINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtB1L_5types3any5PyAnyENtNtB1L_3err5PyErrEIB1l_uB2K_ENCINvMNtB2n_4listNtB3k_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtB1J_2PyB2j_EEIB3N_B3M_EEs0_0E0CskcxRuJ53GpR_9rustworkx: argument 1"}
!164611 = distinct !{!164611, i1 true, !"_RNCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB5_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB9_8instance2PyNtNtB7_3any5PyAnyEEIBU_BT_EEs0_0CskcxRuJ53GpR_9rustworkx"}
!164612 = distinct !{!164612, !164611, !"_RNCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB5_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB9_8instance2PyNtNtB7_3any5PyAnyEEIBU_BT_EEs0_0CskcxRuJ53GpR_9rustworkx: argument 1"}
!164613 = distinct !{!164613, !164609, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator12try_for_each4callINtNtBe_6result6ResultINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtB1L_5types3any5PyAnyENtNtB1L_3err5PyErrEIB1l_uB2K_ENCINvMNtB2n_4listNtB3k_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtB1J_2PyB2j_EEIB3N_B3M_EEs0_0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!164614 = distinct !{!164614, !164611, !"_RNCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB5_6PyList3newINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB9_8instance2PyNtNtB7_3any5PyAnyEEIBU_BT_EEs0_0CskcxRuJ53GpR_9rustworkx: argument 0"}
!164615 = distinct !{!164615, i1 true, !"_RINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types4listINtNtB9_8instance5BoundNtB5_6PyListENtB5_13PyListMethods6appendIBE_NtNtB7_3any5PyAnyEECskcxRuJ53GpR_9rustworkx"}
!164616 = distinct !{!164616, !164615, !"_RINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types4listINtNtB9_8instance5BoundNtB5_6PyListENtB5_13PyListMethods6appendIBE_NtNtB7_3any5PyAnyEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164617 = distinct !{!164617, i1 true, !"_RNvXsp_NtCslwFuT2d6ECx_4core6resultINtB5_6ResultuNtNtCsi0YPOvDEjiZ_4pyo33err5PyErrENtNtNtB7_3ops9try_trait3Try6branchCskcxRuJ53GpR_9rustworkx"}
!164618 = distinct !{!164618, !164617, !"_RNvXsp_NtCslwFuT2d6ECx_4core6resultINtB5_6ResultuNtNtCsi0YPOvDEjiZ_4pyo33err5PyErrENtNtNtB7_3ops9try_trait3Try6branchCskcxRuJ53GpR_9rustworkx: argument 1"}
!164619 = !{!164544}
!164620 = !{!164546}
!164621 = !{!164548}
!164622 = !{!164551, !164548, !164550, !164546, !164549, !164544}
!164623 = !{!164553, !164548, !164546, !164544}
!164624 = !{!164555}
!164625 = !{!164556, !164555}
!164626 = !{!164556}
!164627 = !{!164558}
!164628 = !{!164560}
!164629 = !{!164569, !164560, !164568, !164558, !164567, !164565, !164563, !164562, !164551, !164548, !164550, !164546, !164549, !164544}
!164630 = !{!164584, !164583, !164581, !164580, !164578, !164577, !164575, !164574, !164572, !164571, !164569, !164560, !164568, !164558, !164567, !164565, !164563, !164562, !164551, !164548, !164550, !164546, !164549, !164544}
!164631 = !{!164590, !164589, !164587, !164586, !164572, !164571, !164569, !164560, !164568, !164558, !164567, !164565, !164563, !164562, !164551, !164548, !164550, !164546, !164549, !164544}
!164632 = !{!164592}
!164633 = !{!164560, !164558}
!164634 = !{!164567, !164565, !164563, !164562, !164551, !164548, !164550, !164546, !164549, !164544}
!164635 = !{!164593, !164592, !164551, !164548, !164550, !164546, !164549, !164544}
!164636 = !{!164608, !164607, !164605, !164604, !164602, !164601, !164599, !164598, !164596, !164595, !164593, !164592, !164551, !164548, !164550, !164546, !164549, !164544}
!164637 = !{!164595, !164593, !164592, !164551, !164548, !164550, !164546, !164549, !164544}
!164638 = !{!164612, !164610, !164595, !164593, !164592, !164551, !164548, !164550, !164546, !164549, !164544}
!164639 = !{!164616, !164614, !164612, !164613, !164610, !164596, !164595, !164593, !164592, !164551, !164548, !164550, !164546, !164549, !164544}
!164640 = !{!164618}
!164641 = !{!164548, !164550, !164546, !164549, !164544}
!164642 = distinct !{!164642, i1 true, !"_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3vecINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENtNtB8_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx"}
!164643 = distinct !{!164643, !164642, !"_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3vecINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENtNtB8_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx: argument 1"}
!164644 = distinct !{!164644, i1 true, !"_RINvYINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjENtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtCs87CvPiUlf0m_5alloc3vec3VecB3_EECskcxRuJ53GpR_9rustworkx"}
!164645 = distinct !{!164645, !164644, !"_RINvYINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjENtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtCs87CvPiUlf0m_5alloc3vec3VecB3_EECskcxRuJ53GpR_9rustworkx: argument 1"}
!164646 = distinct !{!164646, i1 true, !"_RINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB3_6PyList3newINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEINtNtCs87CvPiUlf0m_5alloc3vec3VecBR_EECskcxRuJ53GpR_9rustworkx"}
!164647 = distinct !{!164647, !164646, !"_RINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB3_6PyList3newINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEINtNtCs87CvPiUlf0m_5alloc3vec3VecBR_EECskcxRuJ53GpR_9rustworkx: argument 1"}
!164648 = distinct !{!164648, !164642, !"_RNvXNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3vecINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENtNtB8_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx: argument 0"}
!164649 = distinct !{!164649, !164644, !"_RINvYINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjENtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtCs87CvPiUlf0m_5alloc3vec3VecB3_EECskcxRuJ53GpR_9rustworkx: argument 0"}
!164650 = distinct !{!164650, !164646, !"_RINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB3_6PyList3newINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEINtNtCs87CvPiUlf0m_5alloc3vec3VecBR_EECskcxRuJ53GpR_9rustworkx: argument 0"}
!164651 = distinct !{!164651, i1 true, !"_RNvXsg_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12IntoIterator9into_iterCskcxRuJ53GpR_9rustworkx"}
!164652 = distinct !{!164652, !164651, !"_RNvXsg_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12IntoIterator9into_iterCskcxRuJ53GpR_9rustworkx: argument 1"}
!164653 = distinct !{!164653, i1 true, !"_RINvYINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3mapINtNtB1H_6result6ResultINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtB30_5types3any5PyAnyENtNtB30_3err5PyErrENCINvMNtB3C_4listNtB4o_6PyList3newBR_INtB8_3VecBR_EE0ECskcxRuJ53GpR_9rustworkx"}
!164654 = distinct !{!164654, !164653, !"_RINvYINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3mapINtNtB1H_6result6ResultINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtB30_5types3any5PyAnyENtNtB30_3err5PyErrENCINvMNtB3C_4listNtB4o_6PyList3newBR_INtB8_3VecBR_EE0ECskcxRuJ53GpR_9rustworkx: argument 1"}
!164655 = distinct !{!164655, !164653, !"_RINvYINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator3mapINtNtB1H_6result6ResultINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtB30_5types3any5PyAnyENtNtB30_3err5PyErrENCINvMNtB3C_4listNtB4o_6PyList3newBR_INtB8_3VecBR_EE0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!164656 = distinct !{!164656, i1 true, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB2z_6PyList3newB1L_INtB12_3VecB1L_EE0ENtNtNtBa_6traits8iterator8Iterator8try_foldiNCINvNvXs_NtB8_4takeINtB4D_4TakepEB3L_8try_fold5checkINtNtBc_6result6ResultINtNtB2D_8instance5BoundNtNtB2B_3any5PyAnyENtNtB2D_3err5PyErrEiIB5l_iB6n_ENCB2v_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6H_iEECskcxRuJ53GpR_9rustworkx"}
!164657 = distinct !{!164657, !164656, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB2z_6PyList3newB1L_INtB12_3VecB1L_EE0ENtNtNtBa_6traits8iterator8Iterator8try_foldiNCINvNvXs_NtB8_4takeINtB4D_4TakepEB3L_8try_fold5checkINtNtBc_6result6ResultINtNtB2D_8instance5BoundNtNtB2B_3any5PyAnyENtNtB2D_3err5PyErrEiIB5l_iB6n_ENCB2v_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6H_iEECskcxRuJ53GpR_9rustworkx: argument 1"}
!164658 = distinct !{!164658, i1 true, !"_RINvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB1L_8adapters3map12map_try_foldBX_INtNtB1N_6result6ResultINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtB3T_5types3any5PyAnyENtNtB3T_3err5PyErrEiINtNtNtB1N_3ops12control_flow11ControlFlowIB3s_iB4S_EiENCINvMNtB4v_4listNtB6b_6PyList3newBX_INtB8_3VecBX_EE0NCINvNvXs_NtB2R_4takeINtB76_4TakepEB1F_8try_fold5checkB3r_iB5S_NCB67_s_0E0E0B5c_ECskcxRuJ53GpR_9rustworkx"}
!164659 = distinct !{!164659, !164658, !"_RINvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB1L_8adapters3map12map_try_foldBX_INtNtB1N_6result6ResultINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtB3T_5types3any5PyAnyENtNtB3T_3err5PyErrEiINtNtNtB1N_3ops12control_flow11ControlFlowIB3s_iB4S_EiENCINvMNtB4v_4listNtB6b_6PyList3newBX_INtB8_3VecBX_EE0NCINvNvXs_NtB2R_4takeINtB76_4TakepEB1F_8try_fold5checkB3r_iB5S_NCB67_s_0E0E0B5c_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!164660 = distinct !{!164660, i1 true, !"_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters4takeINtB5_4TakeQINtNtB7_3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB2R_6PyList3newB23_INtB1k_3VecB23_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCB2N_s_0INtNtBb_6result6ResultiNtNtB2V_3err5PyErrEECskcxRuJ53GpR_9rustworkx"}
!164661 = distinct !{!164661, !164660, !"_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters4takeINtB5_4TakeQINtNtB7_3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB2R_6PyList3newB23_INtB1k_3VecB23_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCB2N_s_0INtNtBb_6result6ResultiNtNtB2V_3err5PyErrEECskcxRuJ53GpR_9rustworkx: argument 1"}
!164662 = distinct !{!164662, !164660, !"_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters4takeINtB5_4TakeQINtNtB7_3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB2R_6PyList3newB23_INtB1k_3VecB23_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCB2N_s_0INtNtBb_6result6ResultiNtNtB2V_3err5PyErrEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164663 = distinct !{!164663, i1 true, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB2U_6PyList3newB26_INtB1n_3VecB26_EE0ENtB6_8Iterator8try_foldiNCINvNvXs_NtBW_4takeINtB4E_4TakepEB46_8try_fold5checkINtNtBc_6result6ResultINtNtB2Y_8instance5BoundNtNtB2W_3any5PyAnyENtNtB2Y_3err5PyErrEiIB5m_iB6o_ENCB2Q_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6I_iEECskcxRuJ53GpR_9rustworkx"}
!164664 = distinct !{!164664, !164663, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB2U_6PyList3newB26_INtB1n_3VecB26_EE0ENtB6_8Iterator8try_foldiNCINvNvXs_NtBW_4takeINtB4E_4TakepEB46_8try_fold5checkINtNtBc_6result6ResultINtNtB2Y_8instance5BoundNtNtB2W_3any5PyAnyENtNtB2Y_3err5PyErrEiIB5m_iB6o_ENCB2Q_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6I_iEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164665 = distinct !{!164665, i1 true, !"_RINvXs2_NtNtNtCslwFuT2d6ECx_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB2U_6PyList3newB26_INtB1n_3VecB26_EE0ENtB6_15IteratorRefSpec13spec_try_foldiNCINvNvXs_NtBW_4takeINtB4S_4TakepENtB6_8Iterator8try_fold5checkINtNtBc_6result6ResultINtNtB2Y_8instance5BoundNtNtB2W_3any5PyAnyENtNtB2Y_3err5PyErrEiIB5K_iB6M_ENCB2Q_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB76_iEECskcxRuJ53GpR_9rustworkx"}
!164666 = distinct !{!164666, !164665, !"_RINvXs2_NtNtNtCslwFuT2d6ECx_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB2U_6PyList3newB26_INtB1n_3VecB26_EE0ENtB6_15IteratorRefSpec13spec_try_foldiNCINvNvXs_NtBW_4takeINtB4S_4TakepENtB6_8Iterator8try_fold5checkINtNtBc_6result6ResultINtNtB2Y_8instance5BoundNtNtB2W_3any5PyAnyENtNtB2Y_3err5PyErrEiIB5K_iB6M_ENCB2Q_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB76_iEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164667 = distinct !{!164667, !164656, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB2z_6PyList3newB1L_INtB12_3VecB1L_EE0ENtNtNtBa_6traits8iterator8Iterator8try_foldiNCINvNvXs_NtB8_4takeINtB4D_4TakepEB3L_8try_fold5checkINtNtBc_6result6ResultINtNtB2D_8instance5BoundNtNtB2B_3any5PyAnyENtNtB2D_3err5PyErrEiIB5l_iB6n_ENCB2v_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6H_iEECskcxRuJ53GpR_9rustworkx: argument 0"}
!164668 = distinct !{!164668, !164658, !"_RINvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB1L_8adapters3map12map_try_foldBX_INtNtB1N_6result6ResultINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtB3T_5types3any5PyAnyENtNtB3T_3err5PyErrEiINtNtNtB1N_3ops12control_flow11ControlFlowIB3s_iB4S_EiENCINvMNtB4v_4listNtB6b_6PyList3newBX_INtB8_3VecBX_EE0NCINvNvXs_NtB2R_4takeINtB76_4TakepEB1F_8try_fold5checkB3r_iB5S_NCB67_s_0E0E0B5c_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!164669 = distinct !{!164669, i1 true, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEINtNtBa_6result6ResultINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtB27_5types3any5PyAnyENtNtB27_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB1H_iB36_EiENCINvMNtB2J_4listNtB4o_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5G_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB1G_iB45_NCB4k_s_0E0E0CskcxRuJ53GpR_9rustworkx"}
!164670 = distinct !{!164670, !164669, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEINtNtBa_6result6ResultINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtB27_5types3any5PyAnyENtNtB27_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB1H_iB36_EiENCINvMNtB2J_4listNtB4o_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5G_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB1G_iB45_NCB4k_s_0E0E0CskcxRuJ53GpR_9rustworkx: argument 1"}
!164671 = distinct !{!164671, !164669, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEINtNtBa_6result6ResultINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtB27_5types3any5PyAnyENtNtB27_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB1H_iB36_EiENCINvMNtB2J_4listNtB4o_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5G_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB1G_iB45_NCB4k_s_0E0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!164672 = distinct !{!164672, i1 true, !"_RNCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB5_6PyList3newINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEINtNtCs87CvPiUlf0m_5alloc3vec3VecBT_EE0CskcxRuJ53GpR_9rustworkx"}
!164673 = distinct !{!164673, !164672, !"_RNCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB5_6PyList3newINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEINtNtCs87CvPiUlf0m_5alloc3vec3VecBT_EE0CskcxRuJ53GpR_9rustworkx: argument 1"}
!164674 = distinct !{!164674, !164672, !"_RNCINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB5_6PyList3newINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEINtNtCs87CvPiUlf0m_5alloc3vec3VecBT_EE0CskcxRuJ53GpR_9rustworkx: argument 0"}
!164675 = distinct !{!164675, i1 true, !"_RNvYINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjENtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx"}
!164676 = distinct !{!164676, !164675, !"_RNvYINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjENtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 1"}
!164677 = distinct !{!164677, !164675, !"_RNvYINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjENtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 0"}
!164678 = distinct !{!164678, i1 true, !"_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkINtNtBf_6result6ResultINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtB2i_5types3any5PyAnyENtNtB2i_3err5PyErrEiIB1S_iB3h_ENCINvMNtB2U_4listNtB3S_6PyList3newINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEINtNtCs87CvPiUlf0m_5alloc3vec3VecB4k_EEs_0E0CskcxRuJ53GpR_9rustworkx"}
!164679 = distinct !{!164679, !164678, !"_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkINtNtBf_6result6ResultINtNtCsi0YPOvDEjiZ_4pyo38instance5BoundNtNtNtB2i_5types3any5PyAnyENtNtB2i_3err5PyErrEiIB1S_iB3h_ENCINvMNtB2U_4listNtB3S_6PyList3newINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEINtNtCs87CvPiUlf0m_5alloc3vec3VecB4k_EEs_0E0CskcxRuJ53GpR_9rustworkx: argument 1"}
end_hunk_4
