Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 597
loop-unroll.NumUnrolled: 722
begin_hunk_0_@_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile15evaluate_scopes:bb.a
  %.sroa.5451.0..sroa.44.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5451.0..sroa.44.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8447.8..sroa_idx448, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !57110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !57110
  store i64 -1, ptr %3, align 8, !noalias !57113
  %.val18.i.i = load i64, ptr %i.m, align 8, !range !274, !noalias !57113, !noundef !29 ; 2 uses
  %i.nz = sub nsw i64 %i.nu, %i.ns
  %i.oa = icmp ugt i64 %.val18.i.i, %i.nz
  br i1 %i.oa, label %bb.cj, label %.preheader.i.i, !prof !340

.preheader.i.i:                                   ; preds = %bb.ci
  %i.ob = trunc nuw i64 %.val18.i.i to i1
  br i1 %i.ob, label %.lr.ph.split.i.i, label %bb.cv

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvMs1_CscRggLTdVSaO_11typed_arenaINtB5_9ChunkListINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBV_6string6StringB1L_EE7reserveCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.nq, i64 noundef 1)
          to label %bb.cs unwind label %bb.cw, !noalias !57113

.lr.ph.split.i.i:                                 ; preds = %.preheader.i.i
  %i.oc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.od = icmp eq i64 %i.ns, %i.nu
  br i1 %i.od, label %.split.us.i.i, label %._crit_edge.i.i, !prof !340

.split.us.i.i:                                    ; preds = %.lr.ph.split.i.i
  store i64 0, ptr %i.m, align 8, !noalias !57113
  invoke void @_RNvMs1_CscRggLTdVSaO_11typed_arenaINtB5_9ChunkListINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBV_6string6StringB1L_EE7reserveCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.nq, i64 noundef 1)
          to label %bb.ck unwind label %bb.cq, !noalias !57113

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.i.i
  %i.oe = load ptr, ptr %i.oc, align 8, !alias.scope !57116, !noalias !57119, !nonnull !29, !noundef !29
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.oe, i64 %i.ns ; 2 uses
  store ptr %.sroa.4445.8.copyload446, ptr %i.of, align 8
  %.sroa.5451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5451.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8447.8..sroa_idx448, i64 16, i1 false)
  %i.og = add nuw nsw i64 %i.ns, 1                ; 2 uses
  store i64 %i.og, ptr %i.nr, align 8, !alias.scope !57116, !noalias !57119
  %.pre.i.i = load i64, ptr %3, align 8, !noalias !57113
  %i.oh = add i64 %.pre.i.i, 1
  br label %bb.cv

bb.ck:                                            ; preds = %.split.us.i.i
  %i.oi = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.oj = load i64, ptr %i.oi, align 8, !noalias !57113, !noundef !29 ; 2 uses
  %.not.i.i113 = icmp eq i64 %i.oj, 0
  br i1 %.not.i.i113, label %bb.cl, label %bb.cn, !prof !340

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #71
          to label %bb.cm unwind label %bb.cq, !noalias !57113

bb.cm:                                            ; preds = %bb.cl
  unreachable

bb.cn:                                            ; preds = %bb.ck
  %i.ok = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ol = load ptr, ptr %i.ok, align 8, !noalias !57113, !nonnull !29, !noundef !29
  %i.om = getelementptr [24 x i8], ptr %i.ol, i64 %i.oj ; 3 uses
  %i.on = getelementptr i8, ptr %i.om, i64 -8
  %i.oo = load i64, ptr %i.on, align 8, !noalias !57113, !noundef !29 ; 3 uses
  %i.op = icmp ult i64 %i.oo, 384307168202282326
  tail call void @llvm.assume(i1 %i.op)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !57113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57124)
  %i.oq = getelementptr i8, ptr %i.om, i64 -24
  %i.or = getelementptr i8, ptr %i.om, i64 -16
  %i.os = load ptr, ptr %i.or, align 8, !alias.scope !57124, !noalias !57126, !nonnull !29, !noundef !29
  %i.ot = getelementptr inbounds nuw [24 x i8], ptr %i.os, i64 %i.oo ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %i.oo, ptr %i.ou, align 8, !alias.scope !57121, !noalias !57127
  %i.ov = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 0, ptr %i.ov, align 8, !alias.scope !57121, !noalias !57127
  store ptr %i.ot, ptr %i.n, align 8, !alias.scope !57121, !noalias !57127
  %i.ow = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.ot, ptr %i.ow, align 8, !alias.scope !57121, !noalias !57127
  %i.ox = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.oq, ptr %i.ox, align 8, !alias.scope !57121, !noalias !57127
  invoke fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecINtNtNtNtB8_11collections5btree3map8BTreeMapNtNtB8_6string6StringB1B_EEINtB4_10SpecExtendBT_INtNtB6_5drain5DrainBT_EE11spec_extendCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nq, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.n)
          to label %bb.co unwind label %bb.cq, !noalias !57113

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !57113
  invoke fastcc void @_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1n_EE8push_mutCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nq, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %.sroa.44.0..sroa_idx.i)
          to label %bb.cp unwind label %.thread54.i.i

.thread54.i.i:                                    ; preds = %bb.co
  %lpad.thr_comm.split-lp56.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtB1j_6string6StringB29_EEECskXtk6F4WjxZ_4just.exit20.sink.split.i.i

bb.cp:                                            ; preds = %bb.co
  invoke fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecINtNtNtNtB8_11collections5btree3map8BTreeMapNtNtB8_6string6StringB1B_EEINtB4_10SpecExtendBT_INtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceBT_EE11spec_extendCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nq, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.m)
          to label %bb.cu unwind label %bb.ct, !noalias !57113

bb.cq:                                            ; preds = %bb.cn, %bb.cl, %.split.us.i.i
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %.sroa.44.0..sroa_idx.i) #72
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtB1j_6string6StringB29_EEECskXtk6F4WjxZ_4just.exit20.sink.split.i.i unwind label %bb.cr, !noalias !57110

bb.cr:                                            ; preds = %bb.cw, %bb.cq
  %i.oy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !57113
  unreachable

bb.cs:                                            ; preds = %bb.cj
  invoke fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecINtNtNtNtB8_11collections5btree3map8BTreeMapNtNtB8_6string6StringB1B_EEINtB4_10SpecExtendBT_INtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceBT_EE11spec_extendCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nq, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.o)
          to label %.thread39.i.i unwind label %.split.i.i, !noalias !57110

.thread39.i.i:                                    ; preds = %bb.cs
  %i.oz = load i64, ptr %i.nr, align 8, !noalias !57113, !noundef !29 ; 2 uses
  %i.pa = icmp ult i64 %i.oz, 384307168202282326
  tail call void @llvm.assume(i1 %i.pa)
  %i.pb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.pc = load i64, ptr %3, align 8, !noalias !57113, !noundef !29
  %i.pd = add i64 %i.pc, 1
  br label %_RINvMCscRggLTdVSaO_11typed_arenaINtB3_5ArenaINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBP_6string6StringB1F_EE12alloc_extendINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceBG_EECskXtk6F4WjxZ_4just.exit.i

bb.ct:                                            ; preds = %bb.cp
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtB1j_6string6StringB29_EEECskXtk6F4WjxZ_4just.exit20.sink.split.i.i

bb.cu:                                            ; preds = %bb.cp
  %i.pe = load i64, ptr %i.nr, align 8, !noalias !57113, !noundef !29 ; 2 uses
  %i.pf = icmp ult i64 %i.pe, 384307168202282326
  tail call void @llvm.assume(i1 %i.pf)
  %i.pg = load i64, ptr %3, align 8, !noalias !57113, !noundef !29
  %i.ph = add i64 %i.pg, 1
  br label %_RINvMCscRggLTdVSaO_11typed_arenaINtB3_5ArenaINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBP_6string6StringB1F_EE12alloc_extendINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceBG_EECskXtk6F4WjxZ_4just.exit.i

bb.cv:                                            ; preds = %._crit_edge.i.i, %.preheader.i.i
  %i.pi = phi i64 [ %i.oh, %._crit_edge.i.i ], [ 0, %.preheader.i.i ]
  %i.pj = phi i64 [ %i.og, %._crit_edge.i.i ], [ %i.ns, %.preheader.i.i ] ; 2 uses
  %i.pk = icmp samesign ult i64 %i.pj, 384307168202282326
  tail call void @llvm.assume(i1 %i.pk)
  %i.pl = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %_RINvMCscRggLTdVSaO_11typed_arenaINtB3_5ArenaINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBP_6string6StringB1F_EE12alloc_extendINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceBG_EECskXtk6F4WjxZ_4just.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtB1j_6string6StringB29_EEECskXtk6F4WjxZ_4just.exit20.sink.split.i.i: ; preds = %bb.ct, %bb.cq, %.thread54.i.i, %.split.i.i
  %.pn1534.ph.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp56.i.i, %.thread54.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.ct ], [ %i.ny, %.split.i.i ], [ %lpad.thr_comm.i.i, %bb.cq ]
  %i.pm = load i64, ptr %3, align 8, !noalias !57113, !noundef !29
  %i.pn = add i64 %i.pm, 1
  store i64 %i.pn, ptr %3, align 8, !noalias !57113
  br label %common.resume

bb.cw:                                            ; preds = %bb.cj
  %i.po = landingpad { ptr, i32 }
          cleanup
  %i.pp = load i64, ptr %3, align 8, !noalias !57113, !noundef !29
  %i.pq = add i64 %i.pp, 1
  store i64 %i.pq, ptr %3, align 8, !noalias !57113
  %i.pr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.pr)
          to label %common.resume unwind label %bb.cr, !noalias !57113

_RINvMCscRggLTdVSaO_11typed_arenaINtB3_5ArenaINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBP_6string6StringB1F_EE12alloc_extendINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceBG_EECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.cv, %bb.cu, %.thread39.i.i
  %.sink.i.i = phi i64 [ %i.pi, %bb.cv ], [ %i.ph, %bb.cu ], [ %i.pd, %.thread39.i.i ]
  %.in.i.i = phi ptr [ %i.pl, %bb.cv ], [ %i.oc, %bb.cu ], [ %i.pb, %.thread39.i.i ]
  %i.ps = phi i64 [ %i.pj, %bb.cv ], [ %i.pe, %bb.cu ], [ %i.oz, %.thread39.i.i ]
  %.sroa.01.142.i.i = phi i64 [ %i.ns, %bb.cv ], [ 0, %bb.cu ], [ 0, %.thread39.i.i ] ; 2 uses
  %i.pt = load ptr, ptr %.in.i.i, align 8, !noalias !57113, !nonnull !29, !noundef !29
  store i64 %.sink.i.i, ptr %3, align 8, !noalias !57113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !57110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !57110
  %.not.i112 = icmp eq i64 %i.ps, %.sroa.01.142.i.i
  br i1 %.not.i112, label %bb.cx, label %_RNvMCscRggLTdVSaO_11typed_arenaINtB2_5ArenaINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBO_6string6StringB1E_EE15alloc_slow_pathCskXtk6F4WjxZ_4just.exit

bb.cx:                                            ; preds = %_RINvMCscRggLTdVSaO_11typed_arenaINtB3_5ArenaINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBP_6string6StringB1F_EE12alloc_extendINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceBG_EECskXtk6F4WjxZ_4just.exit.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @782) #75, !noalias !57110
  unreachable

_RNvMCscRggLTdVSaO_11typed_arenaINtB2_5ArenaINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBO_6string6StringB1E_EE15alloc_slow_pathCskXtk6F4WjxZ_4just.exit: ; preds = %_RINvMCscRggLTdVSaO_11typed_arenaINtB3_5ArenaINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBP_6string6StringB1F_EE12alloc_extendINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceBG_EECskXtk6F4WjxZ_4just.exit.i
  %i.pu = getelementptr inbounds nuw [24 x i8], ptr %i.pt, i64 %.sroa.01.142.i.i
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cd
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !57128, !noalias !57131
  %i.pv = getelementptr inbounds nuw [24 x i8], ptr %.pre.i, i64 %i.ns
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pv, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %i.pw = add nuw nsw i64 %i.ns, 1
  store i64 %i.pw, ptr %i.nr, align 8, !alias.scope !57128, !noalias !57131
  %i.px = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !57106, !nonnull !29, !noundef !29
  %i.py = getelementptr inbounds nuw [24 x i8], ptr %i.px, i64 %i.ns
  %.pre10.i = load i64, ptr %3, align 8, !noalias !57106
  %i.pz = add i64 %.pre10.i, 1
  store i64 %i.pz, ptr %3, align 8, !noalias !57106
  br label %bb.cz

bb.cz:                                            ; preds = %_RNvMCscRggLTdVSaO_11typed_arenaINtB2_5ArenaINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBO_6string6StringB1E_EE15alloc_slow_pathCskXtk6F4WjxZ_4just.exit, %bb.cy
  %.sroa.014.0 = phi ptr [ %i.pu, %_RNvMCscRggLTdVSaO_11typed_arenaINtB2_5ArenaINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBO_6string6StringB1E_EE15alloc_slow_pathCskXtk6F4WjxZ_4just.exit ], [ %i.py, %bb.cy ] ; 6 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 395
  %i.qb = load i8, ptr %i.qa, align 1, !range !273
  %i.qc = trunc nuw i8 %i.qb to i1
  %or.cond529 = select i1 %6, i1 true, i1 %i.qc   ; 2 uses
  br i1 %or.cond529, label %.preheader533, label %bb.da

bb.da:                                            ; preds = %bb.cz, %.thread
  %.sroa.0359.0 = phi ptr [ %.sroa.0386.0.copyload, %.thread ], [ null, %bb.cz ] ; 8 uses
  %.sroa.11360.0 = phi i64 [ %.sroa.4390.0.copyload, %.thread ], [ undef, %bb.cz ] ; 11 uses
  %.sroa.15361.0 = phi i1 [ %i.yd, %.thread ], [ undef, %bb.cz ]
  %.sroa.16.0 = phi i64 [ %.sroa.7393.0.copyload, %.thread ], [ undef, %bb.cz ]
  %.sroa.17.0 = phi i64 [ %.sroa.8394.0.copyload, %.thread ], [ undef, %bb.cz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.622.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11400)
  %.not97 = icmp eq ptr %.sroa.0359.0, null       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !57133)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !57136
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !57136
  store ptr null, ptr %i.k, align 8, !noalias !57136
  %i.qe = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %i.qe, align 8, !noalias !57136
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 396
  %i.qg = load i8, ptr %i.qf, align 4, !range !273, !alias.scope !57133, !noalias !57144, !noundef !29
  %i.qh = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16 ; 2 uses
  %i.qj = load i8, ptr %i.qi, align 8, !range !273, !noalias !57145, !noundef !29
  %i.qk = trunc nuw i8 %i.qj to i1
  br i1 %i.qk, label %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i, label %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i, !prof !36

._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i: ; preds = %bb.da
  %.pre.i.i.i = load i64, ptr %i.qh, align 8, !noalias !57154
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !57154
  br label %bb.dc

_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.da
  %i.ql = invoke { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc.i unwind label %bb.db, !noalias !57155 ; 2 uses

.noexc.i:                                         ; preds = %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i
  %i.qm = extractvalue { i64, i64 } %i.ql, 0
  %i.qn = extractvalue { i64, i64 } %i.ql, 1      ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  store i64 %i.qn, ptr %i.qo, align 8, !noalias !57156
  store i8 1, ptr %i.qi, align 8, !noalias !57156
  br label %bb.dc

bb.db:                                            ; preds = %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i
  %i.qp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #72
          to label %.body unwind label %bb.dw, !noalias !57155

bb.dc:                                            ; preds = %.noexc.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i
  %.pre-phi122.i = phi i64 [ %.pre1.i.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i ], [ %i.qn, %.noexc.i ]
  %i.qq = phi i64 [ %.pre.i.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i ], [ %i.qm, %.noexc.i ] ; 2 uses
  %i.qr = add i64 %i.qq, 1
  store i64 %i.qr, ptr %i.qh, align 8, !noalias !57154
  %i.qs = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store ptr %i.qd, ptr %i.qs, align 8, !noalias !57136
  %i.qt = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %2, ptr %i.qt, align 8, !noalias !57136
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %.sroa.014.0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !57136
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %1, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !57136
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr %4, ptr %.sroa.65.0..sroa_idx.i, align 8, !noalias !57136
  %.sroa.76.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store ptr %7, ptr %.sroa.76.0..sroa_idx.i, align 8, !noalias !57136
  %.sroa.87.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store ptr %10, ptr %.sroa.87.0..sroa_idx.i, align 8, !noalias !57136
  %i.qu = getelementptr inbounds nuw i8, ptr %i.l, i64 136 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qu, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !57136
  %i.qv = getelementptr inbounds nuw i8, ptr %i.l, i64 248
  store i8 0, ptr %i.qv, align 8, !noalias !57136
  %i.qw = getelementptr inbounds nuw i8, ptr %i.l, i64 249
  store i8 %i.qg, ptr %i.qw, align 1, !noalias !57136
  %i.qx = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 3 uses
  store ptr @124, ptr %i.qx, align 8, !noalias !57136
  %.sroa.5.0..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %i.l, i64 88 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i115, align 8, !noalias !57136
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @125, i64 16), i64 16, i1 false), !noalias !57136
  %.sroa.654.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store i64 %i.qq, ptr %.sroa.654.0..sroa_idx.i, align 8, !noalias !57136
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  store i64 %.pre-phi122.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !57136
  %i.qy = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  store ptr %4, ptr %i.qy, align 8, !noalias !57136
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  store i8 -1, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !57136
  %i.qz = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  store i64 0, ptr %i.qz, align 8, !noalias !57136
  store ptr null, ptr %i.l, align 8, !noalias !57136
  %.sroa.457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.457.0..sroa_idx.i, align 8, !noalias !57136
  %.sroa.558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %7, ptr %.sroa.558.0..sroa_idx.i, align 8, !noalias !57136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !57136
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rb = load ptr, ptr %i.ra, align 8, !alias.scope !57133, !noalias !57144, !nonnull !29, !noundef !29 ; 6 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rd = load i64, ptr %i.rc, align 8, !alias.scope !57133, !noalias !57144, !noundef !29 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.rd, 72
  %i.re = getelementptr inbounds nuw i8, ptr %i.rb, i64 %.idx.i
  %i.rf = icmp eq i64 %i.rd, 0
  br i1 %i.rf, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.dc
  %.val48.i = load ptr, ptr %i.qd, align 8, !alias.scope !57133, !noalias !57144
  %.val48.fr.i = freeze ptr %.val48.i             ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 656
  %.val49.i = load i64, ptr %i.rg, align 8, !alias.scope !57133, !noalias !57144
  %.not.i.i.i116 = icmp eq ptr %.val48.fr.i, null
  br i1 %.not.i.i.i116, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !57159)
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  %i.ri = load ptr, ptr %i.rh, align 8, !alias.scope !57159, !noalias !57155, !nonnull !29, !noundef !29 ; 5 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rb, i64 24
  %i.rk = load i64, ptr %i.rj, align 8, !alias.scope !57159, !noalias !57155, !noundef !29 ; 6 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rb, i64 56
  %i.rm = load i64, ptr %i.rl, align 8, !alias.scope !57159, !noalias !57155, !noundef !29 ; 8 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rb, i64 40
  %i.ro = load i64, ptr %i.rn, align 8, !alias.scope !57159, !noalias !57155, !noundef !29
  %i.rp = add i64 %i.ro, %i.rm                    ; 7 uses
  %i.rq = icmp ugt i64 %i.rm, %i.rp
  %i.rr = icmp ugt i64 %i.rp, %i.rk
  %or.cond.i.i.us.i = or i1 %i.rq, %i.rr
  br i1 %or.cond.i.i.us.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i, label %bb.dd, !prof !160

bb.dd:                                            ; preds = %.lr.ph.split.us.i
  %i.rs = icmp eq i64 %i.rm, %i.rk
  br i1 %i.rs, label %.loopexit.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.rt = icmp eq i64 %i.rm, 0
  br i1 %i.rt, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rm
  %i.rv = load i8, ptr %i.ru, align 1, !alias.scope !57162, !noalias !57165, !noundef !29
  %i.rw = icmp sgt i8 %i.rv, -65
  br i1 %i.rw, label %bb.dg, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i, !prof !165

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.rx = icmp eq i64 %i.rp, %i.rk
  br i1 %i.rx, label %.loopexit.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.us.i

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.us.i: ; preds = %bb.dg
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rp
  %i.rz = load i8, ptr %i.ry, align 1, !alias.scope !57162, !noalias !57165, !noundef !29
  %i.sa = icmp sgt i8 %i.rz, -65
  br i1 %i.sa, label %.loopexit.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i, !prof !166

._crit_edge.i.loopexit:                           ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB4_9Evaluator20evaluate_assignments0B6_.exit.thread.i
  %.sroa.7397.8.copyload399.pre = load ptr, ptr %i.l, align 8, !noalias !57166
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.dc
  %.sroa.7397.8.copyload399 = phi ptr [ %.sroa.7397.8.copyload399.pre, %._crit_edge.i.loopexit ], [ null, %bb.dc ] ; 3 uses
  %.sroa.11400.8..sroa_idx401 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11400, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11400.8..sroa_idx401, i64 24, i1 false), !noalias !57166
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.qu)
          to label %bb.dy unwind label %bb.dx, !noalias !57155

.loopexit.i122:                                   ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB4_9Evaluator20evaluate_assignments0B6_.exit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

.loopexit.split-lp.i:                             ; preds = %.loopexit.i.i, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dh:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i122
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i122 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9evaluator9EvaluatorEBF_(ptr noalias nofree noundef align 8 dereferenceable(256) %i.l) #72
          to label %.body unwind label %bb.dw, !noalias !57155

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB4_9Evaluator20evaluate_assignments0B6_.exit.thread.i
  %.sroa.010.089.i = phi ptr [ %i.sb, %_RNCNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB4_9Evaluator20evaluate_assignments0B6_.exit.thread.i ], [ %i.rb, %.lr.ph.i ] ; 5 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.010.089.i, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !57159)
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.010.089.i, i64 16
  %i.sd = load ptr, ptr %i.sc, align 8, !alias.scope !57159, !noalias !57155, !nonnull !29, !noundef !29 ; 6 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.010.089.i, i64 24
  %i.sf = load i64, ptr %i.se, align 8, !alias.scope !57159, !noalias !57155, !noundef !29 ; 6 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.010.089.i, i64 56
  %i.sh = load i64, ptr %i.sg, align 8, !alias.scope !57159, !noalias !57155, !noundef !29 ; 9 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.010.089.i, i64 40
  %i.sj = load i64, ptr %i.si, align 8, !alias.scope !57159, !noalias !57155, !noundef !29 ; 3 uses
  %i.sk = add i64 %i.sj, %i.sh                    ; 7 uses
  %i.sl = icmp ugt i64 %i.sh, %i.sk
  %i.sm = icmp ugt i64 %i.sk, %i.sf
  %or.cond.i.i.i118 = or i1 %i.sl, %i.sm
  br i1 %or.cond.i.i.i118, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i, label %bb.di, !prof !160

bb.di:                                            ; preds = %.lr.ph.split.i
  %i.sn = icmp eq i64 %i.sh, %i.sf
  br i1 %i.sn, label %.preheader.i.i.preheader.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.so = icmp eq i64 %i.sh, 0
end_hunk_0
begin_hunk_1_@_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile15evaluate_scopes:bb.a
  %i.vp = load i64, ptr %i.vo, align 8
  %i.vq = ptrtoint ptr %i.vk to i64
  %i.vr = getelementptr inbounds nuw i8, ptr %1, i64 391
  %i.vs = load i8, ptr %i.vr, align 1, !range !273
  %i.vt = trunc nuw i8 %i.vs to i1
  %i.vu = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.vv = load i64, ptr %i.vu, align 8
  %i.vw = icmp eq i64 %i.vv, 0
  %i.vx = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 608
  %.val.i241 = load i64, ptr %i.vy, align 8
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 616
  %.val5.i = load i64, ptr %i.vz, align 8
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.wb = load i64, ptr %i.wa, align 8            ; 2 uses
  %i.wc = load ptr, ptr %i.vx, align 8, !nonnull !29 ; 2 uses
  %.sroa.4471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.5472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.6473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.8475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  br label %bb.eb

bb.eb:                                            ; preds = %bb.iu, %.lr.ph
  %.sroa.5384.0717 = phi ptr [ null, %.lr.ph ], [ %.sroa.07.0.i.i.i, %bb.iu ] ; 2 uses
  %.sroa.14386.0716 = phi i64 [ %i.vp, %.lr.ph ], [ %.sroa.78.0.i.i.i, %bb.iu ] ; 6 uses
  %.sroa.22.0715 = phi i64 [ %i.vm, %.lr.ph ], [ %i.wd, %bb.iu ]
  %.sroa.9385.0714 = phi i64 [ %i.vq, %.lr.ph ], [ 0, %bb.iu ] ; 2 uses
  %i.wd = add i64 %.sroa.22.0715, -1              ; 2 uses
  %.not.i.i123 = icmp eq ptr %.sroa.5384.0717, null
  br i1 %.not.i.i123, label %bb.ec, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i

bb.ec:                                            ; preds = %bb.eb
  %i.we = inttoptr i64 %.sroa.9385.0714 to ptr    ; 3 uses
  %i.wf = icmp eq i64 %.sroa.14386.0716, 0
  br i1 %i.wf, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ec
  %xtraiter1538 = and i64 %.sroa.14386.0716, 7    ; 2 uses
  %lcmp.mod1539.not = icmp eq i64 %xtraiter1538, 0
  br i1 %lcmp.mod1539.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ], [ %i.we, %.lr.ph.i.i.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.wh, %.lr.ph.i.i.prol ], [ %.sroa.14386.0716, %.lr.ph.i.i.preheader ]
  %prol.iter1540 = phi i64 [ %prol.iter1540.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.wg = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 2832
  %i.wh = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.wg, align 8, !noalias !57213, !nonnull !29, !noundef !29 ; 3 uses
  %prol.iter1540.next = add i64 %prol.iter1540, 1 ; 2 uses
  %prol.iter1540.cmp.not = icmp eq i64 %prol.iter1540.next, %xtraiter1538
  br i1 %prol.iter1540.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !57218

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %i.we, %.lr.ph.i.i.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %.sroa.14386.0716, %.lr.ph.i.i.preheader ], [ %i.wh, %.lr.ph.i.i.prol ]
  %i.wi = icmp ult i64 %.sroa.14386.0716, 8
  br i1 %i.wi, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.wr, %.lr.ph.i.i ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.wj = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 2832
  %.sroa.013.0.i.i = load ptr, ptr %i.wj, align 8, !noalias !57213, !nonnull !29, !noundef !29
  %i.wk = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 2832
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.wk, align 8, !noalias !57213, !nonnull !29, !noundef !29
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 2832
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.wl, align 8, !noalias !57213, !nonnull !29, !noundef !29
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 2832
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.wm, align 8, !noalias !57213, !nonnull !29, !noundef !29
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 2832
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.wn, align 8, !noalias !57213, !nonnull !29, !noundef !29
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 2832
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.wo, align 8, !noalias !57213, !nonnull !29, !noundef !29
  %i.wp = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 2832
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.wp, align 8, !noalias !57213, !nonnull !29, !noundef !29
  %i.wq = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 2832
  %i.wr = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.wq, align 8, !noalias !57213, !nonnull !29, !noundef !29 ; 2 uses
  %i.ws = icmp eq i64 %i.wr, 0
  br i1 %i.ws, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i, label %.lr.ph.i.i

_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.ec, %bb.eb
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.14386.0716, %bb.eb ], [ 0, %bb.ec ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.9385.0714, %bb.eb ], [ 0, %bb.ec ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %.sroa.5384.0717, %bb.eb ], [ %i.we, %bb.ec ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 2826
  %i.wu = load i16, ptr %i.wt, align 2, !noalias !57219, !noundef !29
  %i.wv = zext i16 %i.wu to i64
  %i.ww = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.wv
  br i1 %i.ww, label %bb.ef, label %.lr.ph.i.i.i.i124

.lr.ph.i.i.i.i124:                                ; preds = %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i, %bb.ed
  %.sroa.0.022.i.i.i.i = phi ptr [ %i.wy, %bb.ed ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i = phi i64 [ %i.xa, %bb.ed ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i ]
  %i.wx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 2816
  %i.wy = load ptr, ptr %i.wx, align 8, !noalias !57228, !noundef !29 ; 4 uses
  %.not.i.i.i.i.i125 = icmp eq ptr %i.wy, null
  br i1 %.not.i.i.i.i.i125, label %bb.ee, label %bb.ed

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.ed
  %i.wz = zext i16 %i.xc to i64
  br label %bb.ef

bb.ed:                                            ; preds = %.lr.ph.i.i.i.i124
  %i.xa = add i64 %.sroa.5.021.i.i.i.i, 1         ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 2824
  %i.xc = load i16, ptr %i.xb, align 8, !noalias !57228 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wy, i64 2826
  %i.xe = load i16, ptr %i.xd, align 2, !noalias !57219, !noundef !29
  %i.xf = icmp ult i16 %i.xc, %i.xe
  br i1 %i.xf, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i124

bb.ee:                                            ; preds = %.lr.ph.i.i.i.i124
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @610) #75
          to label %.noexc.i.i126 unwind label %bb.ei, !noalias !57231

.noexc.i.i126:                                    ; preds = %bb.ee
  unreachable

bb.ef:                                            ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.wz, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i ] ; 5 uses
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.xa, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i = phi ptr [ %i.wy, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i ] ; 3 uses
  %i.xg = icmp eq i64 %.sroa.7.0.ph.i.i.i, 0
  br i1 %i.xg, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.xh = add nuw nsw i64 %.sroa.10.0.ph.i.i.i, 1
  br label %.loopexit997

bb.eh:                                            ; preds = %bb.ef
  %i.xi = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.xi)
  %i.xj = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i, i64 2840
  %i.xk = getelementptr [8 x i8], ptr %i.xj, i64 %.sroa.10.0.ph.i.i.i ; 2 uses
  %xtraiter1544 = and i64 %.sroa.7.0.ph.i.i.i, 7  ; 2 uses
  %lcmp.mod1545.not = icmp eq i64 %xtraiter1544, 0
  br i1 %lcmp.mod1545.not, label %.prol.loopexit1542, label %.prol.preheader1541

.prol.preheader1541:                              ; preds = %bb.eh, %.prol.preheader1541
  %.sroa.017.0.in.i.i.i.i.prol = phi ptr [ %i.xl, %.prol.preheader1541 ], [ %i.xk, %bb.eh ]
  %.sroa.019.0.in.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader1541 ], [ %.sroa.7.0.ph.i.i.i, %bb.eh ]
  %prol.iter1546 = phi i64 [ %prol.iter1546.next, %.prol.preheader1541 ], [ 0, %bb.eh ]
  %.sroa.019.0.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.prol, align 8, !noalias !57232, !nonnull !29, !noundef !29 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.prol, i64 2832 ; 2 uses
  %prol.iter1546.next = add i64 %prol.iter1546, 1 ; 2 uses
  %prol.iter1546.cmp.not = icmp eq i64 %prol.iter1546.next, %xtraiter1544
  br i1 %prol.iter1546.cmp.not, label %.prol.loopexit1542, label %.prol.preheader1541, !llvm.loop !57236

.prol.loopexit1542:                               ; preds = %.prol.preheader1541, %bb.eh
  %.sroa.017.0.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.eh ], [ %.sroa.017.0.i.i.i.i.prol, %.prol.preheader1541 ]
  %.sroa.017.0.in.i.i.i.i.unr = phi ptr [ %i.xk, %bb.eh ], [ %i.xl, %.prol.preheader1541 ]
  %.sroa.019.0.in.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i, %bb.eh ], [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader1541 ]
  %i.xm = icmp ult i64 %.sroa.7.0.ph.i.i.i, 8
  br i1 %i.xm, label %.loopexit997, label %.new1543

.new1543:                                         ; preds = %.prol.loopexit1542, %.new1543
  %.sroa.017.0.in.i.i.i.i = phi ptr [ %i.xv, %.new1543 ], [ %.sroa.017.0.in.i.i.i.i.unr, %.prol.loopexit1542 ]
  %.sroa.019.0.in.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.7, %.new1543 ], [ %.sroa.019.0.in.i.i.i.i.unr, %.prol.loopexit1542 ]
  %.sroa.017.0.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i, align 8, !noalias !57232, !nonnull !29, !noundef !29
  %i.xn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i, i64 2832
  %.sroa.017.0.i.i.i.i.1 = load ptr, ptr %i.xn, align 8, !noalias !57232, !nonnull !29, !noundef !29
  %i.xo = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.1, i64 2832
  %.sroa.017.0.i.i.i.i.2 = load ptr, ptr %i.xo, align 8, !noalias !57232, !nonnull !29, !noundef !29
  %i.xp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.2, i64 2832
  %.sroa.017.0.i.i.i.i.3 = load ptr, ptr %i.xp, align 8, !noalias !57232, !nonnull !29, !noundef !29
  %i.xq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.3, i64 2832
  %.sroa.017.0.i.i.i.i.4 = load ptr, ptr %i.xq, align 8, !noalias !57232, !nonnull !29, !noundef !29
  %i.xr = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.4, i64 2832
  %.sroa.017.0.i.i.i.i.5 = load ptr, ptr %i.xr, align 8, !noalias !57232, !nonnull !29, !noundef !29
  %i.xs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.5, i64 2832
  %.sroa.017.0.i.i.i.i.6 = load ptr, ptr %i.xs, align 8, !noalias !57232, !nonnull !29, !noundef !29
  %i.xt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.6, i64 2832
  %.sroa.019.0.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.7 = load ptr, ptr %i.xt, align 8, !noalias !57232, !nonnull !29, !noundef !29 ; 2 uses
  %i.xu = icmp eq i64 %.sroa.019.0.i.i.i.i.7, 0
  %i.xv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.7, i64 2832
  br i1 %i.xu, label %.loopexit997, label %.new1543

bb.ei:                                            ; preds = %bb.ee
  %i.xw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit997:                                     ; preds = %.prol.loopexit1542, %.new1543, %bb.eg
  %.sroa.78.0.i.i.i = phi i64 [ %i.xh, %bb.eg ], [ 0, %.new1543 ], [ 0, %.prol.loopexit1542 ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i, %bb.eg ], [ %.sroa.017.0.i.i.i.i.lcssa.unr, %.prol.loopexit1542 ], [ %.sroa.017.0.i.i.i.i.7, %.new1543 ]
  %i.xx = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.xx)
  %i.xy = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i, i64 176
  %i.xz = getelementptr inbounds nuw [240 x i8], ptr %i.xy, i64 %.sroa.10.0.ph.i.i.i ; 3 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 232
  %i.yb = load i8, ptr %i.ya, align 8, !range !273, !noundef !29
  %i.yc = trunc nuw i8 %i.yb to i1
  br i1 %i.yc, label %bb.ip, label %bb.io

.thread:                                          ; preds = %bb.iu, %.preheader533
  %.sroa.0386.0.copyload = load ptr, ptr %i.ak, align 8
  %.sroa.4390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.4390.0.copyload = load i64, ptr %.sroa.4390.0..sroa_idx, align 8
  %.sroa.6392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.6392.0.copyload = load i64, ptr %.sroa.6392.0..sroa_idx, align 8
  %.sroa.7393.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.7393.0.copyload = load i64, ptr %.sroa.7393.0..sroa_idx, align 8
  %.sroa.8394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.sroa.8394.0.copyload = load i64, ptr %.sroa.8394.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.yd = icmp eq i64 %.sroa.6392.0.copyload, 0
  br label %bb.da

.loopexit531:                                     ; preds = %.loopexit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.du, %bb.ff, %bb.fh, %.critedge.i202
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit531, %.loopexit.split-lp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCskXtk6F4WjxZ_4just5scope5ScopeEEB1e_.exit20.sink.split.i.i, %bb.fe, %bb.ep, %.body.thread.i.i, %bb.db, %bb.dh, %bb.dx
  %eh.lpad-body = phi { ptr, i32 } [ %i.qp, %bb.db ], [ %i.uv, %bb.dx ], [ %lpad.phi.i, %bb.dh ], [ %.pn19.i.i, %.body.thread.i.i ], [ %i.ym, %bb.ep ], [ %i.aad, %bb.fe ], [ %.pn1534.ph.i.i151, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCskXtk6F4WjxZ_4just5scope5ScopeEEB1e_.exit20.sink.split.i.i ], [ %lpad.loopexit, %.loopexit531 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSetNtNtCskXtk6F4WjxZ_4just6number6NumberEEEB1W_(ptr %.sroa.0359.0, i64 %.sroa.11360.0) #72
  br label %common.resume

bb.ej:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !57136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11400, i64 24, i1 false)
  %.sroa.11400.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11400, i64 24
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.588.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11400.40..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11400)
  %.sroa.487.sroa.4.0..sroa.487.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.487.sroa.4.0..sroa.487.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622.sroa.7, i64 24, i1 false)
  store i64 %i.ut, ptr %0, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.433.0.copyload.i, ptr %.sroa.487.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.622.sroa.7)
  br label %bb.im

bb.ek:                                            ; preds = %bb.dy, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !57136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11400, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11400)
  store ptr %.sroa.7397.8.copyload399, ptr %i.ae, align 8
  %.sroa.622.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622.sroa.7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.622.sroa.7)
  %i.ye = load i64, ptr %8, align 8, !noalias !57237, !noundef !29
  %.not.i129 = icmp eq i64 %i.ye, 0
  br i1 %.not.i129, label %bb.el, label %bb.em, !prof !36

bb.el:                                            ; preds = %bb.ek
  store i64 -1, ptr %8, align 8, !noalias !57237
  %i.yf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 5 uses
  %i.yh = load i64, ptr %i.yg, align 8, !noalias !57237, !noundef !29 ; 11 uses
  %i.yi = icmp ult i64 %i.yh, 288230376151711744
  call void @llvm.assume(i1 %i.yi)
  %i.yj = load i64, ptr %i.yf, align 8, !range !306, !noalias !57237, !noundef !29 ; 3 uses
  %i.yk = icmp samesign ult i64 %i.yh, %i.yj
  br i1 %i.yk, label %bb.fg, label %bb.eq

bb.em:                                            ; preds = %bb.ek
  invoke void @_RNvNtCsj6eKBz9Db1c_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @781) #71
          to label %bb.eo unwind label %bb.ep, !noalias !57237

bb.en:                                            ; preds = %bb.ep
  %i.yl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !57237
  unreachable

bb.eo:                                            ; preds = %bb.em
  unreachable

bb.ep:                                            ; preds = %bb.em
  %i.ym = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5scope5ScopeEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.ae) #72
          to label %.body unwind label %bb.en

.split.i.i157:                                    ; preds = %bb.fa
  %i.yn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCskXtk6F4WjxZ_4just5scope5ScopeEEB1e_.exit20.sink.split.i.i

bb.eq:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !57241
  store i64 1, ptr %i.i, align 8, !noalias !57241
  %.sroa.44.0..sroa_idx.i136 = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %.sroa.7397.8.copyload399, ptr %.sroa.44.0..sroa_idx.i136, align 8
  %.sroa.5487.0..sroa.44.0..sroa_idx.i136.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5487.0..sroa.44.0..sroa_idx.i136.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622.sroa.7.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !57241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !57241
  store i64 -1, ptr %8, align 8, !noalias !57244
  %.val18.i.i140 = load i64, ptr %i.g, align 8, !range !274, !noalias !57244, !noundef !29 ; 2 uses
  %i.yo = sub nsw i64 %i.yj, %i.yh
  %i.yp = icmp ugt i64 %.val18.i.i140, %i.yo
  br i1 %i.yp, label %bb.er, label %.preheader.i.i141, !prof !340

.preheader.i.i141:                                ; preds = %bb.eq
  %i.yq = trunc nuw i64 %.val18.i.i140 to i1
  br i1 %i.yq, label %.lr.ph.split.i.i146, label %bb.fd

bb.er:                                            ; preds = %bb.eq
  invoke void @_RNvMs1_CscRggLTdVSaO_11typed_arenaINtB5_9ChunkListNtNtCskXtk6F4WjxZ_4just5scope5ScopeE7reserveBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.yf, i64 noundef 1)
          to label %bb.fa unwind label %bb.fe, !noalias !57244

.lr.ph.split.i.i146:                              ; preds = %.preheader.i.i141
  %i.yr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ys = icmp eq i64 %i.yh, %i.yj
  br i1 %i.ys, label %.split.us.i.i149, label %._crit_edge.i.i147, !prof !340

.split.us.i.i149:                                 ; preds = %.lr.ph.split.i.i146
  store i64 0, ptr %i.g, align 8, !noalias !57244
  invoke void @_RNvMs1_CscRggLTdVSaO_11typed_arenaINtB5_9ChunkListNtNtCskXtk6F4WjxZ_4just5scope5ScopeE7reserveBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.yf, i64 noundef 1)
          to label %bb.es unwind label %bb.ey, !noalias !57244

._crit_edge.i.i147:                               ; preds = %.lr.ph.split.i.i146
  %i.yt = load ptr, ptr %i.yr, align 8, !alias.scope !57247, !noalias !57250, !nonnull !29, !noundef !29
  %i.yu = getelementptr inbounds nuw [32 x i8], ptr %i.yt, i64 %i.yh ; 2 uses
  store ptr %.sroa.7397.8.copyload399, ptr %i.yu, align 8
  %.sroa.5487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5487.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622.sroa.7.0..sroa_idx, i64 24, i1 false)
  %i.yv = add nuw nsw i64 %i.yh, 1                ; 2 uses
  store i64 %i.yv, ptr %i.yg, align 8, !alias.scope !57247, !noalias !57250
  %.pre.i.i148 = load i64, ptr %8, align 8, !noalias !57244
  %i.yw = add i64 %.pre.i.i148, 1
  br label %bb.fd

bb.es:                                            ; preds = %.split.us.i.i149
  %i.yx = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.yy = load i64, ptr %i.yx, align 8, !noalias !57244, !noundef !29 ; 2 uses
  %.not.i.i152 = icmp eq i64 %i.yy, 0
  br i1 %.not.i.i152, label %bb.et, label %bb.ev, !prof !340

bb.et:                                            ; preds = %bb.es
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #71
          to label %bb.eu unwind label %bb.ey, !noalias !57244

bb.eu:                                            ; preds = %bb.et
  unreachable

bb.ev:                                            ; preds = %bb.es
  %i.yz = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.za = load ptr, ptr %i.yz, align 8, !noalias !57244, !nonnull !29, !noundef !29
  %i.zb = getelementptr [24 x i8], ptr %i.za, i64 %i.yy ; 3 uses
  %i.zc = getelementptr i8, ptr %i.zb, i64 -8
  %i.zd = load i64, ptr %i.zc, align 8, !noalias !57244, !noundef !29 ; 3 uses
  %i.ze = icmp ult i64 %i.zd, 288230376151711744
  call void @llvm.assume(i1 %i.ze)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !57244
  call void @llvm.experimental.noalias.scope.decl(metadata !57252)
  call void @llvm.experimental.noalias.scope.decl(metadata !57255)
  %i.zf = getelementptr i8, ptr %i.zb, i64 -24
  %i.zg = getelementptr i8, ptr %i.zb, i64 -16
  %i.zh = load ptr, ptr %i.zg, align 8, !alias.scope !57255, !noalias !57257, !nonnull !29, !noundef !29
  %i.zi = getelementptr inbounds nuw [32 x i8], ptr %i.zh, i64 %i.zd ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %i.zd, ptr %i.zj, align 8, !alias.scope !57252, !noalias !57258
  %i.zk = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 0, ptr %i.zk, align 8, !alias.scope !57252, !noalias !57258
  store ptr %i.zi, ptr %i.h, align 8, !alias.scope !57252, !noalias !57258
  %i.zl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.zi, ptr %i.zl, align 8, !alias.scope !57252, !noalias !57258
  %i.zm = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.zf, ptr %i.zm, align 8, !alias.scope !57252, !noalias !57258
  invoke fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecNtNtCskXtk6F4WjxZ_4just5scope5ScopeEINtB4_10SpecExtendBT_INtNtB6_5drain5DrainBT_EE11spec_extendBX_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.yf, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.h)
          to label %bb.ew unwind label %bb.ey, !noalias !57244

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !57244
  invoke fastcc void @_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just5scope5ScopeE8push_mutBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.yf, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(32) %.sroa.44.0..sroa_idx.i136)
          to label %bb.ex unwind label %.thread54.i.i153

.thread54.i.i153:                                 ; preds = %bb.ew
  %lpad.thr_comm.split-lp56.i.i154 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCskXtk6F4WjxZ_4just5scope5ScopeEEB1e_.exit20.sink.split.i.i

bb.ex:                                            ; preds = %bb.ew
  invoke fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecNtNtCskXtk6F4WjxZ_4just5scope5ScopeEINtB4_10SpecExtendBT_INtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceBT_EE11spec_extendBX_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.yf, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.g)
          to label %bb.fc unwind label %bb.fb, !noalias !57244

bb.ey:                                            ; preds = %bb.ev, %bb.et, %.split.us.i.i149
  %lpad.thr_comm.i.i150 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5scope5ScopeEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %.sroa.44.0..sroa_idx.i136) #72
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCskXtk6F4WjxZ_4just5scope5ScopeEEB1e_.exit20.sink.split.i.i unwind label %bb.ez, !noalias !57241

bb.ez:                                            ; preds = %bb.fe, %bb.ey
  %i.zn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !57244
  unreachable

bb.fa:                                            ; preds = %bb.er
  invoke fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecNtNtCskXtk6F4WjxZ_4just5scope5ScopeEINtB4_10SpecExtendBT_INtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceBT_EE11spec_extendBX_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.yf, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.i)
          to label %.thread39.i.i158 unwind label %.split.i.i157, !noalias !57241

.thread39.i.i158:                                 ; preds = %bb.fa
  %i.zo = load i64, ptr %i.yg, align 8, !noalias !57244, !noundef !29 ; 2 uses
  %i.zp = icmp ult i64 %i.zo, 288230376151711744
  call void @llvm.assume(i1 %i.zp)
  %i.zq = getelementptr inbounds nuw i8, ptr %8, i64 16
end_hunk_1
