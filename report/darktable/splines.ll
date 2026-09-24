Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/splines?download=true
inline.NumInlined: 1094
inline.NumDeleted: 285
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8interpol23monotone_hermite_splineIfE4initEv:bb.a
  %i.eg = getelementptr [4 x i8], ptr %.sroa.0175.3, i64 %i.ef ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 -4
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !34 ; 2 uses
  %i.ej = load float, ptr %i.eg, align 4, !tbaa !34 ; 2 uses
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ej, %i.ei
  %i.el = fcmp reassoc nsz arcp contract afn ugt float %i.ek, 0.000000e+00
  %i.em = fadd reassoc nsz arcp contract afn float %i.ej, %i.ei
  %i.en = fmul reassoc nsz arcp contract afn float %i.em, 5.000000e-01
  %.sink336.3 = select i1 %i.el, float %i.en, float 0.000000e+00
  %i.eo = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %i.ef
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store float %.sink336.3, ptr %i.ep, align 4, !tbaa !35
  %i.eq = add nuw nsw i64 %.096263, 4             ; 2 uses
  %exitcond285.not.3 = icmp eq i64 %i.eq, %i.g
  br i1 %exitcond285.not.3, label %.preheader, label %.lr.ph265, !llvm.loop !197

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.t, %.preheader
  %i.er = ptrtoint ptr %.sroa.35.3 to i64
  %i.es = ptrtoint ptr %.sroa.0175.3 to i64
  %i.et = sub i64 %i.er, %i.es
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.3, i64 noundef %i.et) #19
  br label %bb.ai

.lr.ph267:                                        ; preds = %.preheader, %bb.t
  %.095266 = phi i64 [ %i.eu, %bb.t ], [ 0, %.preheader ] ; 4 uses
  %i.eu = add nuw nsw i64 %.095266, 1             ; 4 uses
  %i.ev = icmp ult i64 %i.eu, %i.g
  %i.ew = select i1 %i.ev, i64 %i.eu, i64 0       ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0175.3, i64 %.095266 ; 2 uses
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !34 ; 4 uses
  %i.ez = tail call reassoc nsz arcp contract afn noundef float @llvm.fabs.f32(float %i.ey)
  %i.fa = fcmp reassoc nsz arcp contract afn olt float %i.ez, f0x34000000
  br i1 %i.fa, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph267
  %i.fb = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %i.ew
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store float 0.000000e+00, ptr %i.fc, align 4, !tbaa !35
  %i.fd = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %.095266
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store float 0.000000e+00, ptr %i.fe, align 4, !tbaa !35
  br label %bb.t

bb.r:                                             ; preds = %.lr.ph267
  %i.ff = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %.095266
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 2 uses
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !35
  %i.fi = fdiv reassoc nsz arcp contract afn float %i.fh, %i.ey ; 3 uses
  %i.fj = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %i.ew
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !35
  %i.fm = fdiv reassoc nsz arcp contract afn float %i.fl, %i.ey ; 3 uses
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fi, %i.fi
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fm, %i.fm
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fo, %i.fn ; 2 uses
  %i.fq = fcmp reassoc nsz arcp contract afn ogt float %i.fp, 9.000000e+00
  br i1 %i.fq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fr = fmul reassoc nsz arcp contract afn float %i.ey, 3.000000e+00
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fr, %i.fi
  %i.ft = tail call reassoc nsz arcp contract afn noundef float @llvm.sqrt.f32(float %i.fp) ; 2 uses
  %i.fu = fdiv reassoc nsz arcp contract afn float %i.fs, %i.ft
  store float %i.fu, ptr %i.fg, align 4, !tbaa !35
  %i.fv = fmul reassoc nsz arcp contract afn float %i.fm, 3.000000e+00
  %i.fw = load float, ptr %i.ex, align 4, !tbaa !34
  %i.fx = fmul reassoc nsz arcp contract afn float %i.fv, %i.fw
  %i.fy = fdiv reassoc nsz arcp contract afn float %i.fx, %i.ft
  store float %i.fy, ptr %i.fk, align 4, !tbaa !35
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %exitcond286.not = icmp eq i64 %i.eu, %i.g
  br i1 %exitcond286.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %.lr.ph267, !llvm.loop !198

bb.u:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.p
  %.sroa.0175.0233 = phi ptr [ %.sroa.0175.0.lcssa, %bb.p ], [ %.sroa.0175.0253, %.loopexit ], [ %.sroa.0175.0253, %.loopexit.split-lp ] ; 3 uses
  %.sroa.35.0227 = phi ptr [ %.sroa.26.0.lcssa, %bb.p ], [ %.sroa.35.0255, %.loopexit ], [ %.sroa.35.0255, %.loopexit.split-lp ]
  %.pn109 = phi { ptr, i32 } [ %i.cy, %bb.p ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i125 = icmp eq ptr %.sroa.0175.0233, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorIfSaIfEED2Ev.exit126, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fz = ptrtoint ptr %.sroa.35.0227 to i64
  %i.ga = ptrtoint ptr %.sroa.0175.0233 to i64
  %i.gb = sub i64 %i.fz, %i.ga
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.0233, i64 noundef %i.gb) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit126

bb.w:                                             ; preds = %bb.c
  %i.gc = add nsw i64 %i.g, -1                    ; 9 uses
  %i.gd = icmp ugt i64 %i.gc, 2305843009213693951
  br i1 %i.gd, label %.noexc131, label %.lr.ph.preheader

.noexc131:                                        ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.w
  %.not = icmp ne i64 %i.gc, 0
  tail call void @llvm.assume(i1 %.not)
  %i.ge = shl nuw nsw i64 %i.gc, 2
  %i.gf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ge) #20 ; 3 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gc
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143
  %i.gh = load float, ptr %.sroa.0.3, align 4, !tbaa !34
  %i.gi = load ptr, ptr %0, align 8, !tbaa !15    ; 11 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store float %i.gh, ptr %i.gj, align 4, !tbaa !35
  %i.gk = icmp ugt i64 %i.gc, 1
  br i1 %i.gk, label %.lr.ph248.preheader, label %._crit_edge249.thread

.lr.ph248.preheader:                              ; preds = %._crit_edge
  %i.gl = add nsw i64 %i.g, -2                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.gl, 8
  br i1 %min.iters.check, label %.lr.ph248.preheader389, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph248.preheader
  %scevgep = getelementptr i8, ptr %i.gi, i64 20
  %i.gm = getelementptr i8, ptr %i.gi, i64 %i.f
  %scevgep350 = getelementptr i8, ptr %i.gm, i64 -12
  %i.gn = shl nuw nsw i64 %i.g, 2
  %i.go = getelementptr i8, ptr %.sroa.0.3, i64 %i.gn
  %scevgep351 = getelementptr i8, ptr %i.go, i64 -4
  %bound0 = icmp ult ptr %scevgep, %scevgep351
  %bound1 = icmp ult ptr %.sroa.0.3, %scevgep350
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph248.preheader389, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gl, -8                      ; 3 uses
  %i.gp = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.gq = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %index ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 4
  %wide.load = load <8 x float>, ptr %i.gq, align 4, !tbaa !34, !alias.scope !209 ; 2 uses
  %wide.load352 = load <8 x float>, ptr %i.gr, align 4, !tbaa !34, !alias.scope !209 ; 2 uses
  %i.gs = fmul reassoc nsz arcp contract afn <8 x float> %wide.load352, %wide.load
  %i.gt = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.gs, zeroinitializer
  %i.gu = fadd reassoc nsz arcp contract afn <8 x float> %wide.load352, %wide.load
  %i.gv = fmul reassoc nsz arcp contract afn <8 x float> %i.gu, splat (float 5.000000e-01)
  %i.gw = select <8 x i1> %i.gt, <8 x float> %i.gv, <8 x float> zeroinitializer
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %i.gi, <8 x i64> %vec.ind
  %wide.gep353 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.gw, <8 x ptr> align 4 %wide.gep353, <8 x i1> splat (i1 true)), !tbaa !35, !alias.scope !210, !noalias !209
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.gx = icmp eq i64 %index.next, %n.vec
  br i1 %i.gx, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gl, %n.vec
  br i1 %cmp.n, label %._crit_edge249, label %.lr.ph248.preheader389

.lr.ph248.preheader389:                           ; preds = %vector.memcheck, %.lr.ph248.preheader, %middle.block
  %.093246.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph248.preheader ], [ %i.gp, %middle.block ] ; 4 uses
  %i.gy = xor i64 %.093246.ph, -1
  %i.gz = add nsw i64 %i.g, %i.gy
  %i.ha = add nsw i64 %i.g, -2
  %i.hb = sub nsw i64 %i.ha, %.093246.ph
  %xtraiter = and i64 %i.gz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph248.prol.loopexit, label %.lr.ph248.prol

.lr.ph248.prol:                                   ; preds = %.lr.ph248.preheader389, %.lr.ph248.prol
  %.093246.prol = phi i64 [ %i.hm, %.lr.ph248.prol ], [ %.093246.ph, %.lr.ph248.preheader389 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph248.prol ], [ 0, %.lr.ph248.preheader389 ]
  %i.hc = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %.093246.prol ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 -4
  %i.he = load float, ptr %i.hd, align 4, !tbaa !34 ; 2 uses
  %i.hf = load float, ptr %i.hc, align 4, !tbaa !34 ; 2 uses
  %i.hg = fmul reassoc nsz arcp contract afn float %i.hf, %i.he
  %i.hh = fcmp reassoc nsz arcp contract afn ugt float %i.hg, 0.000000e+00
  %i.hi = fadd reassoc nsz arcp contract afn float %i.hf, %i.he
  %i.hj = fmul reassoc nsz arcp contract afn float %i.hi, 5.000000e-01
  %.sink339.prol = select i1 %i.hh, float %i.hj, float 0.000000e+00
  %i.hk = getelementptr inbounds nuw [12 x i8], ptr %i.gi, i64 %.093246.prol
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store float %.sink339.prol, ptr %i.hl, align 4, !tbaa !35
  %i.hm = add nuw i64 %.093246.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph248.prol.loopexit, label %.lr.ph248.prol, !llvm.loop !203

.lr.ph248.prol.loopexit:                          ; preds = %.lr.ph248.prol, %.lr.ph248.preheader389
  %.093246.unr = phi i64 [ %.093246.ph, %.lr.ph248.preheader389 ], [ %i.hm, %.lr.ph248.prol ]
  %i.hn = icmp ult i64 %i.hb, 3
  br i1 %i.hn, label %._crit_edge249, label %.lr.ph248

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143
  %.094244 = phi i64 [ %i.ho, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.28.0243 = phi ptr [ %.sroa.28.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143 ], [ %i.gg, %.lr.ph.preheader ] ; 3 uses
  %.sroa.22.0242 = phi ptr [ %.sroa.22.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143 ], [ %i.gf, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.0241 = phi ptr [ %.sroa.0.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143 ], [ %i.gf, %.lr.ph.preheader ] ; 7 uses
  %i.ho = add nuw i64 %.094244, 1                 ; 3 uses
  %i.hp = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.hq = getelementptr inbounds nuw [12 x i8], ptr %i.hp, i64 %i.ho
  %i.hr = getelementptr inbounds nuw [12 x i8], ptr %i.hp, i64 %.094244
  %i.hs = load <2 x float>, ptr %i.hq, align 4, !tbaa !34
  %i.ht = load <2 x float>, ptr %i.hr, align 4, !tbaa !34
  %i.hu = fsub reassoc nsz arcp contract afn <2 x float> %i.hs, %i.ht ; 2 uses
  %shift381 = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop382 = fdiv reassoc nsz arcp contract afn <2 x float> %shift381, %i.hu
  %i.hv = extractelement <2 x float> %foldExtExtBinop382, i64 0 ; 2 uses
  %.not.i.i134 = icmp eq ptr %.sroa.22.0242, %.sroa.28.0243
  br i1 %.not.i.i134, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  store float %i.hv, ptr %.sroa.22.0242, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143

bb.y:                                             ; preds = %.lr.ph
  %i.hw = ptrtoint ptr %.sroa.28.0243 to i64
  %i.hx = ptrtoint ptr %.sroa.0.0241 to i64
  %i.hy = sub i64 %i.hw, %i.hx                    ; 7 uses
  %i.hz = icmp eq i64 %i.hy, 9223372036854775804
  br i1 %i.hz, label %bb.z, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i135

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc141 unwind label %.loopexit.split-lp219

.noexc141:                                        ; preds = %bb.z
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i135: ; preds = %bb.y
  %i.ia = ashr exact i64 %i.hy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i136 = tail call i64 @llvm.umax.i64(i64 %i.ia, i64 1)
  %i.ib = add nsw i64 %.sroa.speculated.i.i.i.i136, %i.ia ; 2 uses
  %i.ic = icmp ult i64 %i.ib, %i.ia
  %i.id = tail call i64 @llvm.umin.i64(i64 %i.ib, i64 2305843009213693951)
  %i.ie = select i1 %i.ic, i64 2305843009213693951, i64 %i.id ; 3 uses
  %.not.i.i.i.i137 = icmp ne i64 %i.ie, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i137)
  %i.if = shl nuw nsw i64 %i.ie, 2
  %i.ig = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.if) #20
          to label %.noexc142 unwind label %.loopexit218 ; 4 uses

.noexc142:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i135
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 %i.hy ; 2 uses
  store float %i.hv, ptr %i.ih, align 4, !tbaa !34
  %i.ii = icmp sgt i64 %i.hy, 0
  br i1 %i.ii, label %bb.aa, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i138

bb.aa:                                            ; preds = %.noexc142
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ig, ptr align 4 %.sroa.0.0241, i64 %i.hy, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i138

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i138: ; preds = %bb.aa, %.noexc142
  %.not.i17.i.i.i139 = icmp eq ptr %.sroa.0.0241, null
  br i1 %.not.i17.i.i.i139, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i138
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0241, i64 noundef %i.hy) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140: ; preds = %bb.ab, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i138
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.ie
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143

_ZNSt6vectorIfSaIfEE9push_backEOf.exit143:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140, %bb.x
  %.sroa.0.3 = phi ptr [ %i.ig, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140 ], [ %.sroa.0.0241, %bb.x ] ; 14 uses
  %.pn = phi ptr [ %i.ih, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140 ], [ %.sroa.22.0242, %bb.x ]
  %.sroa.28.3 = phi ptr [ %i.ij, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140 ], [ %.sroa.28.0243, %bb.x ] ; 2 uses
  %.sroa.22.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %exitcond.not = icmp eq i64 %i.ho, %i.gc
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !204

._crit_edge249:                                   ; preds = %.lr.ph248.prol.loopexit, %.lr.ph248, %middle.block
  %i.ik = icmp ugt i64 %i.g, 1
  br i1 %i.ik, label %._crit_edge249.thread, label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %._crit_edge249.thread, %._crit_edge249
  br label %.lr.ph252

.lr.ph248:                                        ; preds = %.lr.ph248.prol.loopexit, %.lr.ph248
  %.093246 = phi i64 [ %i.kc, %.lr.ph248 ], [ %.093246.unr, %.lr.ph248.prol.loopexit ] ; 6 uses
  %i.il = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %.093246 ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 -4
  %i.in = load float, ptr %i.im, align 4, !tbaa !34 ; 2 uses
  %i.io = load float, ptr %i.il, align 4, !tbaa !34 ; 2 uses
  %i.ip = fmul reassoc nsz arcp contract afn float %i.io, %i.in
  %i.iq = fcmp reassoc nsz arcp contract afn ugt float %i.ip, 0.000000e+00
  %i.ir = fadd reassoc nsz arcp contract afn float %i.io, %i.in
  %i.is = fmul reassoc nsz arcp contract afn float %i.ir, 5.000000e-01
  %.sink339 = select i1 %i.iq, float %i.is, float 0.000000e+00
  %i.it = getelementptr inbounds nuw [12 x i8], ptr %i.gi, i64 %.093246
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store float %.sink339, ptr %i.iu, align 4, !tbaa !35
  %i.iv = add nuw i64 %.093246, 1                 ; 2 uses
  %i.iw = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %i.iv ; 2 uses
  %i.ix = getelementptr i8, ptr %i.iw, i64 -4
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !34 ; 2 uses
  %i.iz = load float, ptr %i.iw, align 4, !tbaa !34 ; 2 uses
  %i.ja = fmul reassoc nsz arcp contract afn float %i.iz, %i.iy
  %i.jb = fcmp reassoc nsz arcp contract afn ugt float %i.ja, 0.000000e+00
  %i.jc = fadd reassoc nsz arcp contract afn float %i.iz, %i.iy
  %i.jd = fmul reassoc nsz arcp contract afn float %i.jc, 5.000000e-01
  %.sink339.1 = select i1 %i.jb, float %i.jd, float 0.000000e+00
  %i.je = getelementptr inbounds nuw [12 x i8], ptr %i.gi, i64 %i.iv
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store float %.sink339.1, ptr %i.jf, align 4, !tbaa !35
  %i.jg = add nuw i64 %.093246, 2                 ; 2 uses
  %i.jh = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %i.jg ; 2 uses
  %i.ji = getelementptr i8, ptr %i.jh, i64 -4
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !34 ; 2 uses
  %i.jk = load float, ptr %i.jh, align 4, !tbaa !34 ; 2 uses
  %i.jl = fmul reassoc nsz arcp contract afn float %i.jk, %i.jj
  %i.jm = fcmp reassoc nsz arcp contract afn ugt float %i.jl, 0.000000e+00
  %i.jn = fadd reassoc nsz arcp contract afn float %i.jk, %i.jj
  %i.jo = fmul reassoc nsz arcp contract afn float %i.jn, 5.000000e-01
  %.sink339.2 = select i1 %i.jm, float %i.jo, float 0.000000e+00
  %i.jp = getelementptr inbounds nuw [12 x i8], ptr %i.gi, i64 %i.jg
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store float %.sink339.2, ptr %i.jq, align 4, !tbaa !35
  %i.jr = add nuw i64 %.093246, 3                 ; 2 uses
  %i.js = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %i.jr ; 2 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 -4
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !34 ; 2 uses
  %i.jv = load float, ptr %i.js, align 4, !tbaa !34 ; 2 uses
  %i.jw = fmul reassoc nsz arcp contract afn float %i.jv, %i.ju
  %i.jx = fcmp reassoc nsz arcp contract afn ugt float %i.jw, 0.000000e+00
  %i.jy = fadd reassoc nsz arcp contract afn float %i.jv, %i.ju
  %i.jz = fmul reassoc nsz arcp contract afn float %i.jy, 5.000000e-01
  %.sink339.3 = select i1 %i.jx, float %i.jz, float 0.000000e+00
  %i.ka = getelementptr inbounds nuw [12 x i8], ptr %i.gi, i64 %i.jr
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store float %.sink339.3, ptr %i.kb, align 4, !tbaa !35
  %i.kc = add nuw i64 %.093246, 4                 ; 2 uses
  %exitcond282.not.3 = icmp eq i64 %i.kc, %i.gc
  br i1 %exitcond282.not.3, label %._crit_edge249, label %.lr.ph248, !llvm.loop !205

._crit_edge249.thread:                            ; preds = %._crit_edge, %._crit_edge249
  %i.kd = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %i.g
  %i.ke = getelementptr i8, ptr %i.kd, i64 -8
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !34
  %i.kg = getelementptr inbounds nuw [12 x i8], ptr %i.gi, i64 %i.gc
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store float %i.kf, ptr %i.kh, align 4, !tbaa !35
  br label %.lr.ph252.preheader

_ZNSt6vectorIfSaIfEED2Ev.exit145:                 ; preds = %bb.af
  %i.ki = ptrtoint ptr %.sroa.28.3 to i64
  %i.kj = ptrtoint ptr %.sroa.0.3 to i64
  %i.kk = sub i64 %i.ki, %i.kj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3, i64 noundef %i.kk) #19
  br label %bb.ai

.lr.ph252:                                        ; preds = %.lr.ph252.preheader, %bb.af
  %.0250 = phi i64 [ %i.lj, %bb.af ], [ 0, %.lr.ph252.preheader ] ; 3 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %.0250 ; 2 uses
  %i.km = load float, ptr %i.kl, align 4, !tbaa !34 ; 4 uses
  %i.kn = tail call reassoc nsz arcp contract afn noundef float @llvm.fabs.f32(float %i.km)
  %i.ko = fcmp reassoc nsz arcp contract afn olt float %i.kn, f0x34000000
  %i.kp = getelementptr inbounds nuw [12 x i8], ptr %i.gi, i64 %.0250 ; 3 uses
  br i1 %i.ko, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph252
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, ptr align 4 %i.kq, <4 x i1> <i1 true, i1 false, i1 false, i1 true>), !tbaa !35
  br label %bb.af

bb.ad:                                            ; preds = %.lr.ph252
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 2 uses
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !35
  %i.kt = fdiv reassoc nsz arcp contract afn float %i.ks, %i.km ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 20 ; 2 uses
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !35
  %i.kw = fdiv reassoc nsz arcp contract afn float %i.kv, %i.km ; 3 uses
  %i.kx = fmul reassoc nsz arcp contract afn float %i.kt, %i.kt
  %i.ky = fmul reassoc nsz arcp contract afn float %i.kw, %i.kw
  %i.kz = fadd reassoc nsz arcp contract afn float %i.ky, %i.kx ; 2 uses
  %i.la = fcmp reassoc nsz arcp contract afn ogt float %i.kz, 9.000000e+00
  br i1 %i.la, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.lb = fmul reassoc nsz arcp contract afn float %i.km, 3.000000e+00
  %i.lc = fmul reassoc nsz arcp contract afn float %i.lb, %i.kt
  %i.ld = tail call reassoc nsz arcp contract afn noundef float @llvm.sqrt.f32(float %i.kz) ; 2 uses
  %i.le = fdiv reassoc nsz arcp contract afn float %i.lc, %i.ld
  store float %i.le, ptr %i.kr, align 4, !tbaa !35
  %i.lf = fmul reassoc nsz arcp contract afn float %i.kw, 3.000000e+00
  %i.lg = load float, ptr %i.kl, align 4, !tbaa !34
  %i.lh = fmul reassoc nsz arcp contract afn float %i.lf, %i.lg
  %i.li = fdiv reassoc nsz arcp contract afn float %i.lh, %i.ld
  store float %i.li, ptr %i.ku, align 4, !tbaa !35
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %i.lj = add nuw i64 %.0250, 1                   ; 2 uses
  %exitcond283.not = icmp eq i64 %i.lj, %i.gc
  br i1 %exitcond283.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit145, label %.lr.ph252, !llvm.loop !206

.loopexit218:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i135
  %lpad.loopexit220 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp219:                            ; preds = %bb.z
  %lpad.loopexit.split-lp221 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp219, %.loopexit218
  %lpad.phi222 = phi { ptr, i32 } [ %lpad.loopexit220, %.loopexit218 ], [ %lpad.loopexit.split-lp221, %.loopexit.split-lp219 ] ; 2 uses
  %.not.i.i.i146 = icmp eq ptr %.sroa.0.0241, null
  br i1 %.not.i.i.i146, label %_ZNSt6vectorIfSaIfEED2Ev.exit126, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0241, i64 noundef %i.hy) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit126

_ZNSt6vectorIfSaIfEED2Ev.exit126:                 ; preds = %bb.ah, %bb.ag, %bb.v, %bb.u
  %.pn109.pn = phi { ptr, i32 } [ %.pn109, %bb.v ], [ %lpad.phi222, %bb.ah ], [ %.pn109, %bb.u ], [ %lpad.phi222, %bb.ag ]
  resume { ptr, i32 } %.pn109.pn

bb.ai:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZNSt6vectorIfSaIfEED2Ev.exit145, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8interpol11spline_baseIfEC2IP16CurveAnchorPointEET_S5_RKNS_6limitsIfEES9_b(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i1 noundef zeroext %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %5 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %3, align 4                ; 3 uses
  store i64 %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %4, align 4
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.a, ptr %i.f, align 8, !tbaa !27
  br i1 %5, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not74 = icmp eq ptr %1, %2
  br i1 %.not74, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.c to i32
  %i.k = bitcast i32 %i.j to float
  %i.l = lshr i64 %i.c, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = bitcast i32 %i.m to float
  %i.o = fsub reassoc nsz arcp contract afn float %i.n, %i.k ; 2 uses
  %.not3176 = icmp eq ptr %1, %2
  br i1 %.not3176, label %.loopexit, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph78, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit
  %i.r = phi ptr [ null, %.lr.ph78 ], [ %i.aw, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ] ; 6 uses
  %i.s = phi ptr [ null, %.lr.ph78 ], [ %i.ax, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ] ; 5 uses
  %i.t = phi ptr [ null, %.lr.ph78 ], [ %i.ay, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ] ; 4 uses
  %.077 = phi ptr [ %1, %.lr.ph78 ], [ %i.az, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %i.u = load float, ptr %.077, align 4, !tbaa !45
  %i.v = frem reassoc nsz arcp contract afn float %i.u, %i.o ; 3 uses
  %i.w = fcmp reassoc nsz arcp contract afn olt float %i.v, 0.000000e+00
  %i.x = fadd reassoc nsz arcp contract afn float %i.v, %i.o
  %spec.select = select nsz i1 %i.w, float %i.x, float %i.v ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.077, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !46 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %spec.select, ptr %i.t, align 4, !tbaa !34
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.aa = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.z, i64 0
  store <2 x float> %i.aa, ptr %.sroa.660.0..sroa_idx, align 4, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 2 uses
  store ptr %i.ab, ptr %i.p, align 8, !tbaa !17
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = ptrtoint ptr %i.s to i64
  %i.ad = ptrtoint ptr %i.r to i64                ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.f, label %_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ag = sdiv exact i64 %i.ae, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 768614336404564650)
  %i.ak = select i1 %i.ai, i64 768614336404564650, i64 %i.aj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.al = mul nuw nsw i64 %i.ak, 12
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #20
          to label %.noexc33 unwind label %.loopexit66 ; 6 uses

.noexc33:                                         ; preds = %_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae ; 2 uses
  store float %spec.select, ptr %i.an, align 4, !tbaa !34
  %.sroa.660.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ao = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.z, i64 0
  store <2 x float> %i.ao, ptr %.sroa.660.0..sroa_idx61, align 4, !tbaa !34
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc33, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %i.am, %.noexc33 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %i.r, %.noexc33 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !62, !alias.scope !219
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.s
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc33
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.am, %.noexc33 ], [ %i.aq, %.lr.ph.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.au) #19
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !15
  store ptr %i.ar, ptr %i.p, align 8, !tbaa !17
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %i.ak ; 2 uses
  store ptr %i.av, ptr %i.q, align 8, !tbaa !16
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.d
  %i.aw = phi ptr [ %i.am, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.r, %bb.d ]
  %i.ax = phi ptr [ %i.av, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.s, %bb.d ]
  %i.ay = phi ptr [ %i.ar, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.ab, %bb.d ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.077, i64 8 ; 2 uses
  %.not31 = icmp eq ptr %i.az, %2
  br i1 %.not31, label %.loopexit, label %bb.c, !llvm.loop !214

.loopexit66:                                      ; preds = %_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit49
  %i.ba = phi ptr [ null, %.lr.ph ], [ %i.cg, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit49 ] ; 8 uses
  %i.bb = phi ptr [ null, %.lr.ph ], [ %i.ch, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit49 ] ; 7 uses
  %i.bc = phi ptr [ null, %.lr.ph ], [ %i.ci, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit49 ] ; 6 uses
  %.02575 = phi ptr [ %1, %.lr.ph ], [ %i.cj, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit49 ] ; 3 uses
  %i.bd = load float, ptr %i.b, align 8, !tbaa !31
  %i.be = load float, ptr %.02575, align 4, !tbaa !45 ; 4 uses
  %i.bf = fcmp reassoc nsz arcp contract afn ugt float %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit49, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = load float, ptr %i.g, align 4, !tbaa !30
  %i.bh = fcmp reassoc nsz arcp contract afn ugt float %i.be, %i.bg
  br i1 %i.bh, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit49, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.02575, i64 4
end_hunk_0
begin_hunk_1_@_ZN8interpol31monotone_hermite_spline_variantIfE4initEv:bb.a
  %i.hq = fmul reassoc nsz arcp contract afn float %i.hp, 3.000000e+00
  %i.hr = fsub reassoc nsz arcp contract afn float %i.hg, %i.he
  %i.hs = fmul reassoc nsz arcp contract afn float %i.ho, %i.hr
  %i.ht = fdiv reassoc nsz arcp contract afn float %i.hs, %i.hq
  %i.hu = fadd reassoc nsz arcp contract afn float %i.ht, %i.he
  %i.hv = fdiv reassoc nsz arcp contract afn float %i.hh, %i.hu
  br label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.1

_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.1: ; preds = %bb.af, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111
  %.0.i110.1 = phi nsz float [ %i.hv, %bb.af ], [ 0.000000e+00, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111 ]
  %i.hw = getelementptr inbounds nuw [12 x i8], ptr %i.ec, i64 %i.hc
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store float %.0.i110.1, ptr %i.hx, align 4, !tbaa !35
  %i.hy = add nuw nsw i64 %.051396, 2             ; 2 uses
  %exitcond446.not.1 = icmp eq i64 %i.hy, %i.g
  br i1 %exitcond446.not.1, label %_ZNSt6vectorIfSaIfEED2Ev.exit109, label %.lr.ph397, !llvm.loop !259

bb.ag:                                            ; preds = %.loopexit283, %.loopexit.split-lp284, %.loopexit, %.loopexit.split-lp, %bb.ad, %bb.ac
  %.sroa.0200.0317 = phi ptr [ %.sroa.0200.0.lcssa, %bb.ad ], [ %.sroa.0200.0.lcssa, %bb.ac ], [ %.sroa.0200.0383, %.loopexit.split-lp ], [ %.sroa.0200.0383, %.loopexit ], [ %.sroa.0200.0383, %.loopexit283 ], [ %.sroa.0200.0383, %.loopexit.split-lp284 ] ; 3 uses
  %.sroa.26.0306 = phi ptr [ %.sroa.17.0.lcssa, %bb.ad ], [ %.sroa.26.0.lcssa, %bb.ac ], [ %.sroa.26.0385, %.loopexit.split-lp ], [ %.sroa.26.0385, %.loopexit ], [ %.sroa.26.0385, %.loopexit283 ], [ %.sroa.26.0385, %.loopexit.split-lp284 ]
  %.sroa.0220.2 = phi ptr [ %.sroa.0220.4, %bb.ad ], [ %.sroa.0220.0.lcssa, %bb.ac ], [ %.sroa.0220.0380, %.loopexit.split-lp ], [ %.sroa.0220.0380, %.loopexit ], [ %.sroa.0220.5, %.loopexit283 ], [ %.sroa.0220.5, %.loopexit.split-lp284 ] ; 2 uses
  %.sroa.26234.2 = phi ptr [ %.sroa.26234.4, %bb.ad ], [ %.sroa.17230.0.lcssa, %bb.ac ], [ %.sroa.26234.0382, %.loopexit.split-lp ], [ %.sroa.26234.0382, %.loopexit ], [ %.sroa.26234.5, %.loopexit283 ], [ %.sroa.26234.5, %.loopexit.split-lp284 ] ; 2 uses
  %.pn64.pn = phi { ptr, i32 } [ %i.gf, %bb.ad ], [ %i.ge, %bb.ac ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit285, %.loopexit283 ], [ %lpad.loopexit.split-lp286, %.loopexit.split-lp284 ] ; 2 uses
  %.not.i.i.i112 = icmp eq ptr %.sroa.0200.0317, null
  br i1 %.not.i.i.i112, label %_ZNSt6vectorIfSaIfEED2Ev.exit113, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hz = ptrtoint ptr %.sroa.26.0306 to i64
  %i.ia = ptrtoint ptr %.sroa.0200.0317 to i64
  %i.ib = sub i64 %i.hz, %i.ia
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0200.0317, i64 noundef %i.ib) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit113

_ZNSt6vectorIfSaIfEED2Ev.exit113:                 ; preds = %.thread, %bb.ag, %bb.ah
  %.pn64.pn259 = phi { ptr, i32 } [ %i.au, %.thread ], [ %.pn64.pn, %bb.ag ], [ %.pn64.pn, %bb.ah ] ; 2 uses
  %.sroa.26234.2258 = phi ptr [ %.sroa.26234.1, %.thread ], [ %.sroa.26234.2, %bb.ag ], [ %.sroa.26234.2, %bb.ah ]
  %.sroa.0220.2257 = phi ptr [ %.sroa.0220.1, %.thread ], [ %.sroa.0220.2, %bb.ag ], [ %.sroa.0220.2, %bb.ah ] ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %.sroa.0220.2257, null
  br i1 %.not.i.i.i114, label %_ZNSt6vectorIfSaIfEED2Ev.exit115, label %_ZNSt6vectorIfSaIfEED2Ev.exit115.sink.split

bb.ai:                                            ; preds = %bb.c
  %i.ic = add nsw i64 %i.g, -1                    ; 9 uses
  %i.id = icmp ugt i64 %i.ic, 2305843009213693951
  br i1 %i.id, label %bb.aj, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i116

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
          to label %.noexc120 unwind label %.thread269

.noexc120:                                        ; preds = %bb.aj
  unreachable

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i116: ; preds = %bb.ai
  %.not = icmp ne i64 %i.ic, 0
  tail call void @llvm.assume(i1 %.not)
  %i.ie = shl nuw nsw i64 %i.ic, 2                ; 2 uses
  %i.if = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #20
          to label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i123 unwind label %.thread269 ; 4 uses

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i123: ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i116
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ic ; 2 uses
  %i.ih = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #20
          to label %.lr.ph.preheader unwind label %.thread269 ; 3 uses

.lr.ph.preheader:                                 ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i123
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ic
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149
  %i.ij = load float, ptr %.sroa.0.3, align 4, !tbaa !34
  %i.ik = load ptr, ptr %0, align 8, !tbaa !15    ; 8 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store float %i.ij, ptr %i.il, align 4, !tbaa !35
  %.not554 = icmp eq i64 %i.ic, 1
  br i1 %.not554, label %._crit_edge379.thread, label %.lr.ph378.preheader

.lr.ph378.preheader:                              ; preds = %._crit_edge
  %i.im = add nsw i64 %i.g, -2                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.im, 8
  br i1 %min.iters.check, label %.lr.ph378.preheader666, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph378.preheader
  %scevgep = getelementptr i8, ptr %i.ik, i64 20  ; 2 uses
  %i.in = getelementptr i8, ptr %i.ik, i64 %i.f
  %scevgep599 = getelementptr i8, ptr %i.in, i64 -12 ; 2 uses
  %i.io = shl nuw nsw i64 %i.g, 2
  %i.ip = add nsw i64 %i.io, -4                   ; 2 uses
  %scevgep600 = getelementptr i8, ptr %.sroa.0.3, i64 %i.ip
  %scevgep601 = getelementptr i8, ptr %.sroa.0178.4, i64 %i.ip
  %bound0 = icmp ult ptr %scevgep, %scevgep600
  %bound1 = icmp ult ptr %.sroa.0.3, %scevgep599
  %found.conflict = and i1 %bound0, %bound1
  %bound0602 = icmp ult ptr %scevgep, %scevgep601
  %bound1603 = icmp ult ptr %.sroa.0178.4, %scevgep599
  %found.conflict604 = and i1 %bound0602, %bound1603
  %conflict.rdx = or i1 %found.conflict, %found.conflict604
  br i1 %conflict.rdx, label %.lr.ph378.preheader666, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.im, -8                      ; 3 uses
  %i.iq = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ir = or disjoint i64 %index, 1               ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %index
  %wide.load = load <8 x float>, ptr %i.is, align 4, !tbaa !34, !alias.scope !271 ; 3 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %i.ir
  %wide.load605 = load <8 x float>, ptr %i.it, align 4, !tbaa !34, !alias.scope !271 ; 2 uses
  %i.iu = fmul reassoc nsz arcp contract afn <8 x float> %wide.load605, %wide.load ; 2 uses
  %i.iv = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.iu, zeroinitializer ; 3 uses
  %i.iw = getelementptr [4 x i8], ptr %.sroa.0178.4, i64 %i.ir
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.iw, <8 x i1> %i.iv, <8 x float> poison), !tbaa !34, !alias.scope !272 ; 2 uses
  %i.ix = getelementptr [4 x i8], ptr %.sroa.0178.4, i64 %index
  %wide.masked.load606 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ix, <8 x i1> %i.iv, <8 x float> poison), !tbaa !34, !alias.scope !272 ; 2 uses
  %i.iy = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load, splat (float 2.000000e+00)
  %i.iz = fadd reassoc nsz arcp contract afn <8 x float> %i.iy, %wide.masked.load606
  %i.ja = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load606, %wide.masked.load
  %i.jb = fmul reassoc nsz arcp contract afn <8 x float> %i.ja, splat (float 3.000000e+00)
  %i.jc = fsub reassoc nsz arcp contract afn <8 x float> %wide.load605, %wide.load
  %i.jd = fmul reassoc nsz arcp contract afn <8 x float> %i.iz, %i.jc
  %i.je = fdiv reassoc nsz arcp contract afn <8 x float> %i.jd, %i.jb
  %i.jf = fadd reassoc nsz arcp contract afn <8 x float> %i.je, %wide.load
  %i.jg = fdiv reassoc nsz arcp contract afn <8 x float> %i.iu, %i.jf
  %predphi = select nsz <8 x i1> %i.iv, <8 x float> %i.jg, <8 x float> zeroinitializer
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %i.ik, <8 x i64> %vec.ind
  %wide.gep607 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %predphi, <8 x ptr> align 4 %wide.gep607, <8 x i1> splat (i1 true)), !tbaa !35, !alias.scope !273, !noalias !274
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.jh = icmp eq i64 %index.next, %n.vec
  br i1 %i.jh, label %middle.block, label %vector.body, !llvm.loop !264

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.im, %n.vec
  br i1 %cmp.n, label %._crit_edge379, label %.lr.ph378.preheader666

.lr.ph378.preheader666:                           ; preds = %vector.memcheck, %.lr.ph378.preheader, %middle.block
  %.0376.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph378.preheader ], [ %i.iq, %middle.block ] ; 7 uses
  %i.ji = add nsw i64 %i.g, -2
  %xtraiter = and i64 %i.g, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph378.prol.loopexit, label %.lr.ph378.prol

.lr.ph378.prol:                                   ; preds = %.lr.ph378.preheader666
  %i.jj = add nsw i64 %.0376.ph, -1               ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %i.jj
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !34 ; 3 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %.0376.ph
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !34 ; 2 uses
  %i.jo = fmul reassoc nsz arcp contract afn float %i.jn, %i.jl ; 2 uses
  %i.jp = fcmp reassoc nsz arcp contract afn ogt float %i.jo, 0.000000e+00
  br i1 %i.jp, label %bb.ak, label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.prol

bb.ak:                                            ; preds = %.lr.ph378.prol
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0178.4, i64 %.0376.ph
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !34 ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0178.4, i64 %i.jj
  %i.jt = load float, ptr %i.js, align 4, !tbaa !34 ; 2 uses
  %i.ju = fmul reassoc nsz arcp contract afn float %i.jr, 2.000000e+00
  %i.jv = fadd reassoc nsz arcp contract afn float %i.ju, %i.jt
  %i.jw = fadd reassoc nsz arcp contract afn float %i.jt, %i.jr
  %i.jx = fmul reassoc nsz arcp contract afn float %i.jw, 3.000000e+00
  %i.jy = fsub reassoc nsz arcp contract afn float %i.jn, %i.jl
  %i.jz = fmul reassoc nsz arcp contract afn float %i.jv, %i.jy
  %i.ka = fdiv reassoc nsz arcp contract afn float %i.jz, %i.jx
  %i.kb = fadd reassoc nsz arcp contract afn float %i.ka, %i.jl
  %i.kc = fdiv reassoc nsz arcp contract afn float %i.jo, %i.kb
  br label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.prol

_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.prol: ; preds = %bb.ak, %.lr.ph378.prol
  %.0.i150.prol = phi nsz float [ %i.kc, %bb.ak ], [ 0.000000e+00, %.lr.ph378.prol ]
  %i.kd = getelementptr inbounds nuw [12 x i8], ptr %i.ik, i64 %.0376.ph
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store float %.0.i150.prol, ptr %i.ke, align 4, !tbaa !35
  %i.kf = add nuw nsw i64 %.0376.ph, 1
  br label %.lr.ph378.prol.loopexit

.lr.ph378.prol.loopexit:                          ; preds = %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.prol, %.lr.ph378.preheader666
  %.0376.unr = phi i64 [ %.0376.ph, %.lr.ph378.preheader666 ], [ %i.kf, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.prol ]
  %i.kg = icmp eq i64 %i.ji, %.0376.ph
  br i1 %i.kg, label %._crit_edge379, label %.lr.ph378

.thread269:                                       ; preds = %bb.aj, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i116, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i123
  %.sroa.0178.1 = phi ptr [ null, %bb.aj ], [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i116 ], [ %i.if, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i123 ]
  %.sroa.19.1 = phi ptr [ null, %bb.aj ], [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i116 ], [ %i.ig, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i123 ]
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit157

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149
  %.050372 = phi i64 [ %i.ki, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.21.0371 = phi ptr [ %.sroa.21.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ %i.ii, %.lr.ph.preheader ] ; 4 uses
  %.sroa.15.0370 = phi ptr [ %.sroa.15.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ %i.ih, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.0369 = phi ptr [ %.sroa.0.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ %i.ih, %.lr.ph.preheader ] ; 8 uses
  %.sroa.19.0368 = phi ptr [ %.sroa.19.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ %i.ig, %.lr.ph.preheader ] ; 5 uses
  %.sroa.13.0367 = phi ptr [ %.sroa.13.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ %i.if, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0178.0366 = phi ptr [ %.sroa.0178.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ %i.if, %.lr.ph.preheader ] ; 7 uses
  %i.ki = add nuw i64 %.050372, 1                 ; 4 uses
  %i.kj = load ptr, ptr %0, align 8, !tbaa !15    ; 3 uses
  %i.kk = getelementptr inbounds nuw [12 x i8], ptr %i.kj, i64 %i.ki
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !32
  %i.km = getelementptr inbounds nuw [12 x i8], ptr %i.kj, i64 %.050372
  %i.kn = load float, ptr %i.km, align 4, !tbaa !32
  %i.ko = fsub reassoc nsz arcp contract afn float %i.kl, %i.kn ; 2 uses
  %.not.i.i130 = icmp eq ptr %.sroa.13.0367, %.sroa.19.0368
  br i1 %.not.i.i130, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph
  store float %i.ko, ptr %.sroa.13.0367, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit139

bb.am:                                            ; preds = %.lr.ph
  %i.kp = ptrtoint ptr %.sroa.19.0368 to i64
  %i.kq = ptrtoint ptr %.sroa.0178.0366 to i64
  %i.kr = sub i64 %i.kp, %i.kq                    ; 6 uses
  %i.ks = icmp eq i64 %i.kr, 9223372036854775804
  br i1 %i.ks, label %bb.an, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i131

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc137 unwind label %.loopexit.split-lp289

.noexc137:                                        ; preds = %bb.an
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i131: ; preds = %bb.am
  %i.kt = ashr exact i64 %i.kr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i132 = tail call i64 @llvm.umax.i64(i64 %i.kt, i64 1)
  %i.ku = add nsw i64 %.sroa.speculated.i.i.i.i132, %i.kt ; 2 uses
  %i.kv = icmp ult i64 %i.ku, %i.kt
  %i.kw = tail call i64 @llvm.umin.i64(i64 %i.ku, i64 2305843009213693951)
  %i.kx = select i1 %i.kv, i64 2305843009213693951, i64 %i.kw ; 3 uses
  %.not.i.i.i.i133 = icmp ne i64 %i.kx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i133)
  %i.ky = shl nuw nsw i64 %i.kx, 2
  %i.kz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ky) #20
          to label %.noexc138 unwind label %.loopexit288 ; 4 uses

.noexc138:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i131
  %i.la = getelementptr inbounds i8, ptr %i.kz, i64 %i.kr ; 2 uses
  store float %i.ko, ptr %i.la, align 4, !tbaa !34
  %i.lb = icmp sgt i64 %i.kr, 0
  br i1 %i.lb, label %bb.ao, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i134

bb.ao:                                            ; preds = %.noexc138
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kz, ptr align 4 %.sroa.0178.0366, i64 %i.kr, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i134

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i134: ; preds = %bb.ao, %.noexc138
  %.not.i17.i.i.i135 = icmp eq ptr %.sroa.0178.0366, null
  br i1 %.not.i17.i.i.i135, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i134
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0178.0366, i64 noundef %i.kr) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136: ; preds = %bb.ap, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i134
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.kx
  %.pre = load ptr, ptr %0, align 8, !tbaa !15
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit139

_ZNSt6vectorIfSaIfEE9push_backEOf.exit139:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136, %bb.al
  %i.ld = phi ptr [ %.pre, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136 ], [ %i.kj, %bb.al ] ; 2 uses
  %.sroa.0178.4 = phi ptr [ %i.kz, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136 ], [ %.sroa.0178.0366, %bb.al ] ; 16 uses
  %.pn = phi ptr [ %i.la, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136 ], [ %.sroa.13.0367, %bb.al ]
  %.sroa.19.4 = phi ptr [ %i.lc, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136 ], [ %.sroa.19.0368, %bb.al ] ; 4 uses
  %.sroa.13.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %i.le = getelementptr inbounds nuw [12 x i8], ptr %i.ld, i64 %i.ki
  %i.lf = getelementptr inbounds nuw [12 x i8], ptr %i.ld, i64 %.050372
  %i.lg = load <2 x float>, ptr %i.le, align 4, !tbaa !34
  %i.lh = load <2 x float>, ptr %i.lf, align 4, !tbaa !34
  %i.li = fsub reassoc nsz arcp contract afn <2 x float> %i.lg, %i.lh ; 2 uses
  %shift640 = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop641 = fdiv reassoc nsz arcp contract afn <2 x float> %shift640, %i.li
  %i.lj = extractelement <2 x float> %foldExtExtBinop641, i64 0 ; 2 uses
  %.not.i.i140 = icmp eq ptr %.sroa.15.0370, %.sroa.21.0371
  br i1 %.not.i.i140, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit139
  store float %i.lj, ptr %.sroa.15.0370, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149

bb.ar:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit139
  %i.lk = ptrtoint ptr %.sroa.21.0371 to i64
  %i.ll = ptrtoint ptr %.sroa.0.0369 to i64
  %i.lm = sub i64 %i.lk, %i.ll                    ; 6 uses
  %i.ln = icmp eq i64 %i.lm, 9223372036854775804
  br i1 %i.ln, label %bb.as, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i141

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc147 unwind label %.loopexit.split-lp294

.noexc147:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i141: ; preds = %bb.ar
  %i.lo = ashr exact i64 %i.lm, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i142 = tail call i64 @llvm.umax.i64(i64 %i.lo, i64 1)
  %i.lp = add nsw i64 %.sroa.speculated.i.i.i.i142, %i.lo ; 2 uses
  %i.lq = icmp ult i64 %i.lp, %i.lo
  %i.lr = tail call i64 @llvm.umin.i64(i64 %i.lp, i64 2305843009213693951)
  %i.ls = select i1 %i.lq, i64 2305843009213693951, i64 %i.lr ; 3 uses
  %.not.i.i.i.i143 = icmp ne i64 %i.ls, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i143)
  %i.lt = shl nuw nsw i64 %i.ls, 2
  %i.lu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lt) #20
          to label %.noexc148 unwind label %.loopexit293 ; 4 uses

.noexc148:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i141
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 %i.lm ; 2 uses
  store float %i.lj, ptr %i.lv, align 4, !tbaa !34
  %i.lw = icmp sgt i64 %i.lm, 0
  br i1 %i.lw, label %bb.at, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i144

bb.at:                                            ; preds = %.noexc148
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lu, ptr align 4 %.sroa.0.0369, i64 %i.lm, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i144

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i144: ; preds = %bb.at, %.noexc148
  %.not.i17.i.i.i145 = icmp eq ptr %.sroa.0.0369, null
  br i1 %.not.i17.i.i.i145, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i146, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i144
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0369, i64 noundef %i.lm) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i146

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i146: ; preds = %bb.au, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i144
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.ls
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149

_ZNSt6vectorIfSaIfEE9push_backEOf.exit149:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i146, %bb.aq
  %.sroa.0.3 = phi ptr [ %i.lu, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i146 ], [ %.sroa.0.0369, %bb.aq ] ; 15 uses
  %.pn279 = phi ptr [ %i.lv, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i146 ], [ %.sroa.15.0370, %bb.aq ]
  %.sroa.21.3 = phi ptr [ %i.lx, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i146 ], [ %.sroa.21.0371, %bb.aq ] ; 2 uses
  %.sroa.15.2 = getelementptr inbounds nuw i8, ptr %.pn279, i64 4
  %exitcond.not = icmp eq i64 %i.ki, %i.ic
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !265

.loopexit288:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i131
  %lpad.loopexit290 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp289:                            ; preds = %bb.an
  %lpad.loopexit.split-lp291 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit293:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i141
  %lpad.loopexit295 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp294:                            ; preds = %bb.as
  %lpad.loopexit.split-lp296 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

._crit_edge379:                                   ; preds = %.lr.ph378.prol.loopexit, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.1, %middle.block
  %i.ly = icmp ugt i64 %i.g, 1
  br i1 %i.ly, label %._crit_edge379.thread, label %_ZNSt6vectorIfSaIfEED2Ev.exit153

.lr.ph378:                                        ; preds = %.lr.ph378.prol.loopexit, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.1
  %.0376 = phi i64 [ %i.nr, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.1 ], [ %.0376.unr, %.lr.ph378.prol.loopexit ] ; 8 uses
  %i.lz = add i64 %.0376, -1                      ; 2 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %i.lz
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !34 ; 3 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %.0376
  %i.md = load float, ptr %i.mc, align 4, !tbaa !34 ; 2 uses
  %i.me = fmul reassoc nsz arcp contract afn float %i.md, %i.mb ; 2 uses
  %i.mf = fcmp reassoc nsz arcp contract afn ogt float %i.me, 0.000000e+00
  br i1 %i.mf, label %bb.av, label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151

bb.av:                                            ; preds = %.lr.ph378
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0178.4, i64 %.0376
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !34 ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0178.4, i64 %i.lz
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !34 ; 2 uses
  %i.mk = fmul reassoc nsz arcp contract afn float %i.mh, 2.000000e+00
  %i.ml = fadd reassoc nsz arcp contract afn float %i.mk, %i.mj
  %i.mm = fadd reassoc nsz arcp contract afn float %i.mj, %i.mh
  %i.mn = fmul reassoc nsz arcp contract afn float %i.mm, 3.000000e+00
  %i.mo = fsub reassoc nsz arcp contract afn float %i.md, %i.mb
  %i.mp = fmul reassoc nsz arcp contract afn float %i.ml, %i.mo
  %i.mq = fdiv reassoc nsz arcp contract afn float %i.mp, %i.mn
  %i.mr = fadd reassoc nsz arcp contract afn float %i.mq, %i.mb
  %i.ms = fdiv reassoc nsz arcp contract afn float %i.me, %i.mr
  br label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151

_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151: ; preds = %.lr.ph378, %bb.av
  %.0.i150 = phi nsz float [ %i.ms, %bb.av ], [ 0.000000e+00, %.lr.ph378 ]
  %i.mt = getelementptr inbounds nuw [12 x i8], ptr %i.ik, i64 %.0376
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  store float %.0.i150, ptr %i.mu, align 4, !tbaa !35
  %i.mv = add nuw i64 %.0376, 1                   ; 3 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %.0376
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !34 ; 3 uses
end_hunk_1
