Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/regexp_operation?download=true
inline.NumInlined: 4732
inline.NumDeleted: 1286
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4cvc58internal6theory7strings9RegExpOpr8mkStringB5cxx11ENS0_12NodeTemplateILb1EEE:bb.a

bb.ae:                                            ; preds = %bb.h
  %i.dd = load i64, ptr %i.b, align 8, !tbaa !110
  %i.de = icmp eq i64 %i.dd, 4611686018427387903
  br i1 %i.de, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i147: ; preds = %bb.ae
  %i.df = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.69, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit150.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit150.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i147
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit150.preheader, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167
  %indvars.iv538 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit150.preheader ], [ %indvars.iv.next539, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167 ] ; 3 uses
  %i.di = load ptr, ptr %1, align 8, !tbaa !32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = and i32 %i.dl, 1023                     ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 1023
  %i.do = select i1 %i.dn, i32 -1, i32 %i.dm
  %i.dp = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.do)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit150
  %i.dq = icmp eq i32 %i.dp, 2
  %i.dr = load i64, ptr %i.dj, align 8
  %i.ds = lshr i64 %i.dr, 32
  %i.dt = and i64 %i.ds, 67108863
  %i.du = sext i1 %i.dq to i64
  %i.dv = add nsw i64 %i.dt, %i.du
  %i.dw = and i64 %i.dv, 4294967295
  %i.dx = icmp samesign ugt i64 %i.dw, %indvars.iv538
  br i1 %i.dx, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dy = load i64, ptr %i.b, align 8, !tbaa !110
  %i.dz = icmp eq i64 %i.dy, 4611686018427387903
  br i1 %i.dz, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.invoke

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.ea = load ptr, ptr %1, align 8, !tbaa !32, !noalias !440 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !440
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = and i32 %i.ed, 1023                     ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 1023
  %i.eg = select i1 %i.ef, i32 -1, i32 %i.ee
  %i.eh = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.eg)
          to label %.noexc156 unwind label %bb.aq, !noalias !440

.noexc156:                                        ; preds = %bb.ah
  %i.ei = icmp eq i32 %i.eh, 2
  %i.ej = zext i1 %i.ei to i64
  %spec.select.i.i = add nuw nsw i64 %indvars.iv538, %i.ej
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %sext670 = shl nuw i64 %spec.select.i.i, 32
  %i.el = ashr exact i64 %sext670, 29
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !30, !noalias !440 ; 8 uses
  store ptr %i.en, ptr %7, align 8, !tbaa !32, !alias.scope !440
  %i.eo = load i64, ptr %i.en, align 8, !noalias !440 ; 3 uses
  %i.ep = lshr i64 %i.eo, 40
  %i.eq = trunc nuw nsw i64 %i.ep to i32
  %i.er = and i32 %i.eq, 1048575                  ; 3 uses
  %i.es = icmp samesign ult i32 %i.er, 1048574
  br i1 %i.es, label %bb.ai, label %bb.aj, !prof !93

bb.ai:                                            ; preds = %.noexc156
  %i.et = add nuw nsw i32 %i.er, 1
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = shl nuw nsw i64 %i.eu, 40
  %i.ew = and i64 %i.eo, -1152920405095219201
  %i.ex = or i64 %i.ev, %i.ew
  store i64 %i.ex, ptr %i.en, align 8, !noalias !440
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit158

bb.aj:                                            ; preds = %.noexc156
  %i.ey = icmp eq i32 %i.er, 1048574
  br i1 %i.ey, label %bb.ak, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit158, !prof !92

bb.ak:                                            ; preds = %bb.aj
  %i.ez = or i64 %i.eo, 1152920405095219200
  store i64 %i.ez, ptr %i.en, align 8, !noalias !440
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit158 unwind label %bb.aq, !noalias !440

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit158: ; preds = %bb.aj, %bb.ai, %bb.ak
  invoke void @_ZN4cvc58internal6theory7strings9RegExpOpr8mkStringB5cxx11ENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 %7)
          to label %bb.al unwind label %bb.ar

bb.al:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit158
  %i.fa = load i64, ptr %i.dg, align 8, !tbaa !110 ; 2 uses
  %i.fb = load i64, ptr %i.b, align 8, !tbaa !110
  %i.fc = sub i64 4611686018427387903, %i.fb
  %i.fd = icmp ult i64 %i.fc, %i.fa
  br i1 %i.fd, label %bb.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i159

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #27
          to label %.noexc160 unwind label %.loopexit.split-lp452.loopexit.split-lp.loopexit.split-lp

.noexc160:                                        ; preds = %bb.am
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i159: ; preds = %bb.al
  %i.fe = load ptr, ptr %6, align 8, !tbaa !112
  %i.ff = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.fe, i64 noundef %i.fa)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit162 unwind label %.loopexit.split-lp452.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i159
  %i.fg = load ptr, ptr %6, align 8, !tbaa !112   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.dh
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit162
  %i.fi = load i64, ptr %i.dh, align 8, !tbaa !111
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  %i.fk = load i64, ptr %i.en, align 8            ; 3 uses
  %i.fl = and i64 %i.fk, 1152920405095219200
  %.not.i.i166 = icmp eq i64 %i.fl, 1152920405095219200
  br i1 %.not.i.i166, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167, label %bb.an, !prof !92

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  %i.fm = add i64 %i.fk, 1152920405095219200
  %i.fn = and i64 %i.fm, 1152920405095219200      ; 2 uses
  %i.fo = and i64 %i.fk, -1152920405095219201
  %i.fp = or disjoint i64 %i.fn, %i.fo
  store i64 %i.fp, ptr %i.en, align 8
  %i.fq = icmp eq i64 %i.fn, 0
  br i1 %i.fq, label %bb.ao, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167, !prof !92

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %indvars.iv.next539 = add nuw nsw i64 %indvars.iv538, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit150, !llvm.loop !404

bb.aq:                                            ; preds = %bb.ak, %bb.ah
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit158
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

.loopexit.split-lp452.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i159, %bb.am
  %lpad.loopexit.split-lp709 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = load ptr, ptr %6, align 8, !tbaa !112   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.dh
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %.loopexit.split-lp452.loopexit.split-lp.loopexit.split-lp
  %i.fx = load i64, ptr %i.dh, align 8, !tbaa !111
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %.loopexit.split-lp452.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168, %bb.ar
  %.pn107 = phi { ptr, i32 } [ %i.fu, %bb.ar ], [ %lpad.loopexit.split-lp709, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168 ], [ %lpad.loopexit.split-lp709, %.loopexit.split-lp452.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #23
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %bb.aq
  %.pn107.pn = phi { ptr, i32 } [ %.pn107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ], [ %i.ft, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body

bb.at:                                            ; preds = %bb.h
  %i.fz = load i64, ptr %i.b, align 8, !tbaa !110
  %i.ga = icmp eq i64 %i.fz, 4611686018427387903
  br i1 %i.ga, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i171: ; preds = %bb.at
  %i.gb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.69, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit174.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit174.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i171
  %i.gc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.ge = load ptr, ptr %1, align 8, !tbaa !32
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = and i32 %i.gh, 1023                     ; 2 uses
  %i.gj = icmp eq i32 %i.gi, 1023
  %i.gk = select i1 %i.gj, i32 -1, i32 %i.gi
  %i.gl = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.gk)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit174.preheader
  %i.gm = icmp eq i32 %i.gl, 2
  %i.gn = load i64, ptr %i.gf, align 8
  %i.go = lshr i64 %i.gn, 32
  %i.gp = and i64 %i.go, 67108863
  %i.gq = sext i1 %i.gm to i64
  %i.gr = add nsw i64 %i.gp, %i.gq
  %i.gs = and i64 %i.gr, 4294967295
  %.not668 = icmp eq i64 %i.gs, 0
  br i1 %.not668, label %.loopexit517, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit184.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit184.peel: ; preds = %bb.au
  %.pre542 = load ptr, ptr %1, align 8, !tbaa !32, !noalias !441 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.gt = getelementptr inbounds nuw i8, ptr %.pre542, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !noalias !441
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = and i32 %i.gv, 1023                     ; 2 uses
  %i.gx = icmp eq i32 %i.gw, 1023
  %i.gy = select i1 %i.gx, i32 -1, i32 %i.gw
  %i.gz = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.gy)
          to label %.noexc186.peel unwind label %.loopexit.split-lp520.loopexit.split-lp.loopexit.split-lp, !noalias !441

.noexc186.peel:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit184.peel
  %i.ha = icmp eq i32 %i.gz, 2
  %i.hb = getelementptr inbounds nuw i8, ptr %.pre542, i64 24
  %i.hc = zext i1 %i.ha to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.hc
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !30, !noalias !441 ; 8 uses
  store ptr %i.he, ptr %9, align 8, !tbaa !32, !alias.scope !441
  %i.hf = load i64, ptr %i.he, align 8, !noalias !441 ; 3 uses
  %i.hg = lshr i64 %i.hf, 40
  %i.hh = trunc nuw nsw i64 %i.hg to i32
  %i.hi = and i32 %i.hh, 1048575                  ; 3 uses
  %i.hj = icmp samesign ult i32 %i.hi, 1048574
  br i1 %i.hj, label %bb.ax, label %bb.av, !prof !93

bb.av:                                            ; preds = %.noexc186.peel
  %i.hk = icmp eq i32 %i.hi, 1048574
  br i1 %i.hk, label %bb.aw, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit188.peel, !prof !92

bb.aw:                                            ; preds = %bb.av
  %i.hl = or i64 %i.hf, 1152920405095219200
  store i64 %i.hl, ptr %i.he, align 8, !noalias !441
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.he)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit188.peel unwind label %.loopexit.split-lp520.loopexit.split-lp.loopexit.split-lp, !noalias !441

bb.ax:                                            ; preds = %.noexc186.peel
  %i.hm = add nuw nsw i32 %i.hi, 1
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = shl nuw nsw i64 %i.hn, 40
  %i.hp = and i64 %i.hf, -1152920405095219201
  %i.hq = or i64 %i.ho, %i.hp
  store i64 %i.hq, ptr %i.he, align 8, !noalias !441
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit188.peel

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit188.peel: ; preds = %bb.ax, %bb.aw, %bb.av
  invoke void @_ZN4cvc58internal6theory7strings9RegExpOpr8mkStringB5cxx11ENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 %9)
          to label %bb.ay unwind label %.loopexit.split-lp525.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit188.peel
  %i.hr = load i64, ptr %i.gc, align 8, !tbaa !110 ; 2 uses
  %i.hs = load i64, ptr %i.b, align 8, !tbaa !110
  %i.ht = sub i64 4611686018427387903, %i.hs
  %i.hu = icmp ult i64 %i.ht, %i.hr
  br i1 %i.hu, label %.loopexit529, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i189.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i189.peel: ; preds = %bb.ay
  %i.hv = load ptr, ptr %8, align 8, !tbaa !112
  %i.hw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.hv, i64 noundef %i.hr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit192.peel unwind label %.loopexit.split-lp460.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit192.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i189.peel
  %i.hx = load ptr, ptr %8, align 8, !tbaa !112   ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.gd
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit192.peel
  %i.hz = load i64, ptr %i.gd, align 8, !tbaa !111
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit192.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.peel
  %i.ib = load i64, ptr %i.he, align 8            ; 3 uses
  %i.ic = and i64 %i.ib, 1152920405095219200
  %.not.i.i196.peel = icmp eq i64 %i.ic, 1152920405095219200
  br i1 %.not.i.i196.peel, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit197.peel, label %bb.az, !prof !92

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.peel
  %i.id = add i64 %i.ib, 1152920405095219200
  %i.ie = and i64 %i.id, 1152920405095219200      ; 2 uses
  %i.if = and i64 %i.ib, -1152920405095219201
  %i.ig = or disjoint i64 %i.ie, %i.if
  store i64 %i.ig, ptr %i.he, align 8
  %i.ih = icmp eq i64 %i.ie, 0
  br i1 %i.ih, label %bb.ba, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit197.peel, !prof !92

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.he)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit197.peel unwind label %.loopexit.split-lp534.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit197.peel: ; preds = %bb.ba, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit174: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit197.peel, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit197
  %indvars.iv510 = phi i64 [ 1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit197.peel ], [ %indvars.iv.next511, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit197 ] ; 3 uses
  %i.ii = load ptr, ptr %1, align 8, !tbaa !32
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8
  %i.il = trunc i64 %i.ik to i32
  %i.im = and i32 %i.il, 1023                     ; 2 uses
  %i.in = icmp eq i32 %i.im, 1023
  %i.io = select i1 %i.in, i32 -1, i32 %i.im
  %i.ip = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.io)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit174
  %i.iq = icmp eq i32 %i.ip, 2
  %i.ir = load i64, ptr %i.ij, align 8
  %i.is = lshr i64 %i.ir, 32
  %i.it = and i64 %i.is, 67108863
  %i.iu = sext i1 %i.iq to i64
  %i.iv = add nsw i64 %i.it, %i.iu
  %i.iw = and i64 %i.iv, 4294967295
  %i.ix = icmp samesign ugt i64 %i.iw, %indvars.iv510
  br i1 %i.ix, label %bb.bc, label %.loopexit517

.loopexit517:                                     ; preds = %bb.bb, %bb.au
  %i.iy = load i64, ptr %i.b, align 8, !tbaa !110
  %i.iz = icmp eq i64 %i.iy, 4611686018427387903
  br i1 %i.iz, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.invoke

bb.bc:                                            ; preds = %bb.bb
  %i.ja = load i64, ptr %i.b, align 8, !tbaa !110
  %i.jb = icmp eq i64 %i.ja, 4611686018427387903
  br i1 %i.jb, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i181: ; preds = %bb.bc
  %i.jc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.70, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit184 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i181
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %i.jd = load ptr, ptr %1, align 8, !tbaa !32, !noalias !442 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load i64, ptr %i.je, align 8, !noalias !442
  %i.jg = trunc i64 %i.jf to i32
  %i.jh = and i32 %i.jg, 1023                     ; 2 uses
  %i.ji = icmp eq i32 %i.jh, 1023
  %i.jj = select i1 %i.ji, i32 -1, i32 %i.jh
  %i.jk = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.jj)
          to label %.noexc186 unwind label %.loopexit.split-lp520.loopexit.split-lp.loopexit.split-lp, !noalias !442

.noexc186:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit184
  %i.jl = icmp eq i32 %i.jk, 2
  %i.jm = zext i1 %i.jl to i64
  %spec.select.i.i185 = add nuw nsw i64 %indvars.iv510, %i.jm
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %sext669 = shl nuw i64 %spec.select.i.i185, 32
  %i.jo = ashr exact i64 %sext669, 29
  %i.jp = getelementptr inbounds i8, ptr %i.jn, i64 %i.jo
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !30, !noalias !442 ; 8 uses
  store ptr %i.jq, ptr %9, align 8, !tbaa !32, !alias.scope !442
  %i.jr = load i64, ptr %i.jq, align 8, !noalias !442 ; 3 uses
  %i.js = lshr i64 %i.jr, 40
  %i.jt = trunc nuw nsw i64 %i.js to i32
  %i.ju = and i32 %i.jt, 1048575                  ; 3 uses
  %i.jv = icmp samesign ult i32 %i.ju, 1048574
  br i1 %i.jv, label %bb.bd, label %bb.be, !prof !93

bb.bd:                                            ; preds = %.noexc186
  %i.jw = add nuw nsw i32 %i.ju, 1
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = shl nuw nsw i64 %i.jx, 40
  %i.jz = and i64 %i.jr, -1152920405095219201
  %i.ka = or i64 %i.jy, %i.jz
  store i64 %i.ka, ptr %i.jq, align 8, !noalias !442
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit188

bb.be:                                            ; preds = %.noexc186
  %i.kb = icmp eq i32 %i.ju, 1048574
  br i1 %i.kb, label %bb.bf, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit188, !prof !92

bb.bf:                                            ; preds = %bb.be
  %i.kc = or i64 %i.jr, 1152920405095219200
  store i64 %i.kc, ptr %i.jq, align 8, !noalias !442
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jq)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit188 unwind label %.loopexit.split-lp520.loopexit.split-lp.loopexit.split-lp, !noalias !442

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit188: ; preds = %bb.be, %bb.bd, %bb.bf
  invoke void @_ZN4cvc58internal6theory7strings9RegExpOpr8mkStringB5cxx11ENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 %9)
          to label %bb.bg unwind label %.loopexit.split-lp525.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit188
  %i.kd = load i64, ptr %i.gc, align 8, !tbaa !110 ; 2 uses
  %i.ke = load i64, ptr %i.b, align 8, !tbaa !110
  %i.kf = sub i64 4611686018427387903, %i.ke
  %i.kg = icmp ult i64 %i.kf, %i.kd
  br i1 %i.kg, label %.loopexit529, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i189

.loopexit529:                                     ; preds = %bb.bg, %bb.ay
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #27
          to label %.noexc190 unwind label %.loopexit.split-lp460.loopexit.split-lp.loopexit.split-lp

.noexc190:                                        ; preds = %.loopexit529
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i189: ; preds = %bb.bg
  %i.kh = load ptr, ptr %8, align 8, !tbaa !112
  %i.ki = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.kh, i64 noundef %i.kd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit192 unwind label %.loopexit.split-lp460.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i189
  %i.kj = load ptr, ptr %8, align 8, !tbaa !112   ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.gd
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit192
  %i.kl = load i64, ptr %i.gd, align 8, !tbaa !111
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.km) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193
  %i.kn = load i64, ptr %i.jq, align 8            ; 3 uses
  %i.ko = and i64 %i.kn, 1152920405095219200
  %.not.i.i196 = icmp eq i64 %i.ko, 1152920405095219200
  br i1 %.not.i.i196, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit197, label %bb.bh, !prof !92

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  %i.kp = add i64 %i.kn, 1152920405095219200
  %i.kq = and i64 %i.kp, 1152920405095219200      ; 2 uses
  %i.kr = and i64 %i.kn, -1152920405095219201
  %i.ks = or disjoint i64 %i.kq, %i.kr
  store i64 %i.ks, ptr %i.jq, align 8
  %i.kt = icmp eq i64 %i.kq, 0
  br i1 %i.kt, label %bb.bi, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit197, !prof !92

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit197 unwind label %.loopexit.split-lp534.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp534.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bi, %bb.ba
  %lpad.loopexit.split-lp724 = landingpad { ptr, i32 }
          catch ptr null
  %i.ku = extractvalue { ptr, i32 } %lpad.loopexit.split-lp724, 0
  call void @__clang_call_terminate(ptr %i.ku) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv510, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit174, !llvm.loop !409

.loopexit.split-lp520.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit184, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit184.peel, %bb.aw
  %lpad.loopexit.split-lp715 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.loopexit.split-lp525.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit188, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit188.peel
  %lpad.loopexit.split-lp718 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

.loopexit.split-lp460.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i189.peel, %.loopexit529
  %lpad.loopexit.split-lp721 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kv = load ptr, ptr %8, align 8, !tbaa !112   ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %i.gd
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %.loopexit.split-lp460.loopexit.split-lp.loopexit.split-lp
  %i.kx = load i64, ptr %i.gd, align 8, !tbaa !111
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.ky) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %.loopexit.split-lp460.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp525.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198
  %.pn103 = phi { ptr, i32 } [ %lpad.loopexit.split-lp721, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198 ], [ %lpad.loopexit.split-lp718, %.loopexit.split-lp525.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp721, %.loopexit.split-lp460.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #23
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit.split-lp520.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
  %.pn103.pn = phi { ptr, i32 } [ %.pn103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200 ], [ %lpad.loopexit.split-lp715, %.loopexit.split-lp520.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.body

bb.bk:                                            ; preds = %bb.h
  %i.kz = load i64, ptr %i.b, align 8, !tbaa !110
  %i.la = icmp eq i64 %i.kz, 4611686018427387903
  br i1 %i.la, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i201: ; preds = %bb.bk
  %i.lb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.69, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit204.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit204.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i201
  %i.lc = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.le = load ptr, ptr %1, align 8, !tbaa !32
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8
  %i.lh = trunc i64 %i.lg to i32
  %i.li = and i32 %i.lh, 1023                     ; 2 uses
  %i.lj = icmp eq i32 %i.li, 1023
  %i.lk = select i1 %i.lj, i32 -1, i32 %i.li
  %i.ll = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.lk)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit204.preheader
  %i.lm = icmp eq i32 %i.ll, 2
  %i.ln = load i64, ptr %i.lf, align 8
  %i.lo = lshr i64 %i.ln, 32
  %i.lp = and i64 %i.lo, 67108863
  %i.lq = sext i1 %i.lm to i64
  %i.lr = add nsw i64 %i.lp, %i.lq
  %i.ls = and i64 %i.lr, 4294967295
  %.not = icmp eq i64 %i.ls, 0
  br i1 %.not, label %.loopexit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit214.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit214.peel: ; preds = %bb.bl
  %.pre = load ptr, ptr %1, align 8, !tbaa !32, !noalias !444 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.lt = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !noalias !444
  %i.lv = trunc i64 %i.lu to i32
  %i.lw = and i32 %i.lv, 1023                     ; 2 uses
  %i.lx = icmp eq i32 %i.lw, 1023
  %i.ly = select i1 %i.lx, i32 -1, i32 %i.lw
  %i.lz = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ly)
          to label %.noexc216.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !444

.noexc216.peel:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit214.peel
  %i.ma = icmp eq i32 %i.lz, 2
  %i.mb = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.mc = zext i1 %i.ma to i64
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.mc
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !30, !noalias !444 ; 8 uses
  store ptr %i.me, ptr %11, align 8, !tbaa !32, !alias.scope !444
  %i.mf = load i64, ptr %i.me, align 8, !noalias !444 ; 3 uses
  %i.mg = lshr i64 %i.mf, 40
  %i.mh = trunc nuw nsw i64 %i.mg to i32
  %i.mi = and i32 %i.mh, 1048575                  ; 3 uses
  %i.mj = icmp samesign ult i32 %i.mi, 1048574
  br i1 %i.mj, label %bb.bo, label %bb.bm, !prof !93

bb.bm:                                            ; preds = %.noexc216.peel
  %i.mk = icmp eq i32 %i.mi, 1048574
  br i1 %i.mk, label %bb.bn, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit218.peel, !prof !92

bb.bn:                                            ; preds = %bb.bm
  %i.ml = or i64 %i.mf, 1152920405095219200
  store i64 %i.ml, ptr %i.me, align 8, !noalias !444
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.me)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit218.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !444

bb.bo:                                            ; preds = %.noexc216.peel
  %i.mm = add nuw nsw i32 %i.mi, 1
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = shl nuw nsw i64 %i.mn, 40
  %i.mp = and i64 %i.mf, -1152920405095219201
  %i.mq = or i64 %i.mo, %i.mp
  store i64 %i.mq, ptr %i.me, align 8, !noalias !444
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit218.peel

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit218.peel: ; preds = %bb.bo, %bb.bn, %bb.bm
  invoke void @_ZN4cvc58internal6theory7strings9RegExpOpr8mkStringB5cxx11ENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 %11)
          to label %bb.bp unwind label %.loopexit.split-lp497.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit218.peel
  %i.mr = load i64, ptr %i.lc, align 8, !tbaa !110 ; 2 uses
  %i.ms = load i64, ptr %i.b, align 8, !tbaa !110
  %i.mt = sub i64 4611686018427387903, %i.ms
  %i.mu = icmp ult i64 %i.mt, %i.mr
  br i1 %i.mu, label %.loopexit501, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i219.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i219.peel: ; preds = %bb.bp
  %i.mv = load ptr, ptr %10, align 8, !tbaa !112
  %i.mw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.mv, i64 noundef %i.mr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit222.peel unwind label %.loopexit.split-lp467.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit222.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i219.peel
  %i.mx = load ptr, ptr %10, align 8, !tbaa !112  ; 2 uses
  %i.my = icmp eq ptr %i.mx, %i.ld
  br i1 %i.my, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit222.peel
  %i.mz = load i64, ptr %i.ld, align 8, !tbaa !111
  %i.na = add i64 %i.mz, 1
  call void @_ZdlPvm(ptr noundef %i.mx, i64 noundef %i.na) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit222.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223.peel
  %i.nb = load i64, ptr %i.me, align 8            ; 3 uses
  %i.nc = and i64 %i.nb, 1152920405095219200
  %.not.i.i226.peel = icmp eq i64 %i.nc, 1152920405095219200
  br i1 %.not.i.i226.peel, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit227.peel, label %bb.bq, !prof !92

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.peel
  %i.nd = add i64 %i.nb, 1152920405095219200
  %i.ne = and i64 %i.nd, 1152920405095219200      ; 2 uses
  %i.nf = and i64 %i.nb, -1152920405095219201
  %i.ng = or disjoint i64 %i.ne, %i.nf
  store i64 %i.ng, ptr %i.me, align 8
  %i.nh = icmp eq i64 %i.ne, 0
  br i1 %i.nh, label %bb.br, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit227.peel, !prof !92

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.me)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit227.peel unwind label %.loopexit.split-lp506.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit227.peel: ; preds = %bb.br, %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit204: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit227.peel, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit227
  %indvars.iv = phi i64 [ 1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit227.peel ], [ %indvars.iv.next, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit227 ] ; 3 uses
  %i.ni = load ptr, ptr %1, align 8, !tbaa !32
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8 ; 2 uses
  %i.nk = load i64, ptr %i.nj, align 8
  %i.nl = trunc i64 %i.nk to i32
  %i.nm = and i32 %i.nl, 1023                     ; 2 uses
  %i.nn = icmp eq i32 %i.nm, 1023
  %i.no = select i1 %i.nn, i32 -1, i32 %i.nm
  %i.np = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.no)
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit204
  %i.nq = icmp eq i32 %i.np, 2
  %i.nr = load i64, ptr %i.nj, align 8
  %i.ns = lshr i64 %i.nr, 32
  %i.nt = and i64 %i.ns, 67108863
  %i.nu = sext i1 %i.nq to i64
  %i.nv = add nsw i64 %i.nt, %i.nu
  %i.nw = and i64 %i.nv, 4294967295
  %i.nx = icmp samesign ugt i64 %i.nw, %indvars.iv
  br i1 %i.nx, label %bb.bt, label %.loopexit

.loopexit:                                        ; preds = %bb.bs, %bb.bl
  %i.ny = load i64, ptr %i.b, align 8, !tbaa !110
  %i.nz = icmp eq i64 %i.ny, 4611686018427387903
  br i1 %i.nz, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.invoke

bb.bt:                                            ; preds = %bb.bs
  %i.oa = load i64, ptr %i.b, align 8, !tbaa !110
  %i.ob = icmp eq i64 %i.oa, 4611686018427387903
  br i1 %i.ob, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i211: ; preds = %bb.bt
  %i.oc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit214 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i211
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.od = load ptr, ptr %1, align 8, !tbaa !32, !noalias !445 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = load i64, ptr %i.oe, align 8, !noalias !445
  %i.og = trunc i64 %i.of to i32
  %i.oh = and i32 %i.og, 1023                     ; 2 uses
  %i.oi = icmp eq i32 %i.oh, 1023
  %i.oj = select i1 %i.oi, i32 -1, i32 %i.oh
  %i.ok = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.oj)
          to label %.noexc216 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !445

.noexc216:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit214
  %i.ol = icmp eq i32 %i.ok, 2
  %i.om = zext i1 %i.ol to i64
  %spec.select.i.i215 = add nuw nsw i64 %indvars.iv, %i.om
  %i.on = getelementptr inbounds nuw i8, ptr %i.od, i64 24
  %sext = shl nuw i64 %spec.select.i.i215, 32
  %i.oo = ashr exact i64 %sext, 29
  %i.op = getelementptr inbounds i8, ptr %i.on, i64 %i.oo
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !30, !noalias !445 ; 8 uses
  store ptr %i.oq, ptr %11, align 8, !tbaa !32, !alias.scope !445
  %i.or = load i64, ptr %i.oq, align 8, !noalias !445 ; 3 uses
  %i.os = lshr i64 %i.or, 40
  %i.ot = trunc nuw nsw i64 %i.os to i32
  %i.ou = and i32 %i.ot, 1048575                  ; 3 uses
  %i.ov = icmp samesign ult i32 %i.ou, 1048574
  br i1 %i.ov, label %bb.bu, label %bb.bv, !prof !93

bb.bu:                                            ; preds = %.noexc216
  %i.ow = add nuw nsw i32 %i.ou, 1
  %i.ox = zext nneg i32 %i.ow to i64
  %i.oy = shl nuw nsw i64 %i.ox, 40
  %i.oz = and i64 %i.or, -1152920405095219201
  %i.pa = or i64 %i.oy, %i.oz
  store i64 %i.pa, ptr %i.oq, align 8, !noalias !445
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit218

bb.bv:                                            ; preds = %.noexc216
  %i.pb = icmp eq i32 %i.ou, 1048574
  br i1 %i.pb, label %bb.bw, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit218, !prof !92

bb.bw:                                            ; preds = %bb.bv
  %i.pc = or i64 %i.or, 1152920405095219200
  store i64 %i.pc, ptr %i.oq, align 8, !noalias !445
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.oq)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit218 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !445

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit218: ; preds = %bb.bv, %bb.bu, %bb.bw
  invoke void @_ZN4cvc58internal6theory7strings9RegExpOpr8mkStringB5cxx11ENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 %11)
          to label %bb.bx unwind label %.loopexit.split-lp497.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit218
  %i.pd = load i64, ptr %i.lc, align 8, !tbaa !110 ; 2 uses
  %i.pe = load i64, ptr %i.b, align 8, !tbaa !110
  %i.pf = sub i64 4611686018427387903, %i.pe
  %i.pg = icmp ult i64 %i.pf, %i.pd
  br i1 %i.pg, label %.loopexit501, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i219

.loopexit501:                                     ; preds = %bb.bx, %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #27
          to label %.noexc220 unwind label %.loopexit.split-lp467.loopexit.split-lp.loopexit.split-lp

.noexc220:                                        ; preds = %.loopexit501
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i219: ; preds = %bb.bx
  %i.ph = load ptr, ptr %10, align 8, !tbaa !112
  %i.pi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ph, i64 noundef %i.pd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit222 unwind label %.loopexit.split-lp467.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i219
  %i.pj = load ptr, ptr %10, align 8, !tbaa !112  ; 2 uses
  %i.pk = icmp eq ptr %i.pj, %i.ld
  br i1 %i.pk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit222
  %i.pl = load i64, ptr %i.ld, align 8, !tbaa !111
  %i.pm = add i64 %i.pl, 1
  call void @_ZdlPvm(ptr noundef %i.pj, i64 noundef %i.pm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223
  %i.pn = load i64, ptr %i.oq, align 8            ; 3 uses
  %i.po = and i64 %i.pn, 1152920405095219200
  %.not.i.i226 = icmp eq i64 %i.po, 1152920405095219200
  br i1 %.not.i.i226, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit227, label %bb.by, !prof !92

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225
  %i.pp = add i64 %i.pn, 1152920405095219200
  %i.pq = and i64 %i.pp, 1152920405095219200      ; 2 uses
  %i.pr = and i64 %i.pn, -1152920405095219201
  %i.ps = or disjoint i64 %i.pq, %i.pr
  store i64 %i.ps, ptr %i.oq, align 8
  %i.pt = icmp eq i64 %i.pq, 0
  br i1 %i.pt, label %bb.bz, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit227, !prof !92

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.oq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit227 unwind label %.loopexit.split-lp506.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp506.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bz, %bb.br
  %lpad.loopexit.split-lp739 = landingpad { ptr, i32 }
          catch ptr null
  %i.pu = extractvalue { ptr, i32 } %lpad.loopexit.split-lp739, 0
  call void @__clang_call_terminate(ptr %i.pu) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit227: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit204, !llvm.loop !414

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit214, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit214.peel, %bb.bn
  %lpad.loopexit.split-lp730 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp497.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit218, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit218.peel
  %lpad.loopexit.split-lp733 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

.loopexit.split-lp467.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i219.peel, %.loopexit501
  %lpad.loopexit.split-lp736 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pv = load ptr, ptr %10, align 8, !tbaa !112  ; 2 uses
  %i.pw = icmp eq ptr %i.pv, %i.ld
  br i1 %i.pw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %.loopexit.split-lp467.loopexit.split-lp.loopexit.split-lp
  %i.px = load i64, ptr %i.ld, align 8, !tbaa !111
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.py) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %.loopexit.split-lp467.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp497.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  %.pn98 = phi { ptr, i32 } [ %lpad.loopexit.split-lp736, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228 ], [ %lpad.loopexit.split-lp733, %.loopexit.split-lp497.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp736, %.loopexit.split-lp467.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #23
  br label %bb.ca
end_hunk_0
