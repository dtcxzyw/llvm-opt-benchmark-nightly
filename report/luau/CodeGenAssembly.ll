Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/CodeGenAssembly?download=true
inline.NumInlined: 1079
inline.NumDeleted: 556
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4Luau7CodeGenL15getAssemblyImplINS0_3X6418AssemblyBuilderX64EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10LogBuilderERT_PK10lua_TValueNS0_15AssemblyOptionsEPNS0_13LoweringStatsE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.cp
  store ptr %i.nn, ptr %i.nk, align 8, !tbaa !62
  %i.ns = load i64, ptr %i.de, align 8, !tbaa !46
  store i64 %i.ns, ptr %i.nm, align 8, !tbaa !46
  %.pre67 = load i64, ptr %i.df, align 8, !tbaa !45
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i166.thread

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i166.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.cq
  %i.nt = phi i64 [ %.pre67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.np, %bb.cq ]
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  store i64 %i.nt, ptr %i.nu, align 8, !tbaa !45
  store ptr %i.de, ptr %8, align 8, !tbaa !62
  store i64 0, ptr %i.df, align 8, !tbaa !45
  store i8 0, ptr %i.de, align 8, !tbaa !46
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.nv, ptr noundef nonnull align 8 dereferenceable(20) %i.dg, i64 20, i1 false)
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nk, i64 56
  %i.nx = load <2 x ptr>, ptr %i.di, align 8, !tbaa !229
  store <2 x ptr> %i.nx, ptr %i.nw, align 8, !tbaa !229
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nk, i64 72
  %i.nz = load ptr, ptr %i.dr, align 8, !tbaa !220
  store ptr %i.nz, ptr %i.ny, align 8, !tbaa !220
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, i8 0, i64 24, i1 false)
  %i.oa = load ptr, ptr %i.dx, align 8, !tbaa !227
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 80
  store ptr %i.ob, ptr %i.dx, align 8, !tbaa !227
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i168

bb.cr:                                            ; preds = %bb.co
  invoke void @_ZNSt6vectorIN4Luau7CodeGen13FunctionStatsESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr %i.nk, ptr noundef nonnull align 8 dereferenceable(80) %8)
          to label %_ZNSt6vectorIN4Luau7CodeGen13FunctionStatsESaIS2_EE9push_backEOS2_.exit unwind label %.loopexit.split-lp

_ZNSt6vectorIN4Luau7CodeGen13FunctionStatsESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.cr
  %.pre68 = load ptr, ptr %i.di, align 8, !tbaa !218 ; 3 uses
  %.pre69 = load ptr, ptr %i.dq, align 8, !tbaa !219 ; 2 uses
  %.not4.i.i.i.i158 = icmp eq ptr %.pre68, %.pre69
  br i1 %.not4.i.i.i.i158, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i166, label %.lr.ph.i.i.i.i159

.lr.ph.i.i.i.i159:                                ; preds = %_ZNSt6vectorIN4Luau7CodeGen13FunctionStatsESaIS2_EE9push_backEOS2_.exit, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i162
  %.05.i.i.i.i160 = phi ptr [ %i.oi, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i162 ], [ %.pre68, %_ZNSt6vectorIN4Luau7CodeGen13FunctionStatsESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %i.oc = load ptr, ptr %.05.i.i.i.i160, align 8, !tbaa !222 ; 3 uses
  %.not.i.i.i.i.i.i.i.i161 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i.i.i.i.i.i.i161, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i162, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph.i.i.i.i159
  %i.od = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i160, i64 16
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !224
  %i.of = ptrtoint ptr %i.oe to i64
  %i.og = ptrtoint ptr %i.oc to i64
  %i.oh = sub i64 %i.of, %i.og
  call void @_ZdlPvm(ptr noundef nonnull %i.oc, i64 noundef %i.oh) #21
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i162

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i162: ; preds = %bb.cs, %.lr.ph.i.i.i.i159
  %i.oi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i160, i64 24 ; 2 uses
  %.not.i.i.i.i163 = icmp eq ptr %i.oi, %.pre69
  br i1 %.not.i.i.i.i163, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i164, label %.lr.ph.i.i.i.i159, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i164: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i162
  %.pr.i.i165 = load ptr, ptr %i.di, align 8, !tbaa !218
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i166

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i166: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i164, %_ZNSt6vectorIN4Luau7CodeGen13FunctionStatsESaIS2_EE9push_backEOS2_.exit
  %i.oj = phi ptr [ %.pr.i.i165, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i164 ], [ %.pre68, %_ZNSt6vectorIN4Luau7CodeGen13FunctionStatsESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %.not.i.i1.i.i167 = icmp eq ptr %i.oj, null
  br i1 %.not.i.i1.i.i167, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i168, label %bb.ct

bb.ct:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i166
  %i.ok = load ptr, ptr %i.dr, align 8, !tbaa !220
  %i.ol = ptrtoint ptr %i.ok to i64
  %i.om = ptrtoint ptr %i.oj to i64
  %i.on = sub i64 %i.ol, %i.om
  call void @_ZdlPvm(ptr noundef nonnull %i.oj, i64 noundef %i.on) #21
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i168

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i168:    ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i166.thread, %bb.ct, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i166
  %i.oo = load ptr, ptr %8, align 8, !tbaa !62    ; 2 uses
  %i.op = icmp eq ptr %i.oo, %i.de
  br i1 %i.op, label %_ZN4Luau7CodeGen13FunctionStatsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i169: ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i168
  %i.oq = load i64, ptr %i.de, align 8, !tbaa !46
  %i.or = add i64 %i.oq, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.or) #21
  br label %_ZN4Luau7CodeGen13FunctionStatsD2Ev.exit

_ZN4Luau7CodeGen13FunctionStatsD2Ev.exit:         ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i168, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.critedge

bb.cu:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.cn
  %.pn104 = phi { ptr, i32 } [ %.pn102, %bb.cn ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4Luau7CodeGen13FunctionStatsD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.dd

.critedge:                                        ; preds = %bb.bs, %_ZN4Luau7CodeGen13FunctionStatsD2Ev.exit, %bb.bw, %bb.bv
  %i.os = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !84, !range !60, !noundef !61
  %i.ot = trunc nuw i8 %i.os to i1
  br i1 %i.ot, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %.critedge
  %i.ou = load i8, ptr %i.bt, align 1, !tbaa !59, !range !60, !noundef !61
  %i.ov = trunc nuw i8 %i.ou to i1
  br i1 %i.ov, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder12formatAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.4)
          to label %bb.cz unwind label %bb.bp

bb.cx:                                            ; preds = %.critedge
  %i.ow = load i8, ptr %i.db, align 8, !tbaa !199, !range !60, !noundef !61
  %i.ox = trunc nuw i8 %i.ow to i1
  br i1 %i.ox, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  invoke void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %2, ptr noundef nonnull @.str.4)
          to label %bb.cz unwind label %bb.bp

bb.cz:                                            ; preds = %bb.cx, %bb.cy, %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.oy = load ptr, ptr %i.ea, align 8, !tbaa !236 ; 2 uses
  %.not.i.i.i172 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i172, label %_ZN4Luau12DenseHashMapINS_7CodeGen9IrBuilder11ConstantKeyEjNS2_15ConstantKeyHashESt8equal_toIS3_EED2Ev.exit.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @_ZdlPv(ptr noundef nonnull %i.oy) #20
  br label %_ZN4Luau12DenseHashMapINS_7CodeGen9IrBuilder11ConstantKeyEjNS2_15ConstantKeyHashESt8equal_toIS3_EED2Ev.exit.i

_ZN4Luau12DenseHashMapINS_7CodeGen9IrBuilder11ConstantKeyEjNS2_15ConstantKeyHashESt8equal_toIS3_EED2Ev.exit.i: ; preds = %bb.da, %bb.cz
  %i.oz = load ptr, ptr %i.eb, align 8, !tbaa !239 ; 3 uses
  %.not.i.i.i.i173 = icmp eq ptr %i.oz, null
  br i1 %.not.i.i.i.i173, label %_ZNSt6vectorIN4Luau7CodeGen9IrBuilder8LoopInfoESaIS3_EED2Ev.exit.i, label %bb.db

bb.db:                                            ; preds = %_ZN4Luau12DenseHashMapINS_7CodeGen9IrBuilder11ConstantKeyEjNS2_15ConstantKeyHashESt8equal_toIS3_EED2Ev.exit.i
  %i.pa = load ptr, ptr %i.ec, align 8, !tbaa !240
  %i.pb = ptrtoint ptr %i.pa to i64
  %i.pc = ptrtoint ptr %i.oz to i64
  %i.pd = sub i64 %i.pb, %i.pc
  call void @_ZdlPvm(ptr noundef nonnull %i.oz, i64 noundef %i.pd) #21
  br label %_ZNSt6vectorIN4Luau7CodeGen9IrBuilder8LoopInfoESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN4Luau7CodeGen9IrBuilder8LoopInfoESaIS3_EED2Ev.exit.i: ; preds = %bb.db, %_ZN4Luau12DenseHashMapINS_7CodeGen9IrBuilder11ConstantKeyEjNS2_15ConstantKeyHashESt8equal_toIS3_EED2Ev.exit.i
  %i.pe = load ptr, ptr %i.ed, align 8, !tbaa !222 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.pe, null
  br i1 %.not.i.i.i1.i, label %_ZN4Luau7CodeGen9IrBuilderD2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIN4Luau7CodeGen9IrBuilder8LoopInfoESaIS3_EED2Ev.exit.i
  %i.pf = load ptr, ptr %i.ee, align 8, !tbaa !224
  %i.pg = ptrtoint ptr %i.pf to i64
  %i.ph = ptrtoint ptr %i.pe to i64
  %i.pi = sub i64 %i.pg, %i.ph
  call void @_ZdlPvm(ptr noundef nonnull %i.pe, i64 noundef %i.pi) #21
  br label %_ZN4Luau7CodeGen9IrBuilderD2Ev.exit

_ZN4Luau7CodeGen9IrBuilderD2Ev.exit:              ; preds = %_ZNSt6vectorIN4Luau7CodeGen9IrBuilder8LoopInfoESaIS3_EED2Ev.exit.i, %bb.dc
  call void @_ZN4Luau7CodeGen10IrFunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.da) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.03.052, i64 8 ; 2 uses
  %.not16 = icmp eq ptr %i.pj, %i.co
  br i1 %.not16, label %._crit_edge, label %bb.ab

bb.dd:                                            ; preds = %bb.cu, %bb.bp
  %.pn106 = phi { ptr, i32 } [ %i.jv, %bb.bp ], [ %.pn104, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %.loopexit.split-lp18

.loopexit.split-lp18:                             ; preds = %.loopexit17, %.loopexit.split-lp18.loopexit.split-lp.loopexit, %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp18.loopexit, %bb.ak, %bb.dd, %bb.aj
  %.pn106.pn.pn.pn = phi { ptr, i32 } [ %i.eq, %bb.aj ], [ %i.er, %bb.ak ], [ %.pn106, %bb.dd ], [ %lpad.loopexit19, %.loopexit17 ], [ %lpad.loopexit22, %.loopexit.split-lp18.loopexit ], [ %lpad.loopexit25, %.loopexit.split-lp18.loopexit.split-lp.loopexit ], [ %lpad.loopexit28, %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp29, %.loopexit.split-lp18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4Luau7CodeGen9IrBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(1056) dereferenceable(1056) %7) #20
  br label %bb.de

bb.de:                                            ; preds = %.loopexit.split-lp18, %bb.ai
  %.pn106.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn.pn, %.loopexit.split-lp18 ], [ %i.ep, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.dv

bb.df:                                            ; preds = %._crit_edge
  br i1 %i.ef, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.pk, ptr %0, align 8, !tbaa !43
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.pl, align 8, !tbaa !45
  store i8 0, ptr %i.pk, align 8, !tbaa !46
  br label %bb.du

bb.dh:                                            ; preds = %bb.df
  %i.pm = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.pn = load i8, ptr %i.pm, align 8, !tbaa !241, !range !60, !noundef !61
  %i.po = trunc nuw i8 %i.pn to i1
  br i1 %i.po, label %bb.di, label %bb.dr

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.pp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !93 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !92
  %i.pt = ptrtoint ptr %i.ps to i64
  %12 = ptrtoint ptr %i.pq to i64
  %13 = sub i64 %i.pt, %12                        ; 4 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.pu, ptr %10, align 8, !tbaa !43
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %14, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %13, ptr %i.c, align 8, !tbaa !242
  %i.pv = icmp ugt i64 %13, 15
  br i1 %i.pv, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.di
  %i.pw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc174 unwind label %bb.do ; 2 uses

.noexc174:                                        ; preds = %.noexc.i
  store ptr %i.pw, ptr %10, align 8, !tbaa !62
  %i.px = load i64, ptr %i.c, align 8, !tbaa !242
  store i64 %i.px, ptr %i.pu, align 8, !tbaa !46
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc174, %bb.di
  %i.py = phi ptr [ %i.pw, %.noexc174 ], [ %i.pu, %bb.di ] ; 2 uses
  switch i64 %13, label %bb.dk [
    i64 1, label %bb.dj
    i64 0, label %bb.dl
  ]

bb.dj:                                            ; preds = %._crit_edge.i.i
  %i.pz = load i8, ptr %i.pq, align 1, !tbaa !46
  store i8 %i.pz, ptr %i.py, align 1, !tbaa !46
  br label %bb.dl

bb.dk:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.py, ptr align 1 %i.pq, i64 %13, i1 false)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %._crit_edge.i.i
  %i.qa = load i64, ptr %i.c, align 8, !tbaa !242 ; 2 uses
  store i64 %i.qa, ptr %14, align 8, !tbaa !45
  %i.qb = load ptr, ptr %10, align 8, !tbaa !62
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 %i.qa
  store i8 0, ptr %i.qc, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.qd = load ptr, ptr %2, align 8, !tbaa !243   ; 7 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !243 ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.qg, ptr %11, align 8, !tbaa !43
  %i.qh = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.qh, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.qi = ptrtoint ptr %i.qf to i64               ; 3 uses
  %i.qj = ptrtoint ptr %i.qd to i64               ; 2 uses
  %i.qk = sub i64 %i.qi, %i.qj                    ; 10 uses
  store i64 %i.qk, ptr %i.b, align 8, !tbaa !242
  %i.ql = icmp ugt i64 %i.qk, 15
  br i1 %i.ql, label %.noexc.i178, label %._crit_edge.i.i175

.noexc.i178:                                      ; preds = %bb.dl
  %i.qm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc179 unwind label %bb.dp ; 2 uses

.noexc179:                                        ; preds = %.noexc.i178
  store ptr %i.qm, ptr %11, align 8, !tbaa !62
  %i.qn = load i64, ptr %i.b, align 8, !tbaa !242 ; 2 uses
  store i64 %i.qn, ptr %i.qg, align 8, !tbaa !46
  br label %._crit_edge.i.i175

._crit_edge.i.i175:                               ; preds = %.noexc179, %bb.dl
  %i.qo = phi i64 [ %i.qn, %.noexc179 ], [ %i.qk, %bb.dl ]
  %i.qp = phi ptr [ %i.qm, %.noexc179 ], [ %i.qg, %bb.dl ] ; 7 uses
  %.not5.i.i.i = icmp eq ptr %i.qd, %i.qf
  br i1 %.not5.i.i.i, label %bb.dm, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i175
  %i.qq = ptrtoaddr ptr %i.qp to i64
  %min.iters.check = icmp ult i64 %i.qk, 8
  %i.qr = sub i64 %i.qj, %i.qq
  %diff.check = icmp ugt i64 %i.qr, -32
  %or.cond186 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond186, label %.lr.ph.i.i.i176.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check173 = icmp ult i64 %i.qk, 32
  br i1 %min.iters.check173, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.qs = and i64 %i.qk, 24
  %n.vec = and i64 %i.qk, -32                     ; 5 uses
  %i.qt = getelementptr i8, ptr %i.qp, i64 %n.vec
  %i.qu = getelementptr i8, ptr %i.qd, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.qp, i64 %index ; 2 uses
  %next.gep174 = getelementptr i8, ptr %i.qd, i64 %index ; 2 uses
  %i.qv = getelementptr i8, ptr %next.gep174, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep174, align 1, !tbaa !46
  %wide.load175 = load <16 x i8>, ptr %i.qv, align 1, !tbaa !46
  %i.qw = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !46
  store <16 x i8> %wide.load175, ptr %i.qw, align 1, !tbaa !46
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.qx = icmp eq i64 %index.next, %n.vec
  br i1 %i.qx, label %middle.block, label %vector.body, !llvm.loop !379

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qk, %n.vec
  br i1 %cmp.n, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.qs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i176.preheader, label %vec.epilog.ph, !prof !246

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec177 = and i64 %i.qk, -8                   ; 4 uses
  %i.qy = getelementptr i8, ptr %i.qp, i64 %n.vec177
  %i.qz = getelementptr i8, ptr %i.qd, i64 %n.vec177
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index178 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next182, %vec.epilog.vector.body ] ; 3 uses
  %next.gep179 = getelementptr i8, ptr %i.qp, i64 %index178
  %next.gep180 = getelementptr i8, ptr %i.qd, i64 %index178
  %wide.load181 = load <8 x i8>, ptr %next.gep180, align 1, !tbaa !46
  store <8 x i8> %wide.load181, ptr %next.gep179, align 1, !tbaa !46
  %index.next182 = add nuw i64 %index178, 8       ; 2 uses
  %i.ra = icmp eq i64 %index.next182, %n.vec177
  br i1 %i.ra, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !380

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n183 = icmp eq i64 %i.qk, %n.vec177
  br i1 %cmp.n183, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i176.preheader

.lr.ph.i.i.i176.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.i.i.ph = phi ptr [ %i.qp, %iter.check ], [ %i.qt, %vec.epilog.iter.check ], [ %i.qy, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.02.06.i.i.i.ph = phi ptr [ %i.qd, %iter.check ], [ %i.qu, %vec.epilog.iter.check ], [ %i.qz, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.02.06.i.i.i.ph198 = ptrtoaddr ptr %.sroa.02.06.i.i.i.ph to i64 ; 2 uses
  %i.rb = sub i64 %i.qi, %.sroa.02.06.i.i.i.ph198
  %xtraiter = and i64 %i.rb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i176.prol.loopexit, label %.lr.ph.i.i.i176.prol

.lr.ph.i.i.i176.prol:                             ; preds = %.lr.ph.i.i.i176.preheader, %.lr.ph.i.i.i176.prol
  %.07.i.i.i.prol = phi ptr [ %i.re, %.lr.ph.i.i.i176.prol ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i176.preheader ] ; 2 uses
  %.sroa.02.06.i.i.i.prol = phi ptr [ %i.rd, %.lr.ph.i.i.i176.prol ], [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i176.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i176.prol ], [ 0, %.lr.ph.i.i.i176.preheader ]
  %i.rc = load i8, ptr %.sroa.02.06.i.i.i.prol, align 1, !tbaa !46
  store i8 %i.rc, ptr %.07.i.i.i.prol, align 1, !tbaa !46
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.prol, i64 1 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.07.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i176.prol.loopexit, label %.lr.ph.i.i.i176.prol, !llvm.loop !381

.lr.ph.i.i.i176.prol.loopexit:                    ; preds = %.lr.ph.i.i.i176.prol, %.lr.ph.i.i.i176.preheader
  %.07.i.i.i.unr = phi ptr [ %.07.i.i.i.ph, %.lr.ph.i.i.i176.preheader ], [ %i.re, %.lr.ph.i.i.i176.prol ]
  %.sroa.02.06.i.i.i.unr = phi ptr [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i176.preheader ], [ %i.rd, %.lr.ph.i.i.i176.prol ]
  %i.rf = sub i64 %.sroa.02.06.i.i.i.ph198, %i.qi
  %i.rg = icmp ugt i64 %i.rf, -8
  br i1 %i.rg, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i176

.lr.ph.i.i.i176:                                  ; preds = %.lr.ph.i.i.i176.prol.loopexit, %.lr.ph.i.i.i176
  %.07.i.i.i = phi ptr [ %i.se, %.lr.ph.i.i.i176 ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i176.prol.loopexit ] ; 9 uses
  %.sroa.02.06.i.i.i = phi ptr [ %i.sd, %.lr.ph.i.i.i176 ], [ %.sroa.02.06.i.i.i.unr, %.lr.ph.i.i.i176.prol.loopexit ] ; 9 uses
  %i.rh = load i8, ptr %.sroa.02.06.i.i.i, align 1, !tbaa !46
  store i8 %i.rh, ptr %.07.i.i.i, align 1, !tbaa !46
  %i.ri = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 1
  %i.rj = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 1
  %i.rk = load i8, ptr %i.ri, align 1, !tbaa !46
  store i8 %i.rk, ptr %i.rj, align 1, !tbaa !46
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 2
  %i.rm = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 2
  %i.rn = load i8, ptr %i.rl, align 1, !tbaa !46
  store i8 %i.rn, ptr %i.rm, align 1, !tbaa !46
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 3
  %i.rp = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 3
  %i.rq = load i8, ptr %i.ro, align 1, !tbaa !46
  store i8 %i.rq, ptr %i.rp, align 1, !tbaa !46
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 4
  %i.rs = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4
  %i.rt = load i8, ptr %i.rr, align 1, !tbaa !46
  store i8 %i.rt, ptr %i.rs, align 1, !tbaa !46
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 5
  %i.rv = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 5
  %i.rw = load i8, ptr %i.ru, align 1, !tbaa !46
  store i8 %i.rw, ptr %i.rv, align 1, !tbaa !46
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 6
  %i.ry = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 6
  %i.rz = load i8, ptr %i.rx, align 1, !tbaa !46
  store i8 %i.rz, ptr %i.ry, align 1, !tbaa !46
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 7
  %i.sb = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 7
  %i.sc = load i8, ptr %i.sa, align 1, !tbaa !46
  store i8 %i.sc, ptr %i.sb, align 1, !tbaa !46
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8
  %.not.i.i.i177.7 = icmp eq ptr %i.sd, %i.qf
  br i1 %.not.i.i.i177.7, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i176, !llvm.loop !382

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i176.prol.loopexit, %.lr.ph.i.i.i176, %vec.epilog.middle.block, %middle.block
  %.pre16.i.i = load i64, ptr %i.b, align 8, !tbaa !242
  %.pre17.i.i = load ptr, ptr %11, align 8, !tbaa !62
  br label %bb.dm

bb.dm:                                            ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, %._crit_edge.i.i175
  %i.sf = phi ptr [ %.pre17.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.qp, %._crit_edge.i.i175 ]
  %i.sg = phi i64 [ %.pre16.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.qo, %._crit_edge.i.i175 ] ; 2 uses
  store i64 %i.sg, ptr %i.qh, align 8, !tbaa !45
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.sg
  store i8 0, ptr %i.sh, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.dn unwind label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.si = load ptr, ptr %11, align 8, !tbaa !62   ; 2 uses
  %i.sj = icmp eq ptr %i.si, %i.qg
  br i1 %i.sj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.dn
  %i.sk = load i64, ptr %i.qg, align 8, !tbaa !46
  %i.sl = add i64 %i.sk, 1
  call void @_ZdlPvm(ptr noundef %i.si, i64 noundef %i.sl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.sm = load ptr, ptr %10, align 8, !tbaa !62   ; 2 uses
  %i.sn = icmp eq ptr %i.sm, %i.pu
  br i1 %i.sn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.so = load i64, ptr %i.pu, align 8, !tbaa !46
  %i.sp = add i64 %i.so, 1
  call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef %i.sp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.du

bb.do:                                            ; preds = %.noexc.i
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

bb.dp:                                            ; preds = %.noexc.i178
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

bb.dq:                                            ; preds = %bb.dm
  %i.ss = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.st = load ptr, ptr %11, align 8, !tbaa !62   ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.qg
  br i1 %i.su, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %bb.dq
  %i.sv = load i64, ptr %i.qg, align 8, !tbaa !46
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.st, i64 noundef %i.sw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183, %bb.dp
  %.pn96 = phi { ptr, i32 } [ %i.sr, %bb.dp ], [ %i.ss, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183 ], [ %i.ss, %bb.dq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.sx = load ptr, ptr %10, align 8, !tbaa !62   ; 2 uses
  %i.sy = icmp eq ptr %i.sx, %i.pu
  br i1 %i.sy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185
  %i.sz = load i64, ptr %i.pu, align 8, !tbaa !46
  %i.ta = add i64 %i.sz, 1
  call void @_ZdlPvm(ptr noundef %i.sx, i64 noundef %i.ta) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186, %bb.do
  %.pn96.pn = phi { ptr, i32 } [ %i.sq, %bb.do ], [ %.pn96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186 ], [ %.pn96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.dv

bb.dr:                                            ; preds = %bb.dh
  %i.tb = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !84, !range !60, !noundef !61
  %i.tc = trunc nuw i8 %i.tb to i1
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.te = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.tf = select i1 %i.tc, ptr %i.td, ptr %i.te   ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.tg, ptr %0, align 8, !tbaa !43
  %i.th = load ptr, ptr %i.tf, align 8, !tbaa !62 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !45 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.tj, ptr %i.a, align 8, !tbaa !242
  %i.tk = icmp ugt i64 %i.tj, 15
  br i1 %i.tk, label %.noexc.i190, label %._crit_edge.i.i189

.noexc.i190:                                      ; preds = %bb.dr
  %i.tl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc191 unwind label %bb.x  ; 2 uses

.noexc191:                                        ; preds = %.noexc.i190
  store ptr %i.tl, ptr %0, align 8, !tbaa !62
  %i.tm = load i64, ptr %i.a, align 8, !tbaa !242
  store i64 %i.tm, ptr %i.tg, align 8, !tbaa !46
  br label %._crit_edge.i.i189

._crit_edge.i.i189:                               ; preds = %.noexc191, %bb.dr
  %i.tn = phi ptr [ %i.tl, %.noexc191 ], [ %i.tg, %bb.dr ] ; 2 uses
  switch i64 %i.tj, label %bb.dt [
    i64 1, label %bb.ds
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.ds:                                            ; preds = %._crit_edge.i.i189
  %i.to = load i8, ptr %i.th, align 1, !tbaa !46
  store i8 %i.to, ptr %i.tn, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.dt:                                            ; preds = %._crit_edge.i.i189
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tn, ptr align 1 %i.th, i64 %i.tj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i189, %bb.ds, %bb.dt
  %i.tp = load i64, ptr %i.a, align 8, !tbaa !242 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.tp, ptr %i.tq, align 8, !tbaa !45
  %i.tr = load ptr, ptr %0, align 8, !tbaa !62
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.tp
  store i8 0, ptr %i.ts, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.du

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.dw

bb.dv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %bb.de, %bb.x
  %.pn106.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn.pn.pn, %bb.de ], [ %.pn96.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ], [ %i.ci, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.dy

bb.dw:                                            ; preds = %bb.du, %bb.r
  %i.tt = load ptr, ptr %5, align 8, !tbaa !248   ; 3 uses
  %.not.i.i.i192 = icmp eq ptr %i.tt, null
  br i1 %.not.i.i.i192, label %_ZNSt6vectorIP5ProtoSaIS1_EED2Ev.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.tu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !249
  %i.tw = ptrtoint ptr %i.tv to i64
  %i.tx = ptrtoint ptr %i.tt to i64
  %i.ty = sub i64 %i.tw, %i.tx
  call void @_ZdlPvm(ptr noundef nonnull %i.tt, i64 noundef %i.ty) #21
  br label %_ZNSt6vectorIP5ProtoSaIS1_EED2Ev.exit

_ZNSt6vectorIP5ProtoSaIS1_EED2Ev.exit:            ; preds = %bb.dw, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ea

bb.dy:                                            ; preds = %bb.dv, %bb.o
  %.pn113 = phi { ptr, i32 } [ %i.bk, %bb.o ], [ %.pn106.pn.pn.pn.pn.pn, %bb.dv ]
  %i.tz = load ptr, ptr %5, align 8, !tbaa !248   ; 3 uses
  %.not.i.i.i193 = icmp eq ptr %i.tz, null
  br i1 %.not.i.i.i193, label %_ZNSt6vectorIP5ProtoSaIS1_EED2Ev.exit194, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ua = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !249
  %i.uc = ptrtoint ptr %i.ub to i64
  %i.ud = ptrtoint ptr %i.tz to i64
  %i.ue = sub i64 %i.uc, %i.ud
  call void @_ZdlPvm(ptr noundef nonnull %i.tz, i64 noundef %i.ue) #21
  br label %_ZNSt6vectorIP5ProtoSaIS1_EED2Ev.exit194

_ZNSt6vectorIP5ProtoSaIS1_EED2Ev.exit194:         ; preds = %bb.dy, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn113

bb.ea:                                            ; preds = %_ZNSt6vectorIP5ProtoSaIS1_EED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX64D1Ev(ptr noundef nonnull align 8 dead_on_return(268) dereferenceable(268)) unnamed_addr #5

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA64C1EPNS0_10LogBuilderEbj(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, i1 noundef zeroext, i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4Luau7CodeGenL15getAssemblyImplINS0_3A6418AssemblyBuilderA64EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10LogBuilderERT_PK10lua_TValueNS0_15AssemblyOptionsEPNS0_13LoweringStatsE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(184) %2, ptr %.0.val.24.val, ptr noundef byval(%"struct.Luau::CodeGen::AssemblyOptions") align 8 %3, ptr noundef %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::vector.98", align 8    ; 13 uses
  %6 = alloca %"struct.Luau::CodeGen::ModuleHelpers", align 16 ; 10 uses
  %7 = alloca %"struct.Luau::CodeGen::IrBuilder", align 8 ; 22 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"struct.Luau::CodeGen::FunctionStats", align 8 ; 20 uses
  %9 = alloca %"class.Luau::CodeGen::FunctionBytecodeSummary", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !63   ; 2 uses
  %.not93 = trunc i32 %i.f to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0.val.24.val, i64 7
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !64 ; 2 uses
  %i.g = and i8 %.pre, 1
  %i.h = icmp eq i8 %i.g, 0
  %or.cond161 = select i1 %.not93, i1 %i.h, i1 false
  br i1 %or.cond161, label %bb.b, label %._crit_edge64

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN4Luau7CodeGen3A6418AssemblyBuilderA648finalizeEv(ptr noundef nonnull align 8 dereferenceable(184) %2) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !45
  store i8 0, ptr %i.j, align 8, !tbaa !46
  br label %bb.ea

._crit_edge64:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.l = and i8 %.pre, 4
  %i.m = icmp ne i8 %i.l, 0
  invoke void @_ZN4Luau7CodeGen21gatherFunctionsHelperERSt6vectorIP5ProtoSaIS3_EES3_jbb(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %.0.val.24.val, i32 noundef %i.f, i1 noundef zeroext %i.m, i1 noundef zeroext true)
          to label %_ZN4Luau7CodeGen15gatherFunctionsERSt6vectorIP5ProtoSaIS3_EES3_jb.exit unwind label %bb.o

_ZN4Luau7CodeGen15gatherFunctionsERSt6vectorIP5ProtoSaIS3_EES3_jb.exit: ; preds = %._crit_edge64
  %i.n = load ptr, ptr %5, align 8, !tbaa !65     ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !65   ; 8 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = ashr i64 %i.s, 5                         ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4Luau7CodeGen15gatherFunctionsERSt6vectorIP5ProtoSaIS3_EES3_jb.exit
  %i.v = and i64 %i.s, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.n, i64 %i.v ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i
  %.045.i.i.i.i = phi i64 [ %i.ai, %bb.f ], [ %i.t, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.025.044.i.i.i.i = phi ptr [ %i.ah, %bb.f ], [ %i.n, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %i.w = load ptr, ptr %.sroa.025.044.i.i.i.i, align 8, !tbaa !66
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPP5ProtoSt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN4Luau7CodeGenL15getAssemblyImplINSC_3A6418AssemblyBuilderA64EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNSC_10LogBuilderERT_PK10lua_TValueNSC_15AssemblyOptionsEPNSC_13LoweringStatsEEUlS3_E_EEESO_SO_SO_T0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !66
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPP5ProtoSt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN4Luau7CodeGenL15getAssemblyImplINSC_3A6418AssemblyBuilderA64EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNSC_10LogBuilderERT_PK10lua_TValueNSC_15AssemblyOptionsEPNSC_13LoweringStatsEEUlS3_E_EEESO_SO_SO_T0_.exit.i.i.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !66
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPP5ProtoSt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN4Luau7CodeGenL15getAssemblyImplINSC_3A6418AssemblyBuilderA64EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNSC_10LogBuilderERT_PK10lua_TValueNSC_15AssemblyOptionsEPNSC_13LoweringStatsEEUlS3_E_EEESO_SO_SO_T0_.exit.i.i.loopexit.split.loop.exit152, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !66
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPP5ProtoSt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN4Luau7CodeGenL15getAssemblyImplINSC_3A6418AssemblyBuilderA64EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNSC_10LogBuilderERT_PK10lua_TValueNSC_15AssemblyOptionsEPNSC_13LoweringStatsEEUlS3_E_EEESO_SO_SO_T0_.exit.i.i.loopexit.split.loop.exit154, label %bb.f
end_hunk_0
begin_hunk_1_@_ZN4Luau7CodeGen17getAssemblyFromIrB5cxx11ERNS0_9IrBuilderENS0_15AssemblyOptionsEPNS0_13LoweringStatsE:bb.a

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_ZN4Luau7CodeGenL21getAssemblyFromIrImplINS0_3X6418AssemblyBuilderX64EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10LogBuilderERT_RNS0_9IrBuilderENS0_15AssemblyOptionsEPNS0_13LoweringStatsE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(268) %9, ptr noundef nonnull align 8 dereferenceable(1056) %1, ptr noundef nonnull byval(%"struct.Luau::CodeGen::AssemblyOptions") align 8 %2, ptr noundef %3)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX64D1Ev(ptr noundef nonnull align 8 dead_on_return(268) dereferenceable(268) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.al

bb.ah:                                            ; preds = %bb.ae
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX64D1Ev(ptr noundef nonnull align 8 dead_on_return(268) dereferenceable(268) %9) #20
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.ai ], [ %i.ah, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.am

bb.ak:                                            ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !43
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !45
  store i8 0, ptr %i.aj, align 8, !tbaa !46
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ag, %bb.aa, %bb.u, %bb.o, %bb.h
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.b
  br i1 %i.am, label %_ZN4Luau7CodeGen10LogBuilderD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.al
  %i.an = load i64, ptr %i.b, align 8, !tbaa !46
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #21
  br label %_ZN4Luau7CodeGen10LogBuilderD2Ev.exit

_ZN4Luau7CodeGen10LogBuilderD2Ev.exit:            ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.am:                                            ; preds = %bb.aj, %bb.ad, %bb.x, %bb.r, %bb.l, %bb.i
  %.pn32.pn = phi { ptr, i32 } [ %.pn32, %bb.l ], [ %i.m, %bb.i ], [ %.pn30, %bb.r ], [ %.pn28, %bb.x ], [ %.pn26, %bb.ad ], [ %.pn, %bb.aj ]
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.b
  br i1 %i.aq, label %_ZN4Luau7CodeGen10LogBuilderD2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35: ; preds = %bb.am
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !46
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #21
  br label %_ZN4Luau7CodeGen10LogBuilderD2Ev.exit37

_ZN4Luau7CodeGen10LogBuilderD2Ev.exit37:          ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn32.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4Luau7CodeGenL21getAssemblyFromIrImplINS0_3X6418AssemblyBuilderX64EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10LogBuilderERT_RNS0_9IrBuilderENS0_15AssemblyOptionsEPNS0_13LoweringStatsE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(268) %2, ptr noundef nonnull align 8 dereferenceable(1056) %3, ptr nofree noundef readonly byval(%"struct.Luau::CodeGen::AssemblyOptions") align 8 captures(none) %4, ptr noundef %5) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.Luau::CodeGen::ModuleHelpers", align 16 ; 10 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %6, align 16, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %i.e, align 16, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %i.f, align 16, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.g, align 16, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 -1, ptr %i.h, align 4, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 113
  %i.j = load i8, ptr %i.i, align 1, !tbaa !59, !range !60, !noundef !61
  %i.k = trunc nuw i8 %i.j to i1                  ; 4 uses
  %i.l = select i1 %i.k, ptr %1, ptr null
  call void @_ZN4Luau7CodeGen3X6415assembleHelpersEPNS0_10LogBuilderERNS1_18AssemblyBuilderX64ERNS0_13ModuleHelpersE(ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(268) %2, ptr noundef nonnull align 4 dereferenceable(56) %6)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 115
  %i.n = load i8, ptr %i.m, align 1, !tbaa !81, !range !60, !noundef !61
  %i.o = trunc nuw i8 %i.n to i1
  %.not = xor i1 %i.o, true
  %or.cond = and i1 %i.k, %.not
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.p = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !84, !range !60, !noundef !61
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.s, align 8, !tbaa !45
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !62
  store i8 0, ptr %i.t, align 1, !tbaa !46
  %i.u = call noundef i32 @_ZNK4Luau7CodeGen3X6418AssemblyBuilderX6411getCodeSizeEv(ptr noundef nonnull align 8 dereferenceable(268) %2)
  call void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder12formatAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str, i32 noundef %i.u)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 0, ptr %i.w, align 8, !tbaa !45
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !62
  store i8 0, ptr %i.x, align 1, !tbaa !46
  %i.y = call noundef i32 @_ZNK4Luau7CodeGen3X6418AssemblyBuilderX6411getCodeSizeEv(ptr noundef nonnull align 8 dereferenceable(268) %2)
  call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %2, ptr noundef nonnull @.str, i32 noundef %i.y)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !182
  %i.z = call noundef zeroext i1 @_ZN4Luau7CodeGen13lowerFunctionINS0_3X6418AssemblyBuilderX64EEEbRNS0_9IrBuilderEPNS0_10LogBuilderERT_RNS0_13ModuleHelpersEP5ProtoNS0_15AssemblyOptionsEPNS0_13LoweringStatsERNS0_24CodeGenCompilationResultE(ptr noundef nonnull align 8 dereferenceable(1056) %3, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(268) %2, ptr noundef nonnull align 4 dereferenceable(56) %6, ptr noundef null, ptr noundef nonnull byval(%"struct.Luau::CodeGen::AssemblyOptions") align 8 %4, ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %.pre52 = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !84, !range !60 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = trunc nuw i8 %.pre52 to i1
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.k, label %.thread50, label %.thread49

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !199, !range !60, !noundef !61
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.i, label %.thread62

bb.i:                                             ; preds = %bb.h
  call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %2, ptr noundef nonnull @.str.1)
  %.pre = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !84, !range !60
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.ae = phi i8 [ %.pre, %bb.i ], [ %.pre52, %bb.e ]
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.k, label %.thread62

.thread50:                                        ; preds = %bb.g
  call void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder12formatAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.1)
  %i.ag = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !84, !range !60, !noundef !61
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.thread51, label %.thread62

bb.k:                                             ; preds = %bb.j
  br i1 %i.k, label %.thread51, label %.thread49

.thread51:                                        ; preds = %.thread50, %bb.k
  call void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder12formatAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.4)
  br label %.thread49

.thread62:                                        ; preds = %bb.h, %.thread50, %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !199, !range !60, !noundef !61
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.l, label %.thread49

bb.l:                                             ; preds = %.thread62
  call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %2, ptr noundef nonnull @.str.4)
  br label %.thread49

.thread49:                                        ; preds = %bb.g, %.thread62, %bb.l, %bb.k, %.thread51
  %i.al = call noundef zeroext i1 @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648finalizeEv(ptr noundef nonnull align 8 dereferenceable(268) %2)
  br i1 %i.al, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread49
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !43
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !45
  store i8 0, ptr %i.am, align 8, !tbaa !46
  br label %bb.z

bb.n:                                             ; preds = %.thread49
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !241, !range !60, !noundef !61
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !93 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !92
  %i.av = ptrtoint ptr %i.au to i64
  %9 = ptrtoint ptr %i.as to i64
  %10 = sub i64 %i.av, %9                         ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.aw, ptr %7, align 8, !tbaa !43
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %11, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %10, ptr %i.c, align 8, !tbaa !242
  %i.ax = icmp ugt i64 %10, 15
  br i1 %i.ax, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.o
  %i.ay = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.ay, ptr %7, align 8, !tbaa !62
  %i.az = load i64, ptr %i.c, align 8, !tbaa !242
  store i64 %i.az, ptr %i.aw, align 8, !tbaa !46
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.o
  %i.ba = phi ptr [ %i.ay, %.noexc.i ], [ %i.aw, %bb.o ] ; 2 uses
  switch i64 %10, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.bb = load i8, ptr %i.as, align 1, !tbaa !46
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !46
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.as, i64 %10, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i
  %i.bc = load i64, ptr %i.c, align 8, !tbaa !242 ; 2 uses
  store i64 %i.bc, ptr %11, align 8, !tbaa !45
  %i.bd = load ptr, ptr %7, align 8, !tbaa !62
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  store i8 0, ptr %i.be, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.bf = load ptr, ptr %2, align 8, !tbaa !243   ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !243 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.bi, ptr %8, align 8, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.bj, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.bk = ptrtoint ptr %i.bh to i64               ; 3 uses
  %i.bl = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 10 uses
  store i64 %i.bm, ptr %i.b, align 8, !tbaa !242
  %i.bn = icmp ugt i64 %i.bm, 15
  br i1 %i.bn, label %.noexc.i35, label %._crit_edge.i.i34

.noexc.i35:                                       ; preds = %bb.r
  %i.bo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc36 unwind label %bb.u   ; 2 uses

.noexc36:                                         ; preds = %.noexc.i35
  store ptr %i.bo, ptr %8, align 8, !tbaa !62
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !242 ; 2 uses
  store i64 %i.bp, ptr %i.bi, align 8, !tbaa !46
  br label %._crit_edge.i.i34

._crit_edge.i.i34:                                ; preds = %.noexc36, %bb.r
  %i.bq = phi i64 [ %i.bp, %.noexc36 ], [ %i.bm, %bb.r ]
  %i.br = phi ptr [ %i.bo, %.noexc36 ], [ %i.bi, %bb.r ] ; 7 uses
  %.not5.i.i.i = icmp eq ptr %i.bf, %i.bh
  br i1 %.not5.i.i.i, label %bb.s, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i34
  %i.bs = ptrtoaddr ptr %i.br to i64
  %min.iters.check = icmp ult i64 %i.bm, 8
  %i.bt = sub i64 %i.bl, %i.bs
  %diff.check = icmp ugt i64 %i.bt, -32
  %or.cond76 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond76, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check63 = icmp ult i64 %i.bm, 32
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bu = and i64 %i.bm, 24
  %n.vec = and i64 %i.bm, -32                     ; 5 uses
  %i.bv = getelementptr i8, ptr %i.br, i64 %n.vec
  %i.bw = getelementptr i8, ptr %i.bf, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.br, i64 %index ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.bf, i64 %index ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep64, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep64, align 1, !tbaa !46
  %wide.load65 = load <16 x i8>, ptr %i.bx, align 1, !tbaa !46
  %i.by = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !46
  store <16 x i8> %wide.load65, ptr %i.by, align 1, !tbaa !46
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !392

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !246

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec67 = and i64 %i.bm, -8                    ; 4 uses
  %i.ca = getelementptr i8, ptr %i.br, i64 %n.vec67
  %i.cb = getelementptr i8, ptr %i.bf, i64 %n.vec67
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index68 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next72, %vec.epilog.vector.body ] ; 3 uses
  %next.gep69 = getelementptr i8, ptr %i.br, i64 %index68
  %next.gep70 = getelementptr i8, ptr %i.bf, i64 %index68
  %wide.load71 = load <8 x i8>, ptr %next.gep70, align 1, !tbaa !46
  store <8 x i8> %wide.load71, ptr %next.gep69, align 1, !tbaa !46
  %index.next72 = add nuw i64 %index68, 8         ; 2 uses
  %i.cc = icmp eq i64 %index.next72, %n.vec67
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !393

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n73 = icmp eq i64 %i.bm, %n.vec67
  br i1 %cmp.n73, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.i.i.ph = phi ptr [ %i.br, %iter.check ], [ %i.bv, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.02.06.i.i.i.ph = phi ptr [ %i.bf, %iter.check ], [ %i.bw, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.02.06.i.i.i.ph77 = ptrtoaddr ptr %.sroa.02.06.i.i.i.ph to i64 ; 2 uses
  %i.cd = sub i64 %i.bk, %.sroa.02.06.i.i.i.ph77
  %xtraiter = and i64 %i.cd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.07.i.i.i.prol = phi ptr [ %i.cg, %.lr.ph.i.i.i.prol ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.02.06.i.i.i.prol = phi ptr [ %i.cf, %.lr.ph.i.i.i.prol ], [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ce = load i8, ptr %.sroa.02.06.i.i.i.prol, align 1, !tbaa !46
  store i8 %i.ce, ptr %.07.i.i.i.prol, align 1, !tbaa !46
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.prol, i64 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.07.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !394

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.07.i.i.i.unr = phi ptr [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.i.prol ]
  %.sroa.02.06.i.i.i.unr = phi ptr [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.cf, %.lr.ph.i.i.i.prol ]
  %i.ch = sub i64 %.sroa.02.06.i.i.i.ph77, %i.bk
  %i.ci = icmp ugt i64 %i.ch, -8
  br i1 %i.ci, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.02.06.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i ], [ %.sroa.02.06.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.cj = load i8, ptr %.sroa.02.06.i.i.i, align 1, !tbaa !46
  store i8 %i.cj, ptr %.07.i.i.i, align 1, !tbaa !46
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 1
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !46
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !46
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 2
  %i.co = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 2
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !46
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !46
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 3
  %i.cr = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 3
  %i.cs = load i8, ptr %i.cq, align 1, !tbaa !46
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !46
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !46
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !46
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 5
  %i.cx = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 5
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !46
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !46
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 6
  %i.da = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 6
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !46
  store i8 %i.db, ptr %i.da, align 1, !tbaa !46
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 7
  %i.dd = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 7
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !46
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !46
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8
  %.not.i.i.i.7 = icmp eq ptr %i.df, %i.bh
  br i1 %.not.i.i.i.7, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !395

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre16.i.i = load i64, ptr %i.b, align 8, !tbaa !242
  %.pre17.i.i = load ptr, ptr %8, align 8, !tbaa !62
  br label %bb.s

bb.s:                                             ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, %._crit_edge.i.i34
  %i.dh = phi ptr [ %.pre17.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.br, %._crit_edge.i.i34 ]
  %i.di = phi i64 [ %.pre16.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.bq, %._crit_edge.i.i34 ] ; 2 uses
  store i64 %i.di, ptr %i.bj, align 8, !tbaa !45
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.di
  store i8 0, ptr %i.dj, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.dk = load ptr, ptr %8, align 8, !tbaa !62    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.bi
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.dm = load i64, ptr %i.bi, align 8, !tbaa !46
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.do = load ptr, ptr %7, align 8, !tbaa !62    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.aw
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dq = load i64, ptr %i.aw, align 8, !tbaa !46
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.z

bb.u:                                             ; preds = %.noexc.i35
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.v:                                             ; preds = %bb.s
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %8, align 8, !tbaa !62    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.bi
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.v
  %i.dw = load i64, ptr %i.bi, align 8, !tbaa !46
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ds, %bb.u ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.dt, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.dy = load ptr, ptr %7, align 8, !tbaa !62    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.aw
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.ea = load i64, ptr %i.aw, align 8, !tbaa !46
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %.pn

bb.w:                                             ; preds = %bb.n
  %i.ec = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !84, !range !60, !noundef !61
  %i.ed = trunc nuw i8 %i.ec to i1
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eg = select i1 %i.ed, ptr %i.ee, ptr %i.ef   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.eh, ptr %0, align 8, !tbaa !43
  %i.ei = load ptr, ptr %i.eg, align 8, !tbaa !62 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !45 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.ek, ptr %i.a, align 8, !tbaa !242
  %i.el = icmp ugt i64 %i.ek, 15
  br i1 %i.el, label %.noexc.i47, label %._crit_edge.i.i46

.noexc.i47:                                       ; preds = %bb.w
  %i.em = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.em, ptr %0, align 8, !tbaa !62
  %i.en = load i64, ptr %i.a, align 8, !tbaa !242
  store i64 %i.en, ptr %i.eh, align 8, !tbaa !46
  br label %._crit_edge.i.i46

._crit_edge.i.i46:                                ; preds = %.noexc.i47, %bb.w
  %i.eo = phi ptr [ %i.em, %.noexc.i47 ], [ %i.eh, %bb.w ] ; 2 uses
  switch i64 %i.ek, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.x:                                             ; preds = %._crit_edge.i.i46
  %i.ep = load i8, ptr %i.ei, align 1, !tbaa !46
  store i8 %i.ep, ptr %i.eo, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.y:                                             ; preds = %._crit_edge.i.i46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eo, ptr align 1 %i.ei, i64 %i.ek, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i46, %bb.x, %bb.y
  %i.eq = load i64, ptr %i.a, align 8, !tbaa !242 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !45
  %i.es = load ptr, ptr %0, align 8, !tbaa !62
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.eq
  store i8 0, ptr %i.et, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4Luau7CodeGenL21getAssemblyFromIrImplINS0_3A6418AssemblyBuilderA64EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10LogBuilderERT_RNS0_9IrBuilderENS0_15AssemblyOptionsEPNS0_13LoweringStatsE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 dereferenceable(1056) %3, ptr nofree noundef readonly byval(%"struct.Luau::CodeGen::AssemblyOptions") align 8 captures(none) %4, ptr noundef %5) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.Luau::CodeGen::ModuleHelpers", align 16 ; 10 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %6, align 16, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %i.e, align 16, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %i.f, align 16, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.g, align 16, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 -1, ptr %i.h, align 4, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 113
  %i.j = load i8, ptr %i.i, align 1, !tbaa !59, !range !60, !noundef !61
  %i.k = trunc nuw i8 %i.j to i1                  ; 4 uses
  %i.l = select i1 %i.k, ptr %1, ptr null
  call void @_ZN4Luau7CodeGen3A6415assembleHelpersEPNS0_10LogBuilderERNS1_18AssemblyBuilderA64ERNS0_13ModuleHelpersE(ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 4 dereferenceable(56) %6)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 115
  %i.n = load i8, ptr %i.m, align 1, !tbaa !81, !range !60, !noundef !61
  %i.o = trunc nuw i8 %i.n to i1
  %.not = xor i1 %i.o, true
  %or.cond = and i1 %i.k, %.not
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.p = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !84, !range !60, !noundef !61
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.s, align 8, !tbaa !45
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !62
  store i8 0, ptr %i.t, align 1, !tbaa !46
  %i.u = call noundef i32 @_ZNK4Luau7CodeGen3A6418AssemblyBuilderA6411getCodeSizeEv(ptr noundef nonnull align 8 dereferenceable(184) %2)
  %i.v = shl i32 %i.u, 2
  call void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder12formatAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str, i32 noundef %i.v)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 0, ptr %i.x, align 8, !tbaa !45
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !62
  store i8 0, ptr %i.y, align 1, !tbaa !46
  %i.z = call noundef i32 @_ZNK4Luau7CodeGen3A6418AssemblyBuilderA6411getCodeSizeEv(ptr noundef nonnull align 8 dereferenceable(184) %2)
  %i.aa = shl i32 %i.z, 2
  call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull @.str, i32 noundef %i.aa)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !182
  %i.ab = call noundef zeroext i1 @_ZN4Luau7CodeGen13lowerFunctionINS0_3A6418AssemblyBuilderA64EEEbRNS0_9IrBuilderEPNS0_10LogBuilderERT_RNS0_13ModuleHelpersEP5ProtoNS0_15AssemblyOptionsEPNS0_13LoweringStatsERNS0_24CodeGenCompilationResultE(ptr noundef nonnull align 8 dereferenceable(1056) %3, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 4 dereferenceable(56) %6, ptr noundef null, ptr noundef nonnull byval(%"struct.Luau::CodeGen::AssemblyOptions") align 8 %4, ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %.pre52 = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !84, !range !60 ; 2 uses
  br i1 %i.ab, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = trunc nuw i8 %.pre52 to i1
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.k, label %.thread50, label %.thread49

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !256, !range !60, !noundef !61
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.i, label %.thread62

bb.i:                                             ; preds = %bb.h
  call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull @.str.1)
  %.pre = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !84, !range !60
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.ag = phi i8 [ %.pre, %bb.i ], [ %.pre52, %bb.e ]
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.k, label %.thread62

.thread50:                                        ; preds = %bb.g
  call void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder12formatAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.1)
  %i.ai = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !84, !range !60, !noundef !61
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.thread51, label %.thread62

bb.k:                                             ; preds = %bb.j
  br i1 %i.k, label %.thread51, label %.thread49

.thread51:                                        ; preds = %.thread50, %bb.k
  call void (ptr, ptr, ...) @_ZN4Luau7CodeGen10LogBuilder12formatAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.4)
  br label %.thread49

.thread62:                                        ; preds = %bb.h, %.thread50, %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !256, !range !60, !noundef !61
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.l, label %.thread49

bb.l:                                             ; preds = %.thread62
  call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull @.str.4)
  br label %.thread49

.thread49:                                        ; preds = %bb.g, %.thread62, %bb.l, %bb.k, %.thread51
  %i.an = call noundef zeroext i1 @_ZN4Luau7CodeGen3A6418AssemblyBuilderA648finalizeEv(ptr noundef nonnull align 8 dereferenceable(184) %2)
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread49
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !43
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !45
  store i8 0, ptr %i.ao, align 8, !tbaa !46
  br label %bb.z

bb.n:                                             ; preds = %.thread49
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !241, !range !60, !noundef !61
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !222 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
end_hunk_1
