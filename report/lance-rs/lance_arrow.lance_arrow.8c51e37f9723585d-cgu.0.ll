Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_arrow.lance_arrow.8c51e37f9723585d-cgu.0?download=true
inline.NumInlined: 3904
inline.NumDeleted: 1641
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvCsc2V0exE7CWf_11lance_arrow17merge_with_schema:bb.a

bb.bj:                                            ; preds = %bb.ao
  %i.li = icmp ult i64 %.sroa.3.0.i, %i.cz
  br i1 %i.li, label %bb.bn, label %.invoke1904

bb.bk:                                            ; preds = %bb.ao
  %i.lj = icmp ult i64 %.sroa.3.0.i, %i.cz
  br i1 %i.lj, label %bb.ef, label %.invoke1904

bb.bl:                                            ; preds = %bb.ao
  %i.lk = icmp ult i64 %.sroa.3.0.i, %i.cz
  br i1 %i.lk, label %bb.fv, label %.invoke1904

bb.bm:                                            ; preds = %bb.ao
  %i.ll = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  %i.lm = icmp ult i64 %.sroa.3.0.i, %i.cz
  br i1 %i.lm, label %bb.im, label %.invoke1904

bb.bn:                                            ; preds = %bb.bj
  %i.ln = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.3.0.i
  %i.lo = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ln)
          to label %bb.bo unwind label %.thread393.loopexit ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  %i.lp = extractvalue { ptr, ptr } %i.lo, 0      ; 7 uses
  %i.lq = extractvalue { ptr, ptr } %i.lo, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8, !invariant.load !10, !nonnull !10
  invoke void %i.ls(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aq, ptr noundef %i.lp)
          to label %bb.bp unwind label %.thread393.loopexit

bb.bp:                                            ; preds = %bb.bo
  %i.lt = load i128, ptr %i.aq, align 16, !noundef !10
  %i.lu = icmp eq i128 %i.lt, -161552374697213817395454635259496115404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br i1 %i.lu, label %bb.bq, label %.invoke, !prof !15

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lp) ]
  %i.lv = icmp ult i64 %.sroa.02.010.i118, %i.de
  br i1 %i.lv, label %bb.br, label %.invoke1904

bb.br:                                            ; preds = %bb.bq
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %.sroa.02.010.i118
  %i.lx = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.lw)
          to label %bb.bs unwind label %.thread393.loopexit ; 2 uses

bb.bs:                                            ; preds = %bb.br
  %i.ly = extractvalue { ptr, ptr } %i.lx, 0      ; 6 uses
  %i.lz = extractvalue { ptr, ptr } %i.lx, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8, !invariant.load !10, !nonnull !10
  invoke void %i.mb(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ap, ptr noundef %i.ly)
          to label %bb.bt unwind label %.thread393.loopexit

bb.bt:                                            ; preds = %bb.bs
  %i.mc = load i128, ptr %i.ap, align 16, !noundef !10
  %i.md = icmp eq i128 %i.mc, -161552374697213817395454635259496115404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br i1 %i.md, label %bb.bu, label %.invoke, !prof !15

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ly) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  %i.me = getelementptr inbounds nuw i8, ptr %i.jl, i64 48 ; 3 uses
  %i.mf = load ptr, ptr %i.me, align 8, !nonnull !10, !noundef !10
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.experimental.noalias.scope.decl(metadata !5289)
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lp, i64 48 ; 2 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !alias.scope !5289, !noundef !10 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lp, i64 56 ; 2 uses
  %i.mk = load i64, ptr %i.mj, align 8, !alias.scope !5289, !noundef !10
  %i.ml = lshr i64 %i.mk, 2                       ; 2 uses
  %.not.i152 = icmp eq i64 %i.ml, 0
  br i1 %.not.i152, label %.thread.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mi) ]
  %i.mm = load i32, ptr %i.mi, align 4, !noalias !5289, !noundef !10 ; 2 uses
  %i.mn = icmp sgt i32 %i.mm, -1
  br i1 %i.mn, label %bb.bw, label %.invoke, !prof !15

bb.bw:                                            ; preds = %bb.bv
  %i.mo = zext nneg i32 %i.mm to i64
  %i.mp = getelementptr [4 x i8], ptr %i.mi, i64 %i.ml
  %i.mq = getelementptr i8, ptr %i.mp, i64 -4     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mq) ]
  %i.mr = load i32, ptr %i.mq, align 4, !noalias !5289, !noundef !10 ; 2 uses
  %i.ms = icmp sgt i32 %i.mr, -1
  %i.mt = zext nneg i32 %i.mr to i64
  br i1 %i.ms, label %.thread.i, label %.invoke, !prof !15

.thread.i:                                        ; preds = %bb.bw, %bb.bu
  %.sroa.0.017.i = phi i64 [ %i.mo, %bb.bw ], [ 0, %bb.bu ] ; 2 uses
  %.sroa.03.0.i = phi i64 [ %i.mt, %bb.bw ], [ 0, %bb.bu ]
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  %i.mv = sub nsw i64 %.sroa.03.0.i, %.sroa.0.017.i
  %i.mw = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_5slice(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.mu, i64 noundef %.sroa.0.017.i, i64 noundef %i.mv)
          to label %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2_12ListArrayExt14trimmed_valuesB4_.exit unwind label %.thread393.loopexit ; 2 uses

_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2_12ListArrayExt14trimmed_valuesB4_.exit: ; preds = %.thread.i
  %i.mx = extractvalue { ptr, ptr } %i.mw, 0      ; 3 uses
  %i.my = extractvalue { ptr, ptr } %i.mw, 1      ; 2 uses
  store ptr %i.mx, ptr %i.bp, align 8
  store ptr %i.my, ptr %i.ey, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5290)
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ly, i64 48
  %i.na = load ptr, ptr %i.mz, align 8, !alias.scope !5290, !noundef !10 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ly, i64 56
  %i.nc = load i64, ptr %i.nb, align 8, !alias.scope !5290, !noundef !10
  %i.nd = lshr i64 %i.nc, 2                       ; 2 uses
  %.not.i156 = icmp eq i64 %i.nd, 0
  br i1 %.not.i156, label %.thread.i157, label %bb.bx

bb.bx:                                            ; preds = %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2_12ListArrayExt14trimmed_valuesB4_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.na) ]
  %i.ne = load i32, ptr %i.na, align 4, !noalias !5290, !noundef !10 ; 2 uses
  %i.nf = icmp sgt i32 %i.ne, -1
  br i1 %i.nf, label %bb.by, label %.invoke2002, !prof !15

bb.by:                                            ; preds = %bb.bx
  %i.ng = zext nneg i32 %i.ne to i64
  %i.nh = getelementptr [4 x i8], ptr %i.na, i64 %i.nd
  %i.ni = getelementptr i8, ptr %i.nh, i64 -4     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ni) ]
  %i.nj = load i32, ptr %i.ni, align 4, !noalias !5290, !noundef !10 ; 2 uses
  %i.nk = icmp sgt i32 %i.nj, -1
  %i.nl = zext nneg i32 %i.nj to i64
  br i1 %i.nk, label %.thread.i157, label %.invoke2002, !prof !15

.invoke2002:                                      ; preds = %bb.by, %bb.bx
  %i.nm = phi ptr [ @307, %bb.bx ], [ @308, %bb.by ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nm) #36
          to label %.cont2003 unwind label %.loopexit.split-lp474

.cont2003:                                        ; preds = %.invoke2002
  unreachable

.thread.i157:                                     ; preds = %bb.by, %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2_12ListArrayExt14trimmed_valuesB4_.exit
  %.sroa.0.017.i158 = phi i64 [ %i.ng, %bb.by ], [ 0, %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2_12ListArrayExt14trimmed_valuesB4_.exit ] ; 2 uses
  %.sroa.03.0.i159 = phi i64 [ %i.nl, %bb.by ], [ 0, %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2_12ListArrayExt14trimmed_valuesB4_.exit ]
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  %i.no = sub nsw i64 %.sroa.03.0.i159, %.sroa.0.017.i158
  %i.np = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_5slice(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.nn, i64 noundef %.sroa.0.017.i158, i64 noundef %i.no)
          to label %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2_12ListArrayExt14trimmed_valuesB4_.exit163 unwind label %.loopexit473 ; 2 uses

bb.bz:                                            ; preds = %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2_12ListArrayExt14trimmed_valuesB4_.exit163
  %lpad.thr_comm.split-lp399 = landingpad { ptr, i32 }
          cleanup
  br label %.thread365

_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2_12ListArrayExt14trimmed_valuesB4_.exit163: ; preds = %.thread.i157
  %i.nq = extractvalue { ptr, ptr } %i.np, 0
  %i.nr = extractvalue { ptr, ptr } %i.np, 1
  %i.ns = invoke fastcc { ptr, ptr } @_RNvCsc2V0exE7CWf_11lance_arrow23merge_list_child_values(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.mg, ptr noundef nonnull %i.mx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.my, ptr noundef nonnull %i.nq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.nr)
          to label %bb.ca unwind label %bb.bz     ; 2 uses

bb.ca:                                            ; preds = %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2_12ListArrayExt14trimmed_valuesB4_.exit163
  %i.nt = extractvalue { ptr, ptr } %i.ns, 0      ; 2 uses
  %i.nu = extractvalue { ptr, ptr } %i.ns, 1      ; 2 uses
  store ptr %i.nt, ptr %i.bq, align 8
  store ptr %i.nu, ptr %i.ez, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  %i.nv = getelementptr inbounds nuw i8, ptr %i.lp, i64 64 ; 2 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !noundef !10
  %.not88 = icmp eq ptr %i.nw, null
  %.98 = select i1 %.not88, ptr null, ptr %i.nv
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ly, i64 64 ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !noundef !10
  %.not89 = icmp eq ptr %i.ny, null
  %.sroa.018.0 = select i1 %.not89, ptr null, ptr %i.nx
  invoke fastcc void @_RNvCsc2V0exE7CWf_11lance_arrow21merge_struct_validity(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %.98, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %.sroa.018.0)
          to label %bb.cc unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.oa = load ptr, ptr %i.me, align 8, !nonnull !10, !noundef !10
  %i.ob = atomicrmw add ptr %i.oa, i64 1 monotonic, align 8
  %i.oc = icmp slt i64 %i.ob, 0
  br i1 %i.oc, label %bb.cu, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.od = load ptr, ptr %i.me, align 8, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %i.od, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.experimental.noalias.scope.decl(metadata !5291)
  call void @llvm.experimental.noalias.scope.decl(metadata !5292)
  %i.oe = getelementptr inbounds nuw i8, ptr %i.lp, i64 40 ; 2 uses
  %i.of = load ptr, ptr %i.mh, align 8, !alias.scope !5292, !noalias !5291, !noundef !10 ; 11 uses
  %i.og = ptrtoaddr ptr %i.of to i64
  %i.oh = load i64, ptr %i.mj, align 8, !alias.scope !5292, !noalias !5291, !noundef !10 ; 9 uses
  %.not.i164 = icmp ult i64 %i.oh, 4
  br i1 %.not.i164, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.oi = load ptr, ptr %i.oe, align 8, !alias.scope !5292, !noalias !5291, !nonnull !10, !noundef !10 ; 2 uses
  %i.oj = atomicrmw add ptr %i.oi, i64 1 monotonic, align 8, !noalias !5293
  %i.ok = icmp slt i64 %i.oj, 0
  br i1 %i.ok, label %bb.ch, label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.of) ]
  %i.ol = load i32, ptr %i.of, align 4, !noalias !5293, !noundef !10 ; 7 uses
  %i.om = icmp eq i32 %i.ol, 0
  br i1 %i.om, label %bb.cr, label %bb.ci

bb.cg:                                            ; preds = %bb.ce
  store ptr %i.oi, ptr %i.bl, align 8, !alias.scope !5291, !noalias !5292
  store ptr %i.of, ptr %.sroa.49.0..sroa_idx.i, align 8, !alias.scope !5291, !noalias !5292
  store i64 %i.oh, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !5291, !noalias !5292
  br label %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2_12ListArrayExt15trimmed_offsetsB4_.exit

bb.ch:                                            ; preds = %bb.ce
  call void @llvm.trap()
  unreachable

bb.ci:                                            ; preds = %bb.cf
  %.idx.i = and i64 %i.oh, -4                     ; 3 uses
  %i.on = lshr i64 %i.oh, 2                       ; 6 uses
  %.not.i.i.i.i.i = icmp ugt i64 %.idx.i, 9223372036854775804
  br i1 %.not.i.i.i.i.i, label %bb.ck, label %bb.cj, !prof !27

bb.cj:                                            ; preds = %bb.ci
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !5294
  %i.oo = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.idx.i, i64 noundef range(i64 1, 9) 4) #39, !noalias !5294 ; 12 uses
  %i.op = icmp eq ptr %i.oo, null
  br i1 %i.op, label %bb.ck, label %.preheader.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.preheader:                   ; preds = %bb.cj
  %i.oq = ptrtoaddr ptr %i.oo to i64
  %min.iters.check = icmp ult i64 %i.oh, 32
  %i.or = sub i64 %i.og, %i.oq
  %diff.check = icmp ugt i64 %i.or, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.preheader.i.i.i.i.i.preheader2007, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i.preheader
  %n.vec = and i64 %i.on, 4611686018427387896     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ol, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %index ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %wide.load = load <4 x i32>, ptr %i.os, align 4, !noalias !5295
  %wide.load1985 = load <4 x i32>, ptr %i.ot, align 4, !noalias !5295
  %i.ou = sub <4 x i32> %wide.load, %broadcast.splat
  %i.ov = sub <4 x i32> %wide.load1985, %broadcast.splat
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %index ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  store <4 x i32> %i.ou, ptr %i.ow, align 4, !noalias !5296
  store <4 x i32> %i.ov, ptr %i.ox, align 4, !noalias !5296
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.oy = icmp eq i64 %index.next, %n.vec
  br i1 %i.oy, label %middle.block, label %vector.body, !llvm.loop !5010

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.on, %n.vec
  br i1 %cmp.n, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VeclEINtB2_12SpecFromIterlINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterlENCNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2D_12ListArrayExt15trimmed_offsets0EE9from_iterB2F_.exit.i, label %.preheader.i.i.i.i.i.preheader2007

.preheader.i.i.i.i.i.preheader2007:               ; preds = %.preheader.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter2083 = and i64 %i.on, 3                ; 2 uses
  %lcmp.mod2084.not = icmp eq i64 %xtraiter2083, 0
  br i1 %lcmp.mod2084.not, label %.preheader.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.prol

.preheader.i.i.i.i.i.prol:                        ; preds = %.preheader.i.i.i.i.i.preheader2007, %.preheader.i.i.i.i.i.prol
  %i.oz = phi i64 [ %i.pd, %.preheader.i.i.i.i.i.prol ], [ %.ph, %.preheader.i.i.i.i.i.preheader2007 ] ; 3 uses
  %prol.iter2085 = phi i64 [ %prol.iter2085.next, %.preheader.i.i.i.i.i.prol ], [ 0, %.preheader.i.i.i.i.i.preheader2007 ]
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.oz
  %.val16.i.i.i.i.i.i.i.i.prol = load i32, ptr %i.pa, align 4, !noalias !5295, !noundef !10
  %i.pb = sub i32 %.val16.i.i.i.i.i.i.i.i.prol, %i.ol
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.oz
  store i32 %i.pb, ptr %i.pc, align 4, !noalias !5296
  %i.pd = add nuw nsw i64 %i.oz, 1                ; 2 uses
  %prol.iter2085.next = add i64 %prol.iter2085, 1 ; 2 uses
  %prol.iter2085.cmp.not = icmp eq i64 %prol.iter2085.next, %xtraiter2083
  br i1 %prol.iter2085.cmp.not, label %.preheader.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.prol, !llvm.loop !5011

.preheader.i.i.i.i.i.prol.loopexit:               ; preds = %.preheader.i.i.i.i.i.prol, %.preheader.i.i.i.i.i.preheader2007
  %.unr2086 = phi i64 [ %.ph, %.preheader.i.i.i.i.i.preheader2007 ], [ %i.pd, %.preheader.i.i.i.i.i.prol ]
  %i.pe = sub nsw i64 %.ph, %i.on
  %i.pf = icmp ugt i64 %i.pe, -4
  br i1 %i.pf, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VeclEINtB2_12SpecFromIterlINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterlENCNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2D_12ListArrayExt15trimmed_offsets0EE9from_iterB2F_.exit.i, label %.preheader.i.i.i.i.i

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 4, %bb.cj ], [ 0, %bb.ci ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.idx.i) #36
          to label %.noexc165 unwind label %.body107.thread416

.body107.thread416:                               ; preds = %bb.ck
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %.body107.thread

.noexc165:                                        ; preds = %bb.ck
  unreachable

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i
  %i.ph = phi i64 [ %i.px, %.preheader.i.i.i.i.i ], [ %.unr2086, %.preheader.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.ph
  %.val16.i.i.i.i.i.i.i.i = load i32, ptr %i.pi, align 4, !noalias !5295, !noundef !10
  %i.pj = sub i32 %.val16.i.i.i.i.i.i.i.i, %i.ol
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.ph
  store i32 %i.pj, ptr %i.pk, align 4, !noalias !5296
  %i.pl = add nuw nsw i64 %i.ph, 1                ; 2 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.pl
  %.val16.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.pm, align 4, !noalias !5295, !noundef !10
  %i.pn = sub i32 %.val16.i.i.i.i.i.i.i.i.1, %i.ol
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.pl
  store i32 %i.pn, ptr %i.po, align 4, !noalias !5296
  %i.pp = add nuw nsw i64 %i.ph, 2                ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.pp
  %.val16.i.i.i.i.i.i.i.i.2 = load i32, ptr %i.pq, align 4, !noalias !5295, !noundef !10
  %i.pr = sub i32 %.val16.i.i.i.i.i.i.i.i.2, %i.ol
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.pp
  store i32 %i.pr, ptr %i.ps, align 4, !noalias !5296
  %i.pt = add nuw nsw i64 %i.ph, 3                ; 2 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.pt
  %.val16.i.i.i.i.i.i.i.i.3 = load i32, ptr %i.pu, align 4, !noalias !5295, !noundef !10
  %i.pv = sub i32 %.val16.i.i.i.i.i.i.i.i.3, %i.ol
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.pt
  store i32 %i.pv, ptr %i.pw, align 4, !noalias !5296
  %i.px = add nuw nsw i64 %i.ph, 4                ; 2 uses
  %i.py = icmp eq i64 %i.px, %i.on
  br i1 %i.py, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VeclEINtB2_12SpecFromIterlINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterlENCNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2D_12ListArrayExt15trimmed_offsets0EE9from_iterB2F_.exit.i, label %.preheader.i.i.i.i.i, !llvm.loop !5012

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VeclEINtB2_12SpecFromIterlINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterlENCNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2D_12ListArrayExt15trimmed_offsets0EE9from_iterB2F_.exit.i: ; preds = %.preheader.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5293
  call void @llvm.experimental.noalias.scope.decl(metadata !5297)
  %i.pz = icmp sgt i64 %i.oh, -1
  %4 = and i64 %i.oh, 9223372036854775804         ; 3 uses
  call void @llvm.assume(i1 %i.pz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5298
  store i64 1, ptr %i.t, align 8, !noalias !5298
  store i64 1, ptr %i.fa, align 8, !noalias !5298
  store ptr %i.oo, ptr %i.fb, align 8, !noalias !5298
  store i64 %4, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !5298
  store ptr null, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !5298
  store i64 4, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !5298
  store i64 %4, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !5298
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !5299
  %i.qa = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #39, !noalias !5299 ; 4 uses
  %i.qb = icmp eq ptr %i.qa, null
  br i1 %i.qb, label %bb.cl, label %_RNvXs5_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VeclEE4fromCsc2V0exE7CWf_11lance_arrow.exit.i, !prof !11

bb.cl:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VeclEINtB2_12SpecFromIterlINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterlENCNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2D_12ListArrayExt15trimmed_offsets0EE9from_iterB2F_.exit.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc.i.i unwind label %bb.cm, !noalias !5298

.noexc.i.i:                                       ; preds = %bb.cl
  unreachable

bb.cm:                                            ; preds = %bb.cl
  %i.qc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.t) #37
          to label %.body107.thread unwind label %bb.cn, !noalias !5298

bb.cn:                                            ; preds = %bb.cm
  %i.qd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5298
  unreachable

_RNvXs5_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VeclEE4fromCsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VeclEINtB2_12SpecFromIterlINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterlENCNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2D_12ListArrayExt15trimmed_offsets0EE9from_iterB2F_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.qa, ptr noundef nonnull align 8 dereferenceable(56) %i.t, i64 56, i1 false), !noalias !5298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5298
  store ptr %i.qa, ptr %i.u, align 8, !alias.scope !5297, !noalias !5300
  store ptr %i.oo, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !5297, !noalias !5300
  store i64 %4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !5297, !noalias !5300
  call void @llvm.experimental.noalias.scope.decl(metadata !5301)
  call void @llvm.experimental.noalias.scope.decl(metadata !5302)
  %i.qe = load i32, ptr %i.oo, align 4, !alias.scope !5303, !noalias !5304, !noundef !10 ; 2 uses
  %i.qf = icmp sgt i32 %i.qe, -1
  br i1 %i.qf, label %.split.us.i.i.i.preheader, label %.invoke.i.i, !prof !15

.split.us.i.i.i.preheader:                        ; preds = %_RNvXs5_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VeclEE4fromCsc2V0exE7CWf_11lance_arrow.exit.i
  %.not16.not.i.i.i1984 = icmp samesign ult i64 %i.oh, 8
  br i1 %.not16.not.i.i.i1984, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB2_12OffsetBufferlE3newCsc2V0exE7CWf_11lance_arrow.exit.i, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkRSlNCNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB1j_12OffsetBufferlE3new0E0Csc2V0exE7CWf_11lance_arrow.exit.us.i.i.i

bb.co:                                            ; preds = %.invoke.i.i
  %i.qg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qh = atomicrmw sub ptr %i.qa, i64 1 release, align 8, !noalias !5305
  %i.qi = icmp eq i64 %i.qh, 1
  br i1 %i.qi, label %bb.cp, label %.body107.thread

bb.cp:                                            ; preds = %bb.co
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body107.thread unwind label %bb.cq, !noalias !5306

.split.us.i.i.i:                                  ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkRSlNCNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB1j_12OffsetBufferlE3new0E0Csc2V0exE7CWf_11lance_arrow.exit.us.i.i.i
  %i.qj = add nsw i64 %i.qk, -1                   ; 2 uses
  %.not16.not.i.i.i = icmp ult i64 %i.qj, 2
  br i1 %.not16.not.i.i.i, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB2_12OffsetBufferlE3newCsc2V0exE7CWf_11lance_arrow.exit.i, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkRSlNCNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB1j_12OffsetBufferlE3new0E0Csc2V0exE7CWf_11lance_arrow.exit.us.i.i.i

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkRSlNCNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB1j_12OffsetBufferlE3new0E0Csc2V0exE7CWf_11lance_arrow.exit.us.i.i.i: ; preds = %.split.us.i.i.i.preheader, %.split.us.i.i.i
  %i.qk = phi i64 [ %i.qj, %.split.us.i.i.i ], [ %i.on, %.split.us.i.i.i.preheader ]
  %i.ql = phi ptr [ %i.qn, %.split.us.i.i.i ], [ %i.oo, %.split.us.i.i.i.preheader ]
  %i.qm = phi i32 [ %i.qo, %.split.us.i.i.i ], [ %i.qe, %.split.us.i.i.i.preheader ]
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 4 ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 4, !alias.scope !5307, !noalias !5308, !noundef !10 ; 2 uses
  %.not.i.us.i.i.i = icmp sgt i32 %i.qm, %i.qo
  br i1 %.not.i.us.i.i.i, label %.invoke.i.i, label %.split.us.i.i.i

.invoke.i.i:                                      ; preds = %_RNvXs5_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VeclEE4fromCsc2V0exE7CWf_11lance_arrow.exit.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkRSlNCNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB1j_12OffsetBufferlE3new0E0Csc2V0exE7CWf_11lance_arrow.exit.us.i.i.i
  %i.qp = phi ptr [ @200, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkRSlNCNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB1j_12OffsetBufferlE3new0E0Csc2V0exE7CWf_11lance_arrow.exit.us.i.i.i ], [ @198, %_RNvXs5_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VeclEE4fromCsc2V0exE7CWf_11lance_arrow.exit.i ]
  %i.qq = phi ptr [ inttoptr (i64 81 to ptr), %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkRSlNCNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB1j_12OffsetBufferlE3new0E0Csc2V0exE7CWf_11lance_arrow.exit.us.i.i.i ], [ inttoptr (i64 61 to ptr), %_RNvXs5_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VeclEE4fromCsc2V0exE7CWf_11lance_arrow.exit.i ]
  %i.qr = phi ptr [ @201, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkRSlNCNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB1j_12OffsetBufferlE3new0E0Csc2V0exE7CWf_11lance_arrow.exit.us.i.i.i ], [ @199, %_RNvXs5_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VeclEE4fromCsc2V0exE7CWf_11lance_arrow.exit.i ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %i.qp, ptr noundef nonnull %i.qq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qr) #36
          to label %.cont.i.i unwind label %bb.co, !noalias !5309

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.cq:                                            ; preds = %bb.cp
  %i.qs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5306
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB2_12OffsetBufferlE3newCsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %.split.us.i.i.i, %.split.us.i.i.i.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !alias.scope !5310, !noalias !5292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5293
  br label %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2_12ListArrayExt15trimmed_offsetsB4_.exit

bb.cr:                                            ; preds = %bb.cf
  %i.qt = load ptr, ptr %i.oe, align 8, !alias.scope !5292, !noalias !5291, !nonnull !10, !noundef !10 ; 2 uses
  %i.qu = atomicrmw add ptr %i.qt, i64 1 monotonic, align 8, !noalias !5293
  %i.qv = icmp slt i64 %i.qu, 0
  br i1 %i.qv, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  store ptr %i.qt, ptr %i.bl, align 8, !alias.scope !5291, !noalias !5292
  store ptr %i.of, ptr %.sroa.49.0..sroa_idx.i, align 8, !alias.scope !5291, !noalias !5292
  store i64 %i.oh, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !5291, !noalias !5292
  br label %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2_12ListArrayExt15trimmed_offsetsB4_.exit

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.trap()
  unreachable

bb.cu:                                            ; preds = %bb.cc
  call void @llvm.trap()
  unreachable

.body107:                                         ; preds = %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2_12ListArrayExt15trimmed_offsetsB4_.exit
  %i.qw = landingpad { ptr, i32 }
          cleanup
  br label %.thread365

_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2_12ListArrayExt15trimmed_offsetsB4_.exit: ; preds = %bb.cs, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB2_12OffsetBufferlE3newCsc2V0exE7CWf_11lance_arrow.exit.i, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr noundef nonnull align 8 dereferenceable(48) %i.bo, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke fastcc void @_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylE7try_newCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.ao, ptr noundef nonnull %i.od, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bl, ptr noundef nonnull %i.nt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.nu, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bk)
          to label %bb.cv unwind label %.body107

bb.cv:                                            ; preds = %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB2_12ListArrayExt15trimmed_offsetsB4_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !5311)
  call void @llvm.experimental.noalias.scope.decl(metadata !5312)
  %i.qx = load i8, ptr %i.ao, align 8, !range !23, !alias.scope !5312, !noalias !5311, !noundef !10
  %i.qy = icmp eq i8 %i.qx, -1
  br i1 %i.qy, label %bb.cw, label %bb.da, !prof !11

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !5313
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.qz, i64 32, i1 false), !noalias !5311
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 43, ptr noundef nonnull %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #36
          to label %bb.cy unwind label %bb.cx, !noalias !5313

bb.cx:                                            ; preds = %bb.cw
  %i.ra = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.af) #37
          to label %.thread365 unwind label %bb.cz, !noalias !5313

bb.cy:                                            ; preds = %bb.cw
  unreachable

bb.cz:                                            ; preds = %bb.cx
  %i.rb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5313
  unreachable

bb.da:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bn, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.ao, i64 112, i1 false), !alias.scope !5313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.experimental.noalias.scope.decl(metadata !5314)
  call void @llvm.experimental.noalias.scope.decl(metadata !5315)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5316
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.jm)
          to label %.noexc173 unwind label %bb.dh

.noexc173:                                        ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5316
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jn)
          to label %bb.de unwind label %bb.dd, !noalias !5314

bb.db:                                            ; preds = %bb.df, %bb.dd
  %.pn.i169 = phi { ptr, i32 } [ %i.rm, %bb.df ], [ %i.re, %bb.dd ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5317)
  %.val.i.i170 = load i64, ptr %i.s, align 8, !alias.scope !5317, !noalias !5316 ; 2 uses
  %i.rc = icmp eq i64 %.val.i.i170, 0
  br i1 %i.rc, label %bb.dw, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.rd = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i.i171 = load ptr, ptr %i.rd, align 8, !alias.scope !5317, !noalias !5316, !nonnull !10, !noundef !10
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i171, i64 noundef %.val.i.i170, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !5318
  br label %bb.dw

bb.dd:                                            ; preds = %.noexc173
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.de:                                            ; preds = %.noexc173
  %i.rf = getelementptr inbounds nuw i8, ptr %i.jl, i64 120
  %i.rg = load i8, ptr %i.rf, align 8, !range !20, !alias.scope !5315, !noalias !5314, !noundef !10
  %i.rh = getelementptr inbounds nuw i8, ptr %i.jl, i64 112
  %i.ri = load i64, ptr %i.rh, align 8, !alias.scope !5315, !noalias !5314, !noundef !10
  %i.rj = getelementptr inbounds nuw i8, ptr %i.jl, i64 121
  %i.rk = load i8, ptr %i.rj, align 1, !range !20, !alias.scope !5315, !noalias !5314, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5316
  %i.rl = getelementptr inbounds nuw i8, ptr %i.jl, i64 64
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.rl)
          to label %bb.di unwind label %bb.df, !noalias !5314

bb.df:                                            ; preds = %bb.de
  %i.rm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.r) #37
          to label %bb.db unwind label %bb.dg, !noalias !5314

bb.dg:                                            ; preds = %bb.df
  %i.rn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5314
  unreachable

bb.dh:                                            ; preds = %bb.da
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.di:                                            ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fc, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !5315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !5315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !5315
  store i8 %i.rg, ptr %i.fe, align 8, !alias.scope !5314, !noalias !5315
  store i64 %i.ri, ptr %i.ff, align 8, !alias.scope !5314, !noalias !5315
  store i8 %i.rk, ptr %i.fg, align 1, !alias.scope !5314, !noalias !5315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5316
  %i.rp = load i64, ptr %i.ck, align 8, !alias.scope !5319, !noalias !5320, !noundef !10 ; 3 uses
  %i.rq = load i64, ptr %i.by, align 8, !range !13, !alias.scope !5319, !noalias !5320, !noundef !10
  %i.rr = icmp eq i64 %i.rp, %i.rq
  br i1 %i.rr, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %bb.di
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.by)
end_hunk_0
begin_hunk_1_@_RNvCsc2V0exE7CWf_11lance_arrow17merge_with_schema:bb.a
          to label %.thread365 unwind label %bb.dx

bb.ft:                                            ; preds = %bb.er
  %i.wd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.we = atomicrmw sub ptr %i.ug, i64 1 release, align 8, !noalias !5347
  %i.wf = icmp eq i64 %i.we, 1
  br i1 %i.wf, label %bb.fu, label %.thread365

bb.fu:                                            ; preds = %bb.ft
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ba)
          to label %.thread365 unwind label %bb.dx

bb.fv:                                            ; preds = %bb.bl
  %i.wg = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.3.0.i
  %i.wh = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.wg)
          to label %bb.fw unwind label %.thread393.loopexit ; 2 uses

bb.fw:                                            ; preds = %bb.fv
  %i.wi = extractvalue { ptr, ptr } %i.wh, 0      ; 7 uses
  %i.wj = extractvalue { ptr, ptr } %i.wh, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 24
  %i.wl = load ptr, ptr %i.wk, align 8, !invariant.load !10, !nonnull !10
  invoke void %i.wl(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.am, ptr noundef %i.wi)
          to label %bb.fx unwind label %.thread393.loopexit

bb.fx:                                            ; preds = %bb.fw
  %i.wm = load i128, ptr %i.am, align 16, !noundef !10
  %i.wn = icmp eq i128 %i.wm, 90189382463122623267183234748201210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br i1 %i.wn, label %bb.fy, label %.invoke, !prof !15

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wi) ]
  %i.wo = icmp ult i64 %.sroa.02.010.i118, %i.de
  br i1 %i.wo, label %bb.fz, label %.invoke1904

bb.fz:                                            ; preds = %bb.fy
  %i.wp = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %.sroa.02.010.i118
  %i.wq = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.wp)
          to label %bb.ga unwind label %.thread393.loopexit ; 2 uses

bb.ga:                                            ; preds = %bb.fz
  %i.wr = extractvalue { ptr, ptr } %i.wq, 0      ; 6 uses
  %i.ws = extractvalue { ptr, ptr } %i.wq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 24
  %i.wu = load ptr, ptr %i.wt, align 8, !invariant.load !10, !nonnull !10
  invoke void %i.wu(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.al, ptr noundef %i.wr)
          to label %bb.gb unwind label %.thread393.loopexit

bb.gb:                                            ; preds = %bb.ga
  %i.wv = load i128, ptr %i.al, align 16, !noundef !10
  %i.ww = icmp eq i128 %i.wv, 90189382463122623267183234748201210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br i1 %i.ww, label %bb.gc, label %.invoke, !prof !15

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wr) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.wx = getelementptr inbounds nuw i8, ptr %i.jl, i64 48 ; 3 uses
  %i.wy = load ptr, ptr %i.wx, align 8, !nonnull !10, !noundef !10
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.experimental.noalias.scope.decl(metadata !5348)
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wi, i64 48 ; 2 uses
  %i.xb = load ptr, ptr %i.xa, align 8, !alias.scope !5348, !noundef !10 ; 3 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wi, i64 56 ; 2 uses
  %i.xd = load i64, ptr %i.xc, align 8, !alias.scope !5348, !noundef !10
  %i.xe = lshr i64 %i.xd, 3                       ; 2 uses
  %.not.i217 = icmp eq i64 %i.xe, 0
  br i1 %.not.i217, label %.thread.i218, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xb) ]
  %i.xf = load i64, ptr %i.xb, align 8, !noalias !5348, !noundef !10 ; 2 uses
  %i.xg = icmp sgt i64 %i.xf, -1
  br i1 %i.xg, label %bb.ge, label %.invoke, !prof !15

bb.ge:                                            ; preds = %bb.gd
  %i.xh = getelementptr [8 x i8], ptr %i.xb, i64 %i.xe
  %i.xi = getelementptr i8, ptr %i.xh, i64 -8     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xi) ]
  %i.xj = load i64, ptr %i.xi, align 8, !noalias !5348, !noundef !10 ; 2 uses
  %i.xk = icmp sgt i64 %i.xj, -1
  br i1 %i.xk, label %.thread.i218, label %.invoke, !prof !15

.invoke:                                          ; preds = %bb.ge, %bb.gd, %bb.gb, %bb.fx, %bb.el, %bb.eh, %bb.bw, %bb.bv, %bb.bt, %bb.bp
  %i.xl = phi ptr [ @307, %bb.gd ], [ @160, %bb.gb ], [ @307, %bb.bv ], [ @151, %bb.bt ], [ @156, %bb.el ], [ @158, %bb.fx ], [ @308, %bb.bw ], [ @154, %bb.eh ], [ @149, %bb.bp ], [ @308, %bb.ge ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xl) #36
          to label %.cont unwind label %.thread393.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.thread.i218:                                     ; preds = %bb.ge, %bb.gc
  %.sroa.0.016.i = phi i64 [ %i.xf, %bb.ge ], [ 0, %bb.gc ] ; 2 uses
  %.sroa.03.0.i219 = phi i64 [ %i.xj, %bb.ge ], [ 0, %bb.gc ]
  %i.xm = getelementptr inbounds nuw i8, ptr %i.wi, i64 24
  %i.xn = sub nsw i64 %.sroa.03.0.i219, %.sroa.0.016.i
  %i.xo = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_5slice(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.xm, i64 noundef %.sroa.0.016.i, i64 noundef %i.xn)
          to label %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2_12ListArrayExt14trimmed_valuesB4_.exit unwind label %.thread393.loopexit ; 2 uses

_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2_12ListArrayExt14trimmed_valuesB4_.exit: ; preds = %.thread.i218
  %i.xp = extractvalue { ptr, ptr } %i.xo, 0      ; 3 uses
  %i.xq = extractvalue { ptr, ptr } %i.xo, 1      ; 2 uses
  store ptr %i.xp, ptr %i.bh, align 8
  store ptr %i.xq, ptr %i.ed, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5349)
  %i.xr = getelementptr inbounds nuw i8, ptr %i.wr, i64 48
  %i.xs = load ptr, ptr %i.xr, align 8, !alias.scope !5349, !noundef !10 ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.wr, i64 56
  %i.xu = load i64, ptr %i.xt, align 8, !alias.scope !5349, !noundef !10
  %i.xv = lshr i64 %i.xu, 3                       ; 2 uses
  %.not.i223 = icmp eq i64 %i.xv, 0
  br i1 %.not.i223, label %.thread.i224, label %bb.gf

bb.gf:                                            ; preds = %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2_12ListArrayExt14trimmed_valuesB4_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xs) ]
  %i.xw = load i64, ptr %i.xs, align 8, !noalias !5349, !noundef !10 ; 2 uses
  %i.xx = icmp sgt i64 %i.xw, -1
  br i1 %i.xx, label %bb.gg, label %.invoke2005, !prof !15

bb.gg:                                            ; preds = %bb.gf
  %i.xy = getelementptr [8 x i8], ptr %i.xs, i64 %i.xv
  %i.xz = getelementptr i8, ptr %i.xy, i64 -8     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xz) ]
  %i.ya = load i64, ptr %i.xz, align 8, !noalias !5349, !noundef !10 ; 2 uses
  %i.yb = icmp sgt i64 %i.ya, -1
  br i1 %i.yb, label %.thread.i224, label %.invoke2005, !prof !15

.invoke2005:                                      ; preds = %bb.gg, %bb.gf
  %i.yc = phi ptr [ @307, %bb.gf ], [ @308, %bb.gg ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yc) #36
          to label %.cont2006 unwind label %.loopexit.split-lp

.cont2006:                                        ; preds = %.invoke2005
  unreachable

.thread.i224:                                     ; preds = %bb.gg, %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2_12ListArrayExt14trimmed_valuesB4_.exit
  %.sroa.0.016.i225 = phi i64 [ %i.xw, %bb.gg ], [ 0, %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2_12ListArrayExt14trimmed_valuesB4_.exit ] ; 2 uses
  %.sroa.03.0.i226 = phi i64 [ %i.ya, %bb.gg ], [ 0, %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2_12ListArrayExt14trimmed_valuesB4_.exit ]
  %i.yd = getelementptr inbounds nuw i8, ptr %i.wr, i64 24
  %i.ye = sub nsw i64 %.sroa.03.0.i226, %.sroa.0.016.i225
  %i.yf = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_5slice(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.yd, i64 noundef %.sroa.0.016.i225, i64 noundef %i.ye)
          to label %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2_12ListArrayExt14trimmed_valuesB4_.exit230 unwind label %.loopexit468 ; 2 uses

bb.gh:                                            ; preds = %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2_12ListArrayExt14trimmed_valuesB4_.exit230
  %lpad.thr_comm.split-lp436 = landingpad { ptr, i32 }
          cleanup
  br label %.thread365

_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2_12ListArrayExt14trimmed_valuesB4_.exit230: ; preds = %.thread.i224
  %i.yg = extractvalue { ptr, ptr } %i.yf, 0
  %i.yh = extractvalue { ptr, ptr } %i.yf, 1
  %i.yi = invoke fastcc { ptr, ptr } @_RNvCsc2V0exE7CWf_11lance_arrow23merge_list_child_values(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.wz, ptr noundef nonnull %i.xp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.xq, ptr noundef nonnull %i.yg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.yh)
          to label %bb.gi unwind label %bb.gh     ; 2 uses

bb.gi:                                            ; preds = %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2_12ListArrayExt14trimmed_valuesB4_.exit230
  %i.yj = extractvalue { ptr, ptr } %i.yi, 0      ; 2 uses
  %i.yk = extractvalue { ptr, ptr } %i.yi, 1      ; 2 uses
  store ptr %i.yj, ptr %i.bi, align 8
  store ptr %i.yk, ptr %i.ee, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.yl = getelementptr inbounds nuw i8, ptr %i.wi, i64 64 ; 2 uses
  %i.ym = load ptr, ptr %i.yl, align 8, !noundef !10
  %.not80 = icmp eq ptr %i.ym, null
  %.100 = select i1 %.not80, ptr null, ptr %i.yl
  %i.yn = getelementptr inbounds nuw i8, ptr %i.wr, i64 64 ; 2 uses
  %i.yo = load ptr, ptr %i.yn, align 8, !noundef !10
  %.not81 = icmp eq ptr %i.yo, null
  %.sroa.022.0 = select i1 %.not81, ptr null, ptr %i.yn
  invoke fastcc void @_RNvCsc2V0exE7CWf_11lance_arrow21merge_struct_validity(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %.100, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %.sroa.022.0)
          to label %bb.gk unwind label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.yp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ii

bb.gk:                                            ; preds = %bb.gi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.yq = load ptr, ptr %i.wx, align 8, !nonnull !10, !noundef !10
  %i.yr = atomicrmw add ptr %i.yq, i64 1 monotonic, align 8
  %i.ys = icmp slt i64 %i.yr, 0
  br i1 %i.ys, label %bb.hc, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.yt = load ptr, ptr %i.wx, align 8, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %i.yt, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.experimental.noalias.scope.decl(metadata !5350)
  call void @llvm.experimental.noalias.scope.decl(metadata !5351)
  %i.yu = getelementptr inbounds nuw i8, ptr %i.wi, i64 40 ; 2 uses
  %i.yv = load ptr, ptr %i.xa, align 8, !alias.scope !5351, !noalias !5350, !noundef !10 ; 11 uses
  %i.yw = ptrtoaddr ptr %i.yv to i64
  %i.yx = load i64, ptr %i.xc, align 8, !alias.scope !5351, !noalias !5350, !noundef !10 ; 9 uses
  %.not.i231 = icmp ult i64 %i.yx, 8
  br i1 %.not.i231, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.yy = load ptr, ptr %i.yu, align 8, !alias.scope !5351, !noalias !5350, !nonnull !10, !noundef !10 ; 2 uses
  %i.yz = atomicrmw add ptr %i.yy, i64 1 monotonic, align 8, !noalias !5352
  %i.za = icmp slt i64 %i.yz, 0
  br i1 %i.za, label %bb.gp, label %bb.go

bb.gn:                                            ; preds = %bb.gl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yv) ]
  %i.zb = load i64, ptr %i.yv, align 8, !noalias !5352, !noundef !10 ; 7 uses
  %i.zc = icmp eq i64 %i.zb, 0
  br i1 %i.zc, label %bb.gz, label %bb.gq

bb.go:                                            ; preds = %bb.gm
  store ptr %i.yy, ptr %i.bd, align 8, !alias.scope !5350, !noalias !5351
  store ptr %i.yv, ptr %.sroa.49.0..sroa_idx.i251, align 8, !alias.scope !5350, !noalias !5351
  store i64 %i.yx, ptr %.sroa.510.0..sroa_idx.i252, align 8, !alias.scope !5350, !noalias !5351
  br label %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2_12ListArrayExt15trimmed_offsetsB4_.exit

bb.gp:                                            ; preds = %bb.gm
  call void @llvm.trap()
  unreachable

bb.gq:                                            ; preds = %bb.gn
  %.idx.i232 = and i64 %i.yx, -8                  ; 3 uses
  %i.zd = lshr i64 %i.yx, 3                       ; 6 uses
  %.not.i.i.i.i.i233 = icmp ugt i64 %.idx.i232, 9223372036854775800
  br i1 %.not.i.i.i.i.i233, label %bb.gs, label %bb.gr, !prof !27

bb.gr:                                            ; preds = %bb.gq
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !5353
  %i.ze = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.idx.i232, i64 noundef range(i64 1, 9) 8) #39, !noalias !5353 ; 12 uses
  %i.zf = icmp eq ptr %i.ze, null
  br i1 %i.zf, label %bb.gs, label %.preheader.i.i.i.i.i234.preheader

.preheader.i.i.i.i.i234.preheader:                ; preds = %bb.gr
  %i.zg = ptrtoaddr ptr %i.ze to i64
  %min.iters.check1989 = icmp ult i64 %i.yx, 32
  %i.zh = sub i64 %i.yw, %i.zg
  %diff.check1987 = icmp ugt i64 %i.zh, -32
  %or.cond2004 = or i1 %min.iters.check1989, %diff.check1987
  br i1 %or.cond2004, label %.preheader.i.i.i.i.i234.preheader2008, label %vector.ph1990

vector.ph1990:                                    ; preds = %.preheader.i.i.i.i.i234.preheader
  %n.vec1991 = and i64 %i.zd, 2305843009213693948 ; 3 uses
  %broadcast.splatinsert1992 = insertelement <2 x i64> poison, i64 %i.zb, i64 0
  %broadcast.splat1993 = shufflevector <2 x i64> %broadcast.splatinsert1992, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1994

vector.body1994:                                  ; preds = %vector.body1994, %vector.ph1990
  %index1995 = phi i64 [ 0, %vector.ph1990 ], [ %index.next1998, %vector.body1994 ] ; 3 uses
  %i.zi = getelementptr inbounds nuw [8 x i8], ptr %i.yv, i64 %index1995 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 16
  %wide.load1996 = load <2 x i64>, ptr %i.zi, align 8, !noalias !5354
  %wide.load1997 = load <2 x i64>, ptr %i.zj, align 8, !noalias !5354
  %i.zk = sub <2 x i64> %wide.load1996, %broadcast.splat1993
  %i.zl = sub <2 x i64> %wide.load1997, %broadcast.splat1993
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %index1995 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 16
  store <2 x i64> %i.zk, ptr %i.zm, align 8, !noalias !5355
  store <2 x i64> %i.zl, ptr %i.zn, align 8, !noalias !5355
  %index.next1998 = add nuw i64 %index1995, 4     ; 2 uses
  %i.zo = icmp eq i64 %index.next1998, %n.vec1991
  br i1 %i.zo, label %middle.block1999, label %vector.body1994, !llvm.loop !5141

middle.block1999:                                 ; preds = %vector.body1994
  %cmp.n2000 = icmp eq i64 %i.zd, %n.vec1991
  br i1 %cmp.n2000, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterxENCNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2D_12ListArrayExt15trimmed_offsets0EE9from_iterB2F_.exit.i, label %.preheader.i.i.i.i.i234.preheader2008

.preheader.i.i.i.i.i234.preheader2008:            ; preds = %.preheader.i.i.i.i.i234.preheader, %middle.block1999
  %.ph2009 = phi i64 [ 0, %.preheader.i.i.i.i.i234.preheader ], [ %n.vec1991, %middle.block1999 ] ; 3 uses
  %xtraiter = and i64 %i.zd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i234.prol.loopexit, label %.preheader.i.i.i.i.i234.prol

.preheader.i.i.i.i.i234.prol:                     ; preds = %.preheader.i.i.i.i.i234.preheader2008, %.preheader.i.i.i.i.i234.prol
  %i.zp = phi i64 [ %i.zt, %.preheader.i.i.i.i.i234.prol ], [ %.ph2009, %.preheader.i.i.i.i.i234.preheader2008 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.i.i.i234.prol ], [ 0, %.preheader.i.i.i.i.i234.preheader2008 ]
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %i.yv, i64 %i.zp
  %.val16.i.i.i.i.i.i.i.i235.prol = load i64, ptr %i.zq, align 8, !noalias !5354, !noundef !10
  %i.zr = sub i64 %.val16.i.i.i.i.i.i.i.i235.prol, %i.zb
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %i.zp
  store i64 %i.zr, ptr %i.zs, align 8, !noalias !5355
  %i.zt = add nuw nsw i64 %i.zp, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.i.i.i234.prol.loopexit, label %.preheader.i.i.i.i.i234.prol, !llvm.loop !5142

.preheader.i.i.i.i.i234.prol.loopexit:            ; preds = %.preheader.i.i.i.i.i234.prol, %.preheader.i.i.i.i.i234.preheader2008
  %.unr = phi i64 [ %.ph2009, %.preheader.i.i.i.i.i234.preheader2008 ], [ %i.zt, %.preheader.i.i.i.i.i234.prol ]
  %i.zu = sub nsw i64 %.ph2009, %i.zd
  %i.zv = icmp ugt i64 %i.zu, -4
  br i1 %i.zv, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterxENCNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2D_12ListArrayExt15trimmed_offsets0EE9from_iterB2F_.exit.i, label %.preheader.i.i.i.i.i234

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.sroa.4.0.ph.i.i.i.i250 = phi i64 [ 8, %bb.gr ], [ 0, %bb.gq ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i250, i64 %.idx.i232) #36
          to label %.noexc255 unwind label %.body109.thread453

.body109.thread453:                               ; preds = %bb.gs
  %i.zw = landingpad { ptr, i32 }
          cleanup
  br label %.body109.thread

.noexc255:                                        ; preds = %bb.gs
  unreachable

.preheader.i.i.i.i.i234:                          ; preds = %.preheader.i.i.i.i.i234.prol.loopexit, %.preheader.i.i.i.i.i234
  %i.zx = phi i64 [ %i.aan, %.preheader.i.i.i.i.i234 ], [ %.unr, %.preheader.i.i.i.i.i234.prol.loopexit ] ; 6 uses
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.yv, i64 %i.zx
  %.val16.i.i.i.i.i.i.i.i235 = load i64, ptr %i.zy, align 8, !noalias !5354, !noundef !10
  %i.zz = sub i64 %.val16.i.i.i.i.i.i.i.i235, %i.zb
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %i.zx
  store i64 %i.zz, ptr %i.aaa, align 8, !noalias !5355
  %i.aab = add nuw nsw i64 %i.zx, 1               ; 2 uses
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.yv, i64 %i.aab
  %.val16.i.i.i.i.i.i.i.i235.1 = load i64, ptr %i.aac, align 8, !noalias !5354, !noundef !10
  %i.aad = sub i64 %.val16.i.i.i.i.i.i.i.i235.1, %i.zb
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %i.aab
  store i64 %i.aad, ptr %i.aae, align 8, !noalias !5355
  %i.aaf = add nuw nsw i64 %i.zx, 2               ; 2 uses
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.yv, i64 %i.aaf
  %.val16.i.i.i.i.i.i.i.i235.2 = load i64, ptr %i.aag, align 8, !noalias !5354, !noundef !10
  %i.aah = sub i64 %.val16.i.i.i.i.i.i.i.i235.2, %i.zb
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %i.aaf
  store i64 %i.aah, ptr %i.aai, align 8, !noalias !5355
  %i.aaj = add nuw nsw i64 %i.zx, 3               ; 2 uses
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.yv, i64 %i.aaj
  %.val16.i.i.i.i.i.i.i.i235.3 = load i64, ptr %i.aak, align 8, !noalias !5354, !noundef !10
  %i.aal = sub i64 %.val16.i.i.i.i.i.i.i.i235.3, %i.zb
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %i.aaj
  store i64 %i.aal, ptr %i.aam, align 8, !noalias !5355
  %i.aan = add nuw nsw i64 %i.zx, 4               ; 2 uses
  %i.aao = icmp eq i64 %i.aan, %i.zd
  br i1 %i.aao, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterxENCNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2D_12ListArrayExt15trimmed_offsets0EE9from_iterB2F_.exit.i, label %.preheader.i.i.i.i.i234, !llvm.loop !5143

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterxENCNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2D_12ListArrayExt15trimmed_offsets0EE9from_iterB2F_.exit.i: ; preds = %.preheader.i.i.i.i.i234.prol.loopexit, %.preheader.i.i.i.i.i234, %middle.block1999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5352
  call void @llvm.experimental.noalias.scope.decl(metadata !5356)
  %i.aap = icmp sgt i64 %i.yx, -1
  %5 = and i64 %i.yx, 9223372036854775800         ; 3 uses
  call void @llvm.assume(i1 %i.aap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5357
  store i64 1, ptr %i.j, align 8, !noalias !5357
  store i64 1, ptr %i.ef, align 8, !noalias !5357
  store ptr %i.ze, ptr %i.eg, align 8, !noalias !5357
  store i64 %5, ptr %.sroa.42.0..sroa_idx.i.i236, align 8, !noalias !5357
  store ptr null, ptr %.sroa.53.0..sroa_idx.i.i237, align 8, !noalias !5357
  store i64 8, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i238, align 8, !noalias !5357
  store i64 %5, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i239, align 8, !noalias !5357
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !5358
  %i.aaq = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #39, !noalias !5358 ; 4 uses
  %i.aar = icmp eq ptr %i.aaq, null
  br i1 %i.aar, label %bb.gt, label %_RNvXs5_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferxEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4fromCsc2V0exE7CWf_11lance_arrow.exit.i, !prof !11

bb.gt:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterxENCNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2D_12ListArrayExt15trimmed_offsets0EE9from_iterB2F_.exit.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc.i.i249 unwind label %bb.gu, !noalias !5357

.noexc.i.i249:                                    ; preds = %bb.gt
  unreachable

bb.gu:                                            ; preds = %bb.gt
  %i.aas = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j) #37
          to label %.body109.thread unwind label %bb.gv, !noalias !5357

bb.gv:                                            ; preds = %bb.gu
  %i.aat = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5357
  unreachable

_RNvXs5_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferxEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4fromCsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterxENCNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2D_12ListArrayExt15trimmed_offsets0EE9from_iterB2F_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aaq, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5357
  store ptr %i.aaq, ptr %i.k, align 8, !alias.scope !5356, !noalias !5359
  store ptr %i.ze, ptr %.sroa.4.0..sroa_idx.i.i240, align 8, !alias.scope !5356, !noalias !5359
  store i64 %5, ptr %.sroa.5.0..sroa_idx.i.i241, align 8, !alias.scope !5356, !noalias !5359
  call void @llvm.experimental.noalias.scope.decl(metadata !5360)
  call void @llvm.experimental.noalias.scope.decl(metadata !5361)
  %i.aau = load i64, ptr %i.ze, align 8, !alias.scope !5362, !noalias !5363, !noundef !10 ; 2 uses
  %i.aav = icmp sgt i64 %i.aau, -1
  br i1 %i.aav, label %.split.us.i.i.i246.preheader, label %.invoke.i.i242, !prof !15

.split.us.i.i.i246.preheader:                     ; preds = %_RNvXs5_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferxEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4fromCsc2V0exE7CWf_11lance_arrow.exit.i
  %.not16.not.i.i.i2471983 = icmp samesign ult i64 %i.yx, 16
  br i1 %.not16.not.i.i.i2471983, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB2_12OffsetBufferxE3newCsc2V0exE7CWf_11lance_arrow.exit.i, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkRSxNCNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB1j_12OffsetBufferxE3new0E0Csc2V0exE7CWf_11lance_arrow.exit.us.i.i.i

bb.gw:                                            ; preds = %.invoke.i.i242
  %i.aaw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aax = atomicrmw sub ptr %i.aaq, i64 1 release, align 8, !noalias !5364
  %i.aay = icmp eq i64 %i.aax, 1
  br i1 %i.aay, label %bb.gx, label %.body109.thread

bb.gx:                                            ; preds = %bb.gw
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body109.thread unwind label %bb.gy, !noalias !5365

.split.us.i.i.i246:                               ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkRSxNCNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB1j_12OffsetBufferxE3new0E0Csc2V0exE7CWf_11lance_arrow.exit.us.i.i.i
  %i.aaz = add nsw i64 %i.aba, -1                 ; 2 uses
  %.not16.not.i.i.i247 = icmp ult i64 %i.aaz, 2
  br i1 %.not16.not.i.i.i247, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB2_12OffsetBufferxE3newCsc2V0exE7CWf_11lance_arrow.exit.i, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkRSxNCNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB1j_12OffsetBufferxE3new0E0Csc2V0exE7CWf_11lance_arrow.exit.us.i.i.i

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkRSxNCNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB1j_12OffsetBufferxE3new0E0Csc2V0exE7CWf_11lance_arrow.exit.us.i.i.i: ; preds = %.split.us.i.i.i246.preheader, %.split.us.i.i.i246
  %i.aba = phi i64 [ %i.aaz, %.split.us.i.i.i246 ], [ %i.zd, %.split.us.i.i.i246.preheader ]
  %i.abb = phi ptr [ %i.abd, %.split.us.i.i.i246 ], [ %i.ze, %.split.us.i.i.i246.preheader ]
  %i.abc = phi i64 [ %i.abe, %.split.us.i.i.i246 ], [ %i.aau, %.split.us.i.i.i246.preheader ]
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abb, i64 8 ; 2 uses
  %i.abe = load i64, ptr %i.abd, align 8, !alias.scope !5366, !noalias !5367, !noundef !10 ; 2 uses
  %.not.i.us.i.i.i248 = icmp sgt i64 %i.abc, %i.abe
  br i1 %.not.i.us.i.i.i248, label %.invoke.i.i242, label %.split.us.i.i.i246

.invoke.i.i242:                                   ; preds = %_RNvXs5_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferxEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4fromCsc2V0exE7CWf_11lance_arrow.exit.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkRSxNCNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB1j_12OffsetBufferxE3new0E0Csc2V0exE7CWf_11lance_arrow.exit.us.i.i.i
  %i.abf = phi ptr [ @200, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkRSxNCNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB1j_12OffsetBufferxE3new0E0Csc2V0exE7CWf_11lance_arrow.exit.us.i.i.i ], [ @198, %_RNvXs5_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferxEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4fromCsc2V0exE7CWf_11lance_arrow.exit.i ]
  %i.abg = phi ptr [ inttoptr (i64 81 to ptr), %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkRSxNCNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB1j_12OffsetBufferxE3new0E0Csc2V0exE7CWf_11lance_arrow.exit.us.i.i.i ], [ inttoptr (i64 61 to ptr), %_RNvXs5_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferxEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4fromCsc2V0exE7CWf_11lance_arrow.exit.i ]
  %i.abh = phi ptr [ @201, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkRSxNCNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB1j_12OffsetBufferxE3new0E0Csc2V0exE7CWf_11lance_arrow.exit.us.i.i.i ], [ @199, %_RNvXs5_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferxEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4fromCsc2V0exE7CWf_11lance_arrow.exit.i ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %i.abf, ptr noundef nonnull %i.abg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abh) #36
          to label %.cont.i.i245 unwind label %bb.gw, !noalias !5368

.cont.i.i245:                                     ; preds = %.invoke.i.i242
  unreachable

bb.gy:                                            ; preds = %bb.gx
  %i.abi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5365
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB2_12OffsetBufferxE3newCsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %.split.us.i.i.i246, %.split.us.i.i.i246.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !alias.scope !5369, !noalias !5351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5352
  br label %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2_12ListArrayExt15trimmed_offsetsB4_.exit

bb.gz:                                            ; preds = %bb.gn
  %i.abj = load ptr, ptr %i.yu, align 8, !alias.scope !5351, !noalias !5350, !nonnull !10, !noundef !10 ; 2 uses
  %i.abk = atomicrmw add ptr %i.abj, i64 1 monotonic, align 8, !noalias !5352
  %i.abl = icmp slt i64 %i.abk, 0
  br i1 %i.abl, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  store ptr %i.abj, ptr %i.bd, align 8, !alias.scope !5350, !noalias !5351
  store ptr %i.yv, ptr %.sroa.49.0..sroa_idx.i251, align 8, !alias.scope !5350, !noalias !5351
  store i64 %i.yx, ptr %.sroa.510.0..sroa_idx.i252, align 8, !alias.scope !5350, !noalias !5351
  br label %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2_12ListArrayExt15trimmed_offsetsB4_.exit

bb.hb:                                            ; preds = %bb.gz
  call void @llvm.trap()
  unreachable

bb.hc:                                            ; preds = %bb.gk
  call void @llvm.trap()
  unreachable

.body109:                                         ; preds = %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2_12ListArrayExt15trimmed_offsetsB4_.exit
  %i.abm = landingpad { ptr, i32 }
          cleanup
  br label %.thread365

_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2_12ListArrayExt15trimmed_offsetsB4_.exit: ; preds = %bb.ha, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB2_12OffsetBufferxE3newCsc2V0exE7CWf_11lance_arrow.exit.i, %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, ptr noundef nonnull align 8 dereferenceable(48) %i.bg, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke fastcc void @_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArrayxE7try_newCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.ak, ptr noundef nonnull %i.yt, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bd, ptr noundef nonnull %i.yj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.yk, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bc)
          to label %bb.hd unwind label %.body109

bb.hd:                                            ; preds = %_RNvXNtCsc2V0exE7CWf_11lance_arrow4listINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB2_12ListArrayExt15trimmed_offsetsB4_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !5370)
  call void @llvm.experimental.noalias.scope.decl(metadata !5371)
  %i.abn = load i8, ptr %i.ak, align 8, !range !23, !alias.scope !5371, !noalias !5370, !noundef !10
  %i.abo = icmp eq i8 %i.abn, -1
  br i1 %i.abo, label %bb.he, label %bb.hi, !prof !11

bb.he:                                            ; preds = %bb.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !5372
  %i.abp = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.abp, i64 32, i1 false), !noalias !5370
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 43, ptr noundef nonnull %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #36
          to label %bb.hg unwind label %bb.hf, !noalias !5372

bb.hf:                                            ; preds = %bb.he
  %i.abq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ae) #37
          to label %.thread365 unwind label %bb.hh, !noalias !5372

bb.hg:                                            ; preds = %bb.he
  unreachable

bb.hh:                                            ; preds = %bb.hf
  %i.abr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5372
  unreachable

bb.hi:                                            ; preds = %bb.hd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bf, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.ak, i64 112, i1 false), !alias.scope !5372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.experimental.noalias.scope.decl(metadata !5373)
  call void @llvm.experimental.noalias.scope.decl(metadata !5374)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5375
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.jm)
          to label %.noexc263 unwind label %bb.hp

.noexc263:                                        ; preds = %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5375
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jn)
          to label %bb.hm unwind label %bb.hl, !noalias !5373

bb.hj:                                            ; preds = %bb.hn, %bb.hl
  %.pn.i259 = phi { ptr, i32 } [ %i.acc, %bb.hn ], [ %i.abu, %bb.hl ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5376)
  %.val.i.i260 = load i64, ptr %i.i, align 8, !alias.scope !5376, !noalias !5375 ; 2 uses
  %i.abs = icmp eq i64 %.val.i.i260, 0
  br i1 %i.abs, label %bb.ie, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.abt = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val1.i.i261 = load ptr, ptr %i.abt, align 8, !alias.scope !5376, !noalias !5375, !nonnull !10, !noundef !10
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i261, i64 noundef %.val.i.i260, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !5377
  br label %bb.ie

bb.hl:                                            ; preds = %.noexc263
  %i.abu = landingpad { ptr, i32 }
          cleanup
  br label %bb.hj

bb.hm:                                            ; preds = %.noexc263
  %i.abv = getelementptr inbounds nuw i8, ptr %i.jl, i64 120
  %i.abw = load i8, ptr %i.abv, align 8, !range !20, !alias.scope !5374, !noalias !5373, !noundef !10
  %i.abx = getelementptr inbounds nuw i8, ptr %i.jl, i64 112
  %i.aby = load i64, ptr %i.abx, align 8, !alias.scope !5374, !noalias !5373, !noundef !10
  %i.abz = getelementptr inbounds nuw i8, ptr %i.jl, i64 121
  %i.aca = load i8, ptr %i.abz, align 1, !range !20, !alias.scope !5374, !noalias !5373, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5375
  %i.acb = getelementptr inbounds nuw i8, ptr %i.jl, i64 64
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.acb)
          to label %bb.hq unwind label %bb.hn, !noalias !5373

bb.hn:                                            ; preds = %bb.hm
  %i.acc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.h) #37
          to label %bb.hj unwind label %bb.ho, !noalias !5373

bb.ho:                                            ; preds = %bb.hn
  %i.acd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5373
  unreachable

bb.hp:                                            ; preds = %bb.hi
  %i.ace = landingpad { ptr, i32 }
          cleanup
  br label %bb.ie

bb.hq:                                            ; preds = %bb.hm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.eh, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !5374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !5374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !5374
  store i8 %i.abw, ptr %i.ej, align 8, !alias.scope !5373, !noalias !5374
  store i64 %i.aby, ptr %i.ek, align 8, !alias.scope !5373, !noalias !5374
  store i8 %i.aca, ptr %i.el, align 1, !alias.scope !5373, !noalias !5374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5375
  %i.acf = load i64, ptr %i.ck, align 8, !alias.scope !5378, !noalias !5379, !noundef !10 ; 3 uses
  %i.acg = load i64, ptr %i.by, align 8, !range !13, !alias.scope !5378, !noalias !5379, !noundef !10
  %i.ach = icmp eq i64 %i.acf, %i.acg
  br i1 %i.ach, label %bb.hr, label %bb.hu

bb.hr:                                            ; preds = %bb.hq
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.by)
end_hunk_1
begin_hunk_2_@_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE6finishCsc2V0exE7CWf_11lance_arrow:bb.a
  br i1 %i.ew, label %.noexc32.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ex = atomicrmw sub ptr %i.ev, i64 1 release, align 8, !noalias !6499
  %i.ey = icmp eq i64 %i.ex, 1
  br i1 %i.ey, label %bb.ba, label %.noexc32.i

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %.noexc32.i unwind label %bb.y, !noalias !6471

.noexc32.i:                                       ; preds = %bb.ba, %bb.az, %bb.ay
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.q) #37
          to label %.body32.thread unwind label %bb.y, !noalias !6471

.body32.thread:                                   ; preds = %.noexc32.i, %bb.ax, %bb.bf, %bb.be, %bb.bd, %bb.bb, %bb.b
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb.bb ], [ %.pn24.pn.i, %.noexc32.i ], [ %i.fa, %bb.bd ], [ %.pn24.pn.i, %bb.ax ], [ %i.be, %bb.be ], [ %i.al, %bb.b ], [ %i.av, %bb.bf ]
  resume { ptr, i32 } %.pn

bb.bb:                                            ; preds = %bb.n, %bb.o
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(184) %i.ab) #37
          to label %.body32.thread unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bb, %bb.b
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.bd:                                            ; preds = %bb.k
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(184) %i.aa) #37
          to label %.body32.thread unwind label %bb.bc

bb.be:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(184) %i.z) #37
          to label %.body32.thread unwind label %bb.bc

bb.bf:                                            ; preds = %bb.e
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(184) %i.y) #37
          to label %.body32.thread unwind label %bb.bc
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBN_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsc2V0exE7CWf_11lance_arrow(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6538)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6538
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8        ; 3 uses
  %i.f = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.g = xor <2 x i64> %i.f, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.g, ptr %i.b, align 16, !alias.scope !6539, !noalias !6538
  %i.h = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.i = xor <2 x i64> %i.h, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !6539, !noalias !6538
  store <2 x i64> %i.e, ptr %.sroa.711.0..sroa_idx.i.i, align 16, !alias.scope !6539, !noalias !6538
  %.sroa.913.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !alias.scope !6539, !noalias !6538
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i = load ptr, ptr %i.j, align 8, !alias.scope !6538, !noalias !6540, !nonnull !10, !noundef !10 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i = load i64, ptr %i.k, align 8, !alias.scope !6538, !noalias !6540, !noundef !10 ; 3 uses
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i), !noalias !6538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6541
  store i8 -1, ptr %i.a, align 1, !noalias !6541
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !6542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6541
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !6543, !noalias !6538
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !6543, !noalias !6538
  %.sroa.17.0.copyload.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !6543, !noalias !6538 ; 3 uses
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !alias.scope !6543, !noalias !6538
  %i.l = load i64, ptr %.sroa.913.0..sroa_idx.i.i, align 16, !alias.scope !6543, !noalias !6538, !noundef !10
  %i.m = shl i64 %i.l, 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !6543, !noalias !6538, !noundef !10
  %i.p = or i64 %i.m, %i.o                        ; 2 uses
  %i.q = xor i64 %i.p, %.sroa.22.0.copyload.i.i.i ; 3 uses
  %i.r = add i64 %.sroa.17.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i ; 3 uses
  %i.s = add i64 %i.q, %.sroa.10.0.copyload.i.i.i ; 2 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i, i64 %.sroa.17.0.copyload.i.i.i, i64 13)
  %i.u = xor i64 %i.t, %i.r                       ; 3 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 16)
  %i.w = xor i64 %i.v, %i.s                       ; 3 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 32)
  %i.y = add i64 %i.s, %i.u                       ; 3 uses
  %i.z = add i64 %i.w, %i.x                       ; 2 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 17)
  %i.ab = xor i64 %i.y, %i.aa                     ; 3 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 21)
  %i.ad = xor i64 %i.ac, %i.z                     ; 3 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 32)
  %i.af = xor i64 %i.z, %i.p
  %i.ag = xor i64 %i.ae, 255
  %i.ah = add i64 %i.af, %i.ab                    ; 3 uses
  %i.ai = add i64 %i.ad, %i.ag                    ; 2 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 13)
  %i.ak = xor i64 %i.ah, %i.aj                    ; 3 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 16)
  %i.am = xor i64 %i.al, %i.ai                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 32)
  %i.ao = add i64 %i.ak, %i.ai                    ; 3 uses
  %i.ap = add i64 %i.am, %i.an                    ; 2 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 17)
  %i.ar = xor i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 21)
  %i.at = xor i64 %i.as, %i.ap                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 32)
  %i.av = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.aw = add i64 %i.at, %i.au                    ; 2 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ay = xor i64 %i.ax, %i.av                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 16)
  %i.ba = xor i64 %i.az, %i.aw                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 32)
  %i.bc = add i64 %i.ay, %i.aw                    ; 3 uses
  %i.bd = add i64 %i.ba, %i.bb                    ; 2 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 17)
  %i.bf = xor i64 %i.be, %i.bc                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 21)
  %i.bh = xor i64 %i.bg, %i.bd                    ; 3 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 32)
  %i.bj = add i64 %i.bf, %i.bd
  %i.bk = add i64 %i.bh, %i.bi                    ; 2 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 13)
  %i.bm = xor i64 %i.bl, %i.bj                    ; 3 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 16)
  %i.bo = xor i64 %i.bn, %i.bk                    ; 2 uses
  %i.bp = add i64 %i.bm, %i.bk                    ; 3 uses
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 17)
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 21)
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 32)
  %i.bt = xor i64 %i.br, %i.bq
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = xor i64 %i.bu, %i.bp                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6538
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !6544, !noalias !6545, !noundef !10
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.b, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc2V0exE7CWf_11lance_arrow.exit.i, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.bz = invoke { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs8SUNSmrkv52_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, i1 noundef zeroext true)
          to label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc2V0exE7CWf_11lance_arrow.exit.i unwind label %bb.k ; 0 uses

_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !6546, !noalias !6547, !nonnull !10, !noundef !10 ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7.i = load i64, ptr %i.ca, align 8, !alias.scope !6546, !noalias !6547, !noundef !10 ; 4 uses
  %i.cb = lshr i64 %i.bv, 57
  %i.cc = trunc nuw nsw i64 %i.cb to i8           ; 3 uses
  %i.cd = insertelement <16 x i8> poison, i8 %i.cc, i64 0
  %i.ce = shufflevector <16 x i8> %i.cd, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc2V0exE7CWf_11lance_arrow.exit.i
  %.pn.i.i = phi i64 [ %i.bv, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc2V0exE7CWf_11lance_arrow.exit.i ], [ %i.df, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc2V0exE7CWf_11lance_arrow.exit.i ], [ %.sroa.4.120.i.i, %bb.e ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc2V0exE7CWf_11lance_arrow.exit.i ], [ %.sroa.04.122.i.i, %bb.e ]
  %i.cf = phi i64 [ 0, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc2V0exE7CWf_11lance_arrow.exit.i ], [ %i.de, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !6548 ; 3 uses
  %i.ch = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.ce
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not28.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB25_11make_hasherBS_BS_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0Csc2V0exE7CWf_11lance_arrow.exit.thread.i
  %.sroa.01.029.i.i = phi i16 [ %i.cu, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB25_11make_hasherBS_BS_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0Csc2V0exE7CWf_11lance_arrow.exit.thread.i ], [ %i.ci, %bb.c ] ; 3 uses
  %i.cj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.ck = zext nneg i16 %i.cj to i64
  %i.cl = add i64 %.sroa.0.017.i.i, %i.ck
  %i.cm = and i64 %i.cl, %.val7.i
  %i.cn = sub nsw i64 0, %i.cm
  %i.co = getelementptr inbounds [48 x i8], ptr %.val.i, i64 %i.cn ; 3 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 -32
  %.val3.i.i = load i64, ptr %i.cp, align 8, !noalias !6549, !noundef !10
  %i.cq = icmp eq i64 %.val1.i.i, %.val3.i.i
  br i1 %i.cq, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB25_11make_hasherBS_BS_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0Csc2V0exE7CWf_11lance_arrow.exit.i, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB25_11make_hasherBS_BS_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0Csc2V0exE7CWf_11lance_arrow.exit.thread.i, !prof !16

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB25_11make_hasherBS_BS_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0Csc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %.lr.ph.i.i
  %i.cr = getelementptr i8, ptr %i.co, i64 -40
  %.val2.i.i = load ptr, ptr %i.cr, align 8, !noalias !6549, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val2.i.i, i64 %.val1.i.i), !noalias !6549
  %i.cs = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.cs, label %bb.h, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB25_11make_hasherBS_BS_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0Csc2V0exE7CWf_11lance_arrow.exit.thread.i, !prof !17

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB25_11make_hasherBS_BS_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0Csc2V0exE7CWf_11lance_arrow.exit.thread.i, %bb.c
  %.not13.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not13.i.i, label %.thread.i.i, label %bb.d, !prof !11

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB25_11make_hasherBS_BS_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0Csc2V0exE7CWf_11lance_arrow.exit.thread.i: ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB25_11make_hasherBS_BS_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0Csc2V0exE7CWf_11lance_arrow.exit.i, %.lr.ph.i.i
  %i.ct = add i16 %.sroa.01.029.i.i, -1
  %i.cu = and i16 %i.ct, %.sroa.01.029.i.i        ; 2 uses
  %.not.i.i = icmp eq i16 %i.cu, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.cv = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.cw = bitcast <16 x i1> %i.cv to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.cw, 0
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !prof !11

.thread24.i.i:                                    ; preds = %bb.d
  %i.cx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cw, i1 true)
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = add i64 %.sroa.0.017.i.i, %i.cy
  %i.da = and i64 %i.cz, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.da, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.db = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.dc = bitcast <16 x i1> %i.db to i16
  %i.dd = icmp eq i16 %i.dc, 0
  br i1 %i.dd, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.de = add i64 %i.cf, 16                       ; 2 uses
  %i.df = add i64 %i.de, %.sroa.0.017.i.i
  br label %bb.c

bb.f:                                             ; preds = %.thread.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !6550, !noundef !10 ; 2 uses
  %i.di = icmp sgt i8 %i.dh, -1
  br i1 %i.di, label %bb.g, label %bb.j, !prof !11

bb.g:                                             ; preds = %bb.f
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !6550
  %i.dj = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.dk = bitcast <16 x i1> %i.dj to i16          ; 2 uses
  %.not.i24.i.i = icmp ne i16 %i.dk, 0
  %i.dl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dk, i1 true)
  %i.dm = zext nneg i16 %i.dl to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i24.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.dm
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !6551
  br label %bb.j

bb.h:                                             ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB25_11make_hasherBS_BS_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0Csc2V0exE7CWf_11lance_arrow.exit.i
  %i.dn = getelementptr inbounds i8, ptr %i.co, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6552)
  %.val.i7 = load i64, ptr %2, align 8, !alias.scope !6552 ; 2 uses
  %i.do = icmp eq i64 %.val.i7, 0
  br i1 %i.do, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc2V0exE7CWf_11lance_arrow.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val.i7, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !6552
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc2V0exE7CWf_11lance_arrow.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.i, %bb.h, %bb.j
  ret void

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.dp = phi i8 [ %.pre, %bb.g ], [ %i.dh, %bb.f ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.dm, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6553)
  %i.dr = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.ds = and i8 %i.dp, 1
  %i.dt = zext nneg i8 %i.ds to i64
  %i.du = add i64 %.sroa.3.0.i.ph.i, -16
  %i.dv = and i64 %i.du, %.val7.i
  store i8 %i.cc, ptr %i.dr, align 1, !noalias !6551
  %i.dw = getelementptr i8, ptr %.val.i, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  store i8 %i.cc, ptr %i.dx, align 1, !noalias !6551
  %i.dy = load <2 x i64>, ptr %i.bw, align 8, !alias.scope !6553, !noalias !6554
  %i.dz = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.dt, i64 0
  %i.ea = sub <2 x i64> %i.dy, %i.dz
  store <2 x i64> %i.ea, ptr %i.bw, align 8, !alias.scope !6553, !noalias !6554
  %i.eb = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.ec = getelementptr inbounds [48 x i8], ptr %.val.i, i64 %i.eb
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ed, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !6553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc2V0exE7CWf_11lance_arrow.exit

bb.k:                                             ; preds = %bb.b
  %i.ee = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6555)
  %.val.i8 = load i64, ptr %3, align 8, !alias.scope !6555 ; 2 uses
  %i.ef = icmp eq i64 %.val.i8, 0
  br i1 %i.ef, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val1.i9 = load ptr, ptr %i.eg, align 8, !alias.scope !6555, !nonnull !10, !noundef !10
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i9, i64 noundef %.val.i8, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !6555
  br label %bb.m

.critedge:                                        ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.ee

bb.m:                                             ; preds = %bb.k, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6556)
  %.val.i11 = load i64, ptr %2, align 8, !alias.scope !6556 ; 2 uses
  %i.eh = icmp eq i64 %.val.i11, 0
  br i1 %i.eh, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val.i11, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !6556
  br label %.critedge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapjuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6584
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load <2 x i64>, ptr %i.c, align 8        ; 3 uses
  %i.e = shufflevector <2 x i64> %i.d, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.f = xor <2 x i64> %i.e, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.f, ptr %i.b, align 16, !alias.scope !6585, !noalias !6584
  %i.g = shufflevector <2 x i64> %i.d, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.h = xor <2 x i64> %i.g, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.h, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !6585, !noalias !6584
  store <2 x i64> %i.d, ptr %.sroa.711.0..sroa_idx.i.i, align 16, !alias.scope !6585, !noalias !6584
  %.sroa.913.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !alias.scope !6585, !noalias !6584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6586
  store i64 %1, ptr %i.a, align 8, !noalias !6586
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8), !noalias !6584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6586
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !6587, !noalias !6584
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !6587, !noalias !6584
  %.sroa.17.0.copyload.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !6587, !noalias !6584 ; 3 uses
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !alias.scope !6587, !noalias !6584
  %i.i = load i64, ptr %.sroa.913.0..sroa_idx.i.i, align 16, !alias.scope !6587, !noalias !6584, !noundef !10
  %i.j = shl i64 %i.i, 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !6587, !noalias !6584, !noundef !10
  %i.m = or i64 %i.j, %i.l                        ; 2 uses
  %i.n = xor i64 %i.m, %.sroa.22.0.copyload.i.i.i ; 3 uses
  %i.o = add i64 %.sroa.17.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i ; 3 uses
  %i.p = add i64 %i.n, %.sroa.10.0.copyload.i.i.i ; 2 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i, i64 %.sroa.17.0.copyload.i.i.i, i64 13)
  %i.r = xor i64 %i.q, %i.o                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 16)
  %i.t = xor i64 %i.s, %i.p                       ; 3 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 32)
  %i.v = add i64 %i.p, %i.r                       ; 3 uses
  %i.w = add i64 %i.t, %i.u                       ; 2 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 17)
  %i.y = xor i64 %i.v, %i.x                       ; 3 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 21)
  %i.aa = xor i64 %i.z, %i.w                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 32)
  %i.ac = xor i64 %i.w, %i.m
  %i.ad = xor i64 %i.ab, 255
  %i.ae = add i64 %i.ac, %i.y                     ; 3 uses
  %i.af = add i64 %i.aa, %i.ad                    ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 13)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 16)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = add i64 %i.ah, %i.af                    ; 3 uses
  %i.am = add i64 %i.aj, %i.ak                    ; 2 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 17)
  %i.ao = xor i64 %i.al, %i.an                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 21)
  %i.aq = xor i64 %i.ap, %i.am                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.as = add i64 %i.ao, %i.am                    ; 3 uses
  %i.at = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 13)
  %i.av = xor i64 %i.au, %i.as                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 16)
  %i.ax = xor i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.az = add i64 %i.av, %i.at                    ; 3 uses
  %i.ba = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 17)
  %i.bc = xor i64 %i.bb, %i.az                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 21)
  %i.be = xor i64 %i.bd, %i.ba                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bg = add i64 %i.bc, %i.ba
  %i.bh = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 13)
  %i.bj = xor i64 %i.bi, %i.bg                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 16)
  %i.bl = xor i64 %i.bk, %i.bh                    ; 2 uses
  %i.bm = add i64 %i.bj, %i.bh                    ; 3 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 17)
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 21)
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 32)
  %i.bq = xor i64 %i.bo, %i.bn
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = xor i64 %i.br, %i.bm                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6584
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !6588, !noalias !6589, !noundef !10
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.b, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTjuEE7reserveNCINvNtB8_3map11make_hasherjuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc2V0exE7CWf_11lance_arrow.exit.i, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.bw = tail call { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTjuEE14reserve_rehashNCINvNtB8_3map11make_hasherjuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECskKR1pP4skmg_5jsonb(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, i1 noundef zeroext true), !noalias !6590 ; 0 uses
  br label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTjuEE7reserveNCINvNtB8_3map11make_hasherjuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc2V0exE7CWf_11lance_arrow.exit.i

_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTjuEE7reserveNCINvNtB8_3map11make_hasherjuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !6591, !noalias !6592, !nonnull !10, !noundef !10 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7.i = load i64, ptr %i.bx, align 8, !alias.scope !6591, !noalias !6592, !noundef !10 ; 4 uses
  %i.by = lshr i64 %i.bs, 57
  %i.bz = trunc nuw nsw i64 %i.by to i8           ; 3 uses
  %i.ca = insertelement <16 x i8> poison, i8 %i.bz, i64 0
  %i.cb = shufflevector <16 x i8> %i.ca, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTjuEE7reserveNCINvNtB8_3map11make_hasherjuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc2V0exE7CWf_11lance_arrow.exit.i
  %.pn.i.i = phi i64 [ %i.bs, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTjuEE7reserveNCINvNtB8_3map11make_hasherjuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc2V0exE7CWf_11lance_arrow.exit.i ], [ %i.da, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTjuEE7reserveNCINvNtB8_3map11make_hasherjuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc2V0exE7CWf_11lance_arrow.exit.i ], [ %.sroa.4.120.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTjuEE7reserveNCINvNtB8_3map11make_hasherjuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc2V0exE7CWf_11lance_arrow.exit.i ], [ %.sroa.04.122.i.i, %bb.f ]
  %i.cc = phi i64 [ 0, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTjuEE7reserveNCINvNtB8_3map11make_hasherjuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc2V0exE7CWf_11lance_arrow.exit.i ], [ %i.cz, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.cd, align 1, !noalias !6593 ; 3 uses
  %i.ce = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.cb
  %i.cf = bitcast <16 x i1> %i.ce to i16          ; 2 uses
  %.not28.i.i = icmp eq i16 %i.cf, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.029.i.i = phi i16 [ %i.cp, %bb.d ], [ %i.cf, %bb.c ] ; 3 uses
  %i.cg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.ch = zext nneg i16 %i.cg to i64
  %i.ci = add i64 %.sroa.0.017.i.i, %i.ch
  %i.cj = and i64 %i.ci, %.val7.i
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -8
  %.val2.i.i = load i64, ptr %i.cm, align 8, !noalias !6594, !noundef !10
  %i.cn = icmp eq i64 %1, %.val2.i.i
  br i1 %i.cn, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTjuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyjjuE0NCINvB1q_11make_hasherjuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc2V0exE7CWf_11lance_arrow.exit, label %bb.d, !prof !15

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not13.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not13.i.i, label %.thread.i.i, label %bb.e, !prof !11

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.co = add i16 %.sroa.01.029.i.i, -1
  %i.cp = and i16 %i.co, %.sroa.01.029.i.i        ; 2 uses
  %.not.i.i = icmp eq i16 %i.cp, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.cq = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.cr, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread24.i.i, !prof !11

.thread24.i.i:                                    ; preds = %bb.e
  %i.cs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cr, i1 true)
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = add i64 %.sroa.0.017.i.i, %i.ct
  %i.cv = and i64 %i.cu, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.cv, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.cw = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.cx = bitcast <16 x i1> %i.cw to i16
  %i.cy = icmp eq i16 %i.cx, 0
  br i1 %i.cy, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.cz = add i64 %i.cc, 16                       ; 2 uses
  %i.da = add i64 %i.cz, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.dc = load i8, ptr %i.db, align 1, !noalias !6590, !noundef !10 ; 2 uses
  %i.dd = icmp sgt i8 %i.dc, -1
  br i1 %i.dd, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !6590
  %i.de = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.df = bitcast <16 x i1> %i.de to i16          ; 2 uses
  %.not.i24.i.i = icmp ne i16 %i.df, 0
  %i.dg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.df, i1 true)
  %i.dh = zext nneg i16 %i.dg to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i24.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.dh
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !6595
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.di = phi i8 [ %.pre, %bb.h ], [ %i.dc, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.dh, %bb.h ], [ %.sroa.4.121.i.i, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6595)
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.dk = and i8 %i.di, 1
  %i.dl = zext nneg i8 %i.dk to i64
  %i.dm = add i64 %.sroa.3.0.i.ph.i, -16
  %i.dn = and i64 %i.dm, %.val7.i
  store i8 %i.bz, ptr %i.dj, align 1, !noalias !6595
  %i.do = getelementptr i8, ptr %.val.i, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  store i8 %i.bz, ptr %i.dp, align 1, !noalias !6595
  %i.dq = load <2 x i64>, ptr %i.bt, align 8, !alias.scope !6595
  %i.dr = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.dl, i64 0
  %i.ds = sub <2 x i64> %i.dq, %i.dr
  store <2 x i64> %i.ds, ptr %i.bt, align 8, !alias.scope !6595
  %i.dt = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.du = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -8
  store i64 %1, ptr %i.dv, align 8, !noalias !6595
  br label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTjuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyjjuE0NCINvB1q_11make_hasherjuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc2V0exE7CWf_11lance_arrow.exit

_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTjuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyjjuE0NCINvB1q_11make_hasherjuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %.lr.ph.i.i, %bb.i
  %.sroa.0.0 = phi i1 [ false, %bb.i ], [ true, %.lr.ph.i.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylE7try_newCsc2V0exE7CWf_11lance_arrow(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %4, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 2 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [16 x i8], align 16               ; 12 uses
  %i.r = alloca [8 x i8], align 8                 ; 10 uses
  store ptr %1, ptr %i.r, align 8
  store ptr %3, ptr %i.q, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %4, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !10
  %i.v = lshr i64 %i.u, 2                         ; 3 uses
  %i.w = add nsw i64 %i.v, -1                     ; 2 uses
  store i64 %i.w, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.b, label %bb.g, !prof !11

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @217) #36
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.z, %bb.y, %bb.q, %bb.m, %bb.w, %bb.u, %bb.o, %bb.n, %bb.j, %bb.g, %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6656)
  %i.y = load ptr, ptr %5, align 8, !alias.scope !6656, !noundef !10 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsc2V0exE7CWf_11lance_arrow.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !6657
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsc2V0exE7CWf_11lance_arrow.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %5)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.ai

bb.f:                                             ; preds = %bb.b
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noundef !10
  %i.ae = getelementptr [4 x i8], ptr %i.ad, i64 %i.v
  %i.af = getelementptr i8, ptr %i.ae, i64 -4     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  %i.ag = load i32, ptr %i.af, align 4, !noundef !10
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  store i64 %i.ah, ptr %i.o, align 8
  %i.ai = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q)
          to label %bb.h unwind label %bb.c

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp ult i64 %i.ai, %i.ah
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %5, align 8, !noundef !10
  %.not66 = icmp eq ptr %i.ak, null
  br i1 %.not66, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.al = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q)
          to label %bb.z unwind label %bb.c

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.an = load i64, ptr %i.am, align 8, !noundef !10 ; 2 uses
  %.not67 = icmp eq i64 %i.an, %i.w
  br i1 %.not67, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.ao = load ptr, ptr %i.r, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.aq = load i8, ptr %i.ap, align 8, !range !20, !noundef !10
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %i.an, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @218, ptr %i.i, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc2V0exE7CWf_11lance_arrow, ptr %.sroa.425.0..sroa_idx, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.p, ptr %i.as, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.429.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.j, ptr %i.at, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.433.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull @221, ptr noundef nonnull %i.i)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.c

bb.n:                                             ; preds = %bb.l
  %i.au = invoke noundef zeroext i1 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_11is_nullable(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q)
          to label %bb.p unwind label %bb.c
end_hunk_2
begin_hunk_3_@_RNvXs2_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferNtB5_9BufferExt16copy_bytes_bytes:bb.a
  %i.ee = add nuw nsw i128 %i.ed, 1
  %i.ef = add i64 %i.dn, 2
  %i.eg = zext i64 %i.ef to i128
  %i.eh = call i128 @llvm.usub.sat.i128(i128 %i.ee, i128 %i.eg)
  %i.ei = xor i64 %i.e, -1
  %i.ej = add i64 %2, %i.ei
  %i.ek = zext i64 %i.ej to i128
  %umin155 = call i128 @llvm.umin.i128(i128 %i.eh, i128 %i.ek)
  %i.el = trunc nuw i128 %umin155 to i64
  %i.em = sub i64 -3, %i.dn
  %i.en = icmp ult i64 %i.em, %i.el
  br i1 %i.en, label %scalar.ph156.preheader, label %vector.ph158

vector.ph158:                                     ; preds = %vector.scevcheck153
  %i.eo = and i64 %i.ec, 31                       ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 0
  %i.eq = select i1 %i.ep, i64 32, i64 %i.eo
  %n.vec159 = sub i64 %i.ec, %i.eq                ; 4 uses
  %i.er = sub i64 %i.q, %n.vec159
  %i.es = getelementptr i8, ptr %i.dq, i64 %n.vec159
  %i.et = add i64 %i.do, %n.vec159
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next163, %vector.body160 ] ; 2 uses
  %next.gep162 = getelementptr i8, ptr %i.dq, i64 %index161 ; 2 uses
  %i.eu = getelementptr i8, ptr %next.gep162, i64 16
  store <16 x i8> zeroinitializer, ptr %next.gep162, align 1
  store <16 x i8> zeroinitializer, ptr %i.eu, align 1
  %index.next163 = add nuw i64 %index161, 32      ; 2 uses
  %i.ev = icmp eq i64 %index.next163, %n.vec159
  br i1 %i.ev, label %scalar.ph156.preheader, label %vector.body160, !llvm.loop !10685

scalar.ph156.preheader:                           ; preds = %vector.body160, %vector.scevcheck153, %.lr.ph146
  %.sroa.0.02737.i145.ph = phi i64 [ %i.q, %vector.scevcheck153 ], [ %i.q, %.lr.ph146 ], [ %i.er, %vector.body160 ]
  %.sroa.0.038.i144.ph = phi ptr [ %i.dq, %vector.scevcheck153 ], [ %i.dq, %.lr.ph146 ], [ %i.es, %vector.body160 ]
  %.ph172 = phi i64 [ %i.do, %vector.scevcheck153 ], [ %i.do, %.lr.ph146 ], [ %i.et, %vector.body160 ]
  br label %scalar.ph156

.lr.ph.i22:                                       ; preds = %scalar.ph156
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i144, i64 1
  %.not.i.not.i = icmp eq i64 %i.ey, 0
  br i1 %.not.i.not.i, label %.thread30.i, label %scalar.ph156, !llvm.loop !10686

.thread30.i:                                      ; preds = %.lr.ph.i22, %.lr.ph.preheader.i
  store i64 %i.dr, ptr %i.o, align 8, !alias.scope !10714
  br label %_RINvMs1_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB6_13MutableBuffer16extend_from_iterhINtNtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_n7RepeatNhEECsc2V0exE7CWf_11lance_arrow.exit

scalar.ph156:                                     ; preds = %scalar.ph156.preheader, %.lr.ph.i22
  %.sroa.0.02737.i145 = phi i64 [ %i.ey, %.lr.ph.i22 ], [ %.sroa.0.02737.i145.ph, %scalar.ph156.preheader ]
  %.sroa.0.038.i144 = phi ptr [ %i.ew, %.lr.ph.i22 ], [ %.sroa.0.038.i144.ph, %scalar.ph156.preheader ] ; 2 uses
  %i.ex = phi i64 [ %i.ez, %.lr.ph.i22 ], [ %.ph172, %scalar.ph156.preheader ] ; 2 uses
  %i.ey = add i64 %.sroa.0.02737.i145, -1         ; 3 uses
  store i8 0, ptr %.sroa.0.038.i144, align 1
  %i.ez = add i64 %i.ex, 1                        ; 2 uses
  %.not.i23 = icmp ugt i64 %i.ez, %i.dm
  br i1 %.not.i23, label %._crit_edge.i24, label %.lr.ph.i22

._crit_edge.i24:                                  ; preds = %scalar.ph156, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i20
  %.sroa.521.0.lcssa.i = phi i64 [ %i.dn, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i20 ], [ %i.ex, %scalar.ph156 ] ; 2 uses
  %.sroa.0.027.lcssa.i = phi i64 [ %i.q, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i20 ], [ %i.ey, %scalar.ph156 ] ; 2 uses
  store i64 %.sroa.521.0.lcssa.i, ptr %i.o, align 8, !alias.scope !10714
  %.not.i.not9.i.i.i = icmp eq i64 %.sroa.0.027.lcssa.i, 0
  br i1 %.not.i.not9.i.i.i, label %_RINvMs1_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB6_13MutableBuffer16extend_from_iterhINtNtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_n7RepeatNhEECsc2V0exE7CWf_11lance_arrow.exit, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %._crit_edge.i24, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMs1_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB1p_13MutableBuffer16extend_from_iterhINtNtNtBc_7sources8repeat_n7RepeatNhEE0E0Csc2V0exE7CWf_11lance_arrow.exit.i.i.i
  %i.fa = phi i64 [ %i.fp, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMs1_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB1p_13MutableBuffer16extend_from_iterhINtNtNtBc_7sources8repeat_n7RepeatNhEE0E0Csc2V0exE7CWf_11lance_arrow.exit.i.i.i ], [ %.sroa.521.0.lcssa.i, %._crit_edge.i24 ] ; 3 uses
  %.sroa.0.010.i.i.i = phi i64 [ %i.fb, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMs1_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB1p_13MutableBuffer16extend_from_iterhINtNtNtBc_7sources8repeat_n7RepeatNhEE0E0Csc2V0exE7CWf_11lance_arrow.exit.i.i.i ], [ %.sroa.0.027.lcssa.i, %._crit_edge.i24 ]
  %i.fb = add i64 %.sroa.0.010.i.i.i, -1          ; 2 uses
  %i.fc = add i64 %i.fa, 1                        ; 5 uses
  %i.fd = icmp eq i64 %i.fa, -1
  br i1 %i.fd, label %.invoke, label %bb.z, !prof !11

bb.z:                                             ; preds = %.lr.ph.i.i.i25
  %i.fe = load i64, ptr %i.p, align 8, !alias.scope !10715, !noundef !10 ; 2 uses
  %i.ff = icmp ugt i64 %i.fc, %i.fe
  br i1 %i.ff, label %bb.aa, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMs1_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB1p_13MutableBuffer16extend_from_iterhINtNtNtBc_7sources8repeat_n7RepeatNhEE0E0Csc2V0exE7CWf_11lance_arrow.exit.i.i.i, !prof !11

bb.aa:                                            ; preds = %bb.z
  %i.fg = and i64 %i.fc, 63
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %.noexc13.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %reass.sub.i.i.i.i.i.i.i26 = and i64 %i.fc, -64
  %i.fi = add i64 %reass.sub.i.i.i.i.i.i.i26, 64  ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.fc
  br i1 %i.fj, label %.invoke, label %.noexc13.i

.noexc13.i:                                       ; preds = %bb.ab, %bb.aa
  %.sroa.4.0.i.i.i.i.i.i.i27 = phi i64 [ %i.fc, %bb.aa ], [ %i.fi, %bb.ab ]
  %i.fk = shl i64 %i.fe, 1
  %.sroa.0.0.i.i.i.i.i.i.i28 = call noundef i64 @llvm.umax.i64(i64 %i.fk, i64 %.sroa.4.0.i.i.i.i.i.i.i27)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i28)
          to label %.noexc38 unwind label %.loopexit

.noexc38:                                         ; preds = %.noexc13.i
  %.pre.i.i.i.i.i.i29 = load i64, ptr %i.o, align 8, !alias.scope !10716
  br label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMs1_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB1p_13MutableBuffer16extend_from_iterhINtNtNtBc_7sources8repeat_n7RepeatNhEE0E0Csc2V0exE7CWf_11lance_arrow.exit.i.i.i

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMs1_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB1p_13MutableBuffer16extend_from_iterhINtNtNtBc_7sources8repeat_n7RepeatNhEE0E0Csc2V0exE7CWf_11lance_arrow.exit.i.i.i: ; preds = %.noexc38, %bb.z
  %i.fl = phi i64 [ %i.fa, %bb.z ], [ %.pre.i.i.i.i.i.i29, %.noexc38 ]
  %i.fm = load ptr, ptr %i.n, align 16, !alias.scope !10716, !nonnull !10, !noundef !10
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl
  store i8 0, ptr %i.fn, align 1
  %i.fo = load i64, ptr %i.o, align 8, !alias.scope !10716, !noundef !10
  %i.fp = add i64 %i.fo, 1                        ; 2 uses
  store i64 %i.fp, ptr %i.o, align 8, !alias.scope !10716
  %.not.i.not.i.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not.i.not.i.i.i, label %_RINvMs1_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB6_13MutableBuffer16extend_from_iterhINtNtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_n7RepeatNhEECsc2V0exE7CWf_11lance_arrow.exit, label %.lr.ph.i.i.i25

_RINvMs1_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB6_13MutableBuffer16extend_from_iterhINtNtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_n7RepeatNhEECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMs1_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB1p_13MutableBuffer16extend_from_iterhINtNtNtBc_7sources8repeat_n7RepeatNhEE0E0Csc2V0exE7CWf_11lance_arrow.exit.i.i.i, %._crit_edge.i24, %.thread30.i
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.ac unwind label %.loopexit.split-lp

bb.ac:                                            ; preds = %_RINvMs1_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB6_13MutableBuffer16extend_from_iterhINtNtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_n7RepeatNhEECsc2V0exE7CWf_11lance_arrow.exit
  %i.fq = load ptr, ptr %i.n, align 16, !nonnull !10, !noundef !10 ; 2 uses
  %i.fr = load i64, ptr %i.o, align 8, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.fq, ptr %i.ft, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.fr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.fu = load <2 x i64>, ptr %i.c, align 16
  store <2 x i64> %i.fu, ptr %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !10717
  %i.fv = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #39, !noalias !10717 ; 3 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.ad, label %bb.ag, !prof !11

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc40 unwind label %bb.ae

.noexc40:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #37
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fv, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.fv, ptr %0, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fq, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fr, ptr %i.ga, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ah:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.n, %bb.u
  %eh.lpad-body.ph = phi { ptr, i32 } [ %lpad.phi.i.i.i, %bb.n ], [ %i.cw, %bb.u ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.ah, %bb.ae, %bb.aj
  %.pn48 = phi { ptr, i32 } [ %i.gc, %bb.aj ], [ %i.fx, %bb.ae ], [ %eh.lpad-body.ph, %bb.ah ]
  resume { ptr, i32 } %.pn48

bb.aj:                                            ; preds = %bb.h, %.split6.i, %bb.f, %bb.b
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !10718)
  call void @llvm.experimental.noalias.scope.decl(metadata !10719)
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !10720, !noundef !10
  %i.gf = load ptr, ptr %1, align 8, !alias.scope !10720, !nonnull !10, !align !12, !noundef !10
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gh = load ptr, ptr %i.gg, align 8, !noalias !10720, !nonnull !10, !noundef !10
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !alias.scope !10720, !noundef !10
  invoke void %i.gh(ptr noundef %i.ge, ptr noundef %i.gj, i64 noundef %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.ai, !inline_history !40
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferNtB5_9BufferExt16from_bytes_bytes(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2) ; 2 uses
  %i.b = icmp samesign ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = icmp eq i64 %i.a, 1
  br i1 %i.d, label %bb.d, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @212, ptr noundef nonnull inttoptr (i64 83 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #36
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noundef !10 ; 2 uses
  %i.g = add i64 %2, -1
  %i.h = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.i = add i64 %i.g, %i.h
  %i.j = sub i64 0, %2
  %i.k = and i64 %i.i, %i.j                       ; 2 uses
  %i.l = sub i64 %i.k, %i.h
  %i.m = icmp ult i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %i.k, %i.h
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.c, align 8, !noundef !10
  tail call void @_RNvXs2_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferNtB5_9BufferExt16copy_bytes_bytes(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1, i64 noundef %i.o)
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.p = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.d ] ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %bb.i, !prof !11

bb.g:                                             ; preds = %bb.n, %bb.e
  ret void

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @354, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @355) #36
          to label %bb.m unwind label %bb.o

bb.i:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !10 ; 3 uses
  %.sroa.08.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !10734
  %i.t = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #39, !noalias !10734 ; 8 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.j, label %bb.n, !prof !11

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #36
          to label %.noexc5 unwind label %bb.k

.noexc5:                                          ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload) ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.08.0.copyload, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !noalias !10735, !nonnull !10, !noundef !10
  invoke void %i.x(ptr noundef %.sroa.6.0.copyload, ptr noundef nonnull %i.p, i64 noundef %i.s)
          to label %.body.thread unwind label %bb.l, !inline_history !10729

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.m:                                             ; preds = %bb.h
  unreachable

bb.n:                                             ; preds = %bb.i
  store i64 1, ptr %i.t, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %.sroa.08.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.p, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i64 %i.s, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %.sroa.6.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer22from_custom_allocation(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %i.p, i64 noundef %i.s, ptr noundef nonnull %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @356)
  br label %bb.g

.body.thread:                                     ; preds = %bb.o, %bb.k
  %eh.lpad-body13 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.o ], [ %i.v, %bb.k ]
  resume { ptr, i32 } %eh.lpad-body13

bb.o:                                             ; preds = %bb.h, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10737)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !10738, !noundef !10
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !10738, !nonnull !10, !align !12, !noundef !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !10738, !nonnull !10, !noundef !10
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !10738, !noundef !10
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !10738, !noundef !10
  invoke void %i.ad(ptr noundef %i.aa, ptr noundef %i.af, i64 noundef %i.ah)
          to label %.body.thread unwind label %bb.p, !inline_history !40

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i8, ptr %1, align 8, !range !24, !noundef !10
  switch i8 %i.d, label %default.unreachable23 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.y
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 26, label %bb.ab
    i8 27, label %bb.ac
    i8 28, label %bb.ad
    i8 29, label %bb.ae
    i8 30, label %bb.af
    i8 31, label %bb.ag
    i8 32, label %bb.ah
    i8 33, label %bb.ai
    i8 34, label %bb.aj
    i8 35, label %bb.ao
    i8 36, label %bb.ap
    i8 37, label %bb.aq
    i8 38, label %bb.ar
    i8 39, label %bb.as
    i8 40, label %bb.at
  ]

default.unreachable23:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8
  br label %bb.au

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8
  br label %bb.au

bb.d:                                             ; preds = %bb.a
  store i8 2, ptr %0, align 8
  br label %bb.au

bb.e:                                             ; preds = %bb.a
  store i8 3, ptr %0, align 8
  br label %bb.au

bb.f:                                             ; preds = %bb.a
  store i8 4, ptr %0, align 8
  br label %bb.au

bb.g:                                             ; preds = %bb.a
  store i8 5, ptr %0, align 8
  br label %bb.au

bb.h:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  br label %bb.au

end_hunk_3
