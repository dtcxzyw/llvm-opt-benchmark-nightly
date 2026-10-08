Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_macros_backend-266071c329395f2b.pyo3_macros_backend.8382f7f5d6aca465-cgu.10?download=true
inline.NumInlined: 33
inline.NumDeleted: 8
begin_hunk_0_@_RNvMs4_NtCsbi23obv45GP_19pyo3_macros_backend6methodNtB5_6FnSpec5parse:bb.a
.noexc45.i.i:                                     ; preds = %bb.au
  store i32 0, ptr %i.an, align 8, !alias.scope !28, !noalias !27
  store i32 %i.fr, ptr %.sroa.238.0..sroa_idx.i.i.i, align 4, !alias.scope !28, !noalias !27
  br label %bb.az

bb.av:                                            ; preds = %bb.k
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtCs1QQTzni0HOp_3syn4attr9AttributeEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.ar)
          to label %bb.aw unwind label %bb.g, !noalias !27

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !noalias !27
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1QQTzni0HOp_3syn4attr9AttributeEEB1c_(ptr align 8 %2)
          to label %bb.ay unwind label %bb.ax, !noalias !27

bb.ax:                                            ; preds = %bb.aw
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !27
  br label %bb.f

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !27
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ft, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !25
  store i64 0, ptr %i.cx, align 8, !alias.scope !26, !noalias !25
  br label %_RNvNtCsbi23obv45GP_19pyo3_macros_backend6method23parse_method_attributes.exit.i

.body.thread54.loopexit.i.i:                      ; preds = %bb.bc, %bb.az, %bb.au, %.invoke.i.i, %bb.as, %bb.aq, %bb.ao, %.noexc33.i.i, %bb.z, %.noexc31.i.i, %bb.x, %bb.w, %.noexc28.i.i, %bb.v, %bb.u, %.noexc25.i.i, %bb.t, %bb.s, %.noexc22.i.i, %bb.r, %bb.q, %.noexc19.i.i, %bb.p, %bb.o, %.noexc16.i.i, %bb.n, %bb.m, %.noexc.i.i, %bb.l
  %lpad.loopexit58.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.body.thread54.loopexit.split-lp.i.i:             ; preds = %bb.bb
  %lpad.loopexit.split-lp59.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.body.i.i:                                        ; preds = %bb.bd
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.az:                                            ; preds = %.noexc45.i.i, %.invoke.i.i, %.noexc43.i.i, %.noexc41.i.i, %.noexc39.i.i, %bb.am, %bb.ai, %bb.ad, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !27
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttributeENtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1a_(ptr nonnull sret([32 x i8]) align 8 %i.ao, ptr nonnull align 8 %i.an)
          to label %bb.ba unwind label %.body.thread54.loopexit.i.i, !noalias !27

bb.ba:                                            ; preds = %bb.az
  %i.fu = load i32, ptr %i.ao, align 8, !noalias !27 ; 2 uses
  switch i32 %i.fu, label %bb.bc [
    i32 -2, label %bb.bb
    i32 -1, label %bb.bd
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.fv, i64 24, i1 false), !noalias !27
  invoke void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttributeENtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB2n_EE13from_residualB1l_(ptr nonnull sret([32 x i8]) align 8 %i.cx, ptr nonnull align 8 %i.aj, ptr nonnull align 8 @197)
          to label %bb.bf unwind label %.body.thread54.loopexit.split-lp.i.i, !noalias !25

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.3.0..sroa_idx.i.i, i64 28, i1 false), !noalias !27
  store i32 %i.fu, ptr %i.ak, align 8, !noalias !27
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttributeE4pushBJ_(ptr nonnull align 8 %i.au, ptr nonnull align 8 %i.ak)
          to label %bb.be unwind label %.body.thread54.loopexit.i.i, !noalias !27

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.am, ptr noundef nonnull align 8 dereferenceable(256) %i.ap, i64 256, i1 false), !noalias !27
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs1QQTzni0HOp_3syn4attr9AttributeE4pushBJ_(ptr nonnull align 8 %i.av, ptr nonnull align 8 %i.am)
          to label %.thread57.i.i.backedge unwind label %.body.i.i, !noalias !27

bb.be:                                            ; preds = %bb.bc
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1QQTzni0HOp_3syn4attr9AttributeEBF_(ptr nonnull align 8 %i.ap)
          to label %.thread57.i.i.backedge unwind label %.loopexit.i.i, !noalias !27

.thread57.i.i.backedge:                           ; preds = %bb.be, %bb.bd
  br label %.thread57.i.i

bb.bf:                                            ; preds = %bb.bb
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1QQTzni0HOp_3syn4attr9AttributeEBF_(ptr nonnull align 8 %i.ap)
          to label %bb.bg unwind label %.loopexit.split-lp.i.i, !noalias !25

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtCs1QQTzni0HOp_3syn4attr9AttributeEECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.ar)
          to label %bb.bh unwind label %bb.g, !noalias !25

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttributeEEB1c_(ptr nonnull align 8 %i.au)
          to label %bb.bi unwind label %.thread.i.i, !noalias !25

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1QQTzni0HOp_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.av)
          to label %_RNvNtCsbi23obv45GP_19pyo3_macros_backend6method23parse_method_attributes.exit.i unwind label %bb.gl

.body.thread.i.i:                                 ; preds = %.body.thread54.loopexit.split-lp.i.i, %.body.thread54.loopexit.i.i, %bb.al, %bb.ah, %bb.ac
  %eh.lpad-body52.i.i = phi { ptr, i32 } [ %i.fl, %bb.al ], [ %i.fg, %bb.ac ], [ %i.fj, %bb.ah ], [ %lpad.loopexit58.i.i, %.body.thread54.loopexit.i.i ], [ %lpad.loopexit.split-lp59.i.i, %.body.thread54.loopexit.split-lp.i.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1QQTzni0HOp_3syn4attr9AttributeEBF_(ptr nonnull align 8 %i.ap) #19
          to label %bb.j unwind label %bb.bj, !noalias !25

bb.bj:                                            ; preds = %bb.bk, %.body.thread.i.i, %bb.j, %bb.f
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !25
  unreachable

bb.bk:                                            ; preds = %.thread.i.i, %bb.d
  %.pn1249.i.i = phi { ptr, i32 } [ %i.eh, %.thread.i.i ], [ %.pn10.i.i, %bb.d ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1QQTzni0HOp_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.av) #19
          to label %.body unwind label %bb.bj, !noalias !25

_RNvNtCsbi23obv45GP_19pyo3_macros_backend6method23parse_method_attributes.exit.i: ; preds = %bb.bi, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !25
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttributeENtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1l_(ptr nonnull sret([32 x i8]) align 8 %i.cy, ptr nonnull align 8 %i.cx) #21
          to label %.noexc30 unwind label %bb.gl

.noexc30:                                         ; preds = %_RNvNtCsbi23obv45GP_19pyo3_macros_backend6method23parse_method_attributes.exit.i
  %i.fx = load i64, ptr %i.cy, align 8, !noalias !25
  %i.fy = trunc nuw i64 %i.fx to i1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  br i1 %i.fy, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.noexc30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.fz, i64 24, i1 false), !noalias !25
  invoke void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCsbi23obv45GP_19pyo3_macros_backend6method6FnTypeNtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1B_EE13from_residualBO_(ptr nonnull sret([24 x i8]) align 8 %i.dy, ptr nonnull align 8 %i.aw, ptr nonnull align 8 @148) #21
          to label %bb.gm unwind label %bb.gl

bb.bm:                                            ; preds = %.noexc30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.fz, i64 24, i1 false), !noalias !25
  %i.ga = invoke { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttributeENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefBJ_(ptr nonnull align 8 %i.cz)
          to label %bb.bo unwind label %bb.bn, !noalias !25 ; 2 uses

.body.i:                                          ; preds = %bb.gb, %bb.fr, %bb.fh, %bb.ex, %bb.en, %bb.ed, %.thread.i, %bb.cn, %bb.ca, %bb.bn
  %.pn.pn.i = phi { ptr, i32 } [ %.pn73.i, %.thread.i ], [ %lpad.thr_comm.split-lp.i, %bb.cn ], [ %i.kz, %bb.gb ], [ %i.ju, %bb.ed ], [ %i.jx, %bb.en ], [ %i.ki, %bb.ex ], [ %i.kl, %bb.fh ], [ %i.kw, %bb.fr ], [ %i.gb, %bb.bn ], [ %i.hj, %bb.ca ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttributeEEB1c_(ptr nonnull align 8 %i.cz) #19
          to label %.body unwind label %bb.dd

bb.bn:                                            ; preds = %.invoke.i, %bb.gh, %bb.gd, %bb.fz, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fp, %bb.fo, %bb.fj, %bb.ff, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ev, %bb.eu, %bb.ep, %bb.el, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.eb, %bb.ea, %bb.dy, %bb.dx, %bb.dw, %bb.dr, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.cc, %.noexc57.i, %bb.bz, %.noexc.i, %bb.by, %bb.bt, %bb.br, %bb.bp, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttribute4iterBy_.exit.i, %bb.bo, %bb.bm
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bo:                                            ; preds = %bb.bm
  %i.gc = extractvalue { ptr, i64 } %i.ga, 0
  %i.gd = extractvalue { ptr, i64 } %i.ga, 1
  %i.ge = invoke { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttributeE3newBS_(ptr align 8 %i.gc, i64 %i.gd) #21
          to label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttribute4iterBy_.exit.i unwind label %bb.bn, !noalias !25 ; 2 uses

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttribute4iterBy_.exit.i: ; preds = %bb.bo
  %i.gf = extractvalue { ptr, ptr } %i.ge, 0
  %i.gg = extractvalue { ptr, ptr } %i.ge, 1
  store ptr %i.gf, ptr %i.cv, align 8, !noalias !25
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.gg, ptr %i.gh, align 8, !noalias !25
  %i.gi = invoke zeroext i1 @_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttributeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_BS_NtBS_6FnSpec13parse_fn_type0EBU_(ptr nonnull align 8 %i.cv)
          to label %bb.bp unwind label %bb.bn, !noalias !25

bb.bp:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttribute4iterBy_.exit.i
  %i.gj = zext i1 %i.gi to i8
  store i8 %i.gj, ptr %i.cw, align 1, !noalias !25
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 3 uses
  %i.gl = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttributeE12as_mut_sliceBI_(ptr nonnull align 8 %i.cz)
          to label %bb.bq unwind label %bb.bn, !noalias !25 ; 2 uses

bb.bq:                                            ; preds = %bb.bp
  %i.gm = extractvalue { ptr, i64 } %i.gl, 0      ; 11 uses
  %i.gn = extractvalue { ptr, i64 } %i.gl, 1      ; 4 uses
  switch i64 %i.gn, label %bb.bt [
    i64 0, label %bb.br
    i64 1, label %bb.bs
    i64 2, label %bb.bu
  ]

bb.br:                                            ; preds = %bb.bq
  invoke fastcc void @_RNCNvMs4_NtCsbi23obv45GP_19pyo3_macros_backend6methodNtB7_6FnSpec13parse_fn_types_0B9_(ptr noalias align 8 %i.ct, ptr align 8 %1, ptr nonnull %i.cw, ptr nonnull @146, i64 45)
          to label %bb.gh unwind label %bb.bn, !noalias !25

bb.bs:                                            ; preds = %bb.bq
  %i.go = load i32, ptr %i.gm, align 8, !noalias !25
  switch i32 %i.go, label %bb.ch [
    i32 0, label %bb.dl
    i32 1, label %bb.dm
    i32 2, label %bb.cg
    i32 3, label %bb.dn
    i32 4, label %bb.do
    i32 5, label %bb.dp
    i32 6, label %bb.dq
  ]

bb.bt:                                            ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bq
  %i.gp = icmp ugt i64 %i.gn, 1
  call void @llvm.assume(i1 %i.gp)
  store ptr %i.gm, ptr %i.bv, align 8, !noalias !25
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 32 ; 3 uses
  %i.gr = add i64 %i.gn, -2                       ; 3 uses
  %i.gs = getelementptr [32 x i8], ptr %i.gm, i64 %i.gn ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 -32
  store ptr %i.gt, ptr %i.bu, align 8, !noalias !25
  %i.gu = invoke { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttributeE3newBS_(ptr nonnull align 8 %i.gq, i64 %i.gr) #21
          to label %bb.ci unwind label %bb.bn, !noalias !25 ; 2 uses

bb.bu:                                            ; preds = %bb.bq
  %i.gv = load i32, ptr %i.gm, align 8, !noalias !25
  switch i32 %i.gv, label %bb.bt [
    i32 0, label %bb.bv
    i32 1, label %bb.bw
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.gx = load i32, ptr %i.gw, align 8, !noalias !25
  %i.gy = icmp eq i32 %i.gx, 1
  br i1 %i.gy, label %bb.bx, label %bb.bt

bb.bw:                                            ; preds = %bb.bu
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.ha = load i32, ptr %i.gz, align 8, !noalias !25
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %bb.bx, label %bb.bt

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.sink.i = phi i64 [ 4, %bb.bw ], [ 36, %bb.bv ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.sink.i
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !25
  %i.hd = load ptr, ptr %i.da, align 8, !noalias !31 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load i8, ptr %i.he, align 8, !noalias !31
  %.not.i55.i = icmp eq i8 %i.hf, -1
  br i1 %.not.i55.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hg = invoke i32 @_RNvMsx_Cs3FigHW6Y7TR_11proc_macro2NtB5_5Ident4span(ptr nonnull align 8 %i.hd)
          to label %.noexc.i unwind label %bb.bn, !noalias !25

.noexc.i:                                         ; preds = %bb.by
  invoke void @_RINvMNtCs1QQTzni0HOp_3syn5errorNtB3_5Error3newReEB5_(ptr nonnull sret([24 x i8]) align 8 %i.k, i32 %i.hg, ptr nonnull @23, i64 32)
          to label %.noexc56.i unwind label %bb.bn, !noalias !25

.noexc56.i:                                       ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !25
  br label %bb.cc

bb.bz:                                            ; preds = %bb.bx
  %i.hh = invoke i32 @_RNvMsi_Cs3FigHW6Y7TR_11proc_macro2NtB5_4Span9call_site()
          to label %.noexc57.i unwind label %bb.bn, !noalias !25

.noexc57.i:                                       ; preds = %bb.bz
  invoke void @_RNvMsx_Cs3FigHW6Y7TR_11proc_macro2NtB5_5Ident3new(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr nonnull @24, i64 7, i32 %i.hh, ptr nonnull align 8 @25)
          to label %.noexc58.i unwind label %bb.bn, !noalias !25

.noexc58.i:                                       ; preds = %.noexc57.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !31
  %i.hi = load ptr, ptr %i.da, align 8, !noalias !31
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs3FigHW6Y7TR_11proc_macro25IdentEECs1QQTzni0HOp_3syn(ptr align 8 %i.hi)
          to label %bb.cb unwind label %bb.ca, !noalias !31

bb.ca:                                            ; preds = %.noexc58.i
  %i.hj = landingpad { ptr, i32 }
          cleanup
  %i.hk = load ptr, ptr %i.da, align 8, !noalias !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !31
  br label %.body.i

bb.cb:                                            ; preds = %.noexc58.i
  %i.hl = load ptr, ptr %i.da, align 8, !noalias !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hl, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !31
  store i64 -1, ptr %i.cp, align 8, !alias.scope !30, !noalias !25
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.noexc56.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !25
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.cq, ptr nonnull align 8 %i.cp)
          to label %bb.cd unwind label %bb.bn, !noalias !25

bb.cd:                                            ; preds = %bb.cc
  %i.hm = load i64, ptr %i.cq, align 8, !noalias !25
  %.not.i = icmp eq i64 %i.hm, -1
  br i1 %.not.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false), !noalias !25
  br label %.invoke.i

bb.cf:                                            ; preds = %bb.cd
  %i.hn = load i32, ptr %i.hc, align 4, !noalias !25
  br label %bb.cg

bb.cg:                                            ; preds = %bb.gk, %bb.gg, %bb.fm, %bb.es, %bb.dx, %bb.ds, %bb.dq, %bb.cf, %bb.bs
  %.sroa.16.0.i = phi i32 [ %.sroa.2.0.copyload.i, %bb.gk ], [ undef, %bb.bs ], [ undef, %bb.ds ], [ undef, %bb.cf ], [ %.sroa.216.0.copyload.i, %bb.es ], [ %.sroa.218.0.copyload.i, %bb.fm ], [ %.sroa.220.0.copyload.i, %bb.gg ], [ undef, %bb.dq ], [ undef, %bb.dx ]
  %.sroa.10.0.i = phi i32 [ %.sroa.010.0.copyload.i, %bb.gk ], [ undef, %bb.bs ], [ undef, %bb.ds ], [ %i.hn, %bb.cf ], [ %.sroa.015.0.copyload.i, %bb.es ], [ %.sroa.017.0.copyload.i, %bb.fm ], [ %.sroa.019.0.copyload.i, %bb.gg ], [ undef, %bb.dq ], [ %i.jn, %bb.dx ]
  %.sroa.0.0.i = phi i32 [ 3, %bb.gk ], [ 5, %bb.bs ], [ 5, %bb.ds ], [ 4, %bb.cf ], [ 0, %bb.es ], [ 1, %bb.fm ], [ 2, %bb.gg ], [ 7, %bb.dq ], [ 4, %bb.dx ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i32 %.sroa.0.0.i, ptr %i.ho, align 8, !alias.scope !25
  %.sroa.225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  store i32 %.sroa.10.0.i, ptr %.sroa.225.0..sroa_idx.i, align 4, !alias.scope !25
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store i32 %.sroa.16.0.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !25
  store i64 -1, ptr %i.dy, align 8, !alias.scope !25
  br label %.invoke

.sink.split.i:                                    ; preds = %bb.fw, %bb.fc, %bb.ei, %bb.dy, %bb.dc
  %.sink86.i = phi ptr [ %i.cf, %bb.fc ], [ %i.cl, %bb.ei ], [ %i.co, %bb.dy ], [ %i.bh, %bb.dc ], [ %i.bz, %bb.fw ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %.sink86.i, i64 24, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %.sink.split.i, %.invoke.i, %bb.cg
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttributeEEB1c_(ptr nonnull align 8 %i.cz)
          to label %bb.gm unwind label %bb.gl

bb.ch:                                            ; preds = %bb.bs
  unreachable

bb.ci:                                            ; preds = %bb.bt
  %i.hp = load ptr, ptr %i.bv, align 8, !noalias !25
  %i.hq = getelementptr i8, ptr %i.hp, i64 4
  %.val40.i = load i32, ptr %i.hq, align 4, !noalias !25
  %i.hr = extractvalue { ptr, ptr } %i.gu, 1
  %i.hs = extractvalue { ptr, ptr } %i.gu, 0
  %i.ht = invoke i32 @_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttributeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtCs3FigHW6Y7TR_11proc_macro24SpanNCNvMs4_BS_NtBS_6FnSpec13parse_fn_types2_0EBU_(ptr %i.hs, ptr %i.hr, i32 %.val40.i)
          to label %bb.cj unwind label %bb.bn, !noalias !25

bb.cj:                                            ; preds = %bb.ci
  store i32 %i.ht, ptr %i.bt, align 4, !noalias !25
  %i.hu = getelementptr i8, ptr %i.gs, i64 -28
  %.val.i = load i32, ptr %i.hu, align 4, !noalias !25
  %i.hv = invoke { i32, i32 } @_RNvMsi_Cs3FigHW6Y7TR_11proc_macro2NtB5_4Span4join(ptr nonnull align 4 %i.bt, i32 %.val.i)
          to label %bb.ck unwind label %bb.bn, !noalias !25 ; 2 uses

bb.ck:                                            ; preds = %bb.cj
  %i.hw = extractvalue { i32, i32 } %i.hv, 0
  %i.hx = extractvalue { i32, i32 } %i.hv, 1
  %i.hy = load i32, ptr %i.bt, align 4, !noalias !25
  %i.hz = invoke i32 @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtCs3FigHW6Y7TR_11proc_macro24SpanE9unwrap_orCs4yLFsuhaAhE_5quote(i32 %i.hw, i32 %i.hx, i32 %i.hy)
          to label %bb.cl unwind label %bb.bn, !noalias !25

bb.cl:                                            ; preds = %bb.ck
  store ptr %i.bv, ptr %i.bq, align 8, !noalias !25
  %.sroa.2.0..sroa_idx65.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr @_RNvXs1j_NtCskKLDkoKarTP_4core3fmtQNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttributeNtB6_7Display3fmtBA_, ptr %.sroa.2.0..sroa_idx65.i, align 8, !noalias !25
  %i.ia = invoke { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj1f_Kj1_ECs3FigHW6Y7TR_11proc_macro2(ptr nonnull @131, ptr nonnull align 8 %i.bq)
          to label %bb.cm unwind label %bb.bn, !noalias !25 ; 2 uses

bb.cm:                                            ; preds = %bb.cl
  %i.ib = extractvalue { ptr, ptr } %i.ia, 0
  %i.ic = extractvalue { ptr, ptr } %i.ia, 1
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.br, ptr %i.ib, ptr %i.ic)
          to label %.peel.begin.i unwind label %bb.bn, !noalias !25

.thread75.loopexit.loopexit.i:                    ; preds = %bb.dk, %bb.dj, %bb.df, %bb.de, %.backedge.peel.i
  %lpad.loopexit79.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread75.loopexit.loopexit.split-lp.i:           ; preds = %bb.ct, %bb.cq, %bb.cp, %.peel.begin.i
  %lpad.loopexit.split-lp80.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread75.loopexit.split-lp.i:                    ; preds = %bb.db, %bb.cx, %bb.cw, %bb.cv
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.cn:                                            ; preds = %bb.dc
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.peel.begin.i:                                    ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false), !noalias !25
  %i.id = getelementptr inbounds nuw [32 x i8], ptr %i.gq, i64 %i.gr
  store ptr %i.gq, ptr %i.bp, align 8, !noalias !25
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.id, ptr %i.ie, align 8, !noalias !25
  %.sroa.268.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.if = invoke align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttributeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_(ptr nonnull align 8 %i.bp)
          to label %bb.co unwind label %.thread75.loopexit.loopexit.split-lp.i, !noalias !25 ; 2 uses

bb.co:                                            ; preds = %.peel.begin.i
  %.not37.peel.i = icmp eq ptr %i.if, null
  br i1 %.not37.peel.i, label %.loopexit.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store ptr %i.if, ptr %i.bo, align 8, !noalias !25, !captures !5
  store ptr %i.bo, ptr %i.bl, align 8, !noalias !25
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttributeNtB6_7Display3fmtBA_, ptr %.sroa.268.0..sroa_idx.i, align 8, !noalias !25
  %i.ig = invoke { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj7_Kj1_ECs3FigHW6Y7TR_11proc_macro2(ptr nonnull @133, ptr nonnull align 8 %i.bl)
          to label %bb.cq unwind label %.thread75.loopexit.loopexit.split-lp.i, !noalias !25 ; 2 uses

bb.cq:                                            ; preds = %bb.cp
  %i.ih = extractvalue { ptr, ptr } %i.ig, 0
  %i.ii = extractvalue { ptr, ptr } %i.ig, 1
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.bm, ptr %i.ih, ptr %i.ii)
          to label %bb.cr unwind label %.thread75.loopexit.loopexit.split-lp.i, !noalias !25

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false), !noalias !25
  %i.ij = invoke { ptr, i64 } @_RNvXsx_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.bn)
          to label %bb.cs unwind label %.loopexit.split-lp.i, !noalias !25 ; 2 uses

bb.cs:                                            ; preds = %bb.cr
  %i.ik = extractvalue { ptr, i64 } %i.ij, 0
  %i.il = extractvalue { ptr, i64 } %i.ij, 1
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.bs, ptr %i.ik, i64 %i.il)
          to label %bb.ct unwind label %.loopexit.split-lp.i, !noalias !25

bb.ct:                                            ; preds = %bb.cs
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3FigHW6Y7TR_11proc_macro2(ptr nonnull align 8 %i.bn)
          to label %.backedge.peel.i unwind label %.thread75.loopexit.loopexit.split-lp.i, !noalias !25

.backedge.peel.i:                                 ; preds = %bb.ct, %bb.dk
  %i.im = invoke align 8 ptr @_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttributeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_(ptr nonnull align 8 %i.bp)
          to label %bb.cu unwind label %.thread75.loopexit.loopexit.i, !noalias !25 ; 2 uses

bb.cu:                                            ; preds = %.backedge.peel.i
  %.not37.i = icmp eq ptr %i.im, null
  br i1 %.not37.i, label %.loopexit.i, label %bb.de

.loopexit.i:                                      ; preds = %bb.cu, %bb.co
  %i.in = icmp eq i64 %i.gr, 0
  br i1 %i.in, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.loopexit.i
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.bs, ptr nonnull @132, i64 4)
          to label %bb.cw unwind label %.thread75.loopexit.split-lp.i, !noalias !25

bb.cw:                                            ; preds = %bb.cv, %.loopexit.i
  store ptr %i.bu, ptr %i.bi, align 8, !noalias !25
  %.sroa.270.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @_RNvXs1j_NtCskKLDkoKarTP_4core3fmtQNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttributeNtB6_7Display3fmtBA_, ptr %.sroa.270.0..sroa_idx.i, align 8, !noalias !25
  %i.io = invoke { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj7_Kj1_ECs3FigHW6Y7TR_11proc_macro2(ptr nonnull @133, ptr nonnull align 8 %i.bi)
          to label %bb.cx unwind label %.thread75.loopexit.split-lp.i, !noalias !25 ; 2 uses

bb.cx:                                            ; preds = %bb.cw
  %i.ip = extractvalue { ptr, ptr } %i.io, 0
  %i.iq = extractvalue { ptr, ptr } %i.io, 1
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.bj, ptr %i.ip, ptr %i.iq)
          to label %bb.cy unwind label %.thread75.loopexit.split-lp.i, !noalias !25

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !noalias !25
  %i.ir = invoke { ptr, i64 } @_RNvXsx_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.bk)
          to label %bb.da unwind label %bb.cz, !noalias !25 ; 2 uses

bb.cz:                                            ; preds = %bb.da, %bb.cy
  %i.is = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3FigHW6Y7TR_11proc_macro2(ptr nonnull align 8 %i.bk) #19
          to label %.thread.i unwind label %bb.dd, !noalias !25

bb.da:                                            ; preds = %bb.cy
  %i.it = extractvalue { ptr, i64 } %i.ir, 0
  %i.iu = extractvalue { ptr, i64 } %i.ir, 1
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.bs, ptr %i.it, i64 %i.iu)
          to label %bb.db unwind label %bb.cz, !noalias !25

bb.db:                                            ; preds = %bb.da
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3FigHW6Y7TR_11proc_macro2(ptr nonnull align 8 %i.bk)
          to label %bb.dc unwind label %.thread75.loopexit.split-lp.i, !noalias !25

bb.dc:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !noalias !25
  invoke void @_RINvMNtCs1QQTzni0HOp_3syn5errorNtB3_5Error3newNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_(ptr nonnull sret([24 x i8]) align 8 %i.bh, i32 %i.hz, ptr nonnull align 8 %i.bg)
          to label %.sink.split.i unwind label %bb.cn, !noalias !25

bb.dd:                                            ; preds = %bb.fr, %bb.ex, %bb.ed, %.thread.i, %bb.dh, %bb.cz, %.body.i
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.de:                                            ; preds = %bb.cu
  store ptr %i.im, ptr %i.bo, align 8, !noalias !25, !captures !5
  store ptr %i.bo, ptr %i.bl, align 8, !noalias !25
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsbi23obv45GP_19pyo3_macros_backend6method19MethodTypeAttributeNtB6_7Display3fmtBA_, ptr %.sroa.268.0..sroa_idx.i, align 8, !noalias !25
  %i.iw = invoke { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj7_Kj1_ECs3FigHW6Y7TR_11proc_macro2(ptr nonnull @133, ptr nonnull align 8 %i.bl)
          to label %bb.df unwind label %.thread75.loopexit.loopexit.i, !noalias !25 ; 2 uses

bb.df:                                            ; preds = %bb.de
  %i.ix = extractvalue { ptr, ptr } %i.iw, 0
  %i.iy = extractvalue { ptr, ptr } %i.iw, 1
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.bm, ptr %i.ix, ptr %i.iy)
          to label %bb.dg unwind label %.thread75.loopexit.loopexit.i, !noalias !25

bb.dg:                                            ; preds = %bb.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false), !noalias !25
  %i.iz = invoke { ptr, i64 } @_RNvXsx_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.bn)
          to label %bb.di unwind label %.loopexit81.i, !noalias !25 ; 2 uses

.loopexit81.i:                                    ; preds = %bb.di, %bb.dg
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

.loopexit.split-lp.i:                             ; preds = %bb.cs, %bb.cr
  %lpad.loopexit.split-lp82.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dh:                                            ; preds = %.loopexit.split-lp.i, %.loopexit81.i
  %lpad.phi83.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit81.i ], [ %lpad.loopexit.split-lp82.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3FigHW6Y7TR_11proc_macro2(ptr nonnull align 8 %i.bn) #19
          to label %.thread.i unwind label %bb.dd, !noalias !25

bb.di:                                            ; preds = %bb.dg
  %i.ja = extractvalue { ptr, i64 } %i.iz, 0
  %i.jb = extractvalue { ptr, i64 } %i.iz, 1
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.bs, ptr %i.ja, i64 %i.jb)
          to label %bb.dj unwind label %.loopexit81.i, !noalias !25

bb.dj:                                            ; preds = %bb.di
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3FigHW6Y7TR_11proc_macro2(ptr nonnull align 8 %i.bn)
          to label %bb.dk unwind label %.thread75.loopexit.loopexit.i, !noalias !25

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4pushCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.bs, i32 44)
          to label %.backedge.peel.i unwind label %.thread75.loopexit.loopexit.i, !noalias !25, !llvm.loop !22

.thread.i:                                        ; preds = %bb.dh, %bb.cz, %.thread75.loopexit.split-lp.i, %.thread75.loopexit.loopexit.split-lp.i, %.thread75.loopexit.loopexit.i
  %.pn73.i = phi { ptr, i32 } [ %lpad.phi83.i, %bb.dh ], [ %i.is, %bb.cz ], [ %lpad.loopexit.split-lp.i, %.thread75.loopexit.split-lp.i ], [ %lpad.loopexit79.i, %.thread75.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp80.i, %.thread75.loopexit.loopexit.split-lp.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3FigHW6Y7TR_11proc_macro2(ptr nonnull align 8 %i.bs) #19
          to label %.body.i unwind label %bb.dd, !noalias !25

bb.dl:                                            ; preds = %bb.bs
  invoke fastcc void @_RNCNvMs4_NtCsbi23obv45GP_19pyo3_macros_backend6methodNtB7_6FnSpec13parse_fn_types1_0B9_(ptr noalias align 8 %i.cr, ptr nonnull %i.da)
          to label %bb.dr unwind label %bb.bn, !noalias !25

bb.dm:                                            ; preds = %bb.bs
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.jd = invoke align 8 ptr @_RNvMNtCs1QQTzni0HOp_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4item5FnArgNtNtB4_5token5CommaE5firstB4_(ptr nonnull align 8 %i.jc)
          to label %bb.du unwind label %bb.bn, !noalias !25 ; 3 uses

bb.dn:                                            ; preds = %bb.bs
  %i.je = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  invoke void @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtCs3FigHW6Y7TR_11proc_macro25IdentE4takeCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.cn, ptr nonnull align 8 %i.je)
          to label %bb.dz unwind label %bb.bn, !noalias !25

bb.do:                                            ; preds = %bb.bs
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  invoke void @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtCs3FigHW6Y7TR_11proc_macro25IdentE4takeCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.ch, ptr nonnull align 8 %i.jf)
          to label %bb.et unwind label %bb.bn, !noalias !25

bb.dp:                                            ; preds = %bb.bs
  %i.jg = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  invoke void @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtCs3FigHW6Y7TR_11proc_macro25IdentE4takeCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull sret([24 x i8]) align 8 %i.cb, ptr nonnull align 8 %i.jg)
          to label %bb.fn unwind label %bb.bn, !noalias !25

bb.dq:                                            ; preds = %bb.bs
  br label %bb.cg

bb.dr:                                            ; preds = %bb.dl
  invoke void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.cs, ptr nonnull align 8 %i.cr)
          to label %bb.ds unwind label %bb.bn, !noalias !25

bb.ds:                                            ; preds = %bb.dr
  %i.jh = load i64, ptr %i.cs, align 8, !noalias !25
  %.not35.i = icmp eq i64 %i.jh, -1
  br i1 %.not35.i, label %bb.cg, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !noalias !25
  br label %.invoke.i

bb.du:                                            ; preds = %bb.dm
  %.not34.i = icmp eq ptr %i.jd, null
  br i1 %.not34.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ji = load i64, ptr %i.jd, align 8, !noalias !25
  %i.jj = icmp eq i64 %i.ji, -1
  br i1 %i.jj, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 276
end_hunk_0
