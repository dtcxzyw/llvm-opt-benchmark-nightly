Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmSetCommand?download=true
inline.NumInlined: 1179
inline.NumDeleted: 561
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z12cmSetCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus:bb.a
  %i.lb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.lb, %i.kv
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !30
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZZ12cmSetCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN9ArgumentsD2Ev.exit
  %i.lc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ku, %_ZZ12cmSetCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN9ArgumentsD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.lc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ld = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !55
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.lc to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lh) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ch

bb.ce:                                            ; preds = %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, %bb.bi, %bb.bg, %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318
  %.pn213.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn208.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ], [ %i.ho, %bb.ba ], [ %i.hx, %bb.bg ], [ %i.hy, %bb.bh ], [ %.pn213.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336 ], [ %i.hz, %bb.bi ]
  call fastcc void @_ZZ12cmSetCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN9ArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %13) #23
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.body.i
  %.pn213.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn213.pn.pn.pn.pn.pn, %bb.ce ], [ %eh.lpad-body.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.au
  %.pn213.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn213.pn.pn.pn.pn.pn.pn, %bb.cf ], [ %i.gy, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ci

bb.ch:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296
  %.3 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296 ], [ %.2, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ]
  %i.li = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.dm
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340: ; preds = %bb.ch
  %i.lk = load i64, ptr %i.dm, align 8, !tbaa !26
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.eh

bb.ci:                                            ; preds = %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %bb.aa
  %.pn222.pn = phi { ptr, i32 } [ %.pn222, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299 ], [ %.pn213.pn.pn.pn.pn.pn.pn.pn, %bb.cg ], [ %i.eo, %bb.aa ]
  %i.lm = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.dm
  br i1 %i.ln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %bb.ci
  %i.lo = load i64, ptr %i.dm, align 8, !tbaa !26
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ei

_Z18cmHasLiteralPrefixILm7EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread436: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i275, %bb.d, %_Z11cmHasSuffixSt17basic_string_viewIcSt11char_traitsIcEEc.exit
  %i.lq = ptrtoint ptr %i.k to i64
  %i.lr = ptrtoint ptr %i.i to i64
  %i.ls = sub i64 %i.lq, %i.lr
  %i.lt = ashr exact i64 %i.ls, 5                 ; 5 uses
  switch i64 %i.lt, label %bb.cl [
    i64 1, label %bb.cj
    i64 2, label %bb.ck
  ]

bb.cj:                                            ; preds = %_Z18cmHasLiteralPrefixILm7EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread436
  %i.lu = load ptr, ptr %1, align 8, !tbaa !128, !nonnull !33, !align !34
  tail call void @_ZN10cmMakefile16RemoveDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.lu, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
  br label %bb.eh

bb.ck:                                            ; preds = %_Z18cmHasLiteralPrefixILm7EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread436
  %i.lv = getelementptr inbounds i8, ptr %i.k, i64 -24
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !27
  %i.lx = icmp eq i64 %i.lw, 12
  br i1 %i.lx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.thread449.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.ck
  %i.ly = getelementptr inbounds i8, ptr %i.k, i64 -32
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !25 ; 2 uses
  %i.ma = load i64, ptr %i.lz, align 1
  %i.mb = xor i64 %i.ma, 6007613123082731856
  %i.mc = getelementptr i8, ptr %i.lz, i64 8
  %i.md = load i32, ptr %i.mc, align 1
  %i.me = zext i32 %i.md to i64
  %i.mf = xor i64 %i.me, 1162891075
  %i.mg = or i64 %i.mb, %i.mf
  %i.mh = icmp ne i64 %i.mg, 0
  %i.mi = zext i1 %i.mh to i32
  %i.mj = icmp eq i32 %i.mi, 0
  br i1 %i.mj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.thread592.thread

.thread592.thread:                                ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.mk = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  store ptr %i.mk, ptr %21, align 8, !tbaa !21
  %i.ml = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 0, ptr %i.ml, align 8, !tbaa !27
  store i8 0, ptr %i.mk, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store i32 3, ptr %i.h, align 4, !tbaa !155
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.mm = load ptr, ptr %1, align 8, !tbaa !128, !nonnull !33, !align !34
  tail call void @_ZN10cmMakefile10RaiseScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(2952) %i.mm, ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef null)
  br label %bb.eh

bb.cl:                                            ; preds = %_Z18cmHasLiteralPrefixILm7EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread436
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.mn = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.mn, ptr %21, align 8, !tbaa !21
  %i.mo = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  store i64 0, ptr %i.mo, align 8, !tbaa !27
  store i8 0, ptr %i.mn, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store i32 3, ptr %i.h, align 4, !tbaa !155
  %i.mp = icmp ugt i64 %i.lt, 1
  br i1 %i.mp, label %bb.cm, label %.thread453

bb.cm:                                            ; preds = %bb.cl
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.k, i64 -24
  %.pre478 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !27 ; 2 uses
  %i.mq = icmp eq i64 %.pre478, 12
  br i1 %i.mq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347.thread441

.thread449.thread:                                ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.mr = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  store ptr %i.mr, ptr %21, align 8, !tbaa !21
  %i.ms = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 0, ptr %i.ms, align 8, !tbaa !27
  store i8 0, ptr %i.mr, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store i32 3, ptr %i.h, align 4, !tbaa !155
  br label %.thread453

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347: ; preds = %.thread592.thread, %bb.cm
  %i.mt = phi ptr [ %i.mk, %.thread592.thread ], [ %i.mn, %bb.cm ] ; 2 uses
  %i.mu = phi ptr [ %i.ml, %.thread592.thread ], [ %i.mo, %bb.cm ] ; 2 uses
  %i.mv = getelementptr inbounds i8, ptr %i.k, i64 -32
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !25 ; 2 uses
  %i.mx = load i64, ptr %i.mw, align 1
  %i.my = xor i64 %i.mx, 6007613123082731856
  %i.mz = getelementptr i8, ptr %i.mw, i64 8
  %i.na = load i32, ptr %i.mz, align 1
  %i.nb = zext i32 %i.na to i64
  %i.nc = xor i64 %i.nb, 1162891075
  %i.nd = or i64 %i.my, %i.nc
  %i.ne = icmp ne i64 %i.nd, 0
  %i.nf = zext i1 %i.ne to i32
  %i.ng = icmp eq i32 %i.nf, 0
  br i1 %i.ng, label %.thread453, label %.thread449

bb.cn:                                            ; preds = %bb.cv
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347.thread441: ; preds = %bb.cm
  %i.ni = icmp ugt i64 %i.lt, 4
  %i.nj = icmp eq i64 %.pre478, 5
  %or.cond597 = and i1 %i.ni, %i.nj
  br i1 %or.cond597, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit349, label %.thread449

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit349: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347.thread441
  %i.nk = getelementptr inbounds i8, ptr %i.k, i64 -32
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !25 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 1
  %i.nn = xor i32 %i.nm, 1129467718
  %i.no = getelementptr i8, ptr %i.nl, i64 4
  %i.np = load i8, ptr %i.no, align 1
  %i.nq = zext i8 %i.np to i32
  %i.nr = xor i32 %i.nq, 69
  %i.ns = or i32 %i.nn, %i.nr
  %i.nt = icmp ne i32 %i.ns, 0
  %i.nu = zext i1 %i.nt to i32
  %bcmp.i348.fr = freeze i32 %i.nu
  %i.nv = icmp eq i32 %bcmp.i348.fr, 0            ; 2 uses
  %spec.select = zext i1 %i.nv to i8
  %spec.select473 = zext i1 %i.nv to i32
  br label %.thread449

.thread449:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit349, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347.thread441
  %i.nw = phi ptr [ %i.mn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347.thread441 ], [ %i.mt, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347 ], [ %i.mn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit349 ] ; 3 uses
  %i.nx = phi ptr [ %i.mo, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347.thread441 ], [ %i.mu, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347 ], [ %i.mo, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit349 ] ; 3 uses
  %.0187 = phi i8 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347.thread441 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347 ], [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit349 ] ; 4 uses
  %.0184 = phi i32 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347.thread441 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347 ], [ %spec.select473, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit349 ] ; 4 uses
  %i.ny = icmp ugt i64 %i.lt, 3
  br i1 %i.ny, label %bb.co, label %.thread453

bb.co:                                            ; preds = %.thread449
  %i.nz = add nsw i64 %i.lt, -3
  %i.oa = zext nneg i8 %.0187 to i64
  %i.ob = sub nsw i64 %i.nz, %i.oa
  %i.oc = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.ob ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !27
  %i.of = icmp eq i64 %i.oe, 5
  br i1 %i.of, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit351, label %.thread453

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit351: ; preds = %bb.co
  %i.og = load ptr, ptr %i.oc, align 8, !tbaa !25 ; 2 uses
  %i.oh = load i32, ptr %i.og, align 1
  %i.oi = xor i32 %i.oh, 1212367171
  %i.oj = getelementptr i8, ptr %i.og, i64 4
  %i.ok = load i8, ptr %i.oj, align 1
  %i.ol = zext i8 %i.ok to i32
  %i.om = xor i32 %i.ol, 69
  %i.on = or i32 %i.oi, %i.om
  %i.oo = icmp ne i32 %i.on, 0
  %i.op = zext i1 %i.oo to i32
  %bcmp.i350.fr = freeze i32 %i.op
  %i.oq = icmp eq i32 %bcmp.i350.fr, 0            ; 2 uses
  %29 = add nuw nsw i32 %.0184, 3
  %spec.select465 = select i1 %i.oq, i32 %29, i32 %.0184
  br label %.thread453

.thread453:                                       ; preds = %.thread449.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit351, %bb.co, %bb.cl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347, %.thread449
  %i.or = phi ptr [ %i.nx, %.thread449 ], [ %i.mu, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347 ], [ %i.nx, %bb.co ], [ %i.mo, %bb.cl ], [ %i.nx, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit351 ], [ %i.ms, %.thread449.thread ] ; 4 uses
  %i.os = phi ptr [ %i.nw, %.thread449 ], [ %i.mt, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347 ], [ %i.nw, %bb.co ], [ %i.mn, %bb.cl ], [ %i.nw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit351 ], [ %i.mr, %.thread449.thread ] ; 9 uses
  %.0189 = phi i1 [ false, %.thread449 ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347 ], [ false, %bb.co ], [ false, %bb.cl ], [ %i.oq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit351 ], [ false, %.thread449.thread ] ; 4 uses
  %.1188 = phi i8 [ %.0187, %.thread449 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347 ], [ %.0187, %bb.co ], [ 0, %bb.cl ], [ %.0187, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit351 ], [ 0, %.thread449.thread ] ; 2 uses
  %.0186 = phi i1 [ false, %.thread449 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347 ], [ false, %bb.co ], [ false, %bb.cl ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit351 ], [ false, %.thread449.thread ]
  %.1185 = phi i32 [ %.0184, %.thread449 ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347 ], [ %.0184, %bb.co ], [ 0, %bb.cl ], [ %spec.select465, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit351 ], [ 0, %.thread449.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  %i.ot = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %30 = zext nneg i32 %.1185 to i64
  %i.ou = sub nsw i64 0, %30
  %i.ov = getelementptr inbounds [32 x i8], ptr %i.k, i64 %i.ou ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.ow = icmp eq ptr %i.ov, %i.ot
  br i1 %i.ow, label %_ZN6cmList9to_stringI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES9_RKSI_.exit.thread, label %bb.cp

_ZN6cmList9to_stringI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES9_RKSI_.exit.thread: ; preds = %.thread453
  %i.ox = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  store ptr %i.ox, ptr %22, align 8, !tbaa !21, !alias.scope !157
  %i.oy = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 0, ptr %i.oy, align 8, !tbaa !27, !alias.scope !157
  store i8 0, ptr %i.ox, align 8, !tbaa !26, !alias.scope !157
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.cp:                                            ; preds = %.thread453
  %.sroa.2.0.copyload.i359 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6cmList17element_separatorE, i64 8), align 8, !tbaa !56, !noalias !156
  %.sroa.0.0.copyload.i358 = load i64, ptr @_ZN6cmList17element_separatorE, align 8, !tbaa !23, !noalias !156
  invoke void @_ZN6cmList4JoinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr nonnull %i.ot, ptr %i.ov, i64 %.sroa.0.0.copyload.i358, ptr %.sroa.2.0.copyload.i359)
          to label %_ZN6cmList9to_stringI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES9_RKSI_.exit unwind label %bb.cw

_ZN6cmList9to_stringI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES9_RKSI_.exit: ; preds = %bb.cp
  %.pre479 = load ptr, ptr %21, align 8, !tbaa !25 ; 6 uses
  %i.oz = icmp eq ptr %.pre479, %i.os
  br i1 %i.oz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN6cmList9to_stringI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES9_RKSI_.exit.thread, %_ZN6cmList9to_stringI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES9_RKSI_.exit
  %i.pa = phi ptr [ %i.os, %_ZN6cmList9to_stringI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES9_RKSI_.exit.thread ], [ %.pre479, %_ZN6cmList9to_stringI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES9_RKSI_.exit ]
  %i.pb = load ptr, ptr %22, align 8, !tbaa !25   ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  %i.pd = icmp eq ptr %i.pb, %i.pc
  br i1 %i.pd, label %bb.cq, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN6cmList9to_stringI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES9_RKSI_.exit
  %i.pe = load ptr, ptr %22, align 8, !tbaa !25   ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.pg = icmp eq ptr %i.pe, %i.pf
  br i1 %i.pg, label %bb.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.cq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ph = phi ptr [ %.pre479, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ], [ %i.pa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.pi = phi ptr [ %i.pe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ], [ %i.pb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !27 ; 3 uses
  %i.pl = icmp ult i64 %i.pk, 16
  call void @llvm.assume(i1 %i.pl)
  switch i64 %i.pk, label %bb.cs [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.cr
  ]

bb.cr:                                            ; preds = %bb.cq
  %i.pm = load i8, ptr %i.pi, align 1, !tbaa !26
  store i8 %i.pm, ptr %i.ph, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ph, ptr align 1 %i.pi, i64 %i.pk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.cs, %bb.cr, %bb.cq
  %i.pn = load i64, ptr %i.pj, align 8, !tbaa !27 ; 2 uses
  store i64 %i.pn, ptr %i.or, align 8, !tbaa !27
  %i.po = load ptr, ptr %21, align 8, !tbaa !25
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pn
  store i8 0, ptr %i.pp, align 1, !tbaa !26
  %.pre.i = load ptr, ptr %22, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.pb, ptr %21, align 8, !tbaa !25
  %i.pq = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !27
  store i64 %i.pr, ptr %i.or, align 8, !tbaa !27
  %i.ps = load i64, ptr %i.pc, align 8, !tbaa !26
  store i64 %i.ps, ptr %i.os, align 8, !tbaa !26
  br label %bb.cu

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.pt = load i64, ptr %i.os, align 8, !tbaa !26
  store ptr %i.pe, ptr %21, align 8, !tbaa !25
  %i.pu = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !27
  store i64 %i.pv, ptr %i.or, align 8, !tbaa !27
  %i.pw = load i64, ptr %i.pf, align 8, !tbaa !26
  store i64 %i.pw, ptr %i.os, align 8, !tbaa !26
  %.not.i361 = icmp eq ptr %.pre479, null
  br i1 %.not.i361, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %.pre479, ptr %22, align 8, !tbaa !25
  store i64 %i.pt, ptr %i.pf, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.cu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  %i.px = phi ptr [ %i.pc, %.thread.i ], [ %i.pf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i ] ; 2 uses
  store ptr %i.px, ptr %22, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ct, %bb.cu
  %i.py = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %.pre479, %bb.ct ], [ %i.px, %bb.cu ]
  %i.pz = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 0, ptr %i.pz, align 8, !tbaa !27
  store i8 0, ptr %i.py, align 1, !tbaa !26
  %i.qa = load ptr, ptr %22, align 8, !tbaa !25   ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.qc = icmp eq ptr %i.qa, %i.qb
  br i1 %i.qc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.qd = load i64, ptr %i.qb, align 8, !tbaa !26
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef %i.qe) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br i1 %.0186, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364
  %i.qf = load ptr, ptr %1, align 8, !tbaa !128, !nonnull !33, !align !34
  %i.qg = load ptr, ptr %21, align 8, !tbaa !25
  invoke void @_ZN10cmMakefile10RaiseScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(2952) %i.qf, ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef %i.qg)
          to label %bb.ef unwind label %bb.cn

bb.cw:                                            ; preds = %bb.cp
  %i.qh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.eg

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364
  %i.qi = load ptr, ptr %i.j, align 8, !tbaa !18  ; 3 uses
  %i.qj = getelementptr inbounds i8, ptr %i.qi, i64 -24
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !27
  %i.ql = icmp eq i64 %i.qk, 5
  br i1 %i.ql, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit366, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit366.thread460

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit366: ; preds = %bb.cx
  %i.qm = getelementptr inbounds i8, ptr %i.qi, i64 -32
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !25 ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 1
  %i.qp = xor i32 %i.qo, 1212367171
  %i.qq = getelementptr i8, ptr %i.qn, i64 4
  %i.qr = load i8, ptr %i.qq, align 1
  %i.qs = zext i8 %i.qr to i32
  %i.qt = xor i32 %i.qs, 69
  %i.qu = or i32 %i.qp, %i.qt
  %i.qv = icmp ne i32 %i.qu, 0
  %i.qw = zext i1 %i.qv to i32
  %i.qx = icmp eq i32 %i.qw, 0
  br i1 %i.qx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit366.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit366.thread460

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit366.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit366
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.qy = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.qy, ptr %23, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 66, ptr %i.a, align 8, !tbaa !23
  %i.qz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc369 unwind label %bb.cy ; 3 uses

.noexc369:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit366.thread
  store ptr %i.qz, ptr %23, align 8, !tbaa !25
  %i.ra = load i64, ptr %i.a, align 8, !tbaa !23  ; 3 uses
  store i64 %i.ra, ptr %i.qy, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(66) %i.qz, ptr noundef nonnull align 1 dereferenceable(66) @.str.17, i64 66, i1 false)
  %i.rb = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.ra, ptr %i.rb, align 8, !tbaa !27
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.ra
  store i8 0, ptr %i.rc, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.rd, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit372 unwind label %bb.cz

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit372: ; preds = %.noexc369
  %i.re = load ptr, ptr %23, align 8, !tbaa !25   ; 2 uses
  %i.rf = icmp eq ptr %i.re, %i.qy
  br i1 %i.rf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit372
  %i.rg = load i64, ptr %i.qy, align 8, !tbaa !26
  %i.rh = add i64 %i.rg, 1
  call void @_ZdlPvm(ptr noundef %i.re, i64 noundef %i.rh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit372, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.ef

bb.cy:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit366.thread
  %i.ri = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378

bb.cz:                                            ; preds = %.noexc369
  %i.rj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rk = load ptr, ptr %23, align 8, !tbaa !25   ; 2 uses
  %i.rl = icmp eq ptr %i.rk, %i.qy
  br i1 %i.rl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376
end_hunk_0
