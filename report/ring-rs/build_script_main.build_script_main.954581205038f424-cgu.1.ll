Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/build_script_main.build_script_main.954581205038f424-cgu.1?download=true
inline.NumInlined: 108
inline.NumDeleted: 75
begin_hunk_0_@_RNvCscOzg5arm0FQ_17build_script_main4main:bb.a
          to label %bb.ao unwind label %bb.az, !noalias !53

bb.am:                                            ; preds = %bb.ak
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.an:                                            ; preds = %bb.ak
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.bk)
          to label %bb.aq unwind label %bb.ap, !noalias !53

bb.ao:                                            ; preds = %bb.au, %bb.ap, %bb.al
  %.pn11.i = phi { ptr, i32 } [ %i.dl, %bb.ap ], [ %i.do, %bb.au ], [ %.pn9.i, %bb.al ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.bm) #24
          to label %.body unwind label %bb.az, !noalias !53

bb.ap:                                            ; preds = %bb.ax, %bb.as, %bb.aq, %bb.an
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.aq:                                            ; preds = %bb.an
  invoke void @_RNvNtNtNtCscOzg5arm0FQ_17build_script_main5build5cargo3env3var(ptr nonnull sret([24 x i8]) align 8 %i.ay, ptr nonnull align 8 @361)
          to label %bb.ar unwind label %bb.ap, !noalias !53

bb.ar:                                            ; preds = %bb.aq
  %i.dm = load i64, ptr %i.ay, align 8, !noalias !53
  %.not.i.i = icmp eq i64 %i.dm, -1
  br i1 %.not.i.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @362) #27
          to label %.noexc.i unwind label %bb.ap, !noalias !53

.noexc.i:                                         ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !noalias !53
  store ptr %i.az, ptr %i.ba, align 8, !noalias !53
  store ptr %i.bm, ptr %i.ax, align 8, !noalias !53
  %i.dn = invoke zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCs1xwejQucwHj_5alloc6string6StringNtB7_9PartialEq2eqCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.ba, ptr nonnull align 8 %i.ax)
          to label %bb.av unwind label %bb.au, !noalias !53

bb.au:                                            ; preds = %bb.aw, %bb.at
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.az) #24
          to label %bb.ao unwind label %bb.az, !noalias !53

bb.av:                                            ; preds = %bb.at
  br i1 %i.dn, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedRNtNtCs1xwejQucwHj_5alloc6string6StringBM_ECscOzg5arm0FQ_17build_script_main(i8 0, ptr nonnull align 8 %i.ba, ptr nonnull align 8 %i.ax, ptr null, ptr undef, ptr nonnull align 8 @363) #29
          to label %bb.ay unwind label %bb.au, !noalias !53

bb.ax:                                            ; preds = %bb.av
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.az)
          to label %bb.bb unwind label %bb.ap, !noalias !53

bb.ay:                                            ; preds = %bb.aw
  unreachable

bb.az:                                            ; preds = %bb.au, %bb.ao, %bb.al, %bb.ai, %bb.af, %bb.ad, %bb.aa, %bb.u, %bb.o, %bb.i, %bb.c
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !53
  unreachable

.body:                                            ; preds = %bb.ba, %bb.ao, %bb.c, %bb.bc
  %.pn4 = phi { ptr, i32 } [ %.pn2, %bb.bc ], [ %i.dq, %bb.ba ], [ %.pn11.i, %bb.ao ], [ %.pn.pn.pn.pn.i, %bb.c ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.bw) #24
          to label %bb.ga unwind label %bb.fz

bb.ba:                                            ; preds = %bb.b, %bb.a, %bb.fx
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bb:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !54
  invoke void @_RNvNtNtNtCscOzg5arm0FQ_17build_script_main5build5cargo3env6var_os(ptr nonnull sret([24 x i8]) align 8 %i.av, ptr nonnull align 8 @40)
          to label %.noexc7 unwind label %bb.bd

.noexc7:                                          ; preds = %bb.bb
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE14unwrap_or_elseNCNvCscOzg5arm0FQ_17build_script_main11get_command0EB1L_(ptr nonnull sret([24 x i8]) align 8 %i.aw, ptr nonnull align 8 %i.av, ptr nonnull @41, i64 4, ptr nonnull align 8 @38) #26
          to label %.noexc8 unwind label %bb.bd

.noexc8:                                          ; preds = %.noexc7
  invoke void @_RNvXsA_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtB7_3ffi6os_str8OsStringE4fromCscOzg5arm0FQ_17build_script_main(ptr nonnull sret([24 x i8]) align 8 %i.bu, ptr nonnull align 8 %i.aw) #26
          to label %bb.bg unwind label %bb.bd

bb.bc:                                            ; preds = %bb.be, %bb.bd
  %.pn2 = phi { ptr, i32 } [ %i.dr, %bb.bd ], [ %.pn, %bb.be ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.bv) #24
          to label %.body unwind label %bb.fz

bb.bd:                                            ; preds = %.noexc8, %.noexc7, %bb.bb, %bb.fw
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.be:                                            ; preds = %.body16, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.ds, %bb.bf ], [ %eh.lpad-body17, %.body16 ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.bu) #24
          to label %bb.bc unwind label %bb.fz

bb.bf:                                            ; preds = %bb.ep, %bb.bh, %bb.bg
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bg:                                            ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !54
  %i.dt = invoke { ptr, i64 } @_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.bu)
          to label %bb.bh unwind label %bb.bf     ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  %i.du = extractvalue { ptr, i64 } %i.dt, 0
  %i.dv = extractvalue { ptr, i64 } %i.dt, 1
  store ptr %i.du, ptr %i.bt, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %i.dv, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr @46, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store i64 32, ptr %i.dy, align 8
  invoke void @_RNvNtNtNtCscOzg5arm0FQ_17build_script_main5build5cargo3env6var_os(ptr nonnull sret([24 x i8]) align 8 %i.br, ptr nonnull align 8 @48)
          to label %bb.bi unwind label %bb.bf

bb.bi:                                            ; preds = %bb.bh
  %i.dz = invoke { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE8as_derefCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.br)
          to label %bb.bk unwind label %bb.bj     ; 2 uses

bb.bj:                                            ; preds = %.loopexit11.i, %bb.ex, %bb.el, %bb.bo, %bb.ew, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.bn, %bb.bm, %bb.bl, %bb.bi
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body16

.body16:                                          ; preds = %.body.i18, %.body.thread.i, %bb.bj
  %eh.lpad-body17 = phi { ptr, i32 } [ %.pn.i10, %.body.thread.i ], [ %i.ea, %bb.bj ], [ %eh.lpad-body.i19, %.body.i18 ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.br) #24
          to label %bb.be unwind label %bb.fz

bb.bk:                                            ; preds = %bb.bi
  %i.eb = extractvalue { ptr, i64 } %i.dz, 0      ; 2 uses
  %i.ec = extractvalue { ptr, i64 } %i.dz, 1
  store ptr %i.eb, ptr %i.bs, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.ec, ptr %i.ed, align 8
  %.not = icmp eq ptr %i.eb, null
  br i1 %.not, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ee = invoke zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrINtB7_9PartialEqReE2eqCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.bs, ptr nonnull align 8 @50)
          to label %bb.eq unwind label %bb.bj

bb.bm:                                            ; preds = %bb.bk
  %i.ef = invoke { ptr, i64 } @_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.bw)
          to label %bb.bn unwind label %bb.bj     ; 2 uses

bb.bn:                                            ; preds = %bb.bm
  %i.eg = invoke { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.bv)
          to label %bb.bo unwind label %bb.bj     ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  %i.eh = extractvalue { ptr, i64 } %i.ef, 1      ; 5 uses
  %i.ei = extractvalue { ptr, i64 } %i.ef, 0      ; 5 uses
  %i.ej = extractvalue { ptr, i64 } %i.eg, 0      ; 3 uses
  %i.ek = extractvalue { ptr, i64 } %i.eg, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  invoke void @_RNvMNtNtCscOzg5arm0FQ_17build_script_main5build5cargoNtNtB4_6target6Target12new_from_env(ptr nonnull sret([104 x i8]) align 8 %i.au)
          to label %.noexc14 unwind label %bb.bj

.noexc14:                                         ; preds = %bb.bo
  %i.el = invoke i24 @_RNvMs_NtNtCscOzg5arm0FQ_17build_script_main5build5cargoNtNtB6_1c7Profile12new_from_env(ptr %i.ei, i64 %i.eh)
          to label %bb.bp unwind label %.body.thread49.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.body.thread.i:                                   ; preds = %.body.thread49.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.en, %bb.cm, %bb.cf, %bb.by, %.body.i, %.loopexit.split-lp.i
  %.pn.i10 = phi { ptr, i32 } [ %lpad.loopexit.split-lp41.i, %.loopexit.split-lp.i ], [ %eh.lpad-body52.i, %bb.en ], [ %eh.lpad-body.i, %.body.i ], [ %i.ff, %bb.by ], [ %.pn.i.i, %bb.cf ], [ %lpad.thr_comm.i.i, %bb.cm ], [ %lpad.loopexit.split-lp89, %.body.thread49.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCscOzg5arm0FQ_17build_script_main5build6target6TargetEBH_(ptr nonnull align 8 %i.au) #24
          to label %.body16 unwind label %bb.eo

bb.bp:                                            ; preds = %.noexc14
  store i24 %i.el, ptr %i.at, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.em = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.en = load i8, ptr %i.em, align 8
  %i.eo = trunc nuw i8 %i.en to i1
  %i.ep = lshr i24 %i.el, 16
  %i.eq = trunc nuw i24 %i.ep to i8
  br i1 %i.eo, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.er = invoke { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterNtNtNtCscOzg5arm0FQ_17build_script_main5build4core9AsmTargetE3newBU_(ptr nonnull align 8 @91, i64 9) #26
          to label %.noexc.i11 unwind label %.body.thread49.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc.i11:                                       ; preds = %bb.bq
  %i.es = extractvalue { ptr, ptr } %i.er, 0
  %i.et = extractvalue { ptr, ptr } %i.er, 1
  store ptr %i.es, ptr %i.ar, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.et, ptr %i.eu, align 8
  %i.ev = invoke align 8 ptr @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCscOzg5arm0FQ_17build_script_main5build4core9AsmTargetENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_BQ_10for_target0EBW_(ptr nonnull align 8 %i.ar, ptr nonnull align 8 %i.au) #26
          to label %.noexc._crit_edge.i unwind label %.body.thread49.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc._crit_edge.i:                              ; preds = %.noexc.i11
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2
  br label %bb.br

bb.br:                                            ; preds = %.noexc._crit_edge.i, %bb.bp
  %i.ew = phi i8 [ %i.eq, %bb.bp ], [ %.pre.i, %.noexc._crit_edge.i ]
  %.sroa.0.0.i.i = phi ptr [ null, %bb.bp ], [ %i.ev, %.noexc._crit_edge.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.ex = trunc nuw i8 %i.ew to i1                ; 4 uses
  br i1 %i.ex, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.as, ptr %i.ei, i64 %i.eh, ptr nonnull @42, i64 12)
          to label %bb.bu unwind label %.body.thread49.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %bb.br
  %i.ey = getelementptr inbounds nuw i8, ptr %i.au, i64 72 ; 2 uses
  %i.ez = invoke { ptr, i64 } @_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.ey)
          to label %bb.bv unwind label %.body.thread49.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bu:                                            ; preds = %_RINvNtNtCscOzg5arm0FQ_17build_script_main5build4core32generate_sources_and_preassembleINtNtCs3oUPovFnLWP_4core6option8IntoIterRNtB2_9AsmTargetEEB6_.exit.i, %bb.bs
  %.sroa.0.0.i = phi ptr [ %i.as, %bb.bs ], [ %i.ey, %_RINvNtNtCscOzg5arm0FQ_17build_script_main5build4core32generate_sources_and_preassembleINtNtCs3oUPovFnLWP_4core6option8IntoIterRNtB2_9AsmTargetEEB6_.exit.i ]
  %i.fa = invoke { ptr, i64 } @_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %.sroa.0.0.i)
          to label %bb.cn unwind label %.loopexit.split-lp.i ; 2 uses

.body.thread49.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.critedge.i.i, %.noexc12.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit.thread.i.i, %bb.cd, %bb.cb, %bb.em, %.noexc8.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCscOzg5arm0FQ_17build_script_main.exit.i.i, %bb.bw, %bb.bv, %bb.bt, %bb.bs, %.noexc.i11, %bb.bq, %.noexc14
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.loopexit.split-lp.i:                             ; preds = %.loopexit5.i.i, %bb.ec, %bb.eb, %bb.cw, %.noexc24.i12, %bb.co, %bb.bu
  %lpad.loopexit.split-lp41.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ex, label %.body.thread.i, label %bb.en

.body.i:                                          ; preds = %.body.i.i, %bb.dz, %bb.cp
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.gk, %bb.cp ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %.pn23.i.i, %bb.dz ] ; 2 uses
  br i1 %i.ex, label %.body.thread.i, label %bb.en

bb.bv:                                            ; preds = %bb.bt
  %i.fb = invoke align 8 ptr @_RNvXs8_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRNtNtNtCscOzg5arm0FQ_17build_script_main5build4core9AsmTargetENtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterBR_(ptr align 8 %.sroa.0.0.i.i)
          to label %bb.bw unwind label %.body.thread49.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bv
  %i.fc = extractvalue { ptr, i64 } %i.ez, 1      ; 4 uses
  %i.fd = extractvalue { ptr, i64 } %i.ez, 0      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.fe = invoke ptr @_RNvNtNtCscOzg5arm0FQ_17build_script_main5build8prefixed31generate_prefix_symbols_headers(ptr %i.fd, i64 %i.fc, ptr %i.ej, i64 %i.ek, ptr nonnull align 8 @334, i64 7, ptr nonnull align 8 @326, i64 151)
          to label %.noexc7.i unwind label %.body.thread49.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc7.i:                                        ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %.not.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCscOzg5arm0FQ_17build_script_main.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %.noexc7.i
  store ptr %i.fe, ptr %i.al, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @54, i64 43, ptr nonnull %i.al, ptr nonnull align 8 @53, ptr nonnull align 8 @16) #29
          to label %bb.bz unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.al) #24
          to label %.body.thread.i unwind label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCscOzg5arm0FQ_17build_script_main.exit.i.i: ; preds = %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.fh = invoke align 8 ptr @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtB8_6option8IntoIterRNtNtNtCscOzg5arm0FQ_17build_script_main5build4core9AsmTargetENtB2_12IntoIterator9into_iterB1g_(ptr align 8 %i.fb) #26
          to label %.noexc8.i unwind label %.body.thread49.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8.i:                                        ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCscOzg5arm0FQ_17build_script_main.exit.i.i
  store ptr %i.fh, ptr %i.aq, align 8
  %i.fi = invoke align 8 ptr @_RNvXsy_NtCs3oUPovFnLWP_4core6optionINtB5_8IntoIterRNtNtNtCscOzg5arm0FQ_17build_script_main5build4core9AsmTargetENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBT_(ptr nonnull align 8 %i.aq) #26
          to label %.noexc9.i unwind label %.body.thread49.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc9.i:                                        ; preds = %.noexc8.i
  %.not29.i.i = icmp eq ptr %i.fi, null
  br i1 %.not29.i.i, label %_RINvNtNtCscOzg5arm0FQ_17build_script_main5build4core32generate_sources_and_preassembleINtNtCs3oUPovFnLWP_4core6option8IntoIterRNtB2_9AsmTargetEEB6_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc9.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.218.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.319.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.211.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %.sroa.312.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  br label %bb.cb

bb.cb:                                            ; preds = %.noexc13.i, %.lr.ph.i.i
  %i.fl = phi ptr [ %i.fi, %.lr.ph.i.i ], [ %i.fy, %.noexc13.i ] ; 5 uses
  invoke fastcc void @_RNvNtNtCscOzg5arm0FQ_17build_script_main5build4core16perlasm_src_dsts(ptr noalias align 8 %i.ap, ptr %i.fd, i64 %i.fc, ptr nonnull align 8 %i.fl)
          to label %.noexc10.i unwind label %.body.thread49.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10.i:                                       ; preds = %bb.cb
  %.val.i.i = load ptr, ptr %i.fj, align 8
  %.val9.i.i = load i64, ptr %i.fk, align 8
  invoke fastcc void @_RNvMs0_NtNtCscOzg5arm0FQ_17build_script_main5build4coreNtB5_5Tools7perlasm(ptr nonnull readonly align 8 %i.bt, ptr align 8 %.val.i.i, i64 %.val9.i.i, ptr nonnull align 8 %i.fl, ptr %i.ei, i64 %i.eh)
          to label %bb.cc unwind label %bb.cm

bb.cc:                                            ; preds = %.noexc10.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = invoke zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSRe8containsCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 @92, i64 2, ptr nonnull align 8 %i.fm) #26
          to label %_RNvMNtNtCscOzg5arm0FQ_17build_script_main5build4coreNtB2_9AsmTarget8use_nasm.exit.i.i unwind label %bb.cm

_RNvMNtNtCscOzg5arm0FQ_17build_script_main5build4coreNtB2_9AsmTarget8use_nasm.exit.i.i: ; preds = %bb.cc
  br i1 %i.fn, label %bb.cd, label %.critedge.i.i

bb.cd:                                            ; preds = %_RNvMNtNtCscOzg5arm0FQ_17build_script_main5build4coreNtB2_9AsmTarget8use_nasm.exit.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ap, align 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %i.fj, align 8 ; 3 uses
  %.sroa.3.0.copyload.i.i = load i64, ptr %i.fk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.fo = getelementptr inbounds nuw [48 x i8], ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.3.0.copyload.i.i
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.ak, align 8, !noalias !55
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !55
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !55
  store ptr %i.fo, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !55
  invoke void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtCsaL1QbXo9JQH_3std4path7PathBufB1G_EENCNvNtNtCscOzg5arm0FQ_17build_script_main5build4core8asm_srcs0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB1G_EEB2t_(ptr nonnull sret([24 x i8]) align 8 %i.ao, ptr nonnull align 8 %i.ak) #26
          to label %.noexc11.i unwind label %.body.thread49.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11.i:                                       ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %.sroa.017.0.copyload.i.i = load i64, ptr %i.ao, align 8
  %.sroa.218.0.copyload.i.i = load ptr, ptr %.sroa.218.0..sroa_idx.i.i, align 8 ; 3 uses
  %.sroa.319.0.copyload.i.i = load i64, ptr %.sroa.319.0..sroa_idx.i.i, align 8
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.218.0.copyload.i.i, i64 %.sroa.319.0.copyload.i.i
  store ptr %.sroa.218.0.copyload.i.i, ptr %i.an, align 8
  store ptr %.sroa.218.0.copyload.i.i, ptr %.sroa.211.0..sroa_idx.i.i, align 8
  store i64 %.sroa.017.0.copyload.i.i, ptr %.sroa.312.0..sroa_idx.i.i, align 8
  store ptr %i.fp, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ck, %.noexc11.i
  %i.fs = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !56
  %i.ft = load ptr, ptr %.sroa.211.0..sroa_idx.i.i, align 8, !noalias !56 ; 4 uses
  %i.fu = icmp eq ptr %i.ft, %i.fs
  br i1 %i.fu, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit.thread.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit.i.i

bb.cf:                                            ; preds = %bb.ci, %bb.cg
  %.pn.i.i = phi { ptr, i32 } [ %i.fv, %bb.cg ], [ %i.fz, %bb.ci ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufEECscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.an) #24
          to label %.body.thread.i unwind label %bb.cl

bb.cg:                                            ; preds = %bb.ck
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit.i.i: ; preds = %bb.ce
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  store ptr %i.fw, ptr %.sroa.211.0..sroa_idx.i.i, align 8, !noalias !56
  %.sroa.013.0.copyload14.i.i = load i64, ptr %i.ft, align 8 ; 2 uses
  %.not6.i.i = icmp eq i64 %.sroa.013.0.copyload14.i.i, -1
  br i1 %.not6.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit.thread.i.i, label %bb.ch

bb.ch:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit.i.i
  %.sroa.415.0..sroa_idx16.i.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i64 %.sroa.013.0.copyload14.i.i, ptr %i.am, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.415.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.415.0..sroa_idx16.i.i, i64 16, i1 false)
  %i.fx = invoke { ptr, i64 } @_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.am)
          to label %bb.cj unwind label %bb.ci     ; 2 uses

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit.thread.i.i: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit.i.i, %bb.ce
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufEECscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.an)
          to label %.noexc12.i unwind label %.body.thread49.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12.i:                                       ; preds = %.critedge.i.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit.thread.i.i
  %i.fy = invoke align 8 ptr @_RNvXsy_NtCs3oUPovFnLWP_4core6optionINtB5_8IntoIterRNtNtNtCscOzg5arm0FQ_17build_script_main5build4core9AsmTargetENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBT_(ptr nonnull align 8 %i.aq) #26
          to label %.noexc13.i unwind label %.body.thread49.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc13.i:                                       ; preds = %.noexc12.i
  %.not.i.i13 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i13, label %_RINvNtNtCscOzg5arm0FQ_17build_script_main5build4core32generate_sources_and_preassembleINtNtCs3oUPovFnLWP_4core6option8IntoIterRNtB2_9AsmTargetEEB6_.exit.i, label %bb.cb

.critedge.i.i:                                    ; preds = %_RNvMNtNtCscOzg5arm0FQ_17build_script_main5build4coreNtB2_9AsmTarget8use_nasm.exit.i.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCsaL1QbXo9JQH_3std4path7PathBufB19_EEECscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.ap)
          to label %.noexc12.i unwind label %.body.thread49.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ci:                                            ; preds = %bb.cj, %bb.ch
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.am) #24
          to label %bb.cf unwind label %bb.cl

bb.cj:                                            ; preds = %bb.ch
  %i.ga = extractvalue { ptr, i64 } %i.fx, 0
  %i.gb = extractvalue { ptr, i64 } %i.fx, 1
  %i.gc = load ptr, ptr %i.fq, align 8
  %i.gd = load i64, ptr %i.fr, align 8
  invoke fastcc void @_RNvMs_NtNtCscOzg5arm0FQ_17build_script_main5build4coreNtB4_5Tools4nasm(ptr nonnull readonly align 8 %i.bt, ptr %i.ga, i64 %i.gb, ptr %i.gc, i64 %i.gd, ptr %i.fd, i64 %i.fc, ptr %i.fd, i64 %i.fc, ptr %i.ei, i64 %i.eh)
          to label %bb.ck unwind label %bb.ci

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.am)
          to label %bb.ce unwind label %bb.cg

bb.cl:                                            ; preds = %bb.cm, %bb.ci, %bb.cf
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.cm:                                            ; preds = %bb.cc, %.noexc10.i
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCsaL1QbXo9JQH_3std4path7PathBufB19_EEECscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.ap) #24
          to label %.body.thread.i unwind label %bb.cl

_RINvNtNtCscOzg5arm0FQ_17build_script_main5build4core32generate_sources_and_preassembleINtNtCs3oUPovFnLWP_4core6option8IntoIterRNtB2_9AsmTargetEEB6_.exit.i: ; preds = %.noexc13.i, %.noexc9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.bu

bb.cn:                                            ; preds = %bb.bu
  %i.gf = extractvalue { ptr, i64 } %i.fa, 0      ; 3 uses
  %i.gg = extractvalue { ptr, i64 } %i.fa, 1      ; 3 uses
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
  %.not.i15.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not.i15.i, label %.noexc26.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  invoke fastcc void @_RNvNtNtCscOzg5arm0FQ_17build_script_main5build4core16perlasm_src_dsts(ptr noalias align 8 %i.ah, ptr %i.gf, i64 %i.gg, ptr nonnull align 8 %.sroa.0.0.i.i)
          to label %.noexc24.i12 unwind label %.loopexit.split-lp.i

.noexc24.i12:                                     ; preds = %bb.co
  %.sroa.075.0.copyload.i.i = load i64, ptr %i.ah, align 8
  %.sroa.276.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.276.0.copyload.i.i = load ptr, ptr %.sroa.276.0..sroa_idx.i.i, align 8 ; 3 uses
  %.sroa.377.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.377.0.copyload.i.i = load i64, ptr %.sroa.377.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.gh = getelementptr inbounds nuw [48 x i8], ptr %.sroa.276.0.copyload.i.i, i64 %.sroa.377.0.copyload.i.i
  store ptr %.sroa.276.0.copyload.i.i, ptr %i.r, align 8, !noalias !57
  %.sroa.2.0..sroa_idx.i.i16.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.276.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i16.i, align 8, !noalias !57
  %.sroa.3.0..sroa_idx.i.i17.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.075.0.copyload.i.i, ptr %.sroa.3.0..sroa_idx.i.i17.i, align 8, !noalias !57
  %.sroa.4.0..sroa_idx.i.i18.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.gh, ptr %.sroa.4.0..sroa_idx.i.i18.i, align 8, !noalias !57
  invoke void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtCsaL1QbXo9JQH_3std4path7PathBufB1G_EENCNvNtNtCscOzg5arm0FQ_17build_script_main5build4core8asm_srcs0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB1G_EEB2t_(ptr nonnull sret([24 x i8]) align 8 %i.ag, ptr nonnull align 8 %i.r) #26
          to label %.noexc25.i unwind label %.loopexit.split-lp.i

.noexc25.i:                                       ; preds = %.noexc24.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  %i.gj = invoke zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSRe8containsCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 @92, i64 2, ptr nonnull align 8 %i.gi) #26
          to label %_RNvMNtNtCscOzg5arm0FQ_17build_script_main5build4coreNtB2_9AsmTarget8use_nasm.exit.i19.i unwind label %bb.cp
end_hunk_0
begin_hunk_1_@_RNvCscOzg5arm0FQ_17build_script_main4main:bb.a
  %i.ij = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 %i.eh, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.gf, ptr %i.ik, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i64 %i.gg, ptr %i.il, align 8
  invoke void @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTReRSNtNtCsaL1QbXo9JQH_3std4path7PathBufBT_BT_EENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtCscOzg5arm0FQ_17build_script_main5build4core12build_c_codes1_0EB2y_(ptr %i.if, ptr %i.ig, ptr nonnull align 8 %i.v)
          to label %bb.dp unwind label %bb.dm

bb.dp:                                            ; preds = %bb.do
  %i.im = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.in = invoke { ptr, i64 } @_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.im)
          to label %bb.dq unwind label %bb.dm     ; 2 uses

bb.dq:                                            ; preds = %bb.dp
  %i.io = extractvalue { ptr, i64 } %i.in, 0
  %i.ip = extractvalue { ptr, i64 } %i.in, 1
  %i.iq = invoke { ptr, i64 } @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path6to_strCscOzg5arm0FQ_17build_script_main(ptr %i.io, i64 %i.ip)
          to label %bb.dr unwind label %bb.dm     ; 2 uses

bb.dr:                                            ; preds = %bb.dq
  %i.ir = extractvalue { ptr, i64 } %i.iq, 0
  %i.is = extractvalue { ptr, i64 } %i.iq, 1
  %i.it = invoke { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6expectCscOzg5arm0FQ_17build_script_main(ptr %i.ir, i64 %i.is, ptr nonnull @100, i64 12, ptr nonnull align 8 @120)
          to label %bb.ds unwind label %bb.dm     ; 2 uses

bb.ds:                                            ; preds = %bb.dr
  %i.iu = extractvalue { ptr, i64 } %i.it, 0
  %i.iv = extractvalue { ptr, i64 } %i.it, 1
  store ptr %i.iu, ptr %i.u, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.iv, ptr %i.iw, align 8
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.s, ptr nonnull align 8 %i.u)
          to label %bb.dt unwind label %bb.dm

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.ix = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj24_Kj1_ECsiHivYpkJ4Hu_2cc(ptr nonnull @121, ptr nonnull align 8 %i.t)
          to label %bb.du unwind label %bb.dm     ; 2 uses

bb.du:                                            ; preds = %bb.dt
  %i.iy = extractvalue { ptr, ptr } %i.ix, 0
  %i.iz = extractvalue { ptr, ptr } %i.ix, 1
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6__print(ptr %i.iy, ptr %i.iz)
          to label %bb.dv unwind label %bb.dm

bb.dv:                                            ; preds = %bb.du
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.x)
          to label %bb.dw unwind label %bb.dj

bb.dw:                                            ; preds = %bb.dv
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.z)
          to label %bb.dx unwind label %bb.de

bb.dx:                                            ; preds = %bb.dw
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.ad)
          to label %bb.dy unwind label %bb.cy

bb.dy:                                            ; preds = %bb.dx
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.ai)
          to label %bb.eb unwind label %bb.ea

bb.dz:                                            ; preds = %bb.ea, %bb.cx
  %.pn23.i.i = phi { ptr, i32 } [ %i.ja, %bb.ea ], [ %.pn21.i.i, %bb.cx ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.aj) #24
          to label %.body.i unwind label %bb.cs

bb.ea:                                            ; preds = %bb.dy
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.eb:                                            ; preds = %bb.dy
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.aj)
          to label %bb.ec unwind label %.loopexit.split-lp.i

bb.ec:                                            ; preds = %bb.eb
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvXsz_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.n, ptr nonnull @44, i64 14) #26
          to label %.noexc33.i unwind label %.loopexit.split-lp.i

.noexc33.i:                                       ; preds = %bb.ec
  %i.jb = invoke { ptr, i64 } @_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.n)
          to label %bb.ed unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc3.i.i, %bb.eh, %.lr.ph.i.i.i, %.noexc.i31.i, %_RINvNtNtCscOzg5arm0FQ_17build_script_main5build5cargo21emit_rerun_if_changedINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OnceRNtNtCsaL1QbXo9JQH_3std4path4PathEEB6_.exit.i.i, %bb.ee, %bb.ed, %.noexc33.i
  %lpad.loopexit.split-lp87 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ef
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.jo, %bb.ef ], [ %lpad.loopexit.split-lp87, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.n) #24
          to label %.body.i unwind label %bb.ej

bb.ed:                                            ; preds = %.noexc33.i
  %i.jc = extractvalue { ptr, i64 } %i.jb, 0
  %i.jd = extractvalue { ptr, i64 } %i.jb, 1
  %i.je = invoke { ptr, i64 } @_RINvNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4onceRNtNtCsaL1QbXo9JQH_3std4path4PathECscOzg5arm0FQ_17build_script_main(ptr %i.jc, i64 %i.jd)
          to label %bb.ee unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ee:                                            ; preds = %bb.ed
  %i.jf = extractvalue { ptr, i64 } %i.je, 0
  %i.jg = extractvalue { ptr, i64 } %i.je, 1
  invoke void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OnceRNtNtCsaL1QbXo9JQH_3std4path4PathENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvNtNtCscOzg5arm0FQ_17build_script_main5build5cargo21emit_rerun_if_changedB3_E0EB2g_(ptr %i.jf, i64 %i.jg) #26
          to label %_RINvNtNtCscOzg5arm0FQ_17build_script_main5build5cargo21emit_rerun_if_changedINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OnceRNtNtCsaL1QbXo9JQH_3std4path4PathEEB6_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtNtCscOzg5arm0FQ_17build_script_main5build5cargo21emit_rerun_if_changedINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OnceRNtNtCsaL1QbXo9JQH_3std4path4PathEEB6_.exit.i.i: ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.jh = invoke { ptr, ptr } @_RNvXsb_NtCs3oUPovFnLWP_4core5arrayRARej3_NtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 @14)
          to label %.noexc.i31.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc.i31.i:                                     ; preds = %_RINvNtNtCscOzg5arm0FQ_17build_script_main5build5cargo21emit_rerun_if_changedINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OnceRNtNtCsaL1QbXo9JQH_3std4path4PathEEB6_.exit.i.i
  %i.ji = extractvalue { ptr, ptr } %i.jh, 0
  %i.jj = extractvalue { ptr, ptr } %i.jh, 1
  store ptr %i.ji, ptr %i.m, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.jj, ptr %i.jk, align 8
  %i.jl = invoke align 8 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.m) #26
          to label %.noexc1.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1.i.i:                                      ; preds = %.noexc.i31.i
  %.not3.i.i.i = icmp eq ptr %i.jl, null
  br i1 %.not3.i.i.i, label %.loopexit5.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc1.i.i, %.noexc4.i.i
  %i.jm = phi ptr [ %i.jr, %.noexc4.i.i ], [ %i.jl, %.noexc1.i.i ]
  invoke void @_RNvXsz_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromRReE4fromCscOzg5arm0FQ_17build_script_main(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr nonnull align 8 %i.jm) #26
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2.i.i:                                      ; preds = %.lr.ph.i.i.i
  %i.jn = invoke { ptr, i64 } @_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.l)
          to label %bb.eg unwind label %bb.ef     ; 2 uses

bb.ef:                                            ; preds = %bb.eg, %.noexc2.i.i
  %i.jo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.l) #24
          to label %.body.i.i unwind label %bb.ei

bb.eg:                                            ; preds = %.noexc2.i.i
  %i.jp = extractvalue { ptr, i64 } %i.jn, 0
  %i.jq = extractvalue { ptr, i64 } %i.jn, 1
  store ptr %i.a, ptr %i.k, align 8
  invoke void @_RINvNtNtCscOzg5arm0FQ_17build_script_main5build4path8walk_dirNCINvNtB4_4core21walk_non_root_sourcesNCNvB6_21emit_rerun_if_changed0E0EB6_(ptr %i.jp, i64 %i.jq, ptr nonnull align 8 %i.k)
          to label %bb.eh unwind label %bb.ef

bb.eh:                                            ; preds = %bb.eg
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.l)
          to label %.noexc3.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc3.i.i:                                      ; preds = %bb.eh
  %i.jr = invoke align 8 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.m) #26
          to label %.noexc4.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc4.i.i:                                      ; preds = %.noexc3.i.i
  %.not.i.i32.i = icmp eq ptr %i.jr, null
  br i1 %.not.i.i32.i, label %.loopexit5.i.i, label %.lr.ph.i.i.i

bb.ei:                                            ; preds = %bb.ef
  %i.js = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

.loopexit5.i.i:                                   ; preds = %.noexc4.i.i, %.noexc1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.n)
          to label %bb.ek unwind label %.loopexit.split-lp.i

bb.ej:                                            ; preds = %.body.i.i
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ek:                                            ; preds = %.loopexit5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %i.ex, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.em, %bb.ek
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCscOzg5arm0FQ_17build_script_main5build6target6TargetEBH_(ptr nonnull align 8 %i.au)
          to label %_RNvCscOzg5arm0FQ_17build_script_main18ring_build_rs_main.exit unwind label %bb.bj

bb.em:                                            ; preds = %bb.ek
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.as)
          to label %bb.el unwind label %.body.thread49.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.en:                                            ; preds = %.body.i, %.loopexit.split-lp.i
  %eh.lpad-body52.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp41.i, %.loopexit.split-lp.i ], [ %eh.lpad-body.i, %.body.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.as) #24
          to label %.body.thread.i unwind label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.body.thread.i
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNvCscOzg5arm0FQ_17build_script_main18ring_build_rs_main.exit: ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.ep

bb.ep:                                            ; preds = %_RNvCscOzg5arm0FQ_17build_script_main20pregenerate_asm_main.exit, %_RNvCscOzg5arm0FQ_17build_script_main18ring_build_rs_main.exit
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.br)
          to label %bb.fw unwind label %bb.bf

bb.eq:                                            ; preds = %bb.bl
  br i1 %i.ee, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.bp, ptr nonnull align 8 @48)
          to label %bb.et unwind label %bb.bj

bb.es:                                            ; preds = %bb.eq
  %i.jv = invoke { ptr, i64 } @_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.bw)
          to label %bb.ew unwind label %bb.bj     ; 2 uses

bb.et:                                            ; preds = %bb.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false)
  %i.jw = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj1a_Kj1_ECsiHivYpkJ4Hu_2cc(ptr nonnull @51, ptr nonnull align 8 %i.bq)
          to label %bb.eu unwind label %bb.bj     ; 2 uses

bb.eu:                                            ; preds = %bb.et
  %i.jx = extractvalue { ptr, ptr } %i.jw, 0
  %i.jy = extractvalue { ptr, ptr } %i.jw, 1
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr %i.jx, ptr %i.jy, ptr nonnull align 8 @52) #29
          to label %bb.ev unwind label %bb.bj

bb.ev:                                            ; preds = %bb.eu
  unreachable

bb.ew:                                            ; preds = %bb.es
  %i.jz = invoke { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.bv)
          to label %bb.ex unwind label %bb.bj     ; 2 uses

bb.ex:                                            ; preds = %bb.ew
  %i.ka = extractvalue { ptr, i64 } %i.jv, 1      ; 3 uses
  %i.kb = extractvalue { ptr, i64 } %i.jv, 0      ; 3 uses
  %i.kc = extractvalue { ptr, i64 } %i.jz, 0
  %i.kd = extractvalue { ptr, i64 } %i.jz, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr %i.kb, i64 %i.ka, ptr nonnull @42, i64 12)
          to label %.noexc55 unwind label %bb.bj

.noexc55:                                         ; preds = %bb.ex
  %i.ke = invoke ptr @_RINvNtCsaL1QbXo9JQH_3std2fs10create_dirRNtNtB4_4path7PathBufECscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.j)
          to label %bb.ey unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.critedge.i.i39, %.noexc8.i40, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCscOzg5arm0FQ_17build_script_main.exit.thread.i.i54, %bb.fl, %bb.fj, %.noexc4.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCscOzg5arm0FQ_17build_script_main.exit.i.i23, %_RNvMNtNtCscOzg5arm0FQ_17build_script_main5build4coreNtB2_9AsmTarget3all.exit.i, %bb.fe, %bb.fd, %.noexc55
  %lpad.loopexit.split-lp92 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i18

.body.i18:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fu, %bb.fn, %bb.fg, %bb.fa
  %eh.lpad-body.i19 = phi { ptr, i32 } [ %i.kf, %bb.fa ], [ %lpad.thr_comm.i.i37, %bb.fu ], [ %i.ko, %bb.fg ], [ %.pn.i.i53, %bb.fn ], [ %lpad.loopexit.split-lp92, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.j) #24
          to label %.body16 unwind label %bb.fv

bb.ey:                                            ; preds = %.noexc55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.not.i.i20 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i20, label %bb.fd, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  store ptr %i.ke, ptr %i.i, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @54, i64 43, ptr nonnull %i.i, ptr nonnull align 8 @53, ptr nonnull align 8 @43) #29
          to label %bb.fb unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.i) #24
          to label %.body.i18 unwind label %bb.fc

bb.fb:                                            ; preds = %bb.ez
  unreachable

bb.fc:                                            ; preds = %bb.fa
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.fd:                                            ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.kh = invoke { ptr, i64 } @_RNvXsH_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.j)
          to label %bb.fe unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.fe:                                            ; preds = %bb.fd
  %i.ki = invoke { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterNtNtNtCscOzg5arm0FQ_17build_script_main5build4core9AsmTargetE3newBU_(ptr nonnull align 8 @91, i64 9) #26
          to label %_RNvMNtNtCscOzg5arm0FQ_17build_script_main5build4coreNtB2_9AsmTarget3all.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RNvMNtNtCscOzg5arm0FQ_17build_script_main5build4coreNtB2_9AsmTarget3all.exit.i: ; preds = %bb.fe
  %i.kj = extractvalue { ptr, i64 } %i.kh, 1      ; 4 uses
  %i.kk = extractvalue { ptr, i64 } %i.kh, 0      ; 4 uses
  %i.kl = extractvalue { ptr, ptr } %i.ki, 0
  %i.km = extractvalue { ptr, ptr } %i.ki, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.kn = invoke ptr @_RNvNtNtCscOzg5arm0FQ_17build_script_main5build8prefixed31generate_prefix_symbols_headers(ptr %i.kk, i64 %i.kj, ptr %i.kc, i64 %i.kd, ptr nonnull align 8 @334, i64 7, ptr nonnull align 8 @326, i64 151)
          to label %.noexc.i21 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc.i21:                                       ; preds = %_RNvMNtNtCscOzg5arm0FQ_17build_script_main5build4coreNtB2_9AsmTarget3all.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.not.i.i.i22 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i22, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCscOzg5arm0FQ_17build_script_main.exit.i.i23, label %bb.ff

bb.ff:                                            ; preds = %.noexc.i21
  store ptr %i.kn, ptr %i.c, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @54, i64 43, ptr nonnull %i.c, ptr nonnull align 8 @53, ptr nonnull align 8 @16) #29
          to label %bb.fh unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ko = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.c) #24
          to label %.body.i18 unwind label %bb.fi

bb.fh:                                            ; preds = %bb.ff
  unreachable

bb.fi:                                            ; preds = %bb.fg
  %i.kp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCscOzg5arm0FQ_17build_script_main.exit.i.i23: ; preds = %.noexc.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.kq = invoke { ptr, ptr } @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB8_5slice4iter4IterNtNtNtCscOzg5arm0FQ_17build_script_main5build4core9AsmTargetENtB2_12IntoIterator9into_iterB1h_(ptr %i.kl, ptr %i.km) #26
          to label %.noexc4.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc4.i:                                        ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCscOzg5arm0FQ_17build_script_main.exit.i.i23
  %i.kr = extractvalue { ptr, ptr } %i.kq, 0
  %i.ks = extractvalue { ptr, ptr } %i.kq, 1
  store ptr %i.kr, ptr %i.h, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ks, ptr %i.kt, align 8
  %i.ku = invoke align 8 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtCscOzg5arm0FQ_17build_script_main5build4core9AsmTargetENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_(ptr nonnull align 8 %i.h) #26
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc5.i:                                        ; preds = %.noexc4.i
  %.not29.i.i24 = icmp eq ptr %i.ku, null
  br i1 %.not29.i.i24, label %.loopexit11.i, label %.lr.ph.i.i25

.lr.ph.i.i25:                                     ; preds = %.noexc5.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i26 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx.i.i.i27 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i.i.i28 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.218.0..sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.319.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.211.0..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.sroa.312.0..sroa_idx.i.i32 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4.0..sroa_idx.i.i33 = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.sroa.415.0..sroa_idx.i.i34 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.fj

bb.fj:                                            ; preds = %.noexc9.i41, %.lr.ph.i.i25
  %i.kx = phi ptr [ %i.ku, %.lr.ph.i.i25 ], [ %i.lk, %.noexc9.i41 ] ; 5 uses
  invoke fastcc void @_RNvNtNtCscOzg5arm0FQ_17build_script_main5build4core16perlasm_src_dsts(ptr noalias align 8 %i.g, ptr %i.kk, i64 %i.kj, ptr nonnull align 8 %i.kx)
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6.i:                                        ; preds = %bb.fj
  %.val.i.i35 = load ptr, ptr %i.kv, align 8
  %.val9.i.i36 = load i64, ptr %i.kw, align 8
  invoke fastcc void @_RNvMs0_NtNtCscOzg5arm0FQ_17build_script_main5build4coreNtB5_5Tools7perlasm(ptr nonnull readonly align 8 %i.bt, ptr align 8 %.val.i.i35, i64 %.val9.i.i36, ptr nonnull align 8 %i.kx, ptr %i.kb, i64 %i.ka)
          to label %bb.fk unwind label %bb.fu

bb.fk:                                            ; preds = %.noexc6.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  %i.kz = invoke zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSRe8containsCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 @92, i64 2, ptr nonnull align 8 %i.ky) #26
          to label %_RNvMNtNtCscOzg5arm0FQ_17build_script_main5build4coreNtB2_9AsmTarget8use_nasm.exit.i.i38 unwind label %bb.fu

_RNvMNtNtCscOzg5arm0FQ_17build_script_main5build4coreNtB2_9AsmTarget8use_nasm.exit.i.i38: ; preds = %bb.fk
  br i1 %i.kz, label %bb.fl, label %.critedge.i.i39

bb.fl:                                            ; preds = %_RNvMNtNtCscOzg5arm0FQ_17build_script_main5build4coreNtB2_9AsmTarget8use_nasm.exit.i.i38
  %.sroa.0.0.copyload.i.i42 = load i64, ptr %i.g, align 8
  %.sroa.2.0.copyload.i.i43 = load ptr, ptr %i.kv, align 8 ; 3 uses
  %.sroa.3.0.copyload.i.i44 = load i64, ptr %i.kw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.la = getelementptr inbounds nuw [48 x i8], ptr %.sroa.2.0.copyload.i.i43, i64 %.sroa.3.0.copyload.i.i44
end_hunk_1
