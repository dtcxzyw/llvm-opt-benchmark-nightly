Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/build_script_main.build_script_main.954581205038f424-cgu.0?download=true
inline.NumInlined: 199
inline.NumDeleted: 104
begin_hunk_0_@_RINvNtNtCscOzg5arm0FQ_17build_script_main5build1c13build_libraryINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB19_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std4path7PathBufEB1S_EEB6_:bb.a
  %i.cl = invoke align 8 ptr @_RINvMs3_CsiHivYpkJ4Hu_2ccNtB6_5Build4flagReECscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.g, ptr nonnull @52, i64 6)
          to label %thread-pre-split.i.i unwind label %.loopexit.split-lp.i.i, !noalias !16 ; 0 uses

_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit15.i.i: ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit12.thread.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !16 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 1
  %i.cp = xor i32 %i.co, 1836278135
  %i.cq = getelementptr i8, ptr %i.cn, i64 4
  %i.cr = load i16, ptr %i.cq, align 1
  %i.cs = zext i16 %i.cr to i32
  %i.ct = xor i32 %i.cs, 12851
  %i.cu = or i32 %i.cp, %i.ct
  %i.cv = icmp ne i32 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2neCscOzg5arm0FQ_17build_script_main.exit.thread.i.i, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit15.thread.i.i

_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit15.thread.i.i: ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit15.i.i, %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit12.thread.i.i
  %i.cy = load i64, ptr %i.w, align 8, !noalias !16
  %i.cz = icmp eq i64 %i.cy, 5
  br i1 %i.cz, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit18.i.i, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit18.thread.i.i

_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2neCscOzg5arm0FQ_17build_script_main.exit.thread.i.i: ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2neCscOzg5arm0FQ_17build_script_main.exit.i.i, %bb.y, %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit15.i.i
  %i.da = invoke zeroext i1 @_RNvMNtCsiHivYpkJ4Hu_2cc4toolNtB2_4Tool13is_like_clang(ptr nonnull align 8 %i.f)
          to label %bb.z unwind label %.loopexit.split-lp.i.i, !noalias !16

_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit18.i.i: ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit15.thread.i.i
  %i.db = load ptr, ptr %i.bi, align 8, !noalias !16 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 1
  %i.dd = xor i32 %i.dc, 1970170220
  %i.de = getelementptr i8, ptr %i.db, i64 4
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i32
  %i.dh = xor i32 %i.dg, 120
  %i.di = or i32 %i.dd, %i.dh
  %i.dj = icmp ne i32 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.x, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit18.thread.i.i

_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit18.thread.i.i: ; preds = %bb.ab, %bb.z, %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2neCscOzg5arm0FQ_17build_script_main.exit.i.i, %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit21.i.i, %bb.x, %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit18.i.i, %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit15.thread.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !noalias !16
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.ad, label %bb.ac

bb.x:                                             ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit18.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !16
  %i.dr = icmp eq i64 %i.dq, 4
  br i1 %i.dr, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit21.i.i, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit18.thread.i.i

_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit21.i.i: ; preds = %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !16
  %i.du = load i32, ptr %i.dt, align 1
  %i.dv = icmp ne i32 %i.du, 1819506029
  %i.dw = zext i1 %i.dv to i32
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.y, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit18.thread.i.i

bb.y:                                             ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit21.i.i
  br i1 %i.ci, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2neCscOzg5arm0FQ_17build_script_main.exit.i.i, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2neCscOzg5arm0FQ_17build_script_main.exit.thread.i.i

_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2neCscOzg5arm0FQ_17build_script_main.exit.i.i: ; preds = %bb.y
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !16 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 1
  %i.eb = xor i32 %i.ea, 1597388920
  %i.ec = getelementptr i8, ptr %i.dz, i64 4
  %i.ed = load i16, ptr %i.ec, align 1
  %i.ee = zext i16 %i.ed to i32
  %i.ef = xor i32 %i.ee, 13366
  %i.eg = or i32 %i.eb, %i.ef
  %i.eh = icmp ne i32 %i.eg, 0
  %i.ei = zext i1 %i.eh to i32
  %.not31.i.i = icmp eq i32 %i.ei, 0
  br i1 %.not31.i.i, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit18.thread.i.i, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2neCscOzg5arm0FQ_17build_script_main.exit.thread.i.i

bb.z:                                             ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2neCscOzg5arm0FQ_17build_script_main.exit.thread.i.i
  br i1 %i.da, label %bb.aa, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit18.thread.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ej = invoke align 8 ptr @_RINvMs3_CsiHivYpkJ4Hu_2ccNtB6_5Build4flagReECscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.g, ptr nonnull @53, i64 12)
          to label %bb.ab unwind label %.loopexit.split-lp.i.i, !noalias !16 ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ek = invoke align 8 ptr @_RINvMs3_CsiHivYpkJ4Hu_2ccNtB6_5Build6defineReECscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.g, ptr nonnull @54, i64 21, ptr nonnull @55, i64 1)
          to label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit18.thread.i.i unwind label %.loopexit.split-lp.i.i, !noalias !16 ; 0 uses

bb.ac:                                            ; preds = %bb.ad, %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit18.thread.i.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsiHivYpkJ4Hu_2cc4tool4ToolEBF_(ptr nonnull align 8 %i.f)
          to label %_RNvNtNtCscOzg5arm0FQ_17build_script_main5build1c9new_build.exit unwind label %bb.af, !noalias !16

bb.ad:                                            ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit18.thread.i.i
  %i.el = invoke align 8 ptr @_RNvMs3_CsiHivYpkJ4Hu_2ccNtB5_5Build20warnings_into_errors(ptr nonnull align 8 %i.g, i1 zeroext true)
          to label %bb.ac unwind label %.loopexit.split-lp.i.i, !noalias !16 ; 0 uses

bb.ae:                                            ; preds = %bb.d
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !16
  unreachable

bb.af:                                            ; preds = %bb.ac, %bb.c, %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit.thread.i.i
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.af, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.en, %bb.af ], [ %lpad.phi.i.i, %bb.d ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsiHivYpkJ4Hu_2cc5BuildEBD_(ptr nonnull align 8 %i.g) #23
          to label %common.resume unwind label %bb.ag, !noalias !16

bb.ag:                                            ; preds = %.body.i
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !16
  unreachable

common.resume:                                    ; preds = %bb.ah, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

_RNvNtNtCscOzg5arm0FQ_17build_script_main5build1c9new_build.exit: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %i.t, ptr noundef nonnull align 8 dereferenceable(488) %i.g, i64 488, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  store ptr %i.t, ptr %i.r, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %2, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %3, ptr %i.eq, align 8
  invoke void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtBc_5slice4iter4IterNtNtCsaL1QbXo9JQH_3std4path7PathBufEBV_ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvNtNtCscOzg5arm0FQ_17build_script_main5build1c13build_libraryB3_E0EB2P_(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.r)
          to label %bb.ai unwind label %.loopexit.split-lp

bb.ah:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.fj, %bb.ao ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsiHivYpkJ4Hu_2cc5BuildEBD_(ptr nonnull align 8 %i.t) #23
          to label %common.resume unwind label %bb.bc

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %_RNvNtNtCscOzg5arm0FQ_17build_script_main5build1c9new_build.exit, %bb.ai, %_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main.exit, %bb.ak, %bb.am, %bb.ba, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCscOzg5arm0FQ_17build_script_main5build1c13build_libraryINtNtNtB1w_8adapters5chain5ChainBF_BF_EEs_0EB2n_.exit, %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ai:                                            ; preds = %_RNvNtNtCscOzg5arm0FQ_17build_script_main5build1c9new_build.exit
  %i.er = invoke { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCsaL1QbXo9JQH_3std4path7PathBuf4iterCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %9, i64 %10)
          to label %bb.aj unwind label %.loopexit.split-lp ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.es = extractvalue { ptr, ptr } %i.er, 0      ; 2 uses
  %i.et = extractvalue { ptr, ptr } %i.er, 1      ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCscOzg5arm0FQ_17build_script_main5build1c13build_libraryINtNtNtB1w_8adapters5chain5ChainBF_BF_EEs_0EB2n_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aj, %.noexc
  %.sroa.0.02.i = phi ptr [ %i.ew, %.noexc ], [ %i.es, %bb.aj ] ; 2 uses
  %i.ev = invoke align 8 ptr @_RINvMs3_CsiHivYpkJ4Hu_2ccNtB6_5Build6objectRNtNtCsaL1QbXo9JQH_3std4path7PathBufECscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.t, ptr align 8 %.sroa.0.02.i)
          to label %.noexc unwind label %.loopexit ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 24 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.et
  br i1 %i.ex, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCscOzg5arm0FQ_17build_script_main5build1c13build_libraryINtNtNtB1w_8adapters5chain5ChainBF_BF_EEs_0EB2n_.exit, label %.lr.ph.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCscOzg5arm0FQ_17build_script_main5build1c13build_libraryINtNtNtB1w_8adapters5chain5ChainBF_BF_EEs_0EB2n_.exit: ; preds = %.noexc, %bb.aj
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ez = invoke { ptr, i64 } @_RNvXs1_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexNtNtBV_5range9RangeFullE5indexCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.ey, ptr nonnull align 8 @39) #21
          to label %_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main.exit unwind label %.loopexit.split-lp ; 2 uses

_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCscOzg5arm0FQ_17build_script_main5build1c13build_libraryINtNtNtB1w_8adapters5chain5ChainBF_BF_EEs_0EB2n_.exit
  %i.fa = extractvalue { ptr, i64 } %i.ez, 0
  %i.fb = extractvalue { ptr, i64 } %i.ez, 1
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.m, ptr nonnull align 8 %i.u)
          to label %bb.ak unwind label %.loopexit.split-lp

bb.ak:                                            ; preds = %_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.fc = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj9_Kj1_ECsiHivYpkJ4Hu_2cc(ptr nonnull @5, ptr nonnull align 8 %i.n)
          to label %bb.al unwind label %.loopexit.split-lp ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %i.fd = extractvalue { ptr, ptr } %i.fc, 0      ; 2 uses
  %i.fe = extractvalue { ptr, ptr } %i.fc, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.fd, ptr %i.b, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.fe, ptr %i.ff, align 8
  %i.fg = ptrtoint ptr %i.fe to i64               ; 2 uses
  %11 = and i64 %i.fg, 1
  %.not.i = icmp eq i64 %11, 0
  %i.fh = lshr i64 %i.fg, 1
  %.sroa.0.0.i = select i1 %.not.i, ptr null, ptr %i.fd
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr %.sroa.0.0.i, i64 %i.fh, ptr nonnull align 8 %i.b) #21
          to label %bb.am unwind label %.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinNtNtCs1xwejQucwHj_5alloc6string6StringECsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.q, ptr %i.fa, i64 %i.fb, ptr nonnull align 8 %i.p)
          to label %bb.an unwind label %.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  %i.fi = invoke align 8 ptr @_RNvMs3_CsiHivYpkJ4Hu_2ccNtB5_5Build14cargo_metadata(ptr nonnull align 8 %i.t, i1 zeroext false)
          to label %bb.ap unwind label %bb.ao     ; 0 uses

bb.ao:                                            ; preds = %.invoke, %_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main.exit12, %bb.aw, %bb.ar, %bb.ap, %bb.az, %bb.ay, %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6expectCscOzg5arm0FQ_17build_script_main.exit17, %bb.av, %bb.au, %bb.at, %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6expectCscOzg5arm0FQ_17build_script_main.exit, %_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main.exit6, %bb.an
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.q) #23
          to label %bb.ah unwind label %bb.bc

bb.ap:                                            ; preds = %bb.an
  %i.fk = invoke { ptr, i64 } @_RNvXs1_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexNtNtBV_5range9RangeFullE5indexCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.q, ptr nonnull align 8 @39) #21
          to label %_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main.exit6 unwind label %bb.ao ; 2 uses

_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main.exit6: ; preds = %bb.ap
  %i.fl = extractvalue { ptr, i64 } %i.fk, 0
  %i.fm = extractvalue { ptr, i64 } %i.fk, 1
  %i.fn = invoke { ptr, i64 } @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path9file_name(ptr %i.fl, i64 %i.fm)
          to label %bb.aq unwind label %bb.ao     ; 2 uses

bb.aq:                                            ; preds = %_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main.exit6
  %i.fo = extractvalue { ptr, i64 } %i.fn, 0      ; 2 uses
  %.not.i7 = icmp eq ptr %i.fo, null
  br i1 %.not.i7, label %.invoke, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fp = extractvalue { ptr, i64 } %i.fn, 1
  %i.fq = invoke { ptr, i64 } @_RNvMsj_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_5OsStr6to_strCscOzg5arm0FQ_17build_script_main(ptr nonnull %i.fo, i64 %i.fp) #21
          to label %bb.as unwind label %bb.ao     ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.fr = extractvalue { ptr, i64 } %i.fq, 0      ; 2 uses
  %.not.i9 = icmp eq ptr %i.fr, null
  br i1 %.not.i9, label %.invoke, label %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6expectCscOzg5arm0FQ_17build_script_main.exit

_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6expectCscOzg5arm0FQ_17build_script_main.exit: ; preds = %bb.as
  %i.fs = extractvalue { ptr, i64 } %i.fq, 1
  invoke void @_RNvMs4_CsiHivYpkJ4Hu_2ccNtB5_5Build7compile(ptr nonnull align 8 %i.t, ptr nonnull %i.fr, i64 %i.fs)
          to label %bb.at unwind label %bb.ao

bb.at:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6expectCscOzg5arm0FQ_17build_script_main.exit
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.k, ptr nonnull align 8 %i.u)
          to label %bb.au unwind label %bb.ao

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.ft = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj21_Kj1_ECscOzg5arm0FQ_17build_script_main(ptr nonnull @9, ptr nonnull align 8 %i.l)
          to label %bb.av unwind label %bb.ao     ; 2 uses

bb.av:                                            ; preds = %bb.au
  %i.fu = extractvalue { ptr, ptr } %i.ft, 0
  %i.fv = extractvalue { ptr, ptr } %i.ft, 1
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6__print(ptr %i.fu, ptr %i.fv)
          to label %bb.aw unwind label %bb.ao

bb.aw:                                            ; preds = %bb.av
  %i.fw = invoke { ptr, i64 } @_RNvXs1_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexNtNtBV_5range9RangeFullE5indexCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.ey, ptr nonnull align 8 @39) #21
          to label %_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main.exit12 unwind label %bb.ao ; 2 uses

_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main.exit12: ; preds = %bb.aw
  %i.fx = extractvalue { ptr, i64 } %i.fw, 0
  %i.fy = extractvalue { ptr, i64 } %i.fw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.fx, i64 %i.fy)
          to label %bb.ax unwind label %bb.ao

bb.ax:                                            ; preds = %_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main.exit12
  %i.fz = load i64, ptr %i.a, align 8
  %i.ga = trunc nuw i64 %i.fz to i1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8            ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ge = load i64, ptr %i.gd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i1521 = icmp eq ptr %i.gc, null
  %.not.i15 = select i1 %i.ga, i1 true, i1 %.not.i1521
  br i1 %.not.i15, label %.invoke, label %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6expectCscOzg5arm0FQ_17build_script_main.exit17

.invoke:                                          ; preds = %bb.ax, %bb.as, %bb.aq
  %i.gf = phi ptr [ @6, %bb.as ], [ @6, %bb.aq ], [ @10, %bb.ax ]
  %i.gg = phi i64 [ 11, %bb.as ], [ 11, %bb.aq ], [ 12, %bb.ax ]
  %i.gh = phi ptr [ @8, %bb.as ], [ @8, %bb.aq ], [ @11, %bb.ax ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr nonnull %i.gf, i64 %i.gg, ptr nonnull align 8 %i.gh) #22
          to label %.cont unwind label %bb.ao

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6expectCscOzg5arm0FQ_17build_script_main.exit17: ; preds = %bb.ax
  store ptr %i.gc, ptr %i.j, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.ge, ptr %i.gi, align 8
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.h, ptr nonnull align 8 %i.j)
          to label %bb.ay unwind label %bb.ao

bb.ay:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6expectCscOzg5arm0FQ_17build_script_main.exit17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.gj = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj24_Kj1_ECsiHivYpkJ4Hu_2cc(ptr nonnull @12, ptr nonnull align 8 %i.i)
          to label %bb.az unwind label %bb.ao     ; 2 uses

bb.az:                                            ; preds = %bb.ay
  %i.gk = extractvalue { ptr, ptr } %i.gj, 0
  %i.gl = extractvalue { ptr, ptr } %i.gj, 1
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6__print(ptr %i.gk, ptr %i.gl)
          to label %bb.ba unwind label %bb.ao

bb.ba:                                            ; preds = %bb.az
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.q)
          to label %bb.bb unwind label %.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ba
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsiHivYpkJ4Hu_2cc5BuildEBD_(ptr nonnull align 8 %i.t)
  ret void

bb.bc:                                            ; preds = %bb.ao, %bb.ah
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscOzg5arm0FQ_17build_script_main5build4path8walk_dirNCINvNtB4_4core21walk_non_root_sourcesNCNvB6_21emit_rerun_if_changed0E0EB6_(ptr %0, i64 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = tail call zeroext i1 @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path6is_dir(ptr %0, i64 %1)
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8, !noalias !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.j, align 8, !noalias !19
  %i.k = call { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path4PathINtB2_5AsRefBw_E6as_refCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.b) #21, !noalias !19 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  call void @_RNvNtNtCsaL1QbXo9JQH_3std3sys2fs8read_dir(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr %i.l, i64 %i.m), !noalias !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i8, ptr %i.n, align 8, !noalias !19 ; 2 uses
  %.sink1.i = load ptr, ptr %i.a, align 8, !noalias !19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %bb.d, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsaL1QbXo9JQH_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorE6unwrapCscOzg5arm0FQ_17build_script_main.exit

bb.d:                                             ; preds = %bb.c
  store ptr %.sink1.i, ptr %i.d, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @18, i64 43, ptr nonnull %i.d, ptr nonnull align 8 @17, ptr nonnull align 8 @14) #26
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.d) #23
          to label %common.resume unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.e ], [ %.pn2, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsaL1QbXo9JQH_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorE6unwrapCscOzg5arm0FQ_17build_script_main.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %.sink1.i, ptr %i.h, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 %i.o, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.310.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathEE8grow_oneCscOzg5arm0FQ_17build_script_main:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTINtNtB7_4sync3ArceEINtNtCs3oUPovFnLWP_4core6option6OptionBN_EEE8grow_oneCscOzg5arm0FQ_17build_script_main(ptr align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0, i64 %i.a, i64 1, i64 8, i64 32) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.c, i64 %i.d) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCsaL1QbXo9JQH_3std4path7PathBufBN_EE8grow_oneCscOzg5arm0FQ_17build_script_main(ptr align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0, i64 %i.a, i64 1, i64 8, i64 48) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.c, i64 %i.d) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterNtNtNtCscOzg5arm0FQ_17build_script_main5build4core9AsmTargetE3newBU_(ptr align 8 %0, i64 %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMsF_NtCsaL1QbXo9JQH_3std7processNtB5_10ExitStatus7successCscOzg5arm0FQ_17build_script_main(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.not = icmp eq i32 %i.a, 0
  ret i1 %.not
}

; Function Attrs: nonlazybind uwtable
define hidden range(i24 0, 65794) i24 @_RNvMs_NtNtCscOzg5arm0FQ_17build_script_main5build5cargoNtNtB6_1c7Profile12new_from_env(ptr %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [176 x i8], align 8               ; 6 uses
  call void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr %0, i64 %1, ptr nonnull @34, i64 4)
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = invoke { ptr, i64 } @_RNvXs1_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexNtNtBV_5range9RangeFullE5indexCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.d, ptr nonnull align 8 @39) #21
          to label %_RNvXs1r_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBufINtNtCs3oUPovFnLWP_4core7convert5AsRefNtB6_4PathE6as_refCscOzg5arm0FQ_17build_script_main.exit.i unwind label %bb.b, !noalias !22 ; 2 uses

bb.b:                                             ; preds = %_RNvXs1r_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBufINtNtCs3oUPovFnLWP_4core7convert5AsRefNtB6_4PathE6as_refCscOzg5arm0FQ_17build_script_main.exit.i, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.d) #23
          to label %common.resume unwind label %bb.f, !noalias !22

_RNvXs1r_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBufINtNtCs3oUPovFnLWP_4core7convert5AsRefNtB6_4PathE6as_refCscOzg5arm0FQ_17build_script_main.exit.i: ; preds = %bb.a
  %i.h = extractvalue { ptr, i64 } %i.f, 0
  %i.i = extractvalue { ptr, i64 } %i.f, 1
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std3sys2fs8metadata(ptr nonnull sret([176 x i8]) align 8 %i.a, ptr %i.h, i64 %i.i)
          to label %bb.c unwind label %bb.b, !noalias !22

bb.c:                                             ; preds = %_RNvXs1r_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBufINtNtCs3oUPovFnLWP_4core7convert5AsRefNtB6_4PathE6as_refCscOzg5arm0FQ_17build_script_main.exit.i
  %i.j = load i64, ptr %i.a, align 8, !noalias !22
  %i.k = icmp eq i64 %i.j, 2
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.m, ptr %i.n, align 8, !alias.scope !22
  store i64 2, ptr %i.e, align 8, !alias.scope !22
  br label %_RINvNtCsaL1QbXo9JQH_3std2fs8metadataNtNtB4_4path7PathBufECscOzg5arm0FQ_17build_script_main.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.e, ptr noundef nonnull align 8 dereferenceable(176) %i.a, i64 176, i1 false)
  br label %_RINvNtCsaL1QbXo9JQH_3std2fs8metadataNtNtB4_4path7PathBufECscOzg5arm0FQ_17build_script_main.exit

bb.f:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !22
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.q, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsaL1QbXo9JQH_3std2fs8metadataNtNtB4_4path7PathBufECscOzg5arm0FQ_17build_script_main.exit: ; preds = %bb.d, %bb.e
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.d), !noalias !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = invoke zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorE5is_okCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.e)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsaL1QbXo9JQH_3std2fs8metadataNtNtB4_4path7PathBufECscOzg5arm0FQ_17build_script_main.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.e) #23
          to label %common.resume unwind label %bb.m

bb.h:                                             ; preds = %_RINvNtCsaL1QbXo9JQH_3std2fs8metadataNtNtB4_4path7PathBufECscOzg5arm0FQ_17build_script_main.exit
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.e)
  br i1 %i.p, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtNtNtCscOzg5arm0FQ_17build_script_main5build5cargo3env3var(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 @36)
  %i.r = load i64, ptr %i.b, align 8
  %.not.i = icmp eq i64 %i.r, -1
  br i1 %.not.i, label %bb.j, label %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringE6unwrapCscOzg5arm0FQ_17build_script_main.exit

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @37) #22
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringE6unwrapCscOzg5arm0FQ_17build_script_main.exit: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, 5
  br i1 %i.u, label %bb.k, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2neCscOzg5arm0FQ_17build_script_main.exit

bb.k:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringE6unwrapCscOzg5arm0FQ_17build_script_main.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = load i32, ptr %i.w, align 1
  %i.y = xor i32 %i.x, 1936482662
  %i.z = getelementptr i8, ptr %i.w, i64 4
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = xor i32 %i.ab, 101
  %i.ad = or i32 %i.y, %i.ac
  %i.ae = icmp ne i32 %i.ad, 0                    ; 2 uses
  %i.af = zext i1 %i.ae to i32                    ; 0 uses
  %i.ag = zext i1 %i.ae to i8
  br label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2neCscOzg5arm0FQ_17build_script_main.exit

bb.l:                                             ; preds = %bb.h, %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2neCscOzg5arm0FQ_17build_script_main.exit
  %.sroa.01.0 = phi i8 [ %.sroa.0.0.i, %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2neCscOzg5arm0FQ_17build_script_main.exit ], [ 0, %bb.h ]
  %.sroa.2.0.insert.insert = phi i24 [ 65792, %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2neCscOzg5arm0FQ_17build_script_main.exit ], [ 0, %bb.h ]
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.01.0 to i24
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i24 %.sroa.0.0.insert.insert

_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2neCscOzg5arm0FQ_17build_script_main.exit: ; preds = %bb.k, %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringE6unwrapCscOzg5arm0FQ_17build_script_main.exit
  %.sroa.0.0.i = phi i8 [ %i.ag, %bb.k ], [ 1, %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringE6unwrapCscOzg5arm0FQ_17build_script_main.exit ]
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.c)
  br label %bb.l

bb.m:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMsr_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBuf7as_pathCscOzg5arm0FQ_17build_script_main(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXs1_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexNtNtBV_5range9RangeFullE5indexCscOzg5arm0FQ_17build_script_main(ptr align 8 %0, ptr nonnull align 8 @39) #21
  ret { ptr, i64 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i32, i32 } @_RNvMst_NtCsaL1QbXo9JQH_3std7processNtB5_5Stdio7inheritCscOzg5arm0FQ_17build_script_main() unnamed_addr #4 {
bb.a:
  ret { i32, i32 } { i32 0, i32 undef }
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCscOzg5arm0FQ_17build_script_main(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %3 = and i64 %i.c, 1
  %.not = icmp eq i64 %3, 0
  %i.d = lshr i64 %i.c, 1
  %.sroa.0.0 = select i1 %.not, ptr null, ptr %1
  call void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3U9i7nQCKwt_15find_msvc_tools(ptr sret([24 x i8]) align 8 %0, ptr %.sroa.0.0, i64 %i.d, ptr nonnull align 8 %i.a) #21
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden nonnull ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCscOzg5arm0FQ_17build_script_main(i64 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtimeCscOzg5arm0FQ_17build_script_main(i64 %0, i64 %1, i1 zeroext false) #21
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 %0, i64 %1) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.b
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvNtCs3oUPovFnLWP_4core10intrinsics9cold_pathCscOzg5arm0FQ_17build_script_main() unnamed_addr #9 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCscOzg5arm0FQ_17build_script_main(i32 %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 2048                    ; 2 uses
  %i.c = icmp ult i32 %0, 65536                   ; 2 uses
  %. = select i1 %i.c, i64 3, i64 4
  %.sroa.0.0 = select i1 %i.b, i64 2, i64 %.      ; 2 uses
  %i.d = icmp ult i64 %2, %.sroa.0.0
  br i1 %i.d, label %bb.h, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.h, label %.thread7

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i32 %0 to i8
  %i.g = and i8 %i.f, 63
  %i.h = or disjoint i8 %i.g, -128                ; 3 uses
  %i.i = lshr i32 %0, 6
  %i.j = trunc i32 %i.i to i8                     ; 2 uses
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 2 uses
  %i.m = lshr i32 %0, 12
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128
  %i.q = lshr i32 %0, 18
  %i.r = trunc i32 %i.q to i8
  %i.s = or i8 %i.r, -16
  br i1 %i.b, label %bb.d, label %bb.e

.thread7:                                         ; preds = %.thread
  %i.t = trunc nuw nsw i32 %0 to i8
  store i8 %i.t, ptr %1, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_uncheckedCscOzg5arm0FQ_17build_script_main.exit

bb.d:                                             ; preds = %bb.c
  %i.u = or disjoint i8 %i.j, -64
  store i8 %i.u, ptr %1, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.h, ptr %i.v, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_uncheckedCscOzg5arm0FQ_17build_script_main.exit

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.n, -32
  store i8 %i.w, ptr %1, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.l, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.h, ptr %i.y, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_uncheckedCscOzg5arm0FQ_17build_script_main.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.s, ptr %1, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.p, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.l, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.h, ptr %i.ab, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_uncheckedCscOzg5arm0FQ_17build_script_main.exit

_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_uncheckedCscOzg5arm0FQ_17build_script_main.exit: ; preds = %.thread7, %bb.d, %bb.f, %bb.g
  %.sroa.0.059 = phi i64 [ 1, %.thread7 ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ac = insertvalue { ptr, i64 } poison, ptr %1, 0
  %i.ad = insertvalue { ptr, i64 } %i.ac, i64 %.sroa.0.059, 1
  ret { ptr, i64 } %i.ad

bb.h:                                             ; preds = %.thread, %bb.b
  %.sroa.0.06 = phi i64 [ 1, %.thread ], [ %.sroa.0.0, %bb.b ]
  tail call fastcc void @_RNvNvNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw8do_panic7runtimeCscOzg5arm0FQ_17build_script_main(i32 %0, i64 %.sroa.0.06, i64 %2) #27
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCscOzg5arm0FQ_17build_script_main(i8 %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %2, 16
  br i1 %i.a, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 %0, ptr %1, i64 %2) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.lr.ph, %.preheader, %bb.b
  %.sroa.5.1 = phi i64 [ %i.d, %bb.b ], [ undef, %.preheader ], [ %.sroa.04.09, %.lr.ph ], [ %.sroa.04.09, %bb.c ]
  %.sroa.0.1 = phi i64 [ %i.c, %bb.b ], [ 0, %.preheader ], [ 0, %bb.c ], [ 1, %.lr.ph ]
  %i.e = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.f = insertvalue { i64, i64 } %i.e, i64 %.sroa.5.1, 1
  ret { i64, i64 } %i.f

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.sroa.04.09 = phi i64 [ %i.j, %bb.c ], [ 0, %.preheader ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.09
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, %0
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = add nuw i64 %.sroa.04.09, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCscOzg5arm0FQ_17build_script_main5build4path47join_components_with_forward_slashes_if_windows(ptr sret([24 x i8]) align 8 %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtCs3oUPovFnLWP_4core7convert4FromRNtNtB9_4path4PathE4fromCscOzg5arm0FQ_17build_script_main(ptr sret([24 x i8]) align 8 %0, ptr %1, i64 %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCscOzg5arm0FQ_17build_script_main5build8prefixed18prefix_all_symbols(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, i32 %1, ptr %2, i64 range(i64 0, 2) %3, ptr %4, i64 %5, ptr align 8 %6, i64 %7, ptr align 8 %8, i64 %9) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 2 uses
  %i.e = alloca [16 x i8], align 8                ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 2 uses
  %i.g = alloca [64 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 2 uses
  %i.k = alloca [16 x i8], align 8                ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 2 uses
  %i.m = alloca [16 x i8], align 8                ; 2 uses
  %i.n = alloca [16 x i8], align 8                ; 2 uses
  %i.o = alloca [16 x i8], align 8                ; 2 uses
  %i.p = alloca [64 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 2 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 2 uses
  %i.t = alloca [8 x i8], align 8                 ; 2 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 3 uses
  %i.w = alloca [16 x i8], align 8                ; 4 uses
  %i.x = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %1, ptr %i.x, align 4
  store ptr %2, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %3, ptr %i.y, align 8
  store ptr %4, ptr %i.v, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %5, ptr %i.z, align 8
  store i64 0, ptr %i.u, align 8, !alias.scope !25
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !25
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !25
  %.idx = shl nuw nsw i64 %7, 5
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 %.idx
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ah = icmp eq i64 %7, 0
  br i1 %i.ah, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterTReBQ_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit.thread, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterTReBQ_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.v, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.n ], [ %i.bk, %bb.v ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit22, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp23, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.u) #23
          to label %bb.x unwind label %bb.p

.loopexit:                                        ; preds = %bb.e, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l, %_RNvXsu_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtNtCs3oUPovFnLWP_4core3ops5arith9AddAssignReE10add_assignCscOzg5arm0FQ_17build_script_main.exit, %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.u, %_RNvXsu_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtNtCs3oUPovFnLWP_4core3ops5arith9AddAssignReE10add_assignCscOzg5arm0FQ_17build_script_main.exit18, %bb.t, %bb.s, %bb.r, %bb.q, %bb.c
  %lpad.loopexit22 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterTReBQ_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit.thread
  %lpad.loopexit.split-lp23 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.b:                                             ; preds = %_RNvXsu_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtNtCs3oUPovFnLWP_4core3ops5arith9AddAssignReE10add_assignCscOzg5arm0FQ_17build_script_main.exit18
  %i.ai = icmp eq ptr %i.aj, %i.aa
  br i1 %i.ai, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterTReBQ_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit.thread, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterTReBQ_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterTReBQ_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.025 = phi ptr [ %i.aj, %bb.b ], [ %6, %bb.a ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 32 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.025, null
  br i1 %.not, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterTReBQ_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterTReBQ_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit
  store ptr %.sroa.0.025, ptr %i.t, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 16
  store ptr %i.ak, ptr %i.s, align 8
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displaycECsiHivYpkJ4Hu_2cc(ptr nonnull sret([16 x i8]) align 8 %i.o, ptr nonnull align 4 %i.x)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterTReBQ_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit.thread: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterTReBQ_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit, %bb.b, %bb.a
  %i.al = invoke { ptr, ptr } @_RNvXs_NtNtCs3oUPovFnLWP_4core5slice4iterRSReNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr align 8 %8, i64 %9)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.d:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterTReBQ_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit.thread
  %i.am = extractvalue { ptr, ptr } %i.al, 0
  %i.an = extractvalue { ptr, ptr } %i.al, 1
  store ptr %i.am, ptr %i.k, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %bb.e

bb.e:                                             ; preds = %_RNvXsu_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtNtCs3oUPovFnLWP_4core3ops5arith9AddAssignReE10add_assignCscOzg5arm0FQ_17build_script_main.exit, %bb.d
  %i.av = invoke align 8 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.k)
          to label %bb.f unwind label %.loopexit  ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not12 = icmp eq ptr %i.av, null
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.av, ptr %i.j, align 8, !captures !5
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displaycECsiHivYpkJ4Hu_2cc(ptr nonnull sret([16 x i8]) align 8 %i.f, ptr nonnull align 4 %i.x)
          to label %bb.i unwind label %.loopexit

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  ret void

bb.i:                                             ; preds = %bb.g
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.e, ptr nonnull align 8 %i.w)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayRReECsiHivYpkJ4Hu_2cc(ptr nonnull sret([16 x i8]) align 8 %i.d, ptr nonnull align 8 %i.j)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr nonnull align 8 %i.v)
          to label %bb.l unwind label %.loopexit

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.aw = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj19_Kj4_ECscOzg5arm0FQ_17build_script_main(ptr nonnull @56, ptr nonnull align 8 %i.g)
          to label %bb.m unwind label %.loopexit  ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.ax = extractvalue { ptr, ptr } %i.aw, 0      ; 2 uses
  %i.ay = extractvalue { ptr, ptr } %i.aw, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ax, ptr %i.b, align 8
  store ptr %i.ay, ptr %i.as, align 8
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %10 = and i64 %i.az, 1
  %.not.i = icmp eq i64 %10, 0
  %i.ba = lshr i64 %i.az, 1
  %.sroa.0.0.i14 = select i1 %.not.i, ptr null, ptr %i.ax
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr %.sroa.0.0.i14, i64 %i.ba, ptr nonnull align 8 %i.b) #21
          to label %bb.o unwind label %.loopexit

bb.n:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.i) #23
          to label %.loopexit.split-lp unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.bc = load ptr, ptr %i.at, align 8
  %i.bd = load i64, ptr %i.au, align 8
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs93MrfdkTAtF_5shlex(ptr nonnull align 8 %i.u, ptr %i.bc, i64 %i.bd) #21
          to label %_RNvXsu_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtNtCs3oUPovFnLWP_4core3ops5arith9AddAssignReE10add_assignCscOzg5arm0FQ_17build_script_main.exit unwind label %bb.n

_RNvXsu_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtNtCs3oUPovFnLWP_4core3ops5arith9AddAssignReE10add_assignCscOzg5arm0FQ_17build_script_main.exit: ; preds = %bb.o
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.i)
          to label %bb.e unwind label %.loopexit

bb.p:                                             ; preds = %bb.v, %bb.n, %.loopexit.split-lp
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.q:                                             ; preds = %bb.c
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.n, ptr nonnull align 8 %i.w)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayRReECsiHivYpkJ4Hu_2cc(ptr nonnull sret([16 x i8]) align 8 %i.m, ptr nonnull align 8 %i.t)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayRReECsiHivYpkJ4Hu_2cc(ptr nonnull sret([16 x i8]) align 8 %i.l, ptr nonnull align 8 %i.s)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %i.bf = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj16_Kj4_ECscOzg5arm0FQ_17build_script_main(ptr nonnull @57, ptr nonnull align 8 %i.p)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.bg = extractvalue { ptr, ptr } %i.bf, 0      ; 2 uses
  %i.bh = extractvalue { ptr, ptr } %i.bf, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bg, ptr %i.a, align 8
  store ptr %i.bh, ptr %i.ae, align 8
  %i.bi = ptrtoint ptr %i.bh to i64               ; 2 uses
  %11 = and i64 %i.bi, 1
  %.not.i15 = icmp eq i64 %11, 0
  %i.bj = lshr i64 %i.bi, 1
  %.sroa.0.0.i16 = select i1 %.not.i15, ptr null, ptr %i.bg
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.q, ptr %.sroa.0.0.i16, i64 %i.bj, ptr nonnull align 8 %i.a) #21
          to label %bb.w unwind label %.loopexit.split-lp.loopexit

bb.v:                                             ; preds = %bb.w
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.r) #23
          to label %.loopexit.split-lp unwind label %bb.p

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.bl = load ptr, ptr %i.af, align 8
  %i.bm = load i64, ptr %i.ag, align 8
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs93MrfdkTAtF_5shlex(ptr nonnull align 8 %i.u, ptr %i.bl, i64 %i.bm) #21
          to label %_RNvXsu_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtNtCs3oUPovFnLWP_4core3ops5arith9AddAssignReE10add_assignCscOzg5arm0FQ_17build_script_main.exit18 unwind label %bb.v

_RNvXsu_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtNtCs3oUPovFnLWP_4core3ops5arith9AddAssignReE10add_assignCscOzg5arm0FQ_17build_script_main.exit18: ; preds = %bb.w
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.r)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit

bb.x:                                             ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @_RNvNtNtCscOzg5arm0FQ_17build_script_main5build8prefixed30generate_prefix_symbols_header(ptr %0, i64 %1, ptr %2, i64 range(i64 16, 24) %3, i32 range(i32 35, 38) %4, ptr nofree readonly captures(address, read_provenance) %5, i64 %6, ptr %7, i64 %8, ptr align 8 %9, i64 %10, ptr align 8 %11, i64 %12) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [4 x i8], align 4                 ; 6 uses
  %i.m = alloca [16 x i8], align 16               ; 4 uses
  %i.n = alloca [8 x i8], align 4                 ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 2 uses
  %i.r = alloca [16 x i8], align 8                ; 2 uses
  %i.s = alloca [16 x i8], align 8                ; 2 uses
  %i.t = alloca [16 x i8], align 8                ; 2 uses
  %i.u = alloca [16 x i8], align 8                ; 2 uses
  %i.v = alloca [16 x i8], align 8                ; 2 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 2 uses
  %i.y = alloca [16 x i8], align 8                ; 2 uses
  %i.z = alloca [16 x i8], align 8                ; 2 uses
  %i.aa = alloca [16 x i8], align 8               ; 2 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 2 uses
  %i.ad = alloca [16 x i8], align 8               ; 2 uses
  %i.ae = alloca [16 x i8], align 8               ; 3 uses
  %i.af = alloca [16 x i8], align 8               ; 2 uses
  %i.ag = alloca [16 x i8], align 8               ; 2 uses
  %i.ah = alloca [32 x i8], align 8               ; 3 uses
  %i.ai = alloca [24 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 2 uses
  %i.al = alloca [16 x i8], align 8               ; 4 uses
  %i.am = alloca [4 x i8], align 4                ; 11 uses
  %i.an = alloca [24 x i8], align 8               ; 2 uses
  %i.ao = alloca [24 x i8], align 8               ; 5 uses
  %i.ap = alloca [4 x i8], align 4                ; 7 uses
  store i32 %4, ptr %i.ap, align 4
  call void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.ao, ptr %0, i64 %1, ptr nonnull @58, i64 19)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.ao, ptr %i.o, align 8
  store i32 511, ptr %i.n, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i8 1, ptr %i.aq, align 4
  %i.ar = invoke { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtB2_5AsRefNtBy_4PathE6as_refCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.o) #21
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.as = extractvalue { ptr, i64 } %i.ar, 0
  %i.at = extractvalue { ptr, i64 } %i.ar, 1
  %i.au = invoke ptr @_RINvMsD_NtCsaL1QbXo9JQH_3std2fsNtB6_10DirBuilder6createRNtNtB8_4path4PathECsiHivYpkJ4Hu_2cc(ptr nonnull align 4 %i.n, ptr %i.as, i64 %i.at)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.g, %bb.b, %.body38
  %.pn29 = phi { ptr, i32 } [ %.pn27, %.body38 ], [ %i.av, %bb.b ], [ %i.bb, %bb.g ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.ao) #23
          to label %bb.cs unwind label %bb.bt

bb.b:                                             ; preds = %.invoke, %bb.h, %bb.e, %.noexc, %bb.a, %bb.cr, %bb.co, %bb.j, %_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main.exit, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.aw = invoke ptr @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsiHivYpkJ4Hu_2cc(ptr %i.au)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %bb.e, label %.invoke

bb.e:                                             ; preds = %bb.d
  %i.ax = invoke { ptr, i64 } @_RNvXs1_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexNtNtBV_5range9RangeFullE5indexCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.ao, ptr nonnull align 8 @39) #21
          to label %_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main.exit unwind label %bb.b ; 2 uses

_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main.exit: ; preds = %bb.e
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0
  %i.az = extractvalue { ptr, i64 } %i.ax, 1
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.an, ptr %i.ay, i64 %i.az, ptr %2, i64 %3)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i128 79537652246452167413109620736, ptr %i.m, align 16, !noalias !30
  %i.ba = invoke { ptr, i64 } @_RNvXs1_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexNtNtBV_5range9RangeFullE5indexCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.p, ptr nonnull align 8 @39) #21
          to label %_RNvXs1r_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBufINtNtCs3oUPovFnLWP_4core7convert5AsRefNtB6_4PathE6as_refCscOzg5arm0FQ_17build_script_main.exit.i unwind label %bb.g, !noalias !30 ; 2 uses

bb.g:                                             ; preds = %_RNvXs1r_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBufINtNtCs3oUPovFnLWP_4core7convert5AsRefNtB6_4PathE6as_refCscOzg5arm0FQ_17build_script_main.exit.i, %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.p) #23
          to label %.body unwind label %bb.i

_RNvXs1r_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBufINtNtCs3oUPovFnLWP_4core7convert5AsRefNtB6_4PathE6as_refCscOzg5arm0FQ_17build_script_main.exit.i: ; preds = %bb.f
  %i.bc = extractvalue { ptr, i64 } %i.ba, 0
  %i.bd = extractvalue { ptr, i64 } %i.ba, 1
  invoke void @_RINvMsj_NtCsaL1QbXo9JQH_3std2fsNtB6_11OpenOptions4openRNtNtB8_4path4PathECsiHivYpkJ4Hu_2cc(ptr nonnull sret([16 x i8]) align 8 %i.ak, ptr nonnull align 4 %i.m, ptr %i.bc, i64 %i.bd)
          to label %bb.h unwind label %bb.g

bb.h:                                             ; preds = %_RNvXs1r_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBufINtNtCs3oUPovFnLWP_4core7convert5AsRefNtB6_4PathE6as_refCscOzg5arm0FQ_17build_script_main.exit.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.p)
          to label %bb.j unwind label %bb.b

bb.i:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaL1QbXo9JQH_3std2fs4FileNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsiHivYpkJ4Hu_2cc(ptr nonnull sret([16 x i8]) align 8 %i.al, ptr nonnull align 8 %i.ak)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  %i.bf = load i32, ptr %i.al, align 8
  %i.bg = trunc i32 %i.bf to i1
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.d, %bb.l
  %i.bj = phi ptr [ %i.bi, %bb.l ], [ %i.aw, %bb.d ]
  %i.bk = phi ptr [ @72, %bb.l ], [ @73, %bb.d ]
  %i.bl = invoke ptr @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtNtB7_2io5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualCscOzg5arm0FQ_17build_script_main(ptr %i.bj, ptr nonnull align 8 %i.bk)
          to label %bb.cp unwind label %bb.b

bb.m:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.bn = load i32, ptr %i.bm, align 4
  store i32 %i.bn, ptr %i.am, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i32 46, ptr %i.l, align 4, !noalias !31
  invoke void @_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern15as_utf8_patternCscOzg5arm0FQ_17build_script_main(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr nonnull align 4 %i.l) #21
          to label %.noexc34 unwind label %bb.ak

.noexc34:                                         ; preds = %bb.m
  %i.bo = load i64, ptr %i.k, align 8, !noalias !31
  %i.bp = trunc nuw i64 %i.bo to i1
  br i1 %i.bp, label %bb.n, label %bb.t

bb.n:                                             ; preds = %.noexc34
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !31 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.bs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
end_hunk_1
