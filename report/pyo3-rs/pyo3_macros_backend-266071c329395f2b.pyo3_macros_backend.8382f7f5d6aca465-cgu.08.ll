Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_macros_backend-266071c329395f2b.pyo3_macros_backend.8382f7f5d6aca465-cgu.08?download=true
inline.NumInlined: 78
inline.NumDeleted: 14
begin_hunk_0_@_RNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB5_17FunctionSignature28from_arguments_and_attribute:bb.a

.outer:                                           ; preds = %.outer.backedge, %bb.i
  %.sroa.0.0.ph = phi i8 [ 0, %bb.i ], [ %.sroa.0.0.ph.be, %.outer.backedge ] ; 5 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.outer
  %i.ep = invoke align 8 ptr @_RNvXst_NtCs1QQTzni0HOp_3syn10punctuatedINtB5_4IterNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBS_(ptr nonnull align 8 %i.df)
          to label %bb.j unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.body:                                            ; preds = %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dj, %bb.dm, %bb.do, %bb.by, %bb.ae, %bb.ab, %bb.ed, %bb.cb, %.body43.thread
  %.pn22 = phi { ptr, i32 } [ %i.gy, %bb.cb ], [ %.pn20, %.body43.thread ], [ %i.fj, %bb.ae ], [ %i.ki, %bb.ed ], [ %i.ff, %bb.ab ], [ %i.gv, %bb.by ], [ %i.jg, %bb.dm ], [ %i.js, %bb.do ], [ %i.it, %bb.dj ], [ %lpad.loopexit.split-lp213, %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemEEB1l_(ptr nonnull align 8 %i.df) #18
          to label %bb.e unwind label %bb.ci

.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.backedge, %bb.ai, %bb.al, %bb.bs, %bb.bw, %bb.z, %bb.cp, %bb.cw, %bb.cz, %bb.dc, %bb.dd, %bb.dq, %bb.dt, %bb.dw, %bb.dx, %bb.ef, %bb.ah, %bb.ag, %bb.aa, %_RNvXs0_NtCs4yLFsuhaAhE_5quote7spannedNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature23SignatureItemPosargsSepNtB5_7Spanned6___spanBF_.exit.i, %bb.ad, %_RNvXs0_NtCs4yLFsuhaAhE_5quote7spannedNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature23SignatureItemVarargsSepNtB5_7Spanned6___spanBF_.exit.i, %bb.cl, %bb.cm, %bb.cn, %.noexc47, %.noexc48, %.noexc49, %.noexc50, %.noexc51, %bb.co, %.noexc53, %.noexc54, %.noexc55, %.noexc56, %.noexc57, %bb.cu, %.noexc59, %.noexc60, %.noexc61, %.noexc62, %.noexc63, %bb.cv, %.noexc65, %.noexc66, %.noexc67, %.noexc68, %.noexc69, %bb.dh, %bb.di, %_RNvXNtCs1QQTzni0HOp_3syn7spannedNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature20SignatureItemVarargsNtB2_7Spanned4spanBA_.exit.i, %.noexc75, %.noexc76, %.noexc77, %.noexc78, %.noexc79, %.noexc80, %.noexc81, %bb.dl, %_RNvXNtCs1QQTzni0HOp_3syn7spannedNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature20SignatureItemVarargsNtB2_7Spanned4spanBA_.exit2.i, %.noexc84, %.noexc85, %.noexc86, %.noexc87, %.noexc88, %.noexc89, %.noexc90, %bb.eb, %bb.ec, %.noexc93, %.noexc94, %.noexc95, %.noexc96, %.noexc97, %.noexc98, %.noexc99, %.invoke, %bb.cf, %bb.cd, %bb.bv
  %lpad.loopexit.split-lp213 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %.backedge
  %.not = icmp eq ptr %i.ep, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eq = load i32, ptr %i.ep, align 8
  switch i32 %i.eq, label %bb.y [
    i32 0, label %bb.z
    i32 1, label %bb.aa
    i32 2, label %bb.ad
    i32 3, label %bb.ag
    i32 4, label %bb.ah
  ]

bb.l:                                             ; preds = %bb.j
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemEEB1l_(ptr nonnull align 8 %i.df)
          to label %bb.m unwind label %bb.f

bb.m:                                             ; preds = %bb.l
  %i.er = invoke align 8 ptr @_RINvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_7IterMutNtNtCsbi23obv45GP_19pyo3_macros_backend6method5FnArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMsi_NtNtBX_10pyfunction9signatureNtB2C_17FunctionSignature28from_arguments_and_attributes0_0EBX_(ptr nonnull align 8 %i.dg)
          to label %bb.n unwind label %bb.f       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %.not7 = icmp eq ptr %i.er, null
  br i1 %.not7, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.et = invoke i32 @_RNvXNtCs1QQTzni0HOp_3syn7spannedNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw9signatureNtB2_7Spanned4spanBA_(ptr nonnull align 4 %i.es)
          to label %bb.q unwind label %bb.f

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.eu, ptr noundef nonnull align 8 dereferenceable(128) %i.dh, i64 128, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ca, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ev, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %i.ca, i64 224, i1 false)
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.ew = invoke align 8 ptr @_RNvMNtCsbi23obv45GP_19pyo3_macros_backend6methodNtB2_5FnArg4name(ptr nonnull align 8 %i.er)
          to label %bb.r unwind label %bb.f

bb.r:                                             ; preds = %bb.q
  store ptr %i.ew, ptr %i.cd, align 8
  invoke void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayRNtCs3FigHW6Y7TR_11proc_macro25IdentEB11_(ptr nonnull sret([16 x i8]) align 8 %i.cb, ptr nonnull align 8 %i.cd)
          to label %bb.s unwind label %bb.f

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false)
  %i.ex = invoke { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj2b_Kj1_ECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull @43, ptr nonnull align 8 %i.cc)
          to label %bb.t unwind label %bb.f       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.ey = extractvalue { ptr, ptr } %i.ex, 0
  %i.ez = extractvalue { ptr, ptr } %i.ex, 1
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.ce, ptr %i.ey, ptr %i.ez)
          to label %bb.u unwind label %bb.f

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  invoke void @_RINvMNtCs1QQTzni0HOp_3syn5errorNtB3_5Error3newNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_(ptr nonnull sret([24 x i8]) align 8 %i.cg, i32 %i.et, ptr nonnull align 8 %i.cf)
          to label %bb.v unwind label %bb.f

bb.v:                                             ; preds = %bb.u
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.cg, %bb.v
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature15PythonSignatureEBH_(ptr nonnull align 8 %i.dh)
          to label %bb.ei unwind label %bb.c

bb.x:                                             ; preds = %bb.el, %bb.p
  ret void

bb.y:                                             ; preds = %bb.k
  unreachable

bb.z:                                             ; preds = %bb.k
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 5 uses
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 184
  invoke fastcc void @_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature28from_arguments_and_attribute0Bb_(ptr noalias align 8 %i.dd, ptr nonnull %i.dg, ptr nonnull align 8 %i.fd)
          to label %bb.ai unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  invoke void @_RNvMCs3FigHW6Y7TR_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.bo)
          to label %.noexc unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.aa
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  invoke void @_RNvXscE_NtCs1QQTzni0HOp_3syn5tokenNtB6_5SlashNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.fe, ptr nonnull align 8 %i.bo)
          to label %_RNvXs0_NtCs4yLFsuhaAhE_5quote7spannedNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature23SignatureItemPosargsSepNtB5_7Spanned6___spanBF_.exit.i unwind label %bb.ab

bb.ab:                                            ; preds = %.noexc
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro211TokenStreamECs4yLFsuhaAhE_5quote(ptr nonnull align 8 %i.bo) #18
          to label %.body unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RNvXs0_NtCs4yLFsuhaAhE_5quote7spannedNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature23SignatureItemPosargsSepNtB5_7Spanned6___spanBF_.exit.i: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  %i.fh = invoke i32 @_RNvNtCs4yLFsuhaAhE_5quote7spanned10join_spans(ptr nonnull align 8 %i.bp)
          to label %bb.ck unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ad:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  invoke void @_RNvMCs3FigHW6Y7TR_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.bm)
          to label %.noexc36 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %bb.ad
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  invoke void @_RNvXscM_NtCs1QQTzni0HOp_3syn5tokenNtB6_4StarNtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.fi, ptr nonnull align 8 %i.bm)
          to label %_RNvXs0_NtCs4yLFsuhaAhE_5quote7spannedNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature23SignatureItemVarargsSepNtB5_7Spanned6___spanBF_.exit.i unwind label %bb.ae

bb.ae:                                            ; preds = %.noexc36
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro211TokenStreamECs4yLFsuhaAhE_5quote(ptr nonnull align 8 %i.bm) #18
          to label %.body unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RNvXs0_NtCs4yLFsuhaAhE_5quote7spannedNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature23SignatureItemVarargsSepNtB5_7Spanned6___spanBF_.exit.i: ; preds = %.noexc36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %i.fl = invoke i32 @_RNvNtCs4yLFsuhaAhE_5quote7spanned10join_spans(ptr nonnull align 8 %i.bn)
          to label %bb.cs unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ag:                                            ; preds = %bb.k
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ep, i64 24 ; 6 uses
  invoke fastcc void @_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature28from_arguments_and_attribute0Bb_(ptr noalias align 8 %i.ct, ptr nonnull %i.dg, ptr nonnull align 8 %i.fm)
          to label %bb.cz unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.k
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ep, i64 32 ; 3 uses
  invoke fastcc void @_RNCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB7_17FunctionSignature28from_arguments_and_attribute0Bb_(ptr noalias align 8 %i.cn, ptr nonnull %i.dg, ptr nonnull align 8 %i.fo)
          to label %bb.dt unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.z
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultQNtNtCsbi23obv45GP_19pyo3_macros_backend6method5FnArgNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.de, ptr nonnull align 8 %i.dd)
          to label %bb.aj unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  %i.fp = load i64, ptr %i.de, align 8
  %.not16 = icmp eq i64 %i.fp, -1
  br i1 %.not16, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false)
  br label %.invoke

bb.al:                                            ; preds = %bb.aj
  %i.fq = load ptr, ptr %i.dv, align 8            ; 2 uses
  %i.fr = load ptr, ptr %i.fb, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 184
  invoke void @_RNvXNtCs1QQTzni0HOp_3syn3extNtCs3FigHW6Y7TR_11proc_macro25IdentNtB2_8IdentExt5unraw(ptr nonnull sret([24 x i8]) align 8 %i.cz, ptr nonnull align 8 %i.fs)
          to label %bb.am unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringNtCs3FigHW6Y7TR_11proc_macro25IdentNtB5_8ToString9to_stringBA_(ptr nonnull sret([24 x i8]) align 8 %i.da, ptr nonnull align 8 %i.cz)
          to label %bb.an unwind label %.body43.thread113.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body43.thread:                                   ; preds = %.body43.thread113.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bo, %bb.bj, %bb.bi, %bb.cj
  %.pn20 = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.bi ], [ %.pn.ph, %bb.cj ], [ %.pn12.i, %bb.bo ], [ %i.gj, %bb.bj ], [ %lpad.loopexit.split-lp210, %.body43.thread113.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.cz) #18
          to label %.body unwind label %bb.ci

bb.an:                                            ; preds = %bb.am
  %i.ft = load ptr, ptr %i.fb, align 8
  %i.fu = invoke align 8 ptr @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionTNtNtCs1QQTzni0HOp_3syn5token2EqNtNtBM_4expr4ExprEE6as_refCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %i.ft)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %bb.an
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ap:                                            ; preds = %bb.an
  invoke void @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRTNtNtCs1QQTzni0HOp_3syn5token2EqNtNtBO_4expr4ExprEE3mapB1f_NCNvMsi_NtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signatureNtB1O_17FunctionSignature28from_arguments_and_attributes_0EB1S_(ptr nonnull sret([176 x i8]) align 8 %i.cy, ptr align 8 %i.fu)
          to label %bb.aq unwind label %bb.ao

bb.aq:                                            ; preds = %bb.ap
  %i.fw = invoke i32 @_RNvXNtCs1QQTzni0HOp_3syn7spannedINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature21SignatureItemArgumentENtB2_7Spanned4spanB19_(ptr nonnull align 8 %i.fb)
          to label %bb.ar unwind label %bb.ch     ; 2 uses

.body43.thread113.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.bp, %bb.bk, %bb.at, %bb.aw, %bb.br
  %lpad.loopexit.split-lp210 = landingpad { ptr, i32 }
          cleanup
  br label %.body43.thread

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  switch i8 %.sroa.0.0.ph, label %.unreachabledefault [
    i8 0, label %bb.as
    i8 1, label %bb.as
    i8 2, label %bb.at
    i8 3, label %bb.au
  ]

.unreachabledefault:                              ; preds = %bb.ar
  unreachable

default.unreachable:                              ; preds = %bb.dg, %bb.cs, %bb.ck
  unreachable

bb.as:                                            ; preds = %bb.ar, %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.da, i64 24, i1 false), !noalias !20
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE4pushCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.dh, ptr nonnull align 8 %i.bl)
          to label %bb.av unwind label %bb.bl, !noalias !20

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.da, i64 24, i1 false), !noalias !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.dz, ptr noundef nonnull align 8 dereferenceable(176) %i.cy, i64 176, i1 false), !noalias !20
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtB7_6string6StringINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs1QQTzni0HOp_3syn4expr4ExprEEE4pushCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.dy, ptr nonnull align 8 %i.bj)
          to label %.noexc40 unwind label %.body43.thread113.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.ar
  %i.fx = invoke { ptr, i64 } @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringE8as_derefCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.dw)
          to label %bb.bb unwind label %bb.bl, !noalias !20 ; 2 uses

bb.av:                                            ; preds = %bb.as
  %i.fy = load i64, ptr %i.cy, align 8, !noalias !20
  %.not.i = icmp eq i64 %i.fy, -1
  br i1 %.not.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.bc, ptr noundef nonnull align 8 dereferenceable(176) %i.cy, i64 176, i1 false), !noalias !20
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs1QQTzni0HOp_3syn4expr4ExprE4pushCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.ea, ptr nonnull align 8 %i.bc)
          to label %.noexc40 unwind label %.body43.thread113.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %bb.av
  %i.fz = invoke zeroext i1 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs1QQTzni0HOp_3syn4expr4ExprE8is_emptyCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.ea)
          to label %bb.ay unwind label %bb.bl, !noalias !20

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.fz, label %.noexc40, label %bb.az

bb.az:                                            ; preds = %bb.ay
  invoke void @_RINvMNtCs1QQTzni0HOp_3syn5errorNtB3_5Error3newReEB5_(ptr nonnull sret([24 x i8]) align 8 %i.bk, i32 %i.fw, ptr nonnull @34, i64 69)
          to label %bb.ba unwind label %bb.bl, !noalias !20

bb.ba:                                            ; preds = %bb.bf, %bb.az
  %.sink.i = phi ptr [ %i.bi, %bb.bf ], [ %i.bk, %bb.az ]
  %3 = phi i1 [ true, %bb.bf ], [ false, %bb.az ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %.sink.i, i64 24, i1 false)
  %i.ga = load i64, ptr %i.cy, align 8, !noalias !20
  %.not9.i = icmp eq i64 %i.ga, -1
  br i1 %.not9.i, label %bb.bg, label %bb.bh

.noexc40:                                         ; preds = %bb.aw, %bb.at, %bb.ay
  store i64 -1, ptr %i.db, align 8, !alias.scope !20
  br label %bb.bp

bb.bb:                                            ; preds = %bb.au
  %i.gb = extractvalue { ptr, i64 } %i.fx, 0
  %i.gc = extractvalue { ptr, i64 } %i.fx, 1
  %i.gd = invoke { ptr, i64 } @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE9unwrap_orCsbi23obv45GP_19pyo3_macros_backend(ptr %i.gb, i64 %i.gc, ptr nonnull inttoptr (i64 1 to ptr), i64 0)
          to label %bb.bc unwind label %bb.bl, !noalias !20 ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  %i.ge = extractvalue { ptr, i64 } %i.gd, 0
  %i.gf = extractvalue { ptr, i64 } %i.gd, 1
  store ptr %i.ge, ptr %i.bf, align 8, !noalias !20
  store i64 %i.gf, ptr %i.dx, align 8, !noalias !20
  invoke void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayReECs3FigHW6Y7TR_11proc_macro2(ptr nonnull sret([16 x i8]) align 8 %i.bd, ptr nonnull align 8 %i.bf)
          to label %bb.bd unwind label %bb.bl, !noalias !20

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !noalias !20
  %i.gg = invoke { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj2c_Kj1_ECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull @35, ptr nonnull align 8 %i.be)
          to label %bb.be unwind label %bb.bl, !noalias !20 ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.gh = extractvalue { ptr, ptr } %i.gg, 0
  %i.gi = extractvalue { ptr, ptr } %i.gg, 1
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.bg, ptr %i.gh, ptr %i.gi)
          to label %bb.bf unwind label %bb.bl, !noalias !20

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !20
  invoke void @_RINvMNtCs1QQTzni0HOp_3syn5errorNtB3_5Error3newNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_(ptr nonnull sret([24 x i8]) align 8 %i.bi, i32 %i.fw, ptr nonnull align 8 %i.bh)
          to label %bb.ba unwind label %bb.bl, !noalias !20

bb.bg:                                            ; preds = %bb.bh, %bb.ba
  br i1 %3, label %bb.bk, label %bb.bp

bb.bh:                                            ; preds = %bb.ba
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1QQTzni0HOp_3syn4expr4ExprEBF_(ptr nonnull align 8 %i.cy)
          to label %bb.bg unwind label %bb.bj, !noalias !20

bb.bi:                                            ; preds = %bb.bm, %bb.bl
  br i1 %.sroa.06.0.ph.i, label %bb.bo, label %.body43.thread

bb.bj:                                            ; preds = %bb.bh
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %3, label %bb.bo, label %.body43.thread

bb.bk:                                            ; preds = %bb.bg
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3FigHW6Y7TR_11proc_macro2(ptr nonnull align 8 %i.da)
          to label %bb.bp unwind label %.body43.thread113.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.az, %bb.ax, %bb.au, %bb.as
  %.sroa.06.0.ph.i = phi i1 [ true, %bb.bb ], [ true, %bb.bc ], [ true, %bb.bd ], [ true, %bb.be ], [ true, %bb.au ], [ true, %bb.bf ], [ false, %bb.as ], [ false, %bb.ax ], [ false, %bb.az ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gk = load i64, ptr %i.cy, align 8, !noalias !20
  %.not20.i = icmp eq i64 %i.gk, -1
  br i1 %.not20.i, label %bb.bi, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1QQTzni0HOp_3syn4expr4ExprEBF_(ptr nonnull align 8 %i.cy) #18
          to label %bb.bi unwind label %bb.bn, !noalias !20

bb.bn:                                            ; preds = %bb.bo, %bb.bm
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !20
  unreachable

bb.bo:                                            ; preds = %bb.bj, %bb.bi
  %.pn12.i = phi { ptr, i32 } [ %i.gj, %bb.bj ], [ %lpad.thr_comm.i, %bb.bi ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3FigHW6Y7TR_11proc_macro2(ptr nonnull align 8 %i.da) #18
          to label %.body43.thread unwind label %bb.bn, !noalias !20

bb.bp:                                            ; preds = %bb.bg, %.noexc40, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.dc, ptr nonnull align 8 %i.db)
          to label %bb.bq unwind label %.body43.thread113.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bp
  %i.gm = load i64, ptr %i.dc, align 8
  %.not18 = icmp eq i64 %i.gm, -1
  br i1 %.not18, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 24, i1 false)
  invoke void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature17FunctionSignatureNtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB24_EE13from_residualBQ_(ptr sret([224 x i8]) align 8 %0, ptr nonnull align 8 %i.bz, ptr nonnull align 8 @46)
          to label %bb.cf unwind label %.body43.thread113.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bs:                                            ; preds = %bb.bq
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.cz)
          to label %bb.bt unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %bb.bs
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.go = load i8, ptr %i.gn, align 8
  %i.gp = icmp slt i8 %i.go, 3
  br i1 %i.gp, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.gq = load ptr, ptr %i.fb, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8
  %.not19 = icmp eq i64 %i.gs, -1
  br i1 %.not19, label %.backedge.backedge, label %bb.bw

.backedge.backedge:                               ; preds = %bb.bu, %bb.cc
  br label %.backedge

bb.bv:                                            ; preds = %bb.bt
  %i.gt = invoke { ptr, ptr } @_RNvMs2_NtCskKLDkoKarTP_4core3fmtNtB5_9Arguments17from_str_nonconstCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull @44, i64 244)
          to label %bb.cd unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bw:                                            ; preds = %bb.bu
  invoke void @_RNvXsk_NtNtCs1QQTzni0HOp_3syn3gen5cloneNtNtB9_4expr4ExprNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr nonnull sret([176 x i8]) align 8 %i.cx, ptr nonnull align 8 %i.gr)
          to label %bb.bx unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bw
  %i.gu = invoke ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninitCsbi23obv45GP_19pyo3_macros_backend(i64 8, i64 176)
          to label %bb.ca unwind label %bb.by     ; 3 uses

bb.by:                                            ; preds = %bb.bx
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1QQTzni0HOp_3syn4expr4ExprEBF_(ptr nonnull align 8 %i.cx) #18
          to label %.body unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.ca:                                            ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.gu, ptr noundef nonnull align 8 dereferenceable(176) %i.cx, i64 176, i1 false)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 3 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs1QQTzni0HOp_3syn4expr4ExprEEEB1A_(ptr nonnull align 8 %i.gx)
          to label %bb.cc unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gy = landingpad { ptr, i32 }
          cleanup
  store ptr %i.gu, ptr %i.gx, align 8
  br label %.body

bb.cc:                                            ; preds = %bb.ca
  store ptr %i.gu, ptr %i.gx, align 8
  br label %.backedge.backedge

bb.cd:                                            ; preds = %bb.bv
  %i.gz = extractvalue { ptr, ptr } %i.gt, 0
  %i.ha = extractvalue { ptr, ptr } %i.gt, 1
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr %i.gz, ptr %i.ha, ptr nonnull align 8 @45) #17
          to label %bb.ce unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ce:                                            ; preds = %bb.cd
  unreachable

bb.cf:                                            ; preds = %bb.br
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.cz)
          to label %bb.cg unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cg:                                            ; preds = %.invoke, %bb.cf
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1QQTzni0HOp_3syn10punctuated4IterNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemEEB1l_(ptr nonnull align 8 %i.df)
          to label %bb.w unwind label %bb.f

bb.ch:                                            ; preds = %bb.aq
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1QQTzni0HOp_3syn4expr4ExprEEB11_(ptr nonnull align 8 %i.cy) #18
          to label %bb.cj unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ej, %bb.cj, %bb.ch, %.body43.thread, %.body, %bb.e, %bb.b
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.cj:                                            ; preds = %bb.ch, %bb.ao
  %.pn.ph = phi { ptr, i32 } [ %i.fv, %bb.ao ], [ %lpad.thr_comm.split-lp, %bb.ch ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3FigHW6Y7TR_11proc_macro2(ptr nonnull align 8 %i.da) #18
          to label %.body43.thread unwind label %bb.ci

bb.ck:                                            ; preds = %_RNvXs0_NtCs4yLFsuhaAhE_5quote7spannedNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature23SignatureItemPosargsSepNtB5_7Spanned6___spanBF_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  switch i8 %.sroa.0.0.ph, label %default.unreachable [
    i8 0, label %bb.cl
    i8 1, label %bb.cm
    i8 2, label %bb.cn
    i8 3, label %bb.co
  ]

bb.cl:                                            ; preds = %bb.ck
  %i.hc = invoke i64 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE3lenCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.dh) #20
          to label %.noexc45 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.cl
  store i64 %i.hc, ptr %i.eo, align 8, !noalias !21
  store i64 -1, ptr %i.ch, align 8, !alias.scope !21
  br label %bb.cp

bb.cm:                                            ; preds = %bb.ck
  invoke void @_RINvMNtCs1QQTzni0HOp_3syn5errorNtB3_5Error3newReEB5_(ptr nonnull sret([24 x i8]) align 8 %i.bb, i32 %i.fh, ptr nonnull @38, i64 25)
          to label %.noexc46 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  br label %bb.cp

bb.cn:                                            ; preds = %bb.ck
  %i.hd = invoke { ptr, i64 } @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringE8as_derefCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.eh) #20
          to label %.noexc47 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc47:                                         ; preds = %bb.cn
  %i.he = extractvalue { ptr, i64 } %i.hd, 0
  %i.hf = extractvalue { ptr, i64 } %i.hd, 1
  %i.hg = invoke { ptr, i64 } @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionReE9unwrap_orCsbi23obv45GP_19pyo3_macros_backend(ptr %i.he, i64 %i.hf, ptr nonnull inttoptr (i64 1 to ptr), i64 0) #20
          to label %.noexc48 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc48:                                         ; preds = %.noexc47
  %i.hh = extractvalue { ptr, i64 } %i.hg, 0
  %i.hi = extractvalue { ptr, i64 } %i.hg, 1
  store ptr %i.hh, ptr %i.ax, align 8, !noalias !21
  store i64 %i.hi, ptr %i.en, align 8, !noalias !21
  invoke void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayReECs3FigHW6Y7TR_11proc_macro2(ptr nonnull sret([16 x i8]) align 8 %i.av, ptr nonnull align 8 %i.ax) #20
          to label %.noexc49 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %.noexc48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !noalias !21
  %i.hj = invoke { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj1d_Kj1_ECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull @39, ptr nonnull align 8 %i.aw) #20
          to label %.noexc50 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc50:                                         ; preds = %.noexc49
  %i.hk = extractvalue { ptr, ptr } %i.hj, 0
  %i.hl = extractvalue { ptr, ptr } %i.hj, 1
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.ay, ptr %i.hk, ptr %i.hl) #20
          to label %.noexc51 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc51:                                         ; preds = %.noexc50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !noalias !21
  invoke void @_RINvMNtCs1QQTzni0HOp_3syn5errorNtB3_5Error3newNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_(ptr nonnull sret([24 x i8]) align 8 %i.ba, i32 %i.fh, ptr nonnull align 8 %i.az)
          to label %.noexc52 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %.noexc51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  br label %bb.cp

bb.co:                                            ; preds = %bb.ck
end_hunk_0
