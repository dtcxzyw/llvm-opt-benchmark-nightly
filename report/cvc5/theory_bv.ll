Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/theory_bv?download=true
inline.NumInlined: 2477
inline.NumDeleted: 590
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE130EE5applyENS0_12NodeTemplateILb0EEE:bb.a
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !644)
  %i.dq = trunc i64 %i.dh to i32
  %i.dr = and i32 %i.dq, 1023                     ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 1023
  %i.dt = select i1 %i.ds, i32 -1, i32 %i.dr
  %i.du = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.dt)
          to label %bb.af unwind label %bb.ad

bb.af:                                            ; preds = %bb.ae
  %i.dv = icmp eq i32 %i.du, 2
  %i.dw = zext i1 %i.dv to i32
  %spec.select.i.i153 = add nsw i32 %.047, %i.dw
  %i.dx = sext i32 %spec.select.i.i153 to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !284, !noalias !644
  store ptr %i.dz, ptr %23, align 8, !tbaa !275, !alias.scope !644
  invoke fastcc void @_ZN4cvc58internal6theory2bvL13updateCoefMapENS0_12NodeTemplateILb0EEEjRSt3mapINS3_ILb1EEENS0_9BitVectorESt4lessIS6_ESaISt4pairIKS6_S7_EEERS7_(ptr noundef align 8 %23, i32 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ea = add nuw i32 %.047, 1
  %.pre417 = load i64, ptr %i.cv, align 8
  br label %bb.ab, !llvm.loop !626

bb.ah:                                            ; preds = %bb.af
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

bb.ai:                                            ; preds = %.loopexit385
  %i.ec = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 99)
          to label %.critedge138 unwind label %bb.aj

.critedge138:                                     ; preds = %bb.ai
  %i.ed = icmp eq i32 %i.ec, 2
  %i.ee = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ef = zext i1 %i.ed to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !284, !noalias !645
  %i.ei = icmp eq ptr %i.eh, %i.o
  br i1 %i.ei, label %.invoke, label %.critedge138.thread

.invoke:                                          ; preds = %.critedge136, %.critedge138
  invoke void @_ZN4cvc58internal6theory2bv5utils7mkFalseEPNS0_11NodeManagerE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef %i.c)
          to label %bb.jq unwind label %bb.z

bb.aj:                                            ; preds = %bb.ai
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

.critedge138.thread:                              ; preds = %.loopexit385, %.critedge138
  store ptr %i.aa, ptr %24, align 8, !tbaa !275
  invoke fastcc void @_ZN4cvc58internal6theory2bvL13updateCoefMapENS0_12NodeTemplateILb0EEEjRSt3mapINS3_ILb1EEENS0_9BitVectorESt4lessIS6_ESaISt4pairIKS6_S7_EEERS7_(ptr noundef align 8 %24, i32 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %.loopexit383 unwind label %bb.ak

bb.ak:                                            ; preds = %.critedge138.thread
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

.loopexit383:                                     ; preds = %bb.ac, %.critedge138.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  %i.el = load ptr, ptr %i.aw, align 8, !tbaa !310 ; 5 uses
  %i.em = load ptr, ptr %i.bb, align 8, !tbaa !310 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  store i32 0, ptr %27, align 8, !tbaa !292
  %i.en = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 6 uses
  call void @__gmpz_init(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #22
  %i.eo = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.ep = icmp eq i8 %i.eo, 0
  br i1 %i.ep, label %bb.al, label %bb.ap, !prof !288

bb.al:                                            ; preds = %.loopexit383
  %i.eq = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  %.not.i.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.er = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.an unwind label %bb.ao     ; 3 uses

bb.an:                                            ; preds = %bb.am
  store i64 1152920405095219200, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.es, i8 0, i64 16, i1 false)
  store ptr %i.er, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !284
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %.body157

bb.ap:                                            ; preds = %bb.an, %bb.al, %.loopexit383
  %i.eu = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !284 ; 3 uses
  %.not = icmp eq ptr %i.el, %i.au
  br i1 %.not, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !292
  store i32 %i.ew, ptr %27, align 8, !tbaa !292
  %i.ex = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  invoke void @__gmpz_set(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.ex)
          to label %_ZN4cvc58internal9BitVectoraSERKS1_.exit unwind label %bb.ar

_ZN4cvc58internal9BitVectoraSERKS1_.exit:         ; preds = %bb.aq
  %i.ey = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !277 ; 2 uses
  %.not.i159 = icmp eq ptr %i.eu, %i.ez
  %spec.select = select i1 %.not.i159, ptr %i.eu, ptr %i.ez, !prof !247
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body157

bb.as:                                            ; preds = %_ZN4cvc58internal9BitVectoraSERKS1_.exit, %bb.ap
  %.sroa.0301.0 = phi ptr [ %i.eu, %bb.ap ], [ %spec.select, %_ZN4cvc58internal9BitVectoraSERKS1_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  store i32 0, ptr %28, align 8, !tbaa !292
  %i.fb = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 6 uses
  call void @__gmpz_init(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #22
  %i.fc = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.fd = icmp eq i8 %i.fc, 0
  br i1 %i.fd, label %bb.at, label %bb.ax, !prof !288

bb.at:                                            ; preds = %bb.as
  %i.fe = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  %.not.i.i160 = icmp eq i32 %i.fe, 0
  br i1 %.not.i.i160, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ff = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.av unwind label %bb.aw     ; 3 uses

bb.av:                                            ; preds = %bb.au
  store i64 1152920405095219200, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i8 0, i64 16, i1 false)
  store ptr %i.ff, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !284
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %.body161

bb.ax:                                            ; preds = %bb.av, %bb.at, %bb.as
  %i.fi = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !284 ; 3 uses
  %.not378 = icmp eq ptr %i.em, %i.az
  br i1 %.not378, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit166, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fj = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !292
  store i32 %i.fk, ptr %28, align 8, !tbaa !292
  %i.fl = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  invoke void @__gmpz_set(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(16) %i.fl)
          to label %_ZN4cvc58internal9BitVectoraSERKS1_.exit164 unwind label %bb.az

_ZN4cvc58internal9BitVectoraSERKS1_.exit164:      ; preds = %bb.ay
  %i.fm = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !277 ; 2 uses
  %.not.i165 = icmp eq ptr %i.fi, %i.fn
  %spec.select376 = select i1 %.not.i165, ptr %i.fi, ptr %i.fn, !prof !247
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit166

bb.az:                                            ; preds = %bb.ay
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.body161

_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit166: ; preds = %_ZN4cvc58internal9BitVectoraSERKS1_.exit164, %bb.ax
  %.sroa.0.0 = phi ptr [ %i.fi, %bb.ax ], [ %spec.select376, %_ZN4cvc58internal9BitVectoraSERKS1_.exit164 ]
  %i.fp = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 3 uses
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer.outer

_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer.outer: ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit166, %_ZN4cvc58internal9BitVectoraSERKS1_.exit178
  %.sroa.0329.0.ph.ph = phi ptr [ %i.el, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit166 ], [ %.sroa.0329.1373, %_ZN4cvc58internal9BitVectoraSERKS1_.exit178 ]
  %.sroa.0313.0.ph.ph = phi ptr [ %i.em, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit166 ], [ %i.hl, %_ZN4cvc58internal9BitVectoraSERKS1_.exit178 ]
  %.sroa.0301.1.ph.ph = phi ptr [ %.sroa.0301.0, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit166 ], [ %.sroa.0301.2375, %_ZN4cvc58internal9BitVectoraSERKS1_.exit178 ]
  %.sroa.0.1.ph.ph = phi ptr [ %.sroa.0.0, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit166 ], [ %spec.select377, %_ZN4cvc58internal9BitVectoraSERKS1_.exit178 ] ; 6 uses
  %.044.ph.ph = phi i8 [ 0, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit166 ], [ %.1361371, %_ZN4cvc58internal9BitVectoraSERKS1_.exit178 ]
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer

_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer: ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer.outer, %_ZN4cvc58internal9BitVectorD2Ev.exit.thread365
  %.sroa.0329.0.ph = phi ptr [ %.sroa.0329.1373, %_ZN4cvc58internal9BitVectorD2Ev.exit.thread365 ], [ %.sroa.0329.0.ph.ph, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer.outer ]
  %.sroa.0313.0.ph = phi ptr [ %i.hl, %_ZN4cvc58internal9BitVectorD2Ev.exit.thread365 ], [ %.sroa.0313.0.ph.ph, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer.outer ] ; 2 uses
  %.sroa.0301.1.ph = phi ptr [ %.sroa.0301.2375, %_ZN4cvc58internal9BitVectorD2Ev.exit.thread365 ], [ %.sroa.0301.1.ph.ph, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer.outer ]
  %.044.ph = phi i8 [ %.1361371, %_ZN4cvc58internal9BitVectorD2Ev.exit.thread365 ], [ %.044.ph.ph, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer.outer ]
  %.not380 = icmp eq ptr %.sroa.0313.0.ph, %i.az  ; 2 uses
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer498

_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer498: ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer, %.split
  %.sroa.0329.0.ph499 = phi ptr [ %.sroa.0329.0.ph, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer ], [ %i.hf, %.split ]
  %.sroa.0301.1.ph500 = phi ptr [ %.sroa.0301.1.ph, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer ], [ %i.hk, %.split ] ; 7 uses
  %.044.ph502 = phi i8 [ %.044.ph, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer ], [ %.1.ph, %.split ]
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180

_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180: ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer498, %_ZN4cvc58internal9BitVectorD2Ev.exit
  %.sroa.0329.0 = phi ptr [ %i.hf, %_ZN4cvc58internal9BitVectorD2Ev.exit ], [ %.sroa.0329.0.ph499, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer498 ] ; 3 uses
  %.044 = phi i8 [ %.1.ph, %_ZN4cvc58internal9BitVectorD2Ev.exit ], [ %.044.ph502, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer498 ] ; 5 uses
  %.not379 = icmp eq ptr %.sroa.0329.0, %i.au
  br i1 %.not379, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180
  br i1 %.not380, label %bb.cj, label %.critedge.thread

bb.bb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180
  br i1 %.not380, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ft = load i64, ptr %.sroa.0301.1.ph500, align 8
  %i.fu = and i64 %i.ft, 1099511627775
  %i.fv = load i64, ptr %.sroa.0.1.ph.ph, align 8
  %i.fw = and i64 %i.fv, 1099511627775
  %i.fx = icmp samesign ult i64 %i.fu, %i.fw
  br i1 %i.fx, label %bb.bd, label %.critedge

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  store ptr %.sroa.0301.1.ph500, ptr %29, align 8, !tbaa !275
  %i.fy = load i32, ptr %27, align 8, !tbaa !292
  store i32 %i.fy, ptr %30, align 8, !tbaa !292
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %_ZN4cvc58internal9BitVectorC2ERKS1_.exit unwind label %bb.bg

_ZN4cvc58internal9BitVectorC2ERKS1_.exit:         ; preds = %bb.bd
  invoke fastcc void @_ZN4cvc58internal6theory2bvL13addToChildrenENS0_12NodeTemplateILb0EEEjNS0_9BitVectorERSt6vectorINS3_ILb1EEESaIS7_EE(ptr noundef align 8 %29, i32 noundef %i.ab, ptr noundef align 8 %30, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %_ZN4cvc58internal9BitVectorC2ERKS1_.exit
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.fp)
          to label %bb.cg unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #25
  unreachable

.loopexit.loopexit:                               ; preds = %bb.ch, %bb.bx, %bb.bo
  %lpad.loopexit496 = landingpad { ptr, i32 }
          cleanup
  br label %.body161

.loopexit.loopexit.split-lp:                      ; preds = %bb.ci
  %lpad.loopexit.split-lp497 = landingpad { ptr, i32 }
          cleanup
  br label %.body161

.loopexit.split-lp:                               ; preds = %bb.cj, %bb.cl, %_ZN4cvc58internal9BitVectoraSERKS1_.exit182, %bb.de, %_ZN4cvc58internal9BitVectorD2Ev.exit181
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body161

bb.bg:                                            ; preds = %bb.bd
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body161

bb.bh:                                            ; preds = %_ZN4cvc58internal9BitVectorC2ERKS1_.exit
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.fp)
          to label %.body161 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #25
  unreachable

.critedge:                                        ; preds = %bb.bc
  %i.gf = load i64, ptr %.sroa.0.1.ph.ph, align 8
  %i.gg = and i64 %i.gf, 1099511627775
  %i.gh = load i64, ptr %.sroa.0301.1.ph500, align 8
  %i.gi = and i64 %i.gh, 1099511627775
  %i.gj = icmp samesign ult i64 %i.gg, %i.gi
  br i1 %i.gj, label %.critedge.thread, label %bb.bo

.critedge.thread:                                 ; preds = %.critedge, %bb.ba
  store ptr %.sroa.0.1.ph.ph, ptr %31, align 8, !tbaa !275
  %i.gk = load i32, ptr %28, align 8, !tbaa !292
  store i32 %i.gk, ptr %32, align 8, !tbaa !292
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, ptr noundef nonnull align 8 dereferenceable(16) %i.fb)
          to label %_ZN4cvc58internal9BitVectorC2ERKS1_.exit168 unwind label %bb.bl

_ZN4cvc58internal9BitVectorC2ERKS1_.exit168:      ; preds = %.critedge.thread
  invoke fastcc void @_ZN4cvc58internal6theory2bvL13addToChildrenENS0_12NodeTemplateILb0EEEjNS0_9BitVectorERSt6vectorINS3_ILb1EEESaIS7_EE(ptr noundef align 8 %31, i32 noundef %i.ab, ptr noundef align 8 %32, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %_ZN4cvc58internal9BitVectorC2ERKS1_.exit168
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.fs)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit.thread365 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #25
  unreachable

bb.bl:                                            ; preds = %.critedge.thread
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.body161

bb.bm:                                            ; preds = %_ZN4cvc58internal9BitVectorC2ERKS1_.exit168
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.fs)
          to label %.body161 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #25
  unreachable

bb.bo:                                            ; preds = %.critedge
  %i.gr = invoke noundef zeroext i1 @_ZN4cvc58internalgtERKNS0_9BitVectorES3_(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %28)
          to label %bb.bp unwind label %.loopexit.loopexit

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.gr, label %bb.bq, label %bb.bx

bb.bq:                                            ; preds = %bb.bp
  store ptr %.sroa.0301.1.ph500, ptr %33, align 8, !tbaa !275
  invoke void @_ZN4cvc58internalmiERKNS0_9BitVectorES3_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::BitVector") align 8 %34, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %28)
          to label %bb.br unwind label %bb.bu

bb.br:                                            ; preds = %bb.bq
  invoke fastcc void @_ZN4cvc58internal6theory2bvL13addToChildrenENS0_12NodeTemplateILb0EEEjNS0_9BitVectorERSt6vectorINS3_ILb1EEESaIS7_EE(ptr noundef align 8 %33, i32 noundef %i.ab, ptr noundef align 8 %34, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.bs unwind label %bb.bv

bb.bs:                                            ; preds = %bb.br
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.fr)
          to label %bb.cg unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  call void @__clang_call_terminate(ptr %i.gt) #25
  unreachable

bb.bu:                                            ; preds = %bb.bq
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body161

bb.bv:                                            ; preds = %bb.br
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.fr)
          to label %.body161 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @__clang_call_terminate(ptr %i.gx) #25
  unreachable

bb.bx:                                            ; preds = %bb.bp
  %i.gy = invoke noundef zeroext i1 @_ZN4cvc58internalgtERKNS0_9BitVectorES3_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %27)
          to label %bb.by unwind label %.loopexit.loopexit

bb.by:                                            ; preds = %bb.bx
  br i1 %i.gy, label %bb.bz, label %bb.cg

bb.bz:                                            ; preds = %bb.by
  store ptr %.sroa.0.1.ph.ph, ptr %35, align 8, !tbaa !275
  invoke void @_ZN4cvc58internalmiERKNS0_9BitVectorES3_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::BitVector") align 8 %36, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %27)
          to label %bb.ca unwind label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  invoke fastcc void @_ZN4cvc58internal6theory2bvL13addToChildrenENS0_12NodeTemplateILb0EEEjNS0_9BitVectorERSt6vectorINS3_ILb1EEESaIS7_EE(ptr noundef align 8 %35, i32 noundef %i.ab, ptr noundef align 8 %36, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.cb unwind label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.fq)
          to label %bb.cg unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #25
  unreachable

bb.cd:                                            ; preds = %bb.bz
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %.body161

bb.ce:                                            ; preds = %bb.ca
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.fq)
          to label %.body161 unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #25
  unreachable

bb.cg:                                            ; preds = %bb.be, %bb.by, %bb.bs, %bb.cb
  %.1.ph = phi i8 [ 1, %bb.cb ], [ 1, %bb.bs ], [ 1, %bb.by ], [ %.044, %bb.be ] ; 4 uses
  %.0.ph = phi i1 [ true, %bb.cb ], [ true, %bb.bs ], [ true, %bb.by ], [ false, %bb.be ] ; 2 uses
  %i.hf = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0329.0) #27 ; 8 uses
  %.not381 = icmp eq ptr %i.hf, %i.au
  br i1 %.not381, label %_ZN4cvc58internal9BitVectorD2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !292
  store i32 %i.hh, ptr %27, align 8, !tbaa !292
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  invoke void @__gmpz_set(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.hi)
          to label %_ZN4cvc58internal9BitVectoraSERKS1_.exit175 unwind label %.loopexit.loopexit

_ZN4cvc58internal9BitVectoraSERKS1_.exit175:      ; preds = %bb.ch
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !277 ; 3 uses
  %.not.i176 = icmp eq ptr %.sroa.0301.1.ph500, %i.hk
  br i1 %.not.i176, label %_ZN4cvc58internal9BitVectorD2Ev.exit, label %.split, !prof !247

.split:                                           ; preds = %_ZN4cvc58internal9BitVectoraSERKS1_.exit175
  br i1 %.0.ph, label %_ZN4cvc58internal9BitVectorD2Ev.exit.thread365, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer498, !llvm.loop !629

_ZN4cvc58internal9BitVectorD2Ev.exit:             ; preds = %_ZN4cvc58internal9BitVectoraSERKS1_.exit175, %bb.cg
  br i1 %.0.ph, label %_ZN4cvc58internal9BitVectorD2Ev.exit.thread365, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180, !llvm.loop !629

_ZN4cvc58internal9BitVectorD2Ev.exit.thread365:   ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit, %.split, %bb.bj
  %.sroa.0301.2375 = phi ptr [ %.sroa.0301.1.ph500, %bb.bj ], [ %.sroa.0301.1.ph500, %_ZN4cvc58internal9BitVectorD2Ev.exit ], [ %i.hk, %.split ] ; 2 uses
  %.sroa.0329.1373 = phi ptr [ %.sroa.0329.0, %bb.bj ], [ %i.hf, %.split ], [ %i.hf, %_ZN4cvc58internal9BitVectorD2Ev.exit ] ; 2 uses
  %.1361371 = phi i8 [ %.044, %bb.bj ], [ %.1.ph, %.split ], [ %.1.ph, %_ZN4cvc58internal9BitVectorD2Ev.exit ] ; 2 uses
  %i.hl = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0313.0.ph) #27 ; 6 uses
  %.not382 = icmp eq ptr %i.hl, %i.az
  br i1 %.not382, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer, label %bb.ci, !llvm.loop !629

bb.ci:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit.thread365
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 40
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !292
  store i32 %i.hn, ptr %28, align 8, !tbaa !292
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 48
  invoke void @__gmpz_set(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(16) %i.ho)
          to label %_ZN4cvc58internal9BitVectoraSERKS1_.exit178 unwind label %.loopexit.loopexit.split-lp

_ZN4cvc58internal9BitVectoraSERKS1_.exit178:      ; preds = %bb.ci
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !277 ; 2 uses
  %.not.i179 = icmp eq ptr %.sroa.0.1.ph.ph, %i.hq
  %spec.select377 = select i1 %.not.i179, ptr %.sroa.0.1.ph.ph, ptr %i.hq, !prof !247
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKNS1_ILb1EEE.exit180.outer.outer, !llvm.loop !629

bb.cj:                                            ; preds = %bb.ba
  %i.hr = invoke noundef zeroext i1 @_ZN4cvc58internalneERKNS0_9BitVectorES3_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.ck unwind label %.loopexit.split-lp

bb.ck:                                            ; preds = %bb.cj
  br i1 %i.hr, label %bb.cl, label %bb.de

bb.cl:                                            ; preds = %bb.ck
  %i.hs = invoke noundef zeroext i1 @_ZN4cvc58internalneERKNS0_9BitVectorES3_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.cm unwind label %.loopexit.split-lp

bb.cm:                                            ; preds = %bb.cl
  %50 = zext i1 %i.hs to i8
  %51 = or i8 %.044, %50
  %52 = icmp ne i8 %51, 0
  %53 = zext i1 %52 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  invoke void @_ZN4cvc58internalmiERKNS0_9BitVectorES3_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::BitVector") align 8 %37, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.cn unwind label %bb.da

bb.cn:                                            ; preds = %bb.cm
  %i.ht = load i32, ptr %37, align 8, !tbaa !292
  store i32 %i.ht, ptr %18, align 8, !tbaa !292
  %i.hu = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !tbaa.struct !309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.hu, i64 16, i1 false), !tbaa.struct !309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !309
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.hu)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit181 unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.hv = landingpad { ptr, i32 }
          catch ptr null
  %i.hw = extractvalue { ptr, i32 } %i.hv, 0
  call void @__clang_call_terminate(ptr %i.hw) #25
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit181:          ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  %i.hx = load i32, ptr %16, align 8, !tbaa !292
  store i32 %i.hx, ptr %17, align 8, !tbaa !292
  invoke void @__gmpz_set(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %_ZN4cvc58internal9BitVectoraSERKS1_.exit182 unwind label %.loopexit.split-lp

_ZN4cvc58internal9BitVectoraSERKS1_.exit182:      ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit181
  %i.hy = invoke noundef zeroext i1 @_ZN4cvc58internalneERKNS0_9BitVectorES3_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.cp unwind label %.loopexit.split-lp

bb.cp:                                            ; preds = %_ZN4cvc58internal9BitVectoraSERKS1_.exit182
  br i1 %i.hy, label %bb.cq, label %bb.dt

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  invoke void @_ZN4cvc58internal6theory2bv5utils7mkConstEPNS0_11NodeManagerERKNS0_9BitVectorE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %38, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.cr unwind label %bb.db

bb.cr:                                            ; preds = %bb.cq
  %i.hz = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !314 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !315
  %.not.i.i183 = icmp eq ptr %i.ia, %i.ic
  br i1 %.not.i.i183, label %bb.cw, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.id = load ptr, ptr %38, align 8, !tbaa !277  ; 5 uses
  store ptr %i.id, ptr %i.ia, align 8, !tbaa !277
  %i.ie = load i64, ptr %i.id, align 8            ; 3 uses
  %i.if = lshr i64 %i.ie, 40
  %i.ig = trunc nuw nsw i64 %i.if to i32
  %i.ih = and i32 %i.ig, 1048575                  ; 3 uses
  %i.ii = icmp samesign ult i32 %i.ih, 1048574
  br i1 %i.ii, label %bb.ct, label %bb.cu, !prof !282

bb.ct:                                            ; preds = %bb.cs
  %i.ij = add nuw nsw i32 %i.ih, 1
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = shl nuw nsw i64 %i.ik, 40
  %i.im = and i64 %i.ie, -1152920405095219201
  %i.in = or i64 %i.il, %i.im
  store i64 %i.in, ptr %i.id, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.cu:                                            ; preds = %bb.cs
  %i.io = icmp eq i32 %i.ih, 1048574
  br i1 %i.io, label %bb.cv, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !247

bb.cv:                                            ; preds = %bb.cu
  %i.ip = or i64 %i.ie, 1152920405095219200
  store i64 %i.ip, ptr %i.id, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.id)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %bb.dc

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.cv, %bb.cu, %bb.ct
  %i.iq = load ptr, ptr %i.hz, align 8, !tbaa !314
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store ptr %i.ir, ptr %i.hz, align 8, !tbaa !314
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit

bb.cw:                                            ; preds = %bb.cr
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr %i.ia, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit unwind label %bb.dc

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, %bb.cw
  %i.is = load ptr, ptr %38, align 8, !tbaa !277  ; 3 uses
  %i.it = load i64, ptr %i.is, align 8            ; 3 uses
  %i.iu = and i64 %i.it, 1152920405095219200
  %.not.i.i185 = icmp eq i64 %i.iu, 1152920405095219200
  br i1 %.not.i.i185, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.cx, !prof !247

bb.cx:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit
  %i.iv = add i64 %i.it, 1152920405095219200
  %i.iw = and i64 %i.iv, 1152920405095219200      ; 2 uses
  %i.ix = and i64 %i.it, -1152920405095219201
  %i.iy = or disjoint i64 %i.iw, %i.ix
  store i64 %i.iy, ptr %i.is, align 8
  %i.iz = icmp eq i64 %i.iw, 0
  br i1 %i.iz, label %bb.cy, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !247

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.is)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ja = landingpad { ptr, i32 }
          catch ptr null
  %i.jb = extractvalue { ptr, i32 } %i.ja, 0
  call void @__clang_call_terminate(ptr %i.jb) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit, %bb.cx, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  br label %bb.dt

bb.da:                                            ; preds = %bb.cm
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  br label %.body161

bb.db:                                            ; preds = %bb.cq
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cw, %bb.cv
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #22
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn89 = phi { ptr, i32 } [ %i.je, %bb.dc ], [ %i.jd, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  br label %.body161

bb.de:                                            ; preds = %bb.ck
  %i.jf = invoke noundef zeroext i1 @_ZN4cvc58internalneERKNS0_9BitVectorES3_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.df unwind label %.loopexit.split-lp

bb.df:                                            ; preds = %bb.de
  br i1 %i.jf, label %bb.dg, label %bb.dt

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  invoke void @_ZN4cvc58internal6theory2bv5utils7mkConstEPNS0_11NodeManagerERKNS0_9BitVectorE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %39, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.dh unwind label %bb.dq

bb.dh:                                            ; preds = %bb.dg
  %i.jg = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !314 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !315
  %.not.i.i186 = icmp eq ptr %i.jh, %i.jj
  br i1 %.not.i.i186, label %bb.dm, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.jk = load ptr, ptr %39, align 8, !tbaa !277  ; 5 uses
  store ptr %i.jk, ptr %i.jh, align 8, !tbaa !277
  %i.jl = load i64, ptr %i.jk, align 8            ; 3 uses
  %i.jm = lshr i64 %i.jl, 40
  %i.jn = trunc nuw nsw i64 %i.jm to i32
  %i.jo = and i32 %i.jn, 1048575                  ; 3 uses
  %i.jp = icmp samesign ult i32 %i.jo, 1048574
  br i1 %i.jp, label %bb.dj, label %bb.dk, !prof !282

bb.dj:                                            ; preds = %bb.di
  %i.jq = add nuw nsw i32 %i.jo, 1
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = shl nuw nsw i64 %i.jr, 40
  %i.jt = and i64 %i.jl, -1152920405095219201
  %i.ju = or i64 %i.js, %i.jt
  store i64 %i.ju, ptr %i.jk, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i187

bb.dk:                                            ; preds = %bb.di
  %i.jv = icmp eq i32 %i.jo, 1048574
  br i1 %i.jv, label %bb.dl, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i187, !prof !247

bb.dl:                                            ; preds = %bb.dk
  %i.jw = or i64 %i.jl, 1152920405095219200
  store i64 %i.jw, ptr %i.jk, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i187 unwind label %bb.dr

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i187: ; preds = %bb.dl, %bb.dk, %bb.dj
  %i.jx = load ptr, ptr %i.jg, align 8, !tbaa !314
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store ptr %i.jy, ptr %i.jg, align 8, !tbaa !314
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit190

bb.dm:                                            ; preds = %bb.dh
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr %i.jh, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit190 unwind label %bb.dr

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit190: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i187, %bb.dm
  %i.jz = load ptr, ptr %39, align 8, !tbaa !277  ; 3 uses
  %i.ka = load i64, ptr %i.jz, align 8            ; 3 uses
  %i.kb = and i64 %i.ka, 1152920405095219200
  %.not.i.i191 = icmp eq i64 %i.kb, 1152920405095219200
  br i1 %.not.i.i191, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit192, label %bb.dn, !prof !247

bb.dn:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit190
  %i.kc = add i64 %i.ka, 1152920405095219200
  %i.kd = and i64 %i.kc, 1152920405095219200      ; 2 uses
  %i.ke = and i64 %i.ka, -1152920405095219201
  %i.kf = or disjoint i64 %i.kd, %i.ke
  store i64 %i.kf, ptr %i.jz, align 8
  %i.kg = icmp eq i64 %i.kd, 0
  br i1 %i.kg, label %bb.do, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit192, !prof !247

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit192 unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.kh = landingpad { ptr, i32 }
          catch ptr null
  %i.ki = extractvalue { ptr, i32 } %i.kh, 0
  call void @__clang_call_terminate(ptr %i.ki) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit192: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit190, %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  br label %bb.dt

bb.dq:                                            ; preds = %bb.dg
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dm, %bb.dl
  %i.kk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #22
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.pn = phi { ptr, i32 } [ %i.kk, %bb.dr ], [ %i.kj, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  br label %.body161

bb.dt:                                            ; preds = %bb.df, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit192, %bb.cp, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %.2 = phi i8 [ %53, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ %53, %bb.cp ], [ %.044, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit192 ], [ %.044, %bb.df ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  %i.kl = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.km = icmp eq i8 %i.kl, 0
  br i1 %i.km, label %bb.du, label %bb.dy, !prof !288

bb.du:                                            ; preds = %bb.dt
  %i.kn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  %.not.i.i193 = icmp eq i32 %i.kn, 0
  br i1 %.not.i.i193, label %bb.dy, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ko = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.dw unwind label %bb.dx     ; 3 uses

bb.dw:                                            ; preds = %bb.dv
  store i64 1152920405095219200, ptr %i.ko, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kp, i8 0, i64 16, i1 false)
  store ptr %i.ko, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !284
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  %i.kq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %.body194

bb.dy:                                            ; preds = %bb.dw, %bb.du, %bb.dt
  %i.kr = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !284
  store ptr %i.kr, ptr %40, align 8, !tbaa !277
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22
  %i.ks = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.kt = icmp eq i8 %i.ks, 0
  br i1 %i.kt, label %bb.dz, label %bb.ed, !prof !288

bb.dz:                                            ; preds = %bb.dy
  %i.ku = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  %.not.i.i196 = icmp eq i32 %i.ku, 0
  br i1 %.not.i.i196, label %bb.ed, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.kv = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.eb unwind label %bb.ec     ; 3 uses

bb.eb:                                            ; preds = %bb.ea
  store i64 1152920405095219200, ptr %i.kv, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kw, i8 0, i64 16, i1 false)
  store ptr %i.kv, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !284
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %.body197

bb.ed:                                            ; preds = %bb.eb, %bb.dz, %bb.dy
  %i.ky = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !284 ; 12 uses
  store ptr %i.ky, ptr %41, align 8, !tbaa !277
  %i.kz = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 9 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !314
  %i.lb = load ptr, ptr %26, align 8, !tbaa !316
  %i.lc = icmp eq ptr %i.la, %i.lb
  br i1 %i.lc, label %bb.ee, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit

bb.ee:                                            ; preds = %bb.ed
  %i.ld = invoke noundef zeroext i1 @_ZN4cvc58internalneERKNS0_9BitVectorES3_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.ef unwind label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  br i1 %i.ld, label %bb.eg, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit

bb.eg:                                            ; preds = %bb.ef
  %i.le = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !314
  %i.lg = load ptr, ptr %25, align 8, !tbaa !316
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = sub i64 %i.lh, %i.li
  %i.lk = icmp eq i64 %i.lj, 8
  br i1 %i.lk, label %.invoke482, label %bb.ei

bb.eh:                                            ; preds = %.invoke482, %bb.is, %bb.im, %bb.ii, %bb.ik, %bb.fc, %bb.ee
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %.body258

bb.ei:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  invoke void @_ZN4cvc58internalngERKNS0_9BitVectorE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::BitVector") align 8 %43, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.ej unwind label %bb.ex

bb.ej:                                            ; preds = %bb.ei
  invoke void @_ZN4cvc58internal6theory2bv5utils7mkConstEPNS0_11NodeManagerERKNS0_9BitVectorE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %42, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(24) %43)
          to label %bb.ek unwind label %bb.ey

bb.ek:                                            ; preds = %bb.ej
  %i.lm = load ptr, ptr %i.kz, align 8, !tbaa !314 ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !315
  %.not.i.i200 = icmp eq ptr %i.lm, %i.lo
  br i1 %.not.i.i200, label %bb.ep, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.lp = load ptr, ptr %42, align 8, !tbaa !277  ; 5 uses
  store ptr %i.lp, ptr %i.lm, align 8, !tbaa !277
  %i.lq = load i64, ptr %i.lp, align 8            ; 3 uses
  %i.lr = lshr i64 %i.lq, 40
  %i.ls = trunc nuw nsw i64 %i.lr to i32
  %i.lt = and i32 %i.ls, 1048575                  ; 3 uses
  %i.lu = icmp samesign ult i32 %i.lt, 1048574
  br i1 %i.lu, label %bb.em, label %bb.en, !prof !282

bb.em:                                            ; preds = %bb.el
  %i.lv = add nuw nsw i32 %i.lt, 1
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = shl nuw nsw i64 %i.lw, 40
  %i.ly = and i64 %i.lq, -1152920405095219201
  %i.lz = or i64 %i.lx, %i.ly
  store i64 %i.lz, ptr %i.lp, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i201

bb.en:                                            ; preds = %bb.el
  %i.ma = icmp eq i32 %i.lt, 1048574
  br i1 %i.ma, label %bb.eo, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i201, !prof !247

bb.eo:                                            ; preds = %bb.en
  %i.mb = or i64 %i.lq, 1152920405095219200
  store i64 %i.mb, ptr %i.lp, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i201 unwind label %bb.ez

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i201: ; preds = %bb.eo, %bb.en, %bb.em
  %i.mc = load ptr, ptr %i.kz, align 8, !tbaa !314
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  store ptr %i.md, ptr %i.kz, align 8, !tbaa !314
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit204

bb.ep:                                            ; preds = %bb.ek
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr %i.lm, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit204 unwind label %bb.ez

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit204: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i201, %bb.ep
  %i.me = load ptr, ptr %42, align 8, !tbaa !277  ; 3 uses
  %i.mf = load i64, ptr %i.me, align 8            ; 3 uses
  %i.mg = and i64 %i.mf, 1152920405095219200
  %.not.i.i205 = icmp eq i64 %i.mg, 1152920405095219200
  br i1 %.not.i.i205, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit206, label %bb.eq, !prof !247

bb.eq:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit204
  %i.mh = add i64 %i.mf, 1152920405095219200
  %i.mi = and i64 %i.mh, 1152920405095219200      ; 2 uses
  %i.mj = and i64 %i.mf, -1152920405095219201
  %i.mk = or disjoint i64 %i.mi, %i.mj
  store i64 %i.mk, ptr %i.me, align 8
  %i.ml = icmp eq i64 %i.mi, 0
  br i1 %i.ml, label %bb.er, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit206, !prof !247

bb.er:                                            ; preds = %bb.eq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.me)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit206 unwind label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.mm = landingpad { ptr, i32 }
          catch ptr null
  %i.mn = extractvalue { ptr, i32 } %i.mm, 0
  call void @__clang_call_terminate(ptr %i.mn) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit206: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit204, %bb.eq, %bb.er
  %i.mo = getelementptr inbounds nuw i8, ptr %43, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.mo)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit207 unwind label %bb.et

bb.et:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit206
  %i.mp = landingpad { ptr, i32 }
          catch ptr null
  %i.mq = extractvalue { ptr, i32 } %i.mp, 0
  call void @__clang_call_terminate(ptr %i.mq) #25
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit207:          ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit206
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  %i.mr = load ptr, ptr %i.le, align 8, !tbaa !314
  %i.ms = getelementptr inbounds i8, ptr %i.mr, i64 -8 ; 2 uses
  store ptr %i.ms, ptr %i.le, align 8, !tbaa !314
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !277 ; 3 uses
  %i.mu = load i64, ptr %i.mt, align 8            ; 3 uses
  %i.mv = and i64 %i.mu, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.mv, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit, label %bb.eu, !prof !247

bb.eu:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit207
  %i.mw = add i64 %i.mu, 1152920405095219200
  %i.mx = and i64 %i.mw, 1152920405095219200      ; 2 uses
  %i.my = and i64 %i.mu, -1152920405095219201
  %i.mz = or disjoint i64 %i.mx, %i.my
  store i64 %i.mz, ptr %i.mt, align 8
  %i.na = icmp eq i64 %i.mx, 0
  br i1 %i.na, label %bb.ev, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit, !prof !247

bb.ev:                                            ; preds = %bb.eu
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mt)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit unwind label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.nb = landingpad { ptr, i32 }
          catch ptr null
  %i.nc = extractvalue { ptr, i32 } %i.nb, 0
  call void @__clang_call_terminate(ptr %i.nc) #25
  unreachable

bb.ex:                                            ; preds = %bb.ei
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal9BitVectorD2Ev.exit208

bb.ey:                                            ; preds = %bb.ej
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ep, %bb.eo
  %i.nf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %42) #22
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.pn91 = phi { ptr, i32 } [ %i.nf, %bb.ez ], [ %i.ne, %bb.ey ]
  %i.ng = getelementptr inbounds nuw i8, ptr %43, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.ng)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit208 unwind label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.nh = landingpad { ptr, i32 }
          catch ptr null
  %i.ni = extractvalue { ptr, i32 } %i.nh, 0
  call void @__clang_call_terminate(ptr %i.ni) #25
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit208:          ; preds = %bb.fa, %bb.ex
  %.pn91.pn = phi { ptr, i32 } [ %i.nd, %bb.ex ], [ %.pn91, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %.body258

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit: ; preds = %bb.ev, %bb.eu, %_ZN4cvc58internal9BitVectorD2Ev.exit207, %bb.ef, %bb.ed
  %.3 = phi i8 [ %.2, %bb.ed ], [ %.2, %bb.ef ], [ 1, %_ZN4cvc58internal9BitVectorD2Ev.exit207 ], [ 1, %bb.eu ], [ 1, %bb.ev ] ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !314
  %i.nl = load ptr, ptr %25, align 8, !tbaa !316
  %i.nm = icmp eq ptr %i.nk, %i.nl
  br i1 %i.nm, label %bb.fc, label %bb.go

bb.fc:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit
  %i.nn = invoke noundef zeroext i1 @_ZN4cvc58internalneERKNS0_9BitVectorES3_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.fd unwind label %bb.eh

bb.fd:                                            ; preds = %bb.fc
  br i1 %i.nn, label %bb.fe, label %bb.ga

bb.fe:                                            ; preds = %bb.fd
  %i.no = load ptr, ptr %i.kz, align 8, !tbaa !314
  %i.np = load ptr, ptr %26, align 8, !tbaa !316
  %i.nq = ptrtoint ptr %i.no to i64
  %i.nr = ptrtoint ptr %i.np to i64
  %i.ns = sub i64 %i.nq, %i.nr
  %i.nt = icmp eq i64 %i.ns, 8
  br i1 %i.nt, label %.invoke482, label %bb.ff

.invoke482:                                       ; preds = %bb.eg, %bb.fe
  invoke void @_ZN4cvc58internal6theory2bv5utils7mkFalseEPNS0_11NodeManagerE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef %i.c)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit unwind label %bb.eh

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #22
  invoke void @_ZN4cvc58internalngERKNS0_9BitVectorE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::BitVector") align 8 %45, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.fg unwind label %bb.fv

bb.fg:                                            ; preds = %bb.ff
  invoke void @_ZN4cvc58internal6theory2bv5utils7mkConstEPNS0_11NodeManagerERKNS0_9BitVectorE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %44, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(24) %45)
          to label %bb.fh unwind label %bb.fw

bb.fh:                                            ; preds = %bb.fg
  %i.nu = load ptr, ptr %40, align 8, !tbaa !277  ; 5 uses
  %i.nv = load ptr, ptr %44, align 8, !tbaa !277
  %.not.i209 = icmp eq ptr %i.nu, %i.nv
  br i1 %.not.i209, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.fi, !prof !247

bb.fi:                                            ; preds = %bb.fh
  %i.nw = load i64, ptr %i.nu, align 8            ; 3 uses
  %i.nx = and i64 %i.nw, 1152920405095219200
  %.not.i.i210 = icmp eq i64 %i.nx, 1152920405095219200
  br i1 %.not.i.i210, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.fj, !prof !247

bb.fj:                                            ; preds = %bb.fi
  %i.ny = add i64 %i.nw, 1152920405095219200
  %i.nz = and i64 %i.ny, 1152920405095219200      ; 2 uses
  %i.oa = and i64 %i.nw, -1152920405095219201
  %i.ob = or disjoint i64 %i.nz, %i.oa
  store i64 %i.ob, ptr %i.nu, align 8
  %i.oc = icmp eq i64 %i.nz, 0
  br i1 %i.oc, label %bb.fk, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !247

bb.fk:                                            ; preds = %bb.fj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nu)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.fx

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.fk, %bb.fj, %bb.fi
  %i.od = load ptr, ptr %44, align 8, !tbaa !277  ; 8 uses
  store ptr %i.od, ptr %40, align 8, !tbaa !277
  %i.oe = load i64, ptr %i.od, align 8            ; 3 uses
  %i.of = lshr i64 %i.oe, 40
  %i.og = trunc nuw nsw i64 %i.of to i32
  %i.oh = and i32 %i.og, 1048575                  ; 3 uses
  %i.oi = icmp samesign ult i32 %i.oh, 1048574
  br i1 %i.oi, label %bb.fl, label %bb.fm, !prof !282

bb.fl:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.oj = add nuw nsw i32 %i.oh, 1
  %i.ok = zext nneg i32 %i.oj to i64
  %i.ol = shl nuw nsw i64 %i.ok, 40
  %i.om = and i64 %i.oe, -1152920405095219201
  %i.on = or i64 %i.ol, %i.om
  store i64 %i.on, ptr %i.od, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.fm:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.oo = icmp eq i32 %i.oh, 1048574
  br i1 %i.oo, label %bb.fn, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !247

bb.fn:                                            ; preds = %bb.fm
  %i.op = or i64 %i.oe, 1152920405095219200
  store i64 %i.op, ptr %i.od, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.od)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.fx

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.fm, %bb.fl, %bb.fh, %bb.fn
  %i.oq = phi ptr [ %i.od, %bb.fm ], [ %i.od, %bb.fl ], [ %i.nu, %bb.fh ], [ %i.od, %bb.fn ] ; 3 uses
  %i.or = load ptr, ptr %44, align 8, !tbaa !277  ; 3 uses
  %i.os = load i64, ptr %i.or, align 8            ; 3 uses
  %i.ot = and i64 %i.os, 1152920405095219200
  %.not.i.i213 = icmp eq i64 %i.ot, 1152920405095219200
  br i1 %.not.i.i213, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit215, label %bb.fo, !prof !247

bb.fo:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.ou = add i64 %i.os, 1152920405095219200
  %i.ov = and i64 %i.ou, 1152920405095219200      ; 2 uses
  %i.ow = and i64 %i.os, -1152920405095219201
  %i.ox = or disjoint i64 %i.ov, %i.ow
  store i64 %i.ox, ptr %i.or, align 8
  %i.oy = icmp eq i64 %i.ov, 0
  br i1 %i.oy, label %bb.fp, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit215, !prof !247

bb.fp:                                            ; preds = %bb.fo
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.or)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit215 unwind label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.oz = landingpad { ptr, i32 }
          catch ptr null
  %i.pa = extractvalue { ptr, i32 } %i.oz, 0
  call void @__clang_call_terminate(ptr %i.pa) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit215: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.fo, %bb.fp
  %i.pb = getelementptr inbounds nuw i8, ptr %45, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.pb)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit216 unwind label %bb.fr

bb.fr:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit215
  %i.pc = landingpad { ptr, i32 }
          catch ptr null
  %i.pd = extractvalue { ptr, i32 } %i.pc, 0
  call void @__clang_call_terminate(ptr %i.pd) #25
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit216:          ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit215
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  %i.pe = load ptr, ptr %i.kz, align 8, !tbaa !314
  %i.pf = getelementptr inbounds i8, ptr %i.pe, i64 -8 ; 2 uses
  store ptr %i.pf, ptr %i.kz, align 8, !tbaa !314
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !277 ; 3 uses
  %i.ph = load i64, ptr %i.pg, align 8            ; 3 uses
  %i.pi = and i64 %i.ph, 1152920405095219200
  %.not.i.i.i217 = icmp eq i64 %i.pi, 1152920405095219200
  br i1 %.not.i.i.i217, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit218, label %bb.fs, !prof !247

bb.fs:                                            ; preds = %_ZN4cvc58internal9BitVectorD2Ev.exit216
  %i.pj = add i64 %i.ph, 1152920405095219200
  %i.pk = and i64 %i.pj, 1152920405095219200      ; 2 uses
  %i.pl = and i64 %i.ph, -1152920405095219201
  %i.pm = or disjoint i64 %i.pk, %i.pl
  store i64 %i.pm, ptr %i.pg, align 8
  %i.pn = icmp eq i64 %i.pk, 0
  br i1 %i.pn, label %bb.ft, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit218, !prof !247

bb.ft:                                            ; preds = %bb.fs
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pg)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit218 unwind label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.po = landingpad { ptr, i32 }
          catch ptr null
  %i.pp = extractvalue { ptr, i32 } %i.po, 0
  call void @__clang_call_terminate(ptr %i.pp) #25
  unreachable

bb.fv:                                            ; preds = %bb.ff
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal9BitVectorD2Ev.exit219

bb.fw:                                            ; preds = %bb.fg
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fn, %bb.fk
  %i.ps = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %44) #22
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.pn98 = phi { ptr, i32 } [ %i.ps, %bb.fx ], [ %i.pr, %bb.fw ]
  %i.pt = getelementptr inbounds nuw i8, ptr %45, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.pt)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit219 unwind label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.pu = landingpad { ptr, i32 }
          catch ptr null
  %i.pv = extractvalue { ptr, i32 } %i.pu, 0
  call void @__clang_call_terminate(ptr %i.pv) #25
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit219:          ; preds = %bb.fy, %bb.fv
  %.pn98.pn = phi { ptr, i32 } [ %i.pq, %bb.fv ], [ %.pn98, %bb.fy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %.body258

bb.ga:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  invoke void @_ZN4cvc58internal6theory2bv5utils7mkConstEPNS0_11NodeManagerEjj(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %46, ptr noundef %i.c, i32 noundef %i.ab, i32 noundef 0)
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory2bv11RewriteRuleILNS2_13RewriteRuleIdE130EE5applyENS0_12NodeTemplateILb0EEE:bb.a

bb.gd:                                            ; preds = %bb.gc
  %i.qa = add i64 %i.py, 1152920405095219200
  %i.qb = and i64 %i.qa, 1152920405095219200      ; 2 uses
  %i.qc = and i64 %i.py, -1152920405095219201
  %i.qd = or disjoint i64 %i.qb, %i.qc
  store i64 %i.qd, ptr %i.pw, align 8
  %i.qe = icmp eq i64 %i.qb, 0
  br i1 %i.qe, label %bb.ge, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i222, !prof !247

bb.ge:                                            ; preds = %bb.gd
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pw)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i222 unwind label %bb.gm

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i222: ; preds = %bb.ge, %bb.gd, %bb.gc
  %i.qf = load ptr, ptr %46, align 8, !tbaa !277  ; 8 uses
  store ptr %i.qf, ptr %40, align 8, !tbaa !277
  %i.qg = load i64, ptr %i.qf, align 8            ; 3 uses
  %i.qh = lshr i64 %i.qg, 40
  %i.qi = trunc nuw nsw i64 %i.qh to i32
  %i.qj = and i32 %i.qi, 1048575                  ; 3 uses
  %i.qk = icmp samesign ult i32 %i.qj, 1048574
  br i1 %i.qk, label %bb.gf, label %bb.gg, !prof !282

bb.gf:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i222
  %i.ql = add nuw nsw i32 %i.qj, 1
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = shl nuw nsw i64 %i.qm, 40
  %i.qo = and i64 %i.qg, -1152920405095219201
  %i.qp = or i64 %i.qn, %i.qo
  store i64 %i.qp, ptr %i.qf, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit225

bb.gg:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i222
  %i.qq = icmp eq i32 %i.qj, 1048574
  br i1 %i.qq, label %bb.gh, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit225, !prof !247

bb.gh:                                            ; preds = %bb.gg
  %i.qr = or i64 %i.qg, 1152920405095219200
  store i64 %i.qr, ptr %i.qf, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit225 unwind label %bb.gm

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit225: ; preds = %bb.gg, %bb.gf, %bb.gb, %bb.gh
  %i.qs = phi ptr [ %i.qf, %bb.gg ], [ %i.qf, %bb.gf ], [ %i.pw, %bb.gb ], [ %i.qf, %bb.gh ]
  %i.qt = load ptr, ptr %46, align 8, !tbaa !277  ; 3 uses
  %i.qu = load i64, ptr %i.qt, align 8            ; 3 uses
  %i.qv = and i64 %i.qu, 1152920405095219200
  %.not.i.i226 = icmp eq i64 %i.qv, 1152920405095219200
  br i1 %.not.i.i226, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit228, label %bb.gi, !prof !247

bb.gi:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit225
  %i.qw = add i64 %i.qu, 1152920405095219200
  %i.qx = and i64 %i.qw, 1152920405095219200      ; 2 uses
  %i.qy = and i64 %i.qu, -1152920405095219201
  %i.qz = or disjoint i64 %i.qx, %i.qy
  store i64 %i.qz, ptr %i.qt, align 8
  %i.ra = icmp eq i64 %i.qx, 0
  br i1 %i.ra, label %bb.gj, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit228, !prof !247

bb.gj:                                            ; preds = %bb.gi
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit228 unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.rb = landingpad { ptr, i32 }
          catch ptr null
  %i.rc = extractvalue { ptr, i32 } %i.rb, 0
  call void @__clang_call_terminate(ptr %i.rc) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit228: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit225, %bb.gi, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit218

bb.gl:                                            ; preds = %bb.ga
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

bb.gm:                                            ; preds = %bb.gh, %bb.ge
  %i.re = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %46) #22
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %.pn96 = phi { ptr, i32 } [ %i.re, %bb.gm ], [ %i.rd, %bb.gl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  br label %.body258

bb.go:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  invoke void @_ZN4cvc58internal6theory2bv5utils10mkNaryNodeILb1EEENS0_12NodeTemplateILb1EEEPNS0_11NodeManagerENS0_4kind6Kind_tERKSt6vectorINS5_IXT_EEESaISC_EE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %47, ptr noundef %i.c, i32 noundef 105, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.gp unwind label %bb.gz

bb.gp:                                            ; preds = %bb.go
  %i.rf = load ptr, ptr %40, align 8, !tbaa !277  ; 5 uses
  %i.rg = load ptr, ptr %47, align 8, !tbaa !277
  %.not.i229 = icmp eq ptr %i.rf, %i.rg
  br i1 %.not.i229, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit234, label %bb.gq, !prof !247

bb.gq:                                            ; preds = %bb.gp
  %i.rh = load i64, ptr %i.rf, align 8            ; 3 uses
  %i.ri = and i64 %i.rh, 1152920405095219200
  %.not.i.i230 = icmp eq i64 %i.ri, 1152920405095219200
  br i1 %.not.i.i230, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i231, label %bb.gr, !prof !247

bb.gr:                                            ; preds = %bb.gq
  %i.rj = add i64 %i.rh, 1152920405095219200
  %i.rk = and i64 %i.rj, 1152920405095219200      ; 2 uses
  %i.rl = and i64 %i.rh, -1152920405095219201
  %i.rm = or disjoint i64 %i.rk, %i.rl
  store i64 %i.rm, ptr %i.rf, align 8
  %i.rn = icmp eq i64 %i.rk, 0
  br i1 %i.rn, label %bb.gs, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i231, !prof !247

bb.gs:                                            ; preds = %bb.gr
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.rf)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i231 unwind label %bb.ha

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i231: ; preds = %bb.gs, %bb.gr, %bb.gq
  %i.ro = load ptr, ptr %47, align 8, !tbaa !277  ; 8 uses
  store ptr %i.ro, ptr %40, align 8, !tbaa !277
  %i.rp = load i64, ptr %i.ro, align 8            ; 3 uses
  %i.rq = lshr i64 %i.rp, 40
  %i.rr = trunc nuw nsw i64 %i.rq to i32
  %i.rs = and i32 %i.rr, 1048575                  ; 3 uses
  %i.rt = icmp samesign ult i32 %i.rs, 1048574
  br i1 %i.rt, label %bb.gt, label %bb.gu, !prof !282

bb.gt:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i231
  %i.ru = add nuw nsw i32 %i.rs, 1
  %i.rv = zext nneg i32 %i.ru to i64
  %i.rw = shl nuw nsw i64 %i.rv, 40
  %i.rx = and i64 %i.rp, -1152920405095219201
  %i.ry = or i64 %i.rw, %i.rx
  store i64 %i.ry, ptr %i.ro, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit234

bb.gu:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i231
  %i.rz = icmp eq i32 %i.rs, 1048574
  br i1 %i.rz, label %bb.gv, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit234, !prof !247

bb.gv:                                            ; preds = %bb.gu
  %i.sa = or i64 %i.rp, 1152920405095219200
  store i64 %i.sa, ptr %i.ro, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ro)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit234 unwind label %bb.ha

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit234: ; preds = %bb.gu, %bb.gt, %bb.gp, %bb.gv
  %i.sb = phi ptr [ %i.ro, %bb.gu ], [ %i.ro, %bb.gt ], [ %i.rf, %bb.gp ], [ %i.ro, %bb.gv ]
  %i.sc = load ptr, ptr %47, align 8, !tbaa !277  ; 3 uses
  %i.sd = load i64, ptr %i.sc, align 8            ; 3 uses
  %i.se = and i64 %i.sd, 1152920405095219200
  %.not.i.i235 = icmp eq i64 %i.se, 1152920405095219200
  br i1 %.not.i.i235, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit237, label %bb.gw, !prof !247

bb.gw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit234
  %i.sf = add i64 %i.sd, 1152920405095219200
  %i.sg = and i64 %i.sf, 1152920405095219200      ; 2 uses
  %i.sh = and i64 %i.sd, -1152920405095219201
  %i.si = or disjoint i64 %i.sg, %i.sh
  store i64 %i.si, ptr %i.sc, align 8
  %i.sj = icmp eq i64 %i.sg, 0
  br i1 %i.sj, label %bb.gx, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit237, !prof !247

bb.gx:                                            ; preds = %bb.gw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.sc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit237 unwind label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.sk = landingpad { ptr, i32 }
          catch ptr null
  %i.sl = extractvalue { ptr, i32 } %i.sk, 0
  call void @__clang_call_terminate(ptr %i.sl) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit237: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit234, %bb.gw, %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit218

bb.gz:                                            ; preds = %bb.go
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %bb.hb

bb.ha:                                            ; preds = %bb.gv, %bb.gs
  %i.sn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %47) #22
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %.pn94 = phi { ptr, i32 } [ %i.sn, %bb.ha ], [ %i.sm, %bb.gz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  br label %.body258

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit218: ; preds = %bb.ft, %bb.fs, %_ZN4cvc58internal9BitVectorD2Ev.exit216, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit228, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit237
  %i.so = phi ptr [ %i.sb, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit237 ], [ %i.qs, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit228 ], [ %i.oq, %_ZN4cvc58internal9BitVectorD2Ev.exit216 ], [ %i.oq, %bb.fs ], [ %i.oq, %bb.ft ] ; 5 uses
  %.4 = phi i8 [ %.3, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit237 ], [ %.3, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit228 ], [ 1, %_ZN4cvc58internal9BitVectorD2Ev.exit216 ], [ 1, %bb.fs ], [ 1, %bb.ft ]
  %i.sp = load ptr, ptr %i.kz, align 8, !tbaa !314
  %i.sq = load ptr, ptr %26, align 8, !tbaa !316
  %i.sr = icmp eq ptr %i.sp, %i.sq
  br i1 %i.sr, label %bb.hc, label %bb.hq

bb.hc:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit218
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #22
  invoke void @_ZN4cvc58internal6theory2bv5utils7mkConstEPNS0_11NodeManagerEjj(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %48, ptr noundef %i.c, i32 noundef %i.ab, i32 noundef 0)
          to label %bb.hd unwind label %bb.hn

bb.hd:                                            ; preds = %bb.hc
  %i.ss = load ptr, ptr %48, align 8, !tbaa !277
  %.not.i238 = icmp eq ptr %i.ky, %i.ss
  br i1 %.not.i238, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit243, label %bb.he, !prof !247

bb.he:                                            ; preds = %bb.hd
  %i.st = load i64, ptr %i.ky, align 8            ; 3 uses
  %i.su = and i64 %i.st, 1152920405095219200
  %.not.i.i239 = icmp eq i64 %i.su, 1152920405095219200
  br i1 %.not.i.i239, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i240, label %bb.hf, !prof !247

bb.hf:                                            ; preds = %bb.he
  %i.sv = add i64 %i.st, 1152920405095219200
  %i.sw = and i64 %i.sv, 1152920405095219200      ; 2 uses
  %i.sx = and i64 %i.st, -1152920405095219201
  %i.sy = or disjoint i64 %i.sw, %i.sx
  store i64 %i.sy, ptr %i.ky, align 8
  %i.sz = icmp eq i64 %i.sw, 0
  br i1 %i.sz, label %bb.hg, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i240, !prof !247

bb.hg:                                            ; preds = %bb.hf
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ky)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i240 unwind label %bb.ho

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i240: ; preds = %bb.hg, %bb.hf, %bb.he
  %i.ta = load ptr, ptr %48, align 8, !tbaa !277  ; 8 uses
  store ptr %i.ta, ptr %41, align 8, !tbaa !277
  %i.tb = load i64, ptr %i.ta, align 8            ; 3 uses
  %i.tc = lshr i64 %i.tb, 40
  %i.td = trunc nuw nsw i64 %i.tc to i32
  %i.te = and i32 %i.td, 1048575                  ; 3 uses
  %i.tf = icmp samesign ult i32 %i.te, 1048574
  br i1 %i.tf, label %bb.hh, label %bb.hi, !prof !282

bb.hh:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i240
  %i.tg = add nuw nsw i32 %i.te, 1
  %i.th = zext nneg i32 %i.tg to i64
  %i.ti = shl nuw nsw i64 %i.th, 40
  %i.tj = and i64 %i.tb, -1152920405095219201
  %i.tk = or i64 %i.ti, %i.tj
  store i64 %i.tk, ptr %i.ta, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit243

bb.hi:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i240
  %i.tl = icmp eq i32 %i.te, 1048574
  br i1 %i.tl, label %bb.hj, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit243, !prof !247

bb.hj:                                            ; preds = %bb.hi
  %i.tm = or i64 %i.tb, 1152920405095219200
  store i64 %i.tm, ptr %i.ta, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ta)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit243 unwind label %bb.ho

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit243: ; preds = %bb.hi, %bb.hh, %bb.hd, %bb.hj
  %i.tn = phi ptr [ %i.ta, %bb.hi ], [ %i.ta, %bb.hh ], [ %i.ky, %bb.hd ], [ %i.ta, %bb.hj ]
  %i.to = load ptr, ptr %48, align 8, !tbaa !277  ; 3 uses
  %i.tp = load i64, ptr %i.to, align 8            ; 3 uses
  %i.tq = and i64 %i.tp, 1152920405095219200
  %.not.i.i244 = icmp eq i64 %i.tq, 1152920405095219200
  br i1 %.not.i.i244, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit246, label %bb.hk, !prof !247

bb.hk:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit243
  %i.tr = add i64 %i.tp, 1152920405095219200
  %i.ts = and i64 %i.tr, 1152920405095219200      ; 2 uses
  %i.tt = and i64 %i.tp, -1152920405095219201
  %i.tu = or disjoint i64 %i.ts, %i.tt
  store i64 %i.tu, ptr %i.to, align 8
  %i.tv = icmp eq i64 %i.ts, 0
  br i1 %i.tv, label %bb.hl, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit246, !prof !247

bb.hl:                                            ; preds = %bb.hk
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.to)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit246 unwind label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.tw = landingpad { ptr, i32 }
          catch ptr null
  %i.tx = extractvalue { ptr, i32 } %i.tw, 0
  call void @__clang_call_terminate(ptr %i.tx) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit246: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit243, %bb.hk, %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  br label %bb.ie

bb.hn:                                            ; preds = %bb.hc
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %bb.hp

bb.ho:                                            ; preds = %bb.hj, %bb.hg
  %i.tz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #22
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %.pn103 = phi { ptr, i32 } [ %i.tz, %bb.ho ], [ %i.ty, %bb.hn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  br label %.body258

bb.hq:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit218
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #22
  invoke void @_ZN4cvc58internal6theory2bv5utils10mkNaryNodeILb1EEENS0_12NodeTemplateILb1EEEPNS0_11NodeManagerENS0_4kind6Kind_tERKSt6vectorINS5_IXT_EEESaISC_EE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %49, ptr noundef %i.c, i32 noundef 105, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.hr unwind label %bb.ib

bb.hr:                                            ; preds = %bb.hq
  %i.ua = load ptr, ptr %49, align 8, !tbaa !277
  %.not.i247 = icmp eq ptr %i.ky, %i.ua
  br i1 %.not.i247, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit252, label %bb.hs, !prof !247

bb.hs:                                            ; preds = %bb.hr
  %i.ub = load i64, ptr %i.ky, align 8            ; 3 uses
  %i.uc = and i64 %i.ub, 1152920405095219200
  %.not.i.i248 = icmp eq i64 %i.uc, 1152920405095219200
  br i1 %.not.i.i248, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i249, label %bb.ht, !prof !247

bb.ht:                                            ; preds = %bb.hs
  %i.ud = add i64 %i.ub, 1152920405095219200
  %i.ue = and i64 %i.ud, 1152920405095219200      ; 2 uses
  %i.uf = and i64 %i.ub, -1152920405095219201
  %i.ug = or disjoint i64 %i.ue, %i.uf
  store i64 %i.ug, ptr %i.ky, align 8
  %i.uh = icmp eq i64 %i.ue, 0
  br i1 %i.uh, label %bb.hu, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i249, !prof !247

bb.hu:                                            ; preds = %bb.ht
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ky)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i249 unwind label %bb.ic

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i249: ; preds = %bb.hu, %bb.ht, %bb.hs
  %i.ui = load ptr, ptr %49, align 8, !tbaa !277  ; 8 uses
  store ptr %i.ui, ptr %41, align 8, !tbaa !277
  %i.uj = load i64, ptr %i.ui, align 8            ; 3 uses
  %i.uk = lshr i64 %i.uj, 40
  %i.ul = trunc nuw nsw i64 %i.uk to i32
  %i.um = and i32 %i.ul, 1048575                  ; 3 uses
  %i.un = icmp samesign ult i32 %i.um, 1048574
  br i1 %i.un, label %bb.hv, label %bb.hw, !prof !282

bb.hv:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i249
  %i.uo = add nuw nsw i32 %i.um, 1
  %i.up = zext nneg i32 %i.uo to i64
  %i.uq = shl nuw nsw i64 %i.up, 40
  %i.ur = and i64 %i.uj, -1152920405095219201
  %i.us = or i64 %i.uq, %i.ur
  store i64 %i.us, ptr %i.ui, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit252

bb.hw:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i249
  %i.ut = icmp eq i32 %i.um, 1048574
  br i1 %i.ut, label %bb.hx, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit252, !prof !247

bb.hx:                                            ; preds = %bb.hw
  %i.uu = or i64 %i.uj, 1152920405095219200
  store i64 %i.uu, ptr %i.ui, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ui)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit252 unwind label %bb.ic

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit252: ; preds = %bb.hw, %bb.hv, %bb.hr, %bb.hx
  %i.uv = phi ptr [ %i.ui, %bb.hw ], [ %i.ui, %bb.hv ], [ %i.ky, %bb.hr ], [ %i.ui, %bb.hx ]
  %i.uw = load ptr, ptr %49, align 8, !tbaa !277  ; 3 uses
  %i.ux = load i64, ptr %i.uw, align 8            ; 3 uses
  %i.uy = and i64 %i.ux, 1152920405095219200
  %.not.i.i253 = icmp eq i64 %i.uy, 1152920405095219200
  br i1 %.not.i.i253, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit255, label %bb.hy, !prof !247

bb.hy:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit252
  %i.uz = add i64 %i.ux, 1152920405095219200
  %i.va = and i64 %i.uz, 1152920405095219200      ; 2 uses
  %i.vb = and i64 %i.ux, -1152920405095219201
  %i.vc = or disjoint i64 %i.va, %i.vb
  store i64 %i.vc, ptr %i.uw, align 8
  %i.vd = icmp eq i64 %i.va, 0
  br i1 %i.vd, label %bb.hz, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit255, !prof !247

bb.hz:                                            ; preds = %bb.hy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.uw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit255 unwind label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.ve = landingpad { ptr, i32 }
          catch ptr null
  %i.vf = extractvalue { ptr, i32 } %i.ve, 0
  call void @__clang_call_terminate(ptr %i.vf) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit255: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit252, %bb.hy, %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  br label %bb.ie

bb.ib:                                            ; preds = %bb.hq
  %i.vg = landingpad { ptr, i32 }
          cleanup
  br label %bb.id

bb.ic:                                            ; preds = %bb.hx, %bb.hu
  %i.vh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #22
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %.pn101 = phi { ptr, i32 } [ %i.vh, %bb.ic ], [ %i.vg, %bb.ib ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  br label %.body258

bb.ie:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit255, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit246
  %i.vi = phi ptr [ %i.uv, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit255 ], [ %i.tn, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit246 ] ; 11 uses
  %54 = trunc nuw i8 %.4 to i1
  br i1 %54, label %bb.ij, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.vj = load ptr, ptr %1, align 8, !tbaa !275   ; 5 uses
  store ptr %i.vj, ptr %0, align 8, !tbaa !277
  %i.vk = load i64, ptr %i.vj, align 8            ; 3 uses
  %i.vl = lshr i64 %i.vk, 40
  %i.vm = trunc nuw nsw i64 %i.vl to i32
  %i.vn = and i32 %i.vm, 1048575                  ; 3 uses
  %i.vo = icmp samesign ult i32 %i.vn, 1048574
  br i1 %i.vo, label %bb.ig, label %bb.ih, !prof !282

bb.ig:                                            ; preds = %bb.if
  %i.vp = add nuw nsw i32 %i.vn, 1
  %i.vq = zext nneg i32 %i.vp to i64
  %i.vr = shl nuw nsw i64 %i.vq, 40
  %i.vs = and i64 %i.vk, -1152920405095219201
  %i.vt = or i64 %i.vr, %i.vs
  store i64 %i.vt, ptr %i.vj, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.ih:                                            ; preds = %bb.if
  %i.vu = icmp eq i32 %i.vn, 1048574
  br i1 %i.vu, label %bb.ii, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !247

bb.ii:                                            ; preds = %bb.ih
  %i.vv = or i64 %i.vk, 1152920405095219200
  store i64 %i.vv, ptr %i.vj, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit unwind label %bb.eh

bb.ij:                                            ; preds = %bb.ie
  %i.vw = icmp eq ptr %i.so, %i.vi
  br i1 %i.vw, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  invoke void @_ZN4cvc58internal6theory2bv5utils6mkTrueEPNS0_11NodeManagerE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef %i.c)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit unwind label %bb.eh

bb.il:                                            ; preds = %bb.ij
  %i.vx = load i64, ptr %i.so, align 8
  %i.vy = and i64 %i.vx, 1099511627775
  %i.vz = load i64, ptr %i.vi, align 8
  %i.wa = and i64 %i.vz, 1099511627775
  %i.wb = icmp samesign ult i64 %i.vy, %i.wa
  br i1 %i.wb, label %bb.im, label %bb.is

bb.im:                                            ; preds = %bb.il
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !646
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !646
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !647
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !287, !noalias !647
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef %i.wd, i32 noundef 5)
          to label %.noexc257 unwind label %bb.eh

.noexc257:                                        ; preds = %bb.im
  store ptr %i.vi, ptr %6, align 8, !tbaa !275, !noalias !647
  %i.we = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull align 8 %6)
          to label %bb.in unwind label %bb.iq, !noalias !647

bb.in:                                            ; preds = %.noexc257
  store ptr %i.so, ptr %7, align 8, !tbaa !275, !noalias !647
  %i.wf = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.we, ptr noundef nonnull align 8 %7)
          to label %bb.io unwind label %bb.ir, !noalias !647 ; 0 uses

bb.io:                                            ; preds = %bb.in
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %5)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE.exit unwind label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.iq:                                            ; preds = %.noexc257
  %i.wh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ir:                                            ; preds = %bb.in
  %i.wi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ir, %bb.iq, %bb.ip
  %.pn5.i.i = phi { ptr, i32 } [ %i.wg, %bb.ip ], [ %i.wi, %bb.ir ], [ %i.wh, %bb.iq ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !647
  br label %.body258

_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE.exit: ; preds = %bb.io
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !647
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !646
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !646
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.is:                                            ; preds = %bb.il
  %i.wj = getelementptr inbounds nuw i8, ptr %i.so, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !648
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !648
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !649
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !287, !noalias !649
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef %i.wk, i32 noundef 5)
          to label %.noexc262 unwind label %bb.eh

.noexc262:                                        ; preds = %bb.is
  store ptr %i.so, ptr %3, align 8, !tbaa !275, !noalias !649
  %i.wl = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 %3)
          to label %bb.it unwind label %bb.iw, !noalias !649

bb.it:                                            ; preds = %.noexc262
  store ptr %i.vi, ptr %4, align 8, !tbaa !275, !noalias !649
  %i.wm = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.wl, ptr noundef nonnull align 8 %4)
          to label %bb.iu unwind label %bb.ix, !noalias !649 ; 0 uses

bb.iu:                                            ; preds = %bb.it
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %2)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE.exit265 unwind label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i260

bb.iw:                                            ; preds = %.noexc262
  %i.wo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i260

bb.ix:                                            ; preds = %bb.it
  %i.wp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i260

.body.i260:                                       ; preds = %bb.ix, %bb.iw, %bb.iv
  %.pn5.i.i261 = phi { ptr, i32 } [ %i.wn, %bb.iv ], [ %i.wp, %bb.ix ], [ %i.wo, %bb.iw ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !649
  br label %.body258

_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE.exit265: ; preds = %bb.iu
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !649
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !648
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !648
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %.invoke482, %bb.ih, %bb.ig, %bb.ii, %_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE.exit265, %_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE.exit, %bb.ik
  %i.wq = phi ptr [ %i.vi, %bb.ih ], [ %i.vi, %bb.ig ], [ %i.vi, %bb.ii ], [ %i.vi, %_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE.exit265 ], [ %i.vi, %_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE.exit ], [ %i.vi, %bb.ik ], [ %i.ky, %.invoke482 ] ; 3 uses
  %i.wr = load i64, ptr %i.wq, align 8            ; 3 uses
  %i.ws = and i64 %i.wr, 1152920405095219200
  %.not.i.i266 = icmp eq i64 %i.ws, 1152920405095219200
  br i1 %.not.i.i266, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit268, label %bb.iy, !prof !247

bb.iy:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.wt = add i64 %i.wr, 1152920405095219200
  %i.wu = and i64 %i.wt, 1152920405095219200      ; 2 uses
  %i.wv = and i64 %i.wr, -1152920405095219201
  %i.ww = or disjoint i64 %i.wu, %i.wv
  store i64 %i.ww, ptr %i.wq, align 8
  %i.wx = icmp eq i64 %i.wu, 0
  br i1 %i.wx, label %bb.iz, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit268, !prof !247

bb.iz:                                            ; preds = %bb.iy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit268 unwind label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.wy = landingpad { ptr, i32 }
          catch ptr null
  %i.wz = extractvalue { ptr, i32 } %i.wy, 0
  call void @__clang_call_terminate(ptr %i.wz) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit268: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, %bb.iy, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  %i.xa = load ptr, ptr %40, align 8, !tbaa !277  ; 3 uses
  %i.xb = load i64, ptr %i.xa, align 8            ; 3 uses
  %i.xc = and i64 %i.xb, 1152920405095219200
  %.not.i.i269 = icmp eq i64 %i.xc, 1152920405095219200
  br i1 %.not.i.i269, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit271, label %bb.jb, !prof !247

bb.jb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit268
  %i.xd = add i64 %i.xb, 1152920405095219200
  %i.xe = and i64 %i.xd, 1152920405095219200      ; 2 uses
  %i.xf = and i64 %i.xb, -1152920405095219201
  %i.xg = or disjoint i64 %i.xe, %i.xf
  store i64 %i.xg, ptr %i.xa, align 8
  %i.xh = icmp eq i64 %i.xe, 0
  br i1 %i.xh, label %bb.jc, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit271, !prof !247

bb.jc:                                            ; preds = %bb.jb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xa)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit271 unwind label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.xi = landingpad { ptr, i32 }
          catch ptr null
  %i.xj = extractvalue { ptr, i32 } %i.xi, 0
end_hunk_1
