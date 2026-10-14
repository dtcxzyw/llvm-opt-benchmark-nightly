Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3ExecGraph?download=true
inline.NumInlined: 4151
inline.NumDeleted: 1327
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11V3ExecGraph11PackThreads4packER7V3Graph:bb.a
.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.t = mul nuw nsw i64 %i.o, 24                 ; 3 uses
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29
          to label %bb.c unwind label %bb.b       ; 4 uses

bb.b:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_setIPK9ExecMTaskSt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.h) #25
  br label %.body

bb.c:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  store ptr %i.u, ptr %i.n, align 8, !tbaa !297
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.o
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.u, i8 0, i64 %i.t, i1 false)
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.u, i64 %i.t
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !258 ; 12 uses
  %.phi.trans.insert1041 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre1042 = load ptr, ptr %.phi.trans.insert1041, align 8, !tbaa !261
  %i.x = icmp eq ptr %.pre, %.pre1042
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  store ptr %i.w, ptr %i.z, align 8, !tbaa !298
  store ptr %scevgep.i.i.i.i.i.i, ptr %i.y, align 8, !tbaa !299
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.x, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %3, align 8, !tbaa !231
  store i32 %i.ac, ptr %.pre, align 8, !tbaa !231
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !214 ; 3 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !214
  %i.af = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ag = load i64, ptr %i.j, align 8, !tbaa !213 ; 2 uses
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !213
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !300 ; 3 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !124
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !212
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !212
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !302
  %i.an = getelementptr inbounds nuw i8, ptr %.pre, i64 56 ; 4 uses
  store ptr null, ptr %i.an, align 8, !tbaa !303
  %i.ao = icmp eq ptr %i.ae, %i.i
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.an, ptr %i.ad, align 8, !tbaa !214
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !303
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !303
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aq = phi ptr [ %i.an, %bb.e ], [ %i.ae, %bb.d ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !207
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = urem i64 %i.at, %i.ag
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.au
  store ptr %i.ah, ptr %i.av, align 8, !tbaa !143
  br label %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.thread

_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.thread: ; preds = %bb.g, %bb.f
  store i64 0, ptr %i.m, align 8, !tbaa !304
  store i64 1, ptr %i.j, align 8, !tbaa !213
  store ptr null, ptr %i.i, align 8, !tbaa !303
  store ptr %i.i, ptr %i.h, align 8, !tbaa !214
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !305
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !305
  %i.az = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %i.ba = load <2 x ptr>, ptr %i.n, align 8, !tbaa !222
  store <2 x ptr> %i.ba, ptr %i.az, align 8, !tbaa !222
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre, i64 88
  %i.bc = load ptr, ptr %i.z, align 8, !tbaa !298
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !298
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.bd = load ptr, ptr %i.aa, align 8, !tbaa !258
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  store ptr %i.be, ptr %i.aa, align 8, !tbaa !258
  br label %_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i

bb.h:                                             ; preds = %.thread, %bb.c
  %i.bf = phi ptr [ %i.s, %.thread ], [ %i.ab, %bb.c ] ; 2 uses
  %i.bg = phi ptr [ %i.r, %.thread ], [ %i.aa, %bb.c ] ; 2 uses
  %i.bh = phi ptr [ %i.q, %.thread ], [ %i.z, %bb.c ]
  %i.bi = phi ptr [ %i.p, %.thread ], [ %i.y, %bb.c ]
  %i.bj = phi ptr [ null, %.thread ], [ %.pre, %bb.c ]
  invoke void @_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bj, ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit unwind label %bb.m

_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.h
  %.pre1043 = load ptr, ptr %i.n, align 8, !tbaa !297 ; 3 uses
  %.pre1044 = load ptr, ptr %i.bi, align 8, !tbaa !299 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %.pre1043, %.pre1044
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, %_ZSt8_DestroyISt6vectorIPK9ExecMTaskSaIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bq, %_ZSt8_DestroyISt6vectorIPK9ExecMTaskSaIS3_EEEvPT_.exit.i.i.i.i ], [ %.pre1043, %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ] ; 3 uses
  %i.bk = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !307 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPK9ExecMTaskSaIS3_EEEvPT_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !308
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bp) #28
  br label %_ZSt8_DestroyISt6vectorIPK9ExecMTaskSaIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIPK9ExecMTaskSaIS3_EEEvPT_.exit.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bq, %.pre1044
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !13

_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPK9ExecMTaskSaIS3_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.n, align 8, !tbaa !297
  br label %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %i.br = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %.pre1043, %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bs = load ptr, ptr %i.bh, align 8, !tbaa !298
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bv) #28
  br label %_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i

_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.thread, %bb.j, %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bw = phi ptr [ %i.ab, %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.thread ], [ %i.bf, %bb.j ], [ %i.bf, %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.bx = phi ptr [ %i.aa, %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.thread ], [ %i.bg, %bb.j ], [ %i.bg, %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i ] ; 10 uses
  %i.by = load ptr, ptr %i.k, align 8, !tbaa !300 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIPK9ExecMTaskS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %i.by, %_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i ] ; 2 uses
  %i.bz = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !124 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 16) #28
  %.not.i.i.i.i.i212 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i212, label %_ZNSt10_HashtableIPK9ExecMTaskS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

_ZNSt10_HashtableIPK9ExecMTaskS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i
  %i.ca = load ptr, ptr %i.h, align 8, !tbaa !214
  %i.cb = load i64, ptr %i.j, align 8, !tbaa !213
  %i.cc = shl i64 %i.cb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ca, i8 0, i64 %i.cc, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !214 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.i
  br i1 %i.ce, label %_ZN11V3ExecGraph14ThreadScheduleD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt10_HashtableIPK9ExecMTaskS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i
  %i.cf = load i64, ptr %i.j, align 8, !tbaa !213
  %i.cg = shl i64 %i.cf, 3
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #28
  br label %_ZN11V3ExecGraph14ThreadScheduleD2Ev.exit

_ZN11V3ExecGraph14ThreadScheduleD2Ev.exit:        ; preds = %_ZNSt10_HashtableIPK9ExecMTaskS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ci = load i32, ptr %1, align 4, !tbaa !111
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !111
  %i.ck = call i32 @llvm.umax.i32(i32 %i.ci, i32 %i.cj) ; 2 uses
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %.not.i.i.i.i213 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i.i213, label %.loopexit697, label %bb.l

bb.l:                                             ; preds = %_ZN11V3ExecGraph14ThreadScheduleD2Ev.exit
  %i.cm = shl nuw nsw i64 %i.cl, 2                ; 3 uses
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #29
          to label %.noexc214 unwind label %bb.n  ; 4 uses

.noexc214:                                        ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cn, i8 0, i64 %i.cm, i1 false), !tbaa !111
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cm
  %i.cq = ptrtoint ptr %i.co to i64
  br label %.loopexit697

.loopexit697:                                     ; preds = %.noexc214, %_ZN11V3ExecGraph14ThreadScheduleD2Ev.exit
  %.sroa.15.0 = phi i64 [ 0, %_ZN11V3ExecGraph14ThreadScheduleD2Ev.exit ], [ %i.cq, %.noexc214 ] ; 2 uses
  %.sroa.0659.0 = phi ptr [ null, %_ZN11V3ExecGraph14ThreadScheduleD2Ev.exit ], [ %i.cn, %.noexc214 ] ; 16 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZN11V3ExecGraph14ThreadScheduleD2Ev.exit ], [ %i.cp, %.noexc214 ] ; 4 uses
  %.sroa.0659.01351 = ptrtoaddr ptr %.sroa.0659.0 to i64 ; 2 uses
  %.0.i.i.i.i.i.i.i1352 = ptrtoaddr ptr %.0.i.i.i.i.i.i.i to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 13 uses
  store i32 0, ptr %i.cr, align 8, !tbaa !274
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr null, ptr %i.cs, align 8, !tbaa !275
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !276
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.cr, ptr %i.cu, align 8, !tbaa !277
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 7 uses
  store i64 0, ptr %i.cv, align 8, !tbaa !238
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0649.0926 = load ptr, ptr %i.cw, align 8, !tbaa !142 ; 2 uses
  %.not927 = icmp eq ptr %.sroa.0649.0926, null
  br i1 %.not927, label %._crit_edge964, label %.lr.ph

.preheader:                                       ; preds = %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit
  %.pre1045 = load i64, ptr %i.cv, align 8, !tbaa !238
  %i.cx = icmp eq i64 %.pre1045, 0
  br i1 %i.cx, label %._crit_edge964, label %.lr.ph963

.lr.ph963:                                        ; preds = %.preheader
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.dm = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 4 uses
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 3 uses
  %i.do = getelementptr i8, ptr %i.dm, i64 -24    ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ej = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %18, i64 80 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %18, i64 96 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.fa = getelementptr inbounds nuw i8, ptr %18, i64 112
  %i.fb = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %17, i64 56 ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %17, i64 72 ; 7 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %17, i64 80 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %17, i64 88 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.fl = getelementptr inbounds nuw i8, ptr %17, i64 64
  %.not5.i.i.i.i445 = icmp eq ptr %.sroa.0659.0, %.0.i.i.i.i.i.i.i ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 6 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %16, i64 72 ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.fw = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.fx = add i64 %.0.i.i.i.i.i.i.i1352, -4
  %i.fy = sub i64 %i.fx, %.sroa.0659.01351        ; 2 uses
  %i.fz = lshr i64 %i.fy, 2
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %min.iters.check1352 = icmp ult i64 %i.fy, 28
  %n.vec1354 = and i64 %i.ga, 9223372036854775800 ; 3 uses
  %i.gb = shl i64 %n.vec1354, 2
  %i.gc = getelementptr i8, ptr %.sroa.0659.0, i64 %i.gb
  %cmp.n1362 = icmp eq i64 %i.ga, %n.vec1354
  %i.gd = add i64 %.0.i.i.i.i.i.i.i1352, -4
  %i.ge = sub i64 %i.gd, %.sroa.0659.01351        ; 2 uses
  %i.gf = lshr i64 %i.ge, 2
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ge, 28
  %n.vec = and i64 %i.gg, 9223372036854775800     ; 3 uses
  %i.gh = shl i64 %n.vec, 2
  %i.gi = getelementptr i8, ptr %.sroa.0659.0, i64 %i.gh
  %cmp.n = icmp eq i64 %i.gg, %n.vec
  br label %bb.w

bb.m:                                             ; preds = %bb.h
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11V3ExecGraph14ThreadScheduleD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #25
  br label %.body

.body:                                            ; preds = %bb.b, %bb.m
  %.pn = phi { ptr, i32 } [ %i.gj, %bb.m ], [ %i.v, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit574

bb.n:                                             ; preds = %bb.l
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit574

.lr.ph:                                           ; preds = %.loopexit697, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit
  %.sroa.0649.0929 = phi ptr [ %.sroa.0649.0, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit ], [ %.sroa.0649.0926, %.loopexit697 ] ; 11 uses
  %.0928 = phi i32 [ %.sroa.speculated, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit ], [ 1, %.loopexit697 ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0649.0929, i64 8 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !135 ; 2 uses
  %.not.i210 = icmp eq ptr %i.gm, null
  %i.gn = select i1 %.not.i210, ptr %.sroa.0649.0929, ptr %i.gm
  call void @llvm.prefetch.p0(ptr nonnull %i.gn, i32 1, i32 3, i32 1)
  %i.go = load ptr, ptr %.sroa.0649.0929, align 8, !tbaa !49
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = invoke noundef zeroext i1 %i.gp(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0649.0929, i64 noundef ptrtoint (ptr @_ZZN9ExecMTask13v3RttiClassIdEvE15s_vlrttiClassId to i64))
          to label %.noexc215 unwind label %bb.v, !inline_history !4

.noexc215:                                        ; preds = %.lr.ph
  br i1 %i.gq, label %_ZN13V3GraphVertex2asI9ExecMTaskEEPT_v.exit, label %bb.o, !prof !136

bb.o:                                             ; preds = %.noexc215
  %i.gr = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.138, i32 noundef 249)
          to label %.noexc216 unwind label %bb.v  ; 0 uses

.noexc216:                                        ; preds = %bb.o
  %i.gs = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc217 unwind label %bb.v  ; 2 uses

.noexc217:                                        ; preds = %.noexc216
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gs, ptr noundef nonnull @.str.139, i64 noundef 37)
          to label %.noexc218 unwind label %bb.v  ; 0 uses

.noexc218:                                        ; preds = %.noexc217
  invoke void @_ZNK13V3GraphVertex15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0649.0929, ptr noundef nonnull align 8 dereferenceable(112) %i.gs)
          to label %_ZN13V3GraphVertex2asI9ExecMTaskEEPT_v.exit unwind label %bb.v

_ZN13V3GraphVertex2asI9ExecMTaskEEPT_v.exit:      ; preds = %.noexc215, %.noexc218
  %i.gu = load ptr, ptr %i.bx, align 8, !tbaa !260
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 -96
  %i.gw = invoke noundef zeroext i1 @_ZN11V3ExecGraph11PackThreads7isReadyERNS_14ThreadScheduleEPK9ExecMTask(ptr noundef nonnull align 8 dereferenceable(96) %i.gv, ptr noundef nonnull %.sroa.0649.0929)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %_ZN13V3GraphVertex2asI9ExecMTaskEEPT_v.exit
  br i1 %i.gw, label %bb.q, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

bb.q:                                             ; preds = %bb.p
  %.02022.i.i = load ptr, ptr %i.cs, align 8, !tbaa !309 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0649.0929, i64 80
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !106 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.r ] ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !207
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 80
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !106 ; 2 uses
  %i.hd = icmp ult i32 %i.gy, %i.hc               ; 2 uses
  %.in.v.i.i = select i1 %i.hd, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !309 ; 2 uses
  %.not.i.i576 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i576, label %._crit_edge.i.i577, label %bb.r, !llvm.loop !729

._crit_edge.i.i577:                               ; preds = %bb.r
  br i1 %i.hd, label %._crit_edge.thread.i.i, label %bb.t

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i577, %bb.q
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i577 ], [ %i.cr, %bb.q ] ; 4 uses
  %i.he = load ptr, ptr %i.ct, align 8, !tbaa !276
  %i.hf = icmp eq ptr %.019.lcssa29.i.i, %i.he
  br i1 %i.hf, label %select.unfold.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread.i.i
  %i.hg = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #30
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %.pre.i578 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !207
  %.phi.trans.insert19.i = getelementptr inbounds nuw i8, ptr %.pre.i578, i64 80
  %.pre20.i = load i32, ptr %.phi.trans.insert19.i, align 8, !tbaa !106
  %.phi.trans.insert21.i = getelementptr inbounds nuw i8, ptr %.sroa.0649.0929, i64 80
  %.pre22.i = load i32, ptr %.phi.trans.insert21.i, align 8, !tbaa !106
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i577
  %i.hh = phi i32 [ %.pre22.i, %bb.s ], [ %i.gy, %._crit_edge.i.i577 ]
  %i.hi = phi i32 [ %.pre20.i, %bb.s ], [ %i.hc, %._crit_edge.i.i577 ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.s ], [ %.02024.i.i, %._crit_edge.i.i577 ]
  %i.hj = icmp ult i32 %i.hi, %i.hh
  br i1 %i.hj, label %select.unfold.i, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

select.unfold.i:                                  ; preds = %bb.t, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa28.i.i, %bb.t ] ; 3 uses
  %i.hk = icmp eq ptr %.sroa.4.0.i.ph.i, %i.cr
  br i1 %i.hk, label %_ZNSt8_Rb_treeIP9ExecMTaskS1_St9_IdentityIS1_EN11V3ExecGraph11PackThreads8MTaskCmpESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i, label %bb.u

bb.u:                                             ; preds = %select.unfold.i
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !207
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0649.0929, i64 80
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !106
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 80
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !106
  %i.hr = icmp ult i32 %i.ho, %i.hq
  br label %_ZNSt8_Rb_treeIP9ExecMTaskS1_St9_IdentityIS1_EN11V3ExecGraph11PackThreads8MTaskCmpESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i

_ZNSt8_Rb_treeIP9ExecMTaskS1_St9_IdentityIS1_EN11V3ExecGraph11PackThreads8MTaskCmpESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i: ; preds = %bb.u, %select.unfold.i
  %i.hs = phi i1 [ %i.hr, %bb.u ], [ true, %select.unfold.i ]
  %i.ht = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29
          to label %.noexc579 unwind label %bb.v  ; 2 uses

.noexc579:                                        ; preds = %_ZNSt8_Rb_treeIP9ExecMTaskS1_St9_IdentityIS1_EN11V3ExecGraph11PackThreads8MTaskCmpESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  store ptr %.sroa.0649.0929, ptr %i.hu, align 8, !tbaa !207
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.hs, ptr noundef nonnull %i.ht, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cr) #25
  %i.hv = load i64, ptr %i.cv, align 8, !tbaa !238
  %i.hw = add i64 %i.hv, 1
  store i64 %i.hw, ptr %i.cv, align 8, !tbaa !238
  br label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

bb.v:                                             ; preds = %_ZNSt8_Rb_treeIP9ExecMTaskS1_St9_IdentityIS1_EN11V3ExecGraph11PackThreads8MTaskCmpESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i, %.noexc218, %.noexc217, %.noexc216, %bb.o, %.lr.ph, %_ZN13V3GraphVertex2asI9ExecMTaskEEPT_v.exit
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.hb

_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit: ; preds = %bb.t, %.noexc579, %bb.p
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0649.0929, i64 144
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !108
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.0928, i32 %i.hz) ; 3 uses
  %.sroa.0649.0 = load ptr, ptr %i.gl, align 8, !tbaa !142 ; 2 uses
  %.not = icmp eq ptr %.sroa.0649.0, null
  br i1 %.not, label %.preheader, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph963, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit
  %.0114962 = phi i8 [ 0, %.lr.ph963 ], [ %.5119, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store ptr null, ptr %i.d, align 8, !tbaa !207
  %i.ia = load ptr, ptr %i.bx, align 8, !tbaa !260 ; 4 uses
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 -96 ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %i.ia, i64 -24 ; 2 uses
  %i.id = getelementptr inbounds i8, ptr %i.ia, i64 -16 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !299
  %i.if = load ptr, ptr %i.ic, align 8, !tbaa !297
  %.not965 = icmp eq ptr %i.ie, %i.if
  br i1 %.not965, label %._crit_edge953, label %.lr.ph952

._crit_edge953.loopexit:                          ; preds = %.loopexit686
  %.pre1048 = load ptr, ptr %i.d, align 8, !tbaa !207
  %i.ig = zext i32 %.1132744 to i64
  br label %._crit_edge953

._crit_edge953:                                   ; preds = %._crit_edge953.loopexit, %bb.w
  %i.ih = phi ptr [ null, %bb.w ], [ %.pre1048, %._crit_edge953.loopexit ] ; 3 uses
  %.0131.lcssa = phi i64 [ 4294967295, %bb.w ], [ %i.ig, %._crit_edge953.loopexit ]
  %.0125.lcssa = phi i32 [ 0, %bb.w ], [ %.1126729, %._crit_edge953.loopexit ] ; 2 uses
  %.1115.lcssa = phi i8 [ %.0114962, %bb.w ], [ %.2116714, %._crit_edge953.loopexit ] ; 4 uses
  %i.ii = getelementptr inbounds i8, ptr %i.ia, i64 -32
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !305 ; 4 uses
  %i.ik = icmp eq ptr %i.ih, null                 ; 3 uses
  %i.il = icmp eq i8 %.1115.lcssa, 1
  %or.cond3 = select i1 %i.ik, i1 %i.il, i1 false
  br i1 %or.cond3, label %bb.cl, label %bb.dg

.lr.ph952:                                        ; preds = %bb.w, %.loopexit686
  %i.im = phi i64 [ %i.sl, %.loopexit686 ], [ 0, %bb.w ] ; 3 uses
  %.1115950 = phi i8 [ %.2116714, %.loopexit686 ], [ %.0114962, %bb.w ] ; 2 uses
  %.0124948 = phi i32 [ %i.sk, %.loopexit686 ], [ 0, %bb.w ] ; 3 uses
  %.0125947 = phi i32 [ %.1126729, %.loopexit686 ], [ 0, %bb.w ] ; 2 uses
  %.0131946 = phi i32 [ %.1132744, %.loopexit686 ], [ -1, %bb.w ] ; 2 uses
  %i.in = load ptr, ptr %i.ct, align 8, !tbaa !276 ; 2 uses
  %.not679936 = icmp eq ptr %i.in, %i.cr
  br i1 %.not679936, label %.loopexit686, label %.lr.ph942

.lr.ph942:                                        ; preds = %.lr.ph952
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0659.0, i64 %i.im
  br label %bb.x
end_hunk_0
