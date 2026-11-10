Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/dataset?download=true
inline.NumInlined: 6241
inline.NumDeleted: 2000
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK8LightGBM7Dataset26GetMultiBinFromAllFeaturesERKSt6vectorIjSaIjEE:.noexc.i
  %i.dq = icmp slt i32 %i.dj, %i.dp
  br i1 %i.dq, label %.lr.ph199, label %._crit_edge200, !llvm.loop !353

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i, %bb.i
  %lpad.loopexit.split-lp344 = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.m
  %.sroa.0.2 = phi ptr [ %.sroa.0.6, %bb.m ], [ %.sroa.0.1194, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.24.2 = phi ptr [ %.sroa.24.6, %bb.m ], [ %.sroa.24.1196, %.loopexit.split-lp.loopexit.split-lp ]
  %.pn43 = phi { ptr, i32 } [ %i.dr, %bb.m ], [ %lpad.loopexit.split-lp344, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %bb.z

bb.o:                                             ; preds = %bb.e
  %.not.i.i55 = icmp eq ptr %.sroa.14.0205, %.sroa.24.0206
  br i1 %.not.i.i55, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %.sroa.14.0205, align 4, !tbaa !138
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit64

bb.q:                                             ; preds = %bb.o
  %i.ds = ptrtoint ptr %.sroa.24.0206 to i64
  %i.dt = ptrtoint ptr %.sroa.0.0204 to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 6 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775804
  br i1 %i.dv, label %bb.r, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i56

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.noexc62 unwind label %.loopexit.split-lp139.loopexit.split-lp

.noexc62:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i56: ; preds = %bb.q
  %i.dw = ashr exact i64 %i.du, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i57 = call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i.i57, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = call i64 @llvm.umin.i64(i64 %i.dx, i64 2305843009213693951)
  %i.ea = select i1 %i.dy, i64 2305843009213693951, i64 %i.dz ; 3 uses
  %.not.i.i.i.i58 = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not.i.i.i.i58)
  %i.eb = shl nuw nsw i64 %i.ea, 2
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #37
          to label %.noexc63 unwind label %.loopexit.split-lp139.loopexit.split-lp ; 4 uses

.noexc63:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i56
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.du ; 2 uses
  store i32 0, ptr %i.ed, align 4, !tbaa !138
  %i.ee = icmp sgt i64 %i.du, 0
  br i1 %i.ee, label %bb.s, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i59

bb.s:                                             ; preds = %.noexc63
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ec, ptr align 4 %.sroa.0.0204, i64 %i.du, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i59

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i59: ; preds = %bb.s, %.noexc63
  %.not.i17.i.i.i60 = icmp eq ptr %.sroa.0.0204, null
  br i1 %.not.i17.i.i.i60, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i61, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i59
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0204, i64 noundef %i.du) #36
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i61

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i61: ; preds = %bb.t, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i59
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ea
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit64

_ZNSt6vectorIjSaIjEE9push_backEOj.exit64:         ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i61, %bb.p
  %.sroa.0.7 = phi ptr [ %i.ec, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i61 ], [ %.sroa.0.0204, %bb.p ] ; 3 uses
  %.pn130 = phi ptr [ %i.ed, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i61 ], [ %.sroa.14.0205, %bb.p ]
  %.sroa.24.7 = phi ptr [ %i.ef, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i61 ], [ %.sroa.24.0206, %bb.p ] ; 3 uses
  %.sroa.14.4 = getelementptr inbounds nuw i8, ptr %.pn130, i64 4 ; 2 uses
  %i.eg = load i32, ptr %i.b, align 4, !tbaa !138
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph193, label %.loopexit132

.loopexit.split-lp139.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i56, %bb.r
  %lpad.loopexit.split-lp348 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.lr.ph193:                                        ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit64, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %indvars.iv245 = phi i64 [ %indvars.iv.next246, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ], [ 0, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit64 ] ; 2 uses
  %i.ei = load ptr, ptr %3, align 8, !tbaa !165
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %indvars.iv245 ; 4 uses
  %i.ek = load i32, ptr %i.c, align 4, !tbaa !138
  %i.el = sext i32 %i.ek to i64
  %i.em = load ptr, ptr %i.ad, align 8, !tbaa !139
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.el
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !141 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 88
  %i.eq = load i8, ptr %i.ep, align 8, !tbaa !160, !range !129, !noundef !130
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %_ZN8LightGBM12FeatureGroup20FeatureGroupIteratorEv.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph193
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !118
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !138
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !184
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !138
  %i.ez = add i32 %i.ey, -1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !197 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !134
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = invoke noundef ptr %i.fe(ptr noundef nonnull align 8 dereferenceable(8) %i.fb, i32 noundef %i.eu, i32 noundef %i.ez, i32 noundef 0)
          to label %_ZN8LightGBM12FeatureGroup20FeatureGroupIteratorEv.exit unwind label %.loopexit.split-lp134.loopexit.split-lp, !inline_history !354

_ZN8LightGBM12FeatureGroup20FeatureGroupIteratorEv.exit: ; preds = %.lr.ph193, %bb.u
  %.0.i = phi ptr [ null, %.lr.ph193 ], [ %i.ff, %bb.u ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 3 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !192 ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 3 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !195
  %.not.i = icmp eq ptr %i.fh, %i.fj
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN8LightGBM12FeatureGroup20FeatureGroupIteratorEv.exit
  store ptr %.0.i, ptr %i.fh, align 8, !tbaa !194
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.fk, ptr %i.fg, align 8, !tbaa !192
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.w:                                             ; preds = %_ZN8LightGBM12FeatureGroup20FeatureGroupIteratorEv.exit
  %i.fl = load ptr, ptr %i.ej, align 8, !tbaa !191 ; 10 uses
  %i.fm = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fn = ptrtoint ptr %i.fl to i64               ; 3 uses
  %i.fo = sub i64 %i.fm, %i.fn                    ; 3 uses
  %i.fp = icmp eq i64 %i.fo, 9223372036854775800
  br i1 %i.fp, label %bb.x, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.noexc67 unwind label %.loopexit.split-lp134.loopexit.split-lp

.noexc67:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.fq = ashr exact i64 %i.fo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fq, i64 1)
  %i.fr = add nsw i64 %.sroa.speculated.i.i.i, %i.fq ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.fq
  %i.ft = call i64 @llvm.umin.i64(i64 %i.fr, i64 1152921504606846975)
  %i.fu = select i1 %i.fs, i64 1152921504606846975, i64 %i.ft ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fu, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fv = shl nuw nsw i64 %i.fu, 3
  %i.fw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #37
          to label %.noexc68 unwind label %.loopexit.split-lp134.loopexit.split-lp ; 10 uses

.noexc68:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fo
  store ptr %.0.i, ptr %i.fx, align 8, !tbaa !194
  %.not10.i.i.i.i.i = icmp eq ptr %i.fl, %i.fh
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc68
  %i.fy = add i64 %i.fm, -8
  %i.fz = sub i64 %i.fy, %i.fn                    ; 3 uses
  %i.ga = lshr i64 %i.fz, 3
  %i.gb = add nuw nsw i64 %i.ga, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fz, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader343, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.gc = and i64 %i.fz, -8
  %i.gd = add i64 %i.gc, 8                        ; 2 uses
  %i.ge = getelementptr i8, ptr %i.fw, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.fl, i64 %i.gd
  %bound0 = icmp ult ptr %i.fw, %i.gf
  %bound1 = icmp ult ptr %i.fl, %i.ge
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader343, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gb, 4611686018427387900     ; 3 uses
  %i.gg = shl i64 %n.vec, 3                       ; 2 uses
  %i.gh = getelementptr i8, ptr %i.fw, i64 %i.gg  ; 2 uses
  %i.gi = getelementptr i8, ptr %i.fl, i64 %i.gg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fw, i64 %i.gj ; 2 uses
  %next.gep340 = getelementptr i8, ptr %i.fl, i64 %i.gj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.gk = getelementptr i8, ptr %next.gep340, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep340, align 8, !tbaa !194, !alias.scope !367
  %wide.load341 = load <2 x i64>, ptr %i.gk, align 8, !tbaa !194, !alias.scope !367
  %i.gl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !194, !alias.scope !368, !noalias !369
  store <2 x i64> %wide.load341, ptr %i.gl, align 8, !tbaa !194, !alias.scope !368, !noalias !369
  %6 = getelementptr i8, ptr %next.gep340, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep340, align 8, !tbaa !194, !alias.scope !367
  store <2 x ptr> splat (ptr null), ptr %6, align 8, !tbaa !194, !alias.scope !367
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gm = icmp eq i64 %index.next, %n.vec
  br i1 %i.gm, label %middle.block, label %vector.body, !llvm.loop !361

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader343

.lr.ph.i.i.i.i.i.preheader343:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.fw, %vector.memcheck ], [ %i.fw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gh, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.fl, %vector.memcheck ], [ %i.fl, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader343, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gp, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader343 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.go, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader343 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.gn = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !194, !alias.scope !366
  store i64 %i.gn, ptr %.012.i.i.i.i.i, align 8, !tbaa !194, !alias.scope !365
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !194, !alias.scope !366
  %i.go = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.go, %i.fh
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !362

_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc68
  %.0.lcssa.i.i.i.i.i66 = phi ptr [ %i.fw, %.noexc68 ], [ %i.gh, %middle.block ], [ %i.gp, %.lr.ph.i.i.i.i.i ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i66, i64 8
  %.not.i23.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.gr = load ptr, ptr %i.fi, align 8, !tbaa !195
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = sub i64 %i.gs, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.gt) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.fw, ptr %i.ej, align 8, !tbaa !191
  store ptr %i.gq, ptr %i.fg, align 8, !tbaa !192
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fu
  store ptr %i.gu, ptr %i.fi, align 8, !tbaa !195
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.v
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %i.gv = load i32, ptr %i.b, align 4, !tbaa !138
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next246, %i.gw
  br i1 %i.gx, label %.lr.ph193, label %.loopexit132, !llvm.loop !363

.loopexit.split-lp134.loopexit.split-lp:          ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.u, %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit132:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit64, %._crit_edge200
  %.sroa.0.3 = phi ptr [ %.sroa.0.1.lcssa, %._crit_edge200 ], [ %.sroa.0.7, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit64 ], [ %.sroa.0.7, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 2 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.1.lcssa, %._crit_edge200 ], [ %.sroa.14.4, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit64 ], [ %.sroa.14.4, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 2 uses
  %.sroa.24.3 = phi ptr [ %.sroa.24.1.lcssa, %._crit_edge200 ], [ %.sroa.24.7, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit64 ], [ %.sroa.24.7, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 2 uses
  %i.gy = load i32, ptr %i.c, align 4, !tbaa !138
  %i.gz = add nsw i32 %i.gy, 1                    ; 3 uses
  store i32 %i.gz, ptr %i.c, align 4, !tbaa !138
  %i.ha = load i32, ptr %i.w, align 8, !tbaa !95
  %i.hb = icmp slt i32 %i.gz, %i.ha
  br i1 %i.hb, label %bb.e, label %._crit_edge210, !llvm.loop !364

bb.z:                                             ; preds = %.loopexit.split-lp134.loopexit.split-lp, %.loopexit.split-lp139.loopexit.split-lp, %bb.n
  %.sroa.0.4 = phi ptr [ %.sroa.0.2, %bb.n ], [ %.sroa.0.0204, %.loopexit.split-lp139.loopexit.split-lp ], [ %.sroa.0.7, %.loopexit.split-lp134.loopexit.split-lp ]
  %.sroa.24.4 = phi ptr [ %.sroa.24.2, %bb.n ], [ %.sroa.24.0206, %.loopexit.split-lp139.loopexit.split-lp ], [ %.sroa.24.7, %.loopexit.split-lp134.loopexit.split-lp ]
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %bb.n ], [ %lpad.loopexit.split-lp348, %.loopexit.split-lp139.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp134.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit89

bb.aa:                                            ; preds = %._crit_edge210
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.33, i32 noundef 605)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i, %_ZNSt6vectorIjSaIjEED2Ev.exit81, %bb.ad, %bb.ac, %bb.aa
  %.sroa.0117.0 = phi ptr [ %i.hk, %_ZNSt6vectorIjSaIjEED2Ev.exit81 ], [ %i.hk, %.noexc.i.i ], [ %i.hk, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.ad ], [ null, %bb.ac ], [ null, %bb.aa ]
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit89

bb.ac:                                            ; preds = %bb.aa, %._crit_edge210
  %i.hd = fsub double 1.000000e+00, %i.bu         ; 2 uses
  invoke void (ptr, ...) @_ZN8LightGBM3Log5DebugEPKcz(ptr noundef nonnull @.str.53, double noundef %i.hd)
          to label %bb.ad unwind label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !117
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !184
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -4
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !138
  %i.hk = invoke noundef ptr @_ZN8LightGBM11MultiValBin17CreateMultiValBinEiiidRKSt6vectorIjSaIjEE(i32 noundef %i.hf, i32 noundef %i.hj, i32 noundef %i.bz, double noundef %i.hd, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EE5resetEPS1_.exit unwind label %bb.ab ; 9 uses

_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.ad
  %i.hl = load i32, ptr %i.he, align 8, !tbaa !117
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not.i.i.i.i70 = icmp eq ptr %.sroa.14.0.lcssa, %.sroa.0.0.lcssa
  br i1 %.not.i.i.i.i70, label %.thread, label %bb.ae

.thread:                                          ; preds = %_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hn = getelementptr inbounds i8, ptr null, i64 %i.bx ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr %i.hn, ptr %i.ho, align 8, !tbaa !119
  br label %bb.ai

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.hp = icmp ugt i64 %i.bx, 9223372036854775804
  br i1 %i.hp, label %.noexc.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, !prof !185

.noexc.i.i:                                       ; preds = %bb.ae
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc71 unwind label %bb.ab

.noexc71:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ae
  %i.hq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #37
          to label %.noexc72 unwind label %bb.ab  ; 5 uses

.noexc72:                                         ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.hq, ptr %4, align 8, !tbaa !118
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !186
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.bx ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !119
  %i.hu = icmp samesign ugt i64 %i.bx, 4
  br i1 %i.hu, label %bb.af, label %bb.ag, !prof !187

bb.af:                                            ; preds = %.noexc72
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hq, ptr align 4 %.sroa.0.0.lcssa, i64 %i.bx, i1 false)
  br label %bb.ai

bb.ag:                                            ; preds = %.noexc72
  %i.hv = icmp eq i64 %i.bx, 4
  br i1 %i.hv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hw = load i32, ptr %.sroa.0.0.lcssa, align 4, !tbaa !138
  store i32 %i.hw, ptr %i.hq, align 4, !tbaa !138
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %.thread
  %i.hx = phi ptr [ %i.ht, %bb.af ], [ %i.ht, %bb.ag ], [ %i.ht, %bb.ah ], [ %i.ho, %.thread ] ; 2 uses
  %i.hy = phi ptr [ %i.hs, %bb.af ], [ %i.hs, %bb.ag ], [ %i.hs, %bb.ah ], [ %i.hn, %.thread ]
  %i.hz = phi ptr [ %i.hr, %bb.af ], [ %i.hr, %bb.ag ], [ %i.hr, %bb.ah ], [ %i.hm, %.thread ]
  store ptr %i.hy, ptr %i.hz, align 8, !tbaa !186
  %i.ia = load ptr, ptr %i.hg, align 8, !tbaa !186 ; 2 uses
  %i.ib = load ptr, ptr %1, align 8, !tbaa !118   ; 3 uses
  %i.ic = ptrtoint ptr %i.ia to i64               ; 2 uses
  %i.id = ptrtoint ptr %i.ib to i64               ; 2 uses
  %i.ie = sub i64 %i.ic, %i.id                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i73 = icmp eq ptr %i.ia, %i.ib
  br i1 %.not.i.i.i.i73, label %.noexc77, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.if = icmp ugt i64 %i.ie, 9223372036854775804
  br i1 %i.if, label %.noexc.i.i75, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i74, !prof !185

.noexc.i.i75:                                     ; preds = %bb.aj
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc76 unwind label %bb.av

.noexc76:                                         ; preds = %.noexc.i.i75
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i74: ; preds = %bb.aj
  %i.ig = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #37
          to label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i74..noexc77_crit_edge unwind label %bb.av

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i74..noexc77_crit_edge: ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i74
  %.pre248 = load ptr, ptr %1, align 8, !tbaa !184 ; 2 uses
  %.pre249 = load ptr, ptr %i.hg, align 8, !tbaa !184
  %.pre250 = ptrtoint ptr %.pre249 to i64
  %.pre251 = ptrtoint ptr %.pre248 to i64
  br label %.noexc77

.noexc77:                                         ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i74..noexc77_crit_edge, %bb.ai
  %.pre-phi252 = phi i64 [ %.pre251, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i74..noexc77_crit_edge ], [ %i.id, %bb.ai ]
  %.pre-phi = phi i64 [ %.pre250, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i74..noexc77_crit_edge ], [ %i.ic, %bb.ai ]
  %i.ih = phi ptr [ %.pre248, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i74..noexc77_crit_edge ], [ %i.ib, %bb.ai ] ; 2 uses
  %i.ii = phi ptr [ %i.ig, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i74..noexc77_crit_edge ], [ null, %bb.ai ] ; 5 uses
  store ptr %i.ii, ptr %5, align 8, !tbaa !118
  %i.ij = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ie
  %i.il = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ik, ptr %i.il, align 8, !tbaa !119
  %i.im = sub i64 %.pre-phi, %.pre-phi252         ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN8LightGBM7Dataset9ConstructEPSt6vectorISt10unique_ptrINS_9BinMapperESt14default_deleteIS3_EESaIS6_EEiRKS1_IS1_IdSaIdEESaISB_EEPPiPPdPKiimRKNS_6ConfigE:bb.a
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br label %bb.az

._crit_edge409:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit223, %_ZNSt6vectorIiSaIiEE6resizeEm.exit183
  %i.kw = getelementptr inbounds nuw i8, ptr %9, i64 856 ; 3 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !184 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %9, i64 864 ; 3 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !184 ; 3 uses
  %i.la = icmp eq ptr %i.kx, %i.kz
  br i1 %i.la, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPKiS1_EEvEEvT_S8_.exit, label %bb.cd

bb.az:                                            ; preds = %.lr.ph408, %_ZNSt6vectorIiSaIiEED2Ev.exit223
  %indvars.iv469 = phi i64 [ 0, %.lr.ph408 ], [ %indvars.iv.next470, %_ZNSt6vectorIiSaIiEED2Ev.exit223 ] ; 8 uses
  %.0315406 = phi i64 [ 0, %.lr.ph408 ], [ %i.rg, %_ZNSt6vectorIiSaIiEED2Ev.exit223 ]
  %.0316405 = phi i32 [ 0, %.lr.ph408 ], [ %.1.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit223 ] ; 3 uses
  %i.lb = load ptr, ptr %11, align 16, !tbaa !273
  %i.lc = getelementptr inbounds nuw [24 x i8], ptr %i.lb, i64 %indvars.iv469 ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !205 ; 2 uses
  %i.lf = load ptr, ptr %i.lc, align 8, !tbaa !200 ; 3 uses
  %i.lg = ptrtoint ptr %i.le to i64               ; 2 uses
  %i.lh = ptrtoint ptr %i.lf to i64               ; 2 uses
  %i.li = sub i64 %i.lg, %i.lh                    ; 4 uses
  %.not.i.i.i.i184 = icmp eq ptr %i.le, %i.lf
  br i1 %.not.i.i.i.i184, label %.noexc186, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lj = icmp ugt i64 %i.li, 9223372036854775804
  br i1 %i.lj, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !185

.noexc.i.i:                                       ; preds = %bb.ba
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc185 unwind label %.loopexit.split-lp331.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc185:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ba
  %i.lk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.li) #37
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc186_crit_edge unwind label %.loopexit.split-lp331.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc186_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %.pre484 = load ptr, ptr %i.lc, align 8, !tbaa !184 ; 2 uses
  %.pre485 = load ptr, ptr %i.ld, align 8, !tbaa !184
  %.pre506 = ptrtoint ptr %.pre485 to i64
  %.pre508 = ptrtoint ptr %.pre484 to i64
  br label %.noexc186

.noexc186:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc186_crit_edge, %bb.az
  %.pre-phi509 = phi i64 [ %.pre508, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc186_crit_edge ], [ %i.lh, %bb.az ]
  %.pre-phi507 = phi i64 [ %.pre506, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc186_crit_edge ], [ %i.lg, %bb.az ]
  %i.ll = phi ptr [ %.pre484, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc186_crit_edge ], [ %i.lf, %bb.az ] ; 2 uses
  %i.lm = phi ptr [ %i.lk, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc186_crit_edge ], [ null, %bb.az ] ; 7 uses
  %i.ln = sub i64 %.pre-phi507, %.pre-phi509      ; 4 uses
  %i.lo = icmp sgt i64 %i.ln, 4
  br i1 %i.lo, label %bb.bb, label %bb.bc, !prof !188

bb.bb:                                            ; preds = %.noexc186
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.lm, ptr align 4 %i.ll, i64 %i.ln, i1 false)
  br label %bb.be

bb.bc:                                            ; preds = %.noexc186
  %i.lp = icmp eq i64 %i.ln, 4
  br i1 %i.lp, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lq = load i32, ptr %i.ll, align 4, !tbaa !138
  store i32 %i.lq, ptr %i.lm, align 4, !tbaa !138
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.lr = lshr exact i64 %i.ln, 2                 ; 2 uses
  %i.ls = trunc i64 %i.lr to i32                  ; 3 uses
  %i.lt = load ptr, ptr %i.jm, align 8, !tbaa !200
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv469
  store i32 %.0316405, ptr %i.lu, align 4, !tbaa !138
  %i.lv = load ptr, ptr %i.kb, align 8, !tbaa !200
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %indvars.iv469
  store i32 %i.ls, ptr %i.lw, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.lx = icmp sgt i32 %i.ls, 0
  br i1 %i.lx, label %.lr.ph402.preheader, label %._crit_edge403

.lr.ph402.preheader:                              ; preds = %bb.be
  %i.ly = sext i32 %.0316405 to i64
  %wide.trip.count = and i64 %i.lr, 2147483647
  %i.lz = trunc nuw nsw i64 %indvars.iv469 to i32
  br label %.lr.ph402

._crit_edge403.loopexit:                          ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ma = trunc nsw i64 %indvars.iv.next465 to i32
  br label %._crit_edge403

._crit_edge403:                                   ; preds = %._crit_edge403.loopexit, %bb.be
  %.1.lcssa = phi i32 [ %.0316405, %bb.be ], [ %i.ma, %._crit_edge403.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.mb = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #37
          to label %bb.bo unwind label %bb.bz     ; 4 uses

.lr.ph402:                                        ; preds = %.lr.ph402.preheader, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %indvars.iv464 = phi i64 [ %i.ly, %.lr.ph402.preheader ], [ %indvars.iv.next465, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %indvars.iv462 = phi i64 [ 0, %.lr.ph402.preheader ], [ %indvars.iv.next463, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv462
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !138 ; 2 uses
  %i.me = sext i32 %i.md to i64                   ; 2 uses
  %i.mf = load ptr, ptr %i.gg, align 8, !tbaa !200
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.me
  %i.mh = trunc nsw i64 %indvars.iv464 to i32     ; 3 uses
  store i32 %i.mh, ptr %i.mg, align 4, !tbaa !138
  %i.mi = load ptr, ptr %i.gw, align 8, !tbaa !200
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv464
  store i32 %i.md, ptr %i.mj, align 4, !tbaa !138
  %i.mk = load ptr, ptr %i.hk, align 8, !tbaa !200
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv464
  store i32 %i.lz, ptr %i.ml, align 4, !tbaa !138
  %i.mm = load ptr, ptr %i.hw, align 8, !tbaa !200
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %indvars.iv464
  %i.mo = trunc nuw nsw i64 %indvars.iv462 to i32
  store i32 %i.mo, ptr %i.mn, align 4, !tbaa !138
  %i.mp = load ptr, ptr %1, align 8, !tbaa !168
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %i.me ; 2 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !170 ; 2 uses
  store ptr null, ptr %i.mq, align 8, !tbaa !170
  %i.ms = load ptr, ptr %i.kp, align 8, !tbaa !268 ; 7 uses
  %i.mt = load ptr, ptr %i.kq, align 8, !tbaa !269
  %.not.i187 = icmp eq ptr %i.ms, %i.mt
  br i1 %.not.i187, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph402
  store ptr %i.mr, ptr %i.ms, align 8, !tbaa !170
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  store ptr %i.mu, ptr %i.kp, align 8, !tbaa !268
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.bg:                                            ; preds = %.lr.ph402
  %i.mv = load ptr, ptr %18, align 8, !tbaa !168  ; 10 uses
  %i.mw = ptrtoint ptr %i.ms to i64               ; 2 uses
  %i.mx = ptrtoint ptr %i.mv to i64               ; 3 uses
  %i.my = sub i64 %i.mw, %i.mx                    ; 3 uses
  %i.mz = icmp eq i64 %i.my, 9223372036854775800
  br i1 %i.mz, label %bb.bh, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.noexc192 unwind label %.loopexit.split-lp.thread.loopexit.split-lp

.noexc192:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bg
  %i.na = ashr exact i64 %i.my, 3                 ; 3 uses
  %.sroa.speculated.i.i.i188 = call i64 @llvm.umax.i64(i64 %i.na, i64 1)
  %i.nb = add nsw i64 %.sroa.speculated.i.i.i188, %i.na ; 2 uses
  %i.nc = icmp ult i64 %i.nb, %i.na
  %i.nd = call i64 @llvm.umin.i64(i64 %i.nb, i64 1152921504606846975)
  %i.ne = select i1 %i.nc, i64 1152921504606846975, i64 %i.nd ; 3 uses
  %.not.i.i.i189 = icmp ne i64 %i.ne, 0
  call void @llvm.assume(i1 %.not.i.i.i189)
  %i.nf = shl nuw nsw i64 %i.ne, 3
  %i.ng = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nf) #37
          to label %.noexc193 unwind label %.loopexit.split-lp.thread.loopexit.split-lp ; 10 uses

.noexc193:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.my
  store ptr %i.mr, ptr %i.nh, align 8, !tbaa !170
  %.not10.i.i.i.i.i = icmp eq ptr %i.mv, %i.ms
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i190.preheader

.lr.ph.i.i.i.i.i190.preheader:                    ; preds = %.noexc193
  %i.ni = add i64 %i.mw, -8
  %i.nj = sub i64 %i.ni, %i.mx                    ; 3 uses
  %i.nk = lshr i64 %i.nj, 3
  %i.nl = add nuw nsw i64 %i.nk, 1                ; 2 uses
  %min.iters.check727 = icmp ult i64 %i.nj, 56
  br i1 %min.iters.check727, label %.lr.ph.i.i.i.i.i190.preheader747, label %vector.memcheck728

vector.memcheck728:                               ; preds = %.lr.ph.i.i.i.i.i190.preheader
  %i.nm = and i64 %i.nj, -8
  %i.nn = add i64 %i.nm, 8                        ; 2 uses
  %i.no = getelementptr i8, ptr %i.ng, i64 %i.nn
  %i.np = getelementptr i8, ptr %i.mv, i64 %i.nn
  %bound0729 = icmp ult ptr %i.ng, %i.np
  %bound1730 = icmp ult ptr %i.mv, %i.no
  %found.conflict731 = and i1 %bound0729, %bound1730
  br i1 %found.conflict731, label %.lr.ph.i.i.i.i.i190.preheader747, label %vector.ph732

vector.ph732:                                     ; preds = %vector.memcheck728
  %n.vec733 = and i64 %i.nl, 4611686018427387900  ; 3 uses
  %i.nq = shl i64 %n.vec733, 3                    ; 2 uses
  %i.nr = getelementptr i8, ptr %i.ng, i64 %i.nq  ; 2 uses
  %i.ns = getelementptr i8, ptr %i.mv, i64 %i.nq
  br label %vector.body734

vector.body734:                                   ; preds = %vector.body734, %vector.ph732
  %index735 = phi i64 [ 0, %vector.ph732 ], [ %index.next740, %vector.body734 ] ; 2 uses
  %i.nt = shl i64 %index735, 3                    ; 2 uses
  %next.gep736 = getelementptr i8, ptr %i.ng, i64 %i.nt ; 2 uses
  %next.gep737 = getelementptr i8, ptr %i.mv, i64 %i.nt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  call void @llvm.experimental.noalias.scope.decl(metadata !585)
  %i.nu = getelementptr i8, ptr %next.gep737, i64 16
  %wide.load738 = load <2 x i64>, ptr %next.gep737, align 8, !tbaa !170, !alias.scope !586
  %wide.load739 = load <2 x i64>, ptr %i.nu, align 8, !tbaa !170, !alias.scope !586
  %i.nv = getelementptr i8, ptr %next.gep736, i64 16
  store <2 x i64> %wide.load738, ptr %next.gep736, align 8, !tbaa !170, !alias.scope !587, !noalias !588
  store <2 x i64> %wide.load739, ptr %i.nv, align 8, !tbaa !170, !alias.scope !587, !noalias !588
  %20 = getelementptr i8, ptr %next.gep737, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep737, align 8, !tbaa !170, !alias.scope !586
  store <2 x ptr> splat (ptr null), ptr %20, align 8, !tbaa !170, !alias.scope !586
  %index.next740 = add nuw i64 %index735, 4       ; 2 uses
  %i.nw = icmp eq i64 %index.next740, %n.vec733
  br i1 %i.nw, label %middle.block741, label %vector.body734, !llvm.loop !559

middle.block741:                                  ; preds = %vector.body734
  %cmp.n742 = icmp eq i64 %i.nl, %n.vec733
  br i1 %cmp.n742, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i190.preheader747

.lr.ph.i.i.i.i.i190.preheader747:                 ; preds = %vector.memcheck728, %.lr.ph.i.i.i.i.i190.preheader, %middle.block741
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ng, %vector.memcheck728 ], [ %i.ng, %.lr.ph.i.i.i.i.i190.preheader ], [ %i.nr, %middle.block741 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.mv, %vector.memcheck728 ], [ %i.mv, %.lr.ph.i.i.i.i.i190.preheader ], [ %i.ns, %middle.block741 ]
  br label %.lr.ph.i.i.i.i.i190

.lr.ph.i.i.i.i.i190:                              ; preds = %.lr.ph.i.i.i.i.i190.preheader747, %.lr.ph.i.i.i.i.i190
  %.012.i.i.i.i.i = phi ptr [ %i.nz, %.lr.ph.i.i.i.i.i190 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i190.preheader747 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ny, %.lr.ph.i.i.i.i.i190 ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i190.preheader747 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  call void @llvm.experimental.noalias.scope.decl(metadata !585)
  %i.nx = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !585
  store i64 %i.nx, ptr %.012.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !584
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !585
  %i.ny = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i191 = icmp eq ptr %i.ny, %i.ms
  br i1 %.not.i.i.i.i.i191, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i190, !llvm.loop !560

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i190, %middle.block741, %.noexc193
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ng, %.noexc193 ], [ %i.nr, %middle.block741 ], [ %i.nz, %.lr.ph.i.i.i.i.i190 ] ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.mv, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.ob = load ptr, ptr %i.kq, align 8, !tbaa !269
  %i.oc = ptrtoint ptr %i.ob to i64
  %i.od = sub i64 %i.oc, %i.mx
  call void @_ZdlPvm(ptr noundef nonnull %i.mv, i64 noundef %i.od) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.bi, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.ng, ptr %18, align 8, !tbaa !168
  store ptr %i.oa, ptr %i.kp, align 8, !tbaa !268
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %i.ne
  store ptr %i.oe, ptr %i.kq, align 8, !tbaa !269
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.bf
  %i.of = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.ms, %bb.bf ]
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !170 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 152
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !278
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 156
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !182
  %.not = icmp eq i32 %i.oi, %i.ok
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.ol = load ptr, ptr %i.ik, align 8, !tbaa !205 ; 4 uses
  %i.om = load ptr, ptr %i.kr, align 8, !tbaa !201
  %.not.i194 = icmp eq ptr %i.ol, %i.om
  br i1 %.not.i194, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store i32 %i.mh, ptr %i.ol, align 4, !tbaa !138
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 4
  store ptr %i.on, ptr %i.ik, align 8, !tbaa !205
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.bl:                                            ; preds = %bb.bj
  %i.oo = load ptr, ptr %i.ii, align 8, !tbaa !200 ; 4 uses
  %i.op = ptrtoint ptr %i.ol to i64
  %i.oq = ptrtoint ptr %i.oo to i64               ; 2 uses
  %i.or = sub i64 %i.op, %i.oq                    ; 5 uses
  %i.os = icmp eq i64 %i.or, 9223372036854775804
  br i1 %i.os, label %.invoke745, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i195

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i195: ; preds = %bb.bl
  %i.ot = ashr exact i64 %i.or, 2                 ; 3 uses
  %.sroa.speculated.i.i.i196 = call i64 @llvm.umax.i64(i64 %i.ot, i64 1)
  %i.ou = add nsw i64 %.sroa.speculated.i.i.i196, %i.ot ; 2 uses
  %i.ov = icmp ult i64 %i.ou, %i.ot
  %i.ow = call i64 @llvm.umin.i64(i64 %i.ou, i64 2305843009213693951)
  %i.ox = select i1 %i.ov, i64 2305843009213693951, i64 %i.ow ; 3 uses
  %.not.i.i.i197 = icmp ne i64 %i.ox, 0
  call void @llvm.assume(i1 %.not.i.i.i197)
  %i.oy = shl nuw nsw i64 %i.ox, 2
  %i.oz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oy) #37
          to label %.noexc201 unwind label %.loopexit.split-lp.thread.loopexit.split-lp ; 4 uses

.noexc201:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i195
  %i.pa = getelementptr inbounds i8, ptr %i.oz, i64 %i.or ; 2 uses
  store i32 %i.mh, ptr %i.pa, align 4, !tbaa !138
  %i.pb = icmp sgt i64 %i.or, 0
  br i1 %i.pb, label %bb.bm, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i198

bb.bm:                                            ; preds = %.noexc201
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.oz, ptr align 4 %i.oo, i64 %i.or, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i198

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i198: ; preds = %bb.bm, %.noexc201
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 4
  %.not.i17.i.i199 = icmp eq ptr %i.oo, null
  br i1 %.not.i17.i.i199, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i198
  %i.pd = load ptr, ptr %i.kr, align 8, !tbaa !201
  %i.pe = ptrtoint ptr %i.pd to i64
  %i.pf = sub i64 %i.pe, %i.oq
  call void @_ZdlPvm(ptr noundef nonnull %i.oo, i64 noundef %i.pf) #36
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.bn, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i198
  store ptr %i.oz, ptr %i.ii, align 8, !tbaa !200
  store ptr %i.pc, ptr %i.ik, align 8, !tbaa !205
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.ox
  store ptr %i.pg, ptr %i.kr, align 8, !tbaa !201
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit.split-lp.thread.loopexit.split-lp:      ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i195, %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.cc

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i206, %.invoke745
  %lpad.loopexit.split-lp757 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.bk, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %indvars.iv.next465 = add nsw i64 %indvars.iv464, 1 ; 2 uses
  %indvars.iv.next463 = add nuw nsw i64 %indvars.iv462, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next463, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge403.loopexit, label %.lr.ph402, !llvm.loop !561

bb.bo:                                            ; preds = %._crit_edge403
  %i.ph = load ptr, ptr %14, align 8, !tbaa !207
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 %indvars.iv469
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !48
  %i.pk = load i32, ptr %i.kt, align 8, !tbaa !117
  %i.pl = trunc nuw nsw i64 %indvars.iv469 to i32
  invoke void @_ZN8LightGBM12FeatureGroupC2EiaPSt6vectorISt10unique_ptrINS_9BinMapperESt14default_deleteIS3_EESaIS6_EEii(ptr noundef nonnull align 8 dereferenceable(96) %i.mb, i32 noundef %i.ls, i8 noundef signext %i.pj, ptr noundef nonnull %18, i32 noundef %i.pk, i32 noundef %i.pl)
          to label %bb.bp unwind label %bb.ca

bb.bp:                                            ; preds = %bb.bo
  store ptr %i.mb, ptr %19, align 8, !tbaa !141
  %i.pm = load ptr, ptr %i.ku, align 8, !tbaa !263 ; 6 uses
  %i.pn = load ptr, ptr %i.kv, align 8, !tbaa !264
  %.not.i202 = icmp eq ptr %i.pm, %i.pn
  %i.po = ptrtoint ptr %i.mb to i64               ; 2 uses
  br i1 %.not.i202, label %bb.bq, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread: ; preds = %bb.bp
  store i64 %i.po, ptr %i.pm, align 8, !tbaa !141
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  store ptr %i.pp, ptr %i.ku, align 8, !tbaa !263
  %.pre486 = load ptr, ptr %i.ks, align 8, !tbaa !139
  br label %_ZNSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS1_EED2Ev.exit

bb.bq:                                            ; preds = %bb.bp
  %i.pq = load ptr, ptr %i.ks, align 8, !tbaa !139 ; 10 uses
  %i.pr = ptrtoint ptr %i.pm to i64               ; 2 uses
  %i.ps = ptrtoint ptr %i.pq to i64               ; 3 uses
  %i.pt = sub i64 %i.pr, %i.ps                    ; 3 uses
  %i.pu = icmp eq i64 %i.pt, 9223372036854775800
  br i1 %i.pu, label %bb.br, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.noexc267 unwind label %.loopexit.split-lp336.loopexit.split-lp

.noexc267:                                        ; preds = %bb.br
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bq
  %i.pv = ashr exact i64 %i.pt, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.pv, i64 1)
  %i.pw = add nsw i64 %.sroa.speculated.i.i, %i.pv ; 2 uses
  %i.px = icmp ult i64 %i.pw, %i.pv
  %i.py = call i64 @llvm.umin.i64(i64 %i.pw, i64 1152921504606846975)
  %i.pz = select i1 %i.px, i64 1152921504606846975, i64 %i.py ; 3 uses
  %.not.i.i265 = icmp ne i64 %i.pz, 0
  call void @llvm.assume(i1 %.not.i.i265)
  %i.qa = shl nuw nsw i64 %i.pz, 3
  %i.qb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qa) #37
          to label %.noexc268 unwind label %.loopexit.split-lp336.loopexit.split-lp ; 11 uses

.noexc268:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 %i.pt
  store i64 %i.po, ptr %i.qc, align 8, !tbaa !141
  %.not10.i.i.i.i = icmp eq ptr %i.pq, %i.pm
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc268
  %i.qd = add i64 %i.pr, -8
  %i.qe = sub i64 %i.qd, %i.ps                    ; 3 uses
  %i.qf = lshr i64 %i.qe, 3
  %i.qg = add nuw nsw i64 %i.qf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.qe, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader748, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.qh = and i64 %i.qe, -8
  %i.qi = add i64 %i.qh, 8                        ; 2 uses
  %i.qj = getelementptr i8, ptr %i.qb, i64 %i.qi
  %i.qk = getelementptr i8, ptr %i.pq, i64 %i.qi
  %bound0 = icmp ult ptr %i.qb, %i.qk
  %bound1 = icmp ult ptr %i.pq, %i.qj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader748, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qg, 4611686018427387900     ; 3 uses
  %i.ql = shl i64 %n.vec, 3                       ; 2 uses
  %i.qm = getelementptr i8, ptr %i.qb, i64 %i.ql  ; 2 uses
  %i.qn = getelementptr i8, ptr %i.pq, i64 %i.ql
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.qo = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.qb, i64 %i.qo ; 2 uses
  %next.gep716 = getelementptr i8, ptr %i.pq, i64 %i.qo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.qp = getelementptr i8, ptr %next.gep716, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep716, align 8, !tbaa !141, !alias.scope !591
  %wide.load717 = load <2 x i64>, ptr %i.qp, align 8, !tbaa !141, !alias.scope !591
  %i.qq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !141, !alias.scope !592, !noalias !593
  store <2 x i64> %wide.load717, ptr %i.qq, align 8, !tbaa !141, !alias.scope !592, !noalias !593
  %21 = getelementptr i8, ptr %next.gep716, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep716, align 8, !tbaa !141, !alias.scope !591
  store <2 x ptr> splat (ptr null), ptr %21, align 8, !tbaa !141, !alias.scope !591
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qr = icmp eq i64 %index.next, %n.vec
  br i1 %i.qr, label %middle.block, label %vector.body, !llvm.loop !568

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qg, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader748

.lr.ph.i.i.i.i.preheader748:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.qb, %vector.memcheck ], [ %i.qb, %.lr.ph.i.i.i.i.preheader ], [ %i.qm, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.pq, %vector.memcheck ], [ %i.pq, %.lr.ph.i.i.i.i.preheader ], [ %i.qn, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader748, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.qu, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader748 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.qt, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader748 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.qs = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !141, !alias.scope !590
  store i64 %i.qs, ptr %.012.i.i.i.i, align 8, !tbaa !141, !alias.scope !589
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !141, !alias.scope !590
  %i.qt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i266 = icmp eq ptr %i.qt, %i.pm
  br i1 %.not.i.i.i.i266, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !569

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc268
  %.0.lcssa.i.i.i.i = phi ptr [ %i.qb, %.noexc268 ], [ %i.qm, %middle.block ], [ %i.qu, %.lr.ph.i.i.i.i ]
  %i.qv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.pq, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.qw = load ptr, ptr %i.kv, align 8, !tbaa !264
  %i.qx = ptrtoint ptr %i.qw to i64
  %i.qy = sub i64 %i.qx, %i.ps
  call void @_ZdlPvm(ptr noundef nonnull %i.pq, i64 noundef %i.qy) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.bs
  store ptr %i.qb, ptr %i.ks, align 8, !tbaa !139
  store ptr %i.qv, ptr %i.ku, align 8, !tbaa !263
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %i.pz
  store ptr %i.qz, ptr %i.kv, align 8, !tbaa !264
  br label %_ZNSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread
  %i.ra = phi ptr [ %.pre486, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread ], [ %i.qb, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.ra, i64 %indvars.iv469
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !141
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 92
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !216
  %i.rf = sext i32 %i.re to i64
  %i.rg = add i64 %.0315406, %i.rf                ; 3 uses
  %i.rh = load ptr, ptr %i.io, align 8, !tbaa !270 ; 4 uses
  %i.ri = load ptr, ptr %i.ir, align 8, !tbaa !249
  %.not.i205 = icmp eq ptr %i.rh, %i.ri
  br i1 %.not.i205, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS1_EED2Ev.exit
  store i64 %i.rg, ptr %i.rh, align 8, !tbaa !45
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  store ptr %i.rj, ptr %i.io, align 8, !tbaa !270
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit214

bb.bu:                                            ; preds = %_ZNSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS1_EED2Ev.exit
  %i.rk = load ptr, ptr %i.im, align 8, !tbaa !210 ; 4 uses
  %i.rl = ptrtoint ptr %i.rh to i64
  %i.rm = ptrtoint ptr %i.rk to i64               ; 2 uses
  %i.rn = sub i64 %i.rl, %i.rm                    ; 5 uses
  %i.ro = icmp eq i64 %i.rn, 9223372036854775800
  br i1 %i.ro, label %.invoke745, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i206

.invoke745:                                       ; preds = %bb.bu, %bb.bl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.cont746 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont746:                                         ; preds = %.invoke745
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i206: ; preds = %bb.bu
  %i.rp = ashr exact i64 %i.rn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i207 = call i64 @llvm.umax.i64(i64 %i.rp, i64 1)
  %i.rq = add nsw i64 %.sroa.speculated.i.i.i207, %i.rp ; 2 uses
  %i.rr = icmp ult i64 %i.rq, %i.rp
  %i.rs = call i64 @llvm.umin.i64(i64 %i.rq, i64 1152921504606846975)
  %i.rt = select i1 %i.rr, i64 1152921504606846975, i64 %i.rs ; 3 uses
  %.not.i.i.i208 = icmp ne i64 %i.rt, 0
  call void @llvm.assume(i1 %.not.i.i.i208)
  %i.ru = shl nuw nsw i64 %i.rt, 3
  %i.rv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ru) #37
          to label %.noexc213 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc213:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i206
  %i.rw = getelementptr inbounds i8, ptr %i.rv, i64 %i.rn ; 2 uses
  store i64 %i.rg, ptr %i.rw, align 8, !tbaa !45
  %i.rx = icmp sgt i64 %i.rn, 0
  br i1 %i.rx, label %bb.bv, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i209

bb.bv:                                            ; preds = %.noexc213
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rv, ptr align 8 %i.rk, i64 %i.rn, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i209

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i209: ; preds = %bb.bv, %.noexc213
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %.not.i17.i.i210 = icmp eq ptr %i.rk, null
  br i1 %.not.i17.i.i210, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i211, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i209
  %i.rz = load ptr, ptr %i.ir, align 8, !tbaa !249
  %i.sa = ptrtoint ptr %i.rz to i64
  %i.sb = sub i64 %i.sa, %i.rm
  call void @_ZdlPvm(ptr noundef nonnull %i.rk, i64 noundef %i.sb) #36
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i211

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i211: ; preds = %bb.bw, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i209
  store ptr %i.rv, ptr %i.im, align 8, !tbaa !210
  store ptr %i.ry, ptr %i.io, align 8, !tbaa !270
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %i.rt
  store ptr %i.sc, ptr %i.ir, align 8, !tbaa !249
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit214

_ZNSt6vectorImSaImEE9push_backERKm.exit214:       ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i211, %bb.bt
  %i.sd = load ptr, ptr %18, align 8, !tbaa !168  ; 3 uses
  %i.se = load ptr, ptr %i.kp, align 8, !tbaa !268 ; 2 uses
  %.not4.i.i.i215 = icmp eq ptr %i.sd, %i.se
  br i1 %.not4.i.i.i215, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i216

.lr.ph.i.i.i216:                                  ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit214, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i217 = phi ptr [ %i.sg, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.sd, %_ZNSt6vectorImSaImEE9push_backERKm.exit214 ] ; 2 uses
  %i.sf = load ptr, ptr %.05.i.i.i217, align 8, !tbaa !170 ; 3 uses
  %.not.i.i.i.i.i218 = icmp eq ptr %i.sf, null
  br i1 %.not.i.i.i.i.i218, label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN8LightGBM9BinMapperEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN8LightGBM9BinMapperEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i216
  call void @_ZN8LightGBM9BinMapperD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.sf) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.sf, i64 noundef 160) #36
  br label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN8LightGBM9BinMapperEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i216
  %i.sg = getelementptr inbounds nuw i8, ptr %.05.i.i.i217, i64 8 ; 2 uses
  %.not.i.i.i219 = icmp eq ptr %i.sg, %i.se
  br i1 %.not.i.i.i219, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i216, !llvm.loop !11

_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.pr.i220 = load ptr, ptr %18, align 8, !tbaa !168
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit214
  %i.sh = phi ptr [ %.pr.i220, %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.sd, %_ZNSt6vectorImSaImEE9push_backERKm.exit214 ] ; 3 uses
  %.not.i.i1.i221 = icmp eq ptr %i.sh, null
  br i1 %.not.i.i1.i221, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.si = load ptr, ptr %i.kq, align 8, !tbaa !269
  %i.sj = ptrtoint ptr %i.si to i64
  %i.sk = ptrtoint ptr %i.sh to i64
  %i.sl = sub i64 %i.sj, %i.sk
  call void @_ZdlPvm(ptr noundef nonnull %i.sh, i64 noundef %i.sl) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %.not.i.i.i222 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i222, label %_ZNSt6vectorIiSaIiEED2Ev.exit223, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.lm, i64 noundef %i.li) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit223

_ZNSt6vectorIiSaIiEED2Ev.exit223:                 ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %bb.by
  %indvars.iv.next470 = add nuw nsw i64 %indvars.iv469, 1 ; 2 uses
  %i.sm = load i32, ptr %i.gv, align 8, !tbaa !95
  %i.sn = sext i32 %i.sm to i64
  %i.so = icmp slt i64 %indvars.iv.next470, %i.sn
  br i1 %i.so, label %bb.az, label %._crit_edge409, !llvm.loop !570

bb.bz:                                            ; preds = %._crit_edge403
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bo
  %i.sq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.mb, i64 noundef 96) #36
  br label %bb.cb

.loopexit.split-lp336.loopexit.split-lp:          ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.br
  %lpad.loopexit.split-lp753 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #19
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit.split-lp336.loopexit.split-lp, %bb.ca, %bb.bz
  %.pn100 = phi { ptr, i32 } [ %lpad.loopexit.split-lp753, %.loopexit.split-lp336.loopexit.split-lp ], [ %i.sq, %bb.ca ], [ %i.sp, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %.loopexit.split-lp

end_hunk_1
begin_hunk_2_@_ZN8LightGBM7Dataset9ConstructEPSt6vectorISt10unique_ptrINS_9BinMapperESt14default_deleteIS3_EESaIS6_EEiRKS1_IS1_IdSaIdEESaISB_EEPPiPPdPKiimRKNS_6ConfigE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.xm, i64 noundef %i.xr) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit260

_ZNSt6vectorIiSaIiEED2Ev.exit260:                 ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit258, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit225:                 ; preds = %.loopexit.split-lp331.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp, %bb.cc, %bb.ab
  %.pn102.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn321, %bb.cc ], [ %i.fi, %bb.ab ], [ %.pn102.pn, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp750, %.loopexit.split-lp331.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.xs = load ptr, ptr %14, align 8, !tbaa !207  ; 3 uses
  %.not.i.i.i261 = icmp eq ptr %i.xs, null
  br i1 %.not.i.i.i261, label %_ZNSt6vectorIaSaIaEED2Ev.exit262, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit225
  %i.xt = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !293
  %i.xv = ptrtoint ptr %i.xu to i64
  %i.xw = ptrtoint ptr %i.xs to i64
  %i.xx = sub i64 %i.xv, %i.xw
  call void @_ZdlPvm(ptr noundef nonnull %i.xs, i64 noundef %i.xx) #36
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit262

_ZNSt6vectorIaSaIaEED2Ev.exit262:                 ; preds = %bb.cv, %_ZNSt6vectorIiSaIiEED2Ev.exit225, %bb.aa
  %.pn102.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fh, %bb.aa ], [ %.pn102.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit225 ], [ %.pn102.pn.pn.pn.pn.pn, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit262, %bb.p
  %.pn102.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIaSaIaEED2Ev.exit262 ], [ %i.cg, %bb.p ]
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #19
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.o
  %.pn102.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn.pn.pn.pn.pn.pn, %bb.cw ], [ %i.cf, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.cx, %.loopexit.split-lp344
  %.pn112.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp346, %.loopexit.split-lp344 ], [ %.pn102.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cx ]
  %.pr = load ptr, ptr %10, align 8, !tbaa !200
  br label %bb.cy

bb.cy:                                            ; preds = %thread-pre-split, %.loopexit343
  %i.xy = phi ptr [ %.pr, %thread-pre-split ], [ %i.t, %.loopexit343 ] ; 3 uses
  %.pn112 = phi { ptr, i32 } [ %.pn112.ph, %thread-pre-split ], [ %lpad.loopexit345, %.loopexit343 ]
  %.not.i.i.i263 = icmp eq ptr %i.xy, null
  br i1 %.not.i.i.i263, label %_ZNSt6vectorIiSaIiEED2Ev.exit264, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.xz = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !201
  %i.yb = ptrtoint ptr %i.ya to i64
  %i.yc = ptrtoint ptr %i.xy to i64
  %i.yd = sub i64 %i.yb, %i.yc
  call void @_ZdlPvm(ptr noundef nonnull %i.xy, i64 noundef %i.yd) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit264

_ZNSt6vectorIiSaIiEED2Ev.exit264:                 ; preds = %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  resume { ptr, i32 } %.pn112
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM12FeatureGroupC2EiaPSt6vectorISt10unique_ptrINS_9BinMapperESt14default_deleteIS3_EESaIS6_EEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, i8 noundef signext %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !162
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = icmp sgt i8 %2, 0
  %i.g = zext i1 %i.f to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  store i8 %i.g, ptr %i.e, align 8, !tbaa !160
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 0, ptr %i.h, align 2, !tbaa !310
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !268
  %i.k = load ptr, ptr %3, align 8, !tbaa !168
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 3
  %i.p = trunc i64 %i.o to i32
  %i.q = icmp eq i32 %1, %i.p
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef 44)
          to label %._crit_edge79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge79:                                    ; preds = %bb.b
  %.pre = load i32, ptr %0, align 8, !tbaa !162
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge79, %bb.a
  %i.r = phi i32 [ %.pre, %._crit_edge79 ], [ %1, %bb.a ] ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.pre80 = load ptr, ptr %i.t, align 8, !tbaa !268
  %.pre81 = load ptr, ptr %i.u, align 8, !tbaa !269
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit, %bb.c
  %.027.lcssa = phi double [ 0.000000e+00, %bb.c ], [ %i.bx, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ]
  %.lcssa59 = phi i32 [ %i.r, %bb.c ], [ %i.bq, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 2 uses
  %i.v = sitofp i32 %.lcssa59 to double
  %i.w = fdiv double %.027.lcssa, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 89 ; 2 uses
  store i8 0, ptr %i.x, align 1, !tbaa !311
  %i.y = fcmp olt double %i.w, 2.500000e-01
  br i1 %i.y, label %bb.h, label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.z = phi i32 [ %i.r, %.lr.ph ], [ %i.bq, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ]
  %i.aa = phi ptr [ %.pre81, %.lr.ph ], [ %i.bs, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 5 uses
  %i.ab = phi ptr [ %.pre80, %.lr.ph ], [ %i.br, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 2 uses
  %.02764 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.bx, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ]
  %i.ac = load ptr, ptr %3, align 8, !tbaa !168
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !170 ; 2 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !170
  %.not.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !170
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.t, align 8, !tbaa !268
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !168 ; 10 uses
  %i.ah = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.f, %bb.r, %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #37
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc37:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj
  store ptr %i.ae, ptr %i.as, align 8, !tbaa !170
  %.not10.i.i.i.i.i = icmp eq ptr %i.ag, %i.aa
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc37
  %i.at = add i64 %i.ah, -8
  %i.au = sub i64 %i.at, %i.ai                    ; 3 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.au, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader122, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ax = and i64 %i.au, -8
  %i.ay = add i64 %i.ax, 8                        ; 2 uses
  %i.az = getelementptr i8, ptr %i.ar, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.ag, i64 %i.ay
  %bound0 = icmp ult ptr %i.ar, %i.ba
  %bound1 = icmp ult ptr %i.ag, %i.az
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader122, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aw, 4611686018427387900     ; 3 uses
  %i.bb = shl i64 %n.vec, 3                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ar, i64 %i.bb  ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ag, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.be ; 2 uses
  %next.gep119 = getelementptr i8, ptr %i.ag, i64 %i.be ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %i.bf = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep119, align 8, !tbaa !170, !alias.scope !611
  %wide.load120 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !170, !alias.scope !611
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !170, !alias.scope !612, !noalias !613
  store <2 x i64> %wide.load120, ptr %i.bg, align 8, !tbaa !170, !alias.scope !612, !noalias !613
  %6 = getelementptr i8, ptr %next.gep119, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep119, align 8, !tbaa !170, !alias.scope !611
  store <2 x ptr> splat (ptr null), ptr %6, align 8, !tbaa !170, !alias.scope !611
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !605

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader122

.lr.ph.i.i.i.i.i.preheader122:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ar, %vector.memcheck ], [ %i.ar, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader122, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader122 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader122 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %i.bi = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !610
  store i64 %i.bi, ptr %.012.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !609
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !610
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !606

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc37
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ar, %.noexc37 ], [ %i.bc, %middle.block ], [ %i.bk, %.lr.ph.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.bm = load ptr, ptr %i.u, align 8, !tbaa !269
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.bo) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !168
  store ptr %i.bl, ptr %i.t, align 8, !tbaa !268
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap ; 2 uses
  store ptr %i.bp, ptr %i.u, align 8, !tbaa !269
  %.pre82 = load i32, ptr %0, align 8, !tbaa !162
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.e
  %i.bq = phi i32 [ %.pre82, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.z, %bb.e ] ; 3 uses
  %i.br = phi ptr [ %i.bl, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.af, %bb.e ] ; 2 uses
  %i.bs = phi ptr [ %i.bp, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.aa, %bb.e ]
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !170
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !183
  %i.bx = fadd double %.02764, %i.bw              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.by = sext i32 %i.bq to i64
  %i.bz = icmp slt i64 %indvars.iv.next, %i.by
  br i1 %i.bz, label %bb.d, label %._crit_edge, !llvm.loop !607

bb.h:                                             ; preds = %._crit_edge
  %i.ca = load i8, ptr %i.e, align 8, !tbaa !160, !range !129, !noundef !130
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  store i32 1, ptr %i.cc, align 4, !tbaa !216
  br label %bb.l

.thread:                                          ; preds = %bb.h
  store i8 1, ptr %i.x, align 1, !tbaa !311
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 5 uses
  store i32 0, ptr %i.cd, align 4, !tbaa !216
  %i.ce = icmp eq i32 %5, 0
  %i.cf = icmp sgt i32 %.lcssa59, 0
  %or.cond102 = and i1 %i.ce, %i.cf
  br i1 %or.cond102, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.thread
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !170
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 156
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !182
  %.not = icmp eq i32 %i.cj, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.cd, align 4, !tbaa !216
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %.thread, %bb.k, %bb.j
  %i.ck = phi ptr [ %i.cd, %bb.k ], [ %i.cd, %bb.j ], [ %i.cd, %.thread ], [ %i.cc, %bb.i ] ; 4 uses
  %.025103.neg = phi i32 [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %.thread ], [ -1, %bb.i ]
  %i.cl = phi i32 [ 1, %bb.k ], [ 0, %bb.j ], [ 0, %.thread ], [ 1, %bb.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !186 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !119 ; 2 uses
  %.not.i38 = icmp eq ptr %i.cn, %i.cp
  br i1 %.not.i38, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.cl, ptr %i.cn, align 4, !tbaa !138
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  store ptr %i.cq, ptr %i.cm, align 8, !tbaa !186
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit

bb.n:                                             ; preds = %bb.l
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !118 ; 4 uses
  %i.cs = ptrtoint ptr %i.cn to i64
  %i.ct = ptrtoint ptr %i.cr to i64               ; 2 uses
  %i.cu = sub i64 %i.cs, %i.ct                    ; 5 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775804
  br i1 %i.cv, label %.invoke, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.cw = ashr exact i64 %i.cu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i39 = tail call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  %i.cx = add nsw i64 %.sroa.speculated.i.i.i39, %i.cw ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cw
  %i.cz = tail call i64 @llvm.umin.i64(i64 %i.cx, i64 2305843009213693951)
  %i.da = select i1 %i.cy, i64 2305843009213693951, i64 %i.cz ; 3 uses
  %.not.i.i.i40 = icmp ne i64 %i.da, 0
  tail call void @llvm.assume(i1 %.not.i.i.i40)
  %i.db = shl nuw nsw i64 %i.da, 2
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #37
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc42:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 %i.cu ; 2 uses
  %i.de = load i32, ptr %i.ck, align 4, !tbaa !138
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !138
  %i.df = icmp sgt i64 %i.cu, 0
  br i1 %i.df, label %bb.o, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %.noexc42
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dc, ptr align 4 %i.cr, i64 %i.cu, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %.noexc42
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.dh = load ptr, ptr %i.co, align 8, !tbaa !119
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.di, %i.ct
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.dj) #36
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.dc, ptr %i.b, align 8, !tbaa !118
  store ptr %i.dg, ptr %i.cm, align 8, !tbaa !186
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.da ; 2 uses
  store ptr %i.dk, ptr %i.co, align 8, !tbaa !119
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit

_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit: ; preds = %bb.m, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.dl = phi ptr [ %i.cp, %bb.m ], [ %i.dk, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ]
  %i.dm = phi ptr [ %i.cq, %bb.m ], [ %i.dg, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ]
  %i.dn = load i32, ptr %0, align 8, !tbaa !162
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph68, label %._crit_edge69

._crit_edge69:                                    ; preds = %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit52, %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit
  %i.dp = load i8, ptr %i.e, align 8, !tbaa !160, !range !129, !noundef !130
  %i.dq = trunc nuw i8 %i.dp to i1
  invoke void @_ZN8LightGBM12FeatureGroup13CreateBinDataEibbb(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %4, i1 noundef zeroext %i.dq, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph68:                                         ; preds = %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit, %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit52
  %i.dr = phi ptr [ %i.ex, %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit52 ], [ %i.dl, %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit ] ; 3 uses
  %i.ds = phi ptr [ %i.ey, %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit52 ], [ %i.dm, %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit ] ; 3 uses
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit52 ], [ 0, %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit ] ; 2 uses
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv76
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !170 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !243
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 156
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !182
  %i.dz = icmp eq i32 %i.dy, 0
  %.neg = select i1 %i.dz, i32 %.025103.neg, i32 0
  %spec.select = add i32 %.neg, %i.dw
  %i.ea = load i32, ptr %i.ck, align 4, !tbaa !216
  %i.eb = add nsw i32 %spec.select, %i.ea         ; 2 uses
  store i32 %i.eb, ptr %i.ck, align 4, !tbaa !216
  %.not.i43 = icmp eq ptr %i.ds, %i.dr
  br i1 %.not.i43, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph68
  store i32 %i.eb, ptr %i.ds, align 4, !tbaa !138
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 2 uses
  store ptr %i.ec, ptr %i.cm, align 8, !tbaa !186
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit52

bb.r:                                             ; preds = %.lr.ph68
  %i.ed = load ptr, ptr %i.b, align 8, !tbaa !118 ; 4 uses
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIiSaIiEE17_M_default_appendEm:bb.a

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !138
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !205
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #37 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !138
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !138
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !201
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #36
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !200
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !205
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !201
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM12FeatureGroup13CreateBinDataEibbb(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %2, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !265  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !266  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !197 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #19, !inline_history !23
  br label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !266
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE5clearEv.exit: ; preds = %bb.b, %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.j = load i32, ptr %0, align 8, !tbaa !162
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE5clearEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !168
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !170  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 156
  %i.r = load i32, ptr %i.q, align 4, !tbaa !182
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.v = load double, ptr %i.u, align 8, !tbaa !183
  %i.w = fcmp ult double %i.v, f0x3FE6666666666666
  %i.x = load i32, ptr %i.p, align 8, !tbaa !243
  %i.y = add nsw i32 %i.x, %i.t                   ; 2 uses
  br i1 %i.w, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = tail call noundef ptr @_ZN8LightGBM3Bin15CreateSparseBinEii(i32 noundef %1, i32 noundef %i.y) ; 2 uses
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !266 ; 6 uses
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !267
  %.not.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !197
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !266
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !265 ; 10 uses
  %i.ae = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #37 ; 10 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  store ptr %i.z, ptr %i.ap, align 8, !tbaa !197
  %.not10.i.i.i.i.i = icmp eq ptr %i.ad, %i.aa
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.aq = add i64 %i.ae, -8
  %i.ar = sub i64 %i.aq, %i.af                    ; 3 uses
  %i.as = lshr i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check77 = icmp ult i64 %i.ar, 56
  br i1 %min.iters.check77, label %.lr.ph.i.i.i.i.i.preheader96, label %vector.memcheck78

vector.memcheck78:                                ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.au = and i64 %i.ar, -8
  %i.av = add i64 %i.au, 8                        ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ao, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.ad, i64 %i.av
  %bound079 = icmp ult ptr %i.ao, %i.ax
  %bound180 = icmp ult ptr %i.ad, %i.aw
  %found.conflict81 = and i1 %bound079, %bound180
  br i1 %found.conflict81, label %.lr.ph.i.i.i.i.i.preheader96, label %vector.ph82

vector.ph82:                                      ; preds = %vector.memcheck78
  %n.vec83 = and i64 %i.at, 4611686018427387900   ; 3 uses
  %i.ay = shl i64 %n.vec83, 3                     ; 2 uses
  %i.az = getelementptr i8, ptr %i.ao, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ad, i64 %i.ay
  br label %vector.body84

vector.body84:                                    ; preds = %vector.body84, %vector.ph82
  %index85 = phi i64 [ 0, %vector.ph82 ], [ %index.next90, %vector.body84 ] ; 2 uses
  %i.bb = shl i64 %index85, 3                     ; 2 uses
  %next.gep86 = getelementptr i8, ptr %i.ao, i64 %i.bb ; 2 uses
  %next.gep87 = getelementptr i8, ptr %i.ad, i64 %i.bb ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.bc = getelementptr i8, ptr %next.gep87, i64 16
  %wide.load88 = load <2 x i64>, ptr %next.gep87, align 8, !tbaa !197, !alias.scope !636
  %wide.load89 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !197, !alias.scope !636
  %i.bd = getelementptr i8, ptr %next.gep86, i64 16
  store <2 x i64> %wide.load88, ptr %next.gep86, align 8, !tbaa !197, !alias.scope !637, !noalias !638
  store <2 x i64> %wide.load89, ptr %i.bd, align 8, !tbaa !197, !alias.scope !637, !noalias !638
  %5 = getelementptr i8, ptr %next.gep87, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep87, align 8, !tbaa !197, !alias.scope !636
  store <2 x ptr> splat (ptr null), ptr %5, align 8, !tbaa !197, !alias.scope !636
  %index.next90 = add nuw i64 %index85, 4         ; 2 uses
  %i.be = icmp eq i64 %index.next90, %n.vec83
  br i1 %i.be, label %middle.block91, label %vector.body84, !llvm.loop !623

middle.block91:                                   ; preds = %vector.body84
  %cmp.n92 = icmp eq i64 %i.at, %n.vec83
  br i1 %cmp.n92, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader96

.lr.ph.i.i.i.i.i.preheader96:                     ; preds = %vector.memcheck78, %.lr.ph.i.i.i.i.i.preheader, %middle.block91
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ao, %vector.memcheck78 ], [ %i.ao, %.lr.ph.i.i.i.i.i.preheader ], [ %i.az, %middle.block91 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck78 ], [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ba, %middle.block91 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader96, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader96 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader96 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.bf = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !197, !alias.scope !635
  store i64 %i.bf, ptr %.012.i.i.i.i.i, align 8, !tbaa !197, !alias.scope !634
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !197, !alias.scope !635
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !624

_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block91, %_ZNKSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ao, %_ZNKSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.az, %middle.block91 ], [ %i.bh, %.lr.ph.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.bj = load ptr, ptr %i.m, align 8, !tbaa !267
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.bl) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !265
  store ptr %i.bi, ptr %i.c, align 8, !tbaa !266
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bm, ptr %i.m, align 8, !tbaa !267
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.i:                                             ; preds = %bb.c
  %i.bn = tail call noundef ptr @_ZN8LightGBM3Bin14CreateDenseBinEii(i32 noundef %1, i32 noundef %i.y) ; 2 uses
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !266 ; 6 uses
  %i.bp = load ptr, ptr %i.m, align 8, !tbaa !267
  %.not.i16 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not.i16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !197
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bq, ptr %i.c, align 8, !tbaa !266
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !265 ; 10 uses
  %i.bs = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 3 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i17

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i17: ; preds = %bb.k
  %i.bw = ashr exact i64 %i.bu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i18 = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.bx = add nsw i64 %.sroa.speculated.i.i.i18, %i.bw ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 1152921504606846975)
  %i.ca = select i1 %i.by, i64 1152921504606846975, i64 %i.bz ; 3 uses
  %.not.i.i.i19 = icmp ne i64 %i.ca, 0
  tail call void @llvm.assume(i1 %.not.i.i.i19)
  %i.cb = shl nuw nsw i64 %i.ca, 3
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #37 ; 10 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bu
  store ptr %i.bn, ptr %i.cd, align 8, !tbaa !197
  %.not10.i.i.i.i.i20 = icmp eq ptr %i.br, %i.bo
  br i1 %.not10.i.i.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i25, label %.lr.ph.i.i.i.i.i21.preheader

.lr.ph.i.i.i.i.i21.preheader:                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i17
  %i.ce = add i64 %i.bs, -8
  %i.cf = sub i64 %i.ce, %i.bt                    ; 3 uses
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cf, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i21.preheader95, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i21.preheader
  %i.ci = and i64 %i.cf, -8
  %i.cj = add i64 %i.ci, 8                        ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cc, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.br, i64 %i.cj
  %bound0 = icmp ult ptr %i.cc, %i.cl
  %bound1 = icmp ult ptr %i.br, %i.ck
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i21.preheader95, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, 4611686018427387900     ; 3 uses
  %i.cm = shl i64 %n.vec, 3                       ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cc, i64 %i.cm  ; 2 uses
  %i.co = getelementptr i8, ptr %i.br, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cc, i64 %i.cp ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.br, i64 %i.cp ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  %i.cq = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep66, align 8, !tbaa !197, !alias.scope !641
  %wide.load67 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !197, !alias.scope !641
  %i.cr = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !197, !alias.scope !642, !noalias !643
  store <2 x i64> %wide.load67, ptr %i.cr, align 8, !tbaa !197, !alias.scope !642, !noalias !643
  %6 = getelementptr i8, ptr %next.gep66, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep66, align 8, !tbaa !197, !alias.scope !641
  store <2 x ptr> splat (ptr null), ptr %6, align 8, !tbaa !197, !alias.scope !641
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !631

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i25, label %.lr.ph.i.i.i.i.i21.preheader95

.lr.ph.i.i.i.i.i21.preheader95:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i21.preheader, %middle.block
  %.012.i.i.i.i.i22.ph = phi ptr [ %i.cc, %vector.memcheck ], [ %i.cc, %.lr.ph.i.i.i.i.i21.preheader ], [ %i.cn, %middle.block ]
  %.0911.i.i.i.i.i23.ph = phi ptr [ %i.br, %vector.memcheck ], [ %i.br, %.lr.ph.i.i.i.i.i21.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph.i.i.i.i.i21

.lr.ph.i.i.i.i.i21:                               ; preds = %.lr.ph.i.i.i.i.i21.preheader95, %.lr.ph.i.i.i.i.i21
  %.012.i.i.i.i.i22 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i21 ], [ %.012.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i21.preheader95 ] ; 2 uses
  %.0911.i.i.i.i.i23 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i21 ], [ %.0911.i.i.i.i.i23.ph, %.lr.ph.i.i.i.i.i21.preheader95 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  %i.ct = load i64, ptr %.0911.i.i.i.i.i23, align 8, !tbaa !197, !alias.scope !640
  store i64 %i.ct, ptr %.012.i.i.i.i.i22, align 8, !tbaa !197, !alias.scope !639
  store ptr null, ptr %.0911.i.i.i.i.i23, align 8, !tbaa !197, !alias.scope !640
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i23, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i22, i64 8 ; 2 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.cu, %i.bo
  br i1 %.not.i.i.i.i.i24, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i25, label %.lr.ph.i.i.i.i.i21, !llvm.loop !632

_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i25: ; preds = %.lr.ph.i.i.i.i.i21, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i17
  %.0.lcssa.i.i.i.i.i26 = phi ptr [ %i.cc, %_ZNKSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i17 ], [ %i.cn, %middle.block ], [ %i.cv, %.lr.ph.i.i.i.i.i21 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i26, i64 8
  %.not.i23.i.i27 = icmp eq ptr %i.br, null
  br i1 %.not.i23.i.i27, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i28, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i25
  %i.cx = load ptr, ptr %i.m, align 8, !tbaa !267
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.cz) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i28

_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i28: ; preds = %bb.m, %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i25
  store ptr %i.cc, ptr %i.a, align 8, !tbaa !265
  store ptr %i.cw, ptr %i.c, align 8, !tbaa !266
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ca
  store ptr %i.da, ptr %i.m, align 8, !tbaa !267
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i28, %bb.j, %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = load i32, ptr %0, align 8, !tbaa !162
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp slt i64 %indvars.iv.next, %i.dc
  br i1 %i.dd, label %bb.c, label %._crit_edge, !llvm.loop !633

bb.n:                                             ; preds = %bb.a
  br i1 %4, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.de = load i32, ptr %0, align 8
  %i.df = icmp ne i32 %i.de, 1
  %or.cond.not = select i1 %3, i1 true, i1 %i.df
  br i1 %or.cond.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !168
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !170
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !183
  %i.dl = fcmp ult double %i.dk, f0x3FE6666666666666
  br i1 %i.dl, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 1, ptr %i.dm, align 2, !tbaa !310
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !216
  %i.dq = tail call noundef ptr @_ZN8LightGBM3Bin15CreateSparseBinEii(i32 noundef %1, i32 noundef %i.dp)
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !197 ; 2 uses
  store ptr %i.dq, ptr %i.dn, align 8, !tbaa !197
  %.not.i.i30 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i30, label %._crit_edge, label %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE5resetEPS1_.exit.sink.split

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 0, ptr %i.ds, align 2, !tbaa !310
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !216
  %i.dw = tail call noundef ptr @_ZN8LightGBM3Bin14CreateDenseBinEii(i32 noundef %1, i32 noundef %i.dv)
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !197 ; 2 uses
  store ptr %i.dw, ptr %i.dt, align 8, !tbaa !197
  %.not.i.i31 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i31, label %._crit_edge, label %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE5resetEPS1_.exit.sink.split

_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE5resetEPS1_.exit.sink.split: ; preds = %bb.r, %bb.q
  %.sink59 = phi ptr [ %i.dr, %bb.q ], [ %i.dx, %bb.r ] ; 2 uses
  %i.dy = load ptr, ptr %.sink59, align 8, !tbaa !134
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  tail call void %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %.sink59) #19
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit, %bb.q, %bb.r, %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE5resetEPS1_.exit.sink.split, %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE5clearEv.exit
  %.sink60 = phi i8 [ 1, %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE5clearEv.exit ], [ 0, %bb.q ], [ 0, %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE5resetEPS1_.exit.sink.split ], [ 0, %bb.r ], [ 1, %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ]
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %.sink60, ptr %i.eb, align 8, !tbaa !160
  ret void
}

declare noundef ptr @_ZN8LightGBM3Bin15CreateSparseBinEii(i32 noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN8LightGBM3Bin14CreateDenseBinEii(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201
  %i.f = load ptr, ptr %0, align 8, !tbaa !200    ; 6 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775804
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #38
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #37 ; 4 uses
  %i.m = icmp samesign ugt i64 %i.c, 4
  br i1 %i.m, label %bb.d, label %bb.e, !prof !188

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr align 4 %1, i64 %i.c, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.n = icmp eq i64 %i.c, 4
  br i1 %i.n, label %bb.f, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %1, align 4, !tbaa !138
  store i32 %i.o, ptr %i.l, align 4, !tbaa !138
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %0, align 8, !tbaa !200    ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !201
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #36
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit, %bb.g
  store ptr %i.l, ptr %0, align 8, !tbaa !200
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !205
  store ptr %i.v, ptr %i.d, align 8, !tbaa !201
  br label %_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !205  ; 5 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.h                       ; 5 uses
  %.not = icmp ult i64 %i.z, %i.c
  br i1 %.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp sgt i64 %i.c, 4
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !188

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.f, ptr align 4 %1, i64 %i.c, i1 false)
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !205
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = icmp eq i64 %i.c, 4
  br i1 %i.ab, label %bb.l, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_.exit

bb.l:                                             ; preds = %bb.k
  %i.ac = load i32, ptr %1, align 4, !tbaa !138
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !138
end_hunk_3
begin_hunk_4_@"_ZNSt17_Function_handlerIFviiiEZN8LightGBM21PushDataToMultiValBinEiSt6vectorIjSaIjEES4_PS2_IS2_ISt10unique_ptrINS1_11BinIteratorESt14default_deleteIS6_EESaIS9_EESaISB_EEPNS1_11MultiValBinEE3$_1E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation":bb.a
bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !202
  store ptr %.val, ptr %0, align 8, !tbaa !202
  br label %"_ZNSt14_Function_base13_Base_managerIZN8LightGBM21PushDataToMultiValBinEiSt6vectorIjSaIjEES4_PS2_IS2_ISt10unique_ptrINS1_11BinIteratorESt14default_deleteIS6_EESaIS9_EESaISB_EEPNS1_11MultiValBinEE3$_1E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #37 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !667
  store ptr %i.a, ptr %0, align 8, !tbaa !202
  br label %"_ZNSt14_Function_base13_Base_managerIZN8LightGBM21PushDataToMultiValBinEiSt6vectorIjSaIjEES4_PS2_IS2_ISt10unique_ptrINS1_11BinIteratorESt14default_deleteIS6_EESaIS9_EESaISB_EEPNS1_11MultiValBinEE3$_1E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !202 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN8LightGBM21PushDataToMultiValBinEiSt6vectorIjSaIjEES4_PS2_IS2_ISt10unique_ptrINS1_11BinIteratorESt14default_deleteIS6_EESaIS9_EESaISB_EEPNS1_11MultiValBinEE3$_1E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #36
  br label %"_ZNSt14_Function_base13_Base_managerIZN8LightGBM21PushDataToMultiValBinEiSt6vectorIjSaIjEES4_PS2_IS2_ISt10unique_ptrINS1_11BinIteratorESt14default_deleteIS6_EESaIS9_EESaISB_EEPNS1_11MultiValBinEE3$_1E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN8LightGBM21PushDataToMultiValBinEiSt6vectorIjSaIjEES4_PS2_IS2_ISt10unique_ptrINS1_11BinIteratorESt14default_deleteIS6_EESaIS9_EESaISB_EEPNS1_11MultiValBinEE3$_1E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM7Dataset29GetMultiBinFromSparseFeaturesERKSt6vectorIjSaIjEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !138    ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.f, ptr %i.b, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !138
  %i.h = load i32, ptr %0, align 4, !tbaa !138    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !138
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.f) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !138
  %i.k = load i32, ptr %i.a, align 4, !tbaa !138  ; 2 uses
  %.not28 = icmp sgt i32 %i.k, %i.j
  br i1 %.not28, label %._crit_edge29, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.m = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.cw, %._crit_edge ] ; 2 uses
  %i.n = phi i32 [ %i.k, %.preheader.lr.ph ], [ %i.cu, %._crit_edge ] ; 3 uses
  %.not1726 = icmp sgt i32 %i.n, %i.m
  br i1 %.not1726, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.o = sext i32 %i.n to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %indvars.iv = phi i64 [ %i.o, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !165
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %indvars.iv ; 4 uses
  %i.r = load i32, ptr %5, align 4, !tbaa !138
  %i.s = sext i32 %i.r to i64
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !141  ; 5 uses
  %i.w = load i32, ptr %6, align 4, !tbaa !138
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = sext i32 %i.w to i64                     ; 3 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !168
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !170 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 156
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !182 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !160, !range !129, !noundef !130
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !118
  %i.aj = getelementptr [4 x i8], ptr %i.ai, i64 %i.y ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !138
  %i.al = getelementptr i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !138
  %i.an = add i32 %i.am, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  br label %.invoke

.invoke:                                          ; preds = %bb.d, %bb.c
  %.sink.in = phi ptr [ %i.ba, %bb.d ], [ %i.ao, %bb.c ]
  %i.ap = phi i32 [ 1, %bb.d ], [ %i.ak, %bb.c ]
  %i.aq = phi i32 [ %i.ax, %bb.d ], [ %i.an, %bb.c ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !197 ; 2 uses
  %i.ar = load ptr, ptr %.sink, align 8, !tbaa !134
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef ptr %i.at(ptr noundef nonnull align 8 dereferenceable(8) %.sink, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef %i.ad)
          to label %_ZN8LightGBM12FeatureGroup18SubFeatureIteratorEi.exit unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, !inline_history !24 ; 2 uses

bb.d:                                             ; preds = %.lr.ph
  %.not.i = icmp eq i32 %i.ad, 0
  %i.av = load i32, ptr %i.ab, align 8, !tbaa !243
  %i.aw = sext i1 %.not.i to i32
  %i.ax = add i32 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !265
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.y
  br label %.invoke

_ZN8LightGBM12FeatureGroup18SubFeatureIteratorEi.exit: ; preds = %.invoke
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !192 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !195
  %.not.i19 = icmp eq ptr %i.bc, %i.be
  br i1 %.not.i19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN8LightGBM12FeatureGroup18SubFeatureIteratorEi.exit
  store ptr %i.au, ptr %i.bc, align 8, !tbaa !194
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !192
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.f:                                             ; preds = %_ZN8LightGBM12FeatureGroup18SubFeatureIteratorEi.exit
  %i.bg = load ptr, ptr %i.q, align 8, !tbaa !191 ; 10 uses
  %i.bh = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 3 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc20:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.bl = ashr exact i64 %i.bj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bm, i64 1152921504606846975)
  %i.bp = select i1 %i.bn, i64 1152921504606846975, i64 %i.bo ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bp, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #37
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc21:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  store ptr %i.au, ptr %i.bs, align 8, !tbaa !194
  %.not10.i.i.i.i.i = icmp eq ptr %i.bg, %i.bc
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc21
  %i.bt = add i64 %i.bh, -8
  %i.bu = sub i64 %i.bt, %i.bi                    ; 3 uses
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bu, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader52, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bx = and i64 %i.bu, -8
  %i.by = add i64 %i.bx, 8                        ; 2 uses
  %i.bz = getelementptr i8, ptr %i.br, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bg, i64 %i.by
  %bound0 = icmp ult ptr %i.br, %i.ca
  %bound1 = icmp ult ptr %i.bg, %i.bz
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader52, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bw, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.br, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bg, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.br, i64 %i.ce ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.bg, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %i.cf = getelementptr i8, ptr %next.gep49, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep49, align 8, !tbaa !194, !alias.scope !678
  %wide.load50 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !194, !alias.scope !678
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !194, !alias.scope !679, !noalias !680
  store <2 x i64> %wide.load50, ptr %i.cg, align 8, !tbaa !194, !alias.scope !679, !noalias !680
  %7 = getelementptr i8, ptr %next.gep49, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep49, align 8, !tbaa !194, !alias.scope !678
  store <2 x ptr> splat (ptr null), ptr %7, align 8, !tbaa !194, !alias.scope !678
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !674

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader52

.lr.ph.i.i.i.i.i.preheader52:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.br, %vector.memcheck ], [ %i.br, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader52, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader52 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader52 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !194, !alias.scope !677
  store i64 %i.ci, ptr %.012.i.i.i.i.i, align 8, !tbaa !194, !alias.scope !676
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !194, !alias.scope !677
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bc
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !675

_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc21
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.br, %.noexc21 ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.cm = load ptr, ptr %i.bd, align 8, !tbaa !195
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.co) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.br, ptr %i.q, align 8, !tbaa !191
  store ptr %i.cl, ptr %i.bb, align 8, !tbaa !192
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.cp, ptr %i.bd, align 8, !tbaa !195
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cq = load i32, ptr %i.b, align 4, !tbaa !138 ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %.not17.not = icmp slt i64 %indvars.iv, %i.cr
  br i1 %.not17.not, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %.pre = load i32, ptr %i.a, align 4, !tbaa !138
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.cs = phi i32 [ %i.n, %.preheader ], [ %.pre, %._crit_edge.loopexit ]
  %.lcssa23 = phi i32 [ %i.m, %.preheader ], [ %i.cq, %._crit_edge.loopexit ]
  %i.ct = load i32, ptr %i.c, align 4, !tbaa !138 ; 2 uses
  %i.cu = add nsw i32 %i.ct, %i.cs                ; 3 uses
  store i32 %i.cu, ptr %i.a, align 4, !tbaa !138
  %i.cv = add nsw i32 %i.ct, %.lcssa23
  %i.cw = call i32 @llvm.smin.i32(i32 %i.cv, i32 %i.f) ; 3 uses
  store i32 %i.cw, ptr %i.b, align 4, !tbaa !138
  %.not = icmp sgt i32 %i.cu, %i.cw
  br i1 %.not, label %._crit_edge29, label %.preheader

._crit_edge29:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge29, %bb.a
  ret void

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %_ZNKSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.g
  %lpad.loopexit.split-lp53 = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %lpad.loopexit.split-lp53, 0
  call void @__clang_call_terminate(ptr %i.cx) #40
  unreachable
}

declare noundef ptr @_ZN8LightGBM11MultiValBin17CreateMultiValBinEiiidRKSt6vectorIjSaIjEE(i32 noundef, i32 noundef, i32 noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_ISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !165    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !167  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS3_EESaIS6_EES8_EvT_SA_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS3_EESaIS6_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.r, %_ZSt8_DestroyISt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS3_EESaIS6_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !191 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !192  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 2 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !194 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8LightGBM11BinIteratorEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8LightGBM11BinIteratorEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !134
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #19, !inline_history !681
  br label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8LightGBM11BinIteratorEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !191
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i.i
  %i.l = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS3_EESaIS6_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !195
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #36
  br label %_ZSt8_DestroyISt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS3_EESaIS6_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS3_EESaIS6_EEEvPT_.exit.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS3_EESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS3_EESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS3_EESaIS6_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !165
  br label %_ZSt8_DestroyIPSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS3_EESaIS6_EES8_EvT_SA_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS3_EESaIS6_EES8_EvT_SA_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS3_EESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.s = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS3_EESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS3_EESaIS6_EESaIS8_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS3_EESaIS6_EES8_EvT_SA_RSaIT0_E.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !166
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #36
  br label %_ZNSt12_Vector_baseISt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS3_EESaIS6_EESaIS8_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS3_EESaIS6_EESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS3_EESaIS6_EES8_EvT_SA_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !191    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !192  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !194 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN8LightGBM11BinIteratorEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN8LightGBM11BinIteratorEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #19, !inline_history !682
  br label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN8LightGBM11BinIteratorEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !191
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !195
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #36
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM7Dataset26GetMultiBinFromAllFeaturesERKSt6vectorIjSaIjEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !138    ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.f, ptr %i.b, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !138
  %i.h = load i32, ptr %0, align 4, !tbaa !138    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !138
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.f) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !138
  %i.k = load i32, ptr %i.a, align 4, !tbaa !138  ; 2 uses
  %.not28 = icmp sgt i32 %i.k, %i.j
  br i1 %.not28, label %._crit_edge29, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.m = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.cw, %._crit_edge ] ; 2 uses
  %i.n = phi i32 [ %i.k, %.preheader.lr.ph ], [ %i.cu, %._crit_edge ] ; 3 uses
  %.not1726 = icmp sgt i32 %i.n, %i.m
  br i1 %.not1726, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.o = sext i32 %i.n to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %indvars.iv = phi i64 [ %i.o, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !165
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %indvars.iv ; 4 uses
  %i.r = load i32, ptr %5, align 4, !tbaa !138
  %i.s = sext i32 %i.r to i64
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !141  ; 5 uses
  %i.w = load i32, ptr %6, align 4, !tbaa !138
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = sext i32 %i.w to i64                     ; 3 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !168
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !170 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 156
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !182 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !160, !range !129, !noundef !130
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !118
  %i.aj = getelementptr [4 x i8], ptr %i.ai, i64 %i.y ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !138
  %i.al = getelementptr i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !138
  %i.an = add i32 %i.am, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  br label %.invoke

.invoke:                                          ; preds = %bb.d, %bb.c
  %.sink.in = phi ptr [ %i.ba, %bb.d ], [ %i.ao, %bb.c ]
  %i.ap = phi i32 [ 1, %bb.d ], [ %i.ak, %bb.c ]
  %i.aq = phi i32 [ %i.ax, %bb.d ], [ %i.an, %bb.c ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !197 ; 2 uses
  %i.ar = load ptr, ptr %.sink, align 8, !tbaa !134
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef ptr %i.at(ptr noundef nonnull align 8 dereferenceable(8) %.sink, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef %i.ad)
          to label %_ZN8LightGBM12FeatureGroup18SubFeatureIteratorEi.exit unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, !inline_history !24 ; 2 uses

bb.d:                                             ; preds = %.lr.ph
  %.not.i = icmp eq i32 %i.ad, 0
  %i.av = load i32, ptr %i.ab, align 8, !tbaa !243
  %i.aw = sext i1 %.not.i to i32
  %i.ax = add i32 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !265
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.y
  br label %.invoke

_ZN8LightGBM12FeatureGroup18SubFeatureIteratorEi.exit: ; preds = %.invoke
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !192 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !195
  %.not.i19 = icmp eq ptr %i.bc, %i.be
  br i1 %.not.i19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN8LightGBM12FeatureGroup18SubFeatureIteratorEi.exit
  store ptr %i.au, ptr %i.bc, align 8, !tbaa !194
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !192
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.f:                                             ; preds = %_ZN8LightGBM12FeatureGroup18SubFeatureIteratorEi.exit
  %i.bg = load ptr, ptr %i.q, align 8, !tbaa !191 ; 10 uses
  %i.bh = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 3 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc20:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.bl = ashr exact i64 %i.bj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bm, i64 1152921504606846975)
  %i.bp = select i1 %i.bn, i64 1152921504606846975, i64 %i.bo ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bp, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #37
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc21:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  store ptr %i.au, ptr %i.bs, align 8, !tbaa !194
  %.not10.i.i.i.i.i = icmp eq ptr %i.bg, %i.bc
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc21
  %i.bt = add i64 %i.bh, -8
  %i.bu = sub i64 %i.bt, %i.bi                    ; 3 uses
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bu, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader52, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bx = and i64 %i.bu, -8
  %i.by = add i64 %i.bx, 8                        ; 2 uses
  %i.bz = getelementptr i8, ptr %i.br, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bg, i64 %i.by
  %bound0 = icmp ult ptr %i.br, %i.ca
  %bound1 = icmp ult ptr %i.bg, %i.bz
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader52, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bw, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.br, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bg, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.br, i64 %i.ce ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.bg, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
  call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.cf = getelementptr i8, ptr %next.gep49, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep49, align 8, !tbaa !194, !alias.scope !693
  %wide.load50 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !194, !alias.scope !693
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !194, !alias.scope !694, !noalias !695
  store <2 x i64> %wide.load50, ptr %i.cg, align 8, !tbaa !194, !alias.scope !694, !noalias !695
  %7 = getelementptr i8, ptr %next.gep49, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep49, align 8, !tbaa !194, !alias.scope !693
  store <2 x ptr> splat (ptr null), ptr %7, align 8, !tbaa !194, !alias.scope !693
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !689

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader52

.lr.ph.i.i.i.i.i.preheader52:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.br, %vector.memcheck ], [ %i.br, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader52, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader52 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader52 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
  call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !194, !alias.scope !692
  store i64 %i.ci, ptr %.012.i.i.i.i.i, align 8, !tbaa !194, !alias.scope !691
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !194, !alias.scope !692
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bc
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !690

_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc21
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.br, %.noexc21 ], [ %i.cc, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.cm = load ptr, ptr %i.bd, align 8, !tbaa !195
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.co) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.br, ptr %i.q, align 8, !tbaa !191
  store ptr %i.cl, ptr %i.bb, align 8, !tbaa !192
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.cp, ptr %i.bd, align 8, !tbaa !195
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cq = load i32, ptr %i.b, align 4, !tbaa !138 ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %.not17.not = icmp slt i64 %indvars.iv, %i.cr
  br i1 %.not17.not, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %.pre = load i32, ptr %i.a, align 4, !tbaa !138
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.cs = phi i32 [ %i.n, %.preheader ], [ %.pre, %._crit_edge.loopexit ]
  %.lcssa23 = phi i32 [ %i.m, %.preheader ], [ %i.cq, %._crit_edge.loopexit ]
  %i.ct = load i32, ptr %i.c, align 4, !tbaa !138 ; 2 uses
  %i.cu = add nsw i32 %i.ct, %i.cs                ; 3 uses
  store i32 %i.cu, ptr %i.a, align 4, !tbaa !138
  %i.cv = add nsw i32 %i.ct, %.lcssa23
  %i.cw = call i32 @llvm.smin.i32(i32 %i.cv, i32 %i.f) ; 3 uses
  store i32 %i.cw, ptr %i.b, align 4, !tbaa !138
  %.not = icmp sgt i32 %i.cu, %i.cw
  br i1 %.not, label %._crit_edge29, label %.preheader

._crit_edge29:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge29, %bb.a
  ret void

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %_ZNKSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.g
  %lpad.loopexit.split-lp53 = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %lpad.loopexit.split-lp53, 0
  call void @__clang_call_terminate(ptr %i.cx) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM7Dataset21CopyFeatureMapperFromEPKS0_(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !263  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.f, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !141 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN8LightGBM12FeatureGroupEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN8LightGBM12FeatureGroupEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZN8LightGBM12FeatureGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.e) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 96) #36
  br label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8LightGBM12FeatureGroupEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !263
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !304
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.h, ptr %i.i, align 8, !tbaa !304
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.k = load i32, ptr %i.j, align 8, !tbaa !95   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  store i32 %i.k, ptr %i.l, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.n = load i8, ptr %i.m, align 8, !tbaa !248, !range !129, !noundef !130
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 712
  store i8 %i.n, ptr %i.o, align 8, !tbaa !248
  %i.p = icmp sgt i32 %i.k, 0
  br i1 %i.p, label %.lr.ph, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE5clearEv.exit.._crit_edge_crit_edge

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE5clearEv.exit.._crit_edge_crit_edge: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE5clearEv.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !264
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE5clearEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE5clearEv.exit.._crit_edge_crit_edge
  %i.t = phi ptr [ %i.b, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE5clearEv.exit.._crit_edge_crit_edge ], [ %i.dl, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ]
  %i.u = phi ptr [ %.pre, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE5clearEv.exit.._crit_edge_crit_edge ], [ %i.dm, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ]
  %i.v = icmp eq ptr %i.u, %i.t
  br i1 %i.v, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.w = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS3_EESaIS6_EELb1EE8_S_do_itERS8_(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #19 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit: ; preds = %._crit_edge, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !303
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !303
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.af = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ad) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !244
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !244
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.al = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.aj) ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ao = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.am) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ar = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ap) ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.au = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.as) ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ax = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.av) ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ba = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ay) ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.bd = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bb) ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.bg = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.be) ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 588
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !305
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 588
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !305
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bm = load <2 x i32>, ptr %i.bk, align 8, !tbaa !138
  store <2 x i32> %i.bm, ptr %i.bl, align 8, !tbaa !138
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !306, !range !129, !noundef !130
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i8 %i.bo, ptr %i.bp, align 8, !tbaa !306
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !307, !range !129, !noundef !130
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 649
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !307
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 2 uses
  %i.bt = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #37 ; 4 uses
  %i.bu = load ptr, ptr %i.q, align 8, !tbaa !139
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !141
  %i.bx = load i32, ptr %i.r, align 8, !tbaa !117
  invoke void @_ZN8LightGBM12FeatureGroupC2ERKS0_i(ptr noundef nonnull align 8 dereferenceable(96) %i.bt, ptr noundef nonnull align 8 dereferenceable(96) %i.bw, i32 noundef %i.bx)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !263 ; 6 uses
  %i.bz = load ptr, ptr %i.s, align 8, !tbaa !264 ; 2 uses
  %.not.i = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.bt, ptr %i.by, align 8, !tbaa !141
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  store ptr %i.ca, ptr %i.c, align 8, !tbaa !263
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !139 ; 10 uses
  %i.cc = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64               ; 3 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 3 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775800
  br i1 %i.cf, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.cg = ashr exact i64 %i.ce, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 1152921504606846975)
  %i.ck = select i1 %i.ci, i64 1152921504606846975, i64 %i.cj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ck, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #37 ; 10 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ce
  store ptr %i.bt, ptr %i.cn, align 8, !tbaa !141
  %.not10.i.i.i.i.i = icmp eq ptr %i.cb, %i.by
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.co = add i64 %i.cc, -8
  %i.cp = sub i64 %i.co, %i.cd                    ; 3 uses
  %i.cq = lshr i64 %i.cp, 3
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cp, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader57, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.cs = and i64 %i.cp, -8
  %i.ct = add i64 %i.cs, 8                        ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cm, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cb, i64 %i.ct
  %bound0 = icmp ult ptr %i.cm, %i.cv
  %bound1 = icmp ult ptr %i.cb, %i.cu
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cr, 4611686018427387900     ; 3 uses
  %i.cw = shl i64 %n.vec, 3                       ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cm, i64 %i.cw  ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cb, i64 %i.cw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cm, i64 %i.cz ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.cb, i64 %i.cz ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.da = getelementptr i8, ptr %next.gep54, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep54, align 8, !tbaa !141, !alias.scope !707
  %wide.load55 = load <2 x i64>, ptr %i.da, align 8, !tbaa !141, !alias.scope !707
  %i.db = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !141, !alias.scope !708, !noalias !709
  store <2 x i64> %wide.load55, ptr %i.db, align 8, !tbaa !141, !alias.scope !708, !noalias !709
  %2 = getelementptr i8, ptr %next.gep54, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep54, align 8, !tbaa !141, !alias.scope !707
  store <2 x ptr> splat (ptr null), ptr %2, align 8, !tbaa !141, !alias.scope !707
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !702

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader57

.lr.ph.i.i.i.i.i.preheader57:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cx, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.cb, %vector.memcheck ], [ %i.cb, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cy, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader57, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader57 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader57 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.dd = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !141, !alias.scope !706
  store i64 %i.dd, ptr %.012.i.i.i.i.i, align 8, !tbaa !141, !alias.scope !705
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !141, !alias.scope !706
  %i.de = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.de, %i.by
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !703

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cm, %_ZNKSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cx, %middle.block ], [ %i.df, %.lr.ph.i.i.i.i.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.dh = load ptr, ptr %i.s, align 8, !tbaa !264
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.di, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.dj) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.cm, ptr %i.a, align 8, !tbaa !139
  store ptr %i.dg, ptr %i.c, align 8, !tbaa !263
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ck ; 2 uses
  store ptr %i.dk, ptr %i.s, align 8, !tbaa !264
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.dl = phi ptr [ %i.ca, %bb.e ], [ %i.dg, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ]
  %i.dm = phi ptr [ %i.bz, %bb.e ], [ %i.dk, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dn = load i32, ptr %i.l, align 8, !tbaa !95
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %indvars.iv.next, %i.do
  br i1 %i.dp, label %bb.c, label %._crit_edge, !llvm.loop !704

bb.i:                                             ; preds = %bb.c
  %i.dq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 96) #36
  resume { ptr, i32 } %i.dq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM12FeatureGroupC2ERKS0_i(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  %i.e = load i32, ptr %1, align 8, !tbaa !162
  store i32 %i.e, ptr %0, align 8, !tbaa !162
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load i8, ptr %i.f, align 8, !tbaa !160, !range !129, !noundef !130
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i8 %i.g, ptr %i.h, align 8, !tbaa !160
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.j = load i8, ptr %i.i, align 1, !tbaa !311, !range !129, !noundef !130
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 %i.j, ptr %i.k, align 1, !tbaa !311
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 90
  %i.m = load i8, ptr %i.l, align 2, !tbaa !310, !range !129, !noundef !130
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  store i8 %i.m, ptr %i.n, align 2, !tbaa !310
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.p = load i32, ptr %i.o, align 4, !tbaa !216
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.p, ptr %i.q, align 4, !tbaa !216
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !268  ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !168  ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 4 uses
  %i.aa = icmp ugt i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %.invoke, label %bb.c

.invoke:                                          ; preds = %bb.i, %bb.b
  %i.ab = phi ptr [ @.str.20, %bb.b ], [ @.str.21, %bb.i ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.ab) #38
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !269
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp ult i64 %i.ah, %i.z
  br i1 %i.ai, label %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !268
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.ag
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #37
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc18:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !168 ; 8 uses
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !268 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc18
  %i.aq = ptrtoaddr ptr %i.ap to i64
  %i.ar = ptrtoaddr ptr %i.ao to i64
  %i.as = add i64 %i.aq, -8
  %i.at = sub i64 %i.as, %i.ar                    ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader79, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.an, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ao, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.az ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.ao, i64 %i.az ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724)
  %i.ba = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep53, align 8, !tbaa !170, !alias.scope !724
  %wide.load54 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !170, !alias.scope !724
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !170, !alias.scope !723
  store <2 x i64> %wide.load54, ptr %i.bb, align 8, !tbaa !170, !alias.scope !723
  %3 = getelementptr i8, ptr %next.gep53, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !tbaa !170, !alias.scope !724
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !170, !alias.scope !724
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !713

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.preheader79

.lr.ph.i.i.i.i.preheader79:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader79, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader79 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader79 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724)
  %i.bd = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !170, !alias.scope !724
  store i64 %i.bd, ptr %.012.i.i.i.i, align 8, !tbaa !170, !alias.scope !723
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !170, !alias.scope !724
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.be, %i.ap
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !714

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc18
  %.not.i8.i = icmp eq ptr %i.ao, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !269
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.ao to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bj) #36
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.an, ptr %i.a, align 8, !tbaa !168
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store ptr %i.bk, ptr %i.aj, align 8, !tbaa !268
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.z
  store ptr %i.bl, ptr %i.ac, align 8, !tbaa !269
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !329
  %.pre35 = load ptr, ptr %i.u, align 8, !tbaa !329
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.c
  %i.bm = phi ptr [ %.pre35, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.bn = phi ptr [ %.pre, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.w, %bb.c ] ; 2 uses
  %.not29 = icmp eq ptr %i.bn, %i.bm
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.bp = load i8, ptr %i.h, align 8, !tbaa !160, !range !129, !noundef !130
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = load i8, ptr %i.n, align 2, !tbaa !310, !range !129, !noundef !130
  %i.bs = trunc nuw i8 %i.br to i1                ; 2 uses
  %i.bt = xor i1 %i.bs, true
  invoke void @_ZN8LightGBM12FeatureGroup13CreateBinDataEibbb(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %2, i1 noundef zeroext %i.bq, i1 noundef zeroext %i.bt, i1 noundef zeroext %i.bs)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %.sroa.024.030 = phi ptr [ %i.bn, %.lr.ph ], [ %i.dj, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 2 uses
  %i.bu = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #37
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.bv = load ptr, ptr %.sroa.024.030, align 8, !tbaa !170
  invoke void @_ZN8LightGBM9BinMapperC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(160) %i.bu, ptr noundef nonnull align 8 dereferenceable(160) %i.bv)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.bw = load ptr, ptr %i.bo, align 8, !tbaa !268 ; 6 uses
  %i.bx = load ptr, ptr %i.ac, align 8, !tbaa !269
  %.not.i = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !170
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.by, ptr %i.bo, align 8, !tbaa !268
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !168 ; 10 uses
  %i.ca = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64               ; 3 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 3 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775800
  br i1 %i.cd, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ce = ashr exact i64 %i.cc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 1152921504606846975)
  %i.ci = select i1 %i.cg, i64 1152921504606846975, i64 %i.ch ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ci, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #37
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc
  store ptr %i.bu, ptr %i.cl, align 8, !tbaa !170
  %.not10.i.i.i.i.i = icmp eq ptr %i.bz, %i.bw
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc20
  %i.cm = add i64 %i.ca, -8
  %i.cn = sub i64 %i.cm, %i.cb                    ; 3 uses
  %i.co = lshr i64 %i.cn, 3
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check60 = icmp ult i64 %i.cn, 56
  br i1 %min.iters.check60, label %.lr.ph.i.i.i.i.i.preheader74, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.cq = and i64 %i.cn, -8
  %i.cr = add i64 %i.cq, 8                        ; 2 uses
  %i.cs = getelementptr i8, ptr %i.ck, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.bz, i64 %i.cr
  %bound0 = icmp ult ptr %i.ck, %i.ct
  %bound1 = icmp ult ptr %i.bz, %i.cs
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader74, label %vector.ph61

vector.ph61:                                      ; preds = %vector.memcheck
  %n.vec62 = and i64 %i.cp, 4611686018427387900   ; 3 uses
  %i.cu = shl i64 %n.vec62, 3                     ; 2 uses
  %i.cv = getelementptr i8, ptr %i.ck, i64 %i.cu  ; 2 uses
  %i.cw = getelementptr i8, ptr %i.bz, i64 %i.cu
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph61
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next69, %vector.body63 ] ; 2 uses
  %i.cx = shl i64 %index64, 3                     ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.ck, i64 %i.cx ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.bz, i64 %i.cx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.cy = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load67 = load <2 x i64>, ptr %next.gep66, align 8, !tbaa !170, !alias.scope !727
  %wide.load68 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !170, !alias.scope !727
  %i.cz = getelementptr i8, ptr %next.gep65, i64 16
  store <2 x i64> %wide.load67, ptr %next.gep65, align 8, !tbaa !170, !alias.scope !728, !noalias !729
  store <2 x i64> %wide.load68, ptr %i.cz, align 8, !tbaa !170, !alias.scope !728, !noalias !729
  %4 = getelementptr i8, ptr %next.gep66, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep66, align 8, !tbaa !170, !alias.scope !727
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !170, !alias.scope !727
  %index.next69 = add nuw i64 %index64, 4         ; 2 uses
  %i.da = icmp eq i64 %index.next69, %n.vec62
  br i1 %i.da, label %middle.block70, label %vector.body63, !llvm.loop !721

middle.block70:                                   ; preds = %vector.body63
  %cmp.n71 = icmp eq i64 %i.cp, %n.vec62
  br i1 %cmp.n71, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader74

.lr.ph.i.i.i.i.i.preheader74:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block70
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %middle.block70 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bz, %vector.memcheck ], [ %i.bz, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cw, %middle.block70 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader74, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader74 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader74 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.db = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !726
  store i64 %i.db, ptr %.012.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !725
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !726
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dc, %i.bw
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !722

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block70, %.noexc20
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ck, %.noexc20 ], [ %i.cv, %middle.block70 ], [ %i.dd, %.lr.ph.i.i.i.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.df = load ptr, ptr %i.ac, align 8, !tbaa !269
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.dg, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.dh) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.ck, ptr %i.a, align 8, !tbaa !168
  store ptr %i.de, ptr %i.bo, align 8, !tbaa !268
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.di, ptr %i.ac, align 8, !tbaa !269
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.h
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.024.030, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dj, %i.bm
  br i1 %.not, label %._crit_edge, label %bb.e

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.e, %.invoke, %bb.a, %._crit_edge, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %lpad.loopexit.split-lp75 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.f
  %i.dk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 160) #36
  br label %.loopexit.split-lp

bb.l:                                             ; preds = %._crit_edge
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.dk, %bb.k ], [ %lpad.loopexit.split-lp75, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #19
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !197 ; 3 uses
  %.not.i21 = icmp eq ptr %i.dl, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i

_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i: ; preds = %.loopexit.split-lp
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !134
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  tail call void %i.do(ptr noundef nonnull align 8 dereferenceable(8) %i.dl) #19, !inline_history !10
  br label %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EED2Ev.exit: ; preds = %.loopexit.split-lp, %_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i
  %i.dp = load ptr, ptr %i.b, align 8, !tbaa !118 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EED2Ev.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !119
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #36
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EED2Ev.exit, %bb.m
  tail call void @_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #19
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !260    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !262
  %i.j = load ptr, ptr %0, align 8, !tbaa !260    ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !260    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !261  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i, align 8, !tbaa !47 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !48
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !7

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !260
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, %bb.c
  %i.y = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !262
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #36
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !260
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !262
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !261 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.ah, %i.f
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp sgt i64 %i.g, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.g, %bb.f ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.f ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.f ] ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 3 uses
  %i.al = add nsw i64 %.012.i.i.i.i.i, -1
  %i.am = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit, !llvm.loop !730

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !330
  %.pre45 = ptrtoint ptr %i.ak to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit, %bb.f
  %.pre-phi46 = phi i64 [ %.pre45, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.l, %bb.f ]
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIjSaIjEEaSERKS1_:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186
  %i.c = load ptr, ptr %1, align 8, !tbaa !118    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !119
  %i.i = load ptr, ptr %0, align 8, !tbaa !118    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, !prof !185

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #37 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !188

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !138
  store i32 %i.r, ptr %i.o, align 4, !tbaa !138
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !118    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !119
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #36
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !118
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !119
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !186  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !188

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 4
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !138
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !138
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 4
  br i1 %i.af, label %bb.o, label %bb.p, !prof !188

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !118
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !186 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !118
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !186
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 4
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !138
  store i32 %i.ah, ptr %i.i, align 4, !tbaa !138
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

_ZSt4copyIPjS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 4, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 4
  br i1 %i.an, label %bb.r, label %bb.s, !prof !188

bb.r:                                             ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 4
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !138
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !138
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !118
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !186
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

declare void @_ZN8LightGBM9BinMapperC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS3_EESaIS6_EELb1EE8_S_do_itERS8_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !331    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !331  ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #38
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !264
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #37
          to label %.lr.ph.i.i.i.i.i.i.preheader unwind label %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i ; 5 uses

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.l = add i64 %i.d, -8
  %i.m = sub i64 %i.l, %i.e                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.o, 4611686018427387900      ; 3 uses
  %i.p = shl i64 %n.vec, 3                        ; 2 uses
  %i.q = getelementptr i8, ptr %i.k, i64 %i.p     ; 2 uses
  %i.r = getelementptr i8, ptr %i.a, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.s ; 2 uses
  %next.gep31 = getelementptr i8, ptr %i.a, i64 %i.s ; 4 uses
  %i.t = getelementptr i8, ptr %next.gep31, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep31, align 8, !tbaa !141
  %wide.load32 = load <2 x i64>, ptr %i.t, align 8, !tbaa !141
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !141
  store <2 x i64> %wide.load32, ptr %i.u, align 8, !tbaa !141
  %1 = getelementptr i8, ptr %next.gep31, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep31, align 8, !tbaa !141
  store <2 x ptr> splat (ptr null), ptr %1, align 8, !tbaa !141
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !733

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, label %.lr.ph.i.i.i.i.i.i.preheader34

.lr.ph.i.i.i.i.i.i.preheader34:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.q, %middle.block ]
  %.sroa.08.011.i.i.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader34, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader34 ] ; 2 uses
  %.sroa.08.011.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.011.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader34 ] ; 3 uses
  %i.w = load i64, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !141
  store i64 %i.w, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !141
  store ptr null, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !141
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !734

_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.z, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %.09) #19 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.q, %middle.block ], [ %i.y, %.lr.ph.i.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !139   ; 4 uses
  %.pre18 = load ptr, ptr %i.b, align 8, !tbaa !263 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !264 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !139
  store ptr %.lcssa, ptr %i.b, align 8, !tbaa !263
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !264
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre18
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.05.i.i.i, align 8, !tbaa !141 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN8LightGBM12FeatureGroupEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN8LightGBM12FeatureGroupEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN8LightGBM12FeatureGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.ae) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 96) #36
  br label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN8LightGBM12FeatureGroupEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.af, %.pre18
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit
  %i.ag = phi ptr [ %i.j, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread ], [ %i.ad, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit ], [ %i.ad, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i ]
  %i.ah = phi ptr [ %i.a, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread ], [ %.pre, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit ], [ %.pre, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ak) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %bb.c, %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 288230376151711743
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i, !prof !185

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 576460752303423487
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #38
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = shl nuw nsw i64 %1, 5
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #37
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 4 uses
  %i.f = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %2, ptr %3, ptr noundef %i.e)
          to label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit unwind label %bb.f ; 0 uses

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  ret ptr %i.e

bb.f:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #19 ; 0 uses
  %.not.i11 = icmp eq ptr %i.e, null
  br i1 %.not.i11, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = shl nuw nsw i64 %1, 5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #36
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %bb.g, %bb.f
  invoke void @__cxa_rethrow() #38
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.k

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #40
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !43
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !47 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !49   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.e, ptr %i.a, align 8, !tbaa !45
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !47
  %i.h = load i64, ptr %i.a, align 8, !tbaa !45
  store i64 %i.h, ptr %i.b, align 8, !tbaa !48
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !48
  store i8 %i.j, ptr %i.i, align 1, !tbaa !48
  br label %bb.d

end_hunk_5
begin_hunk_6_@_ZN8LightGBM7Dataset11CreateValidEPKS0_:bb.a
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.cd = icmp ugt i64 %i.ca, %i.bt
  br i1 %i.cd, label %bb.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bt ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.bv, %i.ce
  br i1 %.not.i.i36, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i37

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i37:      ; preds = %bb.i
  store ptr %i.ce, ptr %i.bu, align 8, !tbaa !205
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.g, %bb.h, %bb.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i37
  %.pre-phi = phi i64 [ %.pre141, %bb.g ], [ %i.bt, %bb.h ], [ %i.bt, %bb.i ], [ %i.bt, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i37 ] ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !205 ; 2 uses
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !200 ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 2                 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, %.pre-phi
  br i1 %i.cn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.co = sub nuw nsw i64 %.pre-phi, %i.cm
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 noundef %i.co)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit40

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.cp = icmp ugt i64 %i.cm, %.pre-phi
  br i1 %i.cp, label %bb.l, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit40

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.pre-phi ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.ch, %i.cq
  br i1 %.not.i.i38, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit40, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i39

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i39:      ; preds = %bb.l
  store ptr %i.cq, ptr %i.cg, align 8, !tbaa !205
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit40

_ZNSt6vectorIiSaIiEE6resizeEm.exit40:             ; preds = %bb.j, %bb.k, %bb.l, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i39
  %i.cr = load i32, ptr %i.i, align 8, !tbaa !304
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit40
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 3 uses
  br label %bb.n

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZNSt6vectorIiSaIiEE6resizeEm.exit40
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !264
  %i.df = load ptr, ptr %i.c, align 8, !tbaa !263
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.dh = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS3_EESaIS6_EELb1EE8_S_do_itERS8_(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #19 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit: ; preds = %._crit_edge, %bb.m
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dk = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.di) ; 0 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !303
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !303
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.dq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.do) ; 0 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !244
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 %i.ds, ptr %i.dt, align 8, !tbaa !244
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.dw = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %i.du) ; 0 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.dz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.dx) ; 0 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 752
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %i.ea)
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !309
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i32 %i.ed, ptr %i.ee, align 8, !tbaa !309
  ret void

bb.n:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 11 uses
  %.0121 = phi i64 [ 0, %.lr.ph ], [ %i.lc, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.ef = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #37
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.o:                                             ; preds = %bb.n
  %i.eg = load ptr, ptr %i.ct, align 8, !tbaa !200
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !138
  %i.ej = load ptr, ptr %i.cu, align 8, !tbaa !200
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !138
  %i.em = sext i32 %i.ei to i64
  %i.en = load ptr, ptr %i.cv, align 8, !tbaa !139
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.em
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !141
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = sext i32 %i.el to i64
  %i.es = load ptr, ptr %i.eq, align 8, !tbaa !168
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.er
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !170
  invoke void @_ZN8LightGBM9BinMapperC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(160) %i.ef, ptr noundef nonnull align 8 dereferenceable(160) %i.eu)
          to label %bb.p unwind label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.ev = load ptr, ptr %i.cw, align 8, !tbaa !268 ; 7 uses
  %i.ew = load ptr, ptr %i.cx, align 8, !tbaa !269
  %.not.i41 = icmp eq ptr %i.ev, %i.ew
  br i1 %.not.i41, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.ef, ptr %i.ev, align 8, !tbaa !170
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr %i.ex, ptr %i.cw, align 8, !tbaa !268
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.r:                                             ; preds = %bb.p
  %i.ey = load ptr, ptr %2, align 8, !tbaa !168   ; 10 uses
  %i.ez = ptrtoint ptr %i.ev to i64               ; 2 uses
  %i.fa = ptrtoint ptr %i.ey to i64               ; 3 uses
  %i.fb = sub i64 %i.ez, %i.fa                    ; 3 uses
  %i.fc = icmp eq i64 %i.fb, 9223372036854775800
  br i1 %i.fc, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.fd = ashr exact i64 %i.fb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i42 = call i64 @llvm.umax.i64(i64 %i.fd, i64 1)
  %i.fe = add nsw i64 %.sroa.speculated.i.i.i42, %i.fd ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.fd
  %i.fg = call i64 @llvm.umin.i64(i64 %i.fe, i64 1152921504606846975)
  %i.fh = select i1 %i.ff, i64 1152921504606846975, i64 %i.fg ; 3 uses
  %.not.i.i.i43 = icmp ne i64 %i.fh, 0
  call void @llvm.assume(i1 %.not.i.i.i43)
  %i.fi = shl nuw nsw i64 %i.fh, 3
  %i.fj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fi) #37
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fb
  store ptr %i.ef, ptr %i.fk, align 8, !tbaa !170
  %.not10.i.i.i.i.i = icmp eq ptr %i.ey, %i.ev
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc44
  %i.fl = add i64 %i.ez, -8
  %i.fm = sub i64 %i.fl, %i.fa                    ; 3 uses
  %i.fn = lshr i64 %i.fm, 3
  %i.fo = add nuw nsw i64 %i.fn, 1                ; 2 uses
  %min.iters.check229 = icmp ult i64 %i.fm, 56
  br i1 %min.iters.check229, label %.lr.ph.i.i.i.i.i.preheader248, label %vector.memcheck230

vector.memcheck230:                               ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.fp = and i64 %i.fm, -8
  %i.fq = add i64 %i.fp, 8                        ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fj, i64 %i.fq
  %i.fs = getelementptr i8, ptr %i.ey, i64 %i.fq
  %bound0231 = icmp ult ptr %i.fj, %i.fs
  %bound1232 = icmp ult ptr %i.ey, %i.fr
  %found.conflict233 = and i1 %bound0231, %bound1232
  br i1 %found.conflict233, label %.lr.ph.i.i.i.i.i.preheader248, label %vector.ph234

vector.ph234:                                     ; preds = %vector.memcheck230
  %n.vec235 = and i64 %i.fo, 4611686018427387900  ; 3 uses
  %i.ft = shl i64 %n.vec235, 3                    ; 2 uses
  %i.fu = getelementptr i8, ptr %i.fj, i64 %i.ft  ; 2 uses
  %i.fv = getelementptr i8, ptr %i.ey, i64 %i.ft
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph234
  %index237 = phi i64 [ 0, %vector.ph234 ], [ %index.next242, %vector.body236 ] ; 2 uses
  %i.fw = shl i64 %index237, 3                    ; 2 uses
  %next.gep238 = getelementptr i8, ptr %i.fj, i64 %i.fw ; 2 uses
  %next.gep239 = getelementptr i8, ptr %i.ey, i64 %i.fw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !754)
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %i.fx = getelementptr i8, ptr %next.gep239, i64 16
  %wide.load240 = load <2 x i64>, ptr %next.gep239, align 8, !tbaa !170, !alias.scope !756
  %wide.load241 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !170, !alias.scope !756
  %i.fy = getelementptr i8, ptr %next.gep238, i64 16
  store <2 x i64> %wide.load240, ptr %next.gep238, align 8, !tbaa !170, !alias.scope !757, !noalias !758
  store <2 x i64> %wide.load241, ptr %i.fy, align 8, !tbaa !170, !alias.scope !757, !noalias !758
  %3 = getelementptr i8, ptr %next.gep239, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep239, align 8, !tbaa !170, !alias.scope !756
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !170, !alias.scope !756
  %index.next242 = add nuw i64 %index237, 4       ; 2 uses
  %i.fz = icmp eq i64 %index.next242, %n.vec235
  br i1 %i.fz, label %middle.block243, label %vector.body236, !llvm.loop !743

middle.block243:                                  ; preds = %vector.body236
  %cmp.n244 = icmp eq i64 %i.fo, %n.vec235
  br i1 %cmp.n244, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader248

.lr.ph.i.i.i.i.i.preheader248:                    ; preds = %vector.memcheck230, %.lr.ph.i.i.i.i.i.preheader, %middle.block243
  %.012.i.i.i.i.i.ph = phi ptr [ %i.fj, %vector.memcheck230 ], [ %i.fj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fu, %middle.block243 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ey, %vector.memcheck230 ], [ %i.ey, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fv, %middle.block243 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader248, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader248 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader248 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !754)
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %i.ga = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !755
  store i64 %i.ga, ptr %.012.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !754
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !755
  %i.gb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gb, %i.ev
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !744

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block243, %.noexc44
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fj, %.noexc44 ], [ %i.fu, %middle.block243 ], [ %i.gc, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.ge = load ptr, ptr %i.cx, align 8, !tbaa !269
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = sub i64 %i.gf, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.gg) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.fj, ptr %2, align 8, !tbaa !168
  store ptr %i.gd, ptr %i.cw, align 8, !tbaa !268
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fh
  store ptr %i.gh, ptr %i.cx, align 8, !tbaa !269
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.q
  %i.gi = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.ev, %bb.q ]
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !170 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 152
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !278
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 156
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !182
  %.not = icmp eq i32 %i.gl, %i.gn
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.go = load ptr, ptr %i.ap, align 8, !tbaa !205 ; 4 uses
  %i.gp = load ptr, ptr %i.cy, align 8, !tbaa !201
  %.not.i45 = icmp eq ptr %i.go, %i.gp
  br i1 %.not.i45, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gq = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !138
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store ptr %i.gr, ptr %i.ap, align 8, !tbaa !205
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.v:                                             ; preds = %bb.t
  %i.gs = load ptr, ptr %i.an, align 8, !tbaa !200 ; 4 uses
  %i.gt = ptrtoint ptr %i.go to i64
  %i.gu = ptrtoint ptr %i.gs to i64               ; 2 uses
  %i.gv = sub i64 %i.gt, %i.gu                    ; 5 uses
  %i.gw = icmp eq i64 %i.gv, 9223372036854775804
  br i1 %i.gw, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.gx = ashr exact i64 %i.gv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i46 = call i64 @llvm.umax.i64(i64 %i.gx, i64 1)
  %i.gy = add nsw i64 %.sroa.speculated.i.i.i46, %i.gx ; 2 uses
  %i.gz = icmp ult i64 %i.gy, %i.gx
  %i.ha = call i64 @llvm.umin.i64(i64 %i.gy, i64 2305843009213693951)
  %i.hb = select i1 %i.gz, i64 2305843009213693951, i64 %i.ha ; 3 uses
  %.not.i.i.i47 = icmp ne i64 %i.hb, 0
  call void @llvm.assume(i1 %.not.i.i.i47)
  %i.hc = shl nuw nsw i64 %i.hb, 2
  %i.hd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #37
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 %i.gv ; 2 uses
  %i.hf = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.hf, ptr %i.he, align 4, !tbaa !138
  %i.hg = icmp sgt i64 %i.gv, 0
  br i1 %i.hg, label %bb.w, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.w:                                             ; preds = %.noexc50
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hd, ptr align 4 %i.gs, i64 %i.gv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.w, %.noexc50
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %.not.i17.i.i48 = icmp eq ptr %i.gs, null
  br i1 %.not.i17.i.i48, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.hi = load ptr, ptr %i.cy, align 8, !tbaa !201
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = sub i64 %i.hj, %i.gu
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.hk) #36
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.hd, ptr %i.an, align 8, !tbaa !200
  store ptr %i.hh, ptr %i.ap, align 8, !tbaa !205
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.hb
  store ptr %i.hl, ptr %i.cy, align 8, !tbaa !201
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.y:                                             ; preds = %bb.o
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef 160) #36
  br label %.loopexit.split-lp

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.u, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.hn = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #37
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ho = load i32, ptr %i.cz, align 8, !tbaa !117
  invoke void @_ZN8LightGBM12FeatureGroupC2EPSt6vectorISt10unique_ptrINS_9BinMapperESt14default_deleteIS3_EESaIS6_EEi(ptr noundef nonnull align 8 dereferenceable(96) %i.hn, ptr noundef nonnull %2, i32 noundef %i.ho)
          to label %bb.aa unwind label %bb.ar

bb.aa:                                            ; preds = %bb.z
  %i.hp = load ptr, ptr %i.c, align 8, !tbaa !263 ; 6 uses
  %i.hq = load ptr, ptr %i.da, align 8, !tbaa !264
  %.not.i51 = icmp eq ptr %i.hp, %i.hq
  br i1 %.not.i51, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.hn, ptr %i.hp, align 8, !tbaa !141
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store ptr %i.hr, ptr %i.c, align 8, !tbaa !263
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.hs = load ptr, ptr %i.a, align 8, !tbaa !139 ; 10 uses
  %i.ht = ptrtoint ptr %i.hp to i64               ; 2 uses
  %i.hu = ptrtoint ptr %i.hs to i64               ; 3 uses
  %i.hv = sub i64 %i.ht, %i.hu                    ; 3 uses
  %i.hw = icmp eq i64 %i.hv, 9223372036854775800
  br i1 %i.hw, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.aj, %bb.af, %bb.an, %bb.ac, %bb.v, %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ac
  %i.hx = ashr exact i64 %i.hv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i52 = call i64 @llvm.umax.i64(i64 %i.hx, i64 1)
  %i.hy = add nsw i64 %.sroa.speculated.i.i.i52, %i.hx ; 2 uses
  %i.hz = icmp ult i64 %i.hy, %i.hx
  %i.ia = call i64 @llvm.umin.i64(i64 %i.hy, i64 1152921504606846975)
  %i.ib = select i1 %i.hz, i64 1152921504606846975, i64 %i.ia ; 3 uses
  %.not.i.i.i53 = icmp ne i64 %i.ib, 0
  call void @llvm.assume(i1 %.not.i.i.i53)
  %i.ic = shl nuw nsw i64 %i.ib, 3
  %i.id = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ic) #37
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc62:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.hv
  store ptr %i.hn, ptr %i.ie, align 8, !tbaa !141
  %.not10.i.i.i.i.i54 = icmp eq ptr %i.hs, %i.hp
  br i1 %.not10.i.i.i.i.i54, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i55.preheader

.lr.ph.i.i.i.i.i55.preheader:                     ; preds = %.noexc62
  %i.if = add i64 %i.ht, -8
  %i.ig = sub i64 %i.if, %i.hu                    ; 3 uses
  %i.ih = lshr i64 %i.ig, 3
  %i.ii = add nuw nsw i64 %i.ih, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ig, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i55.preheader247, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i55.preheader
  %i.ij = and i64 %i.ig, -8
  %i.ik = add i64 %i.ij, 8                        ; 2 uses
  %i.il = getelementptr i8, ptr %i.id, i64 %i.ik
  %i.im = getelementptr i8, ptr %i.hs, i64 %i.ik
  %bound0 = icmp ult ptr %i.id, %i.im
  %bound1 = icmp ult ptr %i.hs, %i.il
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i55.preheader247, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ii, 4611686018427387900     ; 3 uses
  %i.in = shl i64 %n.vec, 3                       ; 2 uses
  %i.io = getelementptr i8, ptr %i.id, i64 %i.in  ; 2 uses
  %i.ip = getelementptr i8, ptr %i.hs, i64 %i.in
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.id, i64 %i.iq ; 2 uses
  %next.gep218 = getelementptr i8, ptr %i.hs, i64 %i.iq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !759)
  call void @llvm.experimental.noalias.scope.decl(metadata !760)
  %i.ir = getelementptr i8, ptr %next.gep218, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep218, align 8, !tbaa !141, !alias.scope !761
  %wide.load219 = load <2 x i64>, ptr %i.ir, align 8, !tbaa !141, !alias.scope !761
  %i.is = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !141, !alias.scope !762, !noalias !763
  store <2 x i64> %wide.load219, ptr %i.is, align 8, !tbaa !141, !alias.scope !762, !noalias !763
  %4 = getelementptr i8, ptr %next.gep218, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep218, align 8, !tbaa !141, !alias.scope !761
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !141, !alias.scope !761
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.it = icmp eq i64 %index.next, %n.vec
  br i1 %i.it, label %middle.block, label %vector.body, !llvm.loop !751

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ii, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i55.preheader247

.lr.ph.i.i.i.i.i55.preheader247:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i55.preheader, %middle.block
  %.012.i.i.i.i.i56.ph = phi ptr [ %i.id, %vector.memcheck ], [ %i.id, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.io, %middle.block ]
  %.0911.i.i.i.i.i57.ph = phi ptr [ %i.hs, %vector.memcheck ], [ %i.hs, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ip, %middle.block ]
  br label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %.lr.ph.i.i.i.i.i55.preheader247, %.lr.ph.i.i.i.i.i55
  %.012.i.i.i.i.i56 = phi ptr [ %i.iw, %.lr.ph.i.i.i.i.i55 ], [ %.012.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i55.preheader247 ] ; 2 uses
  %.0911.i.i.i.i.i57 = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i55 ], [ %.0911.i.i.i.i.i57.ph, %.lr.ph.i.i.i.i.i55.preheader247 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !759)
  call void @llvm.experimental.noalias.scope.decl(metadata !760)
  %i.iu = load i64, ptr %.0911.i.i.i.i.i57, align 8, !tbaa !141, !alias.scope !760
  store i64 %i.iu, ptr %.012.i.i.i.i.i56, align 8, !tbaa !141, !alias.scope !759
  store ptr null, ptr %.0911.i.i.i.i.i57, align 8, !tbaa !141, !alias.scope !760
  %i.iv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i57, i64 8 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i56, i64 8 ; 2 uses
  %.not.i.i.i.i.i58 = icmp eq ptr %i.iv, %i.hp
  br i1 %.not.i.i.i.i.i58, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i55, !llvm.loop !752

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i55, %middle.block, %.noexc62
  %.0.lcssa.i.i.i.i.i59 = phi ptr [ %i.id, %.noexc62 ], [ %i.io, %middle.block ], [ %i.iw, %.lr.ph.i.i.i.i.i55 ]
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i59, i64 8
  %.not.i23.i.i60 = icmp eq ptr %i.hs, null
  br i1 %.not.i23.i.i60, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.iy = load ptr, ptr %i.da, align 8, !tbaa !264
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = sub i64 %i.iz, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef %i.ja) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.id, ptr %i.a, align 8, !tbaa !139
  store ptr %i.ix, ptr %i.c, align 8, !tbaa !263
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.ib
  store ptr %i.jb, ptr %i.da, align 8, !tbaa !264
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.ab
  %i.jc = load ptr, ptr %i.y, align 8, !tbaa !205 ; 4 uses
  %i.jd = load ptr, ptr %i.db, align 8, !tbaa !201
  %.not.i63 = icmp eq ptr %i.jc, %i.jd
  br i1 %.not.i63, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.je = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.je, ptr %i.jc, align 4, !tbaa !138
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  store ptr %i.jf, ptr %i.y, align 8, !tbaa !205
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit72

bb.af:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.jg = load ptr, ptr %i.w, align 8, !tbaa !200 ; 4 uses
  %i.jh = ptrtoint ptr %i.jc to i64
  %i.ji = ptrtoint ptr %i.jg to i64               ; 2 uses
  %i.jj = sub i64 %i.jh, %i.ji                    ; 5 uses
  %i.jk = icmp eq i64 %i.jj, 9223372036854775804
  br i1 %i.jk, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i64

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i64: ; preds = %bb.af
  %i.jl = ashr exact i64 %i.jj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i65 = call i64 @llvm.umax.i64(i64 %i.jl, i64 1)
  %i.jm = add nsw i64 %.sroa.speculated.i.i.i65, %i.jl ; 2 uses
  %i.jn = icmp ult i64 %i.jm, %i.jl
  %i.jo = call i64 @llvm.umin.i64(i64 %i.jm, i64 2305843009213693951)
  %i.jp = select i1 %i.jn, i64 2305843009213693951, i64 %i.jo ; 3 uses
  %.not.i.i.i66 = icmp ne i64 %i.jp, 0
  call void @llvm.assume(i1 %.not.i.i.i66)
  %i.jq = shl nuw nsw i64 %i.jp, 2
  %i.jr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jq) #37
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i64
  %i.js = getelementptr inbounds i8, ptr %i.jr, i64 %i.jj ; 2 uses
  %i.jt = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.jt, ptr %i.js, align 4, !tbaa !138
  %i.ju = icmp sgt i64 %i.jj, 0
  br i1 %i.ju, label %bb.ag, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i67

bb.ag:                                            ; preds = %.noexc71
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jr, ptr align 4 %i.jg, i64 %i.jj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i67

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i67: ; preds = %bb.ag, %.noexc71
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %.not.i17.i.i68 = icmp eq ptr %i.jg, null
  br i1 %.not.i17.i.i68, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i67
  %i.jw = load ptr, ptr %i.db, align 8, !tbaa !201
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = sub i64 %i.jx, %i.ji
  call void @_ZdlPvm(ptr noundef nonnull %i.jg, i64 noundef %i.jy) #36
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69: ; preds = %bb.ah, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i67
  store ptr %i.jr, ptr %i.w, align 8, !tbaa !200
  store ptr %i.jv, ptr %i.y, align 8, !tbaa !205
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.jp
  store ptr %i.jz, ptr %i.db, align 8, !tbaa !201
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit72

_ZNSt6vectorIiSaIiEE9push_backERKi.exit72:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i69, %bb.ae
  %i.ka = load ptr, ptr %i.ac, align 8, !tbaa !205 ; 4 uses
  %i.kb = load ptr, ptr %i.dc, align 8, !tbaa !201
  %.not.i.i73 = icmp eq ptr %i.ka, %i.kb
  br i1 %.not.i.i73, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit72
  store i32 0, ptr %i.ka, align 4, !tbaa !138
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  store ptr %i.kc, ptr %i.ac, align 8, !tbaa !205
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit72
  %i.kd = load ptr, ptr %i.aa, align 8, !tbaa !200 ; 4 uses
  %i.ke = ptrtoint ptr %i.ka to i64
  %i.kf = ptrtoint ptr %i.kd to i64               ; 2 uses
  %i.kg = sub i64 %i.ke, %i.kf                    ; 5 uses
  %i.kh = icmp eq i64 %i.kg, 9223372036854775804
  br i1 %i.kh, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aj
  %i.ki = ashr exact i64 %i.kg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ki, i64 1)
  %i.kj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ki ; 2 uses
  %i.kk = icmp ult i64 %i.kj, %i.ki
  %i.kl = call i64 @llvm.umin.i64(i64 %i.kj, i64 2305843009213693951)
  %i.km = select i1 %i.kk, i64 2305843009213693951, i64 %i.kl ; 3 uses
  %.not.i.i.i.i74 = icmp ne i64 %i.km, 0
  call void @llvm.assume(i1 %.not.i.i.i.i74)
  %i.kn = shl nuw nsw i64 %i.km, 2
  %i.ko = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kn) #37
          to label %.noexc76 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.kp = getelementptr inbounds i8, ptr %i.ko, i64 %i.kg ; 2 uses
  store i32 0, ptr %i.kp, align 4, !tbaa !138
  %i.kq = icmp sgt i64 %i.kg, 0
  br i1 %i.kq, label %bb.ak, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ak:                                            ; preds = %.noexc76
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ko, ptr align 4 %i.kd, i64 %i.kg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ak, %.noexc76
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.kd, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.ks = load ptr, ptr %i.dc, align 8, !tbaa !201
  %i.kt = ptrtoint ptr %i.ks to i64
  %i.ku = sub i64 %i.kt, %i.kf
  call void @_ZdlPvm(ptr noundef nonnull %i.kd, i64 noundef %i.ku) #36
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.al, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ko, ptr %i.aa, align 8, !tbaa !200
  store ptr %i.kr, ptr %i.ac, align 8, !tbaa !205
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.km
  store ptr %i.kv, ptr %i.dc, align 8, !tbaa !201
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.ai
  %i.kw = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !141
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 92
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !216
  %i.lb = sext i32 %i.la to i64
  %i.lc = add i64 %.0121, %i.lb                   ; 3 uses
  %i.ld = load ptr, ptr %i.at, align 8, !tbaa !270 ; 4 uses
  %i.le = load ptr, ptr %i.aw, align 8, !tbaa !249
  %.not.i77 = icmp eq ptr %i.ld, %i.le
  br i1 %.not.i77, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  store i64 %i.lc, ptr %i.ld, align 8, !tbaa !45
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  store ptr %i.lf, ptr %i.at, align 8, !tbaa !270
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit86

bb.an:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.lg = load ptr, ptr %i.ar, align 8, !tbaa !210 ; 4 uses
  %i.lh = ptrtoint ptr %i.ld to i64
  %i.li = ptrtoint ptr %i.lg to i64               ; 2 uses
  %i.lj = sub i64 %i.lh, %i.li                    ; 5 uses
  %i.lk = icmp eq i64 %i.lj, 9223372036854775800
  br i1 %i.lk, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i78

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i78: ; preds = %bb.an
end_hunk_6
begin_hunk_7_@_ZN8LightGBM12FeatureGroupC2EPSt6vectorISt10unique_ptrINS_9BinMapperESt14default_deleteIS3_EESaIS6_EEi:bb.a
  %i.v = phi ptr [ %i.p, %.thread ], [ %i.t, %bb.c ] ; 3 uses
  %i.w = phi ptr [ %i.o, %.thread ], [ %i.s, %bb.c ] ; 2 uses
  %i.x = phi ptr [ %i.m, %.thread ], [ %i.q, %bb.c ] ; 2 uses
  %i.y = phi ptr [ null, %.thread ], [ %.pre52, %bb.c ]
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !118  ; 4 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 5 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %.invoke, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #37
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc21:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ac ; 2 uses
  %i.am = load i32, ptr %i.x, align 4, !tbaa !138
  store i32 %i.am, ptr %i.al, align 4, !tbaa !138
  %i.an = icmp sgt i64 %i.ac, 0
  br i1 %i.an, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %.noexc21
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.z, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %.noexc21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.ap = load ptr, ptr %i.v, align 8, !tbaa !119
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ar) #36
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !118
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !186
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.as, ptr %i.v, align 8, !tbaa !119
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit

_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.at = phi ptr [ %i.t, %bb.d ], [ %i.v, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ] ; 3 uses
  %i.au = phi ptr [ %i.s, %bb.d ], [ %i.w, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ] ; 3 uses
  %i.av = phi ptr [ %i.q, %bb.d ], [ %i.x, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ] ; 5 uses
  %i.aw = phi ptr [ %i.u, %bb.d ], [ %i.ao, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ]
  %i.ax = load i32, ptr %0, align 8, !tbaa !162
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %._crit_edge._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.k

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit38
  %i.bb = icmp eq i32 %i.eq, 1
  br i1 %i.bb, label %bb.h, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit, %._crit_edge
  %.pre55 = load i32, ptr %i.av, align 4, !tbaa !216
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !170
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load double, ptr %i.be, align 8, !tbaa !183
  %i.bg = fcmp ult double %i.bf, f0x3FE6666666666666
  %.pre56 = load i32, ptr %i.av, align 4, !tbaa !216 ; 2 uses
  br i1 %i.bg, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 1, ptr %i.bh, align 2, !tbaa !310
  %i.bi = invoke noundef ptr @_ZN8LightGBM3Bin15CreateSparseBinEii(i32 noundef %2, i32 noundef %.pre56)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc22:                                         ; preds = %bb.i
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !197 ; 2 uses
  store ptr %i.bi, ptr %i.c, align 8, !tbaa !197
  %.not.i.i30.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i30.i, label %bb.s, label %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE5resetEPS1_.exit.sink.split.i

bb.j:                                             ; preds = %._crit_edge._crit_edge, %bb.h
  %i.bk = phi i32 [ %.pre55, %._crit_edge._crit_edge ], [ %.pre56, %bb.h ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 0, ptr %i.bl, align 2, !tbaa !310
  %i.bm = invoke noundef ptr @_ZN8LightGBM3Bin14CreateDenseBinEii(i32 noundef %2, i32 noundef %i.bk)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %bb.j
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !197 ; 2 uses
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !197
  %.not.i.i31.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i31.i, label %bb.s, label %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE5resetEPS1_.exit.sink.split.i

_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE5resetEPS1_.exit.sink.split.i: ; preds = %.noexc23, %.noexc22
  %.sink59.i = phi ptr [ %i.bj, %.noexc22 ], [ %i.bn, %.noexc23 ] ; 2 uses
  %i.bo = load ptr, ptr %.sink59.i, align 8, !tbaa !134
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %.sink59.i) #19, !inline_history !773
  br label %bb.s

bb.k:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit38
  %i.br = phi ptr [ %i.aw, %.lr.ph ], [ %i.ep, %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit38 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit38 ] ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !168
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !170 ; 2 uses
  store ptr null, ptr %i.bt, align 8, !tbaa !170
  %i.bv = load ptr, ptr %i.az, align 8, !tbaa !268 ; 6 uses
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !269
  %.not.i24 = icmp eq ptr %i.bv, %i.bw
  br i1 %.not.i24, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !170
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bx, ptr %i.az, align 8, !tbaa !268
  %.pre53 = load ptr, ptr %i.a, align 8, !tbaa !168
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.m:                                             ; preds = %bb.k
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !168 ; 10 uses
  %i.bz = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64               ; 3 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 3 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.p, %bb.m, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.cd = ashr exact i64 %i.cb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i25 = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i25, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 1152921504606846975)
  %i.ch = select i1 %i.cf, i64 1152921504606846975, i64 %i.cg ; 3 uses
  %.not.i.i.i26 = icmp ne i64 %i.ch, 0
  tail call void @llvm.assume(i1 %.not.i.i.i26)
  %i.ci = shl nuw nsw i64 %i.ch, 3
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #37
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 11 uses

.noexc28:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb
  store ptr %i.bu, ptr %i.ck, align 8, !tbaa !170
  %.not10.i.i.i.i.i = icmp eq ptr %i.by, %i.bv
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc28
  %i.cl = add i64 %i.bz, -8
  %i.cm = sub i64 %i.cl, %i.ca                    ; 3 uses
  %i.cn = lshr i64 %i.cm, 3
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cm, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader82, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.cp = and i64 %i.cm, -8
  %i.cq = add i64 %i.cp, 8                        ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cj, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.by, i64 %i.cq
  %bound0 = icmp ult ptr %i.cj, %i.cs
  %bound1 = icmp ult ptr %i.by, %i.cr
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader82, label %vector.ph

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
  %next.gep79 = getelementptr i8, ptr %i.by, i64 %i.cw ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  %i.cx = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep79, align 8, !tbaa !170, !alias.scope !776
  %wide.load80 = load <2 x i64>, ptr %i.cx, align 8, !tbaa !170, !alias.scope !776
  %i.cy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !170, !alias.scope !777, !noalias !778
  store <2 x i64> %wide.load80, ptr %i.cy, align 8, !tbaa !170, !alias.scope !777, !noalias !778
  %3 = getelementptr i8, ptr %next.gep79, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep79, align 8, !tbaa !170, !alias.scope !776
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !170, !alias.scope !776
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !770

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader82

.lr.ph.i.i.i.i.i.preheader82:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.cj, %vector.memcheck ], [ %i.cj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.by, %vector.memcheck ], [ %i.by, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader82, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader82 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader82 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  %i.da = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !775
  store i64 %i.da, ptr %.012.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !774
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !775
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.db, %i.bv
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !771

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc28
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cj, %.noexc28 ], [ %i.cu, %middle.block ], [ %i.dc, %.lr.ph.i.i.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.de = load ptr, ptr %i.ba, align 8, !tbaa !269
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.dg) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.cj, ptr %i.a, align 8, !tbaa !168
  store ptr %i.dd, ptr %i.az, align 8, !tbaa !268
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ch
  store ptr %i.dh, ptr %i.ba, align 8, !tbaa !269
  %.pre54 = load ptr, ptr %i.au, align 8, !tbaa !186
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.l
  %i.di = phi ptr [ %.pre54, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.br, %bb.l ] ; 4 uses
  %i.dj = phi ptr [ %i.cj, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.pre53, %bb.l ]
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !170 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !243
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 156
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !182
  %i.dp = icmp eq i32 %i.do, 0
  %i.dq = sext i1 %i.dp to i32
  %i.dr = load i32, ptr %i.av, align 4, !tbaa !216
  %spec.select = add i32 %i.dr, %i.dm
  %i.ds = add i32 %spec.select, %i.dq             ; 2 uses
  store i32 %i.ds, ptr %i.av, align 4, !tbaa !216
  %i.dt = load ptr, ptr %i.at, align 8, !tbaa !119
  %.not.i29 = icmp eq ptr %i.di, %i.dt
  br i1 %.not.i29, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  store i32 %i.ds, ptr %i.di, align 4, !tbaa !138
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 2 uses
  store ptr %i.du, ptr %i.au, align 8, !tbaa !186
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit38

bb.p:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.dv = load ptr, ptr %i.b, align 8, !tbaa !118 ; 4 uses
  %i.dw = ptrtoint ptr %i.di to i64
  %i.dx = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx                    ; 5 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775804
  br i1 %i.dz, label %.invoke, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i30

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i30: ; preds = %bb.p
  %i.ea = ashr exact i64 %i.dy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i31 = tail call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i.i31, %i.ea ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %i.ed = tail call i64 @llvm.umin.i64(i64 %i.eb, i64 2305843009213693951)
  %i.ee = select i1 %i.ec, i64 2305843009213693951, i64 %i.ed ; 3 uses
  %.not.i.i.i32 = icmp ne i64 %i.ee, 0
  tail call void @llvm.assume(i1 %.not.i.i.i32)
  %i.ef = shl nuw nsw i64 %i.ee, 2
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #37
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc37:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i30
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %i.dy ; 2 uses
  %i.ei = load i32, ptr %i.av, align 4, !tbaa !138
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !138
  %i.ej = icmp sgt i64 %i.dy, 0
  br i1 %i.ej, label %bb.q, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i33

bb.q:                                             ; preds = %.noexc37
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eg, ptr align 4 %i.dv, i64 %i.dy, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i33

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i33: ; preds = %bb.q, %.noexc37
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 4 ; 2 uses
  %.not.i17.i.i34 = icmp eq ptr %i.dv, null
  br i1 %.not.i17.i.i34, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i35, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i33
  %i.el = load ptr, ptr %i.at, align 8, !tbaa !119
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = sub i64 %i.em, %i.dx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.en) #36
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i35

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i35: ; preds = %bb.r, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i33
  store ptr %i.eg, ptr %i.b, align 8, !tbaa !118
  store ptr %i.ek, ptr %i.au, align 8, !tbaa !186
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.ee
  store ptr %i.eo, ptr %i.at, align 8, !tbaa !119
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit38

_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit38: ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i35, %bb.o
  %i.ep = phi ptr [ %i.ek, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i35 ], [ %i.du, %bb.o ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eq = load i32, ptr %0, align 8, !tbaa !162   ; 2 uses
  %i.er = sext i32 %i.eq to i64
  %i.es = icmp slt i64 %indvars.iv.next, %i.er
  br i1 %i.es, label %bb.k, label %._crit_edge, !llvm.loop !772

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i30, %.invoke, %bb.j, %bb.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i, %bb.b
  %lpad.loopexit.split-lp83 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #19
  %i.et = load ptr, ptr %i.c, align 8, !tbaa !197 ; 3 uses
  %.not.i39 = icmp eq ptr %i.et, null
  br i1 %.not.i39, label %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE5resetEPS1_.exit.sink.split.i, %.noexc23, %.noexc22
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.eu, align 8, !tbaa !160
  ret void

_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ev = load ptr, ptr %i.et, align 8, !tbaa !134
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  tail call void %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.et) #19, !inline_history !10
  br label %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i
  %i.ey = load ptr, ptr %i.b, align 8, !tbaa !118 ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EED2Ev.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !119
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = ptrtoint ptr %i.ey to i64
  %i.fd = sub i64 %i.fb, %i.fc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.fd) #36
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EED2Ev.exit, %bb.t
  tail call void @_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #19
  resume { ptr, i32 } %lpad.loopexit.split-lp83
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM7Dataset6ReSizeEi(ptr noundef nonnull align 8 dereferenceable(864) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %3 = alloca %class.ThreadExceptionHelper, align 8 ; 7 uses
  %i.a = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !117
  %.not = icmp eq i32 %i.c, %1
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.b, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %i.d = invoke i32 @OMP_NUM_THREADS()
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.a, i32 %i.d)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_ZN8LightGBM7Dataset6ReSizeEi.omp_outlined, ptr nonnull %0, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.e = load ptr, ptr %3, align 8, !tbaa !209    ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN21ThreadExceptionHelperD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.c
  store ptr %i.e, ptr %2, align 8, !tbaa !209
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofree noundef nonnull align 8 dereferenceable(8) %2) #38
          to label %bb.d unwind label %bb.e
end_hunk_7
begin_hunk_8_@_ZN8LightGBM7Dataset12DumpTextFileEPKc:bb.a

_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.pre = load i32, ptr %i.d, align 8, !tbaa !304
  store ptr %i.by, ptr %4, align 8, !tbaa !191
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !192
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bu ; 3 uses
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !195
  %i.cb = icmp sgt i32 %.pre.pre, 0
  br i1 %i.cb, label %.lr.ph115, label %.preheader

.lr.ph115:                                        ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph112, %._crit_edge109
  %indvars.iv = phi i64 [ 0, %.lr.ph112 ], [ %indvars.iv.next, %._crit_edge109 ] ; 4 uses
  %i.cg = trunc nuw nsw i64 %indvars.iv to i32
  %i.ch = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.85, i32 noundef %i.cg) #19 ; 0 uses
  %i.ci = load ptr, ptr %i.ba, align 8, !tbaa !255
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %indvars.iv ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !313
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !257 ; 2 uses
  %.not123 = icmp eq ptr %i.cl, %i.cm
  br i1 %.not123, label %._crit_edge109, label %.lr.ph108

._crit_edge109:                                   ; preds = %.lr.ph108, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cn = load i32, ptr %i.g, align 4, !tbaa !303
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next, %i.co
  br i1 %i.cp, label %bb.i, label %._crit_edge113, !llvm.loop !835

.lr.ph108:                                        ; preds = %bb.i, %.lr.ph108
  %i.cq = phi ptr [ %i.cz, %.lr.ph108 ], [ %i.cm, %bb.i ]
  %.053106 = phi i64 [ %i.cu, %.lr.ph108 ], [ 0, %bb.i ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.053106
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !125
  %i.ct = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.86, double noundef %i.cs) #19 ; 0 uses
  %i.cu = add nuw i64 %.053106, 1                 ; 2 uses
  %i.cv = load ptr, ptr %i.ba, align 8, !tbaa !255
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %indvars.iv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !313
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !257 ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 3
  %i.de = icmp ult i64 %i.cu, %i.dd
  br i1 %i.de, label %.lr.ph108, label %._crit_edge109, !llvm.loop !836

.preheader:                                       ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit, %bb.h, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.df = phi ptr [ null, %bb.h ], [ %i.ca, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit ], [ %i.gk, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ]
  %i.dg = phi ptr [ null, %bb.h ], [ %i.by, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit ], [ %i.gl, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 2 uses
  %.pr.i = phi ptr [ null, %bb.h ], [ %i.by, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit ], [ %i.gj, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 6 uses
  %i.dh = load i32, ptr %i.m, align 8, !tbaa !117
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph121, label %._crit_edge122

.lr.ph121:                                        ; preds = %.preheader
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.q

bb.j:                                             ; preds = %.lr.ph115, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.dk = phi ptr [ %i.by, %.lr.ph115 ], [ %i.gj, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 11 uses
  %i.dl = phi ptr [ %i.ca, %.lr.ph115 ], [ %i.gk, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 5 uses
  %i.dm = phi ptr [ %i.by, %.lr.ph115 ], [ %i.gl, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 3 uses
  %indvars.iv128 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next129, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 3 uses
  %i.dn = load ptr, ptr %i.cc, align 8, !tbaa !200
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv128
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !138
  %i.dq = load ptr, ptr %i.cd, align 8, !tbaa !200
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv128
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !138
  %i.dt = sext i32 %i.dp to i64
  %i.du = load ptr, ptr %i.ce, align 8, !tbaa !139
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dt
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !141 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = sext i32 %i.ds to i64                   ; 3 uses
  %i.dz = load ptr, ptr %i.dx, align 8, !tbaa !168
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dy
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !170 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 156
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !182 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 88
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !160, !range !129, !noundef !130
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !118
  %i.ej = getelementptr [4 x i8], ptr %i.ei, i64 %i.dy ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !138
  %i.el = getelementptr i8, ptr %i.ej, i64 4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !138
  %i.en = add i32 %i.em, -1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dw, i64 56
  br label %.invoke

bb.l:                                             ; preds = %bb.j
  %.not.i = icmp eq i32 %i.ed, 0
  %i.ep = load i32, ptr %i.eb, align 8, !tbaa !243
  %i.eq = sext i1 %.not.i to i32
  %i.er = add i32 %i.ep, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !265
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.dy
  br label %.invoke

.invoke:                                          ; preds = %bb.k, %bb.l
  %.sink.in = phi ptr [ %i.eo, %bb.k ], [ %i.eu, %bb.l ]
  %i.ev = phi i32 [ %i.ek, %bb.k ], [ 1, %bb.l ]
  %i.ew = phi i32 [ %i.en, %bb.k ], [ %i.er, %bb.l ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !197 ; 2 uses
  %i.ex = load ptr, ptr %.sink, align 8, !tbaa !134
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = invoke noundef ptr %i.ez(ptr noundef nonnull align 8 dereferenceable(8) %.sink, i32 noundef %i.ev, i32 noundef %i.ew, i32 noundef %i.ed)
          to label %_ZN8LightGBM12FeatureGroup18SubFeatureIteratorEi.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !24 ; 2 uses

_ZN8LightGBM12FeatureGroup18SubFeatureIteratorEi.exit: ; preds = %.invoke
  %.not.i72 = icmp eq ptr %i.dm, %i.dl
  br i1 %.not.i72, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN8LightGBM12FeatureGroup18SubFeatureIteratorEi.exit
  store ptr %i.fa, ptr %i.dm, align 8, !tbaa !194
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  store ptr %i.fb, ptr %i.cf, align 8, !tbaa !192
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.n:                                             ; preds = %_ZN8LightGBM12FeatureGroup18SubFeatureIteratorEi.exit
  %i.fc = ptrtoint ptr %i.dl to i64               ; 2 uses
  %i.fd = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.fe = sub i64 %i.fc, %i.fd                    ; 4 uses
  %i.ff = icmp eq i64 %i.fe, 9223372036854775800
  br i1 %i.ff, label %.invoke162, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

.invoke162:                                       ; preds = %bb.n, %._crit_edge113
  %i.fg = phi ptr [ @.str.20, %._crit_edge113 ], [ @.str.21, %bb.n ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.fg) #38
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke162
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.fh = ashr exact i64 %i.fe, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fh, i64 1)
  %i.fi = add nsw i64 %.sroa.speculated.i.i.i, %i.fh ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.fh
  %i.fk = call i64 @llvm.umin.i64(i64 %i.fi, i64 1152921504606846975)
  %i.fl = select i1 %i.fj, i64 1152921504606846975, i64 %i.fk ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fl, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fm = shl nuw nsw i64 %i.fl, 3
  %i.fn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #37
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 11 uses

.noexc74:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fe
  store ptr %i.fa, ptr %i.fo, align 8, !tbaa !194
  %.not10.i.i.i.i.i = icmp eq ptr %i.dk, %i.dl
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc74
  %i.fp = add i64 %i.fc, -8
  %i.fq = sub i64 %i.fp, %i.fd                    ; 3 uses
  %i.fr = lshr i64 %i.fq, 3
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fq, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader176, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ft = and i64 %i.fq, -8
  %i.fu = add i64 %i.ft, 8                        ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fn, i64 %i.fu
  %i.fw = getelementptr i8, ptr %i.dk, i64 %i.fu
  %bound0 = icmp ult ptr %i.fn, %i.fw
  %bound1 = icmp ult ptr %i.dk, %i.fv
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader176, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fs, 4611686018427387900     ; 3 uses
  %i.fx = shl i64 %n.vec, 3                       ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fn, i64 %i.fx  ; 2 uses
  %i.fz = getelementptr i8, ptr %i.dk, i64 %i.fx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ga = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fn, i64 %i.ga ; 2 uses
  %next.gep173 = getelementptr i8, ptr %i.dk, i64 %i.ga ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %i.gb = getelementptr i8, ptr %next.gep173, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep173, align 8, !tbaa !194, !alias.scope !851
  %wide.load174 = load <2 x i64>, ptr %i.gb, align 8, !tbaa !194, !alias.scope !851
  %i.gc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !194, !alias.scope !852, !noalias !853
  store <2 x i64> %wide.load174, ptr %i.gc, align 8, !tbaa !194, !alias.scope !852, !noalias !853
  %5 = getelementptr i8, ptr %next.gep173, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep173, align 8, !tbaa !194, !alias.scope !851
  store <2 x ptr> splat (ptr null), ptr %5, align 8, !tbaa !194, !alias.scope !851
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gd = icmp eq i64 %index.next, %n.vec
  br i1 %i.gd, label %middle.block, label %vector.body, !llvm.loop !843

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fs, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader176

.lr.ph.i.i.i.i.i.preheader176:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.fn, %vector.memcheck ], [ %i.fn, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fy, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.dk, %vector.memcheck ], [ %i.dk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fz, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader176, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader176 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader176 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %i.ge = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !194, !alias.scope !850
  store i64 %i.ge, ptr %.012.i.i.i.i.i, align 8, !tbaa !194, !alias.scope !849
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !194, !alias.scope !850
  %i.gf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gf, %i.dl
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !844

_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc74
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fn, %.noexc74 ], [ %i.fy, %middle.block ], [ %i.gg, %.lr.ph.i.i.i.i.i ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.fe) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.fn, ptr %4, align 8, !tbaa !191
  store ptr %i.gh, ptr %i.cf, align 8, !tbaa !192
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fl ; 2 uses
  store ptr %i.gi, ptr %i.bw, align 8, !tbaa !195
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.m
  %i.gj = phi ptr [ %i.fn, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.dk, %bb.m ] ; 2 uses
  %i.gk = phi ptr [ %i.gi, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.dl, %bb.m ] ; 2 uses
  %i.gl = phi ptr [ %i.gh, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.fb, %bb.m ] ; 2 uses
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.gm = load i32, ptr %i.d, align 8, !tbaa !304
  %i.gn = sext i32 %i.gm to i64
  %i.go = icmp slt i64 %indvars.iv.next129, %i.gn
  br i1 %i.go, label %bb.j, label %.preheader, !llvm.loop !845

._crit_edge122:                                   ; preds = %._crit_edge119, %.preheader
  %i.gp = call i32 @fclose(ptr noundef %i.c)      ; 0 uses
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.dg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge122, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gu, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i, %._crit_edge122 ] ; 2 uses
  %i.gq = load ptr, ptr %.05.i.i.i, align 8, !tbaa !194 ; 3 uses
  %.not.i.i.i.i.i75 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i.i75, label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN8LightGBM11BinIteratorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN8LightGBM11BinIteratorEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !134
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(8) %i.gq) #19, !inline_history !846
  br label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN8LightGBM11BinIteratorEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.gu, %i.dg
  br i1 %.not.i.i.i76, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %._crit_edge122
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.gv = ptrtoint ptr %i.df to i64
  %i.gw = ptrtoint ptr %.pr.i to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.gx) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.q:                                             ; preds = %.lr.ph121, %._crit_edge119
  %.049120 = phi i32 [ 0, %.lr.ph121 ], [ %i.ha, %._crit_edge119 ] ; 2 uses
  %fputc60 = call i32 @fputc(i32 10, ptr %i.c)    ; 0 uses
  %i.gy = load i32, ptr %i.g, align 4, !tbaa !303
  %i.gz = icmp sgt i32 %i.gy, 0
  br i1 %i.gz, label %.lr.ph118, label %._crit_edge119

._crit_edge119:                                   ; preds = %bb.u, %bb.q
  %i.ha = add nuw nsw i32 %.049120, 1             ; 2 uses
  %i.hb = load i32, ptr %i.m, align 8, !tbaa !117
  %i.hc = icmp slt i32 %i.ha, %i.hb
  br i1 %i.hc, label %bb.q, label %._crit_edge122, !llvm.loop !847

.lr.ph118:                                        ; preds = %bb.q, %bb.u
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %bb.u ], [ 0, %bb.q ] ; 2 uses
  %i.hd = load ptr, ptr %i.dj, align 8, !tbaa !200
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv131
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !138 ; 2 uses
  %i.hg = icmp slt i32 %i.hf, 0
  br i1 %i.hg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph118
  %fwrite61 = call i64 @fwrite(ptr nonnull @.str.87, i64 4, i64 1, ptr %i.c) ; 0 uses
  br label %bb.u

bb.s:                                             ; preds = %.lr.ph118
  %i.hh = zext nneg i32 %i.hf to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.pr.i, i64 %i.hh
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !194 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !134
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = invoke noundef i32 %i.hl(ptr noundef nonnull align 8 dereferenceable(8) %i.hj, i32 noundef %.049120)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.hn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.83, i32 noundef %i.hm) #19 ; 0 uses
  br label %bb.u

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %_ZNKSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %.invoke, %.invoke162, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %lpad.loopexit.split-lp178 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %lpad.loopexit.split-lp178

bb.u:                                             ; preds = %bb.t, %bb.r
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %i.ho = load i32, ptr %i.g, align 4, !tbaa !303
  %i.hp = sext i32 %i.ho to i64
  %i.hq = icmp slt i64 %indvars.iv.next132, %i.hp
  br i1 %i.hq, label %.lr.ph118, label %._crit_edge119, !llvm.loop !848
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #12

declare void @_ZN8LightGBM18MultiValBinWrapper9InitTrainERKSt6vectorIiSaIiEERKS1_ISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS7_EESaISA_EERKS1_IaSaIaEEPKii(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK8LightGBM7Dataset12FixHistogramEiddPd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0, i32 noundef %1, double noundef %2, double noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #28 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !200
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !138
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !200
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.b
  %i.i = load i32, ptr %i.h, align 4, !tbaa !138
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = sext i32 %i.e to i64
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !139
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !141
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = sext i32 %i.i to i64
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !168
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 156
  %i.u = load i32, ptr %i.t, align 4, !tbaa !182  ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.w = load i32, ptr %i.s, align 8, !tbaa !243  ; 4 uses
  %i.x = shl nuw i32 %i.u, 1
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %4, i64 %i.y ; 5 uses
  store double %2, ptr %i.z, align 8, !tbaa !125
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  store double %3, ptr %i.aa, align 8, !tbaa !125
  %i.ab = icmp sgt i32 %i.w, 0
  br i1 %i.ab, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ac = zext nneg i32 %i.u to i64               ; 3 uses
  %wide.trip.count = zext nneg i32 %i.w to i64    ; 2 uses
  %i.ad = insertelement <2 x double> poison, double %2, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %3, i64 1 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.af = icmp eq i32 %i.w, 1
  br i1 %i.af, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
end_hunk_8
begin_hunk_9_@_ZN8LightGBM7Dataset15AddFeaturesFromEPS0_:bb.a
.lr.ph557:                                        ; preds = %.preheader491
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !139 ; 5 uses
  %wide.trip.count674 = zext nneg i32 %i.y to i64 ; 2 uses
  %xtraiter1118 = and i64 %wide.trip.count674, 3  ; 3 uses
  %i.ac = icmp ult i32 %i.y, 4
  br i1 %i.ac, label %.epil.preheader1117, label %.lr.ph557.new

.lr.ph557.new:                                    ; preds = %.lr.ph557
  %unroll_iter1123 = and i64 %wide.trip.count674, 2147483644
  br label %bb.i

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.g ] ; 6 uses
  %.0131554 = phi i32 [ -1, %.lr.ph.new ], [ %spec.select.3, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !141
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !160, !range !129, !noundef !130
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.ah, i32 %i.ai, i32 %.0131554
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !141
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %i.am = load i8, ptr %i.al, align 8, !tbaa !160, !range !129, !noundef !130
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = trunc nuw nsw i64 %indvars.iv.next to i32
  %spec.select.1 = select i1 %i.an, i32 %i.ao, i32 %spec.select
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.1
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !141
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !160, !range !129, !noundef !130
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %spec.select.2 = select i1 %i.at, i32 %i.au, i32 %spec.select.1
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.2
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !141
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !160, !range !129, !noundef !130
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %spec.select.3 = select i1 %i.az, i32 %i.ba, i32 %spec.select.2 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader491.loopexit.unr-lcssa, label %bb.g, !llvm.loop !856

._crit_edge.unr-lcssa:                            ; preds = %bb.i
  %lcmp.mod1120.not = icmp eq i64 %xtraiter1118, 0
  br i1 %lcmp.mod1120.not, label %._crit_edge, label %.epil.preheader1117

.epil.preheader1117:                              ; preds = %._crit_edge.unr-lcssa, %.lr.ph557
  %indvars.iv671.epil.init = phi i64 [ 0, %.lr.ph557 ], [ %indvars.iv.next672.3, %._crit_edge.unr-lcssa ]
  %.0132556.epil.init = phi i32 [ -1, %.lr.ph557 ], [ %spec.select188.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod1122 = icmp ne i64 %xtraiter1118, 0
  tail call void @llvm.assume(i1 %lcmp.mod1122)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader1117
  %indvars.iv671.epil = phi i64 [ %indvars.iv671.epil.init, %.epil.preheader1117 ], [ %indvars.iv.next672.epil, %bb.h ] ; 3 uses
  %.0132556.epil = phi i32 [ %.0132556.epil.init, %.epil.preheader1117 ], [ %spec.select188.epil, %bb.h ]
  %epil.iter1119 = phi i64 [ 0, %.epil.preheader1117 ], [ %epil.iter1119.next, %bb.h ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv671.epil
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !141
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !160, !range !129, !noundef !130
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = trunc nuw nsw i64 %indvars.iv671.epil to i32
  %spec.select188.epil = select i1 %i.bf, i32 %i.bg, i32 %.0132556.epil ; 2 uses
  %indvars.iv.next672.epil = add nuw nsw i64 %indvars.iv671.epil, 1
  %epil.iter1119.next = add i64 %epil.iter1119, 1 ; 2 uses
  %epil.iter1119.cmp.not = icmp eq i64 %epil.iter1119.next, %xtraiter1118
  br i1 %epil.iter1119.cmp.not, label %._crit_edge, label %bb.h, !llvm.loop !857

._crit_edge:                                      ; preds = %bb.h, %._crit_edge.unr-lcssa
  %spec.select188.lcssa = phi i32 [ %spec.select188.3, %._crit_edge.unr-lcssa ], [ %spec.select188.epil, %bb.h ] ; 2 uses
  %i.bh = icmp slt i32 %.0131.lcssa, 0
  %i.bi = icmp slt i32 %spec.select188.lcssa, 0
  %or.cond = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond, label %._crit_edge.thread, label %bb.am

bb.i:                                             ; preds = %bb.i, %.lr.ph557.new
  %indvars.iv671 = phi i64 [ 0, %.lr.ph557.new ], [ %indvars.iv.next672.3, %bb.i ] ; 6 uses
  %.0132556 = phi i32 [ -1, %.lr.ph557.new ], [ %spec.select188.3, %bb.i ]
  %niter1124 = phi i64 [ 0, %.lr.ph557.new ], [ %niter1124.next.3, %bb.i ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv671
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !141
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !160, !range !129, !noundef !130
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = trunc nuw nsw i64 %indvars.iv671 to i32
  %spec.select188 = select i1 %i.bn, i32 %i.bo, i32 %.0132556
  %indvars.iv.next672 = or disjoint i64 %indvars.iv671, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next672
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !141
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !160, !range !129, !noundef !130
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = trunc nuw nsw i64 %indvars.iv.next672 to i32
  %spec.select188.1 = select i1 %i.bt, i32 %i.bu, i32 %spec.select188
  %indvars.iv.next672.1 = or disjoint i64 %indvars.iv671, 2 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next672.1
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !141
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 88
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !160, !range !129, !noundef !130
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = trunc nuw nsw i64 %indvars.iv.next672.1 to i32
  %spec.select188.2 = select i1 %i.bz, i32 %i.ca, i32 %spec.select188.1
  %indvars.iv.next672.2 = or disjoint i64 %indvars.iv671, 3 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next672.2
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !141
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !160, !range !129, !noundef !130
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = trunc nuw nsw i64 %indvars.iv.next672.2 to i32
  %spec.select188.3 = select i1 %i.cf, i32 %i.cg, i32 %spec.select188.2 ; 3 uses
  %indvars.iv.next672.3 = add nuw nsw i64 %indvars.iv671, 4 ; 2 uses
  %niter1124.next.3 = add i64 %niter1124, 4       ; 2 uses
  %niter1124.ncmp.3 = icmp eq i64 %niter1124.next.3, %unroll_iter1123
  br i1 %niter1124.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.i, !llvm.loop !858

._crit_edge.thread:                               ; preds = %.preheader491, %._crit_edge
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 488
  tail call void @_ZN8LightGBM10PushVectorIiEEvPSt6vectorIT_SaIS2_EERKS4_(ptr noundef nonnull %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 560
  tail call void @_ZN8LightGBM10PushVectorIiEEvPSt6vectorIT_SaIS2_EERKS4_(ptr noundef nonnull %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.ck)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !263 ; 2 uses
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !139 ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 4 uses
  %i.ct = icmp ugt i64 %i.cs, 9223372036854775800
  br i1 %i.ct, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.thread
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #38
  unreachable

bb.k:                                             ; preds = %._crit_edge.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !264
  %i.cw = load ptr, ptr %i.cl, align 8, !tbaa !139
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = icmp ult i64 %i.cz, %i.cs
  br i1 %i.da, label %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !263
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = sub i64 %i.dd, %i.cy
  %i.df = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #37 ; 9 uses
  %i.dg = load ptr, ptr %i.cl, align 8, !tbaa !139 ; 11 uses
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !263 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.dg, %i.dh
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %i.di = ptrtoaddr ptr %i.dh to i64
  %i.dj = ptrtoaddr ptr %i.dg to i64
  %i.dk = add i64 %i.di, -8
  %i.dl = sub i64 %i.dk, %i.dj                    ; 3 uses
  %i.dm = lshr i64 %i.dl, 3
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %min.iters.check1004 = icmp ult i64 %i.dl, 136
  br i1 %min.iters.check1004, label %.lr.ph.i.i.i.i.preheader1077, label %vector.memcheck1005

vector.memcheck1005:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.do = and i64 %i.dl, -8
  %i.dp = add i64 %i.do, 8                        ; 2 uses
  %i.dq = getelementptr i8, ptr %i.df, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dg, i64 %i.dp
  %bound01006 = icmp ult ptr %i.df, %i.dr
  %bound11007 = icmp ult ptr %i.dg, %i.dq
  %found.conflict1008 = and i1 %bound01006, %bound11007
  br i1 %found.conflict1008, label %.lr.ph.i.i.i.i.preheader1077, label %vector.ph1009

vector.ph1009:                                    ; preds = %vector.memcheck1005
  %n.vec1010 = and i64 %i.dn, 4611686018427387900 ; 3 uses
  %i.ds = shl i64 %n.vec1010, 3                   ; 2 uses
  %i.dt = getelementptr i8, ptr %i.df, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dg, i64 %i.ds
  br label %vector.body1011

vector.body1011:                                  ; preds = %vector.body1011, %vector.ph1009
  %index1012 = phi i64 [ 0, %vector.ph1009 ], [ %index.next1017, %vector.body1011 ] ; 2 uses
  %i.dv = shl i64 %index1012, 3                   ; 2 uses
  %next.gep1013 = getelementptr i8, ptr %i.df, i64 %i.dv ; 2 uses
  %next.gep1014 = getelementptr i8, ptr %i.dg, i64 %i.dv ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.dw = getelementptr i8, ptr %next.gep1014, i64 16
  %wide.load1015 = load <2 x i64>, ptr %next.gep1014, align 8, !tbaa !141, !alias.scope !907
  %wide.load1016 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !141, !alias.scope !907
  %i.dx = getelementptr i8, ptr %next.gep1013, i64 16
  store <2 x i64> %wide.load1015, ptr %next.gep1013, align 8, !tbaa !141, !alias.scope !908, !noalias !909
  store <2 x i64> %wide.load1016, ptr %i.dx, align 8, !tbaa !141, !alias.scope !908, !noalias !909
  %9 = getelementptr i8, ptr %next.gep1014, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1014, align 8, !tbaa !141, !alias.scope !907
  store <2 x ptr> splat (ptr null), ptr %9, align 8, !tbaa !141, !alias.scope !907
  %index.next1017 = add nuw i64 %index1012, 4     ; 2 uses
  %i.dy = icmp eq i64 %index.next1017, %n.vec1010
  br i1 %i.dy, label %middle.block1018, label %vector.body1011, !llvm.loop !865

middle.block1018:                                 ; preds = %vector.body1011
  %cmp.n1019 = icmp eq i64 %i.dn, %n.vec1010
  br i1 %cmp.n1019, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.preheader1077

.lr.ph.i.i.i.i.preheader1077:                     ; preds = %vector.memcheck1005, %.lr.ph.i.i.i.i.preheader, %middle.block1018
  %.012.i.i.i.i.ph = phi ptr [ %i.df, %vector.memcheck1005 ], [ %i.df, %.lr.ph.i.i.i.i.preheader ], [ %i.dt, %middle.block1018 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.dg, %vector.memcheck1005 ], [ %i.dg, %.lr.ph.i.i.i.i.preheader ], [ %i.du, %middle.block1018 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader1077, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1077 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1077 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.dz = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !141, !alias.scope !906
  store i64 %i.dz, ptr %.012.i.i.i.i, align 8, !tbaa !141, !alias.scope !905
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !141, !alias.scope !906
  %i.ea = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ea, %i.dh
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !866

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block1018, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.dg, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.ec = load ptr, ptr %i.cu, align 8, !tbaa !264
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.dg to i64
  %i.ef = sub i64 %i.ed, %i.ee
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.ef) #36
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.df, ptr %i.cl, align 8, !tbaa !139
  %i.eg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.de
  store ptr %i.eg, ptr %i.db, align 8, !tbaa !263
  %i.eh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cs
  store ptr %i.eh, ptr %i.cu, align 8, !tbaa !264
  %.pre716 = load ptr, ptr %i.cm, align 8, !tbaa !331
  %.pre717 = load ptr, ptr %i.cn, align 8, !tbaa !331
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %i.ei = phi ptr [ %i.co, %bb.k ], [ %.pre717, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i ] ; 2 uses
  %i.ej = phi ptr [ %i.cp, %bb.k ], [ %.pre716, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i ] ; 2 uses
  %.not434586 = icmp eq ptr %i.ej, %i.ei
  br i1 %.not434586, label %._crit_edge589, label %.lr.ph588

.lr.ph588:                                        ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.pre718 = load ptr, ptr %i.ek, align 8, !tbaa !263
  br label %bb.m

._crit_edge589:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !184 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !184 ; 2 uses
  %.not435590 = icmp eq ptr %i.em, %i.eo
  br i1 %.not435590, label %._crit_edge594, label %.lr.ph593

.lr.ph593:                                        ; preds = %._crit_edge589
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.t

bb.m:                                             ; preds = %.lr.ph588, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.et = phi ptr [ %.pre718, %.lr.ph588 ], [ %i.gp, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ]
  %.sroa.0425.0587 = phi ptr [ %i.ej, %.lr.ph588 ], [ %i.gq, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 2 uses
  %i.eu = load ptr, ptr %i.cl, align 8, !tbaa !139
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = lshr exact i64 %i.ex, 3
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #37 ; 4 uses
  %i.fb = load ptr, ptr %.sroa.0425.0587, align 8, !tbaa !141
  invoke void @_ZN8LightGBM12FeatureGroupC2ERKS0_bi(ptr noundef nonnull align 8 dereferenceable(96) %i.fa, ptr noundef nonnull align 8 dereferenceable(96) %i.fb, i1 noundef zeroext true, i32 noundef %i.ez)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.fc = load ptr, ptr %i.ek, align 8, !tbaa !263 ; 6 uses
  %i.fd = load ptr, ptr %i.cu, align 8, !tbaa !264
  %.not.i = icmp eq ptr %i.fc, %i.fd
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.fa, ptr %i.fc, align 8, !tbaa !141
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  store ptr %i.fe, ptr %i.ek, align 8, !tbaa !263
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.p:                                             ; preds = %bb.n
  %i.ff = load ptr, ptr %i.cl, align 8, !tbaa !139 ; 10 uses
  %i.fg = ptrtoint ptr %i.fc to i64               ; 2 uses
  %i.fh = ptrtoint ptr %i.ff to i64               ; 3 uses
  %i.fi = sub i64 %i.fg, %i.fh                    ; 3 uses
  %i.fj = icmp eq i64 %i.fi, 9223372036854775800
  br i1 %i.fj, label %bb.q, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.fk = ashr exact i64 %i.fi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fk, i64 1)
  %i.fl = add nsw i64 %.sroa.speculated.i.i.i, %i.fk ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.fk
  %i.fn = tail call i64 @llvm.umin.i64(i64 %i.fl, i64 1152921504606846975)
  %i.fo = select i1 %i.fm, i64 1152921504606846975, i64 %i.fn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fo, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.fp = shl nuw nsw i64 %i.fo, 3
  %i.fq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fp) #37 ; 10 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fi
  store ptr %i.fa, ptr %i.fr, align 8, !tbaa !141
  %.not10.i.i.i.i.i = icmp eq ptr %i.ff, %i.fc
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.fs = add i64 %i.fg, -8
  %i.ft = sub i64 %i.fs, %i.fh                    ; 3 uses
  %i.fu = lshr i64 %i.ft, 3
  %i.fv = add nuw nsw i64 %i.fu, 1                ; 2 uses
  %min.iters.check1030 = icmp ult i64 %i.ft, 56
  br i1 %min.iters.check1030, label %.lr.ph.i.i.i.i.i.preheader1072, label %vector.memcheck1031

vector.memcheck1031:                              ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.fw = and i64 %i.ft, -8
  %i.fx = add i64 %i.fw, 8                        ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fq, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.ff, i64 %i.fx
  %bound01032 = icmp ult ptr %i.fq, %i.fz
  %bound11033 = icmp ult ptr %i.ff, %i.fy
  %found.conflict1034 = and i1 %bound01032, %bound11033
  br i1 %found.conflict1034, label %.lr.ph.i.i.i.i.i.preheader1072, label %vector.ph1035

vector.ph1035:                                    ; preds = %vector.memcheck1031
  %n.vec1036 = and i64 %i.fv, 4611686018427387900 ; 3 uses
  %i.ga = shl i64 %n.vec1036, 3                   ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fq, i64 %i.ga  ; 2 uses
  %i.gc = getelementptr i8, ptr %i.ff, i64 %i.ga
  br label %vector.body1037

vector.body1037:                                  ; preds = %vector.body1037, %vector.ph1035
  %index1038 = phi i64 [ 0, %vector.ph1035 ], [ %index.next1043, %vector.body1037 ] ; 2 uses
  %i.gd = shl i64 %index1038, 3                   ; 2 uses
  %next.gep1039 = getelementptr i8, ptr %i.fq, i64 %i.gd ; 2 uses
  %next.gep1040 = getelementptr i8, ptr %i.ff, i64 %i.gd ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.ge = getelementptr i8, ptr %next.gep1040, i64 16
  %wide.load1041 = load <2 x i64>, ptr %next.gep1040, align 8, !tbaa !141, !alias.scope !912
  %wide.load1042 = load <2 x i64>, ptr %i.ge, align 8, !tbaa !141, !alias.scope !912
  %i.gf = getelementptr i8, ptr %next.gep1039, i64 16
  store <2 x i64> %wide.load1041, ptr %next.gep1039, align 8, !tbaa !141, !alias.scope !913, !noalias !914
  store <2 x i64> %wide.load1042, ptr %i.gf, align 8, !tbaa !141, !alias.scope !913, !noalias !914
  %10 = getelementptr i8, ptr %next.gep1040, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1040, align 8, !tbaa !141, !alias.scope !912
  store <2 x ptr> splat (ptr null), ptr %10, align 8, !tbaa !141, !alias.scope !912
  %index.next1043 = add nuw i64 %index1038, 4     ; 2 uses
  %i.gg = icmp eq i64 %index.next1043, %n.vec1036
  br i1 %i.gg, label %middle.block1044, label %vector.body1037, !llvm.loop !873

middle.block1044:                                 ; preds = %vector.body1037
  %cmp.n1045 = icmp eq i64 %i.fv, %n.vec1036
  br i1 %cmp.n1045, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader1072

.lr.ph.i.i.i.i.i.preheader1072:                   ; preds = %vector.memcheck1031, %.lr.ph.i.i.i.i.i.preheader, %middle.block1044
  %.012.i.i.i.i.i.ph = phi ptr [ %i.fq, %vector.memcheck1031 ], [ %i.fq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gb, %middle.block1044 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ff, %vector.memcheck1031 ], [ %i.ff, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gc, %middle.block1044 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader1072, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader1072 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gi, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader1072 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.gh = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !141, !alias.scope !911
  store i64 %i.gh, ptr %.012.i.i.i.i.i, align 8, !tbaa !141, !alias.scope !910
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !141, !alias.scope !911
  %i.gi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gi, %i.fc
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !874

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block1044, %_ZNKSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fq, %_ZNKSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.gb, %middle.block1044 ], [ %i.gj, %.lr.ph.i.i.i.i.i ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.gl = load ptr, ptr %i.cu, align 8, !tbaa !264
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = sub i64 %i.gm, %i.fh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.gn) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.fq, ptr %i.cl, align 8, !tbaa !139
  store ptr %i.gk, ptr %i.ek, align 8, !tbaa !263
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fo
  store ptr %i.go, ptr %i.cu, align 8, !tbaa !264
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.gp = phi ptr [ %i.fe, %bb.o ], [ %i.gk, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0425.0587, i64 8 ; 2 uses
  %.not434 = icmp eq ptr %i.gq, %i.ei
  br i1 %.not434, label %._crit_edge589, label %bb.m

bb.s:                                             ; preds = %bb.m
  %i.gr = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef 96) #36
  br label %bb.fl

._crit_edge594:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %._crit_edge589
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 84
  tail call void @_ZN8LightGBM10PushOffsetIiEEvPSt6vectorIT_SaIS2_EERKS4_RKS2_(ptr noundef nonnull %i.gs, ptr noundef nonnull align 8 dereferenceable(24) %i.gt, ptr noundef nonnull align 4 dereferenceable(4) %i.gu)
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 464
  tail call void @_ZN8LightGBM10PushOffsetIiEEvPSt6vectorIT_SaIS2_EERKS4_RKS2_(ptr noundef nonnull %i.gv, ptr noundef nonnull align 8 dereferenceable(24) %i.gw, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !915 ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 -8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !45
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !915
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  %.sroa.0411.0595 = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !915
  %i.hg = icmp ult ptr %.sroa.0411.0595, %i.hf
  br i1 %i.hg, label %.lr.ph598, label %._crit_edge599

.lr.ph598:                                        ; preds = %._crit_edge594
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %.pre719 = load ptr, ptr %i.hh, align 8, !tbaa !249
  br label %bb.ag

bb.t:                                             ; preds = %.lr.ph593, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.sroa.0419.0591 = phi ptr [ %i.em, %.lr.ph593 ], [ %i.je, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.hi = load i32, ptr %.sroa.0419.0591, align 4, !tbaa !138 ; 2 uses
  %i.hj = icmp sgt i32 %i.hi, -1
  br i1 %i.hj, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.hk = load i32, ptr %i.es, align 8, !tbaa !304
  %i.hl = add nsw i32 %i.hk, %i.hi                ; 2 uses
  %i.hm = load ptr, ptr %i.eq, align 8, !tbaa !205 ; 4 uses
  %i.hn = load ptr, ptr %i.er, align 8, !tbaa !201
  %.not.i.i = icmp eq ptr %i.hm, %i.hn
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !138
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  store ptr %i.ho, ptr %i.eq, align 8, !tbaa !205
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.w:                                             ; preds = %bb.u
  %i.hp = load ptr, ptr %i.ep, align 8, !tbaa !200 ; 4 uses
  %i.hq = ptrtoint ptr %i.hm to i64
  %i.hr = ptrtoint ptr %i.hp to i64               ; 2 uses
  %i.hs = sub i64 %i.hq, %i.hr                    ; 5 uses
  %i.ht = icmp eq i64 %i.hs, 9223372036854775804
  br i1 %i.ht, label %bb.x, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.hu = ashr exact i64 %i.hs, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.hu, i64 1)
  %i.hv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.hu ; 2 uses
  %i.hw = icmp ult i64 %i.hv, %i.hu
  %i.hx = tail call i64 @llvm.umin.i64(i64 %i.hv, i64 2305843009213693951)
  %i.hy = select i1 %i.hw, i64 2305843009213693951, i64 %i.hx ; 3 uses
  %.not.i.i.i.i189 = icmp ne i64 %i.hy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i189)
  %i.hz = shl nuw nsw i64 %i.hy, 2
  %i.ia = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hz) #37 ; 4 uses
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 %i.hs ; 2 uses
  store i32 %i.hl, ptr %i.ib, align 4, !tbaa !138
  %i.ic = icmp sgt i64 %i.hs, 0
  br i1 %i.ic, label %bb.y, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.y:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ia, ptr align 4 %i.hp, i64 %i.hs, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.y, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.hp, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.ie = load ptr, ptr %i.er, align 8, !tbaa !201
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = sub i64 %i.if, %i.hr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef %i.ig) #36
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.z, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ia, ptr %i.ep, align 8, !tbaa !200
  store ptr %i.id, ptr %i.eq, align 8, !tbaa !205
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.hy
  store ptr %i.ih, ptr %i.er, align 8, !tbaa !201
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.aa:                                            ; preds = %bb.t
  %i.ii = load ptr, ptr %i.eq, align 8, !tbaa !205 ; 4 uses
  %i.ij = load ptr, ptr %i.er, align 8, !tbaa !201
  %.not.i.i190 = icmp eq ptr %i.ii, %i.ij
  br i1 %.not.i.i190, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 -1, ptr %i.ii, align 4, !tbaa !138
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store ptr %i.ik, ptr %i.eq, align 8, !tbaa !205
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.ac:                                            ; preds = %bb.aa
  %i.il = load ptr, ptr %i.ep, align 8, !tbaa !200 ; 4 uses
  %i.im = ptrtoint ptr %i.ii to i64
  %i.in = ptrtoint ptr %i.il to i64               ; 2 uses
  %i.io = sub i64 %i.im, %i.in                    ; 5 uses
  %i.ip = icmp eq i64 %i.io, 9223372036854775804
  br i1 %i.ip, label %bb.ad, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i191

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i191: ; preds = %bb.ac
  %i.iq = ashr exact i64 %i.io, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i192 = tail call i64 @llvm.umax.i64(i64 %i.iq, i64 1)
  %i.ir = add nsw i64 %.sroa.speculated.i.i.i.i192, %i.iq ; 2 uses
  %i.is = icmp ult i64 %i.ir, %i.iq
  %i.it = tail call i64 @llvm.umin.i64(i64 %i.ir, i64 2305843009213693951)
  %i.iu = select i1 %i.is, i64 2305843009213693951, i64 %i.it ; 3 uses
  %.not.i.i.i.i193 = icmp ne i64 %i.iu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i193)
  %i.iv = shl nuw nsw i64 %i.iu, 2
  %i.iw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iv) #37 ; 4 uses
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 %i.io ; 2 uses
  store i32 -1, ptr %i.ix, align 4, !tbaa !138
  %i.iy = icmp sgt i64 %i.io, 0
  br i1 %i.iy, label %bb.ae, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i194

bb.ae:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i191
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.iw, ptr align 4 %i.il, i64 %i.io, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i194

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i194: ; preds = %bb.ae, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i191
end_hunk_9
begin_hunk_10_@_ZN8LightGBM7Dataset15AddFeaturesFromEPS0_:bb.a
  %i.ph = ptrtoint ptr %i.pg to i64
  %i.pi = sub i64 %i.ph, %i.ot
  call void @_ZdlPvm(ptr noundef nonnull %i.or, i64 noundef %i.pi) #36
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i214

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i214: ; preds = %bb.ay, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i212
  store ptr %i.pc, ptr %i.ol, align 8, !tbaa !200
  store ptr %i.pf, ptr %i.om, align 8, !tbaa !205
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %i.pa
  store ptr %i.pj, ptr %i.oo, align 8, !tbaa !201
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit217

_ZNSt6vectorIiSaIiEE9push_backERKi.exit217:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i214, %bb.av
  %indvars.iv.next690 = add nuw nsw i64 %indvars.iv689, 1 ; 2 uses
  %exitcond693.not = icmp eq i64 %indvars.iv.next690, %wide.trip.count692
  br i1 %exitcond693.not, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit247, label %.lr.ph570, !llvm.loop !878

bb.az:                                            ; preds = %bb.au
  %i.pk = load ptr, ptr %i.lk, align 8, !tbaa !274 ; 3 uses
  %i.pl = load ptr, ptr %i.ll, align 8, !tbaa !275
  %.not.i218 = icmp eq ptr %i.pk, %i.pl
  br i1 %.not.i218, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pk, i8 0, i64 24, i1 false)
  %i.pm = load ptr, ptr %i.lk, align 8, !tbaa !274
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 24
  store ptr %i.pn, ptr %i.lk, align 8, !tbaa !274
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit221

bb.bb:                                            ; preds = %bb.az
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.pk)
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit221 unwind label %.loopexit.split-lp465.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIS_IiSaIiEESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit221: ; preds = %bb.bb, %bb.ba
  %i.po = icmp sgt i32 %i.oa, 0
  br i1 %i.po, label %.lr.ph567.preheader, label %._crit_edge568

.lr.ph567.preheader:                              ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit221
  %i.pp = sext i32 %i.nx to i64
  %wide.trip.count687 = zext nneg i32 %i.oa to i64
  br label %.lr.ph567

._crit_edge568:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit231, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit221
  %i.pq = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #37
          to label %bb.bg unwind label %.loopexit.split-lp465.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.lr.ph567:                                        ; preds = %.lr.ph567.preheader, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit231
  %indvars.iv684 = phi i64 [ 0, %.lr.ph567.preheader ], [ %indvars.iv.next685, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit231 ] ; 2 uses
  %i.pr = load ptr, ptr %i.lm, align 8, !tbaa !200
  %i.ps = getelementptr [4 x i8], ptr %i.pr, i64 %indvars.iv684
  %i.pt = getelementptr [4 x i8], ptr %i.ps, i64 %i.pp
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !138
  %i.pv = load i32, ptr %i.ln, align 4, !tbaa !303
  %i.pw = add nsw i32 %i.pv, %i.pu                ; 2 uses
  %i.px = load ptr, ptr %i.lk, align 8, !tbaa !288 ; 3 uses
  %i.py = getelementptr inbounds i8, ptr %i.px, i64 -24 ; 2 uses
  %i.pz = getelementptr inbounds i8, ptr %i.px, i64 -16 ; 3 uses
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !205 ; 4 uses
  %i.qb = getelementptr inbounds i8, ptr %i.px, i64 -8 ; 3 uses
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !201
  %.not.i222 = icmp eq ptr %i.qa, %i.qc
  br i1 %.not.i222, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph567
  store i32 %i.pw, ptr %i.qa, align 4, !tbaa !138
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 4
  store ptr %i.qd, ptr %i.pz, align 8, !tbaa !205
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit231

bb.bd:                                            ; preds = %.lr.ph567
  %i.qe = load ptr, ptr %i.py, align 8, !tbaa !200 ; 4 uses
  %i.qf = ptrtoint ptr %i.qa to i64
  %i.qg = ptrtoint ptr %i.qe to i64               ; 2 uses
  %i.qh = sub i64 %i.qf, %i.qg                    ; 5 uses
  %i.qi = icmp eq i64 %i.qh, 9223372036854775804
  br i1 %i.qi, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i223

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i223: ; preds = %bb.bd
  %i.qj = ashr exact i64 %i.qh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i224 = call i64 @llvm.umax.i64(i64 %i.qj, i64 1)
  %i.qk = add nsw i64 %.sroa.speculated.i.i.i224, %i.qj ; 2 uses
  %i.ql = icmp ult i64 %i.qk, %i.qj
  %i.qm = call i64 @llvm.umin.i64(i64 %i.qk, i64 2305843009213693951)
  %i.qn = select i1 %i.ql, i64 2305843009213693951, i64 %i.qm ; 3 uses
  %.not.i.i.i225 = icmp ne i64 %i.qn, 0
  call void @llvm.assume(i1 %.not.i.i.i225)
  %i.qo = shl nuw nsw i64 %i.qn, 2
  %i.qp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qo) #37
          to label %.noexc230 unwind label %.loopexit.split-lp465.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc230:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i223
  %i.qq = getelementptr inbounds i8, ptr %i.qp, i64 %i.qh ; 2 uses
  store i32 %i.pw, ptr %i.qq, align 4, !tbaa !138
  %i.qr = icmp sgt i64 %i.qh, 0
  br i1 %i.qr, label %bb.be, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i226

bb.be:                                            ; preds = %.noexc230
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qp, ptr align 4 %i.qe, i64 %i.qh, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i226

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i226: ; preds = %bb.be, %.noexc230
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 4
  %.not.i17.i.i227 = icmp eq ptr %i.qe, null
  br i1 %.not.i17.i.i227, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i228, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i226
  %i.qt = load ptr, ptr %i.qb, align 8, !tbaa !201
  %i.qu = ptrtoint ptr %i.qt to i64
  %i.qv = sub i64 %i.qu, %i.qg
  call void @_ZdlPvm(ptr noundef nonnull %i.qe, i64 noundef %i.qv) #36
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i228

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i228: ; preds = %bb.bf, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i226
  store ptr %i.qp, ptr %i.py, align 8, !tbaa !200
  store ptr %i.qs, ptr %i.pz, align 8, !tbaa !205
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %i.qn
  store ptr %i.qw, ptr %i.qb, align 8, !tbaa !201
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit231

_ZNSt6vectorIiSaIiEE9push_backERKi.exit231:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i228, %bb.bc
  %indvars.iv.next685 = add nuw nsw i64 %indvars.iv684, 1 ; 2 uses
  %exitcond688.not = icmp eq i64 %indvars.iv.next685, %wide.trip.count687
  br i1 %exitcond688.not, label %._crit_edge568, label %.lr.ph567, !llvm.loop !879

bb.bg:                                            ; preds = %._crit_edge568
  %i.qx = load ptr, ptr %i.lb, align 8, !tbaa !139
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %indvars.iv694
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !141
  invoke void @_ZN8LightGBM12FeatureGroupC2ERKS0_bi(ptr noundef nonnull align 8 dereferenceable(96) %i.pq, ptr noundef nonnull align 8 dereferenceable(96) %i.qz, i1 noundef zeroext false, i32 noundef -1)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.ra = load ptr, ptr %i.lo, align 8, !tbaa !263 ; 6 uses
  %i.rb = load ptr, ptr %i.lp, align 8, !tbaa !264
  %.not.i232 = icmp eq ptr %i.ra, %i.rb
  br i1 %.not.i232, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store ptr %i.pq, ptr %i.ra, align 8, !tbaa !141
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  store ptr %i.rc, ptr %i.lo, align 8, !tbaa !263
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit247

bb.bj:                                            ; preds = %bb.bh
  %i.rd = load ptr, ptr %i.kw, align 8, !tbaa !139 ; 10 uses
  %i.re = ptrtoint ptr %i.ra to i64               ; 2 uses
  %i.rf = ptrtoint ptr %i.rd to i64               ; 3 uses
  %i.rg = sub i64 %i.re, %i.rf                    ; 3 uses
  %i.rh = icmp eq i64 %i.rg, 9223372036854775800
  br i1 %i.rh, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i233

_ZNKSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i233: ; preds = %bb.bj
  %i.ri = ashr exact i64 %i.rg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i234 = call i64 @llvm.umax.i64(i64 %i.ri, i64 1)
  %i.rj = add nsw i64 %.sroa.speculated.i.i.i234, %i.ri ; 2 uses
  %i.rk = icmp ult i64 %i.rj, %i.ri
  %i.rl = call i64 @llvm.umin.i64(i64 %i.rj, i64 1152921504606846975)
  %i.rm = select i1 %i.rk, i64 1152921504606846975, i64 %i.rl ; 3 uses
  %.not.i.i.i235 = icmp ne i64 %i.rm, 0
  call void @llvm.assume(i1 %.not.i.i.i235)
  %i.rn = shl nuw nsw i64 %i.rm, 3
  %i.ro = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rn) #37
          to label %.noexc246 unwind label %.loopexit.split-lp465.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc246:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i233
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rg
  store ptr %i.pq, ptr %i.rp, align 8, !tbaa !141
  %.not10.i.i.i.i.i236 = icmp eq ptr %i.rd, %i.ra
  br i1 %.not10.i.i.i.i.i236, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i241, label %.lr.ph.i.i.i.i.i237.preheader

.lr.ph.i.i.i.i.i237.preheader:                    ; preds = %.noexc246
  %i.rq = add i64 %i.re, -8
  %i.rr = sub i64 %i.rq, %i.rf                    ; 3 uses
  %i.rs = lshr i64 %i.rr, 3
  %i.rt = add nuw nsw i64 %i.rs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.rr, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i237.preheader1095, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i237.preheader
  %i.ru = and i64 %i.rr, -8
  %i.rv = add i64 %i.ru, 8                        ; 2 uses
  %i.rw = getelementptr i8, ptr %i.ro, i64 %i.rv
  %i.rx = getelementptr i8, ptr %i.rd, i64 %i.rv
  %bound0 = icmp ult ptr %i.ro, %i.rx
  %bound1 = icmp ult ptr %i.rd, %i.rw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i237.preheader1095, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.rt, 4611686018427387900     ; 3 uses
  %i.ry = shl i64 %n.vec, 3                       ; 2 uses
  %i.rz = getelementptr i8, ptr %i.ro, i64 %i.ry  ; 2 uses
  %i.sa = getelementptr i8, ptr %i.rd, i64 %i.ry
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.sb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ro, i64 %i.sb ; 2 uses
  %next.gep995 = getelementptr i8, ptr %i.rd, i64 %i.sb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  %i.sc = getelementptr i8, ptr %next.gep995, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep995, align 8, !tbaa !141, !alias.scope !918
  %wide.load996 = load <2 x i64>, ptr %i.sc, align 8, !tbaa !141, !alias.scope !918
  %i.sd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !141, !alias.scope !919, !noalias !920
  store <2 x i64> %wide.load996, ptr %i.sd, align 8, !tbaa !141, !alias.scope !919, !noalias !920
  %11 = getelementptr i8, ptr %next.gep995, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep995, align 8, !tbaa !141, !alias.scope !918
  store <2 x ptr> splat (ptr null), ptr %11, align 8, !tbaa !141, !alias.scope !918
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.se = icmp eq i64 %index.next, %n.vec
  br i1 %i.se, label %middle.block, label %vector.body, !llvm.loop !886

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rt, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i241, label %.lr.ph.i.i.i.i.i237.preheader1095

.lr.ph.i.i.i.i.i237.preheader1095:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i237.preheader, %middle.block
  %.012.i.i.i.i.i238.ph = phi ptr [ %i.ro, %vector.memcheck ], [ %i.ro, %.lr.ph.i.i.i.i.i237.preheader ], [ %i.rz, %middle.block ]
  %.0911.i.i.i.i.i239.ph = phi ptr [ %i.rd, %vector.memcheck ], [ %i.rd, %.lr.ph.i.i.i.i.i237.preheader ], [ %i.sa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i237

.lr.ph.i.i.i.i.i237:                              ; preds = %.lr.ph.i.i.i.i.i237.preheader1095, %.lr.ph.i.i.i.i.i237
  %.012.i.i.i.i.i238 = phi ptr [ %i.sh, %.lr.ph.i.i.i.i.i237 ], [ %.012.i.i.i.i.i238.ph, %.lr.ph.i.i.i.i.i237.preheader1095 ] ; 2 uses
  %.0911.i.i.i.i.i239 = phi ptr [ %i.sg, %.lr.ph.i.i.i.i.i237 ], [ %.0911.i.i.i.i.i239.ph, %.lr.ph.i.i.i.i.i237.preheader1095 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  %i.sf = load i64, ptr %.0911.i.i.i.i.i239, align 8, !tbaa !141, !alias.scope !917
  store i64 %i.sf, ptr %.012.i.i.i.i.i238, align 8, !tbaa !141, !alias.scope !916
  store ptr null, ptr %.0911.i.i.i.i.i239, align 8, !tbaa !141, !alias.scope !917
  %i.sg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i239, i64 8 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i238, i64 8 ; 2 uses
  %.not.i.i.i.i.i240 = icmp eq ptr %i.sg, %i.ra
  br i1 %.not.i.i.i.i.i240, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i241, label %.lr.ph.i.i.i.i.i237, !llvm.loop !887

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i241: ; preds = %.lr.ph.i.i.i.i.i237, %middle.block, %.noexc246
  %.0.lcssa.i.i.i.i.i242 = phi ptr [ %i.ro, %.noexc246 ], [ %i.rz, %middle.block ], [ %i.sh, %.lr.ph.i.i.i.i.i237 ]
  %i.si = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i242, i64 8
  %.not.i23.i.i243 = icmp eq ptr %i.rd, null
  br i1 %.not.i23.i.i243, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i244, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i241
  %i.sj = load ptr, ptr %i.lp, align 8, !tbaa !264
  %i.sk = ptrtoint ptr %i.sj to i64
  %i.sl = sub i64 %i.sk, %i.rf
  call void @_ZdlPvm(ptr noundef nonnull %i.rd, i64 noundef %i.sl) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i244

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i244: ; preds = %bb.bk, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i241
  store ptr %i.ro, ptr %i.kw, align 8, !tbaa !139
  store ptr %i.si, ptr %i.lo, align 8, !tbaa !263
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.ro, i64 %i.rm
  store ptr %i.sm, ptr %i.lp, align 8, !tbaa !264
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit247

bb.bl:                                            ; preds = %bb.bg
  %i.sn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.pq, i64 noundef 96) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit295

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit247: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit217, %.preheader474, %bb.bi, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i244
  %indvars.iv.next695 = add nuw nsw i64 %indvars.iv694, 1 ; 2 uses
  %i.so = load i32, ptr %i.x, align 8, !tbaa !95  ; 2 uses
  %i.sp = sext i32 %i.so to i64
  %i.sq = icmp slt i64 %indvars.iv.next695, %i.sp
  br i1 %i.sq, label %bb.au, label %._crit_edge573, !llvm.loop !888

bb.bm:                                            ; preds = %._crit_edge573
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.33, i32 noundef 1725)
          to label %bb.bn unwind label %.loopexit.split-lp465.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm, %._crit_edge573
  %i.sr = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ss = load i32, ptr %i.sr, align 8, !tbaa !304
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.su = load i32, ptr %i.st, align 8, !tbaa !304
  %i.sv = add nsw i32 %i.su, %i.ss
  store i32 %i.sv, ptr %i.st, align 8, !tbaa !304
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !303
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !303
  %i.ta = add nsw i32 %i.sz, %i.sx                ; 3 uses
  %i.tb = sext i32 %i.ta to i64                   ; 2 uses
  %i.tc = icmp slt i32 %i.ta, 0
  br i1 %i.tc, label %.invoke, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.bn
  %.not.i.i.i.i248 = icmp eq i32 %i.ta, 0
  br i1 %.not.i.i.i.i248, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.td = shl nuw nsw i64 %i.tb, 2                ; 3 uses
  %i.te = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.td) #37
          to label %.noexc250 unwind label %.loopexit.split-lp465.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc250:                                        ; preds = %bb.bo
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.te, i8 -1, i64 %i.td, i1 false), !tbaa !138
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.tb
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.td
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc250, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0396.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.te, %.noexc250 ]
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.tf, %.noexc250 ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.tg, %.noexc250 ]
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !200 ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !201
  store ptr %.sroa.0396.0, ptr %i.th, align 8, !tbaa !200
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.tj, align 8, !tbaa !205
  store ptr %.sroa.11.0, ptr %i.tk, align 8, !tbaa !201
  %.not.i.i.i.i.i251 = icmp eq ptr %i.ti, null
  br i1 %.not.i.i.i.i.i251, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.tm = ptrtoint ptr %i.tl to i64
  %i.tn = ptrtoint ptr %i.ti to i64
  %i.to = sub i64 %i.tm, %i.tn
  call void @_ZdlPvm(ptr noundef nonnull %i.ti, i64 noundef %i.to) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bp, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %i.tq = load i32, ptr %i.st, align 8, !tbaa !304
  %i.tr = sext i32 %i.tq to i64                   ; 7 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !205 ; 2 uses
  %i.tu = load ptr, ptr %i.tp, align 8, !tbaa !200 ; 2 uses
  %i.tv = ptrtoint ptr %i.tt to i64
  %i.tw = ptrtoint ptr %i.tu to i64
  %i.tx = sub i64 %i.tv, %i.tw
  %i.ty = ashr exact i64 %i.tx, 2                 ; 3 uses
  %i.tz = icmp ult i64 %i.ty, %i.tr
  br i1 %i.tz, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ua = sub nuw nsw i64 %i.tr, %i.ty
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.tp, i64 noundef %i.ua)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge unwind label %.loopexit.split-lp465.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge:    ; preds = %bb.bq
  %.pre = load i32, ptr %i.st, align 8, !tbaa !304
  %.pre723 = sext i32 %.pre to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.br:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ub = icmp ugt i64 %i.ty, %i.tr
  br i1 %i.ub, label %bb.bs, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.bs:                                            ; preds = %bb.br
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.tr ; 2 uses
  %.not.i.i253 = icmp eq ptr %i.tt, %i.uc
  br i1 %.not.i.i253, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.bs
  store ptr %i.uc, ptr %i.ts, align 8, !tbaa !205
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.bs, %bb.br
  %.pre-phi = phi i64 [ %.pre723, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.tr, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.tr, %bb.bs ], [ %i.tr, %bb.br ] ; 7 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !205 ; 2 uses
  %i.ug = load ptr, ptr %i.ud, align 8, !tbaa !200 ; 2 uses
  %i.uh = ptrtoint ptr %i.uf to i64
  %i.ui = ptrtoint ptr %i.ug to i64
  %i.uj = sub i64 %i.uh, %i.ui
  %i.uk = ashr exact i64 %i.uj, 2                 ; 3 uses
  %i.ul = icmp ult i64 %i.uk, %.pre-phi
  br i1 %i.ul, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.um = sub nuw nsw i64 %.pre-phi, %i.uk
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ud, i64 noundef %i.um)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit258_crit_edge unwind label %.loopexit.split-lp465.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorIiSaIiEE6resizeEm.exit258_crit_edge: ; preds = %bb.bt
  %.pre712 = load i32, ptr %i.st, align 8, !tbaa !304
  %.pre724 = sext i32 %.pre712 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit258

bb.bu:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.un = icmp ugt i64 %i.uk, %.pre-phi
  br i1 %i.un, label %bb.bv, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit258

bb.bv:                                            ; preds = %bb.bu
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %.pre-phi ; 2 uses
  %.not.i.i255 = icmp eq ptr %i.uf, %i.uo
  br i1 %.not.i.i255, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit258, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i256

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i256:     ; preds = %bb.bv
  store ptr %i.uo, ptr %i.ue, align 8, !tbaa !205
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit258

_ZNSt6vectorIiSaIiEE6resizeEm.exit258:            ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit258_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i256, %bb.bv, %bb.bu
  %.pre-phi725 = phi i64 [ %.pre724, %._ZNSt6vectorIiSaIiEE6resizeEm.exit258_crit_edge ], [ %.pre-phi, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i256 ], [ %.pre-phi, %bb.bv ], [ %.pre-phi, %bb.bu ] ; 4 uses
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !205 ; 2 uses
  %i.us = load ptr, ptr %i.up, align 8, !tbaa !200 ; 2 uses
  %i.ut = ptrtoint ptr %i.ur to i64
  %i.uu = ptrtoint ptr %i.us to i64
  %i.uv = sub i64 %i.ut, %i.uu
  %i.uw = ashr exact i64 %i.uv, 2                 ; 3 uses
  %i.ux = icmp ult i64 %i.uw, %.pre-phi725
end_hunk_10
begin_hunk_11_@_ZN8LightGBM10PushVectorIiEEvPSt6vectorIT_SaIS2_EERKS4_:bb.a

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !201
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ag) #36
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.x, ptr %0, align 8, !tbaa !200
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 2 uses
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !205
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.o ; 2 uses
  store ptr %i.ai, ptr %i.q, align 8, !tbaa !201
  %.pre = load ptr, ptr %1, align 8, !tbaa !184
  %.pre13 = load ptr, ptr %i.h, align 8, !tbaa !184
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %bb.c, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
  %i.aj = phi ptr [ %i.c, %bb.c ], [ %i.x, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ]
  %i.ak = phi ptr [ %i.r, %bb.c ], [ %i.ai, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ]
  %i.al = phi ptr [ %i.b, %bb.c ], [ %i.ah, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ]
  %i.am = phi ptr [ %i.i, %bb.c ], [ %.pre13, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ] ; 2 uses
  %i.an = phi ptr [ %i.j, %bb.c ], [ %.pre, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ] ; 2 uses
  %.not11 = icmp eq ptr %i.an, %i.am
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  ret void

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ao = phi ptr [ %i.bl, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.aj, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 5 uses
  %i.ap = phi ptr [ %i.bm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.ak, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 3 uses
  %i.aq = phi ptr [ %i.bn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.al, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 3 uses
  %.sroa.08.012 = phi ptr [ %i.bo, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.an, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 2 uses
  %i.ar = load i32, ptr %.sroa.08.012, align 4, !tbaa !138 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !138
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  store ptr %i.as, ptr %i.a, align 8, !tbaa !205
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.g:                                             ; preds = %.lr.ph
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.av = sub i64 %i.at, %i.au                    ; 5 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775804
  br i1 %i.aw, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ax = ashr exact i64 %i.av, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 2305843009213693951)
  %i.bb = select i1 %i.az, i64 2305843009213693951, i64 %i.ba ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bc = shl nuw nsw i64 %i.bb, 2
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #37 ; 5 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.av ; 2 uses
  store i32 %i.ar, ptr %i.be, align 4, !tbaa !138
  %i.bf = icmp sgt i64 %i.av, 0
  br i1 %i.bf, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bd, ptr align 4 %i.ao, i64 %i.av, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bh = load ptr, ptr %i.q, align 8, !tbaa !201
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bj) #36
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bd, ptr %0, align 8, !tbaa !200
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !205
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bb ; 2 uses
  store ptr %i.bk, ptr %i.q, align 8, !tbaa !201
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.bl = phi ptr [ %i.ao, %bb.f ], [ %i.bd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.bm = phi ptr [ %i.ap, %bb.f ], [ %i.bk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.bn = phi ptr [ %i.as, %bb.f ], [ %i.bg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bo, %i.am
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM12FeatureGroupC2ERKS0_bi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i1 noundef zeroext %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  %i.e = load i32, ptr %1, align 8, !tbaa !162
  store i32 %i.e, ptr %0, align 8, !tbaa !162
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load i8, ptr %i.f, align 8, !tbaa !160, !range !129, !noundef !130
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i8 %i.g, ptr %i.h, align 8, !tbaa !160
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.j = load i8, ptr %i.i, align 1, !tbaa !311, !range !129, !noundef !130
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 89 ; 2 uses
  store i8 %i.j, ptr %i.k, align 1, !tbaa !311
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 90
  %i.m = load i8, ptr %i.l, align 2, !tbaa !310, !range !129, !noundef !130
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 %i.m, ptr %i.n, align 2, !tbaa !310
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.p = load i32, ptr %i.o, align 4, !tbaa !216
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  store i32 %i.p, ptr %i.q, align 4, !tbaa !216
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !268  ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !168  ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 4 uses
  %i.aa = icmp ugt i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !269
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp ult i64 %i.ag, %i.z
  br i1 %i.ah, label %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !268
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.af
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #37
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc30:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !168 ; 11 uses
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !268 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc30
  %i.ap = ptrtoaddr ptr %i.ao to i64
  %i.aq = ptrtoaddr ptr %i.an to i64
  %i.ar = add i64 %i.ap, -8
  %i.as = sub i64 %i.ar, %i.aq                    ; 3 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader193, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.av = and i64 %i.as, -8
  %i.aw = add i64 %i.av, 8                        ; 2 uses
  %i.ax = getelementptr i8, ptr %i.am, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.an, i64 %i.aw
  %bound0 = icmp ult ptr %i.am, %i.ay
  %bound1 = icmp ult ptr %i.an, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader193, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.az = shl i64 %n.vec, 3                       ; 2 uses
  %i.ba = getelementptr i8, ptr %i.am, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.an, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.bc ; 2 uses
  %next.gep115 = getelementptr i8, ptr %i.an, i64 %i.bc ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  %i.bd = getelementptr i8, ptr %next.gep115, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep115, align 8, !tbaa !170, !alias.scope !956
  %wide.load116 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !170, !alias.scope !956
  %i.be = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !170, !alias.scope !957, !noalias !958
  store <2 x i64> %wide.load116, ptr %i.be, align 8, !tbaa !170, !alias.scope !957, !noalias !958
  %4 = getelementptr i8, ptr %next.gep115, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep115, align 8, !tbaa !170, !alias.scope !956
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !170, !alias.scope !956
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !932

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.preheader193

.lr.ph.i.i.i.i.preheader193:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader193, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader193 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader193 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  %i.bg = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !170, !alias.scope !955
  store i64 %i.bg, ptr %.012.i.i.i.i, align 8, !tbaa !170, !alias.scope !954
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !170, !alias.scope !955
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bh, %i.ao
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !933

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc30
  %.not.i8.i = icmp eq ptr %i.an, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.bj = load ptr, ptr %i.ab, align 8, !tbaa !269
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.an to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.bm) #36
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.am, ptr %i.a, align 8, !tbaa !168
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store ptr %i.bn, ptr %i.ai, align 8, !tbaa !268
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.z
  store ptr %i.bo, ptr %i.ab, align 8, !tbaa !269
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !329
  %.pre79 = load ptr, ptr %i.u, align 8, !tbaa !329
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.c
  %i.bp = phi ptr [ %.pre79, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.bq = phi ptr [ %.pre, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.w, %bb.c ] ; 2 uses
  %.not5663 = icmp eq ptr %i.bq, %i.bp
  br i1 %.not5663, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.bs = load i8, ptr %i.h, align 8, !tbaa !160, !range !129, !noundef !130
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.n, label %bb.l

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %.sroa.053.064 = phi ptr [ %i.bq, %.lr.ph ], [ %i.dk, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 2 uses
  %i.bu = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #37
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.bv = load ptr, ptr %.sroa.053.064, align 8, !tbaa !170
  invoke void @_ZN8LightGBM9BinMapperC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(160) %i.bu, ptr noundef nonnull align 8 dereferenceable(160) %i.bv)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !268 ; 6 uses
  %i.bx = load ptr, ptr %i.ab, align 8, !tbaa !269
  %.not.i = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !170
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.by, ptr %i.br, align 8, !tbaa !268
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !168 ; 10 uses
  %i.ca = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64               ; 3 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 3 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775800
  br i1 %i.cd, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.i, %bb.r, %bb.b
  %i.ce = phi ptr [ @.str.20, %bb.b ], [ @.str.21, %bb.r ], [ @.str.21, %bb.i ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.ce) #38
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.cf = ashr exact i64 %i.cc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 1152921504606846975)
  %i.cj = select i1 %i.ch, i64 1152921504606846975, i64 %i.ci ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #37
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc32:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cc
  store ptr %i.bu, ptr %i.cm, align 8, !tbaa !170
  %.not10.i.i.i.i.i = icmp eq ptr %i.bz, %i.bw
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc32
  %i.cn = add i64 %i.ca, -8
  %i.co = sub i64 %i.cn, %i.cb                    ; 3 uses
  %i.cp = lshr i64 %i.co, 3
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.co, 56
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.i.i.preheader184, label %vector.memcheck127

vector.memcheck127:                               ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.cr = and i64 %i.co, -8
  %i.cs = add i64 %i.cr, 8                        ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cl, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.bz, i64 %i.cs
  %bound0128 = icmp ult ptr %i.cl, %i.cu
  %bound1129 = icmp ult ptr %i.bz, %i.ct
  %found.conflict130 = and i1 %bound0128, %bound1129
  br i1 %found.conflict130, label %.lr.ph.i.i.i.i.i.preheader184, label %vector.ph131

vector.ph131:                                     ; preds = %vector.memcheck127
  %n.vec132 = and i64 %i.cq, 4611686018427387900  ; 3 uses
  %i.cv = shl i64 %n.vec132, 3                    ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cl, i64 %i.cv  ; 2 uses
  %i.cx = getelementptr i8, ptr %i.bz, i64 %i.cv
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next139, %vector.body133 ] ; 2 uses
  %i.cy = shl i64 %index134, 3                    ; 2 uses
  %next.gep135 = getelementptr i8, ptr %i.cl, i64 %i.cy ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.bz, i64 %i.cy ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  %i.cz = getelementptr i8, ptr %next.gep136, i64 16
  %wide.load137 = load <2 x i64>, ptr %next.gep136, align 8, !tbaa !170, !alias.scope !961
  %wide.load138 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !170, !alias.scope !961
  %i.da = getelementptr i8, ptr %next.gep135, i64 16
  store <2 x i64> %wide.load137, ptr %next.gep135, align 8, !tbaa !170, !alias.scope !962, !noalias !963
  store <2 x i64> %wide.load138, ptr %i.da, align 8, !tbaa !170, !alias.scope !962, !noalias !963
  %5 = getelementptr i8, ptr %next.gep136, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep136, align 8, !tbaa !170, !alias.scope !961
  store <2 x ptr> splat (ptr null), ptr %5, align 8, !tbaa !170, !alias.scope !961
  %index.next139 = add nuw i64 %index134, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next139, %n.vec132
  br i1 %i.db, label %middle.block140, label %vector.body133, !llvm.loop !940

middle.block140:                                  ; preds = %vector.body133
  %cmp.n141 = icmp eq i64 %i.cq, %n.vec132
  br i1 %cmp.n141, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader184

.lr.ph.i.i.i.i.i.preheader184:                    ; preds = %vector.memcheck127, %.lr.ph.i.i.i.i.i.preheader, %middle.block140
  %.012.i.i.i.i.i.ph = phi ptr [ %i.cl, %vector.memcheck127 ], [ %i.cl, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cw, %middle.block140 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bz, %vector.memcheck127 ], [ %i.bz, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cx, %middle.block140 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader184, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader184 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader184 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  %i.dc = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !960
  store i64 %i.dc, ptr %.012.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !959
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !960
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dd, %i.bw
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !941

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block140, %.noexc32
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cl, %.noexc32 ], [ %i.cw, %middle.block140 ], [ %i.de, %.lr.ph.i.i.i.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.dg = load ptr, ptr %i.ab, align 8, !tbaa !269
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.di) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !168
  store ptr %i.df, ptr %i.br, align 8, !tbaa !268
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj
  store ptr %i.dj, ptr %i.ab, align 8, !tbaa !269
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.h
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.053.064, i64 8 ; 2 uses
  %.not56 = icmp eq ptr %i.dk, %i.bp
  br i1 %.not56, label %._crit_edge, label %bb.e

bb.k:                                             ; preds = %bb.f
  %i.dl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 160) #36
  br label %.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %._crit_edge
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !197 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !134
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 264
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = invoke noundef ptr %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dn)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.ds = load ptr, ptr %i.c, align 8, !tbaa !197 ; 3 uses
  store ptr %i.dr, ptr %i.c, align 8, !tbaa !197
  %.not.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i.i: ; preds = %bb.m
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !134
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  tail call void %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %i.ds) #19, !inline_history !942
  br label %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE5resetEPS1_.exit

bb.n:                                             ; preds = %._crit_edge
  %i.dw = load ptr, ptr %i.d, align 8, !tbaa !265 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !266 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.dy, %i.dw
  br i1 %.not.i.i33, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i34

.lr.ph.i.i.i.i34:                                 ; preds = %bb.n, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ed, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.dw, %bb.n ] ; 2 uses
  %i.dz = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !197 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i34
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !134
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  tail call void %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %i.dz) #19, !inline_history !23
  br label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i34
  %i.ed = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i35 = icmp eq ptr %i.ed, %i.dy
  br i1 %.not.i.i.i.i35, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i34, !llvm.loop !9

_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !266
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE5clearEv.exit: ; preds = %bb.n, %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ee = load i32, ptr %0, align 8, !tbaa !162
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %.lr.ph66, label %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE5resetEPS1_.exit

.lr.ph66:                                         ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE5clearEv.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph66, %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next, %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 2 uses
  %i.ei = load ptr, ptr %i.eg, align 8, !tbaa !265
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !197 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !134
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 264
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = invoke noundef ptr %i.en(ptr noundef nonnull align 8 dereferenceable(8) %i.ek)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.ep = load ptr, ptr %i.dx, align 8, !tbaa !266 ; 6 uses
  %i.eq = load ptr, ptr %i.eh, align 8, !tbaa !267
  %.not.i36 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not.i36, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !197
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.er, ptr %i.dx, align 8, !tbaa !266
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.r:                                             ; preds = %bb.p
  %i.es = load ptr, ptr %i.d, align 8, !tbaa !265 ; 10 uses
  %i.et = ptrtoint ptr %i.ep to i64               ; 2 uses
  %i.eu = ptrtoint ptr %i.es to i64               ; 3 uses
  %i.ev = sub i64 %i.et, %i.eu                    ; 3 uses
  %i.ew = icmp eq i64 %i.ev, 9223372036854775800
  br i1 %i.ew, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.ex = ashr exact i64 %i.ev, 3                 ; 3 uses
  %.sroa.speculated.i.i.i37 = tail call i64 @llvm.umax.i64(i64 %i.ex, i64 1)
  %i.ey = add nsw i64 %.sroa.speculated.i.i.i37, %i.ex ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ex
  %i.fa = tail call i64 @llvm.umin.i64(i64 %i.ey, i64 1152921504606846975)
  %i.fb = select i1 %i.ez, i64 1152921504606846975, i64 %i.fa ; 3 uses
  %.not.i.i.i38 = icmp ne i64 %i.fb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i38)
  %i.fc = shl nuw nsw i64 %i.fb, 3
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #37
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc47:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ev
  store ptr %i.eo, ptr %i.fe, align 8, !tbaa !197
  %.not10.i.i.i.i.i39 = icmp eq ptr %i.es, %i.ep
  br i1 %.not10.i.i.i.i.i39, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i40.preheader

.lr.ph.i.i.i.i.i40.preheader:                     ; preds = %.noexc47
  %i.ff = add i64 %i.et, -8
  %i.fg = sub i64 %i.ff, %i.eu                    ; 3 uses
  %i.fh = lshr i64 %i.fg, 3
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %min.iters.check152 = icmp ult i64 %i.fg, 56
  br i1 %min.iters.check152, label %.lr.ph.i.i.i.i.i40.preheader183, label %vector.memcheck153

vector.memcheck153:                               ; preds = %.lr.ph.i.i.i.i.i40.preheader
  %i.fj = and i64 %i.fg, -8
  %i.fk = add i64 %i.fj, 8                        ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fd, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.es, i64 %i.fk
  %bound0154 = icmp ult ptr %i.fd, %i.fm
  %bound1155 = icmp ult ptr %i.es, %i.fl
  %found.conflict156 = and i1 %bound0154, %bound1155
  br i1 %found.conflict156, label %.lr.ph.i.i.i.i.i40.preheader183, label %vector.ph157

vector.ph157:                                     ; preds = %vector.memcheck153
  %n.vec158 = and i64 %i.fi, 4611686018427387900  ; 3 uses
  %i.fn = shl i64 %n.vec158, 3                    ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fd, i64 %i.fn  ; 2 uses
  %i.fp = getelementptr i8, ptr %i.es, i64 %i.fn
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph157
  %index160 = phi i64 [ 0, %vector.ph157 ], [ %index.next165, %vector.body159 ] ; 2 uses
  %i.fq = shl i64 %index160, 3                    ; 2 uses
  %next.gep161 = getelementptr i8, ptr %i.fd, i64 %i.fq ; 2 uses
  %next.gep162 = getelementptr i8, ptr %i.es, i64 %i.fq ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965)
  %i.fr = getelementptr i8, ptr %next.gep162, i64 16
  %wide.load163 = load <2 x i64>, ptr %next.gep162, align 8, !tbaa !197, !alias.scope !966
  %wide.load164 = load <2 x i64>, ptr %i.fr, align 8, !tbaa !197, !alias.scope !966
  %i.fs = getelementptr i8, ptr %next.gep161, i64 16
  store <2 x i64> %wide.load163, ptr %next.gep161, align 8, !tbaa !197, !alias.scope !967, !noalias !968
  store <2 x i64> %wide.load164, ptr %i.fs, align 8, !tbaa !197, !alias.scope !967, !noalias !968
  %6 = getelementptr i8, ptr %next.gep162, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep162, align 8, !tbaa !197, !alias.scope !966
  store <2 x ptr> splat (ptr null), ptr %6, align 8, !tbaa !197, !alias.scope !966
  %index.next165 = add nuw i64 %index160, 4       ; 2 uses
  %i.ft = icmp eq i64 %index.next165, %n.vec158
  br i1 %i.ft, label %middle.block166, label %vector.body159, !llvm.loop !949

middle.block166:                                  ; preds = %vector.body159
  %cmp.n167 = icmp eq i64 %i.fi, %n.vec158
  br i1 %cmp.n167, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i40.preheader183

.lr.ph.i.i.i.i.i40.preheader183:                  ; preds = %vector.memcheck153, %.lr.ph.i.i.i.i.i40.preheader, %middle.block166
  %.012.i.i.i.i.i41.ph = phi ptr [ %i.fd, %vector.memcheck153 ], [ %i.fd, %.lr.ph.i.i.i.i.i40.preheader ], [ %i.fo, %middle.block166 ]
  %.0911.i.i.i.i.i42.ph = phi ptr [ %i.es, %vector.memcheck153 ], [ %i.es, %.lr.ph.i.i.i.i.i40.preheader ], [ %i.fp, %middle.block166 ]
  br label %.lr.ph.i.i.i.i.i40

.lr.ph.i.i.i.i.i40:                               ; preds = %.lr.ph.i.i.i.i.i40.preheader183, %.lr.ph.i.i.i.i.i40
  %.012.i.i.i.i.i41 = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i40 ], [ %.012.i.i.i.i.i41.ph, %.lr.ph.i.i.i.i.i40.preheader183 ] ; 2 uses
  %.0911.i.i.i.i.i42 = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i40 ], [ %.0911.i.i.i.i.i42.ph, %.lr.ph.i.i.i.i.i40.preheader183 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965)
  %i.fu = load i64, ptr %.0911.i.i.i.i.i42, align 8, !tbaa !197, !alias.scope !965
  store i64 %i.fu, ptr %.012.i.i.i.i.i41, align 8, !tbaa !197, !alias.scope !964
  store ptr null, ptr %.0911.i.i.i.i.i42, align 8, !tbaa !197, !alias.scope !965
  %i.fv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i42, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i41, i64 8 ; 2 uses
  %.not.i.i.i.i.i43 = icmp eq ptr %i.fv, %i.ep
  br i1 %.not.i.i.i.i.i43, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i40, !llvm.loop !950

_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i40, %middle.block166, %.noexc47
  %.0.lcssa.i.i.i.i.i44 = phi ptr [ %i.fd, %.noexc47 ], [ %i.fo, %middle.block166 ], [ %i.fw, %.lr.ph.i.i.i.i.i40 ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i44, i64 8
  %.not.i23.i.i45 = icmp eq ptr %i.es, null
  br i1 %.not.i23.i.i45, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.fy = load ptr, ptr %i.eh, align 8, !tbaa !267
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = sub i64 %i.fz, %i.eu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ga) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.fd, ptr %i.d, align 8, !tbaa !265
  store ptr %i.fx, ptr %i.dx, align 8, !tbaa !266
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fb
  store ptr %i.gb, ptr %i.eh, align 8, !tbaa !267
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gc = load i32, ptr %0, align 8, !tbaa !162
  %i.gd = sext i32 %i.gc to i64
  %i.ge = icmp slt i64 %indvars.iv.next, %i.gd
  br i1 %i.ge, label %bb.o, label %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE5resetEPS1_.exit, !llvm.loop !951

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.o, %bb.e, %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %.invoke, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i, %bb.l, %bb.a
  %lpad.loopexit.split-lp186 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, %_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i.i, %bb.m
  br i1 %2, label %bb.t, label %bb.w

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.gf = load i8, ptr %i.k, align 1, !tbaa !311, !range !129, !noundef !130
  %i.gg = trunc nuw i8 %i.gf to i1
  %i.gh = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.gh, %i.gg
  br i1 %or.cond, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.gi = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !170
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 156
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !182
  %.not = icmp eq i32 %i.gl, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gm = load ptr, ptr %i.b, align 8, !tbaa !118 ; 5 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !138
  %i.go = icmp eq i32 %i.gn, 1
  br i1 %i.go, label %.preheader, label %bb.w

.preheader:                                       ; preds = %bb.v
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !186 ; 2 uses
  %.not70 = icmp eq ptr %i.gq, %i.gm
  br i1 %.not70, label %._crit_edge69, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %.preheader
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.gm to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = ashr exact i64 %i.gt, 2                 ; 4 uses
  %min.iters.check171 = icmp ult i64 %i.gu, 8
  br i1 %min.iters.check171, label %.lr.ph68.preheader182, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph68.preheader
  %n.vec173 = and i64 %i.gu, -8                   ; 3 uses
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next178, %vector.body174 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %index175 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
  %wide.load176 = load <4 x i32>, ptr %i.gv, align 4, !tbaa !138
  %wide.load177 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !138
  %i.gx = add <4 x i32> %wide.load176, splat (i32 -1)
  %i.gy = add <4 x i32> %wide.load177, splat (i32 -1)
  store <4 x i32> %i.gx, ptr %i.gv, align 4, !tbaa !138
  store <4 x i32> %i.gy, ptr %i.gw, align 4, !tbaa !138
  %index.next178 = add nuw i64 %index175, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next178, %n.vec173
  br i1 %i.gz, label %middle.block179, label %vector.body174, !llvm.loop !952

middle.block179:                                  ; preds = %vector.body174
  %cmp.n180 = icmp eq i64 %i.gu, %n.vec173
  br i1 %cmp.n180, label %._crit_edge69, label %.lr.ph68.preheader182

.lr.ph68.preheader182:                            ; preds = %.lr.ph68.preheader, %middle.block179
  %.067.ph = phi i64 [ 0, %.lr.ph68.preheader ], [ %n.vec173, %middle.block179 ]
  br label %.lr.ph68

._crit_edge69:                                    ; preds = %.lr.ph68, %middle.block179, %.preheader
  %i.ha = load i32, ptr %i.q, align 4, !tbaa !216
  %i.hb = add nsw i32 %i.ha, -1
  store i32 %i.hb, ptr %i.q, align 4, !tbaa !216
  br label %bb.w

.lr.ph68:                                         ; preds = %.lr.ph68.preheader182, %.lr.ph68
  %.067 = phi i64 [ %i.hf, %.lr.ph68 ], [ %.067.ph, %.lr.ph68.preheader182 ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %.067 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !138
  %i.he = add i32 %i.hd, -1
  store i32 %i.he, ptr %i.hc, align 4, !tbaa !138
  %i.hf = add nuw i64 %.067, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.hf, %i.gu
  br i1 %exitcond.not, label %._crit_edge69, label %.lr.ph68, !llvm.loop !953

bb.w:                                             ; preds = %bb.u, %bb.v, %._crit_edge69, %bb.t, %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE5resetEPS1_.exit
  ret void

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.dl, %bb.k ], [ %lpad.loopexit.split-lp186, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #19
  %i.hg = load ptr, ptr %i.c, align 8, !tbaa !197 ; 3 uses
  %.not.i48 = icmp eq ptr %i.hg, null
  br i1 %.not.i48, label %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i

_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !134
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  tail call void %i.hj(ptr noundef nonnull align 8 dereferenceable(8) %i.hg) #19, !inline_history !10
  br label %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp, %_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i
  %i.hk = load ptr, ptr %i.b, align 8, !tbaa !118 ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EED2Ev.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !119
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hp) #36
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EED2Ev.exit, %bb.x
  tail call void @_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #19
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM10PushOffsetIiEEvPSt6vectorIT_SaIS2_EERKS4_RKS2_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !200    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !205  ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !200    ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2
  %i.o = add nsw i64 %i.n, %i.g                   ; 4 uses
  %i.p = icmp ugt i64 %i.o, 2305843009213693951
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #38
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_11
begin_hunk_12_@_ZN8LightGBM12FeatureGroup15AddFeaturesFromEPKS0_i:bb.a
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph103, label %.preheader

.lr.ph103:                                        ; preds = %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.u

.preheader:                                       ; preds = %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit56, %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit
  %i.dr = phi i32 [ %i.do, %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit ], [ %i.fm, %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit56 ]
  %i.ds = load i32, ptr %1, align 8, !tbaa !162   ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph105, label %._crit_edge106

.lr.ph105:                                        ; preds = %.preheader
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br label %bb.aa

bb.u:                                             ; preds = %.lr.ph103, %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit56
  %i.ec = phi ptr [ %i.dl, %.lr.ph103 ], [ %i.fj, %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit56 ] ; 5 uses
  %i.ed = phi ptr [ %i.dm, %.lr.ph103 ], [ %i.fk, %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit56 ] ; 3 uses
  %i.ee = phi ptr [ %i.dn, %.lr.ph103 ], [ %i.fl, %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit56 ] ; 3 uses
  %indvars.iv123 = phi i64 [ 0, %.lr.ph103 ], [ %indvars.iv.next124, %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit56 ] ; 2 uses
  %i.ef = load ptr, ptr %i.dq, align 8, !tbaa !168
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv123
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !170 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !243
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 156
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !182
  %i.el = icmp eq i32 %i.ek, 0
  %i.em = select i1 %i.el, i32 %.044, i32 0
  %spec.select = sub nsw i32 %i.ei, %i.em
  %i.en = load i32, ptr %i.cg, align 4, !tbaa !216
  %i.eo = add nsw i32 %spec.select, %i.en         ; 2 uses
  store i32 %i.eo, ptr %i.cg, align 4, !tbaa !216
  %.not.i49 = icmp eq ptr %i.ee, %i.ed
  br i1 %.not.i49, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.eo, ptr %i.ee, align 4, !tbaa !138
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ee, i64 4 ; 2 uses
  store ptr %i.ep, ptr %i.cd, align 8, !tbaa !186
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit56

bb.w:                                             ; preds = %bb.u
  %i.eq = ptrtoint ptr %i.ed to i64
  %i.er = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.es = sub i64 %i.eq, %i.er                    ; 5 uses
  %i.et = icmp eq i64 %i.es, 9223372036854775804
  br i1 %i.et, label %bb.x, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i50

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i50: ; preds = %bb.w
  %i.eu = ashr exact i64 %i.es, 2                 ; 3 uses
  %.sroa.speculated.i.i.i51 = tail call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ev = add nsw i64 %.sroa.speculated.i.i.i51, %i.eu ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.eu
  %i.ex = tail call i64 @llvm.umin.i64(i64 %i.ev, i64 2305843009213693951)
  %i.ey = select i1 %i.ew, i64 2305843009213693951, i64 %i.ex ; 3 uses
  %.not.i.i.i52 = icmp ne i64 %i.ey, 0
  tail call void @llvm.assume(i1 %.not.i.i.i52)
  %i.ez = shl nuw nsw i64 %i.ey, 2
  %i.fa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #37 ; 5 uses
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 %i.es ; 2 uses
  %i.fc = load i32, ptr %i.cg, align 4, !tbaa !138
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !138
  %i.fd = icmp sgt i64 %i.es, 0
  br i1 %i.fd, label %bb.y, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i53

bb.y:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i50
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fa, ptr align 4 %i.ec, i64 %i.es, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i53

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i53: ; preds = %bb.y, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i50
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 2 uses
  %.not.i17.i.i54 = icmp eq ptr %i.ec, null
  br i1 %.not.i17.i.i54, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i55, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i53
  %i.ff = load ptr, ptr %i.cp, align 8, !tbaa !119
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = sub i64 %i.fg, %i.er
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.fh) #36
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i55

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i55: ; preds = %bb.z, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i53
  store ptr %i.fa, ptr %i.cb, align 8, !tbaa !118
  store ptr %i.fe, ptr %i.cd, align 8, !tbaa !186
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ey ; 2 uses
  store ptr %i.fi, ptr %i.cp, align 8, !tbaa !119
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit56

_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit56: ; preds = %bb.v, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i55
  %i.fj = phi ptr [ %i.ec, %bb.v ], [ %i.fa, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i55 ]
  %i.fk = phi ptr [ %i.ed, %bb.v ], [ %i.fi, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i55 ]
  %i.fl = phi ptr [ %i.ep, %bb.v ], [ %i.fe, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i55 ]
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %i.fm = load i32, ptr %0, align 8, !tbaa !162   ; 2 uses
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp slt i64 %indvars.iv.next124, %i.fn
  br i1 %i.fo, label %bb.u, label %.preheader, !llvm.loop !973

._crit_edge106.loopexit:                          ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %.pre = load i32, ptr %0, align 8, !tbaa !162
  br label %._crit_edge106

._crit_edge106:                                   ; preds = %._crit_edge106.loopexit, %.preheader
  %i.fp = phi i32 [ %i.dr, %.preheader ], [ %.pre, %._crit_edge106.loopexit ]
  %.lcssa83 = phi i32 [ %i.ds, %.preheader ], [ %i.kh, %._crit_edge106.loopexit ]
  %i.fq = add nsw i32 %i.fp, %.lcssa83
  store i32 %i.fq, ptr %0, align 8, !tbaa !162
  ret void

bb.aa:                                            ; preds = %.lr.ph105, %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %indvars.iv126 = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next127, %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ] ; 3 uses
  %i.fr = load ptr, ptr %i.du, align 8, !tbaa !168
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv126 ; 2 uses
  %i.ft = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #37 ; 4 uses
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !170
  invoke void @_ZN8LightGBM9BinMapperC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(160) %i.ft, ptr noundef nonnull align 8 dereferenceable(160) %i.fu)
          to label %bb.ab unwind label %bb.ap

bb.ab:                                            ; preds = %bb.aa
  %i.fv = load ptr, ptr %i.dw, align 8, !tbaa !268 ; 6 uses
  %i.fw = load ptr, ptr %i.dx, align 8, !tbaa !269
  %.not.i57 = icmp eq ptr %i.fv, %i.fw
  br i1 %.not.i57, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.ft, ptr %i.fv, align 8, !tbaa !170
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %i.fx, ptr %i.dw, align 8, !tbaa !268
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.fy = load ptr, ptr %i.dv, align 8, !tbaa !168 ; 10 uses
  %i.fz = ptrtoint ptr %i.fv to i64               ; 2 uses
  %i.ga = ptrtoint ptr %i.fy to i64               ; 3 uses
  %i.gb = sub i64 %i.fz, %i.ga                    ; 3 uses
  %i.gc = icmp eq i64 %i.gb, 9223372036854775800
  br i1 %i.gc, label %bb.ae, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ad
  %i.gd = ashr exact i64 %i.gb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i58 = tail call i64 @llvm.umax.i64(i64 %i.gd, i64 1)
  %i.ge = add nsw i64 %.sroa.speculated.i.i.i58, %i.gd ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.gd
  %i.gg = tail call i64 @llvm.umin.i64(i64 %i.ge, i64 1152921504606846975)
  %i.gh = select i1 %i.gf, i64 1152921504606846975, i64 %i.gg ; 3 uses
  %.not.i.i.i59 = icmp ne i64 %i.gh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i59)
  %i.gi = shl nuw nsw i64 %i.gh, 3
  %i.gj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gi) #37 ; 10 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gb
  store ptr %i.ft, ptr %i.gk, align 8, !tbaa !170
  %.not10.i.i.i.i.i = icmp eq ptr %i.fy, %i.fv
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.gl = add i64 %i.fz, -8
  %i.gm = sub i64 %i.gl, %i.ga                    ; 3 uses
  %i.gn = lshr i64 %i.gm, 3
  %i.go = add nuw nsw i64 %i.gn, 1                ; 2 uses
  %min.iters.check194 = icmp ult i64 %i.gm, 56
  br i1 %min.iters.check194, label %.lr.ph.i.i.i.i.i.preheader213, label %vector.memcheck195

vector.memcheck195:                               ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.gp = and i64 %i.gm, -8
  %i.gq = add i64 %i.gp, 8                        ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gj, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.fy, i64 %i.gq
  %bound0196 = icmp ult ptr %i.gj, %i.gs
  %bound1197 = icmp ult ptr %i.fy, %i.gr
  %found.conflict198 = and i1 %bound0196, %bound1197
  br i1 %found.conflict198, label %.lr.ph.i.i.i.i.i.preheader213, label %vector.ph199

vector.ph199:                                     ; preds = %vector.memcheck195
  %n.vec200 = and i64 %i.go, 4611686018427387900  ; 3 uses
  %i.gt = shl i64 %n.vec200, 3                    ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gj, i64 %i.gt  ; 2 uses
  %i.gv = getelementptr i8, ptr %i.fy, i64 %i.gt
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph199
  %index202 = phi i64 [ 0, %vector.ph199 ], [ %index.next207, %vector.body201 ] ; 2 uses
  %i.gw = shl i64 %index202, 3                    ; 2 uses
  %next.gep203 = getelementptr i8, ptr %i.gj, i64 %i.gw ; 2 uses
  %next.gep204 = getelementptr i8, ptr %i.fy, i64 %i.gw ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %i.gx = getelementptr i8, ptr %next.gep204, i64 16
  %wide.load205 = load <2 x i64>, ptr %next.gep204, align 8, !tbaa !170, !alias.scope !993
  %wide.load206 = load <2 x i64>, ptr %i.gx, align 8, !tbaa !170, !alias.scope !993
  %i.gy = getelementptr i8, ptr %next.gep203, i64 16
  store <2 x i64> %wide.load205, ptr %next.gep203, align 8, !tbaa !170, !alias.scope !994, !noalias !995
  store <2 x i64> %wide.load206, ptr %i.gy, align 8, !tbaa !170, !alias.scope !994, !noalias !995
  %3 = getelementptr i8, ptr %next.gep204, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep204, align 8, !tbaa !170, !alias.scope !993
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !170, !alias.scope !993
  %index.next207 = add nuw i64 %index202, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next207, %n.vec200
  br i1 %i.gz, label %middle.block208, label %vector.body201, !llvm.loop !980

middle.block208:                                  ; preds = %vector.body201
  %cmp.n209 = icmp eq i64 %i.go, %n.vec200
  br i1 %cmp.n209, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader213

.lr.ph.i.i.i.i.i.preheader213:                    ; preds = %vector.memcheck195, %.lr.ph.i.i.i.i.i.preheader, %middle.block208
  %.012.i.i.i.i.i.ph = phi ptr [ %i.gj, %vector.memcheck195 ], [ %i.gj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gu, %middle.block208 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.fy, %vector.memcheck195 ], [ %i.fy, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gv, %middle.block208 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader213, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hc, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader213 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader213 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %i.ha = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !992
  store i64 %i.ha, ptr %.012.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !991
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !170, !alias.scope !992
  %i.hb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hb, %i.fv
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !981

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block208, %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gj, %_ZNKSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.gu, %middle.block208 ], [ %i.hc, %.lr.ph.i.i.i.i.i ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.he = load ptr, ptr %i.dx, align 8, !tbaa !269
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = sub i64 %i.hf, %i.ga
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.hg) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.gj, ptr %i.dv, align 8, !tbaa !168
  store ptr %i.hd, ptr %i.dw, align 8, !tbaa !268
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gh
  store ptr %i.hh, ptr %i.dx, align 8, !tbaa !269
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %bb.ac, %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.hi = load ptr, ptr %i.fs, align 8, !tbaa !170 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !243
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 156
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !182
  %i.hm = icmp eq i32 %i.hl, 0
  %i.hn = select i1 %i.hm, i32 %.044, i32 0
  %spec.select48 = sub nsw i32 %i.hj, %i.hn
  %i.ho = load i32, ptr %i.cg, align 4, !tbaa !216
  %i.hp = add nsw i32 %spec.select48, %i.ho       ; 2 uses
  store i32 %i.hp, ptr %i.cg, align 4, !tbaa !216
  %i.hq = load ptr, ptr %i.cd, align 8, !tbaa !186 ; 4 uses
  %i.hr = load ptr, ptr %i.cp, align 8, !tbaa !119
  %.not.i60 = icmp eq ptr %i.hq, %i.hr
  br i1 %.not.i60, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !138
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  store ptr %i.hs, ptr %i.cd, align 8, !tbaa !186
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit67

bb.ah:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.ht = load ptr, ptr %i.cb, align 8, !tbaa !118 ; 4 uses
  %i.hu = ptrtoint ptr %i.hq to i64
  %i.hv = ptrtoint ptr %i.ht to i64               ; 2 uses
  %i.hw = sub i64 %i.hu, %i.hv                    ; 5 uses
  %i.hx = icmp eq i64 %i.hw, 9223372036854775804
  br i1 %i.hx, label %bb.ai, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i61

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i61: ; preds = %bb.ah
  %i.hy = ashr exact i64 %i.hw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i62 = tail call i64 @llvm.umax.i64(i64 %i.hy, i64 1)
  %i.hz = add nsw i64 %.sroa.speculated.i.i.i62, %i.hy ; 2 uses
  %i.ia = icmp ult i64 %i.hz, %i.hy
  %i.ib = tail call i64 @llvm.umin.i64(i64 %i.hz, i64 2305843009213693951)
  %i.ic = select i1 %i.ia, i64 2305843009213693951, i64 %i.ib ; 3 uses
  %.not.i.i.i63 = icmp ne i64 %i.ic, 0
  tail call void @llvm.assume(i1 %.not.i.i.i63)
  %i.id = shl nuw nsw i64 %i.ic, 2
  %i.ie = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.id) #37 ; 4 uses
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 %i.hw ; 2 uses
  %i.ig = load i32, ptr %i.cg, align 4, !tbaa !138
  store i32 %i.ig, ptr %i.if, align 4, !tbaa !138
  %i.ih = icmp sgt i64 %i.hw, 0
  br i1 %i.ih, label %bb.aj, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i64

bb.aj:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i61
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ie, ptr align 4 %i.ht, i64 %i.hw, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i64

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i64: ; preds = %bb.aj, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i61
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %.not.i17.i.i65 = icmp eq ptr %i.ht, null
  br i1 %.not.i17.i.i65, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i66, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i64
  %i.ij = load ptr, ptr %i.cp, align 8, !tbaa !119
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = sub i64 %i.ik, %i.hv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.il) #36
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i66

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i66: ; preds = %bb.ak, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i64
  store ptr %i.ie, ptr %i.cb, align 8, !tbaa !118
  store ptr %i.ii, ptr %i.cd, align 8, !tbaa !186
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.ic
  store ptr %i.im, ptr %i.cp, align 8, !tbaa !119
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit67

_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit67: ; preds = %bb.ag, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i66
  %i.in = load ptr, ptr %i.dz, align 8, !tbaa !265
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv126
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !197 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !134
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 264
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = tail call noundef ptr %i.is(ptr noundef nonnull align 8 dereferenceable(8) %i.ip) ; 2 uses
  %i.iu = load ptr, ptr %i.ea, align 8, !tbaa !266 ; 6 uses
  %i.iv = load ptr, ptr %i.eb, align 8, !tbaa !267
  %.not.i68 = icmp eq ptr %i.iu, %i.iv
  br i1 %.not.i68, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit67
  store ptr %i.it, ptr %i.iu, align 8, !tbaa !197
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store ptr %i.iw, ptr %i.ea, align 8, !tbaa !266
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.am:                                            ; preds = %_ZNSt6vectorIjSaIjEE12emplace_backIJRiEEERjDpOT_.exit67
  %i.ix = load ptr, ptr %i.dy, align 8, !tbaa !265 ; 10 uses
  %i.iy = ptrtoint ptr %i.iu to i64               ; 2 uses
  %i.iz = ptrtoint ptr %i.ix to i64               ; 3 uses
  %i.ja = sub i64 %i.iy, %i.iz                    ; 3 uses
  %i.jb = icmp eq i64 %i.ja, 9223372036854775800
  br i1 %i.jb, label %bb.an, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.an:                                            ; preds = %bb.am
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.am
  %i.jc = ashr exact i64 %i.ja, 3                 ; 3 uses
  %.sroa.speculated.i.i.i69 = tail call i64 @llvm.umax.i64(i64 %i.jc, i64 1)
  %i.jd = add nsw i64 %.sroa.speculated.i.i.i69, %i.jc ; 2 uses
  %i.je = icmp ult i64 %i.jd, %i.jc
  %i.jf = tail call i64 @llvm.umin.i64(i64 %i.jd, i64 1152921504606846975)
  %i.jg = select i1 %i.je, i64 1152921504606846975, i64 %i.jf ; 3 uses
  %.not.i.i.i70 = icmp ne i64 %i.jg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i70)
  %i.jh = shl nuw nsw i64 %i.jg, 3
  %i.ji = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jh) #37 ; 10 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.ja
  store ptr %i.it, ptr %i.jj, align 8, !tbaa !197
  %.not10.i.i.i.i.i71 = icmp eq ptr %i.ix, %i.iu
  br i1 %.not10.i.i.i.i.i71, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i72.preheader

.lr.ph.i.i.i.i.i72.preheader:                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.jk = add i64 %i.iy, -8
  %i.jl = sub i64 %i.jk, %i.iz                    ; 3 uses
  %i.jm = lshr i64 %i.jl, 3
  %i.jn = add nuw nsw i64 %i.jm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.jl, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i72.preheader212, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i72.preheader
  %i.jo = and i64 %i.jl, -8
  %i.jp = add i64 %i.jo, 8                        ; 2 uses
  %i.jq = getelementptr i8, ptr %i.ji, i64 %i.jp
  %i.jr = getelementptr i8, ptr %i.ix, i64 %i.jp
  %bound0 = icmp ult ptr %i.ji, %i.jr
  %bound1 = icmp ult ptr %i.ix, %i.jq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i72.preheader212, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.jn, 4611686018427387900     ; 3 uses
  %i.js = shl i64 %n.vec, 3                       ; 2 uses
  %i.jt = getelementptr i8, ptr %i.ji, i64 %i.js  ; 2 uses
  %i.ju = getelementptr i8, ptr %i.ix, i64 %i.js
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ji, i64 %i.jv ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.ix, i64 %i.jv ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %i.jw = getelementptr i8, ptr %next.gep183, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep183, align 8, !tbaa !197, !alias.scope !998
  %wide.load184 = load <2 x i64>, ptr %i.jw, align 8, !tbaa !197, !alias.scope !998
  %i.jx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !197, !alias.scope !999, !noalias !1000
  store <2 x i64> %wide.load184, ptr %i.jx, align 8, !tbaa !197, !alias.scope !999, !noalias !1000
  %4 = getelementptr i8, ptr %next.gep183, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep183, align 8, !tbaa !197, !alias.scope !998
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !197, !alias.scope !998
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jy = icmp eq i64 %index.next, %n.vec
  br i1 %i.jy, label %middle.block, label %vector.body, !llvm.loop !988

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jn, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i72.preheader212

.lr.ph.i.i.i.i.i72.preheader212:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i72.preheader, %middle.block
  %.012.i.i.i.i.i73.ph = phi ptr [ %i.ji, %vector.memcheck ], [ %i.ji, %.lr.ph.i.i.i.i.i72.preheader ], [ %i.jt, %middle.block ]
  %.0911.i.i.i.i.i74.ph = phi ptr [ %i.ix, %vector.memcheck ], [ %i.ix, %.lr.ph.i.i.i.i.i72.preheader ], [ %i.ju, %middle.block ]
  br label %.lr.ph.i.i.i.i.i72

.lr.ph.i.i.i.i.i72:                               ; preds = %.lr.ph.i.i.i.i.i72.preheader212, %.lr.ph.i.i.i.i.i72
  %.012.i.i.i.i.i73 = phi ptr [ %i.kb, %.lr.ph.i.i.i.i.i72 ], [ %.012.i.i.i.i.i73.ph, %.lr.ph.i.i.i.i.i72.preheader212 ] ; 2 uses
  %.0911.i.i.i.i.i74 = phi ptr [ %i.ka, %.lr.ph.i.i.i.i.i72 ], [ %.0911.i.i.i.i.i74.ph, %.lr.ph.i.i.i.i.i72.preheader212 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %i.jz = load i64, ptr %.0911.i.i.i.i.i74, align 8, !tbaa !197, !alias.scope !997
  store i64 %i.jz, ptr %.012.i.i.i.i.i73, align 8, !tbaa !197, !alias.scope !996
  store ptr null, ptr %.0911.i.i.i.i.i74, align 8, !tbaa !197, !alias.scope !997
  %i.ka = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i74, i64 8 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i73, i64 8 ; 2 uses
  %.not.i.i.i.i.i75 = icmp eq ptr %i.ka, %i.iu
  br i1 %.not.i.i.i.i.i75, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i72, !llvm.loop !989

_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i72, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i76 = phi ptr [ %i.ji, %_ZNKSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.jt, %middle.block ], [ %i.kb, %.lr.ph.i.i.i.i.i72 ]
  %i.kc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i76, i64 8
  %.not.i23.i.i77 = icmp eq ptr %i.ix, null
  br i1 %.not.i23.i.i77, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.kd = load ptr, ptr %i.eb, align 8, !tbaa !267
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = sub i64 %i.ke, %i.iz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef %i.kf) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.ao, %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.ji, ptr %i.dy, align 8, !tbaa !265
  store ptr %i.kc, ptr %i.ea, align 8, !tbaa !266
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jg
  store ptr %i.kg, ptr %i.eb, align 8, !tbaa !267
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %bb.al, %_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %i.kh = load i32, ptr %1, align 8, !tbaa !162   ; 2 uses
  %i.ki = sext i32 %i.kh to i64
  %i.kj = icmp slt i64 %indvars.iv.next127, %i.ki
  br i1 %i.kj, label %bb.aa, label %._crit_edge106.loopexit, !llvm.loop !990

bb.ap:                                            ; preds = %bb.aa
  %i.kk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef 160) #36
  resume { ptr, i32 } %i.kk
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM10PushVectorISt6vectorIdSaIdEEEEvPS1_IT_SaIS4_EERKS6_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.18", align 8    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !256
  %i.c = load ptr, ptr %0, align 8, !tbaa !255
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !256  ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !255    ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = sdiv exact i64 %i.m, 24
  %i.o = add nsw i64 %i.n, %i.g                   ; 3 uses
  %i.p = icmp ugt i64 %i.o, 384307168202282325
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !259
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.e
  %i.u = sdiv exact i64 %i.t, 24
  %i.v = icmp ult i64 %i.u, %i.o
  br i1 %i.v, label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.w = add i64 %i.m, %i.f
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #37 ; 4 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !255    ; 3 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !256  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %i.x, %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %i.y, %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE11_M_allocateEm.exit.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !204, !alias.scope !1005
  store <2 x ptr> %i.aa, ptr %.012.i.i.i.i, align 8, !tbaa !204, !alias.scope !1004
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !258, !alias.scope !1005
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !258, !alias.scope !1004
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !1005
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.z
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i, !llvm.loop !30

_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !255
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i, %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE11_M_allocateEm.exit.i
  %i.ag = phi ptr [ %.pr.i, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i ], [ %i.y, %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.ag, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !259
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #36
  br label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.x, ptr %0, align 8, !tbaa !255
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store ptr %i.al, ptr %i.a, align 8, !tbaa !256
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.o
  store ptr %i.am, ptr %i.q, align 8, !tbaa !259
  %.pre = load ptr, ptr %1, align 8, !tbaa !312
  %.pre19 = load ptr, ptr %i.h, align 8, !tbaa !312
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE7reserveEm.exit

_ZNSt6vectorIS_IdSaIdEESaIS1_EE7reserveEm.exit:   ; preds = %bb.c, %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.an = phi ptr [ %i.i, %bb.c ], [ %.pre19, %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit.i ] ; 2 uses
  %i.ao = phi ptr [ %i.j, %bb.c ], [ %.pre, %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit.i ] ; 2 uses
  %.not17 = icmp eq ptr %i.ao, %i.an
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE7reserveEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE7reserveEm.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %.sroa.013.018 = phi ptr [ %i.ao, %.lr.ph ], [ %i.cg, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.018, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !313 ; 2 uses
  %i.at = load ptr, ptr %.sroa.013.018, align 8, !tbaa !257 ; 3 uses
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i8 = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i.i8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = icmp ugt i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !185

.noexc.i.i:                                       ; preds = %bb.f
  call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.ay = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #37
  %.pre20 = load ptr, ptr %.sroa.013.018, align 8, !tbaa !204 ; 3 uses
  %.pre21 = load ptr, ptr %i.ar, align 8, !tbaa !204 ; 2 uses
  %.pre23 = ptrtoint ptr %.pre21 to i64
  %.pre24 = ptrtoint ptr %.pre20 to i64
  %i.az = icmp eq ptr %.pre21, %.pre20
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %bb.e
  %.pre-phi25 = phi i64 [ %.pre24, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ], [ %i.av, %bb.e ]
  %.pre-phi = phi i64 [ %.pre23, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ], [ %i.au, %bb.e ]
  %.not.i.i.i.i.i = phi i1 [ %i.az, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.e ]
  %i.ba = phi ptr [ %.pre20, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ], [ %i.at, %bb.e ] ; 2 uses
  %i.bb = phi ptr [ %i.ay, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.e ] ; 6 uses
  store ptr %i.bb, ptr %2, align 8, !tbaa !257
  store ptr %i.bb, ptr %i.ap, align 8, !tbaa !313
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.aw
end_hunk_12
