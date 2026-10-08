Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/blockmodifier?download=true
inline.NumInlined: 2159
inline.NumDeleted: 1045
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN10LBMManager9applyLBMsEP17ServerEnvironmentP8MapBlockjf:bb.a
  %i.lp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ll, ptr noundef %i.lm, i64 noundef %i.lo)
          to label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit unwind label %bb.cm ; 0 uses

_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit: ; preds = %_ZNK14NodeDefManager3getEt.exit, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.23, ptr %i.b, align 8, !tbaa !232
  %i.lq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.bz unwind label %bb.cm     ; 3 uses

bb.bz:                                            ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0176.0362, i64 40
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !312
  %i.lt = load ptr, ptr %i.lq, align 8, !tbaa !233 ; 5 uses
  %.not.i127 = icmp eq ptr %i.lt, null
  br i1 %.not.i127, label %_ZN11StreamProxylsImEERS_OT_.exit131, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !31
  %i.lv = getelementptr i8, ptr %i.lu, i64 -24
  %i.lw = load i64, ptr %i.lv, align 8
  %i.lx = getelementptr inbounds i8, ptr %i.lt, i64 %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !240
  %i.ma = icmp eq i32 %i.lz, 0
  br i1 %i.ma, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.lt)
          to label %.noexc129 unwind label %bb.cn

.noexc129:                                        ; preds = %bb.cb
  %.pre.i128 = load ptr, ptr %i.lq, align 8, !tbaa !233
  br label %bb.cc

bb.cc:                                            ; preds = %.noexc129, %bb.ca
  %i.mb = phi ptr [ %.pre.i128, %.noexc129 ], [ %i.lt, %bb.ca ]
  %i.mc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.mb, i64 noundef %i.ls)
          to label %_ZN11StreamProxylsImEERS_OT_.exit131 unwind label %bb.cn ; 0 uses

_ZN11StreamProxylsImEERS_OT_.exit131:             ; preds = %bb.bz, %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.24, ptr %i.a, align 8, !tbaa !232
  %i.md = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.lq, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.cd unwind label %bb.cn

bb.cd:                                            ; preds = %_ZN11StreamProxylsImEERS_OT_.exit131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %.sroa.0.0.copyload.i = load i48, ptr %i.aa, align 2, !tbaa !153
  store i48 %.sroa.0.0.copyload.i, ptr %6, align 8
  %i.me = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIN4core8vector3dIsEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.md, ptr noundef nonnull align 2 dereferenceable(6) %6)
          to label %bb.ce unwind label %.loopexit228 ; 2 uses

bb.ce:                                            ; preds = %bb.cd
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !233 ; 5 uses
  %.not.i134 = icmp eq ptr %i.mf, null
  br i1 %.not.i134, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !31
  %i.mh = getelementptr i8, ptr %i.mg, i64 -24
  %i.mi = load i64, ptr %i.mh, align 8            ; 2 uses
  %i.mj = getelementptr inbounds i8, ptr %i.mf, i64 %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 32
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !240
  %i.mm = icmp eq i32 %i.ml, 0
  br i1 %i.mm, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.mf)
          to label %.noexc136 unwind label %.loopexit228

.noexc136:                                        ; preds = %bb.cg
  %.pre.i135 = load ptr, ptr %i.me, align 8, !tbaa !233 ; 2 uses
  %.pre = load ptr, ptr %.pre.i135, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre402 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %.noexc136, %bb.cf
  %i.mn = phi i64 [ %.pre402, %.noexc136 ], [ %i.mi, %bb.cf ]
  %i.mo = phi ptr [ %.pre.i135, %.noexc136 ], [ %i.mf, %bb.cf ] ; 2 uses
  %i.mp = getelementptr inbounds i8, ptr %i.mo, i64 %i.mn
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 240
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !250 ; 6 uses
  %.not.i.i.i160 = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i160, label %bb.ci, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %.noexc161.a unwind label %.loopexit.split-lp

.noexc161.a:                                      ; preds = %bb.ci
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.ch
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 56
  %i.mt = load i8, ptr %i.ms, align 8, !tbaa !255
  %.not.i1.i.i = icmp eq i8 %i.mt, 0
  br i1 %.not.i1.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 67
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !256
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ck:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.mr)
          to label %.noexc162 unwind label %.loopexit228

.noexc162:                                        ; preds = %bb.ck
  %i.mw = load ptr, ptr %i.mr, align 8, !tbaa !31
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 48
  %i.my = load ptr, ptr %i.mx, align 8
  %i.mz = invoke noundef signext i8 %i.my(ptr noundef nonnull align 8 dereferenceable(570) %i.mr, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit228, !inline_history !4

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc162, %bb.cj
  %.0.i.i.i = phi i8 [ %i.mv, %bb.cj ], [ %i.mz, %.noexc162 ]
  %i.na = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.mo, i8 noundef signext %.0.i.i.i)
          to label %.noexc164 unwind label %.loopexit228

.noexc164:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.nb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.na)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %.loopexit228 ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.ce, %.noexc164
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.cp

bb.cl:                                            ; preds = %.noexc113, %_ZTW11tracestream.exit112, %_ZTW11tracestream.exit
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cm:                                            ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %bb.by, %bb.bx, %bb.bt, %_ZN11StreamProxylsImEERS_OT_.exit, %bb.bs, %bb.br
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cn:                                            ; preds = %_ZN11StreamProxylsImEERS_OT_.exit131, %bb.cc, %bb.cb
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit228:                                     ; preds = %bb.cd, %bb.cg, %bb.ck, %.noexc162, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc164
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

.loopexit.split-lp:                               ; preds = %bb.ci
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.co:                                            ; preds = %.loopexit.split-lp, %.loopexit228
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit228 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.body

bb.cp:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %_ZN9LogStreamcvbEv.exit
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.0176.0362, i64 72
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !213 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.0176.0362, i64 80
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !213 ; 2 uses
  %.not223354 = icmp eq ptr %i.ng, %i.ni
  br i1 %.not223354, label %.thread213, label %.lr.ph358

.lr.ph358:                                        ; preds = %bb.cp
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.0176.0362, i64 32 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0176.0362, i64 24
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.0176.0362, i64 40 ; 3 uses
  br label %bb.cr

bb.cq:                                            ; preds = %bb.dk
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.0171.0355, i64 8 ; 2 uses
  %.not223 = icmp eq ptr %i.nm, %i.ni
  br i1 %.not223, label %.thread213, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph358, %bb.cq
  %.162356 = phi i1 [ %.061363, %.lr.ph358 ], [ false, %bb.cq ]
  %.sroa.0171.0355 = phi ptr [ %i.ng, %.lr.ph358 ], [ %i.nm, %bb.cq ] ; 2 uses
  br i1 %.162356, label %.loopexit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.nn = load ptr, ptr %i.nj, align 8, !tbaa !311 ; 2 uses
  %.not224351 = icmp eq ptr %i.nn, null
  br i1 %.not224351, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cs, %bb.dh
  %.sroa.0167.0352 = phi ptr [ %.sroa.0167.1, %bb.dh ], [ %i.nn, %bb.cs ] ; 7 uses
  %i.no = load ptr, ptr %i.ab, align 8, !tbaa !201
  %i.np = load i8, ptr %i.ac, align 4, !tbaa !202, !range !199, !noundef !200
  %i.nq = trunc nuw i8 %i.np to i1
  br i1 %i.nq, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.0167.0352, i64 8
  %.sroa.06.0.copyload = load i48, ptr %i.nr, align 2, !tbaa !153 ; 3 uses
  %.sroa.3.0.extract.shift.i138 = lshr i48 %.sroa.06.0.copyload, 16
  %.sroa.3.0.extract.trunc.i139 = zext nneg i48 %.sroa.3.0.extract.shift.i138 to i64
  %.sroa.2.0.extract.trunc.i141 = zext i48 %.sroa.06.0.copyload to i64
  %7 = ashr i48 %.sroa.06.0.copyload, 32
  %8 = sext i48 %7 to i64
  %9 = shl nsw i64 %8, 8
  %sext2.i144 = shl i64 %.sroa.3.0.extract.trunc.i139, 48
  %i.ns = ashr exact i64 %sext2.i144, 44
  %sext3.i145 = shl i64 %.sroa.2.0.extract.trunc.i141, 48
  %i.nt = ashr exact i64 %sext3.i145, 48
  %i.nu = add nsw i64 %9, %i.nt
  %i.nv = add nsw i64 %i.nu, %i.ns
  %i.nw = and i64 %i.nv, 4294967295
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %.lr.ph
  %i.nx = phi i64 [ %i.nw, %bb.ct ], [ 0, %.lr.ph ]
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.nx
  %.sroa.0.0.copyload.i.i146 = load i32, ptr %i.ny, align 4
  %.sroa.0.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i.i146 to i16
  %i.nz = load i16, ptr %i.jb, align 8, !tbaa !153
  %.not = icmp eq i16 %i.nz, %.sroa.0.0.extract.trunc
  br i1 %.not, label %bb.dg, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.oa = load i64, ptr %i.nk, align 8, !tbaa !309 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0167.0352, i64 16
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !288
  %i.od = urem i64 %i.oc, %i.oa                   ; 3 uses
  %i.oe = load ptr, ptr %i.jc, align 8, !tbaa !308 ; 3 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.od ; 2 uses
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !257 ; 4 uses
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %bb.cv
  %.0.i.i.i.i = phi ptr [ %i.og, %bb.cv ], [ %i.oh, %bb.cw ] ; 4 uses
  %i.oh = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !206 ; 2 uses
  %.not.i.i.i.i148 = icmp eq ptr %i.oh, %.sroa.0167.0352
  br i1 %.not.i.i.i.i148, label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE20_M_get_previous_nodeEmPNS4_10_Hash_nodeIS2_Lb1EEE.exit.i.i.i, label %bb.cw, !llvm.loop !384

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE20_M_get_previous_nodeEmPNS4_10_Hash_nodeIS2_Lb1EEE.exit.i.i.i: ; preds = %bb.cw
  %i.oi = icmp eq ptr %.0.i.i.i.i, %i.og
  %i.oj = load ptr, ptr %.sroa.0167.0352, align 8, !tbaa !206 ; 4 uses
  %.not18.i.i.i.i149 = icmp eq ptr %i.oj, null    ; 2 uses
  br i1 %i.oi, label %bb.cx, label %bb.dc

bb.cx:                                            ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE20_M_get_previous_nodeEmPNS4_10_Hash_nodeIS2_Lb1EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i149, label %._crit_edge.i.i.i.i.i150, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !288
  %i.om = urem i64 %i.ol, %i.oa                   ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i64 %i.om, %i.od
  br i1 %.not9.i.i.i.i.i, label %bb.df, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.om
  store ptr %i.og, ptr %i.on, align 8, !tbaa !257
  br label %._crit_edge.i.i.i.i.i150

._crit_edge.i.i.i.i.i150:                         ; preds = %bb.cz, %bb.cx
  %i.oo = icmp eq ptr %i.nj, %i.og
  br i1 %i.oo, label %bb.da, label %bb.db

bb.da:                                            ; preds = %._crit_edge.i.i.i.i.i150
  store ptr %i.oj, ptr %i.nj, align 8, !tbaa !311
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %._crit_edge.i.i.i.i.i150
  store ptr null, ptr %i.of, align 8, !tbaa !257
  br label %bb.df

bb.dc:                                            ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE20_M_get_previous_nodeEmPNS4_10_Hash_nodeIS2_Lb1EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i149, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.op = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !288
  %i.or = urem i64 %i.oq, %i.oa                   ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.or, %i.od
  br i1 %.not17.i.i.i.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.or
  store ptr %.0.i.i.i.i, ptr %i.os, align 8, !tbaa !257
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.cy
  %i.ot = load ptr, ptr %.sroa.0167.0352, align 8, !tbaa !206 ; 2 uses
  store ptr %i.ot, ptr %.0.i.i.i.i, align 8, !tbaa !206
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0167.0352, i64 noundef 24) #26
  %i.ou = load i64, ptr %i.nl, align 8, !tbaa !312
  %i.ov = add i64 %i.ou, -1
  store i64 %i.ov, ptr %i.nl, align 8, !tbaa !312
  br label %bb.dh

bb.dg:                                            ; preds = %bb.cu
  %i.ow = load ptr, ptr %.sroa.0167.0352, align 8, !tbaa !206
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.sroa.0167.1 = phi ptr [ %i.ow, %bb.dg ], [ %i.ot, %bb.df ] ; 2 uses
  %.not224 = icmp eq ptr %.sroa.0167.1, null
  br i1 %.not224, label %.loopexit, label %.lr.ph, !llvm.loop !385

.loopexit:                                        ; preds = %bb.dh, %bb.cs, %bb.cr
  %i.ox = load i64, ptr %i.nl, align 8, !tbaa !312
  %i.oy = icmp eq i64 %i.ox, 0
  br i1 %i.oy, label %.thread213, label %bb.di

bb.di:                                            ; preds = %.loopexit
  %i.oz = load ptr, ptr %.sroa.0171.0355, align 8, !tbaa !215 ; 2 uses
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !31
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8
  invoke void %i.pc(ptr noundef nonnull align 8 dereferenceable(65) %i.oz, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %i.jc, float noundef %4)
          to label %bb.dk unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dk:                                            ; preds = %bb.di
  %i.pe = load i8, ptr %2, align 8, !tbaa !203, !range !199, !noundef !200
  %i.pf = trunc nuw i8 %i.pe to i1
  br i1 %i.pf, label %.loopexit226, label %bb.cq

.thread213:                                       ; preds = %bb.cq, %.loopexit, %bb.cp
  %.263.ph = phi i1 [ %.061363, %bb.cp ], [ false, %.loopexit ], [ false, %bb.cq ]
  %.val.i.i = load ptr, ptr %.sroa.0176.0362, align 8, !tbaa !206 ; 2 uses
  %.not222 = icmp eq ptr %.val.i.i, null
  br i1 %.not222, label %.loopexit226, label %bb.bl

.loopexit226:                                     ; preds = %.thread213, %bb.dk, %bb.c, %_ZN10LBMManager22getLBMsIntroducedAfterEj.exit, %._crit_edge
  call fastcc void @_ZNSt13unordered_mapItN12_GLOBAL__N_18LBMToRunESt4hashItESt8equal_toItESaISt4pairIKtS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

.body:                                            ; preds = %.loopexit229, %.loopexit.split-lp230.loopexit.split-lp, %.loopexit.split-lp230.loopexit, %bb.cl, %bb.cn, %bb.co, %bb.cm, %bb.dj, %_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i
  %.pn90.pn.pn = phi { ptr, i32 } [ %i.gn, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i ], [ %lpad.phi, %bb.co ], [ %i.pd, %bb.dj ], [ %eh.lpad-body.i.i, %_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.nd, %bb.cm ], [ %i.ne, %bb.cn ], [ %i.nc, %bb.cl ], [ %lpad.loopexit231, %.loopexit229 ], [ %lpad.loopexit240, %.loopexit.split-lp230.loopexit ], [ %lpad.loopexit.split-lp241, %.loopexit.split-lp230.loopexit.split-lp ]
  call fastcc void @_ZNSt13unordered_mapItN12_GLOBAL__N_18LBMToRunESt4hashItESt8equal_toItESaISt4pairIKtS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn90.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIN4core8vector3dIsEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(6) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !233    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !240
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !233
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.0.0.copyload = load i48, ptr %1, align 2, !tbaa !153 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i48 %.sroa.0.0.copyload to i16
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.37, i64 noundef 1) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i16 noundef signext %.sroa.0.0.extract.trunc.i) ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.38, i64 noundef 1) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i16 noundef signext %.sroa.2.0.extract.trunc.i) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.38, i64 noundef 1) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i16 noundef signext %.sroa.3.0.extract.trunc.i)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.39, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZNSt13unordered_mapItN12_GLOBAL__N_18LBMToRunESt4hashItESt8equal_toItESaISt4pairIKtS1_EEED2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !307 ; 2 uses
  %.not1.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not1.i.i.i, label %_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN12_GLOBAL__N_18LBMToRunEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i
  %.02.i.i.i = phi ptr [ %.0.val.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN12_GLOBAL__N_18LBMToRunEELb0EEEEE18_M_deallocate_nodeEPS7_.exit.i.i.i ], [ %.val.i.i, %bb.a ] ; 8 uses
  %.0.val.i.i.i = load ptr, ptr %.02.i.i.i, align 8, !tbaa !206 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.02.i.i.i, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02.i.i.i, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !209  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIP23LoadingBlockModifierDefSaIS1_EED2Ev.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.02.i.i.i, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !210
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
end_hunk_0
