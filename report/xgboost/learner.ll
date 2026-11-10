Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/learner?download=true
inline.NumInlined: 7339
inline.NumDeleted: 2449
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN7xgboost11LearnerImpl11EvalOneIterEiRKSt6vectorISt10shared_ptrINS_7DMatrixEESaIS4_EERKS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EE:._crit_edge.i.i
          to label %bb.d unwind label %bb.y

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 91)
          to label %bb.d unwind label %bb.y       ; 0 uses

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.aa, %bb.b ], [ %6, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, i32 noundef %2)
          to label %bb.e unwind label %bb.y       ; 5 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 93, ptr %i.e, align 1, !tbaa !62
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !278
  %.not.i55 = icmp eq i64 %i.ai, 0
  br i1 %.not.i55, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %bb.h unwind label %bb.y

bb.g:                                             ; preds = %bb.e
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i8 noundef signext 93)
          to label %bb.h unwind label %bb.y       ; 0 uses

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i56 = phi ptr [ %i.aj, %bb.f ], [ %i.ac, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.al = load ptr, ptr %.0.i56, align 8, !tbaa !54
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %.0.i56, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !616
  %i.ar = or i32 %i.aq, 4
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !617
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !279
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 7 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !279
  %i.aw = icmp eq ptr %i.at, %i.av
  br i1 %i.aw, label %bb.i, label %bb.ao

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 5561
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !630, !range !217, !noundef !218
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.ao, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !81 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !54
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.bb)
          to label %bb.k unwind label %bb.z       ; 4 uses

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.bg, ptr %7, align 8, !tbaa !122
  %i.bh = icmp eq ptr %i.bf, null
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.35) #41
          to label %.noexc62 unwind label %bb.z

.noexc62:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bi = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bf) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 %i.bi, ptr %i.d, align 8, !tbaa !82
  %i.bj = icmp ugt i64 %i.bi, 15
  br i1 %i.bj, label %.noexc.i61, label %._crit_edge.i.i60

.noexc.i61:                                       ; preds = %bb.m
  %i.bk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc63 unwind label %bb.z   ; 2 uses

.noexc63:                                         ; preds = %.noexc.i61
  store ptr %i.bk, ptr %7, align 8, !tbaa !69
  %i.bl = load i64, ptr %i.d, align 8, !tbaa !82
  store i64 %i.bl, ptr %i.bg, align 8, !tbaa !62
  br label %._crit_edge.i.i60

._crit_edge.i.i60:                                ; preds = %.noexc63, %bb.m
  %i.bm = phi ptr [ %i.bk, %.noexc63 ], [ %i.bg, %bb.m ] ; 2 uses
  switch i64 %i.bi, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i60
  %i.bn = load i8, ptr %i.bf, align 1, !tbaa !62
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !62
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i60
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr nonnull align 1 %i.bf, i64 %i.bi, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i60
  %i.bo = load i64, ptr %i.d, align 8, !tbaa !82  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !106
  %i.bq = load ptr, ptr %7, align 8, !tbaa !69
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bt = invoke noundef ptr @_ZN7xgboost6Metric6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_7ContextE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %i.bs)
          to label %bb.q unwind label %bb.aa      ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.bu = load ptr, ptr %i.au, align 8, !tbaa !73 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !77
  %.not.i65 = icmp eq ptr %i.bu, %i.bw
  br i1 %.not.i65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !75
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bx, ptr %i.au, align 8, !tbaa !73
  br label %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.s:                                             ; preds = %bb.q
  %i.by = load ptr, ptr %i.as, align 8, !tbaa !72 ; 10 uses
  %i.bz = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64               ; 3 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 3 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.t, label %_ZNKSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #41
          to label %.noexc66 unwind label %bb.aa

.noexc66:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.cd = ashr exact i64 %i.cb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = call i64 @llvm.umin.i64(i64 %i.ce, i64 1152921504606846975)
  %i.ch = select i1 %i.cf, i64 1152921504606846975, i64 %i.cg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ci = shl nuw nsw i64 %i.ch, 3
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #42
          to label %.noexc67 unwind label %bb.aa  ; 10 uses

.noexc67:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb
  store ptr %i.bt, ptr %i.ck, align 8, !tbaa !75
  %.not10.i.i.i.i.i = icmp eq ptr %i.by, %i.bu
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc67
  %i.cl = add i64 %i.bz, -8
  %i.cm = sub i64 %i.cl, %i.ca                    ; 3 uses
  %i.cn = lshr i64 %i.cm, 3
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cm, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader224, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.cp = and i64 %i.cm, -8
  %i.cq = add i64 %i.cp, 8                        ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cj, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.by, i64 %i.cq
  %bound0 = icmp ult ptr %i.cj, %i.cs
  %bound1 = icmp ult ptr %i.by, %i.cr
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader224, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.co, 4611686018427387900     ; 3 uses
  %i.ct = shl i64 %n.vec, 3                       ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cj, i64 %i.ct  ; 2 uses
  %i.cv = getelementptr i8, ptr %i.by, i64 %i.ct
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cj, i64 %i.cw ; 2 uses
  %next.gep220 = getelementptr i8, ptr %i.by, i64 %i.cw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %i.cx = getelementptr i8, ptr %next.gep220, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep220, align 8, !tbaa !75, !alias.scope !633
  %wide.load221 = load <2 x i64>, ptr %i.cx, align 8, !tbaa !75, !alias.scope !633
  %i.cy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !75, !alias.scope !634, !noalias !635
  store <2 x i64> %wide.load221, ptr %i.cy, align 8, !tbaa !75, !alias.scope !634, !noalias !635
  %17 = getelementptr i8, ptr %next.gep220, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep220, align 8, !tbaa !75, !alias.scope !633
  store <2 x ptr> splat (ptr null), ptr %17, align 8, !tbaa !75, !alias.scope !633
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !608

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader224

.lr.ph.i.i.i.i.i.preheader224:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.cj, %vector.memcheck ], [ %i.cj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.by, %vector.memcheck ], [ %i.by, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader224, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader224 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader224 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %i.da = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !632
  store i64 %i.da, ptr %.012.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !631
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !632
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.db, %i.bu
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !609

_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc67
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cj, %.noexc67 ], [ %i.cu, %middle.block ], [ %i.dc, %.lr.ph.i.i.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.de = load ptr, ptr %i.bv, align 8, !tbaa !77
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.dg) #39
  br label %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.cj, ptr %i.as, align 8, !tbaa !72
  store ptr %i.dd, ptr %i.au, align 8, !tbaa !73
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ch
  store ptr %i.dh, ptr %i.bv, align 8, !tbaa !77
  br label %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.r
  %i.di = load ptr, ptr %7, align 8, !tbaa !69    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.bg
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.dk = load i64, ptr %i.bg, align 8, !tbaa !62
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.dm = load ptr, ptr %i.ba, align 8, !tbaa !81 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !54
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dp = load ptr, ptr %i.do, align 8
  invoke void %i.dp(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::Json") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %i.dm)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.dq = load ptr, ptr %8, align 8, !tbaa !205
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !211
  %i.dt = icmp eq i64 %i.ds, 6
  br i1 %i.dt, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.du = load ptr, ptr %i.au, align 8, !tbaa !279
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !75 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !54
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  invoke void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ad unwind label %bb.ac

bb.x:                                             ; preds = %._crit_edge.i.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = load ptr, ptr %5, align 8, !tbaa !69    ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.h
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.x
  %i.ed = load i64, ptr %i.h, align 8, !tbaa !62
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.do

bb.y:                                             ; preds = %bb.g, %bb.f, %bb.c, %bb.b, %bb.d
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body147

bb.z:                                             ; preds = %bb.j, %.noexc.i61, %bb.l
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.aa:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.t, %bb.p
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %7, align 8, !tbaa !69    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.bg
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.aa
  %i.ek = load i64, ptr %i.bg, align 8, !tbaa !62
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.aa, %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  %.pn37.pn = phi { ptr, i32 } [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %i.eg, %bb.z ], [ %i.eh, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.body147

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7xgboost4JsonD2Ev.exit82

bb.ac:                                            ; preds = %bb.w
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ad:                                            ; preds = %bb.w, %bb.v
  %i.eo = load ptr, ptr %i.au, align 8, !tbaa !279
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !75 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 5344
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !129
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 5328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE19_M_range_initializeISt17_Rb_tree_iteratorIS0_IKS6_S6_EEEEvT_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.es, ptr nonnull %i.et)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ISt17_Rb_tree_iteratorIS0_IKS6_S6_EEvEET_SF_RKS8_.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = load ptr, ptr %9, align 8, !tbaa !214   ; 3 uses
  %.not.i.i.i77 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i77, label %.body, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !215
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ev to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.fa) #39
  br label %.body

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ISt17_Rb_tree_iteratorIS0_IKS6_S6_EEvEET_SF_RKS8_.exit: ; preds = %bb.ad
  %i.fb = load ptr, ptr %i.eq, align 8, !tbaa !54
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.fd = load ptr, ptr %i.fc, align 8
  invoke void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.ag unwind label %bb.ak

bb.ag:                                            ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ISt17_Rb_tree_iteratorIS0_IKS6_S6_EEvEET_SF_RKS8_.exit
  %i.fe = load ptr, ptr %9, align 8, !tbaa !214   ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !216 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fe, %i.fg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ag, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fs, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i ], [ %i.fe, %bb.ag ] ; 5 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !69 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !62
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.fn = load ptr, ptr %.05.i.i.i, align 8, !tbaa !69 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN7xgboost20LearnerConfiguration12ConfigureGBMERKNS_17LearnerTrainParamERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESaISC_EE:bb.a
bb.w:                                             ; preds = %bb.v
  %i.eh = icmp eq i64 %i.ee, 0
  br i1 %i.eh, label %_ZNSt10unique_ptrIN7xgboost15GradientBoosterESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.w
  %i.ei = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.ej = load ptr, ptr %11, align 8, !tbaa !69
  %bcmp.i.i51 = call i32 @bcmp(ptr %i.ej, ptr %i.ei, i64 %i.ee)
  %.not = icmp eq i32 %bcmp.i.i51, 0
  br i1 %.not, label %_ZNSt10unique_ptrIN7xgboost15GradientBoosterESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.v, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 5232
  %i.em = invoke noundef ptr @_ZN7xgboost15GradientBooster6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_7ContextEPKNS_17LearnerModelParamE(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull %i.ek, ptr noundef nonnull %i.el)
          to label %bb.x unwind label %bb.y       ; 2 uses

bb.x:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.en = load ptr, ptr %i.eb, align 8, !tbaa !79 ; 3 uses
  store ptr %i.em, ptr %i.eb, align 8, !tbaa !79
  %.not.i.i52 = icmp eq ptr %i.en, null
  br i1 %.not.i.i52, label %_ZNSt10unique_ptrIN7xgboost15GradientBoosterESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN7xgboost15GradientBoosterEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7xgboost15GradientBoosterEEclEPS1_.exit.i.i: ; preds = %bb.x
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !54
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(24) %i.en) #17, !inline_history !12
  %.pre64 = load ptr, ptr %i.eb, align 8, !tbaa !79
  br label %_ZNSt10unique_ptrIN7xgboost15GradientBoosterESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %common.resume.i40
  %i.er = load i64, ptr %i.cq, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.sink.split

bb.y:                                             ; preds = %_ZNSt10unique_ptrIN7xgboost15GradientBoosterESt14default_deleteIS1_EE5resetEPS1_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.et = load ptr, ptr %11, align 8, !tbaa !69   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.y
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.sink.split

_ZNSt10unique_ptrIN7xgboost15GradientBoosterESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.w, %_ZNKSt14default_deleteIN7xgboost15GradientBoosterEEclEPS1_.exit.i.i, %bb.x, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ex = phi ptr [ %i.ec, %bb.w ], [ %.pre64, %_ZNKSt14default_deleteIN7xgboost15GradientBoosterEEclEPS1_.exit.i.i ], [ %i.em, %bb.x ], [ %i.ec, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ] ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !54
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8
  invoke void %i.fa(ptr noundef nonnull align 8 dereferenceable(24) %i.ex, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.z unwind label %bb.y

bb.z:                                             ; preds = %_ZNSt10unique_ptrIN7xgboost15GradientBoosterESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.fb = load ptr, ptr %11, align 8, !tbaa !69   ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.z
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !62
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  %.sink96 = phi i64 [ %i.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ]
  %.sink = phi ptr [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ]
  %.pn10.ph = phi { ptr, i32 } [ %i.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ]
  %i.fg = add i64 %.sink96, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fg) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.sink.split, %bb.y, %common.resume.i40
  %.pn10 = phi { ptr, i32 } [ %i.dm, %common.resume.i40 ], [ %i.es, %bb.y ], [ %.pn10.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ]
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost20LearnerConfiguration16ConfigureMetricsERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(5848) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5824
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5832
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119  ; 2 uses
  %.not32 = icmp eq ptr %i.b, %i.d
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN7xgboost6MetricESt14default_deleteIS1_EED2Ev.exit, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !279  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !279  ; 2 uses
  %.not2934 = icmp eq ptr %i.j, %i.l
  br i1 %.not2934, label %._crit_edge38, label %.lr.ph37

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN7xgboost6MetricESt14default_deleteIS1_EED2Ev.exit
  %.sroa.026.033 = phi ptr [ %i.b, %.lr.ph ], [ %i.bj, %_ZNSt10unique_ptrIN7xgboost6MetricESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !279
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !279  ; 2 uses
  %i.o = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7xgboost6MetricESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops12_Iter_negateIZNS3_20LearnerConfiguration16ConfigureMetricsERKS9_ISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_ESaISN_EEEUlRKS7_E_EEET_SW_SW_T0_St26random_access_iterator_tag(ptr %i.m, ptr %i.n, ptr nonnull %.sroa.026.033)
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_ZNSt10unique_ptrIN7xgboost6MetricESt14default_deleteIS1_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef ptr @_ZN7xgboost6Metric6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_7ContextE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.026.033, ptr noundef nonnull %i.g) ; 5 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !73   ; 6 uses
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = ptrtoint ptr %i.q to i64
  store i64 %i.t, ptr %i.r, align 8, !tbaa !75
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.u, ptr %i.f, align 8, !tbaa !73
  br label %_ZNSt10unique_ptrIN7xgboost6MetricESt14default_deleteIS1_EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !72   ; 10 uses
  %i.w = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 3 uses
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #41
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #42
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  %i.ai = ptrtoint ptr %i.q to i64
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !75
  %.not10.i.i.i.i = icmp eq ptr %i.v, %i.r
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc18
  %i.aj = add i64 %i.w, -8
  %i.ak = sub i64 %i.aj, %i.x                     ; 3 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader59, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.an = and i64 %i.ak, -8
  %i.ao = add i64 %i.an, 8                        ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.v, i64 %i.ao
  %bound0 = icmp ult ptr %i.ag, %i.aq
  %bound1 = icmp ult ptr %i.v, %i.ap
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader59, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.ag, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %i.v, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.au ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.v, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  %i.av = getelementptr i8, ptr %next.gep56, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep56, align 8, !tbaa !75, !alias.scope !879
  %wide.load57 = load <2 x i64>, ptr %i.av, align 8, !tbaa !75, !alias.scope !879
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !75, !alias.scope !880, !noalias !881
  store <2 x i64> %wide.load57, ptr %i.aw, align 8, !tbaa !75, !alias.scope !880, !noalias !881
  %2 = getelementptr i8, ptr %next.gep56, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep56, align 8, !tbaa !75, !alias.scope !879
  store <2 x ptr> splat (ptr null), ptr %2, align 8, !tbaa !75, !alias.scope !879
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !874

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader59

.lr.ph.i.i.i.i.preheader59:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader59, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader59 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader59 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  %i.ay = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !75, !alias.scope !878
  store i64 %i.ay, ptr %.012.i.i.i.i, align 8, !tbaa !75, !alias.scope !877
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !75, !alias.scope !878
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.r
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !875

_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc18
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ag, %.noexc18 ], [ %i.as, %middle.block ], [ %i.ba, %.lr.ph.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i, label %.noexc, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !77
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.be) #39
  br label %.noexc

.noexc:                                           ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.ag, ptr %i.e, align 8, !tbaa !72
  store ptr %i.bb, ptr %i.f, align 8, !tbaa !73
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.bf, ptr %i.h, align 8, !tbaa !77
  br label %_ZNSt10unique_ptrIN7xgboost6MetricESt14default_deleteIS1_EED2Ev.exit

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.f
  %lpad.loopexit.split-lp60 = landingpad { ptr, i32 }
          cleanup
  %.not.i14 = icmp eq ptr %i.q, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN7xgboost6MetricESt14default_deleteIS1_EED2Ev.exit16, label %_ZNKSt14default_deleteIN7xgboost6MetricEEclEPS1_.exit.i15

_ZNKSt14default_deleteIN7xgboost6MetricEEclEPS1_.exit.i15: ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.bg = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #17, !inline_history !876
  br label %_ZNSt10unique_ptrIN7xgboost6MetricESt14default_deleteIS1_EED2Ev.exit16

_ZNSt10unique_ptrIN7xgboost6MetricESt14default_deleteIS1_EED2Ev.exit16: ; preds = %.loopexit.split-lp.loopexit.split-lp, %_ZNKSt14default_deleteIN7xgboost6MetricEEclEPS1_.exit.i15
  resume { ptr, i32 } %lpad.loopexit.split-lp60

_ZNSt10unique_ptrIN7xgboost6MetricESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc, %bb.d, %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.026.033, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bj, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge38:                                    ; preds = %.lr.ph37, %._crit_edge
  ret void

.lr.ph37:                                         ; preds = %._crit_edge, %.lr.ph37
  %.sroa.019.035 = phi ptr [ %i.bo, %.lr.ph37 ], [ %i.j, %._crit_edge ] ; 2 uses
  %i.bk = load ptr, ptr %.sroa.019.035, align 8, !tbaa !75 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !54
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8 ; 2 uses
  %.not29 = icmp eq ptr %i.bo, %i.l
  br i1 %.not29, label %._crit_edge38, label %.lr.ph37
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost20LearnerConfiguration18ValidateParametersEv(ptr noundef nonnull align 8 dereferenceable(5848) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, xgboost::Json>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, xgboost::Json>>, std::less<void>>::_Alloc_node", align 8 ; 4 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.xgboost::Json", align 8     ; 9 uses
  %4 = alloca %"class.xgboost::JsonObject", align 8 ; 15 uses
  %5 = alloca %"class.std::stack", align 8        ; 22 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::vector.42", align 8    ; 20 uses
  %8 = alloca %"class.xgboost::JsonObject", align 8 ; 9 uses
  %9 = alloca %"class.std::map.168", align 8      ; 12 uses
  %10 = alloca %"class.std::vector.42", align 8   ; 14 uses
  %11 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %12 = alloca %"class.std::vector.42", align 8   ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %14 = alloca %"class.xgboost::ConsoleLogger", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !227
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 3, ptr %i.h, align 8, !tbaa !211
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonObjectE, i64 16), ptr %4, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !127
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !128
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.i, ptr %i.k, align 8, !tbaa !129
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.i, ptr %i.l, align 8, !tbaa !130
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 0, ptr %i.m, align 8, !tbaa !131
  %i.n = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #42
          to label %bb.b unwind label %bb.l       ; 3 uses

bb.b:                                             ; preds = %bb.a
  call void @_ZN7xgboost10JsonObjectC1EOS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(72) %4) #17
  store ptr %i.n, ptr %3, align 8, !tbaa !205
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = atomicrmw add ptr %i.o, i32 1 monotonic, align 4 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonObjectE, i64 16), ptr %4, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !128
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef %i.r)
          to label %_ZN7xgboost10JsonObjectD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #40
  unreachable

_ZN7xgboost10JsonObjectD2Ev.exit:                 ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.u = load ptr, ptr %0, align 8, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 256
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(5848) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %_ZN7xgboost10JsonObjectD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIN7xgboost4JsonESaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 noundef 0)
          to label %_ZNSt5stackIN7xgboost4JsonESt5dequeIS1_SaIS1_EEEC2IS4_vEEv.exit unwind label %bb.n

_ZNSt5stackIN7xgboost4JsonESt5dequeIS1_SaIS1_EEEC2IS4_vEEv.exit: ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 17 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !386  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 7 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !903
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %.not.i.i = icmp eq ptr %i.y, %i.ab
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt5stackIN7xgboost4JsonESt5dequeIS1_SaIS1_EEEC2IS4_vEEv.exit
  %i.ac = load ptr, ptr %3, align 8, !tbaa !205   ; 3 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !205
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost4JsonC2ERKS0_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = atomicrmw add ptr %i.ad, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.x, align 8, !tbaa !386
  br label %_ZN7xgboost4JsonC2ERKS0_.exit.i.i

_ZN7xgboost4JsonC2ERKS0_.exit.i.i:                ; preds = %bb.f, %bb.e
  %i.af = phi ptr [ %i.y, %bb.e ], [ %.pre.i.i, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ag, ptr %i.x, align 8, !tbaa !386
  br label %_ZNSt5stackIN7xgboost4JsonESt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

bb.g:                                             ; preds = %_ZNSt5stackIN7xgboost4JsonESt5dequeIS1_SaIS1_EEEC2IS4_vEEv.exit
  invoke void @_ZNSt5dequeIN7xgboost4JsonESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt5stackIN7xgboost4JsonESt5dequeIS1_SaIS1_EEE4pushERKS1_.exit unwind label %bb.o

_ZNSt5stackIN7xgboost4JsonESt5dequeIS1_SaIS1_EEE4pushERKS1_.exit: ; preds = %_ZN7xgboost4JsonC2ERKS0_.exit.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ah, ptr %6, align 8, !tbaa !122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ah, ptr noundef nonnull align 1 dereferenceable(6) @.str.118, i64 6, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 6, ptr %i.ai, align 8, !tbaa !106
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i8 0, ptr %i.aj, align 2, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
end_hunk_1
begin_hunk_2_@_ZN4dmlc14LogCheckFormatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESt10unique_ptrIS6_St14default_deleteIS6_EERKT_RKT0_:bb.a
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN7xgboost4CastIKNS_10JsonStringENS_5ValueEEEPT_PT0_(ptr noundef %0) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %2 = alloca %"class.xgboost::JsonString", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !211
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN7xgboost5ValueE, ptr nonnull @_ZTIN7xgboost10JsonStringE, i64 0) #17
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.e = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.e, ptr noundef nonnull @.str.59, i32 noundef 89)
  %i.f = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.c
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.60, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.h = invoke { i64, ptr } @_ZNK7xgboost5Value7TypeStrEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.j, i64 noundef %i.i)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit unwind label %bb.f ; 2 uses

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit: ; preds = %bb.d
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.61, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.m, align 8, !tbaa !227
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.n, align 8, !tbaa !211
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %2, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !122
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 0, ptr %i.q, align 8, !tbaa !106
  store i8 0, ptr %i.p, align 8, !tbaa !62
  %i.r = invoke { i64, ptr } @_ZNK7xgboost5Value7TypeStrEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = extractvalue { i64, ptr } %i.r, 1
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.t, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit13 unwind label %bb.g ; 0 uses

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit13: ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %2, align 8, !tbaa !54
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !69   ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %_ZN7xgboost10JsonStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit13
  %i.x = load i64, ptr %i.p, align 8, !tbaa !62
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #39
  br label %_ZN7xgboost10JsonStringD2Ev.exit

_ZN7xgboost10JsonStringD2Ev.exit:                 ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.z = call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN7xgboost5ValueE, ptr nonnull @_ZTIN7xgboost10JsonStringE, i64 0) #17
  br label %bb.j

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit, %bb.d, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.ab = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %2, align 8, !tbaa !54
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !69  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.p
  br i1 %i.ad, label %_ZN7xgboost10JsonStringD2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %bb.g
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !62
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #39
  br label %_ZN7xgboost10JsonStringD2Ev.exit16

_ZN7xgboost10JsonStringD2Ev.exit16:               ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost10JsonStringD2Ev.exit16, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ab, %_ZN7xgboost10JsonStringD2Ev.exit16 ], [ %i.aa, %bb.f ]
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.b, %_ZN7xgboost10JsonStringD2Ev.exit
  %.0 = phi ptr [ %i.z, %_ZN7xgboost10JsonStringD2Ev.exit ], [ %i.d, %bb.b ]
  ret ptr %.0

bb.k:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !72     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EEmS5_ET_S7_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EEmS5_ET_S7_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !1103
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !73
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #41
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #42 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !1103
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = add i64 %i.d, -8
  %i.y = sub i64 %i.x, %i.e                       ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.c, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.c, i64 %i.ae ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  %i.af = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep40, align 8, !tbaa !75, !alias.scope !1105
  %wide.load41 = load <2 x i64>, ptr %i.af, align 8, !tbaa !75, !alias.scope !1105
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !75, !alias.scope !1104
  store <2 x i64> %wide.load41, ptr %i.ag, align 8, !tbaa !75, !alias.scope !1104
  %2 = getelementptr i8, ptr %next.gep40, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep40, align 8, !tbaa !75, !alias.scope !1105
  store <2 x ptr> splat (ptr null), ptr %2, align 8, !tbaa !75, !alias.scope !1105
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1100

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader43

.lr.ph.i.i.i.preheader43:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader43, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader43 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  %i.ai = load i64, ptr %.0911.i.i.i, align 8, !tbaa !75, !alias.scope !1105
  store i64 %i.ai, ptr %.012.i.i.i, align 8, !tbaa !75, !alias.scope !1104
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !75, !alias.scope !1105
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1101

_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !77
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.an) #39
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit37

_ZNSt12_Vector_baseISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit37: ; preds = %_ZNSt6vectorISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !72
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !73
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !77
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EEmS5_ET_S7_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6ToJsonINS_17LearnerTrainParamEEENS_10JsonObjectERKT_(ptr dead_on_unwind noalias writable sret(%"class.xgboost::JsonObject") align 8 %0, ptr noundef nonnull align 8 dereferenceable(76) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::map.37", align 8       ; 9 uses
  %3 = alloca %"class.xgboost::JsonString", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !227
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %i.c, align 8, !tbaa !211
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonObjectE, i64 16), ptr %0, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !127
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.e, align 8, !tbaa !128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.d, ptr %i.f, align 8, !tbaa !129
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %i.g, align 8, !tbaa !130
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.h, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNK4dmlc9ParameterIN7xgboost17LearnerTrainParamEE8__DICT__B5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::map.37") align 8 %2, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !129  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.not23 = icmp eq ptr %i.j, %i.k
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN7xgboost10JsonStringD2Ev.exit, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !128
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.s)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #40
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.d:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %.lr.ph, %_ZN7xgboost10JsonStringD2Ev.exit
  %.sroa.016.024 = phi ptr [ %i.j, %.lr.ph ], [ %i.bc, %_ZN7xgboost10JsonStringD2Ev.exit ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.016.024, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.016.024, i64 64
  store i32 0, ptr %i.l, align 8, !tbaa !227
  store i64 0, ptr %i.m, align 8, !tbaa !211
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %3, align 8, !tbaa !54
  store ptr %i.o, ptr %i.n, align 8, !tbaa !122
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !69   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.016.024, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !106 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !82
  %i.ab = icmp ugt i64 %i.aa, 15
  br i1 %i.ab, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.ac, ptr %i.n, align 8, !tbaa !69
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !82
  store i64 %i.ad, ptr %i.o, align 8, !tbaa !62
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.e
  %i.ae = phi ptr [ %i.ac, %.noexc ], [ %i.o, %bb.e ] ; 2 uses
  switch i64 %i.aa, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.af = load i8, ptr %i.y, align 1, !tbaa !62
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !62
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.y, i64 %i.aa, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  store i64 %i.ag, ptr %i.p, align 8, !tbaa !106
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 0, ptr %i.ai, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost4JsonESt4lessIvESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZN7xgboost10JsonObjectixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.l ; 2 uses

_ZN7xgboost10JsonObjectixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.h
  %i.ak = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #42
          to label %.noexc12 unwind label %bb.l   ; 7 uses

.noexc12:                                         ; preds = %_ZN7xgboost10JsonObjectixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store i32 0, ptr %i.al, align 4, !tbaa !227
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 0, ptr %i.am, align 8, !tbaa !211
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %i.ak, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !122
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i64 0, ptr %i.ap, align 8, !tbaa !106
  store i8 0, ptr %i.ao, align 8, !tbaa !62
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.an) #17
  %i.aq = atomicrmw add ptr %i.al, i32 1 monotonic, align 4 ; 0 uses
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !228 ; 4 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !228
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit, label %bb.i

bb.i:                                             ; preds = %.noexc12
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = atomicrmw add ptr %i.as, i32 -1 release, align 4
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.j, label %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(24) %i.ar) #17, !inline_history !16
end_hunk_2
