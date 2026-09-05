Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-vocab?download=true
inline.NumInlined: 5573
inline.NumDeleted: 1989
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN25llm_tokenizer_ugm_session8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIiSaIiEE:bb.a
  %i.dc = icmp eq ptr %.19.i.i.i.i109, %i.cy
  br i1 %i.dc, label %._crit_edge, label %_ZNK10naive_trie8traverseEc.exit118

_ZNK10naive_trie8traverseEc.exit118:              ; preds = %_ZNKSt8_Rb_treeIcSt4pairIKc10naive_trieESt10_Select1stIS3_ESt4lessIcESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i114
  %i.dd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i109, i64 32
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !39
  %i.df = icmp sge i8 %i.cv, %i.de
  %.083 = add i64 %.083152, 1                     ; 2 uses
  %i.dg = icmp ule i64 %.083, %i.i
  %i.dh = and i1 %i.df, %i.dg
  br i1 %i.dh, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.u, %_ZNKSt8_Rb_treeIcSt4pairIKc10naive_trieESt10_Select1stIS3_ESt4lessIcESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i114, %_ZNK10naive_trie8traverseEc.exit118
  br i1 %.286, label %bb.w, label %.critedge

.critedge:                                        ; preds = %bb.i, %_ZNKSt8_Rb_treeIcSt4pairIKc10naive_trieESt10_Select1stIS3_ESt4lessIcESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNK10naive_trie8traverseEc.exit, %._crit_edge
  %i.di = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.dj = load double, ptr %i.di, align 8, !tbaa !535
  %i.dk = getelementptr inbounds nuw i8, ptr %i.at, i64 140
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !227
  %i.dm = fpext float %i.dl to double
  %i.dn = fadd double %i.dj, %i.dm                ; 2 uses
  %i.do = getelementptr [24 x i8], ptr %i.as, i64 %.sroa.speculated ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !535
  %i.dr = fcmp ogt double %i.dn, %i.dq
  br i1 %i.dr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.critedge
  %i.ds = load ptr, ptr %0, align 8, !tbaa !215, !nonnull !126, !align !127
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !166
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 100
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !104
  store i32 %i.dv, ptr %i.do, align 8, !tbaa !97
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i64 %.082153, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !36
  store double %i.dn, ptr %i.dp, align 8, !tbaa !533
  br label %bb.w

bb.w:                                             ; preds = %.critedge, %bb.v, %._crit_edge
  %i.dw = add i64 %.sroa.speculated, %.082153     ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.i
  br i1 %i.dx, label %bb.h, label %bb.f, !llvm.loop !525

bb.x:                                             ; preds = %bb.ae, %bb.f
  %.072 = phi i1 [ false, %bb.f ], [ %i.ed, %bb.ae ]
  %i.dy = load i32, ptr %i.aj, align 8, !tbaa !536 ; 3 uses
  %i.dz = load ptr, ptr %0, align 8, !tbaa !215, !nonnull !126, !align !127
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !166
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 100
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !104
  %i.ed = icmp eq i32 %i.dy, %i.ec                ; 2 uses
  %or.cond = select i1 %.072, i1 %i.ed, i1 false
  br i1 %or.cond, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !136 ; 4 uses
  %i.ef = load ptr, ptr %i.ak, align 8, !tbaa !133
  %.not.i119 = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i119, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 %i.dy, ptr %i.ee, align 4, !tbaa !97
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store ptr %i.eg, ptr %i.a, align 8, !tbaa !136
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.aa:                                            ; preds = %bb.y
  %i.eh = load ptr, ptr %2, align 8, !tbaa !132   ; 4 uses
  %i.ei = ptrtoint ptr %i.ee to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej                    ; 6 uses
  %i.el = icmp eq i64 %i.ek, 9223372036854775804
  br i1 %i.el, label %bb.ab, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.269) #33
          to label %.noexc121 unwind label %.loopexit.split-lp

.noexc121:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aa
  %i.em = ashr exact i64 %i.ek, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.em, i64 1)
  %i.en = add nsw i64 %.sroa.speculated.i.i.i, %i.em ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.em
  %i.ep = call i64 @llvm.umin.i64(i64 %i.en, i64 2305843009213693951)
  %i.eq = select i1 %i.eo, i64 2305843009213693951, i64 %i.ep ; 3 uses
  %.not.i.i.i120 = icmp ne i64 %i.eq, 0
  call void @llvm.assume(i1 %.not.i.i.i120)
  %i.er = shl nuw nsw i64 %i.eq, 2
  %i.es = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #37
          to label %.noexc122 unwind label %.loopexit ; 4 uses

.noexc122:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 %i.ek ; 2 uses
  store i32 %i.dy, ptr %i.et, align 4, !tbaa !97
  %i.eu = icmp sgt i64 %i.ek, 0
  br i1 %i.eu, label %bb.ac, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ac:                                            ; preds = %.noexc122
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.es, ptr align 4 %i.eh, i64 %i.ek, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ac, %.noexc122
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %.not.i17.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.ek) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.es, ptr %2, align 8, !tbaa !132
  store ptr %i.ev, ptr %i.a, align 8, !tbaa !136
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.eq
  store ptr %i.ew, ptr %i.ak, align 8, !tbaa !133
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN25llm_tokenizer_ugm_session17best_tokenizationESaIS1_EED2Ev.exit125

.loopexit.split-lp:                               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN25llm_tokenizer_ugm_session17best_tokenizationESaIS1_EED2Ev.exit125

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.z, %bb.x
  %i.ex = load i64, ptr %i.al, align 8, !tbaa !537 ; 2 uses
  %.not = icmp eq i64 %i.ex, 0
  br i1 %.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.ex
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ey, i64 24, i1 false), !tbaa.struct !538
  br label %bb.x, !llvm.loop !526

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ez = load ptr, ptr %2, align 8, !tbaa !131   ; 3 uses
  %i.fa = ptrtoaddr ptr %i.ez to i64              ; 4 uses
  %i.fb = getelementptr inbounds i8, ptr %i.ez, i64 %i.f ; 7 uses
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !131 ; 5 uses
  %i.fd = ptrtoaddr ptr %i.fc to i64              ; 2 uses
  %i.fe = icmp ne ptr %i.fb, %i.fc
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.fc, i64 -4 ; 5 uses
  %i.ff = icmp ult ptr %i.fb, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.fe, i1 %i.ff, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %_ZNSt6vectorIN25llm_tokenizer_ugm_session17best_tokenizationESaIS1_EED2Ev.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.af
  %i.fg = add i64 %i.fa, %i.d
  %i.fh = add i64 %i.fg, 4
  %i.fi = sub i64 %i.fh, %i.e
  %i.fj = add i64 %i.fd, -8
  %i.fk = call i64 @llvm.umax.i64(i64 %i.fi, i64 %i.fj)
  %i.fl = add i64 %i.fk, %i.e
  %i.fm = add i64 %i.fl, -4                       ; 2 uses
  %i.fn = add i64 %i.fa, %i.d                     ; 2 uses
  %i.fo = icmp ne i64 %i.fm, %i.fn
  %i.fp = zext i1 %i.fo to i64                    ; 2 uses
  %i.fq = add i64 %i.fn, %i.fp
  %i.fr = sub i64 %i.fm, %i.fq
  %i.fs = lshr i64 %i.fr, 3
  %i.ft = add nuw nsw i64 %i.fs, %i.fp            ; 2 uses
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ft, 43
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader187, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.fv = add i64 %i.fa, %i.d
  %i.fw = add i64 %i.fv, 4
  %i.fx = sub i64 %i.fw, %i.e
  %i.fy = add i64 %i.fd, -8
  %umax = call i64 @llvm.umax.i64(i64 %i.fx, i64 %i.fy)
  %i.fz = add i64 %umax, %i.e
  %i.ga = add i64 %i.fz, -4                       ; 2 uses
  %i.gb = add i64 %i.fa, %i.d                     ; 2 uses
  %i.gc = icmp ne i64 %i.ga, %i.gb
  %umin = zext i1 %i.gc to i64                    ; 2 uses
  %i.gd = add i64 %i.gb, %umin
  %i.ge = sub i64 %i.ga, %i.gd
  %i.gf = lshr i64 %i.ge, 3
  %i.gg = add nuw nsw i64 %i.gf, %umin
  %i.gh = shl nuw i64 %i.gg, 2                    ; 2 uses
  %i.gi = add i64 %i.gh, %i.d
  %i.gj = add i64 %i.gi, 4
  %i.gk = sub i64 %i.gj, %i.e
  %scevgep = getelementptr i8, ptr %i.ez, i64 %i.gk
  %i.gl = sub nuw nsw i64 -4, %i.gh
  %scevgep178 = getelementptr i8, ptr %i.fc, i64 %i.gl
  %bound0 = icmp ult ptr %i.fb, %i.fc
  %bound1 = icmp ult ptr %scevgep178, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader187, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fu, 9223372036854775804     ; 4 uses
  %i.gm = mul i64 %n.vec, -4
  %i.gn = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.gm
  %i.go = shl i64 %n.vec, 2
  %i.gp = getelementptr i8, ptr %i.fb, i64 %i.go
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gq = mul i64 %index, -4
  %next.gep = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.gq
  %i.gr = shl i64 %index, 2
  %i.gs = getelementptr i8, ptr %i.fb, i64 %i.gr  ; 2 uses
  %wide.load180.a = load <4 x i32>, ptr %i.gs, align 4, !tbaa !97, !alias.scope !539, !noalias !540
  %i.gt = getelementptr i8, ptr %next.gep, i64 -12 ; 2 uses
  %wide.load182 = load <4 x i32>, ptr %i.gt, align 4, !tbaa !97, !alias.scope !540
  %reverse183 = shufflevector <4 x i32> %wide.load182, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse183, ptr %i.gs, align 4, !tbaa !97, !alias.scope !539, !noalias !540
  %reverse185 = shufflevector <4 x i32> %wide.load180.a, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse185, ptr %i.gt, align 4, !tbaa !97, !alias.scope !540
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gu = icmp eq i64 %index.next, %n.vec
  br i1 %i.gu, label %middle.block, label %vector.body, !llvm.loop !530

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN25llm_tokenizer_ugm_session17best_tokenizationESaIS1_EED2Ev.exit, label %.lr.ph.i.i.preheader187

.lr.ph.i.i.preheader187:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.010.i.i.ph = phi ptr [ %.sroa.0.08.i.i, %vector.memcheck ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ], [ %i.gn, %middle.block ]
  %.sroa.05.09.i.i.ph = phi ptr [ %i.fb, %vector.memcheck ], [ %i.fb, %.lr.ph.i.i.preheader ], [ %i.gp, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader187, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i.preheader187 ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.gx, %.lr.ph.i.i ], [ %.sroa.05.09.i.i.ph, %.lr.ph.i.i.preheader187 ] ; 3 uses
  %i.gv = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !97
  %i.gw = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !97
  store i32 %i.gw, ptr %.sroa.05.09.i.i, align 4, !tbaa !97
  store i32 %i.gv, ptr %.sroa.0.010.i.i, align 4, !tbaa !97
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.gy = icmp ult ptr %i.gx, %.sroa.0.0.i.i
  br i1 %i.gy, label %.lr.ph.i.i, label %_ZNSt6vectorIN25llm_tokenizer_ugm_session17best_tokenizationESaIS1_EED2Ev.exit, !llvm.loop !531

_ZNSt6vectorIN25llm_tokenizer_ugm_session17best_tokenizationESaIS1_EED2Ev.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.af
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.r) #35
  br label %bb.ag

bb.ag:                                            ; preds = %bb.b, %_ZNSt6vectorIN25llm_tokenizer_ugm_session17best_tokenizationESaIS1_EED2Ev.exit
  %i.gz = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.g
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.hb = load i64, ptr %i.g, align 8, !tbaa !39
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

_ZNSt6vectorIN25llm_tokenizer_ugm_session17best_tokenizationESaIS1_EED2Ev.exit125: ; preds = %.loopexit, %.loopexit.split-lp, %bb.o, %bb.t
  %.pn94.pn.pn = phi { ptr, i32 } [ %i.ct, %bb.t ], [ %i.ce, %bb.o ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.r) #35
  br label %bb.ah

bb.ah:                                            ; preds = %bb.g, %_ZNSt6vectorIN25llm_tokenizer_ugm_session17best_tokenizationESaIS1_EED2Ev.exit125, %bb.c
  %.pn94.pn.pn.pn.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %.pn94.pn.pn, %_ZNSt6vectorIN25llm_tokenizer_ugm_session17best_tokenizationESaIS1_EED2Ev.exit125 ], [ %i.am, %bb.g ]
  %i.hd = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.g
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.ah
  %i.hf = load i64, ptr %i.g, align 8, !tbaa !39
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn94.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN26llm_tokenizer_rwkv_session8tokenizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %.not62 = icmp eq i64 %i.b, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit52
  %i.f = phi i64 [ %i.b, %.lr.ph ], [ %i.cg, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit52 ]
  %i.g = phi i64 [ 0, %.lr.ph ], [ %i.cf, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit52 ]
  %.02361 = phi i32 [ 0, %.lr.ph ], [ %.225, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit52 ] ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !544, !nonnull !126, !align !127 ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  %i.k = load i8, ptr %i.j, align 1, !tbaa !39    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !146  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not10.i.i.i.i, label %select.unfold, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.m, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.n, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.p = load i8, ptr %i.o, align 1, !tbaa !39
  %i.q = icmp slt i8 %i.p, %i.k                   ; 2 uses
  %.19.i.i.i.i = select i1 %i.q, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.q, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !150 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIcSt4pairIKc10naive_trieESt10_Select1stIS3_ESt4lessIcESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNKSt8_Rb_treeIcSt4pairIKc10naive_trieESt10_Select1stIS3_ESt4lessIcESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.r = icmp eq ptr %.19.i.i.i.i, %i.n
  br i1 %i.r, label %select.unfold, label %_ZNKSt3mapIc10naive_trieSt4lessIcESaISt4pairIKcS0_EEE4findERS4_.exit.i

_ZNKSt3mapIc10naive_trieSt4lessIcESaISt4pairIKcS0_EEE4findERS4_.exit.i: ; preds = %_ZNKSt8_Rb_treeIcSt4pairIKc10naive_trieESt10_Select1stIS3_ESt4lessIcESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.t = load i8, ptr %i.s, align 1, !tbaa !39
  %i.u = icmp slt i8 %i.k, %i.t
  br i1 %i.u, label %select.unfold, label %_ZNK10naive_trie8traverseEc.exit.preheader

select.unfold:                                    ; preds = %_ZNKSt3mapIc10naive_trieSt4lessIcESaISt4pairIKcS0_EEE4findERS4_.exit.i, %_ZNKSt8_Rb_treeIcSt4pairIKc10naive_trieESt10_Select1stIS3_ESt4lessIcESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %bb.b
  %i.v = load ptr, ptr %0, align 8, !tbaa !545, !nonnull !126, !align !127
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !166
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 100
  %i.y = load i32, ptr %i.x, align 4, !tbaa !104  ; 2 uses
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !136  ; 4 uses
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !133
  %.not.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %select.unfold
  store i32 %i.y, ptr %i.z, align 4, !tbaa !97
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.ab, ptr %i.d, align 8, !tbaa !136
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.d:                                             ; preds = %select.unfold
  %i.ac = load ptr, ptr %2, align 8, !tbaa !132   ; 4 uses
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 6 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775804
  br i1 %i.ag, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.269) #33
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.ah = ashr exact i64 %i.af, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 2305843009213693951)
  %i.al = select i1 %i.aj, i64 2305843009213693951, i64 %i.ak ; 3 uses
  %.not.i.i.i.i30 = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i30)
  %i.am = shl nuw nsw i64 %i.al, 2
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #37 ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.af ; 2 uses
  store i32 %i.y, ptr %i.ao, align 4, !tbaa !97
  %i.ap = icmp sgt i64 %i.af, 0
  br i1 %i.ap, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.an, ptr align 4 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.an, ptr %2, align 8, !tbaa !132
  store ptr %i.aq, ptr %i.d, align 8, !tbaa !136
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.al
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !133
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.c, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.as = add i32 %.02361, 1
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit52, !llvm.loop !541

_ZNK10naive_trie8traverseEc.exit.preheader:       ; preds = %_ZNKSt3mapIc10naive_trieSt4lessIcESaISt4pairIKcS0_EEE4findERS4_.exit.i, %_ZNKSt3mapIc10naive_trieSt4lessIcESaISt4pairIKcS0_EEE4findERS4_.exit.i41
  %.060 = phi i32 [ %.1, %_ZNKSt3mapIc10naive_trieSt4lessIcESaISt4pairIKcS0_EEE4findERS4_.exit.i41 ], [ 0, %_ZNKSt3mapIc10naive_trieSt4lessIcESaISt4pairIKcS0_EEE4findERS4_.exit.i ]
  %.01959 = phi i32 [ %.120, %_ZNKSt3mapIc10naive_trieSt4lessIcESaISt4pairIKcS0_EEE4findERS4_.exit.i41 ], [ 0, %_ZNKSt3mapIc10naive_trieSt4lessIcESaISt4pairIKcS0_EEE4findERS4_.exit.i ]
  %.19.i.i.i.i.pn = phi ptr [ %.19.i.i.i.i35, %_ZNKSt3mapIc10naive_trieSt4lessIcESaISt4pairIKcS0_EEE4findERS4_.exit.i41 ], [ %.19.i.i.i.i, %_ZNKSt3mapIc10naive_trieSt4lessIcESaISt4pairIKcS0_EEE4findERS4_.exit.i ] ; 4 uses
  %.12457 = phi i32 [ %.pre-phi, %_ZNKSt3mapIc10naive_trieSt4lessIcESaISt4pairIKcS0_EEE4findERS4_.exit.i41 ], [ %.02361, %_ZNKSt3mapIc10naive_trieSt4lessIcESaISt4pairIKcS0_EEE4findERS4_.exit.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.pn, i64 88
  %i.au = load i8, ptr %i.at, align 8, !tbaa !223, !range !135, !noundef !126
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.h, label %_ZNK10naive_trie8traverseEc.exit.preheader._crit_edge

_ZNK10naive_trie8traverseEc.exit.preheader._crit_edge: ; preds = %_ZNK10naive_trie8traverseEc.exit.preheader
  %.pre = add i32 %.12457, 1
  br label %bb.i

bb.h:                                             ; preds = %_ZNK10naive_trie8traverseEc.exit.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.pn, i64 92
end_hunk_0
begin_hunk_1_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.ac = phi i64 [ %i.y, %bb.c ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !40, !alias.scope !594, !noalias !595
  store ptr %i.v, ptr %.0911.i.i.i, align 8, !tbaa !38, !alias.scope !595, !noalias !594
  store i64 0, ptr %i.ad, align 8, !tbaa !40, !alias.scope !595, !noalias !594
  store i8 0, ptr %i.v, align 8, !tbaa !39, !alias.scope !595, !noalias !594
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !13

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.ag, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit25, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i17 = phi ptr [ %i.av, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.ah, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i18 = phi ptr [ %i.au, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16 ; 3 uses
  store ptr %i.ai, ptr %.012.i.i.i17, align 8, !tbaa !34, !alias.scope !597, !noalias !598
  %i.aj = load ptr, ptr %.0911.i.i.i18, align 8, !tbaa !38, !alias.scope !598, !noalias !597 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16 ; 5 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i19

bb.d:                                             ; preds = %.lr.ph.i.i.i16
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !40, !alias.scope !598, !noalias !597 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.ap, i1 false), !alias.scope !599
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i19: ; preds = %.lr.ph.i.i.i16
  store ptr %i.aj, ptr %.012.i.i.i17, align 8, !tbaa !38, !alias.scope !597, !noalias !598
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !39, !alias.scope !598, !noalias !597
  store i64 %i.aq, ptr %i.ai, align 8, !tbaa !39, !alias.scope !597, !noalias !598
  %.phi.trans.insert.i.i.i.i20 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %.pre.i.i.i.i21 = load i64, ptr %.phi.trans.insert.i.i.i.i20, align 8, !tbaa !40, !alias.scope !598, !noalias !597
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i19, %bb.d
  %i.ar = phi i64 [ %i.an, %bb.d ], [ %.pre.i.i.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i19 ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 8
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !40, !alias.scope !597, !noalias !598
  store ptr %i.ak, ptr %.0911.i.i.i18, align 8, !tbaa !38, !alias.scope !598, !noalias !597
  store i64 0, ptr %i.as, align 8, !tbaa !40, !alias.scope !598, !noalias !597
  store i8 0, ptr %i.ak, align 8, !tbaa !39, !alias.scope !598, !noalias !597
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 32 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.au, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit25, label %.lr.ph.i.i.i16, !llvm.loop !13

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit25: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.ah, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.av, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit25
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !153
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.az) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit25, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !152
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !155
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !153
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN25llm_tokenizer_ugm_session9normalizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %4 = alloca %"struct.llm_tokenizer_ugm_session::normalization_result", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  store i64 0, ptr %i.b, align 8, !tbaa !40
  %i.c = load ptr, ptr %2, align 8, !tbaa !38
  store i8 0, ptr %i.c, align 1, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !40
  %i.f = mul i64 %i.e, 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.g = load ptr, ptr %0, align 8, !tbaa !215, !nonnull !126, !align !127
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !166  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 151
  %i.j = load i8, ptr %i.i, align 1, !tbaa !108, !range !135, !noundef !126
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %._crit_edge.i.i52

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !216, !nonnull !126, !align !127 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !34
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !38   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !40   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.r, ptr %i.a, align 8, !tbaa !36
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !38
  %i.u = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.u, ptr %i.o, align 8, !tbaa !39
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.v = phi ptr [ %i.t, %.noexc.i ], [ %i.o, %bb.b ] ; 2 uses
  switch i64 %i.r, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %.thread
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.w = load i8, ptr %i.p, align 1, !tbaa !39
  store i8 %i.w, ptr %i.v, align 1, !tbaa !39
  br label %.thread

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !40
  %i.z = load ptr, ptr %3, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.pre = load ptr, ptr %0, align 8, !tbaa !215
  %.pre106 = load ptr, ptr %.pre, align 8, !tbaa !166
  br label %.critedge

._crit_edge.i.i52:                                ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !34
  store i8 32, ptr %i.ab, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.ac, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.ad, align 1, !tbaa !39
  br label %.critedge

.critedge:                                        ; preds = %.thread, %._crit_edge.i.i52
  %i.ae = phi ptr [ %.pre106, %.thread ], [ %i.h, %._crit_edge.i.i52 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !248, !range !135, !noundef !126 ; 2 uses
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !107, !range !135, !noundef !126 ; 2 uses
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = xor i1 %i.ak, true
  %i.am = and i8 %i.ag, %i.aj
  %.not134 = icmp eq i8 %i.am, 0
  %i.an = load i64, ptr %i.d, align 8, !tbaa !40  ; 3 uses
  %.not = icmp eq i64 %i.an, 0
  br i1 %.not, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %.critedge
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 150
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !247, !range !135, !noundef !126
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %i.aq, label %.lr.ph90.split.us, label %.lr.ph90.split

.lr.ph90.split.us:                                ; preds = %.lr.ph90, %._crit_edge.split.us.us
  %.03488.us = phi i64 [ %6, %._crit_edge.split.us.us ], [ 0, %.lr.ph90 ] ; 2 uses
  %.03587.us = phi i1 [ %.1.lcssa.us, %._crit_edge.split.us.us ], [ false, %.lr.ph90 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  invoke void @_ZN25llm_tokenizer_ugm_session16normalize_prefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"struct.llm_tokenizer_ugm_session::normalization_result") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %.03488.us)
          to label %.preheader.us unwind label %.split93.us

.preheader.us:                                    ; preds = %.lr.ph90.split.us
  %i.av = load i64, ptr %i.ar, align 8, !tbaa !281 ; 2 uses
  %.not98 = icmp eq i64 %i.av, 0
  br i1 %.not98, label %._crit_edge.split.us.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.preheader.us
  %.pre108 = load ptr, ptr %4, align 8, !tbaa !282
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit60.us.us
  %i.aw = phi i64 [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit60.us.us ], [ %i.av, %.lr.ph.us.preheader ]
  %i.ax = phi ptr [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit60.us.us ], [ %.pre108, %.lr.ph.us.preheader ] ; 2 uses
  %.082.us.us = phi i64 [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit60.us.us ], [ 0, %.lr.ph.us.preheader ] ; 2 uses
  %.181.us.us = phi i1 [ %.not48.us.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit60.us.us ], [ %.03587.us, %.lr.ph.us.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.082.us.us
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !39  ; 2 uses
  %.not48.us.us = icmp ne i8 %i.az, 32            ; 3 uses
  br i1 %.not48.us.us, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit60.us.us

bb.e:                                             ; preds = %.lr.ph.us
  br i1 %.181.us.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.us.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = load i64, ptr %i.as, align 8, !tbaa !40 ; 2 uses
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !40
  %i.bc = sub i64 4611686018427387903, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.ba
  br i1 %i.bd, label %.split.us.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.us.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.us.us: ; preds = %bb.f
  %i.be = load ptr, ptr %3, align 8, !tbaa !38
  %i.bf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.be, i64 noundef %i.ba)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.us.us unwind label %.loopexit.split.us.split.us ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.us.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.us.us, %bb.e
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.bh = add i64 %i.bg, 1                        ; 3 uses
  %i.bi = load ptr, ptr %2, align 8, !tbaa !38    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.at
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.us.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.us.us
  %i.bk = load i64, ptr %i.at, align 8, !tbaa !39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.us.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.us.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.us.us
  %i.bl = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.us.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.us.us: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.us.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.us
  %i.bm = phi i64 [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.us ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.us.us ]
  %i.bn = icmp ugt i64 %i.bh, %i.bm
  br i1 %i.bn, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.us.us

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.us.us
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.bg, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc56.us.us unwind label %.loopexit.split.us.split.us

.noexc56.us.us:                                   ; preds = %bb.g
  %.pre.i.us.us = load ptr, ptr %2, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.us.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.us.us: ; preds = %.noexc56.us.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.us.us
  %i.bo = phi ptr [ %.pre.i.us.us, %.noexc56.us.us ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.us.us ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg
  store i8 %i.az, ptr %i.bp, align 1, !tbaa !39
  store i64 %i.bh, ptr %i.b, align 8, !tbaa !40
  %i.bq = load ptr, ptr %2, align 8, !tbaa !38
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bh
  store i8 0, ptr %i.br, align 1, !tbaa !39
  %.pre107 = load ptr, ptr %4, align 8, !tbaa !282
  %.pre109 = load i64, ptr %i.ar, align 8, !tbaa !281
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit60.us.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit60.us.us: ; preds = %.lr.ph.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.us.us
  %i.bs = phi i64 [ %i.aw, %.lr.ph.us ], [ %.pre109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.us.us ] ; 2 uses
  %i.bt = phi ptr [ %i.ax, %.lr.ph.us ], [ %.pre107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.us.us ]
  %i.bu = add nuw i64 %.082.us.us, 1              ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bs
  br i1 %i.bv, label %.lr.ph.us, label %._crit_edge.split.us.us, !llvm.loop !600

._crit_edge.split.us.us:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit60.us.us, %.preheader.us
  %.1.lcssa.us = phi i1 [ %.03587.us, %.preheader.us ], [ %.not48.us.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit60.us.us ]
  %5 = load i64, ptr %i.au, align 8, !tbaa !283
  %6 = add i64 %5, %.03488.us                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %7 = icmp ult i64 %6, %i.an
  br i1 %7, label %.lr.ph90.split.us, label %._crit_edge91, !llvm.loop !601

.split93.us:                                      ; preds = %.lr.ph90.split.us
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split.us.split.us:                      ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.us.us
  %lpad.loopexit.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

._crit_edge91:                                    ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.critedge
  br i1 %.not134, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit64, label %bb.l

.lr.ph90.split:                                   ; preds = %.lr.ph90, %._crit_edge.split
  %.03488 = phi i64 [ %i.bz, %._crit_edge.split ], [ 0, %.lr.ph90 ] ; 2 uses
  %.03587 = phi i1 [ %.1.lcssa, %._crit_edge.split ], [ false, %.lr.ph90 ] ; 2 uses
  %.03686 = phi i1 [ %.137.lcssa, %._crit_edge.split ], [ false, %.lr.ph90 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  invoke void @_ZN25llm_tokenizer_ugm_session16normalize_prefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"struct.llm_tokenizer_ugm_session::normalization_result") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %.03488)
          to label %.preheader unwind label %.split93

.preheader:                                       ; preds = %.lr.ph90.split
  %i.bx = load i64, ptr %i.ar, align 8, !tbaa !281
  %.not97 = icmp eq i64 %i.bx, 0
  br i1 %.not97, label %._crit_edge.split, label %.lr.ph

._crit_edge.split:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit60, %.preheader
  %.137.lcssa = phi i1 [ %.03686, %.preheader ], [ %.339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit60 ]
  %.1.lcssa = phi i1 [ %.03587, %.preheader ], [ %.not48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit60 ]
  %i.by = load i64, ptr %i.au, align 8, !tbaa !283
  %i.bz = add i64 %i.by, %.03488                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ca = icmp ult i64 %i.bz, %i.an
  br i1 %i.ca, label %.lr.ph90.split, label %._crit_edge91, !llvm.loop !601

.split93:                                         ; preds = %.lr.ph90.split
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit60
  %.082 = phi i64 [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit60 ], [ 0, %.preheader ] ; 2 uses
  %.181 = phi i1 [ %.not48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit60 ], [ %.03587, %.preheader ]
  %.13780 = phi i1 [ %.339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit60 ], [ %.03686, %.preheader ] ; 3 uses
  %i.cc = load ptr, ptr %4, align 8, !tbaa !282
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.082
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !39  ; 2 uses
  %.not48 = icmp ne i8 %i.ce, 32                  ; 3 uses
  br i1 %.not48, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.lr.ph
  %i.cf = or i1 %.181, %i.ah
  %i.cg = select i1 %i.cf, i1 true, i1 %i.al
  %i.ch = select i1 %i.cg, i1 true, i1 %.13780
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = load i64, ptr %i.as, align 8, !tbaa !40 ; 2 uses
  %i.cj = load i64, ptr %i.b, align 8, !tbaa !40
  %i.ck = sub i64 4611686018427387903, %i.cj
  %i.cl = icmp ult i64 %i.ck, %i.ci
  br i1 %i.cl, label %.split.us.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

.split.us.invoke:                                 ; preds = %bb.i, %bb.k, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.275) #33
          to label %.split.us.cont unwind label %.loopexit.split-lp

.split.us.cont:                                   ; preds = %.split.us.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.i
  %i.cm = load ptr, ptr %3, align 8, !tbaa !38
  %i.cn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.cm, i64 noundef %i.ci)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %.loopexit.split ; 0 uses

.loopexit.split:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i57
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.split.us.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.h
  %.238 = phi i1 [ %.13780, %bb.h ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i ]
  %i.co = load i64, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.cp = add i64 %i.co, 1                        ; 3 uses
  %i.cq = load ptr, ptr %2, align 8, !tbaa !38    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.at
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.cs = icmp ult i64 %i.co, 16
  call void @llvm.assume(i1 %i.cs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.ct = load i64, ptr %i.at, align 8, !tbaa !39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.cu = phi i64 [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.cv = icmp ugt i64 %i.cp, %i.cu
  br i1 %i.cv, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.co, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc56 unwind label %.loopexit.split

.noexc56:                                         ; preds = %bb.j
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %.noexc56
  %i.cw = phi ptr [ %.pre.i, %.noexc56 ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.co
  store i8 %i.ce, ptr %i.cx, align 1, !tbaa !39
  store i64 %i.cp, ptr %i.b, align 8, !tbaa !40
  %i.cy = load ptr, ptr %2, align 8, !tbaa !38
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cp
  store i8 0, ptr %i.cz, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit60

bb.k:                                             ; preds = %.lr.ph
  %i.da = load i64, ptr %i.as, align 8, !tbaa !40 ; 2 uses
  %i.db = load i64, ptr %i.b, align 8, !tbaa !40
  %i.dc = sub i64 4611686018427387903, %i.db
  %i.dd = icmp ult i64 %i.dc, %i.da
  br i1 %i.dd, label %.split.us.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i57: ; preds = %bb.k
  %i.de = load ptr, ptr %3, align 8, !tbaa !38
  %i.df = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.de, i64 noundef %i.da)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit60 unwind label %.loopexit.split ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %.339 = phi i1 [ %.238, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %.13780, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i57 ] ; 2 uses
  %i.dg = add nuw i64 %.082, 1                    ; 2 uses
  %i.dh = load i64, ptr %i.ar, align 8, !tbaa !281
  %i.di = icmp ult i64 %i.dg, %i.dh
  br i1 %i.di, label %.lr.ph, label %._crit_edge.split, !llvm.loop !600

.loopexit:                                        ; preds = %.loopexit.split-lp, %.loopexit.split.us.split.us, %.loopexit.split, %.split93, %.split93.us
  %.pn = phi { ptr, i32 } [ %i.bw, %.split93.us ], [ %i.cb, %.split93 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us.us, %.loopexit.split.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.o

bb.l:                                             ; preds = %._crit_edge91
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !40 ; 2 uses
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !40
  %i.dm = sub i64 4611686018427387903, %i.dl
  %i.dn = icmp ult i64 %i.dm, %i.dk
  br i1 %i.dn, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i61

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.275) #33
          to label %.noexc62 unwind label %bb.n

.noexc62:                                         ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i61: ; preds = %bb.l
  %i.do = load ptr, ptr %3, align 8, !tbaa !38
  %i.dp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.do, i64 noundef %i.dk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit64 unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i61, %bb.m
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i61, %._crit_edge91
  %i.dr = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit64
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !39
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.o:                                             ; preds = %bb.n, %.loopexit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit ], [ %i.dq, %bb.n ]
  %i.dw = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.o
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !39
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN25llm_tokenizer_ugm_session16normalize_prefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind noalias writable sret(%"struct.llm_tokenizer_ugm_session::normalization_result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !40   ; 4 uses
  %i.d = icmp eq i64 %3, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %3
  store ptr %i.f, ptr %0, align 8, !tbaa !282
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !216, !nonnull !126, !align !127 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %3 ; 2 uses
  %i.m = sub i64 %i.c, %3                         ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.c, %tailrecurse.i
  %.tr2024.i = phi i64 [ %i.aa, %tailrecurse.i ], [ 0, %bb.c ] ; 4 uses
  %.tr23.i = phi ptr [ %i.z, %tailrecurse.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.tr2024.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !39    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.tr23.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !146  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.tr23.i, i64 8 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not10.i.i.i.i, label %_ZNK10naive_trie18get_longest_prefixEPKcmm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.q, %.lr.ph.split.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.r, %.lr.ph.split.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.t = load i8, ptr %i.s, align 1, !tbaa !39
  %i.u = icmp slt i8 %i.t, %i.o                   ; 2 uses
  %.19.i.i.i.i = select i1 %i.u, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.u, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !150 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIcSt4pairIKc10naive_trieESt10_Select1stIS3_ESt4lessIcESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNKSt8_Rb_treeIcSt4pairIKc10naive_trieESt10_Select1stIS3_ESt4lessIcESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.v = icmp eq ptr %.19.i.i.i.i, %i.r
  br i1 %i.v, label %_ZNK10naive_trie18get_longest_prefixEPKcmm.exit, label %_ZNKSt3mapIc10naive_trieSt4lessIcESaISt4pairIKcS0_EEE4findERS4_.exit.i

_ZNKSt3mapIc10naive_trieSt4lessIcESaISt4pairIKcS0_EEE4findERS4_.exit.i: ; preds = %_ZNKSt8_Rb_treeIcSt4pairIKc10naive_trieESt10_Select1stIS3_ESt4lessIcESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.x = load i8, ptr %i.w, align 1, !tbaa !39
  %i.y = icmp slt i8 %i.o, %i.x
  br i1 %i.y, label %_ZNK10naive_trie18get_longest_prefixEPKcmm.exit, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %_ZNKSt3mapIc10naive_trieSt4lessIcESaISt4pairIKcS0_EEE4findERS4_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aa = add nuw i64 %.tr2024.i, 1               ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.m
  br i1 %i.ab, label %_ZNK10naive_trie18get_longest_prefixEPKcmm.exit.thread142, label %.lr.ph.split.i

_ZNK10naive_trie18get_longest_prefixEPKcmm.exit:  ; preds = %.lr.ph.split.i, %_ZNKSt8_Rb_treeIcSt4pairIKc10naive_trieESt10_Select1stIS3_ESt4lessIcESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNKSt3mapIc10naive_trieSt4lessIcESaISt4pairIKcS0_EEE4findERS4_.exit.i
  %.not = icmp eq i64 %.tr2024.i, 0
  br i1 %.not, label %_ZNK10naive_trie18get_longest_prefixEPKcmm.exit.thread, label %_ZNK10naive_trie18get_longest_prefixEPKcmm.exit.thread142

_ZNK10naive_trie18get_longest_prefixEPKcmm.exit.thread142: ; preds = %tailrecurse.i, %_ZNK10naive_trie18get_longest_prefixEPKcmm.exit
  %.tr20.lcssa.pn.i145 = phi i64 [ %.tr2024.i, %_ZNK10naive_trie18get_longest_prefixEPKcmm.exit ], [ %i.m, %tailrecurse.i ] ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !282
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.tr20.lcssa.pn.i145, ptr %i.ac, align 8, !tbaa !281
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.tr20.lcssa.pn.i145, ptr %i.ad, align 8, !tbaa !283
  br label %bb.y

_ZNK10naive_trie18get_longest_prefixEPKcmm.exit.thread: ; preds = %_ZNK10naive_trie18get_longest_prefixEPKcmm.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !284 ; 3 uses
  %.not74 = icmp eq i64 %i.af, 0
  br i1 %.not74, label %.thread103, label %_ZN25llm_tokenizer_ugm_session15xcda_array_view8get_baseEm.exit

_ZN25llm_tokenizer_ugm_session15xcda_array_view8get_baseEm.exit: ; preds = %_ZNK10naive_trie18get_longest_prefixEPKcmm.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !285 ; 3 uses
  %i.ai = icmp ult i64 %3, %i.c
  br i1 %i.ai, label %.lr.ph, label %.thread103

.lr.ph:                                           ; preds = %_ZN25llm_tokenizer_ugm_session15xcda_array_view8get_baseEm.exit
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !97 ; 2 uses
  %i.ak = lshr i32 %i.aj, 10
  %i.al = lshr i32 %i.aj, 6
  %i.am = and i32 %i.al, 8
  %i.an = shl nuw nsw i32 %i.ak, %i.am
  %invariant.op = sub i64 1, %3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.m
  %.058115 = phi i64 [ %3, %.lr.ph ], [ %i.bm, %bb.m ] ; 3 uses
  %.059114 = phi i32 [ %i.an, %.lr.ph ], [ %i.be, %bb.m ]
  %.060113 = phi i64 [ 0, %.lr.ph ], [ %.2.ph, %bb.m ] ; 3 uses
  %.062112 = phi i64 [ 0, %.lr.ph ], [ %.264.ph, %bb.m ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %.058115
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !39  ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = zext i8 %i.ap to i32                    ; 2 uses
  %i.as = xor i32 %.059114, %i.ar                 ; 2 uses
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %.not.i.i79 = icmp ugt i64 %i.af, %i.at
  br i1 %.not.i.i79, label %_ZN25llm_tokenizer_ugm_session15xcda_array_view10get_lcheckEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull @.str.279)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #33
  unreachable

common.resume.sink.split:                         ; preds = %bb.h, %bb.l, %bb.t, %bb.q
  %.sink = phi ptr [ %i.bp, %bb.q ], [ %i.bz, %bb.t ], [ %i.bg, %bb.l ], [ %i.au, %bb.h ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.bq, %bb.q ], [ %i.ca, %bb.t ], [ %i.bh, %bb.l ], [ %i.av, %bb.h ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #34
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %bb.w ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_ZN25llm_tokenizer_ugm_session15xcda_array_view10get_lcheckEm.exit: ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.at
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !97 ; 4 uses
  %i.ay = and i32 %i.ax, -2147483393
  %.not75 = icmp eq i32 %i.ay, %i.ar
  br i1 %.not75, label %_ZN25llm_tokenizer_ugm_session15xcda_array_view8get_baseEm.exit82, label %._crit_edge

_ZN25llm_tokenizer_ugm_session15xcda_array_view8get_baseEm.exit82: ; preds = %_ZN25llm_tokenizer_ugm_session15xcda_array_view10get_lcheckEm.exit
  %i.az = and i32 %i.ax, 256
  %.not107 = icmp eq i32 %i.az, 0
  %i.ba = lshr i32 %i.ax, 10
  %i.bb = lshr i32 %i.ax, 6
  %i.bc = and i32 %i.bb, 8
  %i.bd = shl nuw nsw i32 %i.ba, %i.bc
  %i.be = xor i32 %i.bd, %i.as                    ; 2 uses
  br i1 %.not107, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZN25llm_tokenizer_ugm_session15xcda_array_view8get_baseEm.exit82
  %i.bf = zext nneg i32 %i.be to i64              ; 2 uses
  %.not.i.i83 = icmp ugt i64 %i.af, %i.bf
  br i1 %.not.i.i83, label %_ZN25llm_tokenizer_ugm_session15xcda_array_view9get_valueEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull @.str.279)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #33
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_ZN25llm_tokenizer_ugm_session15xcda_array_view9get_valueEm.exit: ; preds = %bb.i
  %.reass.reass = add i64 %.058115, %invariant.op
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bf
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !97
  %i.bk = and i32 %i.bj, 2147483647
  %i.bl = zext nneg i32 %i.bk to i64
  br label %bb.m

bb.m:                                             ; preds = %_ZN25llm_tokenizer_ugm_session15xcda_array_view9get_valueEm.exit, %_ZN25llm_tokenizer_ugm_session15xcda_array_view8get_baseEm.exit82
  %.264.ph = phi i64 [ %.062112, %_ZN25llm_tokenizer_ugm_session15xcda_array_view8get_baseEm.exit82 ], [ %.reass.reass, %_ZN25llm_tokenizer_ugm_session15xcda_array_view9get_valueEm.exit ] ; 2 uses
  %.2.ph = phi i64 [ %.060113, %_ZN25llm_tokenizer_ugm_session15xcda_array_view8get_baseEm.exit82 ], [ %i.bl, %_ZN25llm_tokenizer_ugm_session15xcda_array_view9get_valueEm.exit ] ; 2 uses
  %i.bm = add i64 %.058115, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.bm, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !602

._crit_edge:                                      ; preds = %bb.d, %_ZN25llm_tokenizer_ugm_session15xcda_array_view10get_lcheckEm.exit, %bb.m
  %.062.lcssa = phi i64 [ %.264.ph, %bb.m ], [ %.062112, %bb.d ], [ %.062112, %_ZN25llm_tokenizer_ugm_session15xcda_array_view10get_lcheckEm.exit ] ; 2 uses
  %.060.lcssa = phi i64 [ %.2.ph, %bb.m ], [ %.060113, %bb.d ], [ %.060113, %_ZN25llm_tokenizer_ugm_session15xcda_array_view10get_lcheckEm.exit ] ; 3 uses
  %.not76 = icmp eq i64 %.062.lcssa, 0
  br i1 %.not76, label %.thread103, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !286 ; 2 uses
  %.not77 = icmp ult i64 %.060.lcssa, %i.bo
  br i1 %.not77, label %.lr.ph124.preheader, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull @.str.15)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @__cxa_throw(ptr nonnull %i.bp, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #33
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

.lr.ph124.preheader:                              ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !287
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.060.lcssa ; 2 uses
  %i.bu = sub nuw i64 %i.bo, %.060.lcssa          ; 2 uses
  br label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %bb.r
  %.0122 = phi i64 [ %i.bx, %bb.r ], [ 0, %.lr.ph124.preheader ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.0122
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !39
  %.not78 = icmp eq i8 %i.bw, 0
  br i1 %.not78, label %.critedge, label %bb.r

bb.r:                                             ; preds = %.lr.ph124
  %i.bx = add nuw i64 %.0122, 1                   ; 2 uses
  %exitcond129.not = icmp eq i64 %i.bx, %i.bu
  br i1 %exitcond129.not, label %.critedge.thread, label %.lr.ph124, !llvm.loop !603

.critedge:                                        ; preds = %.lr.ph124
  %i.by = icmp eq i64 %.0122, %i.bu
  br i1 %i.by, label %.critedge.thread, label %bb.u

.critedge.thread:                                 ; preds = %bb.r, %.critedge
  %i.bz = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull @.str.277)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.critedge.thread
  tail call void @__cxa_throw(ptr nonnull %i.bz, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #33
  unreachable

bb.t:                                             ; preds = %.critedge.thread
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.u:                                             ; preds = %.critedge
  store ptr %i.bt, ptr %0, align 8, !tbaa !282
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.0122, ptr %i.cb, align 8, !tbaa !281
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.062.lcssa, ptr %i.cc, align 8, !tbaa !283
  br label %bb.y

.thread103:                                       ; preds = %_ZN25llm_tokenizer_ugm_session15xcda_array_view8get_baseEm.exit, %_ZNK10naive_trie18get_longest_prefixEPKcmm.exit.thread, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %3, ptr %i.a, align 8, !tbaa !36
  %i.cd = invoke noundef i32 @_Z21unicode_cpt_from_utf8RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.v unwind label %bb.w       ; 0 uses

bb.v:                                             ; preds = %.thread103
  %i.ce = load ptr, ptr %2, align 8, !tbaa !38
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %3
  store ptr %i.cf, ptr %0, align 8, !tbaa !282
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = load i64, ptr %i.a, align 8, !tbaa !36
  %i.ci = sub i64 %i.ch, %3                       ; 2 uses
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !281
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.y

bb.w:                                             ; preds = %.thread103
  %i.ck = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt16invalid_argument     ; 3 uses
  %i.cl = extractvalue { ptr, i32 } %i.ck, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.cm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt16invalid_argument) #34
  %i.cn = icmp eq i32 %i.cl, %i.cm
  br i1 %i.cn, label %bb.x, label %common.resume

bb.x:                                             ; preds = %bb.w
  %i.co = extractvalue { ptr, i32 } %i.ck, 0
  %i.cp = call ptr @__cxa_begin_catch(ptr %i.co) #34 ; 0 uses
  store ptr @.str.278, ptr %0, align 8, !tbaa !282
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.cq, align 8, !tbaa !281
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.cr, align 8, !tbaa !283
  call void @__cxa_end_catch()
  br label %bb.y

bb.y:                                             ; preds = %_ZNK10naive_trie18get_longest_prefixEPKcmm.exit.thread142, %bb.x, %bb.v, %bb.u, %bb.b
  ret void
}

declare noundef i32 @_Z21unicode_cpt_from_utf8RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK20llm_tokenizer_plamo26encodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.64") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.304", align 8   ; 13 uses
  %4 = alloca %"class.std::vector.273", align 8   ; 8 uses
  %5 = alloca %"class.std::vector.64", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @_Z22unicode_cpts_from_utf8RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.304") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !131    ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !131  ; 7 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %.thread362, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !97
  %i.f = icmp eq i32 %i.e, 65279
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp sgt i64 %i.j, 4
  br i1 %i.k, label %bb.e, label %bb.f, !prof !151

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.a, ptr nonnull align 4 %i.g, i64 %i.j, i1 false)
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !288
  %.pre.pre = load ptr, ptr %3, align 8, !tbaa !131
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.l = icmp eq i64 %i.j, 4
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %i.g, align 4, !tbaa !97
  store i32 %i.m, ptr %i.a, align 4, !tbaa !97
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.pre = phi ptr [ %i.a, %bb.g ], [ %i.a, %bb.f ], [ %.pre.pre, %bb.e ], [ %i.a, %bb.c ]
  %i.n = phi ptr [ %i.c, %bb.g ], [ %i.c, %bb.f ], [ %.pre.i.i, %bb.e ], [ %i.c, %bb.c ]
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -4 ; 2 uses
  store ptr %i.o, ptr %i.b, align 8, !tbaa !288
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %i.p = phi ptr [ %i.o, %bb.h ], [ %i.c, %bb.b ] ; 2 uses
  %i.q = phi ptr [ %.pre, %bb.h ], [ %i.a, %bb.b ] ; 3 uses
  %i.r = icmp eq ptr %i.q, %i.p
  br i1 %i.r, label %.thread362, label %bb.j

.thread362:                                       ; preds = %bb.a, %bb.i
  %i.s = phi ptr [ %i.q, %bb.i ], [ %i.a, %bb.a ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 5 uses
  %i.x = add nsw i64 %i.w, 1                      ; 7 uses
  %i.y = icmp ugt i64 %i.x, 1152921504606846975
  br i1 %i.y, label %bb.k, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.274) #33
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.j
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.x, 3                  ; 4 uses
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #37
          to label %.noexc98 unwind label %bb.r   ; 8 uses

.noexc98:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  %i.ac = lshr i64 %i.v, 2
  %i.ad = add nuw nsw i64 %i.ac, 1
  %xtraiter = and i64 %i.ad, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.noexc98, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.aa, %.noexc98 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.noexc98 ]
  store i64 1152921504606846976, ptr %.06.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !604

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.noexc98
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.aa, %.noexc98 ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.af = and i64 %i.v, 9223372036854775804
  %i.ag = icmp samesign ult i64 %i.af, 28
  br i1 %i.ag, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 1152921504606846976, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8
  store i64 1152921504606846976, ptr %i.ah, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  store i64 1152921504606846976, ptr %i.ai, align 8, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24
  store i64 1152921504606846976, ptr %i.aj, align 8, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  store i64 1152921504606846976, ptr %i.ak, align 8, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 40
  store i64 1152921504606846976, ptr %i.al, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  store i64 1152921504606846976, ptr %i.am, align 8, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 56
  store i64 1152921504606846976, ptr %i.an, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.ao, %i.ab
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !605

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.w
  store i64 0, ptr %i.ap, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.aq = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #37
          to label %.noexc103 unwind label %bb.s  ; 3 uses

.noexc103:                                        ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  store ptr %i.aq, ptr %5, align 8, !tbaa !132
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aq, i8 0, i64 12, i1 false), !tbaa !97
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !136
  %i.au = icmp sgt i64 %i.w, 384307168202282324
  br i1 %i.au, label %bb.l, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.l:                                             ; preds = %.noexc103
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.274) #33
          to label %.noexc105 unwind label %bb.t

.noexc105:                                        ; preds = %bb.l
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %.noexc103
  %i.av = mul nuw nsw i64 %i.x, 24
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #37
          to label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.i unwind label %bb.t ; 9 uses

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  store ptr %i.aw, ptr %4, align 8, !tbaa !291
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.x
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !292
  %i.ba = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_(ptr noundef nonnull %i.aw, i64 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.n unwind label %bb.m       ; 2 uses

bb.m:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %.idx = mul nuw nsw i64 %i.x, 24
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %.idx) #35
  br label %.body

bb.n:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.i
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !293
  %i.bc = load ptr, ptr %5, align 8, !tbaa !132   ; 3 uses
  %.not.i.i.i107 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i107, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !133
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
end_hunk_1
begin_hunk_2_@llvm.smax.i32
!81 = !{!"p1 _ZTS13llm_tokenizer", !31, i64 0}
!82 = !{!"_ZTSSt10_Head_baseILm0EP13llm_tokenizerLb0EE", !81, i64 0}
!83 = !{!"_ZTSSt11_Tuple_implILm0EJP13llm_tokenizerSt14default_deleteIS0_EEE", !82, i64 0}
!84 = !{!"_ZTSSt5tupleIJP13llm_tokenizerSt14default_deleteIS0_EEE", !83, i64 0}
!85 = !{!"_ZTSSt15__uniq_ptr_implI13llm_tokenizerSt14default_deleteIS0_EE", !84, i64 0}
!86 = !{!"_ZTSSt15__uniq_ptr_dataI13llm_tokenizerSt14default_deleteIS0_ELb1ELb1EE", !85, i64 0}
!87 = !{!"_ZTSSt10unique_ptrI13llm_tokenizerSt14default_deleteIS0_EE", !86, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!89 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !88, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !89, i64 0}
!91 = !{!"_ZTSSt6vectorIcSaIcEE", !90, i64 0}
!92 = !{!"p1 _ZTS11llama_vocab", !31, i64 0}
!93 = !{!"_ZTSN11llama_vocab4implE", !28, i64 0, !37, i64 8, !37, i64 40, !54, i64 72, !55, i64 76, !28, i64 80, !28, i64 84, !28, i64 88, !28, i64 92, !28, i64 96, !28, i64 100, !28, i64 104, !28, i64 108, !28, i64 112, !28, i64 116, !28, i64 120, !28, i64 124, !28, i64 128, !28, i64 132, !28, i64 136, !28, i64 140, !41, i64 144, !41, i64 145, !41, i64 146, !41, i64 147, !41, i64 148, !41, i64 149, !41, i64 150, !41, i64 151, !41, i64 152, !56, i64 153, !58, i64 160, !63, i64 216, !68, i64 240, !73, i64 264, !75, i64 288, !80, i64 344, !68, i64 392, !87, i64 416, !91, i64 424, !92, i64 448}
!94 = !{!93, !54, i64 72}
!95 = !{!93, !28, i64 84}
!96 = !{!93, !28, i64 88}
!97 = !{!28, !28, i64 0}
!98 = !{!60, !59, i64 8}
!99 = !{!60, !59, i64 0}
!100 = !{!"llvm.loop.mustprogress"}
!101 = !{!93, !41, i64 147}
!102 = !{!88, !32, i64 8}
!103 = !{!88, !32, i64 0}
!104 = !{!93, !28, i64 100}
!105 = !{!93, !28, i64 104}
!106 = !{!93, !28, i64 108}
!107 = !{!93, !41, i64 144}
!108 = !{!93, !41, i64 151}
!109 = !{!93, !41, i64 149}
!110 = !{!93, !55, i64 76}
!111 = !{!93, !41, i64 148}
!112 = !{!93, !41, i64 145}
!113 = !{!93, !41, i64 146}
!114 = !{!41, !41, i64 0}
!115 = !{!57, !35, i64 24}
!116 = !{!93, !28, i64 80}
!117 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!118 = !{!52, !52, i64 0}
!119 = !{!"_ZTS16llama_token_attr", !27, i64 0}
!120 = !{!"_ZTSN11llama_vocab10token_dataE", !37, i64 0, !52, i64 32, !119, i64 36}
!121 = !{!120, !52, i64 32}
!122 = !{!120, !119, i64 36}
!123 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE", !37, i64 0, !28, i64 32}
!124 = !{!123, !28, i64 32}
!125 = !{!93, !92, i64 448}
!126 = !{}
!127 = !{i64 8}
!128 = !{!93, !28, i64 116}
!129 = !{!"vtable pointer", !26, i64 0}
!130 = !{!129, !129, i64 0}
!131 = !{!64, !64, i64 0}
!132 = !{!65, !64, i64 0}
!133 = !{!65, !64, i64 16}
!134 = !{i64 4}
!135 = !{i8 0, i8 2}
!136 = !{!65, !64, i64 8}
!137 = !{!51, !50, i64 0}
!138 = !{!93, !28, i64 92}
!139 = !{!93, !28, i64 96}
!140 = !{!93, !28, i64 120}
!141 = !{!93, !28, i64 124}
!142 = !{!93, !28, i64 128}
!143 = !{!93, !28, i64 132}
!144 = !{!93, !28, i64 136}
!145 = !{!93, !28, i64 140}
!146 = !{!45, !43, i64 8}
!147 = !{!45, !43, i64 16}
!148 = !{!45, !43, i64 24}
!149 = !{!45, !35, i64 32}
!150 = !{!43, !43, i64 0}
!151 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!152 = !{!70, !69, i64 0}
!153 = !{!70, !69, i64 16}
!154 = !{!"llvm.loop.unroll.disable"}
!155 = !{!70, !69, i64 8}
!156 = !{!69, !69, i64 0}
!157 = !{!"p1 _ZTSN11llama_vocab4implE", !31, i64 0}
!158 = !{!"_ZTSZN11llama_vocab4impl4loadER18llama_model_loaderRK6LLM_KVE3$_2", !157, i64 0}
!159 = !{!158, !157, i64 0}
!160 = !{!32, !32, i64 0}
!161 = !{!81, !81, i64 0}
!162 = !{!"_ZTSSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !49, i64 0, !35, i64 8, !51, i64 16, !35, i64 24, !53, i64 32, !50, i64 48}
!163 = !{!162, !49, i64 0}
!164 = !{!162, !35, i64 8}
!165 = !{!53, !52, i64 0}
!166 = !{!157, !157, i64 0}
!167 = !{!"p1 _ZTSSt19_Fwd_list_node_base", !31, i64 0}
!168 = !{!"_ZTSSt19_Fwd_list_node_base", !167, i64 0}
!169 = !{!168, !167, i64 0}
!170 = !{!"_ZTS28FRAGMENT_BUFFER_VARIANT_TYPE", !27, i64 0}
!171 = !{!"_ZTS23fragment_buffer_variant", !170, i64 0, !28, i64 4, !37, i64 8, !69, i64 40, !35, i64 48, !35, i64 56}
!172 = !{!171, !170, i64 0}
!173 = !{!171, !69, i64 40}
!174 = !{!171, !35, i64 48}
!175 = !{!171, !35, i64 56}
!176 = !{!92, !92, i64 0}
!177 = !{!45, !42, i64 0}
!178 = !{!"p1 _ZTS14llm_bigram_spm", !31, i64 0}
!179 = !{!"_ZTSNSt12_Vector_baseI14llm_bigram_spmSaIS0_EE17_Vector_impl_dataE", !178, i64 0, !178, i64 8, !178, i64 16}
!180 = !{!179, !178, i64 0}
!181 = !{!179, !178, i64 16}
!182 = !{!"p1 _ZTS10llm_symbol", !31, i64 0}
!183 = !{!"_ZTSNSt12_Vector_baseI10llm_symbolSaIS0_EE17_Vector_impl_dataE", !182, i64 0, !182, i64 8, !182, i64 16}
!184 = !{!183, !182, i64 0}
!185 = !{!183, !182, i64 16}
!186 = !{!"p1 _ZTS17llm_tokenizer_bpe", !31, i64 0}
!187 = !{!171, !28, i64 4}
!188 = !{!"_ZTSNSt12_Vector_baseI10llm_symbolSaIS0_EE12_Vector_implE", !183, i64 0}
!189 = !{!"_ZTSSt12_Vector_baseI10llm_symbolSaIS0_EE", !188, i64 0}
!190 = !{!"_ZTSSt6vectorI10llm_symbolSaIS0_EE", !189, i64 0}
!191 = !{!"p1 _ZTS14llm_bigram_bpe", !31, i64 0}
!192 = !{!"_ZTSNSt12_Vector_baseI14llm_bigram_bpeSaIS0_EE17_Vector_impl_dataE", !191, i64 0, !191, i64 8, !191, i64 16}
!193 = !{!"_ZTSNSt12_Vector_baseI14llm_bigram_bpeSaIS0_EE12_Vector_implE", !192, i64 0}
!194 = !{!"_ZTSSt12_Vector_baseI14llm_bigram_bpeSaIS0_EE", !193, i64 0}
!195 = !{!"_ZTSSt6vectorI14llm_bigram_bpeSaIS0_EE", !194, i64 0}
!196 = !{!"_ZTSN14llm_bigram_bpe10comparatorE"}
!197 = !{!"_ZTSSt14priority_queueI14llm_bigram_bpeSt6vectorIS0_SaIS0_EENS0_10comparatorEE", !195, i64 0, !196, i64 24}
!198 = !{!"_ZTS20llama_priority_queueI14llm_bigram_bpeSt6vectorIS0_SaIS0_EENS0_10comparatorEE", !197, i64 0}
!199 = !{!"_ZTS25llm_tokenizer_bpe_session", !92, i64 8, !186, i64 16, !190, i64 24, !190, i64 48, !198, i64 72}
!200 = !{!199, !92, i64 8}
!201 = !{!"p1 _ZTS17llm_tokenizer_ugm", !31, i64 0}
!202 = !{!"p1 _ZTS18llm_tokenizer_rwkv", !31, i64 0}
!203 = !{!183, !182, i64 8}
!204 = !{!178, !178, i64 0}
!205 = !{!"_ZTS10llm_symbol", !28, i64 0, !28, i64 4, !32, i64 8, !35, i64 16}
!206 = !{!205, !35, i64 16}
!207 = !{!205, !28, i64 4}
!208 = !{!205, !28, i64 0}
!209 = !{!57, !35, i64 8}
!210 = !{!57, !49, i64 0}
!211 = !{!50, !50, i64 0}
!212 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !35, i64 0}
!213 = !{!212, !35, i64 0}
!214 = !{!"_ZTS25llm_tokenizer_ugm_session", !92, i64 0, !201, i64 8}
!215 = !{!214, !92, i64 0}
!216 = !{!214, !201, i64 8}
!217 = !{!"_ZTSSt4lessIcE"}
!218 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIcEE", !217, i64 0}
!219 = !{!"_ZTSNSt8_Rb_treeIcSt4pairIKc10naive_trieESt10_Select1stIS3_ESt4lessIcESaIS3_EE13_Rb_tree_implIS7_Lb1EEE", !218, i64 0, !45, i64 8}
!220 = !{!"_ZTSSt8_Rb_treeIcSt4pairIKc10naive_trieESt10_Select1stIS3_ESt4lessIcESaIS3_EE", !219, i64 0}
!221 = !{!"_ZTSSt3mapIc10naive_trieSt4lessIcESaISt4pairIKcS0_EEE", !220, i64 0}
!222 = !{!"_ZTS10naive_trie", !221, i64 0, !41, i64 48, !28, i64 52}
!223 = !{!222, !41, i64 48}
!224 = !{!222, !28, i64 52}
!225 = !{!"_ZTS13llm_tokenizer"}
!226 = !{!"_ZTS17llm_tokenizer_ugm", !225, i64 0, !37, i64 8, !32, i64 40, !35, i64 48, !64, i64 56, !35, i64 64, !222, i64 72, !52, i64 128, !52, i64 132, !52, i64 136, !52, i64 140, !222, i64 144}
!227 = !{!226, !52, i64 140}
!228 = !{!"llvm.loop.isvectorized", i32 1}
!229 = !{!"llvm.loop.unroll.runtime.disable"}
!230 = !{!"_ZTSZNK11llama_vocab4impl14token_to_pieceEiPciibE3$_0", !28, i64 0, !28, i64 4, !32, i64 8}
!231 = !{!230, !28, i64 0}
!232 = !{!230, !28, i64 4}
!233 = !{!230, !32, i64 8}
!234 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!235 = !{!234, !32, i64 8}
!236 = !{!234, !32, i64 0}
!237 = !{!234, !32, i64 16}
!238 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!239 = !{!238, !64, i64 0}
!240 = !{!238, !64, i64 16}
!241 = !{!"llvm.loop.peeled.count", i32 1}
!242 = !{!74, !35, i64 24}
!243 = !{!93, !28, i64 112}
!244 = !{!93, !28, i64 0}
!245 = !{!74, !49, i64 0}
!246 = !{!74, !35, i64 8}
!247 = !{!93, !41, i64 150}
!248 = !{!93, !41, i64 152}
!249 = !{!"_ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !37, i64 0, !37, i64 32}
!250 = !{!"_ZTSSt4pairIKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EiE", !249, i64 0, !28, i64 64}
!251 = !{!250, !28, i64 64}
!252 = !{!88, !32, i64 16}
!253 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!254 = !{!205, !32, i64 8}
!255 = !{!"_ZTSNSt12_Vector_baseI14llm_bigram_spmSaIS0_EE12_Vector_implE", !179, i64 0}
!256 = !{!"_ZTSSt12_Vector_baseI14llm_bigram_spmSaIS0_EE", !255, i64 0}
!257 = !{!"_ZTSSt6vectorI14llm_bigram_spmSaIS0_EE", !256, i64 0}
!258 = !{!"_ZTSN14llm_bigram_spm10comparatorE"}
!259 = !{!"_ZTSSt14priority_queueI14llm_bigram_spmSt6vectorIS0_SaIS0_EENS0_10comparatorEE", !257, i64 0, !258, i64 24}
!260 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IiiEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !47, i64 0, !45, i64 8}
!261 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IiiEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE", !260, i64 0}
!262 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIiiESt4lessIS5_ESaIS6_IKS5_S7_EEE", !261, i64 0}
!263 = !{!"_ZTS25llm_tokenizer_spm_session", !92, i64 0, !190, i64 8, !259, i64 32, !262, i64 64}
!264 = !{!263, !92, i64 0}
!265 = !{!"_ZTS14llm_bigram_spm", !28, i64 0, !28, i64 4, !52, i64 8, !35, i64 16}
!266 = !{!265, !28, i64 0}
!267 = !{!265, !52, i64 8}
!268 = !{!"_ZTSSt4pairIiiE", !28, i64 0, !28, i64 4}
!269 = !{!268, !28, i64 0}
!270 = !{!268, !28, i64 4}
!271 = !{i64 0, i64 4, !97, i64 4, i64 4, !97, i64 8, i64 4, !118, i64 16, i64 8, !36}
!272 = !{!179, !178, i64 8}
!273 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IiiEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE", !31, i64 0}
!274 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_IiiEEE", !31, i64 0}
!275 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IiiEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_Auto_nodeE", !273, i64 0, !274, i64 8}
!276 = !{!275, !274, i64 8}
!277 = !{!44, !43, i64 24}
!278 = !{!44, !43, i64 16}
!279 = !{!56, !41, i64 0}
!280 = !{!"_ZTSN25llm_tokenizer_ugm_session20normalization_resultE", !32, i64 0, !35, i64 8, !35, i64 16}
!281 = !{!280, !35, i64 8}
!282 = !{!280, !32, i64 0}
!283 = !{!280, !35, i64 16}
!284 = !{!226, !35, i64 64}
!285 = !{!226, !64, i64 56}
!286 = !{!226, !35, i64 48}
!287 = !{!226, !32, i64 40}
!288 = !{!238, !64, i64 8}
!289 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !31, i64 0}
!290 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !289, i64 0, !289, i64 8, !289, i64 16}
!291 = !{!290, !289, i64 0}
!292 = !{!290, !289, i64 16}
!293 = !{!290, !289, i64 8}
!294 = !{!162, !35, i64 24}
!295 = !{!"_ZTSSt4pairIKliE", !35, i64 0, !28, i64 8}
!296 = !{!295, !28, i64 8}
!297 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEEE", !31, i64 0}
!298 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEE", !31, i64 0}
!299 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !297, i64 0, !298, i64 8}
!300 = !{!299, !297, i64 0}
!301 = !{!299, !298, i64 8}
!302 = !{!53, !35, i64 8}
!303 = !{!57, !50, i64 16}
!304 = !{!60, !59, i64 16}
!305 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EiELb1EEEEEE", !31, i64 0}
!306 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EiELb1EEE", !31, i64 0}
!307 = !{!"_ZTSNSt10_HashtableISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_iESaIS9_ENSt8__detail10_Select1stESt8equal_toIS7_EN11llama_vocab4impl9pair_hashENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !305, i64 0, !306, i64 8}
!308 = !{!307, !306, i64 8}
!309 = !{!74, !50, i64 16}
!310 = !{!"_ZTS17llm_tokenizer_bpe", !225, i64 0, !73, i64 8, !41, i64 32}
!311 = !{!310, !41, i64 32}
!312 = !{!"p1 _ZTSSt8_Rb_treeIcSt4pairIKc10naive_trieESt10_Select1stIS3_ESt4lessIcESaIS3_EE", !31, i64 0}
!313 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKc10naive_trieEE", !31, i64 0}
!314 = !{!"_ZTSNSt8_Rb_treeIcSt4pairIKc10naive_trieESt10_Select1stIS3_ESt4lessIcESaIS3_EE10_Auto_nodeE", !312, i64 0, !313, i64 8}
!315 = !{!314, !313, i64 8}
!316 = !{!162, !50, i64 16}
!317 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_fESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !49, i64 0, !35, i64 8, !51, i64 16, !35, i64 24, !53, i64 32, !50, i64 48}
!318 = !{!317, !49, i64 0}
!319 = !{!317, !35, i64 8}
!320 = !{!317, !35, i64 24}
!321 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfELb1EEEEEE", !31, i64 0}
!322 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfELb1EEE", !31, i64 0}
!323 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_fESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !321, i64 0, !322, i64 8}
!324 = !{!323, !321, i64 0}
!325 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfE", !37, i64 0, !52, i64 32}
!326 = !{!325, !52, i64 32}
!327 = !{!323, !322, i64 8}
!328 = !{!317, !50, i64 16}
!329 = !{!"_ZTS31llm_tokenizer_hybriddna_session", !199, i64 0, !92, i64 104}
!330 = !{!329, !92, i64 104}
!331 = !{!192, !191, i64 0}
!332 = !{!192, !191, i64 8}
!333 = !{!192, !191, i64 16}
!334 = !{!191, !191, i64 0}
!335 = !{!"_ZTS14llm_bigram_bpe", !28, i64 0, !28, i64 4, !37, i64 8, !28, i64 40, !35, i64 48}
!336 = !{!335, !28, i64 0}
!337 = !{!335, !28, i64 4}
!338 = !{i64 0, i64 4, !97, i64 4, i64 4, !97, i64 8, i64 8, !160, i64 16, i64 8, !36}
!339 = !{!335, !28, i64 40}
!340 = !{!"p1 _ZTS31llm_tokenizer_hybriddna_session", !31, i64 0}
!341 = !{!"_ZTSZN31llm_tokenizer_hybriddna_session14emit_dna_kmersERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmiRSt6vectorIiSaIiEEEUlS7_E_", !340, i64 0, !64, i64 8}
!342 = !{!341, !340, i64 0}
!343 = distinct !{!343, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!344 = distinct !{!344, !343, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!345 = distinct !{!345, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!346 = distinct !{!346, !345, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!347 = distinct !{!347, !100}
!348 = distinct !{!348, !100}
!349 = distinct !{!349, !"_ZNSt7__cxx119to_stringEj"}
!350 = distinct !{!350, !349, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!351 = distinct !{!351, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!352 = distinct !{!352, !351, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!353 = distinct !{!353, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!354 = distinct !{!354, !353, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!355 = distinct !{!355, !100}
!356 = distinct !{!356, !100}
!357 = distinct !{!357, !100}
!358 = distinct !{!358, !100}
!359 = distinct !{!359, !100}
!360 = distinct !{!360, !100}
!361 = distinct !{!361, !100}
!362 = distinct !{!362, !154}
!363 = distinct !{!363, !100}
!364 = distinct !{!364, !100}
!365 = distinct !{!365, !100}
!366 = !{!"_ZTS15llama_lazy_mode", !27, i64 0}
!367 = !{!"_ZTSSt4lessIjE"}
!368 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !367, i64 0}
!369 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjSt6vectorIS0_ImmESaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb1EEE", !368, i64 0, !45, i64 8}
!370 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjSt6vectorIS0_ImmESaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE", !369, i64 0}
!371 = !{!"_ZTSSt3mapIjSt6vectorISt4pairImmESaIS2_EESt4lessIjESaIS1_IKjS4_EEE", !370, i64 0}
!372 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !47, i64 0, !45, i64 8}
!373 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !372, i64 0}
!374 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !373, i64 0}
!375 = !{!"_ZTSN18llama_model_loader9lazy_readE", !366, i64 0, !371, i64 8, !374, i64 56}
!376 = !{!"p1 _ZTSSt10unique_ptrI10llama_fileSt14default_deleteIS0_EE", !31, i64 0}
!377 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE17_Vector_impl_dataE", !376, i64 0, !376, i64 8, !376, i64 16}
!378 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE12_Vector_implE", !377, i64 0}
!379 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE", !378, i64 0}
!380 = !{!"_ZTSSt6vectorISt10unique_ptrI10llama_fileSt14default_deleteIS1_EESaIS4_EE", !379, i64 0}
!381 = !{!"_ZTS11llama_ftype", !27, i64 0}
!382 = !{!"_ZTS10llama_fver", !27, i64 0}
!383 = !{!"p1 _ZTSSt10unique_ptrI10llama_mmapSt14default_deleteIS0_EE", !31, i64 0}
!384 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE17_Vector_impl_dataE", !383, i64 0, !383, i64 8, !383, i64 16}
!385 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE12_Vector_implE", !384, i64 0}
!386 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE", !385, i64 0}
!387 = !{!"_ZTSSt6vectorISt10unique_ptrI10llama_mmapSt14default_deleteIS1_EESaIS4_EE", !386, i64 0}
!388 = !{!"_ZTSN18llama_model_loader20weight_name_comparerE"}
!389 = !{!"_ZTSSt20_Rb_tree_key_compareIN18llama_model_loader20weight_name_comparerEE", !388, i64 0}
!390 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N18llama_model_loader19llama_tensor_weightEESt10_Select1stISA_ENS8_20weight_name_comparerESaISA_EE13_Rb_tree_implISD_Lb1EEE", !389, i64 0, !45, i64 8}
!391 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N18llama_model_loader19llama_tensor_weightEESt10_Select1stISA_ENS8_20weight_name_comparerESaISA_EE", !390, i64 0}
!392 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN18llama_model_loader19llama_tensor_weightENS6_20weight_name_comparerESaISt4pairIKS5_S7_EEE", !391, i64 0}
!393 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_23llama_model_kv_overrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !49, i64 0, !35, i64 8, !51, i64 16, !35, i64 24, !53, i64 32, !50, i64 48}
!394 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE23llama_model_kv_overrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE", !393, i64 0}
!395 = !{!"p1 _ZTS32llama_model_tensor_buft_override", !31, i64 0}
!396 = !{!"p1 _ZTS12gguf_context", !31, i64 0}
!397 = !{!"_ZTSSt10_Head_baseILm0EP12gguf_contextLb0EE", !396, i64 0}
!398 = !{!"_ZTSSt11_Tuple_implILm0EJP12gguf_context20gguf_context_deleterEE", !397, i64 0}
!399 = !{!"_ZTSSt5tupleIJP12gguf_context20gguf_context_deleterEE", !398, i64 0}
!400 = !{!"_ZTSSt15__uniq_ptr_implI12gguf_context20gguf_context_deleterE", !399, i64 0}
!401 = !{!"_ZTSSt15__uniq_ptr_dataI12gguf_context20gguf_context_deleterLb1ELb1EE", !400, i64 0}
!402 = !{!"_ZTSSt10unique_ptrI12gguf_context20gguf_context_deleterE", !401, i64 0}
!403 = !{!"p1 _ZTSSt10unique_ptrI12ggml_context20ggml_context_deleterE", !31, i64 0}
!404 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE17_Vector_impl_dataE", !403, i64 0, !403, i64 8, !403, i64 16}
!405 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE12_Vector_implE", !404, i64 0}
!406 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE", !405, i64 0}
!407 = !{!"_ZTSSt6vectorISt10unique_ptrI12ggml_context20ggml_context_deleterESaIS3_EE", !406, i64 0}
!408 = !{!"_ZTS8llm_arch", !27, i64 0}
!409 = !{!"_ZTS6LLM_KV", !408, i64 0, !32, i64 8}
!410 = !{!"p1 _ZTSSt4pairImmE", !31, i64 0}
!411 = !{!"_ZTSNSt12_Vector_baseISt4pairImmESaIS1_EE17_Vector_impl_dataE", !410, i64 0, !410, i64 8, !410, i64 16}
!412 = !{!"_ZTSNSt12_Vector_baseISt4pairImmESaIS1_EE12_Vector_implE", !411, i64 0}
!413 = !{!"_ZTSSt12_Vector_baseISt4pairImmESaIS1_EE", !412, i64 0}
!414 = !{!"_ZTSSt6vectorISt4pairImmESaIS1_EE", !413, i64 0}
!415 = !{!"_ZTSN18llama_model_loader18ctx_key_comparatorE"}
!416 = !{!"_ZTSSt20_Rb_tree_key_compareIN18llama_model_loader18ctx_key_comparatorEE", !415, i64 0}
!417 = !{!"_ZTSNSt8_Rb_treeIN18llama_model_loader7ctx_keyESt4pairIKS1_St10unique_ptrI12ggml_context20ggml_context_deleterEESt10_Select1stIS8_ENS0_18ctx_key_comparatorESaIS8_EE13_Rb_tree_implISB_Lb1EEE", !416, i64 0, !45, i64 8}
!418 = !{!"_ZTSSt8_Rb_treeIN18llama_model_loader7ctx_keyESt4pairIKS1_St10unique_ptrI12ggml_context20ggml_context_deleterEESt10_Select1stIS8_ENS0_18ctx_key_comparatorESaIS8_EE", !417, i64 0}
!419 = !{!"_ZTSSt3mapIN18llama_model_loader7ctx_keyESt10unique_ptrI12ggml_context20ggml_context_deleterENS0_18ctx_key_comparatorESaISt4pairIKS1_S5_EEE", !418, i64 0}
!420 = !{!"p1 _ZTS24ggml_backend_buffer_type", !31, i64 0}
!421 = !{!"_ZTS18llama_model_loader", !28, i64 0, !28, i64 4, !28, i64 8, !35, i64 16, !35, i64 24, !41, i64 32, !41, i64 33, !41, i64 34, !41, i64 35, !41, i64 36, !375, i64 40, !380, i64 144, !381, i64 168, !382, i64 172, !387, i64 176, !392, i64 200, !394, i64 248, !395, i64 304, !402, i64 312, !396, i64 320, !31, i64 328, !31, i64 336, !407, i64 344, !37, i64 368, !409, i64 400, !35, i64 416, !35, i64 424, !414, i64 432, !419, i64 456, !35, i64 504, !37, i64 512, !37, i64 544, !420, i64 576, !420, i64 584}
!422 = !{!421, !396, i64 320}
!423 = !{!344}
!424 = !{!346}
!425 = !{!93, !41, i64 153}
!426 = !{!350}
!427 = !{!352}
!428 = !{!354}
!429 = !{!59, !59, i64 0}
!430 = !{!"_ZTS6llm_kv", !27, i64 0}
!431 = !{!430, !430, i64 0}
!432 = !{!"_ZTSSt4pairI6llm_kvRiE", !430, i64 0, !64, i64 8}
!433 = !{!432, !64, i64 8}
!434 = !{!93, !41, i64 154}
!435 = !{!119, !119, i64 0}
!436 = distinct !{!436, !"_ZSt11make_uniqueI17llm_tokenizer_spmJRK11llama_vocabEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!437 = distinct !{!437, !436, !"_ZSt11make_uniqueI17llm_tokenizer_spmJRK11llama_vocabEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!438 = distinct !{!438, !"_ZSt11make_uniqueI17llm_tokenizer_bpeJRK11llama_vocabEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!439 = distinct !{!439, !438, !"_ZSt11make_uniqueI17llm_tokenizer_bpeJRK11llama_vocabEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!440 = distinct !{!440, !"_ZSt11make_uniqueI17llm_tokenizer_wpmJRK11llama_vocabEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!441 = distinct !{!441, !440, !"_ZSt11make_uniqueI17llm_tokenizer_wpmJRK11llama_vocabEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!442 = distinct !{!442, !"_ZSt11make_uniqueI17llm_tokenizer_ugmJRK11llama_vocabRSt6vectorIcSaIcEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!443 = distinct !{!443, !442, !"_ZSt11make_uniqueI17llm_tokenizer_ugmJRK11llama_vocabRSt6vectorIcSaIcEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!444 = distinct !{!444, !"_ZSt11make_uniqueI18llm_tokenizer_rwkvJRK11llama_vocabEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!445 = distinct !{!445, !444, !"_ZSt11make_uniqueI18llm_tokenizer_rwkvJRK11llama_vocabEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!446 = distinct !{!446, !"_ZSt11make_uniqueI20llm_tokenizer_plamo2JRK11llama_vocabEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!447 = distinct !{!447, !446, !"_ZSt11make_uniqueI20llm_tokenizer_plamo2JRK11llama_vocabEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!448 = !{!437}
!449 = !{!439}
!450 = !{!441}
!451 = !{!443}
!452 = !{!445}
!453 = !{!447}
!454 = distinct !{!454, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!455 = distinct !{!455, !454, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!456 = distinct !{!456, !"_ZNK11llama_vocab19get_tokenizer_modelB5cxx11Ev"}
!457 = distinct !{!457, !456, !"_ZNK11llama_vocab19get_tokenizer_modelB5cxx11Ev: argument 0"}
!458 = distinct !{!458, !"_ZSt11make_uniqueI31llm_tokenizer_hybriddna_sessionJRK11llama_vocabRK17llm_tokenizer_bpeEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!459 = distinct !{!459, !458, !"_ZSt11make_uniqueI31llm_tokenizer_hybriddna_sessionJRK11llama_vocabRK17llm_tokenizer_bpeEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!460 = distinct !{!460, !"_ZNK11llama_vocab19get_tokenizer_modelB5cxx11Ev"}
!461 = distinct !{!461, !460, !"_ZNK11llama_vocab19get_tokenizer_modelB5cxx11Ev: argument 0"}
!462 = distinct !{!462, !"_ZSt11make_uniqueI32llm_tokenizer_whitespace_sessionJRK11llama_vocabRK17llm_tokenizer_bpeEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!463 = distinct !{!463, !462, !"_ZSt11make_uniqueI32llm_tokenizer_whitespace_sessionJRK11llama_vocabRK17llm_tokenizer_bpeEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!464 = distinct !{!464, !"_ZSt11make_uniqueI25llm_tokenizer_bpe_sessionJRK11llama_vocabRK17llm_tokenizer_bpeEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!465 = distinct !{!465, !464, !"_ZSt11make_uniqueI25llm_tokenizer_bpe_sessionJRK11llama_vocabRK17llm_tokenizer_bpeEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!466 = distinct !{!466, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!467 = distinct !{!467, !466, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!468 = distinct !{null, null}
!469 = distinct !{!469, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!470 = distinct !{!470, !469, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!471 = distinct !{!471, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!472 = distinct !{!472, !471, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!473 = distinct !{!473, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!474 = distinct !{!474, !473, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!475 = distinct !{!475, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!476 = distinct !{!476, !475, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!477 = !{!455}
!478 = !{!457}
!479 = !{!459}
!480 = !{!186, !186, i64 0}
!481 = !{!461}
!482 = !{!463}
!483 = !{!465}
end_hunk_2
