Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/factory?download=true
inline.NumInlined: 16553
inline.NumDeleted: 4622
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_ZNK5osgeo4proj2io15DatabaseContext29toWGS84AutocorrectWrongValuesERdS3_S3_S3_S3_S3_S3_:bb.a
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = load double, ptr %4, align 8, !tbaa !412
  %i.c = fcmp oeq double %i.b, 0.000000e+00
  %i.d = load double, ptr %5, align 8
  %i.e = fcmp oeq double %i.d, 0.000000e+00
  %or.cond89 = select i1 %i.c, i1 %i.e, i1 false
  %i.f = load double, ptr %6, align 8
  %i.g = fcmp oeq double %i.f, 0.000000e+00
  %or.cond91 = select i1 %or.cond89, i1 %i.g, i1 false
  br i1 %or.cond91, label %bb.bj, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.h, ptr %8, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 627, ptr %i.a, align 8, !tbaa !168
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.i, ptr %8, align 8, !tbaa !164
  %i.j = load i64, ptr %i.a, align 8, !tbaa !168  ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(627) %i.i, ptr noundef nonnull align 1 dereferenceable(627) @.str.209, i64 627, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !167
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %9, ptr %i.m, align 8, !tbaa !181
  store ptr %9, ptr %9, align 8, !tbaa !182
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 30 uses
  store i64 0, ptr %i.n, align 8, !tbaa !184
  %i.o = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37
          to label %bb.b unwind label %bb.k       ; 7 uses

bb.b:                                             ; preds = %.noexc.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load double, ptr %1, align 8, !tbaa !412
  store i32 2, ptr %i.p, align 8, !tbaa !374
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !166
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 0, ptr %i.t, align 8, !tbaa !167
  store i8 0, ptr %i.s, align 8, !tbaa !165
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i32 0, ptr %i.u, align 8, !tbaa !198
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store double %i.q, ptr %i.v, align 8, !tbaa !199
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %9) #33
  %i.w = load i64, ptr %i.n, align 8, !tbaa !377
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.n, align 8, !tbaa !377
  %i.y = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37
          to label %bb.c unwind label %bb.k       ; 7 uses

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load double, ptr %2, align 8, !tbaa !412
  store i32 2, ptr %i.z, align 8, !tbaa !374
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !166
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store i64 0, ptr %i.ad, align 8, !tbaa !167
  store i8 0, ptr %i.ac, align 8, !tbaa !165
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store i32 0, ptr %i.ae, align 8, !tbaa !198
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  store double %i.aa, ptr %i.af, align 8, !tbaa !199
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %9) #33
  %i.ag = load i64, ptr %i.n, align 8, !tbaa !377
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.n, align 8, !tbaa !377
  %i.ai = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37
          to label %bb.d unwind label %bb.k       ; 7 uses

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load double, ptr %3, align 8, !tbaa !412
  store i32 2, ptr %i.aj, align 8, !tbaa !374
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !166
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i64 0, ptr %i.an, align 8, !tbaa !167
  store i8 0, ptr %i.am, align 8, !tbaa !165
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store i32 0, ptr %i.ao, align 8, !tbaa !198
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store double %i.ak, ptr %i.ap, align 8, !tbaa !199
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %9) #33
  %i.aq = load i64, ptr %i.n, align 8, !tbaa !377
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.n, align 8, !tbaa !377
  %i.as = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37
          to label %bb.e unwind label %bb.k       ; 7 uses

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load double, ptr %4, align 8, !tbaa !412
  store i32 2, ptr %i.at, align 8, !tbaa !374
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 40 ; 2 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !166
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i64 0, ptr %i.ax, align 8, !tbaa !167
  store i8 0, ptr %i.aw, align 8, !tbaa !165
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store i32 0, ptr %i.ay, align 8, !tbaa !198
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  store double %i.au, ptr %i.az, align 8, !tbaa !199
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %9) #33
  %i.ba = load i64, ptr %i.n, align 8, !tbaa !377
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.n, align 8, !tbaa !377
  %i.bc = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37
          to label %bb.f unwind label %bb.k       ; 7 uses

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load double, ptr %5, align 8, !tbaa !412
  store i32 2, ptr %i.bd, align 8, !tbaa !374
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !166
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store i64 0, ptr %i.bh, align 8, !tbaa !167
  store i8 0, ptr %i.bg, align 8, !tbaa !165
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  store i32 0, ptr %i.bi, align 8, !tbaa !198
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  store double %i.be, ptr %i.bj, align 8, !tbaa !199
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %9) #33
  %i.bk = load i64, ptr %i.n, align 8, !tbaa !377
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.n, align 8, !tbaa !377
  %i.bm = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37
          to label %bb.g unwind label %bb.k       ; 7 uses

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load double, ptr %6, align 8, !tbaa !412
  store i32 2, ptr %i.bn, align 8, !tbaa !374
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 40 ; 2 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !166
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store i64 0, ptr %i.br, align 8, !tbaa !167
  store i8 0, ptr %i.bq, align 8, !tbaa !165
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  store i32 0, ptr %i.bs, align 8, !tbaa !198
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  store double %i.bo, ptr %i.bt, align 8, !tbaa !199
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %9) #33
  %i.bu = load i64, ptr %i.n, align 8, !tbaa !377
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %i.n, align 8, !tbaa !377
  %i.bw = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37
          to label %bb.h unwind label %bb.k       ; 7 uses

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load double, ptr %7, align 8, !tbaa !412
  store i32 2, ptr %i.bx, align 8, !tbaa !374
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 40 ; 2 uses
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !166
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store i64 0, ptr %i.cb, align 8, !tbaa !167
  store i8 0, ptr %i.ca, align 8, !tbaa !165
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  store i32 0, ptr %i.cc, align 8, !tbaa !198
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  store double %i.by, ptr %i.cd, align 8, !tbaa !199
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %9) #33
  %i.ce = load i64, ptr %i.n, align 8, !tbaa !377
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %i.n, align 8, !tbaa !377
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.cg = load ptr, ptr %0, align 8, !tbaa !408
  invoke void @_ZN5osgeo4proj2io15DatabaseContext7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::list") align 8 %10, ptr noundef nonnull align 8 dereferenceable(1696) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ch = load ptr, ptr %10, align 8, !tbaa !182  ; 3 uses
  %.not245246 = icmp eq ptr %i.ch, %10
  br i1 %.not245246, label %_ZNSt7__cxx1110_List_baseISt6vectorINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EED2Ev.exit.thread, label %.lr.ph

_ZNSt7__cxx1110_List_baseISt6vectorINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EED2Ev.exit.thread: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.bh

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %26 = xor i1 %.1, true
  %27 = select i1 %26, i1 true, i1 %.148
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.ci, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i ], [ %i.ch, %._crit_edge ] ; 5 uses
  %i.ci = load ptr, ptr %.09.i.i, align 8, !tbaa !182 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !187 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !188 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.ck, %i.cm
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cs, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.ck, %.lr.ph.i.i ] ; 3 uses
  %i.cn = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !164 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !165
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cs, %i.cm
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.cj, align 8, !tbaa !187
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %.lr.ph.i.i
  %i.ct = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.ck, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !190
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i: ; preds = %bb.j, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 40) #34
  %.not.i.i = icmp eq ptr %i.ci, %10
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseISt6vectorINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZNSt7__cxx1110_List_baseISt6vectorINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br i1 %27, label %bb.bh, label %bb.m

bb.k:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.noexc.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.l:                                             ; preds = %bb.h
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.lr.ph:                                           ; preds = %bb.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.0249 = phi i1 [ %.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ false, %bb.i ] ; 3 uses
  %.047248 = phi i1 [ %.148, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ false, %bb.i ] ; 2 uses
  %.sroa.0237.0247 = phi ptr [ %i.do, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.ch, %bb.i ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0237.0247, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !187 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !167
  %cond = icmp eq i64 %i.de, 4
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !164 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 1
  %i.dh = icmp ne i32 %i.dg, 909129273
  %i.di = zext i1 %i.dh to i32
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread241

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread241: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.dk = load i32, ptr %i.df, align 1
  %i.dl = icmp ne i32 %i.dk, 925906489
  %i.dm = zext i1 %i.dl to i32
  %bcmp.i105.fr = freeze i32 %i.dm
  %i.dn = icmp eq i32 %bcmp.i105.fr, 0
  %spec.select = select i1 %i.dn, i1 true, i1 %.0249
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread241, %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.148 = phi i1 [ %.047248, %.lr.ph ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.047248, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread241 ] ; 2 uses
  %.1 = phi i1 [ %.0249, %.lr.ph ], [ %.0249, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread241 ] ; 2 uses
  %i.do = load ptr, ptr %.sroa.0237.0247, align 8, !tbaa !182 ; 2 uses
  %.not245 = icmp eq ptr %i.do, %10
  br i1 %.not245, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %_ZNSt7__cxx1110_List_baseISt6vectorINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EED2Ev.exit
  %i.dp = load ptr, ptr %9, align 8, !tbaa !182   ; 2 uses
  %.not8.i.i107 = icmp eq ptr %i.dp, %9
  br i1 %.not8.i.i107, label %_ZNSt7__cxx114listIN5osgeo4proj2io9SQLValuesESaIS4_EE5clearEv.exit, label %.lr.ph.i.i108

.lr.ph.i.i108:                                    ; preds = %bb.m, %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i
  %.09.i.i109 = phi ptr [ %i.dq, %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i ], [ %i.dp, %bb.m ] ; 4 uses
  %i.dq = load ptr, ptr %.09.i.i109, align 8, !tbaa !182 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.09.i.i109, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !164 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.09.i.i109, i64 40 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i108
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !165
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #34
  br label %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i

_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i:         ; preds = %.lr.ph.i.i108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i109, i64 noundef 72) #34
  %.not.i.i110 = icmp eq ptr %i.dq, %9
  br i1 %.not.i.i110, label %_ZNSt7__cxx114listIN5osgeo4proj2io9SQLValuesESaIS4_EE5clearEv.exit, label %.lr.ph.i.i108, !llvm.loop !2

_ZNSt7__cxx114listIN5osgeo4proj2io9SQLValuesESaIS4_EE5clearEv.exit: ; preds = %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i, %bb.m
  store ptr %9, ptr %i.m, align 8, !tbaa !181
  store ptr %9, ptr %9, align 8, !tbaa !182
  store i64 0, ptr %i.n, align 8, !tbaa !184
  %i.dx = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37
          to label %bb.n unwind label %bb.am      ; 7 uses

bb.n:                                             ; preds = %_ZNSt7__cxx114listIN5osgeo4proj2io9SQLValuesESaIS4_EE5clearEv.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load double, ptr %1, align 8, !tbaa !412
  store i32 2, ptr %i.dy, align 8, !tbaa !374
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 40 ; 2 uses
  store ptr %i.eb, ptr %i.ea, align 8, !tbaa !166
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  store i64 0, ptr %i.ec, align 8, !tbaa !167
  store i8 0, ptr %i.eb, align 8, !tbaa !165
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  store i32 0, ptr %i.ed, align 8, !tbaa !198
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  store double %i.dz, ptr %i.ee, align 8, !tbaa !199
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %9) #33
  %i.ef = load i64, ptr %i.n, align 8, !tbaa !377
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %i.n, align 8, !tbaa !377
  %i.eh = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37
          to label %bb.o unwind label %bb.am      ; 7 uses

bb.o:                                             ; preds = %bb.n
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load double, ptr %2, align 8, !tbaa !412
  store i32 2, ptr %i.ei, align 8, !tbaa !374
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 40 ; 2 uses
  store ptr %i.el, ptr %i.ek, align 8, !tbaa !166
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  store i64 0, ptr %i.em, align 8, !tbaa !167
  store i8 0, ptr %i.el, align 8, !tbaa !165
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  store i32 0, ptr %i.en, align 8, !tbaa !198
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  store double %i.ej, ptr %i.eo, align 8, !tbaa !199
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %9) #33
  %i.ep = load i64, ptr %i.n, align 8, !tbaa !377
  %i.eq = add i64 %i.ep, 1
  store i64 %i.eq, ptr %i.n, align 8, !tbaa !377
  %i.er = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37
          to label %bb.p unwind label %bb.am      ; 7 uses

bb.p:                                             ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load double, ptr %3, align 8, !tbaa !412
  store i32 2, ptr %i.es, align 8, !tbaa !374
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 40 ; 2 uses
  store ptr %i.ev, ptr %i.eu, align 8, !tbaa !166
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  store i64 0, ptr %i.ew, align 8, !tbaa !167
  store i8 0, ptr %i.ev, align 8, !tbaa !165
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  store i32 0, ptr %i.ex, align 8, !tbaa !198
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  store double %i.et, ptr %i.ey, align 8, !tbaa !199
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.er, ptr noundef nonnull align 8 dereferenceable(24) %9) #33
  %i.ez = load i64, ptr %i.n, align 8, !tbaa !377
  %i.fa = add i64 %i.ez, 1
  store i64 %i.fa, ptr %i.n, align 8, !tbaa !377
  %i.fb = load double, ptr %4, align 8, !tbaa !412
  %i.fc = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37
          to label %bb.q unwind label %bb.an      ; 7 uses

bb.q:                                             ; preds = %bb.p
  %i.fd = fneg double %i.fb
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i32 2, ptr %i.fe, align 8, !tbaa !374
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 40 ; 2 uses
  store ptr %i.fg, ptr %i.ff, align 8, !tbaa !166
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  store i64 0, ptr %i.fh, align 8, !tbaa !167
  store i8 0, ptr %i.fg, align 8, !tbaa !165
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  store i32 0, ptr %i.fi, align 8, !tbaa !198
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 64
  store double %i.fd, ptr %i.fj, align 8, !tbaa !199
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %9) #33
  %i.fk = load i64, ptr %i.n, align 8, !tbaa !377
  %i.fl = add i64 %i.fk, 1
  store i64 %i.fl, ptr %i.n, align 8, !tbaa !377
  %i.fm = load double, ptr %5, align 8, !tbaa !412
  %i.fn = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37
          to label %bb.r unwind label %bb.ao      ; 7 uses

bb.r:                                             ; preds = %bb.q
  %i.fo = fneg double %i.fm
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i32 2, ptr %i.fp, align 8, !tbaa !374
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 40 ; 2 uses
  store ptr %i.fr, ptr %i.fq, align 8, !tbaa !166
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  store i64 0, ptr %i.fs, align 8, !tbaa !167
  store i8 0, ptr %i.fr, align 8, !tbaa !165
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  store i32 0, ptr %i.ft, align 8, !tbaa !198
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 64
  store double %i.fo, ptr %i.fu, align 8, !tbaa !199
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, ptr noundef nonnull align 8 dereferenceable(24) %9) #33
  %i.fv = load i64, ptr %i.n, align 8, !tbaa !377
  %i.fw = add i64 %i.fv, 1
  store i64 %i.fw, ptr %i.n, align 8, !tbaa !377
  %i.fx = load double, ptr %6, align 8, !tbaa !412
  %i.fy = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37
          to label %bb.s unwind label %bb.ap      ; 7 uses

bb.s:                                             ; preds = %bb.r
  %i.fz = fneg double %i.fx
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store i32 2, ptr %i.ga, align 8, !tbaa !374
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 40 ; 2 uses
  store ptr %i.gc, ptr %i.gb, align 8, !tbaa !166
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  store i64 0, ptr %i.gd, align 8, !tbaa !167
  store i8 0, ptr %i.gc, align 8, !tbaa !165
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 56
  store i32 0, ptr %i.ge, align 8, !tbaa !198
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 64
  store double %i.fz, ptr %i.gf, align 8, !tbaa !199
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, ptr noundef nonnull align 8 dereferenceable(24) %9) #33
  %i.gg = load i64, ptr %i.n, align 8, !tbaa !377
  %i.gh = add i64 %i.gg, 1
  store i64 %i.gh, ptr %i.n, align 8, !tbaa !377
  %i.gi = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37
          to label %bb.t unwind label %bb.am      ; 7 uses

bb.t:                                             ; preds = %bb.s
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load double, ptr %7, align 8, !tbaa !412
  store i32 2, ptr %i.gj, align 8, !tbaa !374
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 40 ; 2 uses
  store ptr %i.gm, ptr %i.gl, align 8, !tbaa !166
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  store i64 0, ptr %i.gn, align 8, !tbaa !167
  store i8 0, ptr %i.gm, align 8, !tbaa !165
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  store i32 0, ptr %i.go, align 8, !tbaa !198
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 64
  store double %i.gk, ptr %i.gp, align 8, !tbaa !199
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, ptr noundef nonnull align 8 dereferenceable(24) %9) #33
  %i.gq = load i64, ptr %i.n, align 8, !tbaa !377
  %i.gr = add i64 %i.gq, 1
  store i64 %i.gr, ptr %i.n, align 8, !tbaa !377
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.gs = load ptr, ptr %0, align 8, !tbaa !408
  invoke void @_ZN5osgeo4proj2io15DatabaseContext7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::list") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1696) %i.gs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext false)
          to label %bb.u unwind label %bb.aq

bb.u:                                             ; preds = %bb.t
  %i.gt = load ptr, ptr %11, align 8, !tbaa !182  ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %11
  br i1 %i.gu, label %_ZNSt7__cxx1110_List_baseISt6vectorINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EED2Ev.exit140.thread, label %.lr.ph.i.i125

_ZNSt7__cxx1110_List_baseISt6vectorINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EED2Ev.exit140.thread: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.gv = load ptr, ptr %0, align 8, !tbaa !408
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 144
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !366 ; 2 uses
  %.not70 = icmp eq ptr %i.gx, null
  br i1 %.not70, label %bb.bg, label %bb.w

.lr.ph.i.i125:                                    ; preds = %bb.u, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i137
  %.09.i.i126 = phi ptr [ %i.gy, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i137 ], [ %i.gt, %bb.u ] ; 5 uses
end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_T0_T1_":bb.a

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  %i.bq = load i64, ptr %i.ax, align 8, !tbaa !167 ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  %.not21.i.i.i = icmp eq ptr %0, %i.bb
  br i1 %.not21.i.i.i, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i, label %bb.h, !prof !214

bb.h:                                             ; preds = %bb.g
  switch i64 %i.bq, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !165
  store i8 %i.bs, ptr %i.bd, align 8, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr align 1 %i.bo, i64 %i.bq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.bt = load i64, ptr %i.ax, align 8, !tbaa !167 ; 2 uses
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !167
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bt
  store i8 0, ptr %i.bu, align 1, !tbaa !165
  %.pre.i.i.i16 = load ptr, ptr %0, align 8, !tbaa !164
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  store ptr %i.bo, ptr %i.bb, align 8, !tbaa !164
  %i.bv = load i64, ptr %i.ax, align 8, !tbaa !167
  store i64 %i.bv, ptr %i.bl, align 8, !tbaa !167
  %i.bw = load i64, ptr %i.aw, align 8, !tbaa !165
  store i64 %i.bw, ptr %i.bd, align 8, !tbaa !165
  store ptr %i.aw, ptr %0, align 8, !tbaa !164
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.g
  %i.bx = phi ptr [ %.pre.i.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.aw, %bb.k ], [ %i.bo, %bb.g ]
  store i64 0, ptr %i.ax, align 8, !tbaa !167
  store i8 0, ptr %i.bx, align 1, !tbaa !165
  %i.by = load i32, ptr %i.g, align 8, !tbaa !225
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !601
  %i.bz = ptrtoint ptr %i.bb to i64
  %i.ca = sub i64 %i.bz, %i.a                     ; 2 uses
  %i.cb = sdiv exact i64 %i.ca, 40
  store ptr %i.ay, ptr %4, align 8, !tbaa !166
  %i.cc = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.at
  br i1 %i.cd, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

bb.l:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i
  %i.ce = load i64, ptr %i.au, align 8, !tbaa !167 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add nuw nsw i64 %i.ce, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.cg, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i
  store ptr %i.cc, ptr %4, align 8, !tbaa !164
  %i.ch = load i64, ptr %i.at, align 8, !tbaa !165
  store i64 %i.ch, ptr %i.ay, align 8, !tbaa !165
  %.pre5.i = load i64, ptr %i.au, align 8, !tbaa !167
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit5.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit5.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i, %bb.l
  %i.ci = phi i64 [ %i.ce, %bb.l ], [ %.pre5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i ]
  store i64 %i.ci, ptr %i.az, align 8, !tbaa !167
  store ptr %i.at, ptr %3, align 8, !tbaa !164
  store i64 0, ptr %i.au, align 8, !tbaa !167
  store i8 0, ptr %i.at, align 8, !tbaa !165
  %i.cj = load i32, ptr %i.av, align 8, !tbaa !601
  store i32 %i.cj, ptr %i.ba, align 8, !tbaa !601
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_T0_SQ_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.cb, ptr noundef align 8 %4)
  %i.ck = load ptr, ptr %4, align 8, !tbaa !164   ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ay
  br i1 %i.cl, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit5.i
  %i.cm = load i64, ptr %i.ay, align 8, !tbaa !165
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #34
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.co = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.at
  br i1 %i.cp, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_RT0_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit.i
  %i.cq = load i64, ptr %i.at, align 8, !tbaa !165
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #34
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_RT0_.exit"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_RT0_.exit": ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cs = icmp sgt i64 %i.ca, 40
  br i1 %i.cs, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_T0_.exit", !llvm.loop !2682

.lr.ph70:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2869 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02968 = phi i64 [ %i.cu, %bb.b ], [ %2, %.lr.ph ]
  %i.ct = phi i64 [ %i.eb, %bb.b ], [ %i.c, %.lr.ph ]
  %i.cu = add nsw i64 %.02968, -1                 ; 3 uses
  %i.cv = udiv i64 %i.ct, 80
  %i.cw = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.cv ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %storemerge2869, i64 -40 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.f, align 8, !tbaa !601 ; 3 uses
  %i.cy = getelementptr i8, ptr %i.cw, i64 32     ; 5 uses
  %.val1.i.i.i = load i32, ptr %i.cy, align 8, !tbaa !601 ; 3 uses
  %i.cz = icmp sgt i32 %.val1.i.i.i, %.val.i.i.i
  %i.da = getelementptr i8, ptr %storemerge2869, i64 -8 ; 5 uses
  %.val1.i27.i.i = load i32, ptr %i.da, align 8, !tbaa !601 ; 4 uses
  br i1 %i.cz, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph70
  %i.db = icmp sgt i32 %.val1.i27.i.i, %.val1.i.i.i
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %i.cw) #33
  %i.dc = load i32, ptr %i.g, align 8, !tbaa !225
  %i.dd = load i32, ptr %i.cy, align 8, !tbaa !225
  store i32 %i.dd, ptr %i.g, align 8, !tbaa !225
  store i32 %i.dc, ptr %i.cy, align 8, !tbaa !225
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_SP_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %i.de = icmp sgt i32 %.val1.i27.i.i, %.val.i.i.i
  br i1 %i.de, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %i.cx) #33
  %i.df = load i32, ptr %i.g, align 8, !tbaa !225
  %i.dg = load i32, ptr %i.da, align 8, !tbaa !225
  store i32 %i.dg, ptr %i.g, align 8, !tbaa !225
  store i32 %i.df, ptr %i.da, align 8, !tbaa !225
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_SP_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %i.e) #33
  %i.dh = load i32, ptr %i.g, align 8, !tbaa !225
  %i.di = load i32, ptr %i.f, align 8, !tbaa !225
  store i32 %i.di, ptr %i.g, align 8, !tbaa !225
  store i32 %i.dh, ptr %i.f, align 8, !tbaa !225
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_SP_T0_.exit.i.preheader"

bb.r:                                             ; preds = %.lr.ph70
  %i.dj = icmp sgt i32 %.val1.i27.i.i, %.val.i.i.i
  br i1 %i.dj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %i.e) #33
  %i.dk = load i32, ptr %i.g, align 8, !tbaa !225
  %i.dl = load i32, ptr %i.f, align 8, !tbaa !225
  store i32 %i.dl, ptr %i.g, align 8, !tbaa !225
  store i32 %i.dk, ptr %i.f, align 8, !tbaa !225
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_SP_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  %i.dm = icmp sgt i32 %.val1.i27.i.i, %.val1.i.i.i
  br i1 %i.dm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %i.cx) #33
  %i.dn = load i32, ptr %i.g, align 8, !tbaa !225
  %i.do = load i32, ptr %i.da, align 8, !tbaa !225
  store i32 %i.do, ptr %i.g, align 8, !tbaa !225
  store i32 %i.dn, ptr %i.da, align 8, !tbaa !225
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_SP_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.t
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %i.cw) #33
  %i.dp = load i32, ptr %i.g, align 8, !tbaa !225
  %i.dq = load i32, ptr %i.cy, align 8, !tbaa !225
  store i32 %i.dq, ptr %i.g, align 8, !tbaa !225
  store i32 %i.dp, ptr %i.cy, align 8, !tbaa !225
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_SP_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_SP_T0_.exit.i.preheader": ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_SP_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_SP_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_SP_T0_.exit.i.preheader", %bb.y
  %.sroa.012.0.i.i = phi ptr [ %i.dt, %bb.y ], [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_SP_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2869, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_SP_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i32, ptr %i.g, align 8, !tbaa !601 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_SP_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_SP_T0_.exit.i" ], [ %i.dt, %bb.w ] ; 9 uses
  %i.dr = getelementptr i8, ptr %.sroa.012.1.i.i, i64 32
  %.val.i.i14.i = load i32, ptr %i.dr, align 8, !tbaa !601
  %i.ds = icmp sgt i32 %.val1.i.i13.i, %.val.i.i14.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 40 ; 2 uses
  br i1 %i.ds, label %bb.w, label %.preheader.i.i.preheader, !llvm.loop !2683

.preheader.i.i.preheader:                         ; preds = %bb.w
  %7 = getelementptr i8, ptr %.sroa.012.1.i.i, i64 32 ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40 ; 4 uses
  %i.du = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val1.i9.i.i = load i32, ptr %i.du, align 8, !tbaa !601
  %i.dv = icmp sgt i32 %.val1.i9.i.i, %.val1.i.i13.i
  br i1 %i.dv, label %.preheader.i.i, label %bb.x, !llvm.loop !2684

bb.x:                                             ; preds = %.preheader.i.i
  %i.dw = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dw, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEET_SP_SP_T0_.exit"

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.0.1.i.i) #33
  %i.dy = load i32, ptr %7, align 4, !tbaa !225
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !225
  store i32 %i.dz, ptr %7, align 4, !tbaa !225
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !225
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_SP_T0_.exit.i", !llvm.loop !2685

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEET_SP_SP_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2869, i64 noundef %i.cu)
  %i.ea = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.eb = sub i64 %i.ea, %i.a                     ; 3 uses
  %i.ec = icmp sgt i64 %i.eb, 640
  br i1 %i.ec, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_T0_.exit", !llvm.loop !2680

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEET_SP_SP_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_SP_SP_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZN5osgeo4proj2io15DatabaseContext31getVersionedAuthoritiesFromNameERKS8_E3$_0EEEvT_T0_SQ_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair.731", align 8    ; 11 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit
  %.051 = phi i64 [ %spec.select, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.051, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [40 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [40 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %i.f, i64 32
  %.val.i = load i32, ptr %i.i, align 8, !tbaa !601
  %i.j = getelementptr i8, ptr %i.h, i64 32
  %.val1.i = load i32, ptr %i.j, align 8, !tbaa !601
  %i.k = icmp sgt i32 %.val1.i, %.val.i
  %spec.select = select i1 %i.k, i64 %i.g, i64 %i.e ; 5 uses
  %i.l = getelementptr inbounds [40 x i8], ptr %0, i64 %spec.select ; 10 uses
  %i.m = getelementptr inbounds [40 x i8], ptr %0, i64 %.051 ; 9 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !164  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !164  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.s = icmp eq ptr %i.q, %i.r                   ; 2 uses
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph
  br i1 %i.s, label %bb.b, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.lr.ph
  br i1 %i.s, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !167  ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %.not21.i.i = icmp eq i64 %spec.select, %.051
  br i1 %.not21.i.i, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit, label %bb.c, !prof !214

bb.c:                                             ; preds = %bb.b
  switch i64 %i.u, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.q, align 1, !tbaa !165
  store i8 %i.w, ptr %i.n, align 1, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.q, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.x = load i64, ptr %i.t, align 8, !tbaa !167  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !167
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !164
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !165
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !164
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.q, ptr %i.m, align 8, !tbaa !164
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ad = load <2 x i64>, ptr %i.ac, align 8, !tbaa !165
  store <2 x i64> %i.ad, ptr %i.ab, align 8, !tbaa !165
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !165
  store ptr %i.q, ptr %i.m, align 8, !tbaa !164
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !tbaa !165
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !tbaa !165
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.n, ptr %i.l, align 8, !tbaa !164
  store i64 %i.ae, ptr %i.r, align 8, !tbaa !165
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.r, ptr %i.l, align 8, !tbaa !164
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.f, %bb.g
  %i.ai = phi ptr [ %i.n, %bb.f ], [ %i.r, %bb.g ], [ %i.q, %bb.b ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !167
  store i8 0, ptr %i.ai, align 1, !tbaa !165
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !225
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i32 %i.al, ptr %i.am, align 8, !tbaa !601
  %i.an = icmp slt i64 %spec.select, %i.b
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !2686

._crit_edge:                                      ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit ] ; 6 uses
  %i.ao = and i64 %2, 1
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.h, label %bb.p

bb.h:                                             ; preds = %._crit_edge
  %i.aq = add nsw i64 %2, -2
  %i.ar = ashr exact i64 %i.aq, 1
  %i.as = icmp eq i64 %.0.lcssa, %i.ar
  br i1 %i.as, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.at = shl nsw i64 %.0.lcssa, 1
  %i.au = or disjoint i64 %i.at, 1                ; 3 uses
  %i.av = getelementptr inbounds [40 x i8], ptr %0, i64 %i.au ; 10 uses
  %i.aw = getelementptr inbounds [40 x i8], ptr %0, i64 %.0.lcssa ; 9 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !164 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 4 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !164 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 6 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb                ; 2 uses
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.i
  br i1 %i.bc, label %bb.j, label %.thread.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i25: ; preds = %bb.i
  br i1 %i.bc, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i26

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !167 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  tail call void @llvm.assume(i1 %i.bf)
  %.not21.i.i28 = icmp eq i64 %i.au, %.0.lcssa
  br i1 %.not21.i.i28, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit33, label %bb.k, !prof !214

bb.k:                                             ; preds = %bb.j
  switch i64 %i.be, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i29
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bg = load i8, ptr %i.ba, align 1, !tbaa !165
  store i8 %i.bg, ptr %i.ax, align 1, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i29

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.ba, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i29: ; preds = %bb.m, %bb.l, %bb.k
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !167 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !167
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !164
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1, !tbaa !165
  %.pre.i.i30 = load ptr, ptr %i.av, align 8, !tbaa !164
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit33

.thread.i.i32:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !164
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !167
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !167
  %i.bo = load i64, ptr %i.bb, align 8, !tbaa !165
  store i64 %i.bo, ptr %i.ay, align 8, !tbaa !165
end_hunk_1
