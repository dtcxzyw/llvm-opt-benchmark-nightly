Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dec_patch_dictionary?download=true
inline.NumInlined: 1467
inline.NumDeleted: 847
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3jxl15PatchDictionary16ComputePatchTreeEv:bb.a
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !318 ; 2 uses
  %i.cp = icmp ult ptr %i.cm, %i.co
  br i1 %i.cp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge197
  %.sroa.4172.0..sroa_idx173 = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store i64 0, ptr %.sroa.4172.0..sroa_idx173, align 8, !tbaa !84
  %.sroa.5175.0..sroa_idx176 = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store i64 %i.aw, ptr %.sroa.5175.0..sroa_idx176, align 8, !tbaa !84
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  br label %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit

bb.i:                                             ; preds = %._crit_edge197
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.cs = ptrtoint ptr %i.cm to i64
  %i.ct = ptrtoint ptr %i.cr to i64               ; 2 uses
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = sdiv exact i64 %i.cu, 40
  %i.cw = add nsw i64 %i.cv, 1                    ; 2 uses
  %i.cx = icmp ugt i64 %i.cw, 461168601842738790
  br i1 %i.cx, label %bb.j, label %_ZNKSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZNKSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #22
  unreachable

_ZNKSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i: ; preds = %bb.i
  %i.cy = ptrtoint ptr %i.co to i64
  %i.cz = sub i64 %i.cy, %i.ct
  %i.da = sdiv exact i64 %i.cz, 40                ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.da, 230584300921369395
  %i.db = shl nuw nsw i64 %i.da, 1
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.db, i64 %i.cw)
  %.0.i.i.i = select i1 %.not.i.i.i, i64 %.sroa.speculated.i.i.i, i64 461168601842738790 ; 4 uses
  %i.dc = icmp ne i64 %.0.i.i.i, 0
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = icmp ugt i64 %.0.i.i.i, 461168601842738790
  br i1 %i.dd, label %bb.k, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15PatchDictionary13PatchTreeNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i

bb.k:                                             ; preds = %_ZNKSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #22
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15PatchDictionary13PatchTreeNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i
  %i.de = mul nuw i64 %.0.i.i.i, 40
  %i.df = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #23 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cu ; 5 uses
  %i.dh = getelementptr inbounds nuw [40 x i8], ptr %i.df, i64 %.0.i.i.i
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store i64 0, ptr %.sroa.4172.0..sroa_idx, align 8, !tbaa !84
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store i64 %i.aw, ptr %.sroa.5175.0..sroa_idx, align 8, !tbaa !84
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 40 ; 3 uses
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !315
  %.promoted.fr.i.i.i.i.i.i = freeze ptr %i.dj    ; 2 uses
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !95  ; 5 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %.promoted.fr.i.i.i.i.i.i, %i.dk
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15PatchDictionary13PatchTreeNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.dl = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.dg, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15PatchDictionary13PatchTreeNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.promoted.fr.i.i.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15PatchDictionary13PatchTreeNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i ]
  %i.dm = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -40 ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dl, i64 -40 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dn, ptr noundef nonnull align 8 dereferenceable(40) %i.dm, i64 40, i1 false), !tbaa.struct !94, !noalias !319
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dm, %i.dk
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !290

_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15PatchDictionary13PatchTreeNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i
  %.sroa.436.0.i.i.i.i.i.i.i.i = phi ptr [ %i.dg, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15PatchDictionary13PatchTreeNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i ], [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !318
  store ptr %i.di, ptr %i.b, align 8, !tbaa !318
  %i.do = load ptr, ptr %i.cn, align 8, !tbaa !318
  store ptr %i.dh, ptr %i.cn, align 8, !tbaa !318
  %.not.i4.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i4.i.i, label %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit.i.i
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dk to i64
  %i.dr = sub i64 %i.dp, %i.dq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dr) #24
  br label %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit

_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit: ; preds = %bb.h, %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit.i.i, %bb.l
  %.0.i = phi ptr [ %i.cq, %bb.h ], [ %i.di, %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit.i.i ], [ %i.di, %bb.l ] ; 2 uses
  store ptr %.0.i, ptr %i.b, align 8, !tbaa !315
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !95  ; 2 uses
  %.not217 = icmp eq ptr %.0.i, %i.ds
  br i1 %.not217, label %._crit_edge215, label %.lr.ph214

.lr.ph214:                                        ; preds = %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  br label %bb.m

.lr.ph196:                                        ; preds = %.lr.ph196.preheader, %._crit_edge193
  %.sroa.0179.0195 = phi ptr [ %i.ef, %._crit_edge193 ], [ %i.w, %.lr.ph196.preheader ] ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0179.0195, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !84 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0179.0195, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !84 ; 3 uses
  %i.dv = icmp ult i64 %.sroa.3.0.copyload, %.sroa.4.0.copyload
  br i1 %i.dv, label %.lr.ph192, label %._crit_edge193

.lr.ph192:                                        ; preds = %.lr.ph196
  %i.dw = load ptr, ptr %i.d, align 8, !tbaa !96  ; 2 uses
  %i.dx = sub nuw i64 %.sroa.4.0.copyload, %.sroa.3.0.copyload ; 3 uses
  %min.iters.check = icmp ult i64 %i.dx, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph192
  %n.vec = and i64 %i.dx, -4                      ; 3 uses
  %i.dy = add i64 %.sroa.3.0.copyload, %n.vec
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.sroa.3.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ea, align 8, !tbaa !84
  %wide.load317 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !84
  %i.ec = add <2 x i64> %wide.load, splat (i64 1)
  %i.ed = add <2 x i64> %wide.load317, splat (i64 1)
  store <2 x i64> %i.ec, ptr %i.ea, align 8, !tbaa !84
  store <2 x i64> %i.ed, ptr %i.eb, align 8, !tbaa !84
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !291

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dx, %n.vec
  br i1 %cmp.n, label %._crit_edge193, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph192, %middle.block
  %.077190.ph = phi i64 [ %.sroa.3.0.copyload, %.lr.ph192 ], [ %i.dy, %middle.block ]
  br label %scalar.ph

._crit_edge193:                                   ; preds = %scalar.ph, %middle.block, %.lr.ph196
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0179.0195, i64 24 ; 2 uses
  %.not.a = icmp eq ptr %i.ef, %scevgep.i.i
  br i1 %.not.a, label %._crit_edge197, label %.lr.ph196

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.077190 = phi i64 [ %i.ej, %scalar.ph ], [ %.077190.ph, %scalar.ph.preheader ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.077190 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !84
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !84
  %i.ej = add nuw i64 %.077190, 1                 ; 2 uses
  %exitcond224.not = icmp eq i64 %i.ej, %.sroa.4.0.copyload
  br i1 %exitcond224.not, label %._crit_edge193, label %scalar.ph, !llvm.loop !292

bb.m:                                             ; preds = %.lr.ph214, %bb.am
  %i.ek = phi ptr [ %i.ds, %.lr.ph214 ], [ %i.ly, %bb.am ]
  %.076213 = phi i64 [ 0, %.lr.ph214 ], [ %i.ma, %bb.am ] ; 4 uses
  %i.el = getelementptr inbounds nuw [40 x i8], ptr %i.ek, i64 %.076213 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !103 ; 10 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 32 ; 3 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !104 ; 3 uses
  %i.eq = add i64 %i.ep, %i.en                    ; 5 uses
  %.idx1.i = mul nuw nsw i64 %i.en, 24            ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx1.i ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.eq, 24
  %i.es = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i
  %gepdiff.i = mul i64 %i.ep, 24
  %i.et = sdiv exact i64 %gepdiff.i, 24
  %i.eu = icmp eq i64 %i.ep, 0
  %i.ev = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.et, i1 true)
  %i.ew = shl nuw nsw i64 %i.ev, 1
  %i.ex = xor i64 %i.ew, 126
  %i.ey = select i1 %i.eu, i64 0, i64 %i.ex
  tail call fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZN3jxl15PatchDictionary16ComputePatchTreeEvENK3$_0clEmmEUlRKNS2_12_GLOBAL__N_113PatchIntervalES8_E_PS6_Lb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb"(ptr noundef nonnull %i.er, ptr noundef nonnull %i.es, i64 noundef %i.ey, i1 noundef zeroext true) #21
  %i.ez = load i64, ptr %i.eo, align 8, !tbaa !104
  %i.fa = lshr i64 %i.ez, 1
  %i.fb = add i64 %i.fa, %i.en                    ; 4 uses
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !100 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !105
  %i.fg = icmp ult i64 %i.fb, %i.eq
  br i1 %i.fg, label %.lr.ph200, label %.critedge

.lr.ph200:                                        ; preds = %bb.m, %bb.n
  %.075198 = phi i64 [ %i.fk, %bb.n ], [ %i.fb, %bb.m ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.075198
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !100
  %.not304.not = icmp ne i64 %i.fj, %i.fe         ; 3 uses
  br i1 %.not304.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.lr.ph200
  %i.fk = add i64 %.075198, 1                     ; 2 uses
  %exitcond227.not = icmp eq i64 %i.fk, %i.eq
  br i1 %exitcond227.not, label %.critedge, label %.lr.ph200, !llvm.loop !293

.critedge:                                        ; preds = %.lr.ph200, %bb.n, %bb.m
  %.075.lcssa = phi i64 [ %i.fb, %bb.m ], [ %i.eq, %bb.n ], [ %.075198, %.lr.ph200 ] ; 13 uses
  %.lcssa = phi i1 [ false, %bb.m ], [ %.not304.not, %bb.n ], [ %.not304.not, %.lr.ph200 ]
  %.idx.i105 = mul nuw nsw i64 %.075.lcssa, 24    ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i105 ; 2 uses
  %gepdiff.i106 = sub nsw i64 %.idx.i105, %.idx1.i
  %i.fm = sdiv exact i64 %gepdiff.i106, 24
  %i.fn = icmp eq i64 %.075.lcssa, %i.en
  %i.fo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fm, i1 true)
  %i.fp = shl nuw nsw i64 %i.fo, 1
  %i.fq = xor i64 %i.fp, 126
  %i.fr = select i1 %i.fn, i64 0, i64 %i.fq
  tail call fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZN3jxl15PatchDictionary16ComputePatchTreeEvENK3$_1clEmmEUlRKNS2_12_GLOBAL__N_113PatchIntervalES8_E_PS6_Lb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb"(ptr noundef nonnull %i.er, ptr noundef nonnull %i.fl, i64 noundef %i.fr, i1 noundef zeroext true) #21
  %umin = tail call i64 @llvm.umin.i64(i64 %.075.lcssa, i64 %i.en) ; 2 uses
  %i.fs = icmp ugt i64 %.075.lcssa, %i.en
  br i1 %i.fs, label %.lr.ph312.preheader, label %.critedge2

.lr.ph312.preheader:                              ; preds = %.critedge
  %i.ft = load i64, ptr %i.ff, align 8, !tbaa !105
  br label %.lr.ph312

bb.o:                                             ; preds = %.lr.ph312
  %i.fu = icmp ugt i64 %i.fv, %i.en
  br i1 %i.fu, label %.lr.ph312, label %.critedge2, !llvm.loop !294

.lr.ph312:                                        ; preds = %.lr.ph312.preheader, %bb.o
  %.074311 = phi i64 [ %i.fv, %bb.o ], [ %.075.lcssa, %.lr.ph312.preheader ] ; 2 uses
  %i.fv = add i64 %.074311, -1                    ; 3 uses
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !101
  %i.fz = icmp ugt i64 %i.fy, %i.ft
  br i1 %i.fz, label %bb.o, label %..critedge2_crit_edge314, !llvm.loop !294

..critedge2_crit_edge314:                         ; preds = %.lr.ph312
  br label %.critedge2, !llvm.loop !294

.critedge2:                                       ; preds = %bb.o, %..critedge2_crit_edge314, %.critedge
  %.lcssa305 = phi i1 [ false, %.critedge ], [ true, %..critedge2_crit_edge314 ], [ false, %bb.o ]
  %.074.lcssa = phi i64 [ %umin, %.critedge ], [ %.074311, %..critedge2_crit_edge314 ], [ %umin, %bb.o ] ; 8 uses
  %i.ga = sub i64 %.075.lcssa, %.074.lcssa
  store i64 %i.ga, ptr %i.eo, align 8, !tbaa !104
  %i.gb = load ptr, ptr %i.h, align 8, !tbaa !316
  %i.gc = load ptr, ptr %i.g, align 8, !tbaa !98
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = ashr exact i64 %i.gf, 4
  store i64 %i.gg, ptr %i.em, align 8, !tbaa !103
  %.073206 = add nsw i64 %.075.lcssa, -1          ; 2 uses
  %.not207 = icmp slt i64 %.073206, %.074.lcssa
  br i1 %.not207, label %._crit_edge208, label %.lr.ph207.preheader

.lr.ph207.preheader:                              ; preds = %.critedge2
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !316
  br label %.lr.ph207

._crit_edge208:                                   ; preds = %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRmS7_EEERS2_DpOT_.exit, %.critedge2
  %.idx1.i107 = mul nuw nsw i64 %.074.lcssa, 24   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx1.i107
  %gepdiff.i109 = sub nsw i64 %.idx.i105, %.idx1.i107
  %i.gi = sdiv exact i64 %gepdiff.i109, 24
  %i.gj = icmp eq i64 %.075.lcssa, %.074.lcssa
  %i.gk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gi, i1 true)
  %i.gl = shl nuw nsw i64 %i.gk, 1
  %i.gm = xor i64 %i.gl, 126
  %i.gn = select i1 %i.gj, i64 0, i64 %i.gm
  tail call fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZN3jxl15PatchDictionary16ComputePatchTreeEvENK3$_0clEmmEUlRKNS2_12_GLOBAL__N_113PatchIntervalES8_E_PS6_Lb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb"(ptr noundef nonnull %i.gh, ptr noundef nonnull %i.fl, i64 noundef %i.gn, i1 noundef zeroext true) #21
  %i.go = icmp ult i64 %.074.lcssa, %.075.lcssa
  br i1 %i.go, label %.lr.ph211.preheader, label %._crit_edge212

.lr.ph211.preheader:                              ; preds = %._crit_edge208
  %.pre243 = load ptr, ptr %i.h, align 8, !tbaa !316
  br label %.lr.ph211

.lr.ph207:                                        ; preds = %.lr.ph207.preheader, %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRmS7_EEERS2_DpOT_.exit
  %i.gp = phi ptr [ %.0.i113, %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRmS7_EEERS2_DpOT_.exit ], [ %.pre, %.lr.ph207.preheader ] ; 5 uses
  %.073.in206 = phi i64 [ %.073, %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRmS7_EEERS2_DpOT_.exit ], [ %.073206, %.lr.ph207.preheader ] ; 2 uses
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.073.in206 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %i.gs = load ptr, ptr %i.dt, align 8, !tbaa !322 ; 2 uses
  %i.gt = icmp ult ptr %i.gp, %i.gs
  br i1 %i.gt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph207
  %i.gu = load i64, ptr %i.gr, align 8, !tbaa !84
  store i64 %i.gu, ptr %i.gp, align 8, !tbaa !107
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gw = load i64, ptr %i.gq, align 8, !tbaa !84
  store i64 %i.gw, ptr %i.gv, align 8, !tbaa !323
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  br label %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRmS7_EEERS2_DpOT_.exit

bb.q:                                             ; preds = %.lr.ph207
  %i.gy = load ptr, ptr %i.j, align 8, !tbaa !98
  %i.gz = ptrtoint ptr %i.gp to i64
  %i.ha = ptrtoint ptr %i.gy to i64               ; 2 uses
  %i.hb = sub i64 %i.gz, %i.ha                    ; 2 uses
  %i.hc = ashr exact i64 %i.hb, 4
  %i.hd = add nsw i64 %i.hc, 1                    ; 2 uses
  %i.he = icmp ugt i64 %i.hd, 1152921504606846975
  br i1 %i.he, label %bb.r, label %_ZNKSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZNKSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #22
  unreachable

_ZNKSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i: ; preds = %bb.q
  %i.hf = ptrtoint ptr %i.gs to i64
  %i.hg = sub i64 %i.hf, %i.ha                    ; 2 uses
  %.not.i.i.i110 = icmp ult i64 %i.hg, 9223372036854775792
  %i.hh = ashr exact i64 %i.hg, 3
  %.sroa.speculated.i.i.i111 = tail call i64 @llvm.umax.i64(i64 %i.hh, i64 %i.hd)
  %.0.i.i.i112 = select i1 %.not.i.i.i110, i64 %.sroa.speculated.i.i.i111, i64 1152921504606846975 ; 4 uses
  %i.hi = icmp ne i64 %.0.i.i.i112, 0
  tail call void @llvm.assume(i1 %i.hi)
  %i.hj = icmp ugt i64 %.0.i.i.i112, 1152921504606846975
  br i1 %i.hj, label %bb.s, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairImmEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i

bb.s:                                             ; preds = %_ZNKSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #22
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairImmEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i
  %i.hk = shl nuw i64 %.0.i.i.i112, 4
  %i.hl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hk) #23 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hb ; 5 uses
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.hl, i64 %.0.i.i.i112
  %i.ho = load i64, ptr %i.gr, align 8, !tbaa !84
  store i64 %i.ho, ptr %i.hm, align 8, !tbaa !107
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hq = load i64, ptr %i.gq, align 8, !tbaa !84
  store i64 %i.hq, ptr %i.hp, align 8, !tbaa !323
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 3 uses
  %i.hs = load ptr, ptr %i.k, align 8, !tbaa !316 ; 2 uses
  %i.ht = load ptr, ptr %i.j, align 8, !tbaa !98  ; 5 uses
  %.not13.i.i.i.i = icmp eq ptr %i.hs, %i.ht
  br i1 %.not13.i.i.i.i, label %_ZNSt3__114__split_bufferINS_4pairImmEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairImmEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i, %.lr.ph.i.i.i.i
  %i.hu = phi ptr [ %i.hv, %.lr.ph.i.i.i.i ], [ %i.hm, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairImmEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i ]
  %.sroa.18.014.i.i.i.i = phi ptr [ %i.hw, %.lr.ph.i.i.i.i ], [ %i.hs, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairImmEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i ]
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 -16 ; 3 uses
  %i.hw = getelementptr inbounds i8, ptr %.sroa.18.014.i.i.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, ptr noundef nonnull align 8 dereferenceable(16) %i.hw, i64 16, i1 false), !tbaa.struct !324
  %.not.i.i.i.i = icmp eq ptr %i.hw, %i.ht
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferINS_4pairImmEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !295

_ZNSt3__114__split_bufferINS_4pairImmEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairImmEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i
  %storemerge.i.i = phi ptr [ %i.hm, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairImmEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i ], [ %i.hv, %.lr.ph.i.i.i.i ]
  store ptr %storemerge.i.i, ptr %i.j, align 8, !tbaa !322
  store ptr %i.hr, ptr %i.k, align 8, !tbaa !322
  %i.hx = load ptr, ptr %i.dt, align 8, !tbaa !322
  store ptr %i.hn, ptr %i.dt, align 8, !tbaa !322
  %.not.i5.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i5.i.i, label %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRmS7_EEERS2_DpOT_.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt3__114__split_bufferINS_4pairImmEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = ptrtoint ptr %i.ht to i64
  %i.ia = sub i64 %i.hy, %i.hz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.ia) #24
  br label %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRmS7_EEERS2_DpOT_.exit

_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRmS7_EEERS2_DpOT_.exit: ; preds = %bb.p, %_ZNSt3__114__split_bufferINS_4pairImmEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i, %bb.t
  %.0.i113 = phi ptr [ %i.gx, %bb.p ], [ %i.hr, %_ZNSt3__114__split_bufferINS_4pairImmEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i ], [ %i.hr, %bb.t ] ; 2 uses
  store ptr %.0.i113, ptr %i.k, align 8, !tbaa !316
  %.073 = add nsw i64 %.073.in206, -1             ; 2 uses
  %.not = icmp slt i64 %.073, %.074.lcssa
  br i1 %.not, label %._crit_edge208, label %.lr.ph207, !llvm.loop !296

._crit_edge212:                                   ; preds = %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRmS7_EEERS2_DpOT_.exit127, %._crit_edge208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, i8 -1, i64 16, i1 false)
  %.pre244.pre = load ptr, ptr %i.b, align 8, !tbaa !315 ; 6 uses
  %.pre246.pre248 = load ptr, ptr %i.a, align 8, !tbaa !95 ; 4 uses
  br i1 %.lcssa305, label %bb.z, label %bb.af

.lr.ph211:                                        ; preds = %.lr.ph211.preheader, %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRmS7_EEERS2_DpOT_.exit127
  %i.ib = phi ptr [ %.0.i126, %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRmS7_EEERS2_DpOT_.exit127 ], [ %.pre243, %.lr.ph211.preheader ] ; 5 uses
  %.0209 = phi i64 [ %i.jm, %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRmS7_EEERS2_DpOT_.exit127 ], [ %.074.lcssa, %.lr.ph211.preheader ] ; 2 uses
  %i.ic = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.0209 ; 3 uses
  %i.id = load ptr, ptr %i.du, align 8, !tbaa !322 ; 2 uses
  %i.ie = icmp ult ptr %i.ib, %i.id
  br i1 %i.ie, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph211
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !84
  store i64 %i.ig, ptr %i.ib, align 8, !tbaa !107
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.ii = load i64, ptr %i.ic, align 8, !tbaa !84
  store i64 %i.ii, ptr %i.ih, align 8, !tbaa !323
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  br label %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRmS7_EEERS2_DpOT_.exit127

bb.v:                                             ; preds = %.lr.ph211
  %i.ik = load ptr, ptr %i.g, align 8, !tbaa !98
  %i.il = ptrtoint ptr %i.ib to i64
  %i.im = ptrtoint ptr %i.ik to i64               ; 2 uses
  %i.in = sub i64 %i.il, %i.im                    ; 2 uses
  %i.io = ashr exact i64 %i.in, 4
  %i.ip = add nsw i64 %i.io, 1                    ; 2 uses
  %i.iq = icmp ugt i64 %i.ip, 1152921504606846975
  br i1 %i.iq, label %bb.w, label %_ZNKSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i114

bb.w:                                             ; preds = %bb.v
  tail call void @_ZNKSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.g) #22
  unreachable

_ZNKSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i114: ; preds = %bb.v
  %i.ir = ptrtoint ptr %i.id to i64
  %i.is = sub i64 %i.ir, %i.im                    ; 2 uses
  %.not.i.i.i115 = icmp ult i64 %i.is, 9223372036854775792
  %i.it = ashr exact i64 %i.is, 3
  %.sroa.speculated.i.i.i116 = tail call i64 @llvm.umax.i64(i64 %i.it, i64 %i.ip)
  %.0.i.i.i117 = select i1 %.not.i.i.i115, i64 %.sroa.speculated.i.i.i116, i64 1152921504606846975 ; 4 uses
  %i.iu = icmp ne i64 %.0.i.i.i117, 0
  tail call void @llvm.assume(i1 %i.iu)
  %i.iv = icmp ugt i64 %.0.i.i.i117, 1152921504606846975
  br i1 %i.iv, label %bb.x, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairImmEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i118

bb.x:                                             ; preds = %_ZNKSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i114
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #22
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairImmEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i118: ; preds = %_ZNKSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i114
  %i.iw = shl nuw i64 %.0.i.i.i117, 4
  %i.ix = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iw) #23 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.in ; 4 uses
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.ix, i64 %.0.i.i.i117
  %i.ja = load <2 x i64>, ptr %i.ic, align 8, !tbaa !84
  %i.jb = shufflevector <2 x i64> %i.ja, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.jb, ptr %i.iy, align 8, !tbaa !84
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 16 ; 3 uses
  %i.jd = load ptr, ptr %i.h, align 8, !tbaa !316 ; 2 uses
  %i.je = load ptr, ptr %i.g, align 8, !tbaa !98  ; 5 uses
  %.not13.i.i.i.i119 = icmp eq ptr %i.jd, %i.je
  br i1 %.not13.i.i.i.i119, label %_ZNSt3__114__split_bufferINS_4pairImmEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i123, label %.lr.ph.i.i.i.i120

.lr.ph.i.i.i.i120:                                ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairImmEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i118, %.lr.ph.i.i.i.i120
  %i.jf = phi ptr [ %i.jg, %.lr.ph.i.i.i.i120 ], [ %i.iy, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairImmEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i118 ]
  %.sroa.18.014.i.i.i.i121 = phi ptr [ %i.jh, %.lr.ph.i.i.i.i120 ], [ %i.jd, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairImmEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i118 ]
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -16 ; 3 uses
  %i.jh = getelementptr inbounds i8, ptr %.sroa.18.014.i.i.i.i121, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jg, ptr noundef nonnull align 8 dereferenceable(16) %i.jh, i64 16, i1 false), !tbaa.struct !324
  %.not.i.i.i.i122 = icmp eq ptr %i.jh, %i.je
  br i1 %.not.i.i.i.i122, label %_ZNSt3__114__split_bufferINS_4pairImmEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i123, label %.lr.ph.i.i.i.i120, !llvm.loop !295

_ZNSt3__114__split_bufferINS_4pairImmEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i123: ; preds = %.lr.ph.i.i.i.i120, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairImmEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i118
  %storemerge.i.i124 = phi ptr [ %i.iy, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairImmEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i118 ], [ %i.jg, %.lr.ph.i.i.i.i120 ]
  store ptr %storemerge.i.i124, ptr %i.g, align 8, !tbaa !322
  store ptr %i.jc, ptr %i.h, align 8, !tbaa !322
  %i.ji = load ptr, ptr %i.du, align 8, !tbaa !322
  store ptr %i.iz, ptr %i.du, align 8, !tbaa !322
  %.not.i5.i.i125 = icmp eq ptr %i.je, null
  br i1 %.not.i5.i.i125, label %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRmS7_EEERS2_DpOT_.exit127, label %bb.y

bb.y:                                             ; preds = %_ZNSt3__114__split_bufferINS_4pairImmEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i123
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = ptrtoint ptr %i.je to i64
  %i.jl = sub i64 %i.jj, %i.jk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.je, i64 noundef %i.jl) #24
  br label %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRmS7_EEERS2_DpOT_.exit127

_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRmS7_EEERS2_DpOT_.exit127: ; preds = %bb.u, %_ZNSt3__114__split_bufferINS_4pairImmEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i123, %bb.y
  %.0.i126 = phi ptr [ %i.ij, %bb.u ], [ %i.jc, %_ZNSt3__114__split_bufferINS_4pairImmEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i123 ], [ %i.jc, %bb.y ] ; 2 uses
  store ptr %.0.i126, ptr %i.h, align 8, !tbaa !316
  %i.jm = add i64 %.0209, 1                       ; 2 uses
  %exitcond234.not = icmp eq i64 %i.jm, %.075.lcssa
  br i1 %exitcond234.not, label %._crit_edge212, label %.lr.ph211, !llvm.loop !297

bb.z:                                             ; preds = %._crit_edge212
  %i.jn = sub nuw i64 %.074.lcssa, %i.en          ; 2 uses
  %i.jo = ptrtoint ptr %.pre244.pre to i64
  %i.jp = ptrtoint ptr %.pre246.pre248 to i64     ; 2 uses
  %i.jq = sub i64 %i.jo, %i.jp                    ; 2 uses
  %i.jr = sdiv exact i64 %i.jq, 40                ; 2 uses
  %i.js = getelementptr inbounds nuw [40 x i8], ptr %.pre246.pre248, i64 %.076213
  store i64 %i.jr, ptr %i.js, align 8, !tbaa !325
  %i.jt = load ptr, ptr %i.cn, align 8, !tbaa !318 ; 2 uses
  %i.ju = icmp ult ptr %.pre244.pre, %i.jt
  br i1 %i.ju, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.sroa.4165.0..sroa_idx166 = getelementptr inbounds nuw i8, ptr %.pre244.pre, i64 24
  store i64 %i.en, ptr %.sroa.4165.0..sroa_idx166, align 8, !tbaa !84
  %.sroa.5168.0..sroa_idx169 = getelementptr inbounds nuw i8, ptr %.pre244.pre, i64 32
  store i64 %i.jn, ptr %.sroa.5168.0..sroa_idx169, align 8, !tbaa !84
  %i.jv = getelementptr inbounds nuw i8, ptr %.pre244.pre, i64 40
  br label %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit142

bb.ab:                                            ; preds = %bb.z
  %i.jw = add nsw i64 %i.jr, 1                    ; 2 uses
  %i.jx = icmp ugt i64 %i.jw, 461168601842738790
  br i1 %i.jx, label %bb.ac, label %_ZNKSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i128

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZNKSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #22
  unreachable

_ZNKSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i128: ; preds = %bb.ab
  %i.jy = ptrtoint ptr %i.jt to i64
  %i.jz = sub i64 %i.jy, %i.jp
  %i.ka = sdiv exact i64 %i.jz, 40                ; 2 uses
  %.not.i.i.i129 = icmp ult i64 %i.ka, 230584300921369395
  %i.kb = shl nuw nsw i64 %i.ka, 1
  %.sroa.speculated.i.i.i130 = tail call i64 @llvm.umax.i64(i64 %i.kb, i64 %i.jw)
  %.0.i.i.i131 = select i1 %.not.i.i.i129, i64 %.sroa.speculated.i.i.i130, i64 461168601842738790 ; 4 uses
  %i.kc = icmp ne i64 %.0.i.i.i131, 0
  tail call void @llvm.assume(i1 %i.kc)
  %i.kd = icmp ugt i64 %.0.i.i.i131, 461168601842738790
  br i1 %i.kd, label %bb.ad, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15PatchDictionary13PatchTreeNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i132

bb.ad:                                            ; preds = %_ZNKSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i128
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #22
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15PatchDictionary13PatchTreeNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i132: ; preds = %_ZNKSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i128
  %i.ke = mul nuw i64 %.0.i.i.i131, 40
  %i.kf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ke) #23 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.jq ; 5 uses
  %i.kh = getelementptr inbounds nuw [40 x i8], ptr %i.kf, i64 %.0.i.i.i131
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  store i64 %i.en, ptr %.sroa.4165.0..sroa_idx, align 8, !tbaa !84
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kg, i64 32
  store i64 %i.jn, ptr %.sroa.5168.0..sroa_idx, align 8, !tbaa !84
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 40 ; 3 uses
  %i.kj = load ptr, ptr %i.b, align 8, !tbaa !315
  %.promoted.fr.i.i.i.i.i.i133 = freeze ptr %i.kj ; 2 uses
  %i.kk = load ptr, ptr %i.a, align 8, !tbaa !95  ; 5 uses
  %.not4.i.i.i.i.i.i.i.i.i134 = icmp eq ptr %.promoted.fr.i.i.i.i.i.i133, %i.kk
  br i1 %.not4.i.i.i.i.i.i.i.i.i134, label %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit.i.i138, label %.lr.ph.i.i.i.i.i.i.i.i.i135

.lr.ph.i.i.i.i.i.i.i.i.i135:                      ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15PatchDictionary13PatchTreeNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i132, %.lr.ph.i.i.i.i.i.i.i.i.i135
  %i.kl = phi ptr [ %i.kn, %.lr.ph.i.i.i.i.i.i.i.i.i135 ], [ %i.kg, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15PatchDictionary13PatchTreeNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i132 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i136 = phi ptr [ %i.km, %.lr.ph.i.i.i.i.i.i.i.i.i135 ], [ %.promoted.fr.i.i.i.i.i.i133, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15PatchDictionary13PatchTreeNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i132 ]
  %i.km = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i136, i64 -40 ; 3 uses
  %i.kn = getelementptr inbounds i8, ptr %i.kl, i64 -40 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kn, ptr noundef nonnull align 8 dereferenceable(40) %i.km, i64 40, i1 false), !tbaa.struct !94, !noalias !326
  %.not.i.i.i.i.i.i.i.i.i137 = icmp eq ptr %i.km, %i.kk
  br i1 %.not.i.i.i.i.i.i.i.i.i137, label %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit.i.i138, label %.lr.ph.i.i.i.i.i.i.i.i.i135, !llvm.loop !290

_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit.i.i138: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i135, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15PatchDictionary13PatchTreeNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i132
  %.sroa.436.0.i.i.i.i.i.i.i.i139 = phi ptr [ %i.kg, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl15PatchDictionary13PatchTreeNodeEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i132 ], [ %i.kn, %.lr.ph.i.i.i.i.i.i.i.i.i135 ] ; 2 uses
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.i139, ptr %i.a, align 8, !tbaa !318
  store ptr %i.ki, ptr %i.b, align 8, !tbaa !318
  %i.ko = load ptr, ptr %i.cn, align 8, !tbaa !318
  store ptr %i.kh, ptr %i.cn, align 8, !tbaa !318
  %.not.i4.i.i140 = icmp eq ptr %i.kk, null
  br i1 %.not.i4.i.i140, label %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit142, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit.i.i138
  %i.kp = ptrtoint ptr %i.ko to i64
  %i.kq = ptrtoint ptr %i.kk to i64
  %i.kr = sub i64 %i.kp, %i.kq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef %i.kr) #24
  %.pre246.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !95
  br label %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit142

_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit142: ; preds = %bb.aa, %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit.i.i138, %bb.ae
  %.pre246.pre = phi ptr [ %.pre246.pre248, %bb.aa ], [ %.sroa.436.0.i.i.i.i.i.i.i.i139, %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit.i.i138 ], [ %.pre246.pre.pre, %bb.ae ]
  %.0.i141 = phi ptr [ %i.jv, %bb.aa ], [ %i.ki, %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit.i.i138 ], [ %i.ki, %bb.ae ] ; 2 uses
  store ptr %.0.i141, ptr %i.b, align 8, !tbaa !315
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit142, %._crit_edge212
  %.pre246.a = phi ptr [ %.pre246.pre, %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit142 ], [ %.pre246.pre248, %._crit_edge212 ] ; 4 uses
  %.pre244 = phi ptr [ %.0.i141, %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit142 ], [ %.pre244.pre, %._crit_edge212 ] ; 6 uses
  br i1 %.lcssa, label %bb.ag, label %bb.am

end_hunk_0
