Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dec_ma?download=true
inline.NumInlined: 495
inline.NumDeleted: 332
begin_hunk_0_@_ZN3jxl10DecodeTreeEP22JxlMemoryManagerStructPNS_9BitReaderEPNSt3__16vectorINS_20PropertyDecisionNodeENS4_9allocatorIS6_EEEEm:bb.a
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 %.sroa.speculated.i.i.i.i, i64 461168601842738790 ; 4 uses
  %i.dn = icmp ne i64 %.0.i.i.i.i, 0
  call void @llvm.assume(i1 %i.dn)
  %i.do = icmp ugt i64 %.0.i.i.i.i, 461168601842738790
  br i1 %i.do, label %bb.p, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i

bb.p:                                             ; preds = %_ZNKSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #16
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i: ; preds = %_ZNKSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i
  %i.dp = mul nuw i64 %.0.i.i.i.i, 40
  %i.dq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #17 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.df ; 10 uses
  %i.ds = getelementptr inbounds nuw [40 x i8], ptr %i.dq, i64 %.0.i.i.i.i
  store i32 0, ptr %i.dr, align 8, !tbaa !106
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store i16 -1, ptr %i.dt, align 4, !tbaa !107
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store i32 %.0125.i, ptr %i.du, align 8, !tbaa !108
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !109
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i32 %i.cr, ptr %i.dw, align 8, !tbaa !110
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store i64 %i.bz, ptr %i.dx, align 8, !tbaa !111
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  store i32 %i.cq, ptr %i.dy, align 8, !tbaa !112
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 40 ; 3 uses
  %i.ea = load ptr, ptr %i.u, align 8, !tbaa !94
  %.promoted.fr.i.i.i.i.i.i.i = freeze ptr %i.ea  ; 2 uses
  %i.eb = load ptr, ptr %2, align 8, !tbaa !93    ; 5 uses
  %.not4.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.promoted.fr.i.i.i.i.i.i.i, %i.eb
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ec = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.dr, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.promoted.fr.i.i.i.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i ]
  %i.ed = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i.i, i64 -40 ; 3 uses
  %i.ee = getelementptr inbounds i8, ptr %i.ec, i64 -40 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ee, ptr noundef nonnull align 8 dereferenceable(36) %i.ed, i64 36, i1 false), !tbaa.struct !116, !noalias !117
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ed, %i.eb
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !49

_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i
  %.sroa.436.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dr, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i ], [ %i.ee, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.i.i, ptr %2, align 8, !tbaa !103
  store ptr %i.dz, ptr %i.u, align 8, !tbaa !103
  %i.ef = load ptr, ptr %i.ac, align 8, !tbaa !103
  store ptr %i.ds, ptr %i.ac, align 8, !tbaa !103
  %.not.i10.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i10.i.i.i, label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJiiiiRNS1_9PredictorERlRjEEERS2_DpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i.i.i
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.eb to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.ei) #18
  br label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJiiiiRNS1_9PredictorERlRjEEERS2_DpOT_.exit.i

_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJiiiiRNS1_9PredictorERlRjEEERS2_DpOT_.exit.i: ; preds = %bb.q, %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i.i.i, %bb.m
  %.0.i.i = phi ptr [ %i.db, %bb.m ], [ %i.dz, %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i.i.i ], [ %i.dz, %bb.q ] ; 2 uses
  store ptr %.0.i.i, ptr %i.u, align 8, !tbaa !94
  %i.ej = add i32 %.0125.i, 1
  br label %bb.x

bb.r:                                             ; preds = %bb.h
  %i.ek = load i8, ptr %i.bj, align 1, !tbaa !84, !noalias !119
  %i.el = zext i8 %i.ek to i64
  %i.em = call noundef i64 @_ZN3jxl15ANSSymbolReader23ReadHybridUintClusteredILb1EEEmmPNS_9BitReaderE(ptr noundef nonnull align 8 dereferenceable(604) %9, i64 noundef %i.el, ptr noundef nonnull %1) #15 ; 2 uses
  %i.en = lshr i64 %i.em, 1
  %i.eo = and i64 %i.em, 1
  %i.ep = sub nsw i64 0, %i.eo
  %i.eq = xor i64 %i.en, %i.ep
  %i.er = trunc i64 %i.eq to i32                  ; 2 uses
  %i.es = load ptr, ptr %i.u, align 8, !tbaa !94  ; 10 uses
  %i.et = load ptr, ptr %2, align 8, !tbaa !93
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64               ; 2 uses
  %i.ew = sub i64 %i.eu, %i.ev                    ; 2 uses
  %i.ex = sdiv exact i64 %i.ew, 40                ; 3 uses
  %i.ey = add i64 %i.ex, %.051124.i
  %i.ez = trunc i64 %i.ey to i32                  ; 2 uses
  %i.fa = add i64 %i.ex, %i.az
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = add i32 %i.fb, 2                        ; 2 uses
  %i.fd = load ptr, ptr %i.ac, align 8, !tbaa !103 ; 2 uses
  %i.fe = icmp ult ptr %i.es, %i.fd
  br i1 %i.fe, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.er, ptr %i.es, align 8, !tbaa !106
  %i.ff = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.fg = trunc nuw nsw i32 %i.bh to i16
  store i16 %i.fg, ptr %i.ff, align 4, !tbaa !107
  %i.fh = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i32 %i.ez, ptr %i.fh, align 8, !tbaa !108
  %i.fi = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  store i32 %i.fc, ptr %i.fi, align 4, !tbaa !109
  %i.fj = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store i32 0, ptr %i.fj, align 8, !tbaa !110
  %i.fk = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store i64 0, ptr %i.fk, align 8, !tbaa !111
  %i.fl = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  store i32 1, ptr %i.fl, align 8, !tbaa !112
  %i.fm = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  br label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJRiS7_iiNS1_9PredictorEiiEEERS2_DpOT_.exit.i

bb.t:                                             ; preds = %bb.r
  %i.fn = add nsw i64 %i.ex, 1                    ; 2 uses
  %i.fo = icmp ugt i64 %i.fn, 461168601842738790
  br i1 %i.fo, label %bb.u, label %_ZNKSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i65.i

bb.u:                                             ; preds = %bb.t
  call void @_ZNKSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  unreachable

_ZNKSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i65.i: ; preds = %bb.t
  %i.fp = ptrtoint ptr %i.fd to i64
  %i.fq = sub i64 %i.fp, %i.ev
  %i.fr = sdiv exact i64 %i.fq, 40                ; 2 uses
  %.not.i.i.i66.i = icmp ult i64 %i.fr, 230584300921369395
  %i.fs = shl nuw nsw i64 %i.fr, 1
  %.sroa.speculated.i.i.i67.i = call i64 @llvm.umax.i64(i64 %i.fs, i64 %i.fn)
  %.0.i.i.i68.i = select i1 %.not.i.i.i66.i, i64 %.sroa.speculated.i.i.i67.i, i64 461168601842738790 ; 4 uses
  %i.ft = icmp ne i64 %.0.i.i.i68.i, 0
  call void @llvm.assume(i1 %i.ft)
  %i.fu = icmp ugt i64 %.0.i.i.i68.i, 461168601842738790
  br i1 %i.fu, label %bb.v, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i69.i

bb.v:                                             ; preds = %_ZNKSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i65.i
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #16
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i69.i: ; preds = %_ZNKSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i65.i
  %i.fv = mul nuw i64 %.0.i.i.i68.i, 40
  %i.fw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #17 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.ew ; 10 uses
  %i.fy = getelementptr inbounds nuw [40 x i8], ptr %i.fw, i64 %.0.i.i.i68.i
  store i32 %i.er, ptr %i.fx, align 8, !tbaa !106
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  %i.ga = trunc nuw nsw i32 %i.bh to i16
  store i16 %i.ga, ptr %i.fz, align 4, !tbaa !107
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i32 %i.ez, ptr %i.gb, align 8, !tbaa !108
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  store i32 %i.fc, ptr %i.gc, align 4, !tbaa !109
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store i32 0, ptr %i.gd, align 8, !tbaa !110
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  store i64 0, ptr %i.ge, align 8, !tbaa !111
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  store i32 1, ptr %i.gf, align 8, !tbaa !112
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fx, i64 40 ; 3 uses
  %i.gh = load ptr, ptr %i.u, align 8, !tbaa !94
  %.promoted.fr.i.i.i.i.i.i70.i = freeze ptr %i.gh ; 2 uses
  %i.gi = load ptr, ptr %2, align 8, !tbaa !93    ; 5 uses
  %.not4.i.i.i.i.i.i.i.i.i71.i = icmp eq ptr %.promoted.fr.i.i.i.i.i.i70.i, %i.gi
  br i1 %.not4.i.i.i.i.i.i.i.i.i71.i, label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i.i75.i, label %.lr.ph.i.i.i.i.i.i.i.i.i72.i

.lr.ph.i.i.i.i.i.i.i.i.i72.i:                     ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i69.i, %.lr.ph.i.i.i.i.i.i.i.i.i72.i
  %i.gj = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i.i.i.i.i72.i ], [ %i.fx, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i69.i ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i73.i = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i.i.i.i72.i ], [ %.promoted.fr.i.i.i.i.i.i70.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i69.i ]
  %i.gk = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i73.i, i64 -40 ; 3 uses
  %i.gl = getelementptr inbounds i8, ptr %i.gj, i64 -40 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gl, ptr noundef nonnull align 8 dereferenceable(36) %i.gk, i64 36, i1 false), !tbaa.struct !116, !noalias !120
  %.not.i.i.i.i.i.i.i.i.i74.i = icmp eq ptr %i.gk, %i.gi
  br i1 %.not.i.i.i.i.i.i.i.i.i74.i, label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i.i75.i, label %.lr.ph.i.i.i.i.i.i.i.i.i72.i, !llvm.loop !49

_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i.i75.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i72.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i69.i
  %.sroa.436.0.i.i.i.i.i.i.i.i76.i = phi ptr [ %i.fx, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl20PropertyDecisionNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i69.i ], [ %i.gl, %.lr.ph.i.i.i.i.i.i.i.i.i72.i ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.i76.i, ptr %2, align 8, !tbaa !103
  store ptr %i.gg, ptr %i.u, align 8, !tbaa !103
  %i.gm = load ptr, ptr %i.ac, align 8, !tbaa !103
  store ptr %i.fy, ptr %i.ac, align 8, !tbaa !103
  %.not.i10.i.i77.i = icmp eq ptr %i.gi, null
  br i1 %.not.i10.i.i77.i, label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJRiS7_iiNS1_9PredictorEiiEEERS2_DpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i.i75.i
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gi to i64
  %i.gp = sub i64 %i.gn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gp) #18
  br label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJRiS7_iiNS1_9PredictorEiiEEERS2_DpOT_.exit.i

_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJRiS7_iiNS1_9PredictorEiiEEERS2_DpOT_.exit.i: ; preds = %bb.w, %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i.i75.i, %bb.s
  %.0.i78.i = phi ptr [ %i.fm, %bb.s ], [ %i.gg, %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit.i.i75.i ], [ %i.gg, %bb.w ] ; 2 uses
  store ptr %.0.i78.i, ptr %i.u, align 8, !tbaa !94
  %i.gq = add i64 %.051124.i, 1
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJRiS7_iiNS1_9PredictorEiiEEERS2_DpOT_.exit.i, %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJiiiiRNS1_9PredictorERlRjEEERS2_DpOT_.exit.i
  %i.gr = phi ptr [ %.0.i.i, %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJiiiiRNS1_9PredictorERlRjEEERS2_DpOT_.exit.i ], [ %.0.i78.i, %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJRiS7_iiNS1_9PredictorEiiEEERS2_DpOT_.exit.i ] ; 6 uses
  %.253.i = phi i64 [ %i.az, %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJiiiiRNS1_9PredictorERlRjEEERS2_DpOT_.exit.i ], [ %i.gq, %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJRiS7_iiNS1_9PredictorEiiEEERS2_DpOT_.exit.i ] ; 2 uses
  %.5.i = phi i32 [ %i.ej, %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJiiiiRNS1_9PredictorERlRjEEERS2_DpOT_.exit.i ], [ %.0125.i, %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE12emplace_backIJRiS7_iiNS1_9PredictorEiiEEERS2_DpOT_.exit.i ]
  %.not.i = icmp eq i64 %.253.i, 0
  br i1 %.not.i, label %bb.y, label %bb.e

bb.y:                                             ; preds = %bb.x
  %i.gs = ptrtoaddr ptr %i.gr to i64
  %i.gt = load ptr, ptr %2, align 8, !tbaa !93    ; 14 uses
  %.not104106.i.i = icmp eq ptr %i.gt, %i.gr
  br i1 %.not104106.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.y
  %i.gu = ptrtoaddr ptr %i.gt to i64
  %i.gv = add i64 %i.gs, -40
  %i.gw = sub i64 %i.gv, %i.gu                    ; 2 uses
  %i.gx = udiv i64 %i.gw, 40
  %i.gy = add nuw nsw i64 %i.gx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gw, 280
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.gy, 1152921504606846968     ; 3 uses
  %i.gz = mul i64 %n.vec, 40
  %i.ha = getelementptr i8, ptr %i.gt, i64 %i.gz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.in, %vector.body ]
  %vec.phi88 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.io, %vector.body ]
  %i.hb = mul i64 %index, 40                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.gt, i64 %i.hb
  %i.hc = getelementptr i8, ptr %i.gt, i64 %i.hb
  %i.hd = getelementptr i8, ptr %i.gt, i64 %i.hb
  %i.he = getelementptr i8, ptr %i.gt, i64 %i.hb
  %i.hf = getelementptr i8, ptr %i.gt, i64 %i.hb
  %i.hg = getelementptr i8, ptr %i.gt, i64 %i.hb
  %i.hh = getelementptr i8, ptr %i.gt, i64 %i.hb
  %i.hi = getelementptr i8, ptr %i.gt, i64 %i.hb
  %i.hj = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.hk = getelementptr i8, ptr %i.hc, i64 44
  %i.hl = getelementptr i8, ptr %i.hd, i64 84
  %i.hm = getelementptr i8, ptr %i.he, i64 124
  %i.hn = getelementptr i8, ptr %i.hf, i64 164
  %i.ho = getelementptr i8, ptr %i.hg, i64 204
  %i.hp = getelementptr i8, ptr %i.hh, i64 244
  %i.hq = getelementptr i8, ptr %i.hi, i64 284
  %i.hr = load i16, ptr %i.hj, align 4, !tbaa !113
  %i.hs = load i16, ptr %i.hk, align 4, !tbaa !113
  %i.ht = load i16, ptr %i.hl, align 4, !tbaa !113
  %i.hu = load i16, ptr %i.hm, align 4, !tbaa !113
  %i.hv = insertelement <4 x i16> poison, i16 %i.hr, i64 0
  %i.hw = insertelement <4 x i16> %i.hv, i16 %i.hs, i64 1
  %i.hx = insertelement <4 x i16> %i.hw, i16 %i.ht, i64 2
  %i.hy = insertelement <4 x i16> %i.hx, i16 %i.hu, i64 3
  %i.hz = load i16, ptr %i.hn, align 4, !tbaa !113
  %i.ia = load i16, ptr %i.ho, align 4, !tbaa !113
  %i.ib = load i16, ptr %i.hp, align 4, !tbaa !113
  %i.ic = load i16, ptr %i.hq, align 4, !tbaa !113
  %i.id = insertelement <4 x i16> poison, i16 %i.hz, i64 0
  %i.ie = insertelement <4 x i16> %i.id, i16 %i.ia, i64 1
  %i.if = insertelement <4 x i16> %i.ie, i16 %i.ib, i64 2
  %i.ig = insertelement <4 x i16> %i.if, i16 %i.ic, i64 3
  %i.ih = freeze <4 x i16> %i.hy
  %i.ii = freeze <4 x i16> %i.ig
  %i.ij = sext <4 x i16> %i.ih to <4 x i32>
  %i.ik = sext <4 x i16> %i.ii to <4 x i32>
  %i.il = add nsw <4 x i32> %i.ij, splat (i32 1)
  %i.im = add nsw <4 x i32> %i.ik, splat (i32 1)
  %i.in = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.il) ; 2 uses
  %i.io = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi88, <4 x i32> %i.im) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ip = icmp eq i64 %index.next, %n.vec
  br i1 %i.ip, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.in, <4 x i32> %i.io)
  %i.iq = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.gy, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.preheader109

.lr.ph.i.i.preheader109:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.0108.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.iq, %middle.block ]
  %.sroa.0100.0107.i.i.ph = phi ptr [ %i.gt, %.lr.ph.i.i.preheader ], [ %i.ha, %middle.block ]
  br label %.lr.ph.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.ir = ptrtoint ptr %i.gr to i64
  %10 = ptrtoint ptr %i.gt to i64
  %11 = sub i64 %i.ir, %10
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit.i.i

.loopexit:                                        ; preds = %.lr.ph.i.i, %middle.block
  %spec.select.i79.i.lcssa = phi i32 [ %i.iq, %middle.block ], [ %spec.select.i79.i, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.it = ptrtoint ptr %i.gr to i64
  %i.iu = ptrtoint ptr %i.gt to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = sdiv exact i64 %i.iv, 40                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ix = icmp ugt i64 %i.iw, 4611686018427387903
  br i1 %i.ix, label %bb.z, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i.i.i

bb.z:                                             ; preds = %.loopexit
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  unreachable

_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i.i.i: ; preds = %.loopexit
  %i.iy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.iz = shl nuw nsw i64 %i.iw, 2                ; 2 uses
  %i.ja = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iz) #17 ; 3 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.iw
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ja, i8 0, i64 %i.iz, i1 false), !tbaa !19
  %.pre.i.i = load ptr, ptr %i.u, align 8, !tbaa !94
  %.pre130.i.i = load ptr, ptr %2, align 8, !tbaa !93
  %.pre131.i.i = ptrtoint ptr %.pre.i.i to i64
  %.pre132.i.i = ptrtoint ptr %.pre130.i.i to i64
  %.pre134.i.i = sub i64 %.pre131.i.i, %.pre132.i.i
  %i.jc = ptrtoint ptr %i.jb to i64
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit.i.i

_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit.i.i: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i.i.i, %._crit_edge.thread.i.i
  %i.jd = phi ptr [ %i.is, %._crit_edge.thread.i.i ], [ %i.iy, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i.i.i ]
  %.0.lcssa152.i.i = phi i32 [ 0, %._crit_edge.thread.i.i ], [ %spec.select.i79.i.lcssa, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i.i.i ] ; 7 uses
  %.pre-phi.i.i = phi i64 [ %11, %._crit_edge.thread.i.i ], [ %.pre134.i.i, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i.i.i ]
  %i.je = phi i64 [ 0, %._crit_edge.thread.i.i ], [ %i.jc, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i.i.i ]
  %i.jf = phi ptr [ null, %._crit_edge.thread.i.i ], [ %i.ja, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i.i.i ] ; 10 uses
  %.pre-phi137.i.i = sdiv exact i64 %.pre-phi.i.i, 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %12 = zext nneg i32 %.0.lcssa152.i.i to i64     ; 6 uses
  %i.jg = mul i64 %.pre-phi137.i.i, %12           ; 4 uses
  %.not.i83.i.i = icmp eq i64 %i.jg, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %.not.i83.i.i, label %_ZNSt3__16vectorINS_4pairIiiEENS_9allocatorIS2_EEEC2Em.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit.i.i
  %i.jh = icmp ugt i64 %i.jg, 2305843009213693951
  br i1 %i.jh, label %bb.ab, label %_ZNSt3__16vectorINS_4pairIiiEENS_9allocatorIS2_EEE18__construct_at_endEm.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  call void @_ZNKSt3__16vectorINS_4pairIiiEENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  unreachable

_ZNSt3__16vectorINS_4pairIiiEENS_9allocatorIS2_EEE18__construct_at_endEm.exit.i.i.i: ; preds = %bb.aa
  %i.ji = shl nuw i64 %i.jg, 3                    ; 2 uses
  %i.jj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ji) #17 ; 3 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jg
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jj, i8 0, i64 %i.ji, i1 false), !tbaa !19
  %i.jl = ptrtoint ptr %i.jk to i64
  br label %_ZNSt3__16vectorINS_4pairIiiEENS_9allocatorIS2_EEEC2Em.exit.i.i

_ZNSt3__16vectorINS_4pairIiiEENS_9allocatorIS2_EEEC2Em.exit.i.i: ; preds = %_ZNSt3__16vectorINS_4pairIiiEENS_9allocatorIS2_EEE18__construct_at_endEm.exit.i.i.i, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit.i.i
  %i.jm = phi i64 [ 0, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit.i.i ], [ %i.jl, %_ZNSt3__16vectorINS_4pairIiiEENS_9allocatorIS2_EEE18__construct_at_endEm.exit.i.i.i ]
  %i.jn = phi ptr [ null, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit.i.i ], [ %i.jj, %_ZNSt3__16vectorINS_4pairIiiEENS_9allocatorIS2_EEE18__construct_at_endEm.exit.i.i.i ] ; 10 uses
  %i.jo = icmp sgt i32 %.0.lcssa152.i.i, 0
  br i1 %i.jo, label %.lr.ph110.i.i.preheader, label %.preheader.i.i

.lr.ph110.i.i.preheader:                          ; preds = %_ZNSt3__16vectorINS_4pairIiiEENS_9allocatorIS2_EEEC2Em.exit.i.i
  %min.iters.check97 = icmp ult i32 %.0.lcssa152.i.i, 4
  br i1 %min.iters.check97, label %.lr.ph110.i.i.preheader108, label %vector.ph98

vector.ph98:                                      ; preds = %.lr.ph110.i.i.preheader
  %n.vec99 = and i64 %12, 2147483644              ; 3 uses
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph98
  %index101 = phi i64 [ 0, %vector.ph98 ], [ %index.next102, %vector.body100 ] ; 3 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %index101
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %index101
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  store <4 x i32> <i32 -2147483648, i32 2147483647, i32 -2147483648, i32 2147483647>, ptr %i.jp, align 4, !tbaa !19
  store <4 x i32> <i32 -2147483648, i32 2147483647, i32 -2147483648, i32 2147483647>, ptr %i.jr, align 4, !tbaa !19
  %index.next102 = add nuw i64 %index101, 4       ; 2 uses
  %i.js = icmp eq i64 %index.next102, %n.vec99
  br i1 %i.js, label %middle.block103, label %vector.body100, !llvm.loop !61

middle.block103:                                  ; preds = %vector.body100
  %cmp.n104 = icmp eq i64 %n.vec99, %12
  br i1 %cmp.n104, label %.preheader.i.i, label %.lr.ph110.i.i.preheader108

.lr.ph110.i.i.preheader108:                       ; preds = %.lr.ph110.i.i.preheader, %middle.block103
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph110.i.i.preheader ], [ %n.vec99, %middle.block103 ]
  br label %.lr.ph110.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader109, %.lr.ph.i.i
  %.0108.i.i = phi i32 [ %spec.select.i79.i, %.lr.ph.i.i ], [ %.0108.i.i.ph, %.lr.ph.i.i.preheader109 ]
  %.sroa.0100.0107.i.i = phi ptr [ %i.jv, %.lr.ph.i.i ], [ %.sroa.0100.0107.i.i.ph, %.lr.ph.i.i.preheader109 ] ; 2 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0100.0107.i.i, i64 4
  %.sroa.3.0.copyload.i.i = load i16, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !tbaa !113
  %.sroa.3.0.copyload.fr.i.i = freeze i16 %.sroa.3.0.copyload.i.i
  %i.jt = sext i16 %.sroa.3.0.copyload.fr.i.i to i32
  %i.ju = add nsw i32 %i.jt, 1
  %spec.select.i79.i = call i32 @llvm.smax.i32(i32 %.0108.i.i, i32 %i.ju) ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0100.0107.i.i, i64 40 ; 2 uses
  %.not104.i.i = icmp eq ptr %i.jv, %i.gr
  br i1 %.not104.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !62

.preheader.i.i:                                   ; preds = %.lr.ph110.i.i, %middle.block103, %_ZNSt3__16vectorINS_4pairIiiEENS_9allocatorIS2_EEEC2Em.exit.i.i
  %i.jw = load ptr, ptr %i.u, align 8, !tbaa !94  ; 2 uses
  %i.jx = load ptr, ptr %2, align 8, !tbaa !93    ; 4 uses
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = sub i64 %i.jy, %i.jz
  %i.kb = sdiv exact i64 %i.ka, 40                ; 2 uses
  %.not77115.not.i.i = icmp eq ptr %i.jw, %i.jx
  br i1 %.not77115.not.i.i, label %.critedge.i.i, label %.lr.ph117.i.i

.lr.ph117.i.i:                                    ; preds = %.preheader.i.i
  %.not76111.not.i.i = icmp eq i32 %.0.lcssa152.i.i, 0
  br i1 %.not76111.not.i.i, label %.lr.ph117.split.i.i, label %.lr.ph117.split.us.i.i

.lr.ph117.split.us.i.i:                           ; preds = %.lr.ph117.i.i, %.critedge80.us.i.i
  %.071116.us.i.i = phi i64 [ %i.mc, %.critedge80.us.i.i ], [ 0, %.lr.ph117.i.i ] ; 4 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %.071116.us.i.i ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !19 ; 2 uses
  %i.ke = icmp sgt i32 %i.kd, 2048
  br i1 %i.ke, label %.critedge.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph117.split.us.i.i
  %i.kf = getelementptr inbounds nuw [40 x i8], ptr %i.jx, i64 %.071116.us.i.i ; 4 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.kh = load i16, ptr %i.kg, align 4, !tbaa !107 ; 2 uses
  %i.ki = icmp eq i16 %i.kh, -1
  br i1 %i.ki, label %.critedge80.us.i.i, label %.lr.ph114.us.i.i

.lr.ph114.us.i.i:                                 ; preds = %bb.ac
  %i.kj = add nsw i32 %i.kd, 1
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 8 ; 3 uses
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !108
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.km
  store i32 %i.kj, ptr %i.kn, align 4, !tbaa !19
  %i.ko = load i32, ptr %i.kc, align 4, !tbaa !19
  %i.kp = add nsw i32 %i.ko, 1
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kf, i64 12 ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !109
  %i.ks = zext i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.ks
  store i32 %i.kp, ptr %i.kt, align 4, !tbaa !19
  %i.ku = sext i16 %i.kh to i64                   ; 4 uses
  %i.kv = mul i64 %.071116.us.i.i, %12
  %i.kw = getelementptr [8 x i8], ptr %i.jn, i64 %i.kv ; 2 uses
  %i.kx = getelementptr [8 x i8], ptr %i.kw, i64 %i.ku ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.ku
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ah, %.lr.ph114.us.i.i
  %.068112.us.i.i = phi i64 [ 0, %.lr.ph114.us.i.i ], [ %i.mb, %bb.ah ] ; 5 uses
  %i.la = icmp eq i64 %.068112.us.i.i, %i.ku
  br i1 %i.la, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lb = getelementptr [8 x i8], ptr %i.kw, i64 %.068112.us.i.i ; 2 uses
  %i.lc = load i32, ptr %i.kk, align 8, !tbaa !108
  %i.ld = mul i32 %i.lc, %.0.lcssa152.i.i
  %i.le = zext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %.068112.us.i.i
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.le ; 2 uses
  %i.lh = load i32, ptr %i.lb, align 4, !tbaa !124 ; 2 uses
  store i32 %i.lh, ptr %i.lg, align 4, !tbaa !124
  %i.li = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !125 ; 2 uses
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.lk = load i32, ptr %i.kx, align 4, !tbaa !124 ; 2 uses
  %i.ll = load i32, ptr %i.ky, align 4, !tbaa !125 ; 2 uses
  %i.lm = load i32, ptr %i.kf, align 8, !tbaa !106 ; 4 uses
  %i.ln = icmp sle i32 %i.lk, %i.lm
  %.not.us.i.i = icmp sgt i32 %i.ll, %i.lm
  %or.cond.us.i.i = select i1 %i.ln, i1 %.not.us.i.i, i1 false
  br i1 %or.cond.us.i.i, label %bb.ag, label %.critedge.thread.i.i

bb.ag:                                            ; preds = %bb.af
  %i.lo = add nsw i32 %i.lm, 1
  %i.lp = load i32, ptr %i.kk, align 8, !tbaa !108
  %i.lq = mul i32 %i.lp, %.0.lcssa152.i.i
  %i.lr = zext i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.lr ; 2 uses
  store i32 %i.lo, ptr %i.ls, align 4, !tbaa !124
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.sink169.i.i = phi ptr [ %i.ls, %bb.ag ], [ %i.lg, %bb.ae ]
  %.sink167.i.i = phi i32 [ %i.ll, %bb.ag ], [ %i.lj, %bb.ae ]
  %i.lt = phi i64 [ %i.ku, %bb.ag ], [ %.068112.us.i.i, %bb.ae ]
  %.sink161.i.i = phi i32 [ %i.lk, %bb.ag ], [ %i.lh, %bb.ae ]
  %.sink.i.i = phi i32 [ %i.lm, %bb.ag ], [ %i.lj, %bb.ae ]
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.lt
  %i.lv = getelementptr inbounds nuw i8, ptr %.sink169.i.i, i64 4
  store i32 %.sink167.i.i, ptr %i.lv, align 4, !tbaa !125
  %i.lw = load i32, ptr %i.kq, align 4, !tbaa !109
  %i.lx = mul i32 %i.lw, %.0.lcssa152.i.i
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %i.ly ; 2 uses
  store i32 %.sink161.i.i, ptr %i.lz, align 4, !tbaa !124
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  store i32 %.sink.i.i, ptr %i.ma, align 4, !tbaa !125
  %i.mb = add nuw nsw i64 %.068112.us.i.i, 1      ; 2 uses
  %exitcond126.not.i.i = icmp eq i64 %i.mb, %12
  br i1 %exitcond126.not.i.i, label %.critedge80.us.i.i, label %bb.ad, !llvm.loop !63

.critedge80.us.i.i:                               ; preds = %bb.ah, %bb.ac
  %i.mc = add nuw i64 %.071116.us.i.i, 1          ; 2 uses
  %exitcond127.not.i.i = icmp eq i64 %i.mc, %i.kb
  br i1 %exitcond127.not.i.i, label %.critedge.i.i, label %.lr.ph117.split.us.i.i, !llvm.loop !64

.lr.ph110.i.i:                                    ; preds = %.lr.ph110.i.i.preheader108, %.lr.ph110.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph110.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph110.i.i.preheader108 ] ; 2 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %indvars.iv.i.i ; 2 uses
  store i32 -2147483648, ptr %i.md, align 4, !tbaa !124
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  store i32 2147483647, ptr %i.me, align 4, !tbaa !125
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %12
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %.lr.ph110.i.i, !llvm.loop !65

.lr.ph117.split.i.i:                              ; preds = %.lr.ph117.i.i, %.critedge80.i.i
  %.071116.i.i = phi i64 [ %i.mx, %.critedge80.i.i ], [ 0, %.lr.ph117.i.i ] ; 3 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %.071116.i.i ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !19 ; 2 uses
  %i.mh = icmp sgt i32 %i.mg, 2048
  br i1 %i.mh, label %.critedge.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph117.split.i.i
  %i.mi = getelementptr inbounds nuw [40 x i8], ptr %i.jx, i64 %.071116.i.i ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %i.mk = load i16, ptr %i.mj, align 4, !tbaa !107
  %i.ml = icmp eq i16 %i.mk, -1
  br i1 %i.ml, label %.critedge80.i.i, label %.critedge80.loopexit.i.i

.critedge80.loopexit.i.i:                         ; preds = %bb.ai
  %i.mm = add nsw i32 %i.mg, 1
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !108
  %i.mp = zext i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.mp
  store i32 %i.mm, ptr %i.mq, align 4, !tbaa !19
  %i.mr = load i32, ptr %i.mf, align 4, !tbaa !19
  %i.ms = add nsw i32 %i.mr, 1
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mi, i64 12
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !109
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.mv
  store i32 %i.ms, ptr %i.mw, align 4, !tbaa !19
  br label %.critedge80.i.i

.critedge80.i.i:                                  ; preds = %.critedge80.loopexit.i.i, %bb.ai
  %i.mx = add nuw i64 %.071116.i.i, 1             ; 2 uses
  %exitcond129.not.i.i = icmp eq i64 %i.mx, %i.kb
  br i1 %exitcond129.not.i.i, label %.critedge.i.i, label %.lr.ph117.split.i.i, !llvm.loop !64

.critedge.i.i:                                    ; preds = %.critedge80.us.i.i, %.lr.ph117.split.us.i.i, %.critedge80.i.i, %.lr.ph117.split.i.i, %.preheader.i.i
  %.sroa.0103.1.i.i = phi i32 [ 0, %.preheader.i.i ], [ 1, %.lr.ph117.split.i.i ], [ 0, %.critedge80.i.i ], [ 1, %.lr.ph117.split.us.i.i ], [ 0, %.critedge80.us.i.i ] ; 2 uses
  %.not.i.i.i80.i = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i80.i, label %_ZNSt3__16vectorINS_4pairIiiEENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i.i, label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %bb.af, %.critedge.i.i
  %.sroa.0103.1155.i.i = phi i32 [ %.sroa.0103.1.i.i, %.critedge.i.i ], [ 1, %bb.af ]
  %i.my = ptrtoint ptr %i.jn to i64
  %i.mz = sub i64 %i.jm, %i.my
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef %i.mz) #18
  br label %_ZNSt3__16vectorINS_4pairIiiEENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i.i

_ZNSt3__16vectorINS_4pairIiiEENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i.i: ; preds = %.critedge.thread.i.i, %.critedge.i.i
  %.sroa.0103.1156.i.i = phi i32 [ %.sroa.0103.1.i.i, %.critedge.i.i ], [ %.sroa.0103.1155.i.i, %.critedge.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.not.i.i88.i.i = icmp eq ptr %i.jf, null
  br i1 %.not.i.i88.i.i, label %_ZN3jxl12_GLOBAL__N_110DecodeTreeEPNS_9BitReaderEPNS_15ANSSymbolReaderERKNSt3__16vectorIhNS5_9allocatorIhEEEEPNS6_INS_20PropertyDecisionNodeENS7_ISC_EEEEm.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt3__16vectorINS_4pairIiiEENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i.i
  store ptr %i.jf, ptr %i.jd, align 8, !tbaa !126
  %i.na = ptrtoint ptr %i.jf to i64
  %i.nb = sub i64 %i.je, %i.na
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef %i.nb) #18
  br label %_ZN3jxl12_GLOBAL__N_110DecodeTreeEPNS_9BitReaderEPNS_15ANSSymbolReaderERKNSt3__16vectorIhNS5_9allocatorIhEEEEPNS6_INS_20PropertyDecisionNodeENS7_ISC_EEEEm.exit

_ZN3jxl12_GLOBAL__N_110DecodeTreeEPNS_9BitReaderEPNS_15ANSSymbolReaderERKNSt3__16vectorIhNS5_9allocatorIhEEEEPNS6_INS_20PropertyDecisionNodeENS7_ISC_EEEEm.exit: ; preds = %_ZNSt3__16vectorINS_4pairIiiEENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.nc = icmp ne i32 %.sroa.0103.1156.i.i, 0
  %i.nd = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.ne = load i32, ptr %i.nd, align 4
  %i.nf = icmp ne i32 %i.ne, 1245184
  %or.cond.not = select i1 %i.nc, i1 true, i1 %i.nf
  %spec.select = zext i1 %or.cond.not to i32
  br label %_ZN3jxl12_GLOBAL__N_110DecodeTreeEPNS_9BitReaderEPNS_15ANSSymbolReaderERKNSt3__16vectorIhNS5_9allocatorIhEEEEPNS6_INS_20PropertyDecisionNodeENS7_ISC_EEEEm.exit.thread

_ZN3jxl12_GLOBAL__N_110DecodeTreeEPNS_9BitReaderEPNS_15ANSSymbolReaderERKNSt3__16vectorIhNS5_9allocatorIhEEEEPNS6_INS_20PropertyDecisionNodeENS7_ISC_EEEEm.exit.thread: ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %_ZN3jxl12_GLOBAL__N_110DecodeTreeEPNS_9BitReaderEPNS_15ANSSymbolReaderERKNSt3__16vectorIhNS5_9allocatorIhEEEEPNS6_INS_20PropertyDecisionNodeENS7_ISC_EEEEm.exit
  %.sroa.015.0 = phi i32 [ %spec.select, %_ZN3jxl12_GLOBAL__N_110DecodeTreeEPNS_9BitReaderEPNS_15ANSSymbolReaderERKNSt3__16vectorIhNS5_9allocatorIhEEEEPNS6_INS_20PropertyDecisionNodeENS7_ISC_EEEEm.exit ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ] ; 2 uses
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.q) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %.pr = load i32, ptr %i.n, align 8, !tbaa !88
  %i.ng = icmp eq i32 %.pr, 0
  br i1 %i.ng, label %bb.ak, label %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit

bb.ak:                                            ; preds = %_ZN3jxl12_GLOBAL__N_110DecodeTreeEPNS_9BitReaderEPNS_15ANSSymbolReaderERKNSt3__16vectorIhNS5_9allocatorIhEEEEPNS6_INS_20PropertyDecisionNodeENS7_ISC_EEEEm.exit.thread
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #14
  br label %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit

_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit: ; preds = %bb.c, %_ZN3jxl12_GLOBAL__N_110DecodeTreeEPNS_9BitReaderEPNS_15ANSSymbolReaderERKNSt3__16vectorIhNS5_9allocatorIhEEEEPNS6_INS_20PropertyDecisionNodeENS7_ISC_EEEEm.exit.thread, %bb.ak
  %.sroa.015.128 = phi i32 [ %.sroa.015.0, %bb.ak ], [ %.sroa.015.0, %_ZN3jxl12_GLOBAL__N_110DecodeTreeEPNS_9BitReaderEPNS_15ANSSymbolReaderERKNSt3__16vectorIhNS5_9allocatorIhEEEEPNS6_INS_20PropertyDecisionNodeENS7_ISC_EEEEm.exit.thread ], [ %i.o, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.al

bb.al:                                            ; preds = %bb.b, %bb.a, %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit
  %.sroa.015.2 = phi i32 [ %i.c, %bb.a ], [ %.sroa.015.128, %_ZN3jxl8StatusOrINS_15ANSSymbolReaderEED2Ev.exit ], [ 1, %bb.b ]
  %i.nh = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !85 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ni, null
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.nj = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr %i.ni, ptr %i.nj, align 8, !tbaa !126
  %i.nk = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !127
  %i.nm = ptrtoint ptr %i.nl to i64
  %i.nn = ptrtoint ptr %i.ni to i64
  %i.no = sub i64 %i.nm, %i.nn
  call void @_ZdlPvm(ptr noundef nonnull %i.ni, i64 noundef %i.no) #18
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i: ; preds = %bb.am, %bb.al
  %i.np = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !128 ; 4 uses
  %.not.i.i1.i = icmp eq ptr %i.nq, null
  br i1 %.not.i.i1.i, label %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i
  %i.nr = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %i.nq, ptr %i.nr, align 8, !tbaa !129
  %i.ns = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !130
  %i.nu = ptrtoint ptr %i.nt to i64
  %i.nv = ptrtoint ptr %i.nq to i64
  %i.nw = sub i64 %i.nu, %i.nv
  call void @_ZdlPvm(ptr noundef nonnull %i.nq, i64 noundef %i.nw) #18
  br label %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i

_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i: ; preds = %bb.an, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i
  %i.nx = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !131 ; 5 uses
  %.not.i.i2.i = icmp eq ptr %i.ny, null
  br i1 %.not.i.i2.i, label %_ZN3jxl7ANSCodeD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i
  %i.nz = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !132 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.ny, %i.oa
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ao, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl19HuffmanDecodingDataEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.ob, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl19HuffmanDecodingDataEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i.i ], [ %i.oa, %bb.ao ] ; 3 uses
  %i.ob = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -24 ; 3 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !30 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i12 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i12, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl19HuffmanDecodingDataEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.od = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -16
  store ptr %i.oc, ptr %i.od, align 8, !tbaa !133
  %i.oe = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -8
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !134
  %i.og = ptrtoint ptr %i.of to i64
  %i.oh = ptrtoint ptr %i.oc to i64
  %i.oi = sub i64 %i.og, %i.oh
  call void @_ZdlPvm(ptr noundef nonnull %i.oc, i64 noundef %i.oi) #18
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl19HuffmanDecodingDataEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl19HuffmanDecodingDataEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i.i: ; preds = %bb.ap, %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.ny, %i.ob
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !66

_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl19HuffmanDecodingDataEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i.i
  %.pre1.i.i.i = load ptr, ptr %i.nx, align 8, !tbaa !131
  br label %_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i, %bb.ao
  %i.oj = phi ptr [ %.pre1.i.i.i, %_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i ], [ %i.ny, %bb.ao ] ; 2 uses
  store ptr %i.ny, ptr %i.nz, align 8, !tbaa !132
  %i.ok = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !135
  %i.om = ptrtoint ptr %i.ol to i64
  %i.on = ptrtoint ptr %i.oj to i64
  %i.oo = sub i64 %i.om, %i.on
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.oo) #18
  br label %_ZN3jxl7ANSCodeD2Ev.exit

_ZN3jxl7ANSCodeD2Ev.exit:                         ; preds = %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i, %_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(168) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.op = load ptr, ptr %6, align 8, !tbaa !83    ; 4 uses
  %.not.i.i = icmp eq ptr %i.op, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8nn180100Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN3jxl7ANSCodeD2Ev.exit
  %i.oq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.op, ptr %i.oq, align 8, !tbaa !136
  %i.or = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !137
  %i.ot = ptrtoint ptr %i.os to i64
  %i.ou = ptrtoint ptr %i.op to i64
  %i.ov = sub i64 %i.ot, %i.ou
  call void @_ZdlPvm(ptr noundef nonnull %i.op, i64 noundef %i.ov) #18
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8nn180100Ev.exit: ; preds = %_ZN3jxl7ANSCodeD2Ev.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret i32 %.sroa.015.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @_ZN3jxl16DecodeHistogramsEP22JxlMemoryManagerStructPNS_9BitReaderEmPNS_7ANSCodeEPNSt3__16vectorIhNS6_9allocatorIhEEEEb(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2
end_hunk_0
