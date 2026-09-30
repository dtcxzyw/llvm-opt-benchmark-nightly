Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/salsa_macros-8506bcd81fafe119.salsa_macros.8d23a0edb865d62-cgu.05?download=true
inline.NumInlined: 35
inline.NumDeleted: 23
begin_hunk_0_@_RNvMs_NtCsKXd8SJXguA_12salsa_macros10tracked_fnNtB4_5Macro6try_fn:bb.a
          to label %bb.bc unwind label %bb.ax

bb.bc:                                            ; preds = %bb.bb
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 1400 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !41
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.km = invoke { ptr, ptr } @_RNvMNtCsgFSQ9XOTBNe_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4item5FnArgNtNtB4_5token5CommaE4iterB4_(ptr nonnull align 8 %i.kl)
          to label %.noexc81 unwind label %bb.be  ; 2 uses

.noexc81:                                         ; preds = %bb.bc
  %i.kn = extractvalue { ptr, ptr } %i.km, 0
  %i.ko = extractvalue { ptr, ptr } %i.km, 1
  invoke void @_RNvYINtNtCsgFSQ9XOTBNe_3syn10punctuated4IterNtNtB7_4item5FnArgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4skipCsKXd8SJXguA_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.bn, ptr %i.kn, ptr align 8 %i.ko, i64 1) #18
          to label %.noexc82 unwind label %bb.be

.noexc82:                                         ; preds = %.noexc81
  invoke void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters4skip4SkipINtNtCsgFSQ9XOTBNe_3syn10punctuated4IterNtNtBY_4item5FnArgEENtNtNtBa_6traits8iterator8Iterator3zipINtNtNtBc_3ops5range9RangeFromlEECsKXd8SJXguA_12salsa_macros(ptr nonnull sret([48 x i8]) align 8 %i.bo, ptr nonnull align 8 %i.bn, i32 0) #18
          to label %.noexc83 unwind label %bb.be

.noexc83:                                         ; preds = %.noexc82
  invoke void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtB8_4skip4SkipINtNtCsgFSQ9XOTBNe_3syn10punctuated4IterNtNtB1e_4item5FnArgEEINtNtNtBc_3ops5range9RangeFromlEENtNtNtBa_6traits8iterator8Iterator3mapNtCs1K5DUQUZc67_11proc_macro25IdentNCNvNtCsKXd8SJXguA_12salsa_macros7fn_util9input_ids0EB3W_(ptr nonnull sret([56 x i8]) align 8 %i.bp, ptr nonnull align 8 %i.bo, ptr nonnull align 8 %i.kk) #18
          to label %.noexc84 unwind label %bb.be

.noexc84:                                         ; preds = %.noexc83
  invoke void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtB8_4skip4SkipINtNtCsgFSQ9XOTBNe_3syn10punctuated4IterNtNtB1u_4item5FnArgEEINtNtNtBc_3ops5range9RangeFromlEENCNvNtCsKXd8SJXguA_12salsa_macros7fn_util9input_ids0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs1K5DUQUZc67_11proc_macro25IdentEEB31_(ptr nonnull sret([24 x i8]) align 8 %i.gz, ptr nonnull align 8 %i.bp) #18
          to label %bb.bf unwind label %bb.be

bb.bd:                                            ; preds = %bb.bg, %bb.be
  %.pn65 = phi { ptr, i32 } [ %i.kp, %bb.be ], [ %.pn63, %bb.bg ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn8lifetime8LifetimeEBF_(ptr nonnull align 8 %i.ha) #16
          to label %.body unwind label %bb.ho

bb.be:                                            ; preds = %.invoke199, %.noexc84, %.noexc83, %.noexc82, %.noexc81, %bb.bc
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bf:                                            ; preds = %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !42
  %i.kq = invoke { ptr, ptr } @_RNvMNtCsgFSQ9XOTBNe_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4item5FnArgNtNtB4_5token5CommaE4iterB4_(ptr nonnull align 8 %i.kl)
          to label %.noexc86 unwind label %bb.bh  ; 2 uses

.noexc86:                                         ; preds = %bb.bf
  %i.kr = extractvalue { ptr, ptr } %i.kq, 0
  %i.ks = extractvalue { ptr, ptr } %i.kq, 1
  invoke void @_RNvYINtNtCsgFSQ9XOTBNe_3syn10punctuated4IterNtNtB7_4item5FnArgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4skipCsKXd8SJXguA_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.bl, ptr %i.kr, ptr align 8 %i.ks, i64 1) #18
          to label %.noexc87 unwind label %bb.bh

.noexc87:                                         ; preds = %.noexc86
  invoke void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters4skip4SkipINtNtCsgFSQ9XOTBNe_3syn10punctuated4IterNtNtBY_4item5FnArgEENtNtNtBa_6traits8iterator8Iterator3mapINtNtBc_6result6ResultRNtNtBY_2ty4TypeNtNtBY_5error5ErrorENCNvNtCsKXd8SJXguA_12salsa_macros7fn_util9input_tys0EB3v_(ptr nonnull sret([24 x i8]) align 8 %i.bm, ptr nonnull align 8 %i.bl) #18
          to label %.noexc88 unwind label %bb.bh

.noexc88:                                         ; preds = %.noexc87
  invoke void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB8_4skip4SkipINtNtCsgFSQ9XOTBNe_3syn10punctuated4IterNtNtB1e_4item5FnArgEENCNvNtCsKXd8SJXguA_12salsa_macros7fn_util9input_tys0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtNtB1e_2ty4TypeENtNtB1e_5error5ErrorEEB2e_(ptr nonnull sret([32 x i8]) align 8 %i.gw, ptr nonnull align 8 %i.bm) #18
          to label %bb.bi unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bm, %bb.bh
  %.pn63 = phi { ptr, i32 } [ %i.kt, %bb.bh ], [ %.pn61, %bb.bm ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs1K5DUQUZc67_11proc_macro25IdentEECsKXd8SJXguA_12salsa_macros(ptr nonnull align 8 %i.gz) #16
          to label %bb.bd unwind label %bb.ho

bb.bh:                                            ; preds = %.invoke200, %.noexc88, %.noexc87, %.noexc86, %bb.bf, %bb.bk, %bb.bi
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bi:                                            ; preds = %.noexc88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !42
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtNtCsgFSQ9XOTBNe_3syn2ty4TypeENtNtB1m_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsKXd8SJXguA_12salsa_macros(ptr nonnull sret([32 x i8]) align 8 %i.gx, ptr nonnull align 8 %i.gw)
          to label %bb.bj unwind label %bb.bh

bb.bj:                                            ; preds = %bb.bi
  %i.ku = load i64, ptr %i.gx, align 8
  %i.kv = trunc nuw i64 %i.ku to i1
  %i.kw = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  br i1 %i.kv, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.kw, i64 24, i1 false)
  invoke void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr nonnull sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.dj, ptr nonnull align 8 @80)
          to label %.invoke199 unwind label %bb.bh

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gy, ptr noundef nonnull align 8 dereferenceable(24) %i.kw, i64 24, i1 false)
  %i.kx = invoke { ptr, i64 } @_RNvXs8_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecRNtNtCsgFSQ9XOTBNe_3syn2ty4TypeENtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5derefCsKXd8SJXguA_12salsa_macros(ptr nonnull align 8 %i.gy)
          to label %bb.bo unwind label %bb.bn     ; 2 uses

bb.bm:                                            ; preds = %.body97, %bb.bn
  %.pn61 = phi { ptr, i32 } [ %i.ky, %bb.bn ], [ %.pn59, %.body97 ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtNtCsgFSQ9XOTBNe_3syn2ty4TypeEECsKXd8SJXguA_12salsa_macros(ptr nonnull align 8 %i.gy) #16
          to label %bb.bg unwind label %bb.ho

bb.bn:                                            ; preds = %.invoke201, %bb.bq, %bb.bs, %_RNvMs_NtCsKXd8SJXguA_12salsa_macros10tracked_fnNtB4_5Macro9output_ty.exit, %bb.bp, %bb.bo, %bb.bl
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bo:                                            ; preds = %bb.bl
  %i.kz = extractvalue { ptr, i64 } %i.kx, 0
  %i.la = extractvalue { ptr, i64 } %i.kx, 1
  %i.lb = invoke { ptr, ptr } @_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtCsgFSQ9XOTBNe_3syn2ty4Type4iterCsKXd8SJXguA_12salsa_macros(ptr align 8 %i.kz, i64 %i.la)
          to label %bb.bp unwind label %bb.bn     ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  %i.lc = extractvalue { ptr, ptr } %i.lb, 0
  %i.ld = extractvalue { ptr, ptr } %i.lb, 1
  invoke void @_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterRNtNtCsgFSQ9XOTBNe_3syn2ty4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator3mapBK_NCNvMs_NtCsKXd8SJXguA_12salsa_macros10tracked_fnNtB28_5Macro6try_fn0EB2a_(ptr nonnull sret([24 x i8]) align 8 %i.gv, ptr %i.lc, ptr %i.ld, ptr nonnull align 8 %i.ha)
          to label %bb.bq unwind label %bb.bn

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvNtCsKXd8SJXguA_12salsa_macros7fn_util9output_ty(ptr nonnull sret([224 x i8]) align 8 %i.gs, ptr nonnull align 8 %i.ha, ptr nonnull readonly align 8 %2)
          to label %_RNvMs_NtCsKXd8SJXguA_12salsa_macros10tracked_fnNtB4_5Macro9output_ty.exit unwind label %bb.bn

_RNvMs_NtCsKXd8SJXguA_12salsa_macros10tracked_fnNtB4_5Macro9output_ty.exit: ; preds = %bb.bq
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn2ty4TypeNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([224 x i8]) align 8 %i.gt, ptr nonnull align 8 %i.gs)
          to label %bb.br unwind label %bb.bn

bb.br:                                            ; preds = %_RNvMs_NtCsKXd8SJXguA_12salsa_macros10tracked_fnNtB4_5Macro9output_ty.exit
  %i.le = load i64, ptr %i.gt, align 8
  %i.lf = icmp eq i64 %i.le, -1
  br i1 %i.lf, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.lg = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.lg, i64 24, i1 false)
  invoke void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr nonnull sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.dk, ptr nonnull align 8 @79)
          to label %.invoke200 unwind label %bb.bn

bb.bt:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.gu, ptr noundef nonnull align 8 dereferenceable(224) %i.gt, i64 224, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 2 uses
  %i.lk = load i64, ptr %i.lh, align 8, !noalias !43
  %.not.i91 = icmp eq i64 %i.lk, -1
  %i.ll = load i64, ptr %i.li, align 8, !noalias !43
  %.not11.i = icmp eq i64 %i.ll, -1               ; 2 uses
  %i.lm = load i64, ptr %i.lj, align 8, !noalias !43
  %.not12.i = icmp eq i64 %i.lm, -1               ; 3 uses
  br i1 %.not.i91, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  br i1 %.not12.i, label %bb.fp, label %bb.ei

bb.bv:                                            ; preds = %bb.bt
  br i1 %.not11.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  br i1 %.not12.i, label %bb.el, label %bb.ei

bb.bx:                                            ; preds = %bb.bv
  br i1 %.not12.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store ptr %i.lj, ptr %i.w, align 8, !noalias !43
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.t)
          to label %.noexc95 unwind label %bb.gw

.noexc95:                                         ; preds = %bb.by
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.r)
          to label %bb.dh unwind label %bb.dg, !noalias !43

bb.bz:                                            ; preds = %bb.bx
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.as)
          to label %.noexc96 unwind label %bb.gw

.noexc96:                                         ; preds = %bb.bz
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.aq)
          to label %bb.cc unwind label %bb.cb, !noalias !43

bb.ca:                                            ; preds = %bb.cd, %bb.cb
  %.pn.i = phi { ptr, i32 } [ %i.ln, %bb.cb ], [ %i.lo, %bb.cd ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.as) #16
          to label %.body97 unwind label %bb.de, !noalias !43

bb.cb:                                            ; preds = %bb.cj, %.noexc96
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.cc:                                            ; preds = %.noexc96
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.aq, ptr nonnull @7, i64 5)
          to label %bb.ce unwind label %bb.cd, !noalias !43

bb.cd:                                            ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cc
  %i.lo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.aq) #16
          to label %bb.ca unwind label %bb.de, !noalias !43

bb.ce:                                            ; preds = %bb.cc
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.aq)
          to label %bb.cf unwind label %bb.cd, !noalias !43

bb.cf:                                            ; preds = %bb.ce
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.aq, ptr nonnull @8, i64 8)
          to label %bb.cg unwind label %bb.cd, !noalias !43

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.aq)
          to label %bb.ch unwind label %bb.cd, !noalias !43

bb.ch:                                            ; preds = %bb.cg
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.aq, ptr nonnull @9, i64 25)
          to label %bb.ci unwind label %bb.cd, !noalias !43

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private9push_bang(ptr nonnull align 8 %i.aq)
          to label %bb.cj unwind label %bb.cd, !noalias !43

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false), !noalias !43
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.as, i8 0, ptr nonnull align 8 %i.ar)
          to label %bb.ck unwind label %bb.cb, !noalias !43

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false), !noalias !43
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ao)
          to label %bb.cn unwind label %bb.cm, !noalias !43

bb.cl:                                            ; preds = %bb.cz, %bb.co, %bb.cm
  %.pn16.pn.i = phi { ptr, i32 } [ %.pn16.i, %bb.cz ], [ %.pn14.i, %bb.co ], [ %i.lp, %bb.cm ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.at) #16
          to label %.body97 unwind label %bb.de, !noalias !43

bb.cm:                                            ; preds = %bb.ck
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.cn:                                            ; preds = %bb.ck
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.am)
          to label %bb.cq unwind label %bb.cp, !noalias !43

bb.co:                                            ; preds = %bb.cr, %bb.cp
  %.pn14.i = phi { ptr, i32 } [ %i.lq, %bb.cp ], [ %i.lr, %bb.cr ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.ao) #16
          to label %bb.cl unwind label %bb.de, !noalias !43

bb.cp:                                            ; preds = %bb.cx, %bb.cn
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cq:                                            ; preds = %bb.cn
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.am, ptr nonnull @7, i64 5)
          to label %bb.cs unwind label %bb.cr, !noalias !43

bb.cr:                                            ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cq
  %i.lr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.am) #16
          to label %bb.co unwind label %bb.de, !noalias !43

bb.cs:                                            ; preds = %bb.cq
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.am)
          to label %bb.ct unwind label %bb.cr, !noalias !43

bb.ct:                                            ; preds = %bb.cs
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.am, ptr nonnull @8, i64 8)
          to label %bb.cu unwind label %bb.cr, !noalias !43

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.am)
          to label %bb.cv unwind label %bb.cr, !noalias !43

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.am, ptr nonnull @10, i64 24)
          to label %bb.cw unwind label %bb.cr, !noalias !43

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private9push_bang(ptr nonnull align 8 %i.am)
          to label %bb.cx unwind label %bb.cr, !noalias !43

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false), !noalias !43
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.ao, i8 0, ptr nonnull align 8 %i.an)
          to label %bb.cy unwind label %bb.cp, !noalias !43

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false), !noalias !43
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.al)
          to label %bb.db unwind label %bb.da, !noalias !43

bb.cz:                                            ; preds = %bb.dc, %bb.da
  %.pn16.i = phi { ptr, i32 } [ %i.lt, %bb.dc ], [ %i.ls, %bb.da ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.ap) #16
          to label %bb.cl unwind label %bb.de, !noalias !43

bb.da:                                            ; preds = %bb.cy
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.db:                                            ; preds = %bb.cy
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.al, ptr nonnull @11, i64 5)
          to label %bb.dd unwind label %bb.dc, !noalias !43

bb.dc:                                            ; preds = %bb.db
  %i.lt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.al) #16
          to label %bb.cz unwind label %bb.de, !noalias !43

bb.dd:                                            ; preds = %bb.db
  %i.lu = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lu, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false), !noalias !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 32, i1 false), !noalias !43
  %i.lv = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lv, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 32, i1 false), !noalias !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.gn, ptr noundef nonnull align 8 dereferenceable(96) %i.au, i64 96, i1 false)
  br label %bb.gx

bb.de:                                            ; preds = %bb.gu, %bb.gr, %bb.gn, %bb.gk, %bb.gh, %bb.ge, %bb.ga, %bb.fx, %bb.fu, %bb.fn, %bb.fk, %bb.fg, %bb.fd, %bb.fa, %bb.ex, %bb.ep, %bb.em, %bb.eg, %bb.ed, %bb.dz, %bb.dw, %bb.dt, %bb.dq, %bb.di, %bb.df, %bb.dc, %bb.cz, %bb.cr, %bb.co, %bb.cl, %bb.cd, %bb.ca
  %i.lw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17, !noalias !43
  unreachable

bb.df:                                            ; preds = %bb.di, %bb.dg
  %.pn19.i = phi { ptr, i32 } [ %i.lx, %bb.dg ], [ %i.ly, %bb.di ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.t) #16
          to label %.body97 unwind label %bb.de, !noalias !43

bb.dg:                                            ; preds = %bb.do, %.noexc95
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.dh:                                            ; preds = %.noexc95
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.r, ptr nonnull @7, i64 5)
          to label %bb.dj unwind label %bb.di, !noalias !43

bb.di:                                            ; preds = %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.dh
  %i.ly = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.r) #16
          to label %bb.df unwind label %bb.de, !noalias !43

bb.dj:                                            ; preds = %bb.dh
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.r)
          to label %bb.dk unwind label %bb.di, !noalias !43

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.r, ptr nonnull @8, i64 8)
          to label %bb.dl unwind label %bb.di, !noalias !43

bb.dl:                                            ; preds = %bb.dk
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.r)
          to label %bb.dm unwind label %bb.di, !noalias !43

bb.dm:                                            ; preds = %bb.dl
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.r, ptr nonnull @9, i64 25)
          to label %bb.dn unwind label %bb.di, !noalias !43

bb.dn:                                            ; preds = %bb.dm
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private9push_bang(ptr nonnull align 8 %i.r)
          to label %bb.do unwind label %bb.di, !noalias !43

bb.do:                                            ; preds = %bb.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !43
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.t, i8 0, ptr nonnull align 8 %i.s)
          to label %bb.dp unwind label %bb.dg, !noalias !43

bb.dp:                                            ; preds = %bb.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !43
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.p)
          to label %bb.ds unwind label %bb.dr, !noalias !43

bb.dq:                                            ; preds = %bb.ed, %bb.dt, %bb.dr
  %.pn25.pn.i = phi { ptr, i32 } [ %.pn25.i, %bb.ed ], [ %.pn23.i, %bb.dt ], [ %i.lz, %bb.dr ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.u) #16
          to label %.body97 unwind label %bb.de, !noalias !43

bb.dr:                                            ; preds = %bb.dp
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.ds:                                            ; preds = %bb.dp
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.n)
          to label %bb.dv unwind label %bb.du, !noalias !43

bb.dt:                                            ; preds = %bb.dw, %bb.du
  %.pn23.i = phi { ptr, i32 } [ %i.ma, %bb.du ], [ %.pn21.i, %bb.dw ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.p) #16
          to label %bb.dq unwind label %bb.de, !noalias !43

bb.du:                                            ; preds = %bb.eb, %bb.ds
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dv:                                            ; preds = %bb.ds
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.l)
          to label %bb.dy unwind label %bb.dx, !noalias !43

bb.dw:                                            ; preds = %bb.dz, %bb.dx
  %.pn21.i = phi { ptr, i32 } [ %i.mb, %bb.dx ], [ %i.mc, %bb.dz ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.n) #16
          to label %bb.dt unwind label %bb.de, !noalias !43

bb.dx:                                            ; preds = %bb.ea, %bb.dv
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dy:                                            ; preds = %bb.dv
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCsgFSQ9XOTBNe_3syn4expr4ExprNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.l)
          to label %bb.ea unwind label %bb.dz, !noalias !43

bb.dz:                                            ; preds = %bb.dy
  %i.mc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.l) #16
          to label %bb.dw unwind label %bb.de, !noalias !43

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !43
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.n, i8 0, ptr nonnull align 8 %i.m)
          to label %bb.eb unwind label %bb.dx, !noalias !43

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !43
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.p, i8 0, ptr nonnull align 8 %i.o)
          to label %bb.ec unwind label %bb.du, !noalias !43

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !43
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.k)
          to label %bb.ef unwind label %bb.ee, !noalias !43

bb.ed:                                            ; preds = %bb.eg, %bb.ee
  %.pn25.i = phi { ptr, i32 } [ %i.me, %bb.eg ], [ %i.md, %bb.ee ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.q) #16
          to label %bb.dq unwind label %bb.de, !noalias !43

bb.ee:                                            ; preds = %bb.ec
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ef:                                            ; preds = %bb.ec
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.k, ptr nonnull @12, i64 17)
          to label %bb.eh unwind label %bb.eg, !noalias !43

bb.eg:                                            ; preds = %bb.ef
  %i.me = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.k) #16
          to label %bb.ed unwind label %bb.de, !noalias !43

bb.eh:                                            ; preds = %bb.ef
  %i.mf = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mf, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !43
  %i.mg = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mg, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.gn, ptr noundef nonnull align 8 dereferenceable(96) %i.v, i64 96, i1 false)
  br label %bb.gx

bb.ei:                                            ; preds = %bb.bw, %bb.bu
  %i.mh = invoke align 8 ptr @_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionNtNtCsgFSQ9XOTBNe_3syn4expr4ExprE6as_refCsKXd8SJXguA_12salsa_macros(ptr nonnull align 8 %i.li) #18
          to label %.noexc99 unwind label %bb.gw  ; 2 uses

.noexc99:                                         ; preds = %bb.ei
  %.not.i.i92 = icmp eq ptr %i.mh, null
  br i1 %.not.i.i92, label %.invoke, label %_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionRNtNtCsgFSQ9XOTBNe_3syn4expr4ExprE6unwrapCsKXd8SJXguA_12salsa_macros.exit.i

_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionRNtNtCsgFSQ9XOTBNe_3syn4expr4ExprE6unwrapCsKXd8SJXguA_12salsa_macros.exit.i: ; preds = %.noexc99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !43
  store ptr @17, ptr %i.i, align 8, !noalias !44
  %i.mi = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 76, ptr %i.mi, align 8, !noalias !44
  invoke void @_RNvYRNtNtCsgFSQ9XOTBNe_3syn4expr4ExprNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens17into_token_streamCsKXd8SJXguA_12salsa_macros(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr nonnull align 8 %i.mh)
          to label %.noexc101 unwind label %bb.gw

.noexc101:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionRNtNtCsgFSQ9XOTBNe_3syn4expr4ExprE6unwrapCsKXd8SJXguA_12salsa_macros.exit.i
  invoke void @_RNvXsB_NtCsbSS6DM8SDEO_5alloc6stringReNtB5_8ToString9to_stringCsgFSQ9XOTBNe_3syn(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr nonnull align 8 %i.i)
          to label %_RINvMNtCsgFSQ9XOTBNe_3syn5errorNtB3_5Error11new_spannedRNtNtB5_4expr4ExprReECsKXd8SJXguA_12salsa_macros.exit.i unwind label %bb.ej, !noalias !44

bb.ej:                                            ; preds = %.noexc101
  %i.mj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.h) #16
          to label %.body97 unwind label %bb.ek, !noalias !44

bb.ek:                                            ; preds = %bb.ej
  %i.mk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17, !noalias !44
  unreachable

_RINvMNtCsgFSQ9XOTBNe_3syn5errorNtB3_5Error11new_spannedRNtNtB5_4expr4ExprReECsKXd8SJXguA_12salsa_macros.exit.i: ; preds = %.noexc101
  invoke void @_RNvNvMNtCsgFSQ9XOTBNe_3syn5errorNtB4_5Error11new_spanned11new_spanned(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %.noexc102 unwind label %bb.gw

.noexc102:                                        ; preds = %_RINvMNtCsgFSQ9XOTBNe_3syn5errorNtB3_5Error11new_spannedRNtNtB5_4expr4ExprReECsKXd8SJXguA_12salsa_macros.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !43
  %i.ml = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ml, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i64 -2, ptr %i.gn, align 8, !alias.scope !43
  br label %bb.gx

bb.el:                                            ; preds = %bb.bw
  store ptr %i.li, ptr %i.aj, align 8, !noalias !43
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ag)
          to label %.noexc103 unwind label %bb.gw

.noexc103:                                        ; preds = %bb.el
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ae)
          to label %bb.eo unwind label %bb.en, !noalias !43

bb.em:                                            ; preds = %bb.ep, %bb.en
  %.pn29.i = phi { ptr, i32 } [ %i.mm, %bb.en ], [ %i.mn, %bb.ep ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.ag) #16
          to label %.body97 unwind label %bb.de, !noalias !43

bb.en:                                            ; preds = %bb.ev, %.noexc103
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.eo:                                            ; preds = %.noexc103
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.ae, ptr nonnull @7, i64 5)
          to label %bb.eq unwind label %bb.ep, !noalias !43

bb.ep:                                            ; preds = %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.eo
  %i.mn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.ae) #16
          to label %bb.em unwind label %bb.de, !noalias !43

bb.eq:                                            ; preds = %bb.eo
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.ae)
          to label %bb.er unwind label %bb.ep, !noalias !43

bb.er:                                            ; preds = %bb.eq
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.ae, ptr nonnull @8, i64 8)
          to label %bb.es unwind label %bb.ep, !noalias !43

bb.es:                                            ; preds = %bb.er
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private11push_colon2(ptr nonnull align 8 %i.ae)
          to label %bb.et unwind label %bb.ep, !noalias !43

bb.et:                                            ; preds = %bb.es
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.ae, ptr nonnull @9, i64 25)
          to label %bb.eu unwind label %bb.ep, !noalias !43

bb.eu:                                            ; preds = %bb.et
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private9push_bang(ptr nonnull align 8 %i.ae)
          to label %bb.ev unwind label %bb.ep, !noalias !43

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !noalias !43
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.ag, i8 0, ptr nonnull align 8 %i.af)
          to label %bb.ew unwind label %bb.en, !noalias !43

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !noalias !43
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ac)
          to label %bb.ez unwind label %bb.ey, !noalias !43

bb.ex:                                            ; preds = %bb.fk, %bb.fa, %bb.ey
  %.pn35.pn.i = phi { ptr, i32 } [ %.pn35.i, %bb.fk ], [ %.pn33.i, %bb.fa ], [ %i.mo, %bb.ey ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.ah) #16
          to label %.body97 unwind label %bb.de, !noalias !43

bb.ey:                                            ; preds = %bb.ew
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ez:                                            ; preds = %bb.ew
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.aa)
          to label %bb.fc unwind label %bb.fb, !noalias !43

bb.fa:                                            ; preds = %bb.fd, %bb.fb
  %.pn33.i = phi { ptr, i32 } [ %i.mp, %bb.fb ], [ %.pn31.i, %bb.fd ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.ac) #16
          to label %bb.ex unwind label %bb.de, !noalias !43

bb.fb:                                            ; preds = %bb.fi, %bb.ez
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.fc:                                            ; preds = %bb.ez
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.y)
          to label %bb.ff unwind label %bb.fe, !noalias !43

bb.fd:                                            ; preds = %bb.fg, %bb.fe
  %.pn31.i = phi { ptr, i32 } [ %i.mq, %bb.fe ], [ %i.mr, %bb.fg ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.aa) #16
          to label %bb.fa unwind label %bb.de, !noalias !43

bb.fe:                                            ; preds = %bb.fh, %bb.fc
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.ff:                                            ; preds = %bb.fc
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCsgFSQ9XOTBNe_3syn4expr4ExprNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.aj, ptr nonnull align 8 %i.y)
          to label %bb.fh unwind label %bb.fg, !noalias !43

bb.fg:                                            ; preds = %bb.ff
  %i.mr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.y) #16
          to label %bb.fd unwind label %bb.de, !noalias !43

bb.fh:                                            ; preds = %bb.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !43
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.aa, i8 0, ptr nonnull align 8 %i.z)
          to label %bb.fi unwind label %bb.fe, !noalias !43

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !noalias !43
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.ac, i8 0, ptr nonnull align 8 %i.ab)
          to label %bb.fj unwind label %bb.fb, !noalias !43

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false), !noalias !43
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.x)
          to label %bb.fm unwind label %bb.fl, !noalias !43

bb.fk:                                            ; preds = %bb.fn, %bb.fl
  %.pn35.i = phi { ptr, i32 } [ %i.mt, %bb.fn ], [ %i.ms, %bb.fl ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.ad) #16
          to label %bb.ex unwind label %bb.de, !noalias !43

bb.fl:                                            ; preds = %bb.fj
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.fm:                                            ; preds = %bb.fj
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.x, ptr nonnull @13, i64 8)
          to label %bb.fo unwind label %bb.fn, !noalias !43

bb.fn:                                            ; preds = %bb.fm
  %i.mt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.x) #16
          to label %bb.fk unwind label %bb.de, !noalias !43

bb.fo:                                            ; preds = %bb.fm
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mu, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false), !noalias !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !noalias !43
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mv, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false), !noalias !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.gn, ptr noundef nonnull align 8 dereferenceable(96) %i.ai, i64 96, i1 false)
  br label %bb.gx

bb.fp:                                            ; preds = %bb.bu
  br i1 %.not11.i, label %bb.fq, label %bb.ft

bb.fq:                                            ; preds = %bb.fp
  %i.mw = invoke align 8 ptr @_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionNtNtCsgFSQ9XOTBNe_3syn4expr4ExprE6as_refCsKXd8SJXguA_12salsa_macros(ptr nonnull align 8 %i.lh) #18
          to label %.noexc104 unwind label %bb.gw ; 2 uses

.noexc104:                                        ; preds = %bb.fq
  %.not.i53.i = icmp eq ptr %i.mw, null
  br i1 %.not.i53.i, label %.invoke, label %_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionRNtNtCsgFSQ9XOTBNe_3syn4expr4ExprE6unwrapCsKXd8SJXguA_12salsa_macros.exit54.i

.invoke:                                          ; preds = %.noexc104, %.noexc99
  %i.mx = phi ptr [ @16, %.noexc99 ], [ @14, %.noexc104 ]
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr nonnull align 8 %i.mx) #20
          to label %.cont unwind label %bb.gw

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionRNtNtCsgFSQ9XOTBNe_3syn4expr4ExprE6unwrapCsKXd8SJXguA_12salsa_macros.exit54.i: ; preds = %.noexc104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !43
  store ptr @15, ptr %i.f, align 8, !noalias !45
  %i.my = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 50, ptr %i.my, align 8, !noalias !45
  invoke void @_RNvYRNtNtCsgFSQ9XOTBNe_3syn4expr4ExprNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens17into_token_streamCsKXd8SJXguA_12salsa_macros(ptr nonnull sret([32 x i8]) align 8 %i.e, ptr nonnull align 8 %i.mw)
          to label %.noexc106 unwind label %bb.gw

.noexc106:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionRNtNtCsgFSQ9XOTBNe_3syn4expr4ExprE6unwrapCsKXd8SJXguA_12salsa_macros.exit54.i
  invoke void @_RNvXsB_NtCsbSS6DM8SDEO_5alloc6stringReNtB5_8ToString9to_stringCsgFSQ9XOTBNe_3syn(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.f)
          to label %_RINvMNtCsgFSQ9XOTBNe_3syn5errorNtB3_5Error11new_spannedRNtNtB5_4expr4ExprReECsKXd8SJXguA_12salsa_macros.exit55.i unwind label %bb.fr, !noalias !45

bb.fr:                                            ; preds = %.noexc106
  %i.mz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.e) #16
          to label %.body97 unwind label %bb.fs, !noalias !45

bb.fs:                                            ; preds = %bb.fr
  %i.na = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17, !noalias !45
  unreachable

_RINvMNtCsgFSQ9XOTBNe_3syn5errorNtB3_5Error11new_spannedRNtNtB5_4expr4ExprReECsKXd8SJXguA_12salsa_macros.exit55.i: ; preds = %.noexc106
  invoke void @_RNvNvMNtCsgFSQ9XOTBNe_3syn5errorNtB4_5Error11new_spanned11new_spanned(ptr nonnull sret([24 x i8]) align 8 %i.ak, ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.d)
          to label %.noexc107 unwind label %bb.gw

.noexc107:                                        ; preds = %_RINvMNtCsgFSQ9XOTBNe_3syn5errorNtB3_5Error11new_spannedRNtNtB5_4expr4ExprReECsKXd8SJXguA_12salsa_macros.exit55.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !43
  %i.nb = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nb, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  store i64 -2, ptr %i.gn, align 8, !alias.scope !43
  br label %bb.gx

bb.ft:                                            ; preds = %bb.fp
  store ptr %i.lh, ptr %i.bk, align 8, !noalias !43
  store ptr %i.li, ptr %i.bj, align 8, !noalias !43
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.bg)
          to label %.noexc108 unwind label %bb.gw

.noexc108:                                        ; preds = %bb.ft
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.be)
          to label %bb.fw unwind label %bb.fv, !noalias !43

bb.fu:                                            ; preds = %bb.fx, %bb.fv
  %.pn43.i = phi { ptr, i32 } [ %i.nc, %bb.fv ], [ %.pn41.i, %bb.fx ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.bg) #16
          to label %.body97 unwind label %bb.de, !noalias !43

bb.fv:                                            ; preds = %bb.gc, %.noexc108
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.fw:                                            ; preds = %.noexc108
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.bc)
          to label %bb.fz unwind label %bb.fy, !noalias !43

bb.fx:                                            ; preds = %bb.ga, %bb.fy
  %.pn41.i = phi { ptr, i32 } [ %i.nd, %bb.fy ], [ %i.ne, %bb.ga ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.be) #16
          to label %bb.fu unwind label %bb.de, !noalias !43

bb.fy:                                            ; preds = %bb.gb, %bb.fw
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.fz:                                            ; preds = %bb.fw
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCsgFSQ9XOTBNe_3syn4expr4ExprNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.bk, ptr nonnull align 8 %i.bc)
          to label %bb.gb unwind label %bb.ga, !noalias !43

bb.ga:                                            ; preds = %bb.fz
  %i.ne = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.bc) #16
          to label %bb.fx unwind label %bb.de, !noalias !43

bb.gb:                                            ; preds = %bb.fz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 32, i1 false), !noalias !43
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.be, i8 0, ptr nonnull align 8 %i.bd)
          to label %bb.gc unwind label %bb.fy, !noalias !43

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 32, i1 false), !noalias !43
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.bg, i8 0, ptr nonnull align 8 %i.bf)
          to label %bb.gd unwind label %bb.fv, !noalias !43

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 32, i1 false), !noalias !43
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ba)
          to label %bb.gg unwind label %bb.gf, !noalias !43

bb.ge:                                            ; preds = %bb.gr, %bb.gh, %bb.gf
  %.pn49.pn.i = phi { ptr, i32 } [ %.pn49.i, %bb.gr ], [ %.pn47.i, %bb.gh ], [ %i.nf, %bb.gf ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.bh) #16
          to label %.body97 unwind label %bb.de, !noalias !43

bb.gf:                                            ; preds = %bb.gd
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.gg:                                            ; preds = %bb.gd
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ay)
          to label %bb.gj unwind label %bb.gi, !noalias !43

bb.gh:                                            ; preds = %bb.gk, %bb.gi
  %.pn47.i = phi { ptr, i32 } [ %i.ng, %bb.gi ], [ %.pn45.i, %bb.gk ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.ba) #16
          to label %bb.ge unwind label %bb.de, !noalias !43

bb.gi:                                            ; preds = %bb.gp, %bb.gg
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.gj:                                            ; preds = %bb.gg
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.aw)
          to label %bb.gm unwind label %bb.gl, !noalias !43

bb.gk:                                            ; preds = %bb.gn, %bb.gl
  %.pn45.i = phi { ptr, i32 } [ %i.nh, %bb.gl ], [ %i.ni, %bb.gn ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.ay) #16
          to label %bb.gh unwind label %bb.de, !noalias !43

bb.gl:                                            ; preds = %bb.go, %bb.gj
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.gm:                                            ; preds = %bb.gj
  invoke void @_RNvXNtCslCbDOIcU2Dw_5quote9to_tokensRNtNtCsgFSQ9XOTBNe_3syn4expr4ExprNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.bj, ptr nonnull align 8 %i.aw)
          to label %bb.go unwind label %bb.gn, !noalias !43

bb.gn:                                            ; preds = %bb.gm
  %i.ni = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.aw) #16
          to label %bb.gk unwind label %bb.de, !noalias !43

bb.go:                                            ; preds = %bb.gm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false), !noalias !43
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.ay, i8 0, ptr nonnull align 8 %i.ax)
          to label %bb.gp unwind label %bb.gl, !noalias !43

bb.gp:                                            ; preds = %bb.go
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 32, i1 false), !noalias !43
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_group(ptr nonnull align 8 %i.ba, i8 0, ptr nonnull align 8 %i.az)
          to label %bb.gq unwind label %bb.gi, !noalias !43

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false), !noalias !43
  invoke void @_RNvMCs1K5DUQUZc67_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.av)
          to label %bb.gt unwind label %bb.gs, !noalias !43

bb.gr:                                            ; preds = %bb.gu, %bb.gs
  %.pn49.i = phi { ptr, i32 } [ %i.nk, %bb.gu ], [ %i.nj, %bb.gs ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.bb) #16
          to label %bb.ge unwind label %bb.de, !noalias !43

bb.gs:                                            ; preds = %bb.gq
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gr

bb.gt:                                            ; preds = %bb.gq
  invoke void @_RNvNtCslCbDOIcU2Dw_5quote9___private10push_ident(ptr nonnull align 8 %i.av, ptr nonnull @13, i64 8)
          to label %bb.gv unwind label %bb.gu, !noalias !43

bb.gu:                                            ; preds = %bb.gt
  %i.nk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro211TokenStreamECslCbDOIcU2Dw_5quote(ptr nonnull align 8 %i.av) #16
          to label %bb.gr unwind label %bb.de, !noalias !43

bb.gv:                                            ; preds = %bb.gt
  %i.nl = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nl, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 32, i1 false), !noalias !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 32, i1 false), !noalias !43
  %i.nm = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nm, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !noalias !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.gn, ptr noundef nonnull align 8 dereferenceable(96) %i.bi, i64 96, i1 false)
  br label %bb.gx

.body97:                                          ; preds = %bb.gw, %bb.ge, %bb.fu, %bb.fr, %bb.ex, %bb.em, %bb.ej, %bb.dq, %bb.df, %bb.cl, %bb.ca, %bb.tj
  %.pn59 = phi { ptr, i32 } [ %.pn57, %bb.tj ], [ %i.nn, %bb.gw ], [ %i.mj, %bb.ej ], [ %.pn.i, %bb.ca ], [ %.pn49.pn.i, %bb.ge ], [ %.pn43.i, %bb.fu ], [ %.pn35.pn.i, %bb.ex ], [ %.pn29.i, %bb.em ], [ %.pn25.pn.i, %bb.dq ], [ %.pn19.i, %bb.df ], [ %.pn16.pn.i, %bb.cl ], [ %i.mz, %bb.fr ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn2ty4TypeEBF_(ptr nonnull align 8 %i.gu) #16
          to label %bb.bm unwind label %bb.ho

bb.gw:                                            ; preds = %.invoke202, %.invoke, %bb.ft, %_RINvMNtCsgFSQ9XOTBNe_3syn5errorNtB3_5Error11new_spannedRNtNtB5_4expr4ExprReECsKXd8SJXguA_12salsa_macros.exit55.i, %_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionRNtNtCsgFSQ9XOTBNe_3syn4expr4ExprE6unwrapCsKXd8SJXguA_12salsa_macros.exit54.i, %bb.fq, %bb.el, %_RINvMNtCsgFSQ9XOTBNe_3syn5errorNtB3_5Error11new_spannedRNtNtB5_4expr4ExprReECsKXd8SJXguA_12salsa_macros.exit.i, %_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionRNtNtCsgFSQ9XOTBNe_3syn4expr4ExprE6unwrapCsKXd8SJXguA_12salsa_macros.exit.i, %bb.ei, %bb.bz, %bb.by, %bb.gz, %bb.gx
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %.body97

bb.gx:                                            ; preds = %bb.gv, %.noexc107, %bb.fo, %.noexc102, %bb.eh, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
end_hunk_0
