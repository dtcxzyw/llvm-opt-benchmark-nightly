Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3ExecGraph?download=true
inline.NumInlined: 4151
inline.NumDeleted: 1327
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11V3ExecGraph11PackThreads4packER7V3Graph:bb.a
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
  %.sroa.0659.0 = phi ptr [ null, %_ZN11V3ExecGraph14ThreadScheduleD2Ev.exit ], [ %i.cn, %.noexc214 ] ; 17 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZN11V3ExecGraph14ThreadScheduleD2Ev.exit ], [ %i.cp, %.noexc214 ] ; 5 uses
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
  %i.fx = ptrtoaddr ptr %.0.i.i.i.i.i.i.i to i64
  %i.fy = ptrtoaddr ptr %.sroa.0659.0 to i64
  %i.fz = add i64 %i.fx, -4
  %i.ga = sub i64 %i.fz, %i.fy                    ; 2 uses
  %i.gb = lshr i64 %i.ga, 2
  %i.gc = add nuw nsw i64 %i.gb, 1                ; 2 uses
  %min.iters.check1352 = icmp ult i64 %i.ga, 28
  %n.vec1354 = and i64 %i.gc, 9223372036854775800 ; 3 uses
  %i.gd = shl i64 %n.vec1354, 2
  %i.ge = getelementptr i8, ptr %.sroa.0659.0, i64 %i.gd
  %cmp.n1362 = icmp eq i64 %i.gc, %n.vec1354
  %i.gf = ptrtoaddr ptr %.0.i.i.i.i.i.i.i to i64
  %i.gg = ptrtoaddr ptr %.sroa.0659.0 to i64
  %i.gh = add i64 %i.gf, -4
  %i.gi = sub i64 %i.gh, %i.gg                    ; 2 uses
  %i.gj = lshr i64 %i.gi, 2
  %i.gk = add nuw nsw i64 %i.gj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gi, 28
  %n.vec = and i64 %i.gk, 9223372036854775800     ; 3 uses
  %i.gl = shl i64 %n.vec, 2
  %i.gm = getelementptr i8, ptr %.sroa.0659.0, i64 %i.gl
  %cmp.n = icmp eq i64 %i.gk, %n.vec
  br label %bb.w

bb.m:                                             ; preds = %bb.h
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11V3ExecGraph14ThreadScheduleD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #25
  br label %.body

.body:                                            ; preds = %bb.b, %bb.m
  %.pn = phi { ptr, i32 } [ %i.gn, %bb.m ], [ %i.v, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit574

bb.n:                                             ; preds = %bb.l
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit574

.lr.ph:                                           ; preds = %.loopexit697, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit
  %.sroa.0649.0929 = phi ptr [ %.sroa.0649.0, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit ], [ %.sroa.0649.0926, %.loopexit697 ] ; 11 uses
  %.0928 = phi i32 [ %.sroa.speculated, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit ], [ 1, %.loopexit697 ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0649.0929, i64 8 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !135 ; 2 uses
  %.not.i210 = icmp eq ptr %i.gq, null
  %i.gr = select i1 %.not.i210, ptr %.sroa.0649.0929, ptr %i.gq
  call void @llvm.prefetch.p0(ptr nonnull %i.gr, i32 1, i32 3, i32 1)
  %i.gs = load ptr, ptr %.sroa.0649.0929, align 8, !tbaa !49
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = invoke noundef zeroext i1 %i.gt(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0649.0929, i64 noundef ptrtoint (ptr @_ZZN9ExecMTask13v3RttiClassIdEvE15s_vlrttiClassId to i64))
          to label %.noexc215 unwind label %bb.v, !inline_history !4

.noexc215:                                        ; preds = %.lr.ph
  br i1 %i.gu, label %_ZN13V3GraphVertex2asI9ExecMTaskEEPT_v.exit, label %bb.o, !prof !136

bb.o:                                             ; preds = %.noexc215
  %i.gv = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.138, i32 noundef 249)
          to label %.noexc216 unwind label %bb.v  ; 0 uses

.noexc216:                                        ; preds = %bb.o
  %i.gw = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc217 unwind label %bb.v  ; 2 uses

.noexc217:                                        ; preds = %.noexc216
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef nonnull @.str.139, i64 noundef 37)
          to label %.noexc218 unwind label %bb.v  ; 0 uses

.noexc218:                                        ; preds = %.noexc217
  invoke void @_ZNK13V3GraphVertex15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0649.0929, ptr noundef nonnull align 8 dereferenceable(112) %i.gw)
          to label %_ZN13V3GraphVertex2asI9ExecMTaskEEPT_v.exit unwind label %bb.v

_ZN13V3GraphVertex2asI9ExecMTaskEEPT_v.exit:      ; preds = %.noexc215, %.noexc218
  %i.gy = load ptr, ptr %i.bx, align 8, !tbaa !260
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -96
  %i.ha = invoke noundef zeroext i1 @_ZN11V3ExecGraph11PackThreads7isReadyERNS_14ThreadScheduleEPK9ExecMTask(ptr noundef nonnull align 8 dereferenceable(96) %i.gz, ptr noundef nonnull %.sroa.0649.0929)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %_ZN13V3GraphVertex2asI9ExecMTaskEEPT_v.exit
  br i1 %i.ha, label %bb.q, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

bb.q:                                             ; preds = %bb.p
  %.02022.i.i = load ptr, ptr %i.cs, align 8, !tbaa !309 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0649.0929, i64 80
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !106 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.r ] ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !207
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 80
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !106 ; 2 uses
  %i.hh = icmp ult i32 %i.hc, %i.hg               ; 2 uses
  %.in.v.i.i = select i1 %i.hh, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !309 ; 2 uses
  %.not.i.i576 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i576, label %._crit_edge.i.i577, label %bb.r, !llvm.loop !729

._crit_edge.i.i577:                               ; preds = %bb.r
  br i1 %i.hh, label %._crit_edge.thread.i.i, label %bb.t

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i577, %bb.q
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i577 ], [ %i.cr, %bb.q ] ; 4 uses
  %i.hi = load ptr, ptr %i.ct, align 8, !tbaa !276
  %i.hj = icmp eq ptr %.019.lcssa29.i.i, %i.hi
  br i1 %i.hj, label %select.unfold.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread.i.i
  %i.hk = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #30
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %.pre.i578 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !207
  %.phi.trans.insert19.i = getelementptr inbounds nuw i8, ptr %.pre.i578, i64 80
  %.pre20.i = load i32, ptr %.phi.trans.insert19.i, align 8, !tbaa !106
  %.phi.trans.insert21.i = getelementptr inbounds nuw i8, ptr %.sroa.0649.0929, i64 80
  %.pre22.i = load i32, ptr %.phi.trans.insert21.i, align 8, !tbaa !106
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i577
  %i.hl = phi i32 [ %.pre22.i, %bb.s ], [ %i.hc, %._crit_edge.i.i577 ]
  %i.hm = phi i32 [ %.pre20.i, %bb.s ], [ %i.hg, %._crit_edge.i.i577 ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.s ], [ %.02024.i.i, %._crit_edge.i.i577 ]
  %i.hn = icmp ult i32 %i.hm, %i.hl
  br i1 %i.hn, label %select.unfold.i, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

select.unfold.i:                                  ; preds = %bb.t, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa28.i.i, %bb.t ] ; 3 uses
  %i.ho = icmp eq ptr %.sroa.4.0.i.ph.i, %i.cr
  br i1 %i.ho, label %_ZNSt8_Rb_treeIP9ExecMTaskS1_St9_IdentityIS1_EN11V3ExecGraph11PackThreads8MTaskCmpESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i, label %bb.u

bb.u:                                             ; preds = %select.unfold.i
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !207
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0649.0929, i64 80
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !106
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 80
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !106
  %i.hv = icmp ult i32 %i.hs, %i.hu
  br label %_ZNSt8_Rb_treeIP9ExecMTaskS1_St9_IdentityIS1_EN11V3ExecGraph11PackThreads8MTaskCmpESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i

_ZNSt8_Rb_treeIP9ExecMTaskS1_St9_IdentityIS1_EN11V3ExecGraph11PackThreads8MTaskCmpESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i: ; preds = %bb.u, %select.unfold.i
  %i.hw = phi i1 [ %i.hv, %bb.u ], [ true, %select.unfold.i ]
  %i.hx = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29
          to label %.noexc579 unwind label %bb.v  ; 2 uses

.noexc579:                                        ; preds = %_ZNSt8_Rb_treeIP9ExecMTaskS1_St9_IdentityIS1_EN11V3ExecGraph11PackThreads8MTaskCmpESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  store ptr %.sroa.0649.0929, ptr %i.hy, align 8, !tbaa !207
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.hw, ptr noundef nonnull %i.hx, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cr) #25
  %i.hz = load i64, ptr %i.cv, align 8, !tbaa !238
  %i.ia = add i64 %i.hz, 1
  store i64 %i.ia, ptr %i.cv, align 8, !tbaa !238
  br label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

bb.v:                                             ; preds = %_ZNSt8_Rb_treeIP9ExecMTaskS1_St9_IdentityIS1_EN11V3ExecGraph11PackThreads8MTaskCmpESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i, %.noexc218, %.noexc217, %.noexc216, %bb.o, %.lr.ph, %_ZN13V3GraphVertex2asI9ExecMTaskEEPT_v.exit
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.hb

_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit: ; preds = %bb.t, %.noexc579, %bb.p
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0649.0929, i64 144
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !108
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.0928, i32 %i.id) ; 3 uses
  %.sroa.0649.0 = load ptr, ptr %i.gp, align 8, !tbaa !142 ; 2 uses
  %.not = icmp eq ptr %.sroa.0649.0, null
  br i1 %.not, label %.preheader, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph963, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit
  %.0114962 = phi i8 [ 0, %.lr.ph963 ], [ %.5119, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store ptr null, ptr %i.d, align 8, !tbaa !207
  %i.ie = load ptr, ptr %i.bx, align 8, !tbaa !260 ; 4 uses
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 -96 ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %i.ie, i64 -24 ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %i.ie, i64 -16 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !299
  %i.ij = load ptr, ptr %i.ig, align 8, !tbaa !297
  %.not965 = icmp eq ptr %i.ii, %i.ij
  br i1 %.not965, label %._crit_edge953, label %.lr.ph952
end_hunk_0
begin_hunk_1_@_ZN11V3ExecGraph11PackThreads4packER7V3Graph:bb.a
  store ptr %i.ud, ptr %i.tu, align 8, !tbaa !214
  %i.uf = load ptr, ptr %i.fn, align 8, !tbaa !303
  store ptr %i.uf, ptr %i.ud, align 8, !tbaa !303
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.ug = phi ptr [ %i.ud, %bb.cy ], [ %i.tv, %bb.cx ]
  %.not.i.i.i.i.i.i386 = icmp eq ptr %i.tz, null
  br i1 %.not.i.i.i.i.i.i386, label %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i399.thread, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !207
  %i.uj = ptrtoint ptr %i.ui to i64
  %i.uk = urem i64 %i.uj, %i.tx
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %i.uk
  store ptr %i.ty, ptr %i.ul, align 8, !tbaa !143
  br label %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i399.thread

_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i399.thread: ; preds = %bb.da, %bb.cz
  store i64 0, ptr %i.fr, align 8, !tbaa !304
  store i64 1, ptr %i.fo, align 8, !tbaa !213
  store ptr null, ptr %i.fn, align 8, !tbaa !303
  store ptr %i.fn, ptr %i.fm, align 8, !tbaa !214
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i8 0, i64 16, i1 false)
  %i.um = getelementptr inbounds nuw i8, ptr %i.tq, i64 64
  %i.un = load i32, ptr %i.fw, align 8, !tbaa !305
  store i32 %i.un, ptr %i.um, align 8, !tbaa !305
  %i.uo = getelementptr inbounds nuw i8, ptr %i.tq, i64 72
  %i.up = load <2 x ptr>, ptr %i.fs, align 8, !tbaa !222
  store <2 x ptr> %i.up, ptr %i.uo, align 8, !tbaa !222
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tq, i64 88
  %i.ur = load ptr, ptr %i.fu, align 8, !tbaa !298
  store ptr %i.ur, ptr %i.uq, align 8, !tbaa !298
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fs, i8 0, i64 24, i1 false)
  %i.us = load ptr, ptr %i.bx, align 8, !tbaa !258
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 96
  store ptr %i.ut, ptr %i.bx, align 8, !tbaa !258
  br label %_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i401

bb.db:                                            ; preds = %.noexc.i377
  invoke void @_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.tq, ptr noundef nonnull align 8 dereferenceable(96) %16)
          to label %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit390 unwind label %bb.df

_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit390: ; preds = %bb.db
  %.pre1052 = load ptr, ptr %i.fs, align 8, !tbaa !297 ; 3 uses
  %.pre1053 = load ptr, ptr %i.ft, align 8, !tbaa !299 ; 2 uses
  %.not4.i.i.i.i391 = icmp eq ptr %.pre1052, %.pre1053
  br i1 %.not4.i.i.i.i391, label %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i399, label %.lr.ph.i.i.i.i392

.lr.ph.i.i.i.i392:                                ; preds = %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit390, %_ZSt8_DestroyISt6vectorIPK9ExecMTaskSaIS3_EEEvPT_.exit.i.i.i.i395
  %.05.i.i.i.i393 = phi ptr [ %i.va, %_ZSt8_DestroyISt6vectorIPK9ExecMTaskSaIS3_EEEvPT_.exit.i.i.i.i395 ], [ %.pre1052, %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit390 ] ; 3 uses
  %i.uu = load ptr, ptr %.05.i.i.i.i393, align 8, !tbaa !307 ; 3 uses
  %.not.i.i.i.i.i.i.i.i394 = icmp eq ptr %i.uu, null
  br i1 %.not.i.i.i.i.i.i.i.i394, label %_ZSt8_DestroyISt6vectorIPK9ExecMTaskSaIS3_EEEvPT_.exit.i.i.i.i395, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i.i.i.i392
  %i.uv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i393, i64 16
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !308
  %i.ux = ptrtoint ptr %i.uw to i64
  %i.uy = ptrtoint ptr %i.uu to i64
  %i.uz = sub i64 %i.ux, %i.uy
  call void @_ZdlPvm(ptr noundef nonnull %i.uu, i64 noundef %i.uz) #28
  br label %_ZSt8_DestroyISt6vectorIPK9ExecMTaskSaIS3_EEEvPT_.exit.i.i.i.i395

_ZSt8_DestroyISt6vectorIPK9ExecMTaskSaIS3_EEEvPT_.exit.i.i.i.i395: ; preds = %bb.dc, %.lr.ph.i.i.i.i392
  %i.va = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i393, i64 24 ; 2 uses
  %.not.i.i.i.i396 = icmp eq ptr %i.va, %.pre1053
  br i1 %.not.i.i.i.i396, label %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i397, label %.lr.ph.i.i.i.i392, !llvm.loop !13

_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i397: ; preds = %_ZSt8_DestroyISt6vectorIPK9ExecMTaskSaIS3_EEEvPT_.exit.i.i.i.i395
  %.pr.i.i398 = load ptr, ptr %i.fs, align 8, !tbaa !297
  br label %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i399

_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i399: ; preds = %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i397, %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit390
  %i.vb = phi ptr [ %.pr.i.i398, %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i397 ], [ %.pre1052, %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit390 ] ; 3 uses
  %.not.i.i1.i.i400 = icmp eq ptr %i.vb, null
  br i1 %.not.i.i1.i.i400, label %_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i401, label %bb.dd

bb.dd:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i399
  %i.vc = load ptr, ptr %i.fu, align 8, !tbaa !298
  %i.vd = ptrtoint ptr %i.vc to i64
  %i.ve = ptrtoint ptr %i.vb to i64
  %i.vf = sub i64 %i.vd, %i.ve
  call void @_ZdlPvm(ptr noundef nonnull %i.vb, i64 noundef %i.vf) #28
  br label %_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i401

_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i401: ; preds = %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i399.thread, %bb.dd, %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i399
  %i.vg = load ptr, ptr %i.fp, align 8, !tbaa !300 ; 2 uses
  %.not5.i.i.i.i.i402 = icmp eq ptr %i.vg, null
  br i1 %.not5.i.i.i.i.i402, label %_ZNSt10_HashtableIPK9ExecMTaskS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i406, label %.lr.ph.i.i.i.i.i403

.lr.ph.i.i.i.i.i403:                              ; preds = %_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i401, %.lr.ph.i.i.i.i.i403
  %.06.i.i.i.i.i404 = phi ptr [ %i.vh, %.lr.ph.i.i.i.i.i403 ], [ %i.vg, %_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i401 ] ; 2 uses
  %i.vh = load ptr, ptr %.06.i.i.i.i.i404, align 8, !tbaa !124 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i404, i64 noundef 16) #28
  %.not.i.i.i.i.i405 = icmp eq ptr %i.vh, null
  br i1 %.not.i.i.i.i.i405, label %_ZNSt10_HashtableIPK9ExecMTaskS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i406, label %.lr.ph.i.i.i.i.i403, !llvm.loop !14

_ZNSt10_HashtableIPK9ExecMTaskS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i406: ; preds = %.lr.ph.i.i.i.i.i403, %_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i401
  %i.vi = load ptr, ptr %i.fm, align 8, !tbaa !214
  %i.vj = load i64, ptr %i.fo, align 8, !tbaa !213
  %i.vk = shl i64 %i.vj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.vi, i8 0, i64 %i.vk, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i8 0, i64 16, i1 false)
  %i.vl = load ptr, ptr %i.fm, align 8, !tbaa !214 ; 2 uses
  %i.vm = icmp eq ptr %i.vl, %i.fn
  br i1 %i.vm, label %_ZN11V3ExecGraph14ThreadScheduleD2Ev.exit407, label %bb.de

bb.de:                                            ; preds = %_ZNSt10_HashtableIPK9ExecMTaskS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i406
  %i.vn = load i64, ptr %i.fo, align 8, !tbaa !213
  %i.vo = shl i64 %i.vn, 3
  call void @_ZdlPvm(ptr noundef %i.vl, i64 noundef %i.vo) #28
  br label %_ZN11V3ExecGraph14ThreadScheduleD2Ev.exit407

_ZN11V3ExecGraph14ThreadScheduleD2Ev.exit407:     ; preds = %_ZNSt10_HashtableIPK9ExecMTaskS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i406, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br i1 %.not5.i.i.i.i445, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i408.preheader

.lr.ph.i.i.i.i408.preheader:                      ; preds = %_ZN11V3ExecGraph14ThreadScheduleD2Ev.exit407
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i408.preheader1386, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i408.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.in, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.vp = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.0659.0, i64 %i.vp ; 2 uses
  %i.vq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !111
  store <4 x i32> %broadcast.splat, ptr %i.vq, align 4, !tbaa !111
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.vr = icmp eq i64 %index.next, %n.vec
  br i1 %i.vr, label %middle.block, label %vector.body, !llvm.loop !755

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i408.preheader1386

.lr.ph.i.i.i.i408.preheader1386:                  ; preds = %.lr.ph.i.i.i.i408.preheader, %middle.block
  %.06.i.i.i.i.ph = phi ptr [ %.sroa.0659.0, %.lr.ph.i.i.i.i408.preheader ], [ %i.gm, %middle.block ]
  br label %.lr.ph.i.i.i.i408

.lr.ph.i.i.i.i408:                                ; preds = %.lr.ph.i.i.i.i408.preheader1386, %.lr.ph.i.i.i.i408
  %.06.i.i.i.i = phi ptr [ %i.vs, %.lr.ph.i.i.i.i408 ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i408.preheader1386 ] ; 2 uses
  store i32 %i.in, ptr %.06.i.i.i.i, align 4, !tbaa !111
  %i.vs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i409 = icmp eq ptr %i.vs, %.0.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i409, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i408, !llvm.loop !756

bb.df:                                            ; preds = %bb.db
  %i.vt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11V3ExecGraph14ThreadScheduleD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %16) #25
  br label %.body382

.body382:                                         ; preds = %bb.cw, %bb.df
  %.pn167 = phi { ptr, i32 } [ %i.vt, %bb.df ], [ %i.ts, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %.body464

bb.dg:                                            ; preds = %._crit_edge953
  %i.vu = icmp eq i8 %.1115.lcssa, 2
  %or.cond5 = select i1 %i.io, i1 %i.vu, i1 false
  br i1 %or.cond5, label %bb.dh, label %bb.dx

bb.dh:                                            ; preds = %bb.dg
  %i.vv = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN11V3ExecGraph14ThreadSchedule12s_mtaskStateE, i64 24), align 8, !tbaa !205
  %i.vw = icmp eq i64 %i.vv, 0
  br i1 %i.vw, label %bb.di, label %bb.dl, !prof !129

bb.di:                                            ; preds = %bb.dh
  %i.vx = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.8, i32 noundef 503)
          to label %bb.dj unwind label %bb.cq     ; 0 uses

bb.dj:                                            ; preds = %bb.di
  %i.vy = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.dk unwind label %bb.cq     ; 2 uses

bb.dk:                                            ; preds = %bb.dj
  %i.vz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vy, ptr noundef nonnull @.str.130, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit451.invoke unwind label %bb.cq ; 0 uses

bb.dl:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %i.wa = load i32, ptr %1, align 4, !tbaa !252   ; 2 uses
  %i.wb = load i32, ptr @_ZN11V3ExecGraph14ThreadSchedule8s_nextIdE, align 4, !tbaa !111 ; 2 uses
  %i.wc = add i32 %i.wb, 1
  store i32 %i.wc, ptr @_ZN11V3ExecGraph14ThreadSchedule8s_nextIdE, align 4, !tbaa !111
  store i32 %i.wb, ptr %17, align 8, !tbaa !231
  store ptr %i.fc, ptr %i.fb, align 8, !tbaa !214
  store i64 1, ptr %i.fd, align 8, !tbaa !213
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ff, align 8, !tbaa !141
  %i.wd = zext i32 %i.wa to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fh, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i412 = icmp eq i32 %i.wa, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fg, i8 0, i64 20, i1 false)
  br i1 %.not.i.i.i.i.i412, label %_ZNSt12_Vector_baseISt6vectorIPK9ExecMTaskSaIS3_EESaIS5_EEC2EmRKS6_.exit.thread.i.i418, label %.lr.ph.preheader.i.i.i.i.i.i413

_ZNSt12_Vector_baseISt6vectorIPK9ExecMTaskSaIS3_EESaIS5_EEC2EmRKS6_.exit.thread.i.i418: ; preds = %bb.dl
  store i64 0, ptr %i.fh, align 8
  br label %bb.dn

.lr.ph.preheader.i.i.i.i.i.i413:                  ; preds = %bb.dl
  %i.we = mul nuw nsw i64 %i.wd, 24               ; 3 uses
  %i.wf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.we) #29
          to label %.noexc.i414 unwind label %bb.dm ; 4 uses

.noexc.i414:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i.i413
  store ptr %i.wf, ptr %i.fh, align 8, !tbaa !297
  %i.wg = getelementptr inbounds nuw [24 x i8], ptr %i.wf, i64 %i.wd
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.wf, i8 0, i64 %i.we, i1 false)
  %scevgep.i.i.i.i.i.i415 = getelementptr i8, ptr %i.wf, i64 %i.we
  br label %bb.dn

bb.dm:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i.i413
  %i.wh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_setIPK9ExecMTaskSt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.fb) #25
  br label %.body419

bb.dn:                                            ; preds = %.noexc.i414, %_ZNSt12_Vector_baseISt6vectorIPK9ExecMTaskSaIS3_EESaIS5_EEC2EmRKS6_.exit.thread.i.i418
  %.sink.i.i416 = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIPK9ExecMTaskSaIS3_EESaIS5_EEC2EmRKS6_.exit.thread.i.i418 ], [ %i.wg, %.noexc.i414 ]
  %.0.lcssa.i.i.i.i.i.i417 = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIPK9ExecMTaskSaIS3_EESaIS5_EEC2EmRKS6_.exit.thread.i.i418 ], [ %scevgep.i.i.i.i.i.i415, %.noexc.i414 ]
  store ptr %.sink.i.i416, ptr %i.fj, align 8, !tbaa !298
  store ptr %.0.lcssa.i.i.i.i.i.i417, ptr %i.fi, align 8, !tbaa !299
  %i.wi = load ptr, ptr %i.bx, align 8, !tbaa !258 ; 12 uses
  %i.wj = load ptr, ptr %i.bw, align 8, !tbaa !261
  %.not.i422 = icmp eq ptr %i.wi, %i.wj
  br i1 %.not.i422, label %bb.ds, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.wk = load i32, ptr %17, align 8, !tbaa !231
  store i32 %i.wk, ptr %i.wi, align 8, !tbaa !231
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wi, i64 8 ; 2 uses
  %i.wm = load ptr, ptr %i.fb, align 8, !tbaa !214 ; 3 uses
  store ptr %i.wm, ptr %i.wl, align 8, !tbaa !214
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %i.wo = load i64, ptr %i.fd, align 8, !tbaa !213 ; 2 uses
  store i64 %i.wo, ptr %i.wn, align 8, !tbaa !213
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wi, i64 24 ; 2 uses
  %i.wq = load ptr, ptr %i.fe, align 8, !tbaa !300 ; 3 uses
  store ptr %i.wq, ptr %i.wp, align 8, !tbaa !124
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wi, i64 32
  %i.ws = load i64, ptr %i.fk, align 8, !tbaa !212
  store i64 %i.ws, ptr %i.wr, align 8, !tbaa !212
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wi, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wt, ptr noundef nonnull align 8 dereferenceable(16) %i.ff, i64 16, i1 false), !tbaa.struct !302
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wi, i64 56 ; 4 uses
  store ptr null, ptr %i.wu, align 8, !tbaa !303
  %i.wv = icmp eq ptr %i.wm, %i.fc
  br i1 %i.wv, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  store ptr %i.wu, ptr %i.wl, align 8, !tbaa !214
  %i.ww = load ptr, ptr %i.fc, align 8, !tbaa !303
  store ptr %i.ww, ptr %i.wu, align 8, !tbaa !303
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.wx = phi ptr [ %i.wu, %bb.dp ], [ %i.wm, %bb.do ]
  %.not.i.i.i.i.i.i423 = icmp eq ptr %i.wq, null
  br i1 %.not.i.i.i.i.i.i423, label %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i436.thread, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !207
  %i.xa = ptrtoint ptr %i.wz to i64
  %i.xb = urem i64 %i.xa, %i.wo
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.wx, i64 %i.xb
  store ptr %i.wp, ptr %i.xc, align 8, !tbaa !143
  br label %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i436.thread

_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i436.thread: ; preds = %bb.dr, %bb.dq
  store i64 0, ptr %i.fg, align 8, !tbaa !304
  store i64 1, ptr %i.fd, align 8, !tbaa !213
  store ptr null, ptr %i.fc, align 8, !tbaa !303
  store ptr %i.fc, ptr %i.fb, align 8, !tbaa !214
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i8 0, i64 16, i1 false)
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wi, i64 64
  %i.xe = load i32, ptr %i.fl, align 8, !tbaa !305
  store i32 %i.xe, ptr %i.xd, align 8, !tbaa !305
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wi, i64 72
  %i.xg = load <2 x ptr>, ptr %i.fh, align 8, !tbaa !222
  store <2 x ptr> %i.xg, ptr %i.xf, align 8, !tbaa !222
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wi, i64 88
  %i.xi = load ptr, ptr %i.fj, align 8, !tbaa !298
  store ptr %i.xi, ptr %i.xh, align 8, !tbaa !298
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fh, i8 0, i64 24, i1 false)
  %i.xj = load ptr, ptr %i.bx, align 8, !tbaa !258
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 96
  store ptr %i.xk, ptr %i.bx, align 8, !tbaa !258
  br label %_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i438

bb.ds:                                            ; preds = %bb.dn
  invoke void @_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.wi, ptr noundef nonnull align 8 dereferenceable(96) %17)
          to label %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit427 unwind label %bb.dw

_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit427: ; preds = %bb.ds
  %.pre1050 = load ptr, ptr %i.fh, align 8, !tbaa !297 ; 3 uses
  %.pre1051 = load ptr, ptr %i.fi, align 8, !tbaa !299 ; 2 uses
  %.not4.i.i.i.i428 = icmp eq ptr %.pre1050, %.pre1051
  br i1 %.not4.i.i.i.i428, label %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i436, label %.lr.ph.i.i.i.i429

.lr.ph.i.i.i.i429:                                ; preds = %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit427, %_ZSt8_DestroyISt6vectorIPK9ExecMTaskSaIS3_EEEvPT_.exit.i.i.i.i432
  %.05.i.i.i.i430 = phi ptr [ %i.xr, %_ZSt8_DestroyISt6vectorIPK9ExecMTaskSaIS3_EEEvPT_.exit.i.i.i.i432 ], [ %.pre1050, %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit427 ] ; 3 uses
  %i.xl = load ptr, ptr %.05.i.i.i.i430, align 8, !tbaa !307 ; 3 uses
  %.not.i.i.i.i.i.i.i.i431 = icmp eq ptr %i.xl, null
  br i1 %.not.i.i.i.i.i.i.i.i431, label %_ZSt8_DestroyISt6vectorIPK9ExecMTaskSaIS3_EEEvPT_.exit.i.i.i.i432, label %bb.dt

bb.dt:                                            ; preds = %.lr.ph.i.i.i.i429
  %i.xm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i430, i64 16
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !308
  %i.xo = ptrtoint ptr %i.xn to i64
  %i.xp = ptrtoint ptr %i.xl to i64
  %i.xq = sub i64 %i.xo, %i.xp
  call void @_ZdlPvm(ptr noundef nonnull %i.xl, i64 noundef %i.xq) #28
  br label %_ZSt8_DestroyISt6vectorIPK9ExecMTaskSaIS3_EEEvPT_.exit.i.i.i.i432

_ZSt8_DestroyISt6vectorIPK9ExecMTaskSaIS3_EEEvPT_.exit.i.i.i.i432: ; preds = %bb.dt, %.lr.ph.i.i.i.i429
  %i.xr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i430, i64 24 ; 2 uses
  %.not.i.i.i.i433 = icmp eq ptr %i.xr, %.pre1051
  br i1 %.not.i.i.i.i433, label %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i434, label %.lr.ph.i.i.i.i429, !llvm.loop !13

_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i434: ; preds = %_ZSt8_DestroyISt6vectorIPK9ExecMTaskSaIS3_EEEvPT_.exit.i.i.i.i432
  %.pr.i.i435 = load ptr, ptr %i.fh, align 8, !tbaa !297
  br label %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i436

_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i436: ; preds = %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i434, %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit427
  %i.xs = phi ptr [ %.pr.i.i435, %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i434 ], [ %.pre1050, %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit427 ] ; 3 uses
  %.not.i.i1.i.i437 = icmp eq ptr %i.xs, null
  br i1 %.not.i.i1.i.i437, label %_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i438, label %bb.du

bb.du:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i436
  %i.xt = load ptr, ptr %i.fj, align 8, !tbaa !298
  %i.xu = ptrtoint ptr %i.xt to i64
  %i.xv = ptrtoint ptr %i.xs to i64
  %i.xw = sub i64 %i.xu, %i.xv
  call void @_ZdlPvm(ptr noundef nonnull %i.xs, i64 noundef %i.xw) #28
  br label %_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i438

_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i438: ; preds = %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i436.thread, %bb.du, %_ZSt8_DestroyIPSt6vectorIPK9ExecMTaskSaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i436
  %i.xx = load ptr, ptr %i.fe, align 8, !tbaa !300 ; 2 uses
  %.not5.i.i.i.i.i439 = icmp eq ptr %i.xx, null
  br i1 %.not5.i.i.i.i.i439, label %_ZNSt10_HashtableIPK9ExecMTaskS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i443, label %.lr.ph.i.i.i.i.i440

.lr.ph.i.i.i.i.i440:                              ; preds = %_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i438, %.lr.ph.i.i.i.i.i440
  %.06.i.i.i.i.i441 = phi ptr [ %i.xy, %.lr.ph.i.i.i.i.i440 ], [ %i.xx, %_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i438 ] ; 2 uses
  %i.xy = load ptr, ptr %.06.i.i.i.i.i441, align 8, !tbaa !124 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i441, i64 noundef 16) #28
  %.not.i.i.i.i.i442 = icmp eq ptr %i.xy, null
  br i1 %.not.i.i.i.i.i442, label %_ZNSt10_HashtableIPK9ExecMTaskS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i443, label %.lr.ph.i.i.i.i.i440, !llvm.loop !14

_ZNSt10_HashtableIPK9ExecMTaskS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i443: ; preds = %.lr.ph.i.i.i.i.i440, %_ZNSt6vectorIS_IPK9ExecMTaskSaIS2_EESaIS4_EED2Ev.exit.i438
  %i.xz = load ptr, ptr %i.fb, align 8, !tbaa !214
  %i.ya = load i64, ptr %i.fd, align 8, !tbaa !213
  %i.yb = shl i64 %i.ya, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.xz, i8 0, i64 %i.yb, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i8 0, i64 16, i1 false)
  %i.yc = load ptr, ptr %i.fb, align 8, !tbaa !214 ; 2 uses
  %i.yd = icmp eq ptr %i.yc, %i.fc
  br i1 %i.yd, label %_ZN11V3ExecGraph14ThreadScheduleD2Ev.exit444, label %bb.dv

bb.dv:                                            ; preds = %_ZNSt10_HashtableIPK9ExecMTaskS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i443
  %i.ye = load i64, ptr %i.fd, align 8, !tbaa !213
  %i.yf = shl i64 %i.ye, 3
  call void @_ZdlPvm(ptr noundef %i.yc, i64 noundef %i.yf) #28
  br label %_ZN11V3ExecGraph14ThreadScheduleD2Ev.exit444

_ZN11V3ExecGraph14ThreadScheduleD2Ev.exit444:     ; preds = %_ZNSt10_HashtableIPK9ExecMTaskS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i443, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br i1 %.not5.i.i.i.i445, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i446.preheader

.lr.ph.i.i.i.i446.preheader:                      ; preds = %_ZN11V3ExecGraph14ThreadScheduleD2Ev.exit444
  br i1 %min.iters.check1352, label %.lr.ph.i.i.i.i446.preheader1387, label %vector.ph1353

vector.ph1353:                                    ; preds = %.lr.ph.i.i.i.i446.preheader
  %broadcast.splatinsert1355 = insertelement <4 x i32> poison, i32 %i.in, i64 0
  %broadcast.splat1356 = shufflevector <4 x i32> %broadcast.splatinsert1355, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1357

vector.body1357:                                  ; preds = %vector.body1357, %vector.ph1353
  %index1358 = phi i64 [ 0, %vector.ph1353 ], [ %index.next1360, %vector.body1357 ] ; 2 uses
  %i.yg = shl i64 %index1358, 2
  %next.gep1359 = getelementptr i8, ptr %.sroa.0659.0, i64 %i.yg ; 2 uses
  %i.yh = getelementptr i8, ptr %next.gep1359, i64 16
  store <4 x i32> %broadcast.splat1356, ptr %next.gep1359, align 4, !tbaa !111
  store <4 x i32> %broadcast.splat1356, ptr %i.yh, align 4, !tbaa !111
  %index.next1360 = add nuw i64 %index1358, 8     ; 2 uses
  %i.yi = icmp eq i64 %index.next1360, %n.vec1354
  br i1 %i.yi, label %middle.block1361, label %vector.body1357, !llvm.loop !757

middle.block1361:                                 ; preds = %vector.body1357
  br i1 %cmp.n1362, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i446.preheader1387

.lr.ph.i.i.i.i446.preheader1387:                  ; preds = %.lr.ph.i.i.i.i446.preheader, %middle.block1361
  %.06.i.i.i.i447.ph = phi ptr [ %.sroa.0659.0, %.lr.ph.i.i.i.i446.preheader ], [ %i.ge, %middle.block1361 ]
  br label %.lr.ph.i.i.i.i446

.lr.ph.i.i.i.i446:                                ; preds = %.lr.ph.i.i.i.i446.preheader1387, %.lr.ph.i.i.i.i446
  %.06.i.i.i.i447 = phi ptr [ %i.yj, %.lr.ph.i.i.i.i446 ], [ %.06.i.i.i.i447.ph, %.lr.ph.i.i.i.i446.preheader1387 ] ; 2 uses
  store i32 %i.in, ptr %.06.i.i.i.i447, align 4, !tbaa !111
  %i.yj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i447, i64 4 ; 2 uses
  %.not.i.i.i.i448 = icmp eq ptr %i.yj, %.0.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i448, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i446, !llvm.loop !758

bb.dw:                                            ; preds = %bb.ds
  %i.yk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11V3ExecGraph14ThreadScheduleD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %17) #25
  br label %.body419

.body419:                                         ; preds = %bb.dm, %bb.dw
  %.pn164 = phi { ptr, i32 } [ %i.yk, %bb.dw ], [ %i.wh, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %.body464

bb.dx:                                            ; preds = %bb.dg
  br i1 %i.io, label %bb.dy, label %bb.eb, !prof !129

bb.dy:                                            ; preds = %bb.dx
  %i.yl = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.8, i32 noundef 509)
          to label %bb.dz unwind label %bb.cq     ; 0 uses

end_hunk_1
