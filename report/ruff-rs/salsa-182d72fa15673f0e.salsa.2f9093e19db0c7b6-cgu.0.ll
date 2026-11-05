Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/salsa-182d72fa15673f0e.salsa.2f9093e19db0c7b6-cgu.0?download=true
inline.NumInlined: 4220
inline.NumDeleted: 1923
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query:bb.a
  br i1 %i.bt, label %bb.x, label %_RNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0B9_.exit.i.i

bb.x:                                             ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !135, !invariant.load !117, !noalias !7735
  %i.ca = add nsw i64 %i.bz, -1
  %i.cb = and i64 %i.ca, -16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  br label %_RNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0B9_.exit.i.i

_RNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0B9_.exit.i.i: ; preds = %bb.x, %bb.w
  %.sroa.0.0.i.i.i = phi ptr [ %i.cd, %bb.x ], [ %i.bv, %bb.w ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !invariant.load !117, !noalias !7735, !nonnull !117
  %i.cg = invoke noundef zeroext i1 %i.cf(ptr noundef nonnull %.sroa.0.0.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn)
          to label %.noexc26 unwind label %.loopexit.split-lp, !inline_history !7669

.noexc26:                                         ; preds = %_RNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0B9_.exit.i.i
  br i1 %i.cg, label %bb.ao, label %.noexc34

bb.y:                                             ; preds = %bb.v
  %i.ch = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 10 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 8, !range !126, !noalias !7733, !noundef !117
  switch i8 %i.cj, label %default.unreachable [
    i8 0, label %bb.z
    i8 1, label %bb.aa
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0E0bEB2o_.exit.thread.i.i
  ], !prof !136

default.unreachable:                              ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.ch, ptr noundef nonnull @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eager7destroyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateECs45bxiIjzMqg_5salsa)
          to label %.noexc27 unwind label %.loopexit.split-lp

.noexc27:                                         ; preds = %bb.z
  store i8 1, ptr %i.ci, align 8, !noalias !7733
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc27, %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 32 ; 4 uses
  %i.cl = load i8, ptr %i.ck, align 8, !range !137, !noalias !7733, !noundef !117
  %i.cm = trunc nuw i8 %i.cl to i1
  store i8 0, ptr %i.ck, align 8, !noalias !7733
  br i1 %i.cm, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !7736)
  %i.cn = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !130, !alias.scope !7736, !noalias !7733, !noundef !117
  %i.co = trunc nuw i64 %i.cn to i1
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !7736, !noalias !7733, !nonnull !117, !noundef !117 ; 2 uses
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !7736, !noalias !7733, !nonnull !117, !align !134, !noundef !117 ; 2 uses
  br i1 %i.co, label %bb.ac, label %_RNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0B9_.exit.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !range !135, !invariant.load !117, !noalias !7737
  %i.ct = add nsw i64 %i.cs, -1
  %i.cu = and i64 %i.ct, -16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  br label %_RNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0B9_.exit.i.i.i.i

_RNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0B9_.exit.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.sroa.0.0.i.i6.i.i.i = phi ptr [ %i.cw, %bb.ac ], [ %i.cp, %bb.ab ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8, !invariant.load !117, !noalias !7737, !nonnull !117
  %i.cz = invoke noundef zeroext i1 %i.cy(ptr noundef nonnull %.sroa.0.0.i.i6.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn)
          to label %.noexc28 unwind label %.loopexit.split-lp, !inline_history !7669

.noexc28:                                         ; preds = %_RNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0B9_.exit.i.i.i.i
  br i1 %i.cz, label %bb.ao, label %.noexc34

bb.ad:                                            ; preds = %bb.aa
  %i.da = load i64, ptr %i.ch, align 8, !noalias !7733, !noundef !117 ; 2 uses
  %i.db = icmp ult i64 %i.da, 9223372036854775807
  br i1 %i.db, label %bb.ag, label %bb.ae, !prof !119

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #60
          to label %.noexc.i.i.i.i unwind label %bb.af, !noalias !7738

.noexc.i.i.i.i:                                   ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ag:                                            ; preds = %bb.ad
  %i.dd = add nuw nsw i64 %i.da, 1
  store i64 %i.dd, ptr %i.ch, align 8, !noalias !7733
  %i.de = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7739)
  %i.df = load i64, ptr %i.de, align 8, !range !138, !alias.scope !7739, !noalias !7733, !noundef !117 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.df, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dg = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !7740
  %i.dh = icmp eq i64 %i.dg, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i.i.i = select i1 %i.dh, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i.i.i, align 8, !range !130, !alias.scope !7741, !noalias !7733
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.di = phi i64 [ %i.df, %bb.ag ], [ %.pre.i.i.i.i, %bb.ah ]
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.de, %bb.ag ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i.i.i, %bb.ah ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7741)
  %i.dj = trunc nuw i64 %i.di to i1
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !7741, !noalias !7733, !nonnull !117, !noundef !117 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !7741, !noalias !7733, !nonnull !117, !align !134, !noundef !117 ; 2 uses
  br i1 %i.dj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !range !135, !invariant.load !117, !noalias !7742
  %i.dq = add nsw i64 %i.dp, -1
  %i.dr = and i64 %i.dq, -16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.0.0.i9.i.i.i.i = phi ptr [ %i.dt, %bb.aj ], [ %i.dl, %bb.ai ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !invariant.load !117, !noalias !7742, !nonnull !117
  %i.dw = invoke noundef zeroext i1 %i.dv(ptr noundef nonnull %.sroa.0.0.i9.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn)
          to label %.split.i unwind label %bb.al, !noalias !7738, !inline_history !7676

bb.al:                                            ; preds = %bb.ak
  %i.dx = landingpad { ptr, i32 }
          cleanup
  %i.dy = load i64, ptr %i.ch, align 8, !noalias !7733, !noundef !117
  %i.dz = add i64 %i.dy, -1
  store i64 %i.dz, ptr %i.ch, align 8, !noalias !7733
  br label %bb.am

.split.i:                                         ; preds = %bb.ak
  %i.ea = load i64, ptr %i.ch, align 8, !noalias !7733, !noundef !117
  %i.eb = add i64 %i.ea, -1
  store i64 %i.eb, ptr %i.ch, align 8, !noalias !7733
  store i8 1, ptr %i.ck, align 8, !noalias !7733
  br i1 %i.dw, label %bb.ao, label %.noexc34

bb.am:                                            ; preds = %bb.al, %bb.af
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.dc, %bb.af ], [ %i.dx, %bb.al ]
  store i8 1, ptr %i.ck, align 8, !noalias !7733
  br label %.body23

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0E0bEB2o_.exit.thread.i.i: ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !7743)
  %i.ec = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !130, !alias.scope !7743, !noalias !7733, !noundef !117
  %i.ed = trunc nuw i64 %i.ec to i1
  %i.ee = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !7743, !noalias !7733, !nonnull !117, !noundef !117 ; 2 uses
  %i.ef = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !7743, !noalias !7733, !nonnull !117, !align !134, !noundef !117 ; 2 uses
  br i1 %i.ed, label %bb.an, label %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0EB16_.exit.i

bb.an:                                            ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0E0bEB2o_.exit.thread.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !range !135, !invariant.load !117, !noalias !7744
  %i.ei = add nsw i64 %i.eh, -1
  %i.ej = and i64 %i.ei, -16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  br label %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0EB16_.exit.i

_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0EB16_.exit.i: ; preds = %bb.an, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0E0bEB2o_.exit.thread.i.i
  %.sroa.0.0.i8.i.i = phi ptr [ %i.el, %bb.an ], [ %i.ee, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0E0bEB2o_.exit.thread.i.i ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.en = load ptr, ptr %i.em, align 8, !invariant.load !117, !noalias !7744, !nonnull !117
  %i.eo = invoke noundef zeroext i1 %i.en(ptr noundef nonnull %.sroa.0.0.i8.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn)
          to label %.noexc32 unwind label %.loopexit.split-lp, !inline_history !7669

.noexc32:                                         ; preds = %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0EB16_.exit.i
  br i1 %i.eo, label %bb.ao, label %.noexc34

.noexc34:                                         ; preds = %bb.ao, %.noexc32, %.split.i, %.noexc28, %.noexc26, %.noexc25, %.noexc, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7732
  store ptr %i.k, ptr %i.b, align 8, !noalias !7732
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs_NtCs45bxiIjzMqg_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !7732
  br label %.thread.invoke

bb.ao:                                            ; preds = %.noexc32, %.split.i, %.noexc28, %.noexc26
  invoke fastcc void @_RNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query00B9_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc34 unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %.noexc46, %bb.bf, %bb.bh, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.thread.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body23

.loopexit.split-lp:                               ; preds = %.thread.invoke, %bb.q, %bb.t, %bb.u, %_RNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0B9_.exit.i.i, %bb.z, %_RNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0B9_.exit.i.i.i.i, %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0EB16_.exit.i, %bb.ao, %bb.bg, %5
  %.sroa.07.2.ph = phi i1 [ true, %5 ], [ false, %bb.q ], [ true, %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0EB16_.exit.i ], [ true, %_RNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0B9_.exit.i.i.i.i ], [ true, %bb.z ], [ true, %_RNCNCNvNtNtCs45bxiIjzMqg_5salsa8function7execute18try_complete_query0s_0B9_.exit.i.i ], [ true, %bb.u ], [ true, %bb.t ], [ true, %bb.bg ], [ true, %.thread.invoke ], [ true, %bb.ao ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body23

.body23:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.am, %bb.bc, %bb.k, %bb.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtB1c_5cycle14IterationStampEEEB1c_.exit.i.i.i
  %.sroa.07.2.lpad-body = phi i1 [ true, %bb.k ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtB1c_5cycle14IterationStampEEEB1c_.exit.i.i.i ], [ true, %bb.o ], [ true, %bb.am ], [ true, %bb.bc ], [ true, %.loopexit ], [ %.sroa.07.2.ph, %.loopexit.split-lp ]
  %eh.lpad-body24 = phi { ptr, i32 } [ %i.at, %bb.k ], [ %i.bb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtB1c_5cycle14IterationStampEEEB1c_.exit.i.i.i ], [ %i.bb, %bb.o ], [ %.pn.i.i.i.i, %bb.am ], [ %i.gl, %bb.bc ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ep = load ptr, ptr %i.j, align 8, !alias.scope !7745, !nonnull !117, !noundef !117
  %i.eq = icmp eq ptr %i.ep, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.eq, label %.noexc35, label %bb.ap, !prof !119

bb.ap:                                            ; preds = %.body23
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadEBN_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.j)
          to label %.noexc35 unwind label %bb.bl

bb.aq:                                            ; preds = %bb.q
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.er, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  store i16 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.es = icmp eq i64 %.sroa.0.0.copyload.i.i.i, ptrtoint (ptr @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER to i64)
  br i1 %i.es, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsEBF_.exit37, label %bb.ar, !prof !119

bb.ar:                                            ; preds = %bb.aq
  call void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadEBN_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsEBF_.exit37

bb.as:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtB1c_5cycle14IterationStampEEEB1c_.exit.i.i4.i.i, %_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7726
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.eu = load ptr, ptr %i.et, align 8, !nonnull !117, !align !134, !noundef !117 ; 4 uses
  %.sroa.061.0.copyload = load i32, ptr %i.k, align 4 ; 3 uses
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.462.0.copyload = load i32, ptr %.sroa.462.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.val = load ptr, ptr %i.j, align 8             ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 6 uses
  %i.ew = load i64, ptr %i.ev, align 8, !noalias !7746, !noundef !117 ; 4 uses
  %i.ex = icmp ult i64 %i.ew, 9223372036854775807
  call void @llvm.assume(i1 %i.ex)
  %i.ey = add nuw nsw i64 %i.ew, 1
  store i64 %i.ey, ptr %i.ev, align 8, !noalias !7746
  call void @llvm.experimental.noalias.scope.decl(metadata !7747)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !7747, !noalias !7748, !noundef !117 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !7747, !noalias !7748, !noundef !117 ; 2 uses
  %.not.i.i38 = icmp ugt i64 %i.fa, %i.fc
  %i.fd = ptrtoint ptr %.val to i64               ; 2 uses
  br i1 %.not.i.i38, label %bb.at, label %bb.au, !prof !148

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fa, i64 noundef %i.fc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #60
          to label %.noexc.i40 unwind label %bb.bc, !noalias !7748

.noexc.i40:                                       ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !7747, !noalias !7748, !nonnull !117, !noundef !117 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.fa, 152
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx.i.i
  %i.fh = icmp eq i64 %i.fa, 0
  br i1 %i.fh, label %.loopexit149, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.au
  %i.fi = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.i.i.i, %.lr.ph.i.i.i
  %i.fj = phi ptr [ %i.ff, %.lr.ph.i.i.i ], [ %i.fk, %.loopexit.i.i.i ] ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 152 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 140
  %i.fm = load i32, ptr %i.fl, align 4, !noalias !7749, !noundef !117 ; 2 uses
  %i.fn = icmp eq i32 %i.fm, %.sroa.462.0.copyload
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 136 ; 2 uses
  br i1 %i.fn, label %bb.aw, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.av
  %.pre.i.i.i.i39 = load i32, ptr %i.fo, align 4, !alias.scope !7750, !noalias !7749
  br label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.fp = load i32, ptr %i.fo, align 8, !range !122, !noalias !7749, !noundef !117 ; 2 uses
  %i.fq = icmp eq i32 %i.fp, %.sroa.061.0.copyload
  br i1 %i.fq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 144
  %i.fs = load i32, ptr %i.fr, align 8, !noalias !7749, !noundef !117
  %.not.i.i.i.i = icmp eq i32 %i.fs, %.sroa.5.0.copyload
  br i1 %.not.i.i.i.i, label %.loopexit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %._crit_edge.i.i.i.i
  %.sroa.0.0.copyload53 = phi i32 [ %.pre.i.i.i.i39, %._crit_edge.i.i.i.i ], [ %i.fp, %bb.aw ], [ %.sroa.061.0.copyload, %bb.ax ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7751)
  %i.ft = load i64, ptr %.val, align 8, !noalias !7752, !noundef !117
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %i.ft
  call void @llvm.experimental.noalias.scope.decl(metadata !7753)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fj, i64 144
  %i.fw = load i32, ptr %i.fv, align 4, !alias.scope !7750, !noalias !7749
  br label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %.backedge.i.i.i.i.i.i.backedge, %bb.ay
  %i.fx = phi ptr [ %i.fi, %bb.ay ], [ %i.fy, %.backedge.i.i.i.i.i.i.backedge ] ; 6 uses
  %.not.not.not.i.not.not.not.i.not.i.i.i.i = icmp eq ptr %i.fx, %i.fu
  br i1 %.not.not.not.i.not.not.not.i.not.i.i.i.i, label %.loopexit.i.i.i, label %bb.az

bb.az:                                            ; preds = %.backedge.i.i.i.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 14
  %i.ga = load atomic i8, ptr %i.fz monotonic, align 1, !noalias !7754
  %i.gb = icmp eq i8 %i.ga, 0
  br i1 %i.gb, label %bb.ba, label %.backedge.i.i.i.i.i.i.backedge

.backedge.i.i.i.i.i.i.backedge:                   ; preds = %bb.az, %.split.i.i.i.i.i.i, %bb.bb, %bb.ba
  br label %.backedge.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !noalias !7755, !noundef !117
  %i.ge = icmp eq i32 %i.gd, %i.fm
  br i1 %i.ge, label %bb.bb, label %.backedge.i.i.i.i.i.i.backedge

bb.bb:                                            ; preds = %bb.ba
  %i.gf = load i32, ptr %i.fx, align 4, !range !122, !noalias !7755, !noundef !117
  %i.gg = icmp eq i32 %i.gf, %.sroa.0.0.copyload53
  br i1 %i.gg, label %.split.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i.backedge

.split.i.i.i.i.i.i:                               ; preds = %bb.bb
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.gi = load i32, ptr %i.gh, align 4, !noalias !7755, !noundef !117
  %i.gj = icmp eq i32 %i.gi, %i.fw
  br i1 %i.gj, label %_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.i, label %.backedge.i.i.i.i.i.i.backedge

.loopexit.i.i.i:                                  ; preds = %.backedge.i.i.i.i.i.i, %bb.ax
  %i.gk = icmp eq ptr %i.fk, %i.fg
  br i1 %i.gk, label %.loopexit149, label %bb.av

bb.bc:                                            ; preds = %bb.at
  %i.gl = landingpad { ptr, i32 }
          cleanup
  %i.gm = load i64, ptr %i.ev, align 8, !noalias !7748, !noundef !117
  %i.gn = add i64 %i.gm, -1
  store i64 %i.gn, ptr %i.ev, align 8, !noalias !7748
  br label %.body23

_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.i: ; preds = %.split.i.i.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.fj, i64 140
  %.sroa.11.0.copyload58 = load i64, ptr %i.go, align 4, !noalias !7756
  store i64 %i.ew, ptr %i.ev, align 8, !noalias !7748
  br label %_RNvNtNtCs45bxiIjzMqg_5salsa8function7execute11outer_cycle.exit

.loopexit149:                                     ; preds = %.loopexit.i.i.i, %bb.au
  store i64 %i.ew, ptr %i.ev, align 8, !noalias !7748
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.gp = load i64, ptr %.val, align 8, !noalias !7757, !noundef !117
  %.idx6.i = shl nuw nsw i64 %i.gp, 4
  %.add7.i = add nuw nsw i64 %.idx6.i, 16
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i.backedge, %.loopexit149
  %.idx.i = phi i64 [ %.add7.i, %.loopexit149 ], [ %.add.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i.backedge ] ; 3 uses
  %i.gu = icmp eq i64 %.idx.i, 16
  br i1 %i.gu, label %_RNvNtNtCs45bxiIjzMqg_5salsa8function7execute11outer_cycle.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i
  %.ptr.i = getelementptr inbounds i8, ptr %.val, i64 %.idx.i ; 4 uses
  %.add.i = add nsw i64 %.idx.i, -16              ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %.ptr.i, i64 -2
  %i.gw = load atomic i8, ptr %i.gv monotonic, align 1, !noalias !7758
  %i.gx = icmp eq i8 %i.gw, 0
  br i1 %i.gx, label %_RNvXs8_NtCs45bxiIjzMqg_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back.exit.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i.backedge

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i.backedge: ; preds = %bb.bd, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.i.i, %.noexc48.a, %_RNCNvMs4_NtCs45bxiIjzMqg_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.i.i.i
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i

_RNvXs8_NtCs45bxiIjzMqg_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back.exit.i.i: ; preds = %bb.bd
  %.ptr9.le.i = getelementptr inbounds i8, ptr %.val, i64 %.add.i ; 4 uses
  %i.gy = getelementptr inbounds i8, ptr %.ptr.i, i64 -12 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !noalias !7759, !noundef !117
  %i.ha = icmp eq i32 %i.gz, %.sroa.462.0.copyload
  br i1 %i.ha, label %bb.be, label %_RNCNvMs4_NtCs45bxiIjzMqg_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.thread.i.i.i

bb.be:                                            ; preds = %_RNvXs8_NtCs45bxiIjzMqg_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back.exit.i.i
  %i.hb = load i32, ptr %.ptr9.le.i, align 4, !range !122, !noalias !7759, !noundef !117
  %i.hc = icmp eq i32 %i.hb, %.sroa.061.0.copyload
  br i1 %i.hc, label %_RNCNvMs4_NtCs45bxiIjzMqg_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.i.i.i, label %_RNCNvMs4_NtCs45bxiIjzMqg_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.thread.i.i.i

_RNCNvMs4_NtCs45bxiIjzMqg_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.i.i.i: ; preds = %bb.be
  %i.hd = getelementptr inbounds i8, ptr %.ptr.i, i64 -8
  %i.he = load i32, ptr %i.hd, align 4, !noalias !7759, !noundef !117
  %.not.i.i.i = icmp eq i32 %i.he, %.sroa.5.0.copyload
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i.backedge, label %_RNCNvMs4_NtCs45bxiIjzMqg_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.thread.i.i.i

_RNCNvMs4_NtCs45bxiIjzMqg_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.thread.i.i.i: ; preds = %_RNCNvMs4_NtCs45bxiIjzMqg_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.i.i.i, %bb.be, %_RNvXs8_NtCs45bxiIjzMqg_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back.exit.i.i
  %i.hf = getelementptr inbounds i8, ptr %.ptr.i, i64 -8
  %i.hg = load i32, ptr %i.hf, align 4, !noalias !7760, !noundef !117
  %i.hh = zext i32 %i.hg to i64                   ; 3 uses
  %i.hi = load i64, ptr %i.gq, align 8, !noalias !7760, !noundef !117 ; 2 uses
  %i.hj = icmp ugt i64 %i.hi, %i.hh
  br i1 %i.hj, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_RNCNvMs4_NtCs45bxiIjzMqg_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.thread.i.i.i
  %i.hk = load ptr, ptr %i.gr, align 8, !noalias !7760, !nonnull !117, !noundef !117
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %i.hh ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !noalias !7760, !nonnull !117, !noundef !117
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !noalias !7760, !nonnull !117, !align !134, !noundef !117
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 88
  %i.hq = load ptr, ptr %i.hp, align 8, !invariant.load !117, !noalias !7760, !nonnull !117
  %i.hr = invoke { ptr, ptr } %i.hq(ptr noundef nonnull %i.hm)
          to label %.noexc44 unwind label %.loopexit, !inline_history !7720 ; 2 uses

.noexc44:                                         ; preds = %bb.bf
  %i.hs = extractvalue { ptr, ptr } %i.hr, 0      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i.i.i, label %5, label %bb.bh, !prof !118

bb.bg:                                            ; preds = %_RNCNvMs4_NtCs45bxiIjzMqg_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.thread.i.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hh, i64 noundef %i.hi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #60
          to label %.noexc45 unwind label %.loopexit.split-lp

.noexc45:                                         ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc44
  %i.ht = extractvalue { ptr, ptr } %i.hr, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7760
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ht) ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hv = load ptr, ptr %i.hu, align 8, !invariant.load !117, !noalias !7760, !nonnull !117
  %i.hw = invoke noundef nonnull align 8 ptr %i.hv(ptr noundef nonnull %i.hs)
          to label %.noexc46 unwind label %.loopexit, !inline_history !7720

.noexc46:                                         ; preds = %bb.bh
  %i.hx = load i32, ptr %.ptr9.le.i, align 4, !range !122, !noalias !7760, !noundef !117
  %i.hy = load i32, ptr %i.gy, align 4, !noalias !7760, !noundef !117
  invoke fastcc void @_RNvMNtNtCs45bxiIjzMqg_5salsa8function4syncNtB2_9SyncTable10peek_claim(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noundef nonnull align 8 %i.hw, ptr noundef nonnull align 8 %1, i32 noundef %i.hx, i32 noundef %i.hy)
          to label %.noexc47 unwind label %.loopexit

.noexc47:                                         ; preds = %.noexc46
  %i.hz = load i8, ptr %i.a, align 8, !range !126, !noalias !7760, !noundef !117
  switch i8 %i.hz, label %.noexc48.a [
    i8 2, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.i.i
    i8 1, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.thread.i.i
  ]

5:                                                ; preds = %.noexc44
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #60
          to label %.noexc48 unwind label %.loopexit.split-lp

.noexc48:                                         ; preds = %5
  unreachable

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.thread.i.i: ; preds = %.noexc47
  %.val7.i.i.i.i.i = load ptr, ptr %i.gs, align 8, !noalias !7760, !nonnull !117, !noundef !117
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa7runtime7RunningEBF_(ptr nonnull %.val7.i.i.i.i.i)
          to label %.noexc48.a unwind label %.loopexit

.noexc48.a:                                       ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.thread.i.i, %.noexc47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7760
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i.backedge

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.i.i: ; preds = %.noexc47
  %i.ia = load i8, ptr %i.gt, align 1, !range !137, !noalias !7760, !noundef !117
  %i.ib = trunc nuw i8 %i.ia to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7760
  br i1 %i.ib, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i.backedge, label %_RINvYNtNtCs45bxiIjzMqg_5salsa5cycle18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtBX_8adapters6filter15filter_try_foldRNtB5_9CycleHeaduINtNtNtBZ_3ops12control_flow11ControlFlowB2X_ENCNvMs4_B5_NtB5_10CycleHeads11iter_not_eq0NCINvNvBR_5rfind5checkB2X_NCNvNtNtB7_8function7execute11outer_cycles_0E0E0B3e_EB7_.exit.i

_RINvYNtNtCs45bxiIjzMqg_5salsa5cycle18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtBX_8adapters6filter15filter_try_foldRNtB5_9CycleHeaduINtNtNtBZ_3ops12control_flow11ControlFlowB2X_ENCNvMs4_B5_NtB5_10CycleHeads11iter_not_eq0NCINvNvBR_5rfind5checkB2X_NCNvNtNtB7_8function7execute11outer_cycles_0E0E0B3e_EB7_.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.i.i
  %.sroa.0.0.copyload54 = load i32, ptr %.ptr9.le.i, align 4, !noalias !7761
  %.sroa.11.0..ptr9.le.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.ptr9.le.i, i64 4
  %.sroa.11.0.copyload59 = load i64, ptr %.sroa.11.0..ptr9.le.i.sroa_idx, align 4, !noalias !7761
  br label %_RNvNtNtCs45bxiIjzMqg_5salsa8function7execute11outer_cycle.exit

_RNvNtNtCs45bxiIjzMqg_5salsa8function7execute11outer_cycle.exit: ; preds = %_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.i, %_RINvYNtNtCs45bxiIjzMqg_5salsa5cycle18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtBX_8adapters6filter15filter_try_foldRNtB5_9CycleHeaduINtNtNtBZ_3ops12control_flow11ControlFlowB2X_ENCNvMs4_B5_NtB5_10CycleHeads11iter_not_eq0NCINvNvBR_5rfind5checkB2X_NCNvNtNtB7_8function7execute11outer_cycles_0E0E0B3e_EB7_.exit.i
  %.sroa.11.1 = phi i64 [ %.sroa.11.0.copyload58, %_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.i ], [ %.sroa.11.0.copyload59, %_RINvYNtNtCs45bxiIjzMqg_5salsa5cycle18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtBX_8adapters6filter15filter_try_foldRNtB5_9CycleHeaduINtNtNtBZ_3ops12control_flow11ControlFlowB2X_ENCNvMs4_B5_NtB5_10CycleHeads11iter_not_eq0NCINvNvBR_5rfind5checkB2X_NCNvNtNtB7_8function7execute11outer_cycles_0E0E0B3e_EB7_.exit.i ] ; 2 uses
  %.sroa.0.063 = phi i32 [ %.sroa.0.0.copyload53, %_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.i ], [ %.sroa.0.0.copyload54, %_RINvYNtNtCs45bxiIjzMqg_5salsa5cycle18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtBX_8adapters6filter15filter_try_foldRNtB5_9CycleHeaduINtNtNtBZ_3ops12control_flow11ControlFlowB2X_ENCNvMs4_B5_NtB5_10CycleHeads11iter_not_eq0NCINvNvBR_5rfind5checkB2X_NCNvNtNtB7_8function7execute11outer_cycles_0E0E0B3e_EB7_.exit.i ]
  %.sroa.0.063.fr = freeze i32 %.sroa.0.063       ; 3 uses
  %.not21 = icmp eq i32 %.sroa.0.063.fr, 0        ; 2 uses
  br i1 %.sroa.02.0.i, label %bb.bj, label %bb.bi

_RNvNtNtCs45bxiIjzMqg_5salsa8function7execute11outer_cycle.exit.thread: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i
  br i1 %.sroa.02.0.i, label %.thread77, label %.thread

bb.bi:                                            ; preds = %_RNvNtNtCs45bxiIjzMqg_5salsa8function7execute11outer_cycle.exit
  br i1 %.not21, label %.thread, label %bb.bk, !prof !127

bb.bj:                                            ; preds = %_RNvNtNtCs45bxiIjzMqg_5salsa8function7execute11outer_cycle.exit
  %spec.select = select i1 %.not21, i16 %.sroa.0.0.i, i16 %4
  br label %.thread77

.thread77:                                        ; preds = %bb.bj, %_RNvNtNtCs45bxiIjzMqg_5salsa8function7execute11outer_cycle.exit.thread
  %.sroa.11.17084 = phi i64 [ %.sroa.11.1, %bb.bj ], [ undef, %_RNvNtNtCs45bxiIjzMqg_5salsa8function7execute11outer_cycle.exit.thread ]
  %.sroa.0.0637282 = phi i32 [ %.sroa.0.063.fr, %bb.bj ], [ 0, %_RNvNtNtCs45bxiIjzMqg_5salsa8function7execute11outer_cycle.exit.thread ]
  %i.ic = phi i16 [ %spec.select, %bb.bj ], [ %.sroa.0.0.i, %_RNvNtNtCs45bxiIjzMqg_5salsa8function7execute11outer_cycle.exit.thread ]
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.id, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.fd, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.0637282, ptr %i.if, align 4
  %.sroa.11.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.11.17084, ptr %.sroa.11.0..sroa_idx55, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.ic, ptr %i.ig, align 2
  store i16 2, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsEBF_.exit37

bb.bk:                                            ; preds = %bb.bi
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ih, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.fd, ptr %i.ii, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.063.fr, ptr %i.ij, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.11.1, ptr %.sroa.4.0..sroa_idx, align 8
  store i16 1, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsEBF_.exit37

.thread:                                          ; preds = %_RNvNtNtCs45bxiIjzMqg_5salsa8function7execute11outer_cycle.exit.thread, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.k, ptr %i.h, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs_NtCs45bxiIjzMqg_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.j, ptr %i.ik, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXsz_NtCs45bxiIjzMqg_5salsa5cycleNtB5_10CycleHeadsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  br label %.thread.invoke

.thread.invoke:                                   ; preds = %.noexc34, %.thread
  %i.il = phi ptr [ @219, %.thread ], [ @67, %.noexc34 ]
  %i.im = phi ptr [ %i.h, %.thread ], [ %i.b, %.noexc34 ]
  %i.in = phi ptr [ @220, %.thread ], [ @90, %.noexc34 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull %i.il, ptr noundef nonnull %i.im, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.in) #60
          to label %.thread.cont unwind label %.loopexit.split-lp

.thread.cont:                                     ; preds = %.thread.invoke
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsEBF_.exit37: ; preds = %bb.bk, %bb.aq, %bb.ar, %.thread77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.bl:                                            ; preds = %bb.bm, %bb.ap
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #62
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa11zalsa_local16ActiveQueryGuardEBF_.exit: ; preds = %bb.bm, %.noexc35
  %.pn64 = phi { ptr, i32 } [ %.pn65, %bb.bm ], [ %eh.lpad-body24, %.noexc35 ]
  resume { ptr, i32 } %.pn64

bb.bm:                                            ; preds = %.body.thread, %.noexc35
  %.pn65 = phi { ptr, i32 } [ %i.u, %.body.thread ], [ %eh.lpad-body24, %.noexc35 ]
  invoke void @_RNvXsv_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_16ActiveQueryGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa11zalsa_local16ActiveQueryGuardEBF_.exit unwind label %bb.bl
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs45bxiIjzMqg_5salsa8function7execute20complete_cycle_query(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, i16 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !7843 {
bb.a:
  %i.a = alloca [13 x i8], align 1                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %i.d = alloca [12 x i8], align 4                ; 7 uses
  %.sroa.962 = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.12 = alloca [16 x i8], align 8           ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 12 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [80 x i8], align 8                ; 4 uses
  %i.j = alloca [80 x i8], align 8                ; 11 uses
  %.sroa.7 = alloca [32 x i8], align 8            ; 5 uses
  %.sroa.8 = alloca [32 x i8], align 8            ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 13 uses
  %i.l = alloca [56 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs45bxiIjzMqg_5salsa8function7execute12FLATTEN_MAPS0023___RUST_STD_INTERNAL_VAL) ; 15 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 4 uses
  %i.o = load i8, ptr %i.n, align 8, !range !126, !noalias !7844, !noundef !117
  switch i8 %i.o, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionTINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeINtNtBZ_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtNtNtBa_11collections4hash3set7HashSetNtNtB2y_3key16DatabaseKeyIndexB3f_EEEEE8try_withNvMsa_BX_BU_4takeB1s_EB2y_.exit.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionTINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeINtNtBZ_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtNtNtBa_11collections4hash3set7HashSetNtNtB2y_3key16DatabaseKeyIndexB3f_EEEEE8try_withNvMsa_BX_BU_4takeB1s_EB2y_.exit.thread.i
  ], !prof !136

default.unreachable:                              ; preds = %bb.af, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.m, ptr noundef nonnull @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eager7destroyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1a_6option6OptionTINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeINtNtB1a_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtNtNtBa_11collections4hash3set7HashSetNtNtB2K_3key16DatabaseKeyIndexB3r_EEEEEB2K_)
          to label %.noexc unwind label %bb.av

.noexc:                                           ; preds = %bb.b
  store i8 1, ptr %i.n, align 8, !noalias !7844
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionTINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeINtNtBZ_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtNtNtBa_11collections4hash3set7HashSetNtNtB2y_3key16DatabaseKeyIndexB3f_EEEEE8try_withNvMsa_BX_BU_4takeB1s_EB2y_.exit.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionTINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeINtNtBZ_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtNtNtBa_11collections4hash3set7HashSetNtNtB2y_3key16DatabaseKeyIndexB3f_EEEEE8try_withNvMsa_BX_BU_4takeB1s_EB2y_.exit.i: ; preds = %.noexc, %bb.a
  %.sroa.0.0.copyload1.i = load i64, ptr %i.m, align 8, !noalias !7845 ; 3 uses
  store i64 -1, ptr %i.m, align 8, !noalias !7846
  %i.p = icmp eq i64 %.sroa.0.0.copyload1.i, -2
  br i1 %i.p, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionTINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeINtNtBZ_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtNtNtBa_11collections4hash3set7HashSetNtNtB2y_3key16DatabaseKeyIndexB3f_EEEEE8try_withNvMsa_BX_BU_4takeB1s_EB2y_.exit.thread.i, label %bb.c, !prof !127

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionTINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeINtNtBZ_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtNtNtBa_11collections4hash3set7HashSetNtNtB2y_3key16DatabaseKeyIndexB3f_EEEEE8try_withNvMsa_BX_BU_4takeB1s_EB2y_.exit.thread.i: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionTINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeINtNtBZ_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtNtNtBa_11collections4hash3set7HashSetNtNtB2y_3key16DatabaseKeyIndexB3f_EEEEE8try_withNvMsa_BX_BU_4takeB1s_EB2y_.exit.i, %bb.a
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #60
          to label %.noexc12 unwind label %bb.av

.noexc12:                                         ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionTINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeINtNtBZ_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtNtNtBa_11collections4hash3set7HashSetNtNtB2y_3key16DatabaseKeyIndexB3f_EEEEE8try_withNvMsa_BX_BU_4takeB1s_EB2y_.exit.thread.i
  unreachable

bb.c:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionTINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeINtNtBZ_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtNtNtBa_11collections4hash3set7HashSetNtNtB2y_3key16DatabaseKeyIndexB3f_EEEEE8try_withNvMsa_BX_BU_4takeB1s_EB2y_.exit.i
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %.sroa.737.8..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.838.8..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %.sroa.9.8..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 3 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload1.i, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.737.8.copyload = load i64, ptr %.sroa.737.8..sroa.6.0..sroa_idx2.i.sroa_idx, align 8
  %.sroa.536.8.copyload = load ptr, ptr %.sroa.6.0..sroa_idx2.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.838.8..sroa.6.0..sroa_idx2.i.sroa_idx, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.8..sroa.6.0..sroa_idx2.i.sroa_idx, i64 32, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) @9, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(32) @9, i64 32, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.6.0 = phi i64 [ 0, %bb.e ], [ %.sroa.737.8.copyload, %bb.d ]
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.e ], [ %.sroa.536.8.copyload, %bb.d ]
  %.sroa.0.0 = phi i64 [ 0, %bb.e ], [ %.sroa.0.0.copyload1.i, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.0.0, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx29, align 8
  %.sroa.6.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx31, align 8
  %.sroa.7.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx33, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7848)
  %i.q = load ptr, ptr %2, align 8, !alias.scope !7848, !nonnull !117, !align !134, !noundef !117 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 5 uses
  store i64 -1, ptr %i.r, align 8, !noalias !7849
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7850)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !7850, !noalias !7851, !noundef !117 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !7850, !noalias !7851, !nonnull !117, !noundef !117
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !7850, !noalias !7851, !noundef !117 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.t, %i.x
  br i1 %.not.i.i, label %bb.g, label %bb.h, !prof !148
end_hunk_0
