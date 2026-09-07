Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/realclosure?download=true
inline.NumInlined: 4624
inline.NumDeleted: 832
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 71
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN11realclosure7manager3imp7div_remEjPKPNS_5valueEjS5_R10ref_bufferIS2_S1_Lj32EES8_:bb.a
.lr.ph.i.i67:                                     ; preds = %bb.g, %.lr.ph.i.i67
  %.06.i.i68 = phi ptr [ %i.bt, %.lr.ph.i.i67 ], [ %i.c, %bb.g ] ; 2 uses
  %i.br = load ptr, ptr %.06.i.i68, align 8, !tbaa !120
  %i.bs = load ptr, ptr %5, align 8, !tbaa !153, !nonnull !82, !align !83
  tail call void @_ZN11realclosure7manager3imp7dec_refEPNS_5valueE(ptr noundef nonnull align 8 dereferenceable(1497) %i.bs, ptr noundef %i.br)
  %i.bt = getelementptr inbounds nuw i8, ptr %.06.i.i68, i64 8 ; 2 uses
  %i.bu = icmp ult ptr %i.bt, %i.g
  br i1 %i.bu, label %.lr.ph.i.i67, label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE5resetEv.exit69, !llvm.loop !0

_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE5resetEv.exit69: ; preds = %.lr.ph.i.i67, %bb.g
  store i32 0, ptr %i.d, align 8, !tbaa !147
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !146 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !147 ; 2 uses
  %i.bz = zext i32 %i.by to i64
  %.idx.i70 = shl nuw nsw i64 %i.bz, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx.i70
  %.not.i71 = icmp eq i32 %i.by, 0
  br i1 %.not.i71, label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE5resetEv.exit74, label %.lr.ph.i.i72

.lr.ph.i.i72:                                     ; preds = %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE5resetEv.exit69, %.lr.ph.i.i72
  %.06.i.i73 = phi ptr [ %i.cd, %.lr.ph.i.i72 ], [ %i.bw, %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE5resetEv.exit69 ] ; 2 uses
  %i.cb = load ptr, ptr %.06.i.i73, align 8, !tbaa !120
  %i.cc = load ptr, ptr %6, align 8, !tbaa !153, !nonnull !82, !align !83
  tail call void @_ZN11realclosure7manager3imp7dec_refEPNS_5valueE(ptr noundef nonnull align 8 dereferenceable(1497) %i.cc, ptr noundef %i.cb)
  %i.cd = getelementptr inbounds nuw i8, ptr %.06.i.i73, i64 8 ; 2 uses
  %i.ce = icmp ult ptr %i.cd, %i.ca
  br i1 %i.ce, label %.lr.ph.i.i72, label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE5resetEv.exit74, !llvm.loop !0

_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE5resetEv.exit74: ; preds = %.lr.ph.i.i72, %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE5resetEv.exit69
  store i32 0, ptr %i.bx, align 8, !tbaa !147
  %i.cf = zext i32 %1 to i64
  %.idx.i.i75 = shl nuw nsw i64 %i.cf, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i75
  %i.ch = icmp eq i32 %1, 0
  br i1 %i.ch, label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE6appendEjPKPS1_.exit97.thread, label %.lr.ph.i.i76

.lr.ph.i.i76:                                     ; preds = %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE5resetEv.exit74
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE9push_backEPS1_.exit.i.i94, %.lr.ph.i.i76
  %i.ck = phi i32 [ 0, %.lr.ph.i.i76 ], [ %i.dx, %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE9push_backEPS1_.exit.i.i94 ] ; 2 uses
  %.sroa.04.09.i.i77 = phi ptr [ %2, %.lr.ph.i.i76 ], [ %i.dy, %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE9push_backEPS1_.exit.i.i94 ] ; 2 uses
  %i.cl = load ptr, ptr %.sroa.04.09.i.i77, align 8, !tbaa !120 ; 4 uses
  %.not.i.i.i.i.i.i78 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i.i78, label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i.i.i79, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !99
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 8, !tbaa !99
  br label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i.i.i79

_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i.i.i79: ; preds = %bb.i, %bb.h
  %i.co = load i32, ptr %i.ci, align 4, !tbaa !148 ; 2 uses
  %.not.i.i.i.i80 = icmp ult i32 %i.ck, %i.co
  br i1 %.not.i.i.i.i80, label %._crit_edge.i.i.i.i95, label %bb.j

._crit_edge.i.i.i.i95:                            ; preds = %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i.i.i79
  %.pre.i.i.i.i96 = load ptr, ptr %i.bv, align 8, !tbaa !146
  br label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE9push_backEPS1_.exit.i.i94

bb.j:                                             ; preds = %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i.i.i79
  %i.cp = shl i32 %i.co, 1                        ; 2 uses
  %i.cq = zext i32 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 3
  %i.cs = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.cr) ; 9 uses
  %i.ct = load i32, ptr %i.bx, align 8, !tbaa !147 ; 4 uses
  %.not.i.i.i.i.i81 = icmp eq i32 %i.ct, 0
  %.pre.i.i.i.i.i82 = load ptr, ptr %i.bv, align 8, !tbaa !146 ; 10 uses
  br i1 %.not.i.i.i.i.i81, label %._crit_edge.i.i.i.i.i88, label %.lr.ph.i.i.i.i.i83

.lr.ph.i.i.i.i.i83:                               ; preds = %bb.j
  %.pre.i.i.i.i.i82147 = ptrtoaddr ptr %.pre.i.i.i.i.i82 to i64
  %i.cu = ptrtoaddr ptr %i.cs to i64
  %wide.trip.count.i.i.i.i.i84 = zext i32 %i.ct to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ct, 4
  %i.cv = sub i64 %.pre.i.i.i.i.i82147, %i.cu
  %diff.check = icmp ugt i64 %i.cv, -32
  %or.cond164 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond164, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i83
  %n.vec = and i64 %wide.trip.count.i.i.i.i.i84, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i82, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !120
  %wide.load148 = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !120
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <2 x ptr> %wide.load, ptr %i.cw, align 8, !tbaa !120
  store <2 x ptr> %wide.load148, ptr %i.cz, align 8, !tbaa !120
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !438

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i.i84
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i88, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i.i83, %middle.block
  %indvars.iv.i.i.i.i.i85.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i83 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i.i84, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.i85.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i86.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.i85.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i.i.i.i.i85.prol
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i82, i64 %indvars.iv.i.i.i.i.i85.prol
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !120
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !120
  %indvars.iv.next.i.i.i.i.i86.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i85.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !439

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.i85.unr = phi i64 [ %indvars.iv.i.i.i.i.i85.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.i86.prol, %scalar.ph.prol ]
  %i.de = sub nsw i64 %indvars.iv.i.i.i.i.i85.ph, %wide.trip.count.i.i.i.i.i84
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %._crit_edge.i.i.i.i.i88, label %scalar.ph

._crit_edge.i.i.i.i.i88:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.j
  %.not.i.i.i1.i.i.i89 = icmp eq ptr %.pre.i.i.i.i.i82, %i.cj
  %i.dg = icmp eq ptr %.pre.i.i.i.i.i82, null
  %or.cond.i.i.i.i.i.i90 = or i1 %.not.i.i.i1.i.i.i89, %i.dg
  br i1 %or.cond.i.i.i.i.i.i90, label %_ZN6bufferIPN11realclosure5valueELb0ELj32EE6expandEv.exit.i.i.i.i92, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i88
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i.i.i82)
  %.pre2.pre.i.i.i.i91 = load i32, ptr %i.bx, align 8, !tbaa !147
  br label %_ZN6bufferIPN11realclosure5valueELb0ELj32EE6expandEv.exit.i.i.i.i92

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i.i85 = phi i64 [ %indvars.iv.next.i.i.i.i.i86.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.i85.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i.i.i.i.i85
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i82, i64 %indvars.iv.i.i.i.i.i85
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !120
  store ptr %i.dj, ptr %i.dh, align 8, !tbaa !120
  %indvars.iv.next.i.i.i.i.i86 = add nuw nsw i64 %indvars.iv.i.i.i.i.i85, 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next.i.i.i.i.i86
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i82, i64 %indvars.iv.next.i.i.i.i.i86
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !120
  store ptr %i.dm, ptr %i.dk, align 8, !tbaa !120
  %indvars.iv.next.i.i.i.i.i86.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i85, 2 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next.i.i.i.i.i86.1
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i82, i64 %indvars.iv.next.i.i.i.i.i86.1
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !120
  store ptr %i.dp, ptr %i.dn, align 8, !tbaa !120
  %indvars.iv.next.i.i.i.i.i86.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i85, 3 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next.i.i.i.i.i86.2
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i82, i64 %indvars.iv.next.i.i.i.i.i86.2
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !120
  store ptr %i.ds, ptr %i.dq, align 8, !tbaa !120
  %indvars.iv.next.i.i.i.i.i86.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i85, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i87.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i86.3, %wide.trip.count.i.i.i.i.i84
  br i1 %exitcond.not.i.i.i.i.i87.3, label %._crit_edge.i.i.i.i.i88, label %scalar.ph, !llvm.loop !440

_ZN6bufferIPN11realclosure5valueELb0ELj32EE6expandEv.exit.i.i.i.i92: ; preds = %bb.k, %._crit_edge.i.i.i.i.i88
  %.pre2.i.i.i.i93 = phi i32 [ %i.ct, %._crit_edge.i.i.i.i.i88 ], [ %.pre2.pre.i.i.i.i91, %bb.k ]
  store ptr %i.cs, ptr %i.bv, align 8, !tbaa !146
  store i32 %i.cp, ptr %i.ci, align 4, !tbaa !148
  br label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE9push_backEPS1_.exit.i.i94

_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE9push_backEPS1_.exit.i.i94: ; preds = %_ZN6bufferIPN11realclosure5valueELb0ELj32EE6expandEv.exit.i.i.i.i92, %._crit_edge.i.i.i.i95
  %i.dt = phi i32 [ %i.ck, %._crit_edge.i.i.i.i95 ], [ %.pre2.i.i.i.i93, %_ZN6bufferIPN11realclosure5valueELb0ELj32EE6expandEv.exit.i.i.i.i92 ] ; 2 uses
  %i.du = phi ptr [ %.pre.i.i.i.i96, %._crit_edge.i.i.i.i95 ], [ %i.cs, %_ZN6bufferIPN11realclosure5valueELb0ELj32EE6expandEv.exit.i.i.i.i92 ]
  %i.dv = zext i32 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dv
  store ptr %i.cl, ptr %i.dw, align 8, !tbaa !120
  %i.dx = add i32 %i.dt, 1                        ; 2 uses
  store i32 %i.dx, ptr %i.bx, align 8, !tbaa !147
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i77, i64 8 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.cg
  br i1 %i.dz, label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE6appendEjPKPS1_.exit97, label %bb.h

_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE6appendEjPKPS1_.exit97: ; preds = %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE9push_backEPS1_.exit.i.i94
  %.not117 = icmp eq i32 %1, 1
  br i1 %.not117, label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE6appendEjPKPS1_.exit97.thread, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE6appendEjPKPS1_.exit97
  %.not = icmp ult i32 %1, %3
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ea = add i32 %1, 1
  %i.eb = sub i32 %i.ea, %3
  tail call void @_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(280) %5, i32 noundef %i.eb)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ec = add i32 %3, -1
  %i.ed = zext i32 %i.ec to i64                   ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr null, ptr %7, align 8, !tbaa !150
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %0, ptr %i.eg, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr null, ptr %8, align 8, !tbaa !150
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %0, ptr %i.eh, align 8, !tbaa !144
  br label %_ZN11realclosure7manager3imp11adjust_sizeER10ref_bufferINS_5valueES1_Lj32EE.exit107

_ZN11realclosure7manager3imp11adjust_sizeER10ref_bufferINS_5valueES1_Lj32EE.exit107: ; preds = %_ZN11realclosure7manager3imp11adjust_sizeER10ref_bufferINS_5valueES1_Lj32EE.exit107.backedge, %bb.n
  invoke void @_ZN11realclosure7manager3imp10checkpointEv(ptr noundef nonnull align 8 dereferenceable(1497) %0)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %_ZN11realclosure7manager3imp11adjust_sizeER10ref_bufferINS_5valueES1_Lj32EE.exit107
  %i.ei = load i32, ptr %i.bx, align 8, !tbaa !147 ; 3 uses
  %i.ej = icmp ult i32 %i.ei, %3
  br i1 %i.ej, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ek = load i32, ptr %i.d, align 8, !tbaa !147 ; 2 uses
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %_ZN11realclosure7manager3imp11adjust_sizeER10ref_bufferINS_5valueES1_Lj32EE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.p
  %i.em = load ptr, ptr %i.b, align 8, !tbaa !146
  %i.en = zext i32 %i.ek to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.noexc
  %indvars.iv124 = phi i64 [ %i.en, %.lr.ph.i.preheader ], [ %indvars.iv.next125, %.noexc ]
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, -1 ; 3 uses
  %i.eo = and i64 %indvars.iv.next125, 4294967295
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !120
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %.noexc, label %_ZN11realclosure7manager3imp11adjust_sizeER10ref_bufferINS_5valueES1_Lj32EE.exit

.noexc:                                           ; preds = %.lr.ph.i
  %indvars126 = trunc i64 %indvars.iv.next125 to i32 ; 2 uses
  store i32 %indvars126, ptr %i.d, align 8, !tbaa !147
  %i.es = icmp eq i32 %indvars126, 0
  br i1 %i.es, label %_ZN11realclosure7manager3imp11adjust_sizeER10ref_bufferINS_5valueES1_Lj32EE.exit, label %.lr.ph.i, !llvm.loop !10

bb.q:                                             ; preds = %_ZN11realclosure7manager3imp11adjust_sizeER10ref_bufferINS_5valueES1_Lj32EE.exit107
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.r:                                             ; preds = %bb.o
  %i.eu = sub nuw i32 %i.ei, %3                   ; 2 uses
  %i.ev = add i32 %i.ei, -1                       ; 2 uses
  %i.ew = load ptr, ptr %i.bv, align 8, !tbaa !146
  %i.ex = zext i32 %i.ev to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !120
  invoke void @_ZN11realclosure7manager3imp3divEPNS_5valueES3_R7obj_refIS2_S1_E(ptr noundef nonnull align 8 dereferenceable(1497) %0, ptr noundef %i.ez, ptr noundef %i.ef, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.fa = load ptr, ptr %i.b, align 8, !tbaa !146
  %i.fb = zext i32 %i.eu to i64                   ; 3 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !120
  %i.fe = load ptr, ptr %7, align 8, !tbaa !150
  invoke void @_ZN11realclosure7manager3imp3addEPNS_5valueES3_R7obj_refIS2_S1_E(ptr noundef nonnull align 8 dereferenceable(1497) %0, ptr noundef %i.fd, ptr noundef %i.fe, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ff = load ptr, ptr %8, align 8, !tbaa !150   ; 4 uses
  %.not.i.i.i.i98 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i98, label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !99
  %i.fh = add i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ff, align 8, !tbaa !99
  br label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i

_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i: ; preds = %bb.u, %bb.t
  %i.fi = load ptr, ptr %i.b, align 8, !tbaa !146
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fb
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !120
  %i.fl = load ptr, ptr %5, align 8, !tbaa !153, !nonnull !82, !align !83
  invoke void @_ZN11realclosure7manager3imp7dec_refEPNS_5valueE(ptr noundef nonnull align 8 dereferenceable(1497) %i.fl, ptr noundef %i.fk)
          to label %.lr.ph.preheader unwind label %bb.v

.lr.ph.preheader:                                 ; preds = %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i
  %i.fm = load ptr, ptr %i.b, align 8, !tbaa !146
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fb
  store ptr %i.ff, ptr %i.fn, align 8, !tbaa !120
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.ad
  invoke void @_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(280) %6, i32 noundef %i.ev)
          to label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE6shrinkEj.exit unwind label %bb.v

bb.v:                                             ; preds = %._crit_edge, %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i, %bb.s, %bb.r
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ad
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ad ] ; 3 uses
  %i.fp = load ptr, ptr %7, align 8, !tbaa !150
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !120
  invoke void @_ZN11realclosure7manager3imp3mulEPNS_5valueES3_R7obj_refIS2_S1_E(ptr noundef nonnull align 8 dereferenceable(1497) %0, ptr noundef %i.fp, ptr noundef %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %.lr.ph
  %i.fs = trunc nuw i64 %indvars.iv to i32
  %i.ft = add i32 %i.eu, %i.fs
  %i.fu = load ptr, ptr %i.bv, align 8, !tbaa !146
  %i.fv = zext i32 %i.ft to i64                   ; 3 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fv
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !120
  %i.fy = load ptr, ptr %8, align 8, !tbaa !150
  invoke void @_ZN11realclosure7manager3imp3subEPNS_5valueES3_R7obj_refIS2_S1_E(ptr noundef nonnull align 8 dereferenceable(1497) %0, ptr noundef %i.fx, ptr noundef %i.fy, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.fz = load ptr, ptr %8, align 8, !tbaa !150   ; 4 uses
  %.not.i.i.i.i101 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i101, label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i102, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !99
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr %i.fz, align 8, !tbaa !99
  br label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i102

_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i102: ; preds = %bb.y, %bb.x
  %i.gc = load ptr, ptr %i.bv, align 8, !tbaa !146
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.fv
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !120 ; 10 uses
  %i.gf = load ptr, ptr %6, align 8, !tbaa !153, !nonnull !82, !align !83 ; 4 uses
  %.not.i110 = icmp eq ptr %i.ge, null
  br i1 %.not.i110, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i102
  %i.gg = load i32, ptr %i.ge, align 8, !tbaa !99
  %i.gh = add i32 %i.gg, -1                       ; 2 uses
  store i32 %i.gh, ptr %i.ge, align 8, !tbaa !99
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gk = load i8, ptr %i.gj, align 4, !tbaa !96, !range !127, !noundef !82
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 872 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !134, !nonnull !82, !align !83
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !107, !nonnull !82, !align !83
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.gp, ptr noundef nonnull align 8 dereferenceable(52) %i.gm)
          to label %.noexc111 unwind label %bb.ae, !inline_history !230

.noexc111:                                        ; preds = %bb.ab
  %i.gq = load ptr, ptr %i.gn, align 8, !tbaa !134, !nonnull !82, !align !83
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gs = load ptr, ptr %i.gq, align 8, !tbaa !107, !nonnull !82, !align !83
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.gs, ptr noundef nonnull align 8 dereferenceable(20) %i.gr)
          to label %.noexc112 unwind label %bb.ae, !inline_history !230

.noexc112:                                        ; preds = %.noexc111
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !81, !nonnull !82, !align !83 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ge, i64 72
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.gu, ptr noundef nonnull align 8 dereferenceable(32) %i.gv)
          to label %.noexc113 unwind label %bb.ae, !inline_history !230

.noexc113:                                        ; preds = %.noexc112
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ge, i64 88
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.gu, ptr noundef nonnull align 8 dereferenceable(16) %i.gw)
          to label %.noexc114 unwind label %bb.ae, !inline_history !230

.noexc114:                                        ; preds = %.noexc113
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !78
  invoke void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.gy, i64 noundef 104, ptr noundef nonnull %i.ge)
          to label %bb.ad unwind label %bb.ae, !inline_history !230

bb.ac:                                            ; preds = %bb.aa
  invoke void @_ZN11realclosure7manager3imp21del_rational_functionEPNS_23rational_function_valueE(ptr noundef nonnull align 8 dereferenceable(1497) %i.gf, ptr noundef nonnull %i.ge) #25
          to label %bb.ad unwind label %bb.ae, !inline_history !230

bb.ad:                                            ; preds = %bb.ac, %.noexc114, %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i102, %bb.z
  %i.gz = load ptr, ptr %i.bv, align 8, !tbaa !146
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.fv
  store ptr %i.fz, ptr %i.ha, align 8, !tbaa !120
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ed
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !441

bb.ae:                                            ; preds = %bb.ac, %.noexc114, %.noexc113, %.noexc112, %.noexc111, %bb.ab, %bb.w, %.lr.ph
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE6shrinkEj.exit: ; preds = %._crit_edge
  %i.hc = load i32, ptr %i.bx, align 8, !tbaa !147 ; 2 uses
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %_ZN11realclosure7manager3imp11adjust_sizeER10ref_bufferINS_5valueES1_Lj32EE.exit107.backedge, label %.lr.ph.i105.preheader

_ZN11realclosure7manager3imp11adjust_sizeER10ref_bufferINS_5valueES1_Lj32EE.exit107.backedge: ; preds = %.noexc106, %.lr.ph.i105, %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE6shrinkEj.exit
  br label %_ZN11realclosure7manager3imp11adjust_sizeER10ref_bufferINS_5valueES1_Lj32EE.exit107

.lr.ph.i105.preheader:                            ; preds = %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE6shrinkEj.exit
  %i.he = load ptr, ptr %i.bv, align 8, !tbaa !146
  %i.hf = zext i32 %i.hc to i64
  br label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %.lr.ph.i105.preheader, %.noexc106
  %indvars.iv121 = phi i64 [ %i.hf, %.lr.ph.i105.preheader ], [ %indvars.iv.next122, %.noexc106 ]
  %indvars.iv.next122 = add nsw i64 %indvars.iv121, -1 ; 3 uses
  %i.hg = and i64 %indvars.iv.next122, 4294967295
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hg
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !120
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %.noexc106, label %_ZN11realclosure7manager3imp11adjust_sizeER10ref_bufferINS_5valueES1_Lj32EE.exit107.backedge

.noexc106:                                        ; preds = %.lr.ph.i105
  %indvars = trunc i64 %indvars.iv.next122 to i32 ; 2 uses
  store i32 %indvars, ptr %i.bx, align 8, !tbaa !147
  %i.hk = icmp eq i32 %indvars, 0
  br i1 %i.hk, label %_ZN11realclosure7manager3imp11adjust_sizeER10ref_bufferINS_5valueES1_Lj32EE.exit107.backedge, label %.lr.ph.i105, !llvm.loop !10

_ZN11realclosure7manager3imp11adjust_sizeER10ref_bufferINS_5valueES1_Lj32EE.exit: ; preds = %.noexc, %.lr.ph.i, %bb.p
  %i.hl = load ptr, ptr %8, align 8, !tbaa !150   ; 2 uses
  %.not.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i, label %_ZN7obj_refIN11realclosure5valueENS0_7manager3impEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN11realclosure7manager3imp11adjust_sizeER10ref_bufferINS_5valueES1_Lj32EE.exit
  %i.hm = load ptr, ptr %i.eh, align 8, !tbaa !151, !nonnull !82, !align !83
  invoke void @_ZN11realclosure7manager3imp7dec_refEPNS_5valueE(ptr noundef nonnull align 8 dereferenceable(1497) %i.hm, ptr noundef nonnull %i.hl)
          to label %_ZN7obj_refIN11realclosure5valueENS0_7manager3impEED2Ev.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #22
  unreachable

_ZN7obj_refIN11realclosure5valueENS0_7manager3impEED2Ev.exit: ; preds = %_ZN11realclosure7manager3imp11adjust_sizeER10ref_bufferINS_5valueES1_Lj32EE.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.hp = load ptr, ptr %7, align 8, !tbaa !150   ; 2 uses
  %.not.i.i108 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i108, label %_ZN7obj_refIN11realclosure5valueENS0_7manager3impEED2Ev.exit109, label %bb.ah

bb.ah:                                            ; preds = %_ZN7obj_refIN11realclosure5valueENS0_7manager3impEED2Ev.exit
  %i.hq = load ptr, ptr %i.eg, align 8, !tbaa !151, !nonnull !82, !align !83
  invoke void @_ZN11realclosure7manager3imp7dec_refEPNS_5valueE(ptr noundef nonnull align 8 dereferenceable(1497) %i.hq, ptr noundef nonnull %i.hp)
          to label %_ZN7obj_refIN11realclosure5valueENS0_7manager3impEED2Ev.exit109 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #22
  unreachable

_ZN7obj_refIN11realclosure5valueENS0_7manager3impEED2Ev.exit109: ; preds = %_ZN7obj_refIN11realclosure5valueENS0_7manager3impEED2Ev.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE6appendEjPKPS1_.exit97.thread

bb.aj:                                            ; preds = %bb.v, %bb.ae, %bb.q
  %.pn57 = phi { ptr, i32 } [ %i.et, %bb.q ], [ %i.hb, %bb.ae ], [ %i.fo, %bb.v ]
  call void @_ZN7obj_refIN11realclosure5valueENS0_7manager3impEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @_ZN7obj_refIN11realclosure5valueENS0_7manager3impEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn57

_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE6appendEjPKPS1_.exit97.thread: ; preds = %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE5resetEv.exit74, %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE6appendEjPKPS1_.exit97, %_ZN7obj_refIN11realclosure5valueENS0_7manager3impEED2Ev.exit109, %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE5resetEv.exit64
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11realclosure7manager3imp8mk_monicER10ref_bufferINS_5valueES1_Lj32EE(ptr noundef nonnull align 8 dereferenceable(1497) %0, ptr noundef nonnull align 8 dereferenceable(280) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.obj_ref, align 8             ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !147  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !150
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !144
  %i.d = add i32 %i.b, -1                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !146  ; 3 uses
  %i.g = zext i32 %i.d to i64                     ; 5 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !120  ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load i8, ptr %i.k, align 4, !tbaa !96, !range !127, !noundef !82
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, 1
  %i.r = icmp eq i8 %i.q, 0
  %i.s = load i32, ptr %i.n, align 8
  %i.t = icmp eq i32 %i.s, 1
  %i.u = select i1 %i.r, i1 %i.t, i1 false
  br i1 %i.u, label %.split, label %.preheader

.split:                                           ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 92
  %i.x = load i8, ptr %i.w, align 4
  %i.y = and i8 %i.x, 1
  %i.z = icmp eq i8 %i.y, 0
  %i.aa = load i32, ptr %i.v, align 8
  %i.ab = icmp eq i32 %i.aa, 1
  %i.ac = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %i.ac, label %_ZN7obj_refIN11realclosure5valueENS0_7manager3impEED2Ev.exit, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.c, %bb.d, %.split
  %.not26 = icmp eq i32 %i.d, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %i.ad = phi ptr [ %i.f, %.preheader ], [ %i.ay, %bb.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !98 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !99
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !99
  br label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i

_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i: ; preds = %bb.e, %._crit_edge
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.g
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !120
  %i.ak = load ptr, ptr %1, align 8, !tbaa !153, !nonnull !82, !align !83
  invoke void @_ZN11realclosure7manager3imp7dec_refEPNS_5valueE(ptr noundef nonnull align 8 dereferenceable(1497) %i.ak, ptr noundef %i.aj)
          to label %bb.k unwind label %bb.f

bb.f:                                             ; preds = %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %i.am = phi ptr [ %i.ay, %bb.i ], [ %i.f, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.preheader ] ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !120
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.g
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !120
  invoke void @_ZN11realclosure7manager3imp3divEPNS_5valueES3_R7obj_refIS2_S1_E(ptr noundef nonnull align 8 dereferenceable(1497) %0, ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %.lr.ph
  %i.ar = load ptr, ptr %2, align 8, !tbaa !150   ; 4 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i22, label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i23, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !99
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !99
  br label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i23

_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i23: ; preds = %bb.h, %bb.g
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !146
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !120
  %i.ax = load ptr, ptr %1, align 8, !tbaa !153, !nonnull !82, !align !83
  invoke void @_ZN11realclosure7manager3imp7dec_refEPNS_5valueE(ptr noundef nonnull align 8 dereferenceable(1497) %i.ax, ptr noundef %i.aw)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i23
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !146 ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  store ptr %i.ar, ptr %i.az, align 8, !tbaa !120
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK11realclosure13infinitesimal7displayERSob:bb.a
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ah) ; 0 uses
  br label %_ZlsRSo6symbol.exit

_ZlsRSo6symbol.exit:                              ; preds = %bb.k, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i7, %bb.f, %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.h, %bb.c
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11realclosure7manager3impD2Ev(ptr noundef nonnull align 8 dead_on_return(1497) dereferenceable(1497) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 2 uses
  invoke void @_ZN11realclosure7manager3imp23restore_saved_intervalsINS_5valueEEEvR10ptr_vectorIT_E(ptr noundef nonnull align 8 dereferenceable(1497) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 2 uses
  invoke void @_ZN11realclosure7manager3imp23restore_saved_intervalsINS_9extensionEEEvR10ptr_vectorIT_E(ptr noundef nonnull align 8 dereferenceable(1497) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN11realclosure7manager3imp23restore_saved_intervalsEv.exit unwind label %bb.q

_ZN11realclosure7manager3imp23restore_saved_intervalsEv.exit: ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  invoke void @_ZN11realclosure7manager3imp7dec_refEPNS_5valueE(ptr noundef nonnull align 8 dereferenceable(1497) %0, ptr noundef %i.d)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %_ZN11realclosure7manager3imp23restore_saved_intervalsEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100
  invoke void @_ZN11realclosure7manager3imp7dec_refEPNS_5valueE(ptr noundef nonnull align 8 dereferenceable(1497) %0, ptr noundef %i.f)
          to label %bb.c unwind label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !101
  invoke void @_ZN11realclosure7manager3imp7dec_refEPNS_5valueE(ptr noundef nonnull align 8 dereferenceable(1497) %0, ptr noundef %i.h)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !79, !range !127, !noundef !82
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %_Z7deallocI22small_object_allocatorEvPT_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_Z7deallocI22small_object_allocatorEvPT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN22small_object_allocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(520) dereferenceable(520) %i.m) #21
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.m)
          to label %_Z7deallocI22small_object_allocatorEvPT_.exit unwind label %bb.q

_Z7deallocI22small_object_allocatorEvPT_.exit:    ; preds = %bb.e, %bb.f, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !202, !nonnull !82, !align !83
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !107, !nonnull !82, !align !83
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.r, ptr noundef nonnull align 8 dereferenceable(20) %i.q)
          to label %_ZN15_scoped_numeralI12mpbq_managerED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %_Z7deallocI22small_object_allocatorEvPT_.exit
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #22
  unreachable

_ZN15_scoped_numeralI12mpbq_managerED2Ev.exit:    ; preds = %_Z7deallocI22small_object_allocatorEvPT_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !202, !nonnull !82, !align !83
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !107, !nonnull !82, !align !83
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.x, ptr noundef nonnull align 8 dereferenceable(20) %i.w)
          to label %_ZN15_scoped_numeralI12mpbq_managerED2Ev.exit5 unwind label %bb.h

bb.h:                                             ; preds = %_ZN15_scoped_numeralI12mpbq_managerED2Ev.exit
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #22
  unreachable

_ZN15_scoped_numeralI12mpbq_managerED2Ev.exit5:   ; preds = %_ZN15_scoped_numeralI12mpbq_managerED2Ev.exit
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !87  ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZN6vectorIPN11realclosure9extensionELb0EjED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN15_scoped_numeralI12mpbq_managerED2Ev.exit5
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ab)
          to label %_ZN6vectorIPN11realclosure9extensionELb0EjED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #22
  unreachable

_ZN6vectorIPN11realclosure9extensionELb0EjED2Ev.exit: ; preds = %_ZN15_scoped_numeralI12mpbq_managerED2Ev.exit5, %bb.i
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !203 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i6, label %_ZN6vectorIPN11realclosure5valueELb0EjED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6vectorIPN11realclosure9extensionELb0EjED2Ev.exit
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.af)
          to label %_ZN6vectorIPN11realclosure5valueELb0EjED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #22
  unreachable

_ZN6vectorIPN11realclosure5valueELb0EjED2Ev.exit: ; preds = %_ZN6vectorIPN11realclosure9extensionELb0EjED2Ev.exit, %bb.k
  %.ptr1 = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ai = load ptr, ptr %.ptr1, align 8, !tbaa !87 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i7, label %_ZN6vectorIPN11realclosure9extensionELb0EjED2Ev.exit8, label %bb.m

bb.m:                                             ; preds = %_ZN6vectorIPN11realclosure5valueELb0EjED2Ev.exit
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.aj)
          to label %_ZN6vectorIPN11realclosure9extensionELb0EjED2Ev.exit8 unwind label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.m
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #22
  unreachable

_ZN6vectorIPN11realclosure9extensionELb0EjED2Ev.exit8: ; preds = %_ZN6vectorIPN11realclosure5valueELb0EjED2Ev.exit, %bb.m
  %.ptr1.1 = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.am = load ptr, ptr %.ptr1.1, align 8, !tbaa !87 ; 2 uses
  %.not.i.i7.1 = icmp eq ptr %i.am, null
  br i1 %.not.i.i7.1, label %_ZN6vectorIPN11realclosure9extensionELb0EjED2Ev.exit8.1, label %bb.o

bb.o:                                             ; preds = %_ZN6vectorIPN11realclosure9extensionELb0EjED2Ev.exit8
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.an)
          to label %_ZN6vectorIPN11realclosure9extensionELb0EjED2Ev.exit8.1 unwind label %bb.n

_ZN6vectorIPN11realclosure9extensionELb0EjED2Ev.exit8.1: ; preds = %bb.o, %_ZN6vectorIPN11realclosure9extensionELb0EjED2Ev.exit8
  %.ptr1.2 = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.ao = load ptr, ptr %.ptr1.2, align 8, !tbaa !87 ; 2 uses
  %.not.i.i7.2 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i7.2, label %_ZN6vectorIPN11realclosure9extensionELb0EjED2Ev.exit8.2, label %bb.p

bb.p:                                             ; preds = %_ZN6vectorIPN11realclosure9extensionELb0EjED2Ev.exit8.1
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ap)
          to label %_ZN6vectorIPN11realclosure9extensionELb0EjED2Ev.exit8.2 unwind label %bb.n

_ZN6vectorIPN11realclosure9extensionELb0EjED2Ev.exit8.2: ; preds = %bb.p, %_ZN6vectorIPN11realclosure9extensionELb0EjED2Ev.exit8.1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 864
  tail call void @_ZN16interval_managerIN11realclosure11mpbq_configEED2Ev(ptr noundef nonnull align 8 dead_on_return(464) dereferenceable(464) %i.aq) #21
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN16interval_managerI17im_default_configED2Ev(ptr noundef nonnull align 8 dead_on_return(600) dereferenceable(600) %i.ar) #21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN12mpbq_managerD2Ev(ptr noundef nonnull align 8 dead_on_return(213) dereferenceable(213) %i.as) #21
  ret void

bb.q:                                             ; preds = %bb.f, %.noexc, %bb.a, %bb.c, %bb.b, %_ZN11realclosure7manager3imp23restore_saved_intervalsEv.exit
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #22
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN22small_object_allocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(520) dereferenceable(520)) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #13

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin nounwind }
attributes #25 = { "function-inline-cost-multiplier"="2" }
attributes #26 = { builtin allocsize(0) }

!llvm.module.flags = !{!29, !30}
!llvm.ident = !{!31}
!llvm.errno.tbaa = !{!36}

!0 = distinct !{!0, !117}
!1 = distinct !{!1, !117}
!2 = distinct !{null, null, null, null}
!3 = distinct !{ptr @_Z2ppPN11realclosure7manager3impEPNS_5valueE, null, null, null, null}
!4 = distinct !{!4, !117}
!5 = distinct !{!5, !117}
!6 = distinct !{null}
!7 = distinct !{!7, !117}
!8 = distinct !{null}
!9 = distinct !{!9, !117}
!10 = distinct !{!10, !117}
!11 = distinct !{null}
!12 = distinct !{!12, !117}
!13 = distinct !{!13, !117}
!14 = distinct !{!14, !117}
!15 = distinct !{!15, !117}
!16 = distinct !{!16, !117}
!17 = distinct !{!17, !117}
!18 = distinct !{!18, !117}
!19 = distinct !{ptr @_ZN11realclosure7manager3imp15refine_intervalEPNS_5valueEj, null, null}
!20 = distinct !{!20, !117}
!21 = distinct !{!21, !117}
!22 = distinct !{null, null}
!23 = distinct !{null, ptr @_ZN11realclosure7manager3imp3TaQEjPKPNS_5valueEjS5_RKNS_11mpbq_config8intervalE}
!24 = distinct !{null}
!25 = distinct !{!25, !117}
!26 = distinct !{null}
!27 = distinct !{!27, !117}
!28 = distinct !{!28, !117}
!29 = !{i32 8, !"PIC Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 2}
!31 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!32 = !{!"Simple C++ TBAA"}
!33 = !{!"omnipotent char", !32, i64 0}
!34 = !{!"int", !33, i64 0}
!35 = !{!"__libc_errno", !34, i64 0}
!36 = !{!35, !34, i64 0}
!37 = !{!34, !34, i64 0}
!38 = !{!"any pointer", !33, i64 0}
!39 = !{!"p1 _ZTS8mpz_cell", !38, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!33, !33, i64 0}
!42 = !{!"p1 _ZTSN11realclosure7manager3impE", !38, i64 0}
!43 = !{!"_ZTSN11realclosure7managerE", !42, i64 0}
!44 = !{!43, !42, i64 0}
!45 = !{!"p1 _ZTS8reslimit", !38, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"p1 _ZTS22small_object_allocator", !38, i64 0}
!48 = !{!"bool", !33, i64 0}
!49 = !{!"p1 _ZTS11mpq_managerILb0EE", !38, i64 0}
!50 = !{!"p1 _ZTS11mpz_managerILb0EE", !38, i64 0}
!51 = !{!"_ZTS18mpz_matrix_manager", !50, i64 0, !47, i64 8}
!52 = !{!"_ZTS3mpz", !34, i64 0, !34, i64 4, !34, i64 4, !39, i64 8}
!53 = !{!"_ZTS4mpbq", !52, i64 0, !34, i64 16}
!54 = !{!"_ZTS12mpbq_manager", !50, i64 0, !52, i64 8, !52, i64 24, !53, i64 40, !52, i64 64, !52, i64 80, !52, i64 96, !53, i64 112, !53, i64 136, !52, i64 160, !52, i64 176, !52, i64 192}
!55 = !{!"_ZTSN11realclosure11mpbq_config15numeral_managerE", !54, i64 0, !34, i64 208, !48, i64 212}
!56 = !{!"_ZTS17im_default_config", !49, i64 0}
!57 = !{!"_ZTS3mpq", !52, i64 0, !52, i64 16}
!58 = !{!"_ZTSN17im_default_config8intervalE", !57, i64 0, !57, i64 32, !34, i64 64, !34, i64 64, !34, i64 64, !34, i64 64}
!59 = !{!"_ZTS16interval_managerI17im_default_configE", !45, i64 0, !56, i64 8, !57, i64 16, !57, i64 48, !57, i64 80, !57, i64 112, !57, i64 144, !57, i64 176, !57, i64 208, !57, i64 240, !57, i64 272, !34, i64 304, !58, i64 312, !58, i64 384, !58, i64 456, !58, i64 528}
!60 = !{!"p1 _ZTSN11realclosure11mpbq_config15numeral_managerE", !38, i64 0}
!61 = !{!"_ZTSN11realclosure11mpbq_configE", !60, i64 0}
!62 = !{!"_ZTSN11realclosure11mpbq_config8intervalE", !53, i64 0, !53, i64 24, !33, i64 48, !33, i64 49, !33, i64 50, !33, i64 51}
!63 = !{!"_ZTS16interval_managerIN11realclosure11mpbq_configEE", !45, i64 0, !61, i64 8, !53, i64 16, !53, i64 40, !53, i64 64, !53, i64 88, !53, i64 112, !53, i64 136, !53, i64 160, !53, i64 184, !53, i64 208, !34, i64 232, !62, i64 240, !62, i64 296, !62, i64 352, !62, i64 408}
!64 = !{!"p1 _ZTSN11realclosure5valueE", !38, i64 0}
!65 = !{!"_ZTSN11realclosure11mk_intervalE"}
!66 = !{!"_ZTSN11realclosure14mk_pi_intervalE", !65, i64 0}
!67 = !{!"_ZTSN11realclosure13mk_e_intervalE", !65, i64 0}
!68 = !{!"any p2 pointer", !38, i64 0}
!69 = !{!"p2 _ZTSN11realclosure5valueE", !68, i64 0}
!70 = !{!"_ZTS6vectorIPN11realclosure5valueELb0EjE", !69, i64 0}
!71 = !{!"_ZTS10ptr_vectorIN11realclosure5valueEE", !70, i64 0}
!72 = !{!"p2 _ZTSN11realclosure9extensionE", !68, i64 0}
!73 = !{!"_ZTS6vectorIPN11realclosure9extensionELb0EjE", !72, i64 0}
!74 = !{!"_ZTS10ptr_vectorIN11realclosure9extensionEE", !73, i64 0}
!75 = !{!"p1 _ZTS12mpbq_manager", !38, i64 0}
!76 = !{!"_ZTS15_scoped_numeralI12mpbq_managerE", !75, i64 0, !53, i64 8}
!77 = !{!"_ZTSN11realclosure7manager3impE", !45, i64 0, !47, i64 8, !48, i64 16, !49, i64 24, !51, i64 32, !55, i64 48, !59, i64 264, !63, i64 864, !33, i64 1328, !64, i64 1352, !66, i64 1360, !64, i64 1368, !67, i64 1376, !64, i64 1384, !71, i64 1392, !74, i64 1400, !48, i64 1408, !48, i64 1409, !34, i64 1412, !34, i64 1416, !34, i64 1420, !76, i64 1424, !76, i64 1456, !48, i64 1488, !34, i64 1492, !48, i64 1496}
!78 = !{!77, !47, i64 8}
!79 = !{!77, !48, i64 16}
!80 = !{!49, !49, i64 0}
!81 = !{!77, !49, i64 24}
!82 = !{}
!83 = !{i64 8}
!84 = !{!55, !34, i64 208}
!85 = !{!55, !48, i64 212}
!86 = !{!60, !60, i64 0}
!87 = !{!73, !72, i64 0}
!88 = !{!"vtable pointer", !32, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!75, !75, i64 0}
!91 = !{!52, !34, i64 0}
!92 = !{!52, !39, i64 8}
!93 = !{!53, !34, i64 16}
!94 = !{!"p1 _ZTSN11realclosure11mpbq_config8intervalE", !38, i64 0}
!95 = !{!"_ZTSN11realclosure5valueE", !34, i64 0, !48, i64 4, !62, i64 8, !94, i64 64}
!96 = !{!95, !48, i64 4}
!97 = !{!95, !94, i64 64}
!98 = !{!77, !64, i64 1352}
!99 = !{!95, !34, i64 0}
!100 = !{!77, !64, i64 1368}
!101 = !{!77, !64, i64 1384}
!102 = !{!77, !48, i64 1408}
!103 = !{!77, !48, i64 1409}
!104 = !{!77, !34, i64 1412}
!105 = !{!77, !34, i64 1416}
!106 = !{!77, !48, i64 1488}
!107 = !{!54, !50, i64 0}
!108 = !{!"_ZTSN11realclosure3numE", !64, i64 0}
!109 = !{!108, !64, i64 0}
!110 = !{!"p1 omnipotent char", !38, i64 0}
!111 = !{!"_ZTS6symbol", !110, i64 0}
!112 = !{!111, !110, i64 0}
!113 = !{!"p1 _ZTSN11realclosure9extensionE", !38, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!"_ZTSN11realclosure17save_interval_ctxE", !42, i64 0}
!116 = !{!115, !42, i64 0}
!117 = !{!"llvm.loop.mustprogress"}
!118 = !{!"_ZTS6bufferIPN11realclosure5valueELb0ELj16EE", !69, i64 0, !34, i64 8, !34, i64 12, !33, i64 16}
!119 = !{!118, !69, i64 0}
!120 = !{!64, !64, i64 0}
!121 = !{!"llvm.loop.isvectorized", i32 1}
!122 = !{!"llvm.loop.unroll.runtime.disable"}
!123 = !{!"llvm.loop.unroll.disable"}
!124 = !{!"p1 _ZTSN11realclosure3numE", !38, i64 0}
!125 = !{!"_ZTS6vectorIN11realclosure3numELb0EjE", !124, i64 0}
!126 = !{!125, !124, i64 0}
!127 = !{i8 0, i8 2}
!128 = !{!62, !33, i64 48}
!129 = !{!"_ZTS5arrayIPN11realclosure5valueELb0EE", !69, i64 0}
!130 = !{!"_ZTS9ptr_arrayIN11realclosure5valueEE", !129, i64 0}
!131 = !{!"_ZTSN11realclosure23rational_function_valueE", !95, i64 0, !130, i64 72, !130, i64 80, !113, i64 88, !48, i64 96}
!132 = !{!131, !113, i64 88}
!133 = !{!131, !48, i64 96}
!134 = !{!61, !60, i64 0}
!135 = !{!62, !33, i64 50}
!136 = !{!62, !33, i64 51}
!137 = !{!62, !33, i64 49}
!138 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !110, i64 0}
!139 = !{!138, !110, i64 0}
!140 = !{!"long", !33, i64 0}
!141 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !138, i64 0, !140, i64 8, !33, i64 16}
!142 = !{!141, !110, i64 0}
!143 = !{!141, !140, i64 8}
!144 = !{!42, !42, i64 0}
!145 = !{!"_ZTS6bufferIPN11realclosure5valueELb0ELj32EE", !69, i64 0, !34, i64 8, !34, i64 12, !33, i64 16}
!146 = !{!145, !69, i64 0}
!147 = !{!145, !34, i64 8}
!148 = !{!145, !34, i64 12}
!149 = !{!"_ZTS7obj_refIN11realclosure5valueENS0_7manager3impEE", !64, i64 0, !42, i64 8}
!150 = !{!149, !64, i64 0}
!151 = !{!149, !42, i64 8}
!152 = !{!"_ZTS19ref_manager_wrapperIN11realclosure5valueENS0_7manager3impEE", !42, i64 0}
!153 = !{!152, !42, i64 0}
!154 = !{!"p1 _ZTSN11realclosure7managerE", !38, i64 0}
!155 = !{!154, !154, i64 0}
!156 = !{!"_ZTS15_scoped_numeralIN11realclosure7managerEE", !154, i64 0, !108, i64 8}
!157 = !{!156, !154, i64 0}
!158 = !{!110, !110, i64 0}
!159 = !{!129, !69, i64 0}
!160 = !{!140, !140, i64 0}
!161 = !{!"_ZTSN11realclosure9extensionE", !34, i64 0, !34, i64 4, !34, i64 4, !62, i64 8, !94, i64 64}
!162 = !{!"p1 _ZTSN11realclosure8sign_detE", !38, i64 0}
end_hunk_1
