Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopUtils?download=true
inline.NumInlined: 6254
inline.NumDeleted: 3083
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4mlir6affine19affineForOpBodySkewENS0_11AffineForOpEN4llvm8ArrayRefImEEb:.lr.ph.i
bb.e:                                             ; preds = %bb.d
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !103, !range !28, !noundef !29
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %i.bz, align 8, !tbaa !103
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cc) #20
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.ae

_ZNSt6vectorIS_IPN4mlir9OperationESaIS2_EESaIS4_EEC2EmRKS5_.exit: ; preds = %_ZN4llvm11max_elementIRNS_8ArrayRefImEEEEDaOT_.exit
  %i.cd = mul nuw nsw i64 %i.bu, 24
  %i.ce = add nuw nsw i64 %i.cd, 24               ; 4 uses
  %i.cf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #23 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i8 0, i64 %i.ce, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.cf, i64 %i.ce
  %i.cg = load ptr, ptr %5, align 8, !tbaa !36    ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 44
  %i.ci = load i32, ptr %i.ch, align 4            ; 3 uses
  %i.cj = and i32 %i.ci, 8388607
  %i.ck = icmp ne i32 %i.cj, 0
  call void @llvm.assume(i1 %i.ck)
  %i.cl = lshr i32 %i.ci, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i68 = and i32 %i.cl, 1
  %i.cm = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i68 to i64
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.cm
  %i.co = lshr i32 %i.ci, 21
  %i.cp = and i32 %i.co, 2040
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !53
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.cr, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !54 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !54
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %._crit_edge, label %_ZN4mlir5Block18without_terminatorEv.exit

_ZN4mlir5Block18without_terminatorEv.exit:        ; preds = %_ZNSt6vectorIS_IPN4mlir9OperationESaIS2_EESaIS4_EEC2EmRKS5_.exit
  %i.dc = getelementptr inbounds i8, ptr %i.cx, i64 -8
  %i.dd = call { ptr, ptr } @_ZN4mlir5Block23without_terminator_implEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dc) #20 ; 2 uses
  %i.de = extractvalue { ptr, ptr } %i.dd, 0      ; 2 uses
  %i.df = extractvalue { ptr, ptr } %i.dd, 1      ; 2 uses
  %.not129139 = icmp eq ptr %i.de, %i.df
  br i1 %.not129139, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit, %_ZNSt6vectorIS_IPN4mlir9OperationESaIS2_EESaIS4_EEC2EmRKS5_.exit, %_ZN4mlir5Block18without_terminatorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.dg = call ptr @_ZN4mlir6affine11AffineForOp16getLowerBoundMapEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #20 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.dh = load ptr, ptr %5, align 8, !tbaa !36    ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.di) #20
  store ptr %i.dj, ptr %10, align 8, !tbaa !65
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i64 0, ptr %i.dk, align 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !58
  %i.do = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.dh) #20
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !70
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.do, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.dr = mul i64 %.0.i2.i, %.0.i
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 104
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 152
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 168
  %.sroa.680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 12
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 32
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 36
  %.sroa.1181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 40
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 48
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 49
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 50
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 51
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.n

.lr.ph:                                           ; preds = %_ZN4mlir5Block18without_terminatorEv.exit, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit
  %.0141 = phi i32 [ %i.eg, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit ], [ 0, %_ZN4mlir5Block18without_terminatorEv.exit ] ; 2 uses
  %.sroa.0105.0140 = phi ptr [ %i.fh, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit ], [ %i.de, %_ZN4mlir5Block18without_terminatorEv.exit ] ; 2 uses
  %i.ef = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.0105.0140) #20 ; 2 uses
  %i.eg = add i32 %.0141, 1
  %i.eh = zext i32 %.0141 to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !89
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.ej ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !310 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !311
  %.not.i.i = icmp eq ptr %i.em, %i.eo
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  store ptr %i.ef, ptr %i.em, align 8, !tbaa !105
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %i.ep, ptr %i.el, align 8, !tbaa !310
  br label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit

bb.i:                                             ; preds = %.lr.ph
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !312 ; 4 uses
  %i.er = ptrtoint ptr %i.em to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es                    ; 6 uses
  %i.eu = icmp eq i64 %i.et, 9223372036854775800
  br i1 %i.eu, label %bb.j, label %_ZNKSt6vectorIPN4mlir9OperationESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #24
  unreachable

_ZNKSt6vectorIPN4mlir9OperationESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.ev = ashr exact i64 %i.et, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ev, i64 1)
  %i.ew = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ev ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.ev
  %i.ey = call i64 @llvm.umin.i64(i64 %i.ew, i64 1152921504606846975)
  %i.ez = select i1 %i.ex, i64 1152921504606846975, i64 %i.ey ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ez, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fa = shl nuw nsw i64 %i.ez, 3
  %i.fb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fa) #23 ; 4 uses
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 %i.et ; 2 uses
  store ptr %i.ef, ptr %i.fc, align 8, !tbaa !105
  %i.fd = icmp sgt i64 %i.et, 0
  br i1 %i.fd, label %bb.k, label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN4mlir9OperationESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fb, ptr align 8 %i.eq, i64 %i.et, i1 false)
  br label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4mlir9OperationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN4mlir9OperationESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.et) #22
  br label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4mlir9OperationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.fb, ptr %i.ek, align 8, !tbaa !312
  store ptr %i.fe, ptr %i.el, align 8, !tbaa !310
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.ez
  store ptr %i.ff, ptr %i.en, align 8, !tbaa !311
  br label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.h, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0105.0140, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !54 ; 2 uses
  %.not129 = icmp eq ptr %i.fh, %i.df
  br i1 %.not129, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE12emplace_backIJRmRS_IS5_SaIS5_EEEEERS7_DpOT_.exit
  %i.fi = ptrtoint ptr %i.ie to i64
  %i.fj = ptrtoint ptr %i.if to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = sdiv exact i64 %i.fk, 24                ; 2 uses
  %i.fm = and i64 %i.fl, 4294967295
  %.not155 = icmp eq i64 %i.fm, 0
  br i1 %.not155, label %._crit_edge153, label %.lr.ph152.preheader

.lr.ph152.preheader:                              ; preds = %bb.m
  %wide.trip.count = and i64 %i.fl, 4294967295
  br label %.lr.ph152

bb.n:                                             ; preds = %._crit_edge, %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE12emplace_backIJRmRS_IS5_SaIS5_EEEEERS7_DpOT_.exit
  %i.fn = phi ptr [ null, %._crit_edge ], [ %i.id, %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE12emplace_backIJRmRS_IS5_SaIS5_EEEEERS7_DpOT_.exit ] ; 6 uses
  %i.fo = phi ptr [ null, %._crit_edge ], [ %i.ie, %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE12emplace_backIJRmRS_IS5_SaIS5_EEEEERS7_DpOT_.exit ] ; 4 uses
  %.061147 = phi i64 [ 0, %._crit_edge ], [ %.3, %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE12emplace_backIJRmRS_IS5_SaIS5_EEEEERS7_DpOT_.exit ] ; 3 uses
  %.sroa.0100.0146 = phi ptr [ null, %._crit_edge ], [ %.sroa.0100.4, %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE12emplace_backIJRmRS_IS5_SaIS5_EEEEERS7_DpOT_.exit ] ; 5 uses
  %.sroa.099.0145 = phi ptr [ null, %._crit_edge ], [ %.sroa.099.4, %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE12emplace_backIJRmRS_IS5_SaIS5_EEEEERS7_DpOT_.exit ] ; 4 uses
  %.0124142 = phi i64 [ 0, %._crit_edge ], [ %i.ig, %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE12emplace_backIJRmRS_IS5_SaIS5_EEEEERS7_DpOT_.exit ] ; 7 uses
  %i.fp = phi ptr [ null, %._crit_edge ], [ %i.if, %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE12emplace_backIJRmRS_IS5_SaIS5_EEEEERS7_DpOT_.exit ] ; 10 uses
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %.0124142 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !106 ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !106 ; 3 uses
  %i.fu = icmp eq ptr %i.fr, %i.ft
  br i1 %i.fu, label %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE12emplace_backIJRmRS_IS5_SaIS5_EEEEERS7_DpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fv = icmp eq ptr %i.fp, %i.fo
  br i1 %i.fv, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fw = add i64 %.061147, %i.dr                 ; 3 uses
  %i.fx = mul i64 %.0124142, %.0.i2.i             ; 2 uses
  %i.fy = icmp ult i64 %i.fw, %i.fx
  %i.fz = call ptr @_ZN4mlir7Builder19getShiftedAffineMapENS_9AffineMapEl(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr %i.dg, i64 noundef %.061147) #20 ; 2 uses
  br i1 %i.fy, label %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE5clearEv.exit, label %bb.q

_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE5clearEv.exit: ; preds = %bb.p
  %i.ga = call ptr @_ZN4mlir7Builder19getShiftedAffineMapENS_9AffineMapEl(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr %i.dg, i64 noundef %i.fw) #20
  %.sroa.025.0.copyload = load ptr, ptr %5, align 8
  %i.gb = call fastcc ptr @_ZL19generateShiftedLoopN4mlir9AffineMapES0_RKSt6vectorISt4pairImN4llvm8ArrayRefIPNS_9OperationEEEESaIS8_EEjNS_6affine11AffineForOpENS_9OpBuilderE(ptr %i.fz, ptr %i.ga, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef 0, ptr %.sroa.025.0.copyload, ptr noundef nonnull byval(%"class.mlir::OpBuilder") align 8 %10)
  store ptr %i.fp, ptr %i.dq, align 8, !tbaa !314
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gc = call ptr @_ZN4mlir7Builder19getShiftedAffineMapENS_9AffineMapEl(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr %i.dg, i64 noundef %.0124142) #20
  %.sroa.019.0.copyload = load ptr, ptr %5, align 8
  %i.gd = call fastcc ptr @_ZL19generateShiftedLoopN4mlir9AffineMapES0_RKSt6vectorISt4pairImN4llvm8ArrayRefIPNS_9OperationEEEESaIS8_EEjNS_6affine11AffineForOpENS_9OpBuilderE(ptr %i.fz, ptr %i.gc, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef 0, ptr %.sroa.019.0.copyload, ptr noundef nonnull byval(%"class.mlir::OpBuilder") align 8 %10)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE5clearEv.exit
  %i.ge = phi ptr [ %i.fp, %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE5clearEv.exit ], [ %i.fo, %bb.q ] ; 2 uses
  %.sroa.086.0 = phi ptr [ %i.gb, %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE5clearEv.exit ], [ %i.gd, %bb.q ] ; 5 uses
  %.1 = phi i64 [ %i.fw, %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE5clearEv.exit ], [ %i.fx, %bb.q ] ; 2 uses
  %.not133 = icmp eq ptr %.sroa.086.0, null
  br i1 %.not133, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.086.0, i64 24 ; 2 uses
  %i.gg = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gf) #20
  store ptr %i.gg, ptr %11, align 8, !tbaa !331
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i8 0, i64 32, i1 false)
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !114
  store i32 0, ptr %i.dv, align 8, !tbaa !115
  store i32 6, ptr %i.dw, align 4, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dx, i8 0, i64 40, i1 false)
  store i32 40, ptr %i.dy, align 8, !tbaa !332
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dz, i8 0, i64 16, i1 false)
  store i32 40, ptr %i.ea, align 8, !tbaa !332
  %i.gh = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gf) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr %.sroa.086.0, ptr %i.b, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @_ZN4mlir23FrozenRewritePatternSetC1EONS_17RewritePatternSetEN4llvm8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(176) %11, ptr null, i64 0, ptr null, i64 0) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.15.0..sroa_idx, i8 0, i64 5, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %13, i8 0, i64 12, i1 false)
  store i32 2, ptr %.sroa.680.0..sroa_idx, align 4, !tbaa !334
  store i64 10, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !89
  store i64 -1, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !89
  store i32 1, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !336
  store i32 0, ptr %.sroa.11.0..sroa_idx, align 4
  store ptr null, ptr %.sroa.1181.0..sroa_idx, align 8, !tbaa !338
  store i8 1, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !117
  store i8 1, ptr %.sroa.13.0..sroa_idx, align 1, !tbaa !117
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 2, !tbaa !117
  %i.gi = call i8 @_ZN4mlir23applyOpPatternsGreedilyEN4llvm8ArrayRefIPNS_9OperationEEERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPbS9_(ptr nonnull %i.b, i64 1, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull byval(%"class.mlir::GreedyRewriteConfig") align 8 %13, ptr noundef null, ptr noundef nonnull %i.a) #20 ; 0 uses
  call void @_ZN4mlir23FrozenRewritePatternSetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.gj = load i8, ptr %i.a, align 1, !tbaa !117, !range !28, !noundef !29
  %i.gk = trunc nuw i8 %i.gj to i1                ; 2 uses
  %.not134 = icmp ne ptr %.sroa.0100.0146, null
  %i.gl = select i1 %i.gk, i1 true, i1 %.not134
  %.sroa.0100.1127 = select i1 %i.gl, ptr %.sroa.0100.0146, ptr %.sroa.086.0
  %.sroa.099.1 = select i1 %i.gk, ptr %.sroa.099.0145, ptr %.sroa.086.0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @_ZN4mlir16PDLPatternModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.eb) #20
  %i.gm = load ptr, ptr %i.ds, align 8, !tbaa !339 ; 3 uses
  %i.gn = load ptr, ptr %i.ec, align 8, !tbaa !340 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.gm, %i.gn
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.gs, %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.gm, %bb.s ] ; 2 uses
  %i.go = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !342 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4mlir14RewritePatternEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4mlir14RewritePatternEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !119
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(96) %i.go) #20, !inline_history !300
  br label %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir14RewritePatternEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i72 = icmp eq ptr %i.gs, %i.gn
  br i1 %.not.i.i.i.i72, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !301

_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ds, align 8, !tbaa !339
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %bb.s
  %i.gt = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.gm, %bb.s ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i1.i.i, label %_ZN4mlir17RewritePatternSetD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.gu = load ptr, ptr %i.ed, align 8, !tbaa !343
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %i.gt to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gx) #22
  br label %_ZN4mlir17RewritePatternSetD2Ev.exit

_ZN4mlir17RewritePatternSetD2Ev.exit:             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.v

bb.u:                                             ; preds = %bb.o
  %i.gy = mul i64 %.0124142, %.0.i2.i
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %_ZN4mlir17RewritePatternSetD2Ev.exit, %bb.u
  %i.gz = phi ptr [ %i.fo, %bb.u ], [ %i.ge, %_ZN4mlir17RewritePatternSetD2Ev.exit ], [ %i.ge, %bb.r ] ; 5 uses
  %.sroa.099.3 = phi ptr [ %.sroa.099.0145, %bb.u ], [ %.sroa.099.1, %_ZN4mlir17RewritePatternSetD2Ev.exit ], [ %.sroa.099.0145, %bb.r ] ; 2 uses
  %.sroa.0100.3 = phi ptr [ %.sroa.0100.0146, %bb.u ], [ %.sroa.0100.1127, %_ZN4mlir17RewritePatternSetD2Ev.exit ], [ %.sroa.0100.0146, %bb.r ] ; 2 uses
  %.2 = phi i64 [ %i.gy, %bb.u ], [ %.1, %_ZN4mlir17RewritePatternSetD2Ev.exit ], [ %.1, %bb.r ] ; 2 uses
  %.not.i73 = icmp eq ptr %i.gz, %i.fn
  br i1 %.not.i73, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i64 %.0124142, ptr %i.gz, align 8, !tbaa !122
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.fr, ptr %i.ha, align 8, !tbaa !344
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hc = ptrtoint ptr %i.ft to i64
  %i.hd = ptrtoint ptr %i.fr to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = ashr exact i64 %i.he, 3
  store i64 %i.hf, ptr %i.hb, align 8, !tbaa !345
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gz, i64 24 ; 2 uses
  store ptr %i.hg, ptr %i.dq, align 8, !tbaa !314
  br label %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE12emplace_backIJRmRS_IS5_SaIS5_EEEEERS7_DpOT_.exit

bb.x:                                             ; preds = %bb.v
  %i.hh = ptrtoint ptr %i.fn to i64
  %i.hi = ptrtoint ptr %i.fp to i64
  %i.hj = sub i64 %i.hh, %i.hi                    ; 4 uses
  %i.hk = icmp eq i64 %i.hj, 9223372036854775800
  br i1 %i.hk, label %bb.y, label %_ZNKSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.y:                                             ; preds = %bb.x
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #24
  unreachable

_ZNKSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.x
  %i.hl = sdiv exact i64 %i.hj, 24                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.hl, i64 1)
  %i.hm = add nsw i64 %.sroa.speculated.i.i, %i.hl ; 2 uses
  %i.hn = icmp ult i64 %i.hm, %i.hl
  %i.ho = call i64 @llvm.umin.i64(i64 %i.hm, i64 384307168202282325)
  %i.hp = select i1 %i.hn, i64 384307168202282325, i64 %i.ho ; 3 uses
  %.not.i.i77 = icmp ne i64 %i.hp, 0
  call void @llvm.assume(i1 %.not.i.i77)
  %i.hq = mul nuw nsw i64 %i.hp, 24
  %i.hr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hq) #23 ; 6 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hj ; 3 uses
  store i64 %.0124142, ptr %i.hs, align 8, !tbaa !122
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store ptr %i.fr, ptr %i.ht, align 8, !tbaa !344
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hv = ptrtoint ptr %i.ft to i64
  %i.hw = ptrtoint ptr %i.fr to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = ashr exact i64 %i.hx, 3
  store i64 %i.hy, ptr %i.hu, align 8, !tbaa !345
  %.not10.i.i.i.i = icmp eq ptr %i.fp, %i.fn
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit23.i, label %.lr.ph.i.i.i.i78

.lr.ph.i.i.i.i78:                                 ; preds = %_ZNKSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i78
  %.012.i.i.i.i = phi ptr [ %i.ia, %.lr.ph.i.i.i.i78 ], [ %i.hr, %_ZNKSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.hz, %.lr.ph.i.i.i.i78 ], [ %i.fp, %_ZNKSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !alias.scope !346
  %i.hz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i79 = icmp eq ptr %i.hz, %i.fn
  br i1 %.not.i.i.i.i79, label %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit23.i, label %.lr.ph.i.i.i.i78, !llvm.loop !305

_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit23.i: ; preds = %.lr.ph.i.i.i.i78, %_ZNKSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.hr, %_ZNKSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE12_M_check_lenEmPKc.exit.i ], [ %i.ia, %.lr.ph.i.i.i.i78 ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24 ; 2 uses
  %.not.i24.i = icmp eq ptr %i.fp, null
  br i1 %.not.i24.i, label %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE17_M_realloc_insertIJRmRS_IS5_SaIS5_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit23.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.hj) #22
  br label %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE17_M_realloc_insertIJRmRS_IS5_SaIS5_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit

_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE17_M_realloc_insertIJRmRS_IS5_SaIS5_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit23.i, %bb.z
  store ptr %i.hr, ptr %9, align 8, !tbaa !347
  store ptr %i.ib, ptr %i.dq, align 8, !tbaa !314
  %i.ic = getelementptr inbounds nuw [24 x i8], ptr %i.hr, i64 %i.hp ; 2 uses
  store ptr %i.ic, ptr %i.ee, align 8, !tbaa !348
  br label %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE12emplace_backIJRmRS_IS5_SaIS5_EEEEERS7_DpOT_.exit

_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE12emplace_backIJRmRS_IS5_SaIS5_EEEEERS7_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE17_M_realloc_insertIJRmRS_IS5_SaIS5_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit, %bb.w, %bb.n
  %i.id = phi ptr [ %i.fn, %bb.n ], [ %i.fn, %bb.w ], [ %i.ic, %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE17_M_realloc_insertIJRmRS_IS5_SaIS5_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit ]
  %i.ie = phi ptr [ %i.fo, %bb.n ], [ %i.hg, %bb.w ], [ %i.ib, %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE17_M_realloc_insertIJRmRS_IS5_SaIS5_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit ] ; 2 uses
  %i.if = phi ptr [ %i.fp, %bb.n ], [ %i.fp, %bb.w ], [ %i.hr, %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE17_M_realloc_insertIJRmRS_IS5_SaIS5_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit ] ; 3 uses
  %.sroa.099.4 = phi ptr [ %.sroa.099.0145, %bb.n ], [ %.sroa.099.3, %bb.w ], [ %.sroa.099.3, %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE17_M_realloc_insertIJRmRS_IS5_SaIS5_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit ] ; 2 uses
  %.sroa.0100.4 = phi ptr [ %.sroa.0100.0146, %bb.n ], [ %.sroa.0100.3, %bb.w ], [ %.sroa.0100.3, %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE17_M_realloc_insertIJRmRS_IS5_SaIS5_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit ] ; 3 uses
  %.3 = phi i64 [ %.061147, %bb.n ], [ %.2, %bb.w ], [ %.2, %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EE17_M_realloc_insertIJRmRS_IS5_SaIS5_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit ] ; 2 uses
  %i.ig = add i64 %.0124142, 1                    ; 2 uses
  %.not130 = icmp ugt i64 %i.ig, %i.bu
  br i1 %.not130, label %bb.m, label %bb.n, !llvm.loop !306

._crit_edge153:                                   ; preds = %.lr.ph152, %bb.m
  %.sroa.099.5.lcssa = phi ptr [ %.sroa.099.4, %bb.m ], [ %i.ip, %.lr.ph152 ]
  %.sroa.0100.5.lcssa = phi ptr [ %.sroa.0100.4, %bb.m ], [ %spec.select128, %.lr.ph152 ] ; 2 uses
  %i.ih = load ptr, ptr %5, align 8, !tbaa !36
  call void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ih) #20
  %.not131.not = icmp ne ptr %.sroa.0100.5.lcssa, null
  %or.cond.not = select i1 %3, i1 %.not131.not, i1 false
  br i1 %or.cond.not, label %bb.aa, label %.critedge

.lr.ph152:                                        ; preds = %.lr.ph152.preheader, %.lr.ph152
  %indvars.iv = phi i64 [ 0, %.lr.ph152.preheader ], [ %indvars.iv.next, %.lr.ph152 ] ; 3 uses
  %.4150 = phi i64 [ %.3, %.lr.ph152.preheader ], [ %i.il, %.lr.ph152 ]
  %.sroa.0100.5148 = phi ptr [ %.sroa.0100.4, %.lr.ph152.preheader ], [ %spec.select128, %.lr.ph152 ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [24 x i8], ptr %i.if, i64 %indvars.iv
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !122
  %i.ik = add i64 %i.ij, %.0.i
  %i.il = mul i64 %i.ik, %.0.i2.i                 ; 2 uses
  %i.im = call ptr @_ZN4mlir7Builder19getShiftedAffineMapENS_9AffineMapEl(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr %i.dg, i64 noundef %.4150) #20
  %i.in = call ptr @_ZN4mlir7Builder19getShiftedAffineMapENS_9AffineMapEl(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr %i.dg, i64 noundef %i.il) #20
  %.sroa.06.0.copyload = load ptr, ptr %5, align 8
  %i.io = trunc nuw i64 %indvars.iv to i32
  %i.ip = call fastcc ptr @_ZL19generateShiftedLoopN4mlir9AffineMapES0_RKSt6vectorISt4pairImN4llvm8ArrayRefIPNS_9OperationEEEESaIS8_EEjNS_6affine11AffineForOpENS_9OpBuilderE(ptr %i.im, ptr %i.in, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef %i.io, ptr %.sroa.06.0.copyload, ptr noundef nonnull byval(%"class.mlir::OpBuilder") align 8 %10) ; 2 uses
  %.not132 = icmp eq ptr %.sroa.0100.5148, null
  %spec.select128 = select i1 %.not132, ptr %i.ip, ptr %.sroa.0100.5148 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge153, label %.lr.ph152, !llvm.loop !307

bb.aa:                                            ; preds = %._crit_edge153
  %i.iq = call i8 @_ZN4mlir6affine14loopUnrollFullENS0_11AffineForOpE(ptr nonnull %.sroa.0100.5.lcssa) ; 0 uses
  %i.ir = icmp eq ptr %.sroa.099.5.lcssa, null
  br i1 %i.ir, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.is = call i8 @_ZN4mlir6affine14loopUnrollFullENS0_11AffineForOpE(ptr null) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge153, %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.it = load ptr, ptr %9, align 8, !tbaa !347   ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %.critedge
  %i.iu = load ptr, ptr %i.ee, align 8, !tbaa !348
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = ptrtoint ptr %i.it to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef %i.ix) #22
  br label %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EED2Ev.exit: ; preds = %.critedge, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %.lr.ph.i.i.i75

.lr.ph.i.i.i75:                                   ; preds = %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIPN4mlir9OperationESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.je, %_ZSt8_DestroyISt6vectorIPN4mlir9OperationESaIS3_EEEvPT_.exit.i.i.i ], [ %i.cf, %_ZNSt6vectorISt4pairImN4llvm8ArrayRefIPN4mlir9OperationEEEESaIS7_EED2Ev.exit ] ; 3 uses
  %i.iy = load ptr, ptr %.05.i.i.i, align 8, !tbaa !312 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN4mlir9OperationESaIS3_EEEvPT_.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i75
  %i.iz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !311
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = ptrtoint ptr %i.iy to i64
  %i.jd = sub i64 %i.jb, %i.jc
  call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef %i.jd) #22
  br label %_ZSt8_DestroyISt6vectorIPN4mlir9OperationESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIPN4mlir9OperationESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i75
  %i.je = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.je, %scevgep.i.i.i.i.i
  br i1 %.not.i.i.i76, label %_ZNSt6vectorIS_IPN4mlir9OperationESaIS2_EESaIS4_EED2Ev.exit, label %.lr.ph.i.i.i75, !llvm.loop !308

_ZNSt6vectorIS_IPN4mlir9OperationESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyISt6vectorIPN4mlir9OperationESaIS3_EEEvPT_.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ce) #22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %_ZNSt6vectorIS_IPN4mlir9OperationESaIS2_EESaIS4_EED2Ev.exit
  %i.jf = load i8, ptr %i.y, align 8, !tbaa !27, !range !28, !noundef !29
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %bb.af, label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit

bb.af:                                            ; preds = %bb.ae
  store i8 0, ptr %i.y, align 8, !tbaa !27
  %i.jh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !31
  %i.jj = icmp ugt i32 %i.ji, 64
  br i1 %i.jj, label %bb.ag, label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit

bb.ag:                                            ; preds = %bb.af
  %i.jk = load ptr, ptr %6, align 8, !tbaa !32    ; 2 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.jk) #22
  br label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit: ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i, %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit
  ret i8 1
}

declare void @_ZN4mlir7OpState11emitWarningERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZL19generateShiftedLoopN4mlir9AffineMapES0_RKSt6vectorISt4pairImN4llvm8ArrayRefIPNS_9OperationEEEESaIS8_EEjNS_6affine11AffineForOpENS_9OpBuilderE(ptr %0, ptr %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3, ptr %4, ptr noundef byval(%"class.mlir::OpBuilder") align 8 %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %7 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %10 = alloca %"class.mlir::affine::AffineForOp", align 8 ; 9 uses
  %11 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %12 = alloca %"class.mlir::ValueRange", align 8 ; 2 uses
  %13 = alloca %"class.mlir::ValueRange", align 8 ; 2 uses
  %14 = alloca %"class.llvm::function_ref.503", align 8 ; 2 uses
  %15 = alloca %"class.mlir::BlockArgument", align 8 ; 5 uses
  %16 = alloca %"class.mlir::IRMapping", align 8  ; 12 uses
  %17 = alloca %"class.mlir::OpBuilder", align 8  ; 9 uses
  store ptr %4, ptr %10, align 8
  %i.a = call i64 @_ZN4mlir6affine11AffineForOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0) #20 ; 3 uses
  %i.b = load ptr, ptr %10, align 8, !tbaa !36    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6affine11AffineForOp21getLowerBoundOperandsEv.exit, label %bb.b, !prof !81

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !84
  br label %_ZN4mlir6affine11AffineForOp21getLowerBoundOperandsEv.exit

_ZN4mlir6affine11AffineForOp21getLowerBoundOperandsEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.h = and i64 %i.a, 4294967295                 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.a, 32
  %i.i = add i64 %.sroa.5.0.extract.shift.i.i, %i.a
  %i.j = and i64 %i.i, 4294967295
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.h
  %i.l = sub nsw i64 %i.j, %i.h
  %i.m = call i64 @_ZN4mlir6affine11AffineForOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1) #20 ; 3 uses
  %i.n = load ptr, ptr %10, align 8, !tbaa !36    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 8388608
  %.not.i.i.i.i.i36 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i36, label %_ZN4mlir6affine11AffineForOp21getUpperBoundOperandsEv.exit, label %bb.c, !prof !81

bb.c:                                             ; preds = %_ZN4mlir6affine11AffineForOp21getLowerBoundOperandsEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84
  br label %_ZN4mlir6affine11AffineForOp21getUpperBoundOperandsEv.exit

_ZN4mlir6affine11AffineForOp21getUpperBoundOperandsEv.exit: ; preds = %_ZN4mlir6affine11AffineForOp21getLowerBoundOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i.i.i37 = phi ptr [ %i.s, %bb.c ], [ null, %_ZN4mlir6affine11AffineForOp21getLowerBoundOperandsEv.exit ]
  %i.t = and i64 %i.m, 4294967295                 ; 2 uses
  %.sroa.5.0.extract.shift.i.i38 = lshr i64 %i.m, 32
  %i.u = add i64 %.sroa.5.0.extract.shift.i.i38, %i.m
  %i.v = and i64 %i.u, 4294967295
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i37, i64 %i.t
  %i.x = sub nsw i64 %i.v, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.y, align 8
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr %i.k, i64 %i.l) #20
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr %i.w, i64 %i.x) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @_ZN4mlir6affine11AffineForOp7getStepEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !31  ; 3 uses
  %i.ab = icmp ult i32 %i.aa, 65
  br i1 %i.ab, label %_ZNK4llvm5APInt12getSExtValueEv.exit.i, label %bb.d

_ZNK4llvm5APInt12getSExtValueEv.exit.i:           ; preds = %_ZN4mlir6affine11AffineForOp21getUpperBoundOperandsEv.exit
  %i.ac = load i64, ptr %9, align 8, !tbaa !32
  %i.ad = icmp eq i32 %i.aa, 0
  %i.ae = sub nuw nsw i32 64, %i.aa
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = shl i64 %i.ac, %i.af
  %i.ah = ashr exact i64 %i.ag, %i.af
  %.0.i.i.i = select i1 %i.ad, i64 0, i64 %i.ah
  br label %_ZN4mlir6affine11AffineForOp12getStepAsIntEv.exit

bb.d:                                             ; preds = %_ZN4mlir6affine11AffineForOp21getUpperBoundOperandsEv.exit
  %i.ai = load ptr, ptr %9, align 8, !tbaa !32    ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !89
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #22
  br label %_ZN4mlir6affine11AffineForOp12getStepAsIntEv.exit

_ZN4mlir6affine11AffineForOp12getStepAsIntEv.exit: ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit.i, %bb.d
  %.0.i2.i = phi i64 [ %.0.i.i.i, %_ZNK4llvm5APInt12getSExtValueEv.exit.i ], [ %i.aj, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr null, i64 0) #20
end_hunk_0
