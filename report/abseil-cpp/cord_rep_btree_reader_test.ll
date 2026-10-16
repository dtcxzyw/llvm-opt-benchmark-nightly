Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/cord_rep_btree_reader_test?download=true
inline.NumInlined: 2116
inline.NumDeleted: 705
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_132CordRepBtreeReaderTest_Next_Test8TestBodyEv:bb.a
  %.054.idx574 = phi i64 [ 0, %bb.a ], [ %.054.add, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270 ] ; 2 uses
  %.054.ptr = getelementptr inbounds nuw i8, ptr %i.e, i64 %.054.idx574
  %i.ap = load i64, ptr %.054.ptr, align 8, !tbaa !40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.aq = mul i64 %i.ap, 3                        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20, !noalias !167
  store i64 1, ptr %1, align 8, !tbaa !42, !noalias !167
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !167
  store i64 0, ptr %2, align 8, !tbaa !44, !noalias !167
  store i64 86, ptr %i.n, align 8, !tbaa !45, !noalias !167
  store ptr %i.o, ptr %3, align 8, !tbaa !48, !alias.scope !167
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aq, i8 noundef signext 32)
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052615cordrep_testing18CreateRandomStringB5cxx11Em.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit.i
  %.011.i = phi i64 [ %i.aw, %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit.i ], [ 0, %bb.c ] ; 2 uses
  %i.ar = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit.i unwind label %bb.d

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit.i: ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds nuw i8, ptr @.str.18, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !49, !noalias !167
  %i.au = load ptr, ptr %3, align 8, !tbaa !51, !alias.scope !167
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.011.i
  store i8 %i.at, ptr %i.av, align 1, !tbaa !49
  %i.aw = add nuw i64 %.011.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aw, %i.aq
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2026052615cordrep_testing18CreateRandomStringB5cxx11Em.exit, label %.lr.ph.i, !llvm.loop !0

bb.d:                                             ; preds = %.lr.ph.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %3, align 8, !tbaa !51, !alias.scope !167 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.o
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.ba = load i64, ptr %i.o, align 8, !tbaa !49, !alias.scope !167
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn91.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !167
  br label %common.resume

_ZN4absl12lts_2026052615cordrep_testing18CreateRandomStringB5cxx11Em.exit: ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !167
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bc = load ptr, ptr %3, align 8, !tbaa !51
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !53
  invoke void @_ZN4absl12lts_2026052615cordrep_testing21CreateFlatsFromStringESt17basic_string_viewIcSt11char_traitsIcEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, i64 %i.bd, ptr %i.bc, i64 noundef 3)
          to label %bb.e unwind label %bb.v

bb.e:                                             ; preds = %_ZN4absl12lts_2026052615cordrep_testing18CreateRandomStringB5cxx11Em.exit
  %i.be = load ptr, ptr %4, align 8, !tbaa !57    ; 3 uses
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3                 ; 2 uses
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !60 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 4, !tbaa !65  ; 2 uses
  %or.cond.i.i.i = icmp ugt i8 %i.bm, 4
  br i1 %or.cond.i.i.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = icmp eq i8 %i.bm, 1
  br i1 %i.bn, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i.i: ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !67
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !65
  %i.bq = icmp ugt i8 %.pre.i.i.i, 4
  br i1 %i.bq, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i.i, %bb.e
  %i.br = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23
          to label %.noexc unwind label %.loopexit.split-lp282 ; 8 uses

.noexc:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 2, ptr %i.bs, align 4, !tbaa !68
  %i.bt = load i8, ptr %i.bl, align 4, !tbaa !65
  %i.bu = icmp eq i8 %i.bt, 3
  br i1 %i.bu, label %bb.g, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i

bb.g:                                             ; preds = %.noexc
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 13
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !49
  %i.bx = add i8 %i.bw, 1
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i

_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i: ; preds = %bb.g, %.noexc
  %i.by = phi i8 [ %i.bx, %bb.g ], [ 0, %.noexc ]
  %i.bz = load i64, ptr %i.bk, align 8, !tbaa !69
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !69
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i8 3, ptr %i.ca, align 4, !tbaa !65
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 13
  store i8 %i.by, ptr %i.cb, align 1, !tbaa !49
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 14
  store i8 0, ptr %i.cc, align 2, !tbaa !49
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 15
  store i8 1, ptr %i.cd, align 1, !tbaa !49
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %i.bk, ptr %i.ce, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i.i, %bb.f
  %i.cf = invoke noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10CreateSlowEPNS1_7CordRepE(ptr noundef nonnull %i.bk)
          to label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i unwind label %.loopexit.split-lp282

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i
  %.0.i.i = phi ptr [ %i.br, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i ], [ %i.cf, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i ] ; 2 uses
  %i.cg = icmp ugt i64 %i.bj, 1
  br i1 %i.cg, label %.lr.ph.i99, label %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit

.lr.ph.i99:                                       ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i
  %.013.i = phi i64 [ %i.cr, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i ], [ 1, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i ] ; 2 uses
  %.0412.i = phi ptr [ %.0.i6.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i ], [ %.0.i.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.013.i
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !60 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !65  ; 2 uses
  %or.cond.i.i5.i = icmp ugt i8 %i.ck, 4
  br i1 %or.cond.i.i5.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i99
  %i.cl = icmp eq i8 %i.ck, 1
  br i1 %i.cl, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i, !prof !70

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i: ; preds = %bb.h
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !67
  %.phi.trans.insert.i.i8.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %.pre.i.i9.i = load i8, ptr %.phi.trans.insert.i.i8.i, align 4, !tbaa !65
  %i.co = icmp ugt i8 %.pre.i.i9.i, 4
  br i1 %i.co, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i, !prof !71

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i, %.lr.ph.i99
  %i.cp = invoke noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AddCordRepILNS2_8EdgeTypeE1EEEPS2_S5_PNS1_7CordRepE(ptr noundef %.0412.i, ptr noundef nonnull %i.ci)
          to label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i unwind label %.loopexit281

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i, %bb.h
  %i.cq = invoke noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AppendSlowEPS2_PNS1_7CordRepE(ptr noundef %.0412.i, ptr noundef nonnull %i.ci)
          to label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i unwind label %.loopexit281

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i
  %.0.i6.i = phi ptr [ %i.cp, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i ], [ %i.cq, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i ] ; 2 uses
  %i.cr = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i100 = icmp eq i64 %i.cr, %i.bj
  br i1 %exitcond.not.i100, label %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit, label %.lr.ph.i99, !llvm.loop !1

_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i
  %.04.lcssa.i = phi ptr [ %.0.i.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i ], [ %.0.i6.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.cs = load i64, ptr %i.p, align 8, !tbaa !53  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ct = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 13
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !49  ; 4 uses
  %i.cv = zext i8 %i.cu to i32
  store i32 %i.cv, ptr %i.r, align 8, !tbaa !73
  %i.cw = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 14
  %i.cx = load i8, ptr %i.cw, align 1             ; 2 uses
  %i.cy = zext i8 %i.cu to i64                    ; 5 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.cy
  store ptr %.04.lcssa.i, ptr %i.cz, align 8, !tbaa !75
  %i.da = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cy
  store i8 %i.cx, ptr %i.da, align 1, !tbaa !49
  %.018.i.i.i = zext i8 %i.cx to i64              ; 3 uses
  %.not.i.i.i = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit
  %xtraiter = and i64 %i.cy, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i.i.i.prol = add nsw i64 %i.cy, -1 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 16
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.018.i.i.i
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !60 ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i.prol
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !75
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 14
  %i.dg = load i8, ptr %i.df, align 1             ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i.i.i.prol
  store i8 %i.dg, ptr %i.dh, align 2, !tbaa !49
  %.0.i.i.i.prol = zext i8 %i.dg to i64           ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %i.cy, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.021.i.i.i.unr = phi i64 [ %.018.i.i.i, %.lr.ph.i.i.i.preheader ], [ %.0.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.01619.i.i.i.unr = phi ptr [ %.04.lcssa.i, %.lr.ph.i.i.i.preheader ], [ %i.dd, %.lr.ph.i.i.i.prol ]
  %.0.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %.0.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.di = icmp eq i8 %i.cu, 1
  br i1 %i.di, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i = phi i64 [ %.0.i.i.i.1, %.lr.ph.i.i.i ], [ %.021.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01619.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i ], [ %.01619.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.01619.i.i.i, i64 16
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.021.i.i.i
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !60 ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !75
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 14
  %i.do = load i8, ptr %i.dn, align 1             ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i.i.i
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !49
  %.0.i.i.i = zext i8 %i.do to i64
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, -2 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.0.i.i.i
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !60 ; 3 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i.1
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !75
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 14
  %i.dv = load i8, ptr %i.du, align 1             ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i.i.i.1
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !49
  %.0.i.i.i.1 = zext i8 %i.dv to i64              ; 2 uses
  %i.dx = icmp sgt i64 %indvars.iv.i.i.i, 2
  br i1 %i.dx, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i, !llvm.loop !2

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit
  %.0.lcssa.i.i.i = phi i64 [ %.018.i.i.i, %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit ], [ %.0.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %.0.i.i.i.1, %.lr.ph.i.i.i ]
  %i.dy = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.0.lcssa.i.i.i
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !60 ; 5 uses
  %i.ec = load i64, ptr %.04.lcssa.i, align 8, !tbaa !69
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !69 ; 3 uses
  %i.ee = sub i64 %i.ec, %i.ed                    ; 4 uses
  store i64 %i.ee, ptr %5, align 8, !tbaa !77
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.eg = load i8, ptr %i.ef, align 4, !tbaa !65  ; 2 uses
  %i.eh = icmp eq i8 %i.eg, 1
  br i1 %i.eh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !78
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !tbaa !65
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i
  %i.em = phi i8 [ %.pre.i.i, %bb.i ], [ %i.eg, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i ]
  %.010.i.i = phi ptr [ %i.el, %bb.i ], [ %i.eb, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i ] ; 2 uses
  %.0.i.i104 = phi i64 [ %i.ej, %bb.i ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i ]
  %i.en = icmp ugt i8 %i.em, 5
  br i1 %i.en, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.eo = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 13
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ep = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !80
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i.i = phi ptr [ %i.eo, %bb.k ], [ %i.eq, %bb.l ]
  %.sroa.3.0.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %.0.i.i104
  store i64 %i.ed, ptr %6, align 8
  store ptr %.sroa.3.0.i.i, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  store ptr %i.v, ptr %10, align 8, !tbaa !48, !alias.scope !168
  %i.er = load ptr, ptr %3, align 8, !tbaa !51, !noalias !168 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ed, i64 %i.cs) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20, !noalias !168
  store i64 %spec.select.i.i.i, ptr %i.d, align 8, !tbaa !40, !noalias !168
  %i.es = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.es, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.m
  %i.et = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc105 unwind label %bb.x  ; 2 uses

.noexc105:                                        ; preds = %.noexc10.i.i
  store ptr %i.et, ptr %10, align 8, !tbaa !51, !alias.scope !168
  %i.eu = load i64, ptr %i.d, align 8, !tbaa !40, !noalias !168
  store i64 %i.eu, ptr %i.v, align 8, !tbaa !49, !alias.scope !168
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc105, %bb.m
  %i.ev = phi ptr [ %i.et, %.noexc105 ], [ %i.v, %bb.m ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.ew = load i8, ptr %i.er, align 1, !tbaa !49
  store i8 %i.ew, ptr %i.ev, align 1, !tbaa !49
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ev, ptr align 1 %i.er, i64 %spec.select.i.i.i, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i
  %i.ex = load i64, ptr %i.d, align 8, !tbaa !40, !noalias !168 ; 2 uses
  store i64 %i.ex, ptr %i.w, align 8, !tbaa !53, !alias.scope !168
  %i.ey = load ptr, ptr %10, align 8, !tbaa !51, !alias.scope !168
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ex
  store i8 0, ptr %i.ez, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20, !noalias !168
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  store ptr %i.x, ptr %9, align 8, !tbaa !48, !alias.scope !169
  %i.fa = load ptr, ptr %10, align 8, !tbaa !51, !noalias !169 ; 2 uses
  %i.fb = load i64, ptr %i.w, align 8, !tbaa !53, !noalias !169 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20, !noalias !169
  store i64 %i.fb, ptr %i.c, align 8, !tbaa !40, !noalias !169
  %i.fc = icmp ugt i64 %i.fb, 15
  br i1 %i.fc, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.p
  %i.fd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc106 unwind label %bb.y  ; 2 uses

.noexc106:                                        ; preds = %.noexc.i.i.i.i
  store ptr %i.fd, ptr %9, align 8, !tbaa !51, !alias.scope !169
  %i.fe = load i64, ptr %i.c, align 8, !tbaa !40, !noalias !169
  store i64 %i.fe, ptr %i.x, align 8, !tbaa !49, !alias.scope !169
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc106, %bb.p
  %i.ff = phi ptr [ %i.fd, %.noexc106 ], [ %i.x, %bb.p ] ; 2 uses
  switch i64 %i.fb, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.fg = load i8, ptr %i.fa, align 1, !tbaa !49
  store i8 %i.fg, ptr %i.ff, align 1, !tbaa !49
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ff, ptr align 1 %i.fa, i64 %i.fb, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i.i.i
  %i.fh = load i64, ptr %i.c, align 8, !tbaa !40, !noalias !169 ; 2 uses
  store i64 %i.fh, ptr %i.y, align 8, !tbaa !53, !alias.scope !169
  %i.fi = load ptr, ptr %9, align 8, !tbaa !51, !alias.scope !169
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fh
  store i8 0, ptr %i.fj, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20, !noalias !169
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.fk = load ptr, ptr %9, align 8, !tbaa !51, !noalias !170 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.x
  br i1 %i.fl, label %_ZN7testing8internal9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.thread.i, label %_ZN7testing8internal9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.i

_ZN7testing8internal9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.thread.i: ; preds = %bb.s
  %i.fm = load i64, ptr %i.y, align 8, !tbaa !53, !noalias !170 ; 3 uses
  %i.fn = add nuw nsw i64 %i.fm, 1
  %i.fo = icmp ult i64 %i.fm, 16
  call void @llvm.assume(i1 %i.fo)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.fn, i1 false)
  br label %bb.t

_ZN7testing8internal9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.i: ; preds = %bb.s
  %i.fp = load i64, ptr %i.x, align 8, !tbaa !49, !noalias !170
  %.pre.i = load i64, ptr %i.y, align 8, !tbaa !53, !noalias !170
  store i64 %i.fp, ptr %i.z, align 8, !tbaa !49, !alias.scope !170
  br label %bb.t

bb.t:                                             ; preds = %_ZN7testing8internal9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.i, %_ZN7testing8internal9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.thread.i
  %.sink = phi ptr [ %i.z, %_ZN7testing8internal9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.thread.i ], [ %i.fk, %_ZN7testing8internal9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.i ]
  %i.fq = phi i64 [ %i.fm, %_ZN7testing8internal9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.thread.i ], [ %.pre.i, %_ZN7testing8internal9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit.i ]
  store ptr %i.x, ptr %9, align 8, !tbaa !51, !noalias !170
  store i64 0, ptr %i.y, align 8, !tbaa !53, !noalias !170
  store i8 0, ptr %i.x, align 8, !tbaa !49, !noalias !170
  store ptr %.sink, ptr %8, align 8, !tbaa !48, !alias.scope !170
  store i64 %i.fq, ptr %i.aa, align 8, !tbaa !53, !alias.scope !170
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclISt17basic_string_viewIcS6_EEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.15, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.u unwind label %bb.z
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_132CordRepBtreeReaderTest_Skip_Test8TestBodyEv:bb.a
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2026052615cordrep_testing18CreateRandomStringB5cxx11Em.exit, label %.lr.ph.i, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %3, align 8, !tbaa !51, !alias.scope !348 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.m
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.au = load i64, ptr %i.m, align 8, !tbaa !49, !alias.scope !348
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn104.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !348
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !348
  br label %common.resume

_ZN4absl12lts_2026052615cordrep_testing18CreateRandomStringB5cxx11Em.exit: ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !348
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !348
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aw = load ptr, ptr %3, align 8, !tbaa !51
  %i.ax = load i64, ptr %i.n, align 8, !tbaa !53
  invoke void @_ZN4absl12lts_2026052615cordrep_testing21CreateFlatsFromStringESt17basic_string_viewIcSt11char_traitsIcEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, i64 %i.ax, ptr %i.aw, i64 noundef 3)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZN4absl12lts_2026052615cordrep_testing18CreateRandomStringB5cxx11Em.exit
  %i.ay = load ptr, ptr %4, align 8, !tbaa !57    ; 3 uses
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3                 ; 2 uses
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !60 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !65  ; 2 uses
  %or.cond.i.i.i = icmp ugt i8 %i.bg, 4
  br i1 %or.cond.i.i.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = icmp eq i8 %i.bg, 1
  br i1 %i.bh, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i.i: ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !67
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !65
  %i.bk = icmp ugt i8 %.pre.i.i.i, 4
  br i1 %i.bk, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i.i, %bb.d
  %i.bl = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23
          to label %.noexc unwind label %.loopexit.split-lp285 ; 8 uses

.noexc:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 2, ptr %i.bm, align 4, !tbaa !68
  %i.bn = load i8, ptr %i.bf, align 4, !tbaa !65
  %i.bo = icmp eq i8 %i.bn, 3
  br i1 %i.bo, label %bb.f, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i

bb.f:                                             ; preds = %.noexc
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 13
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !49
  %i.br = add i8 %i.bq, 1
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i

_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i: ; preds = %bb.f, %.noexc
  %i.bs = phi i8 [ %i.br, %bb.f ], [ 0, %.noexc ]
  %i.bt = load i64, ptr %i.be, align 8, !tbaa !69
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !69
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i8 3, ptr %i.bu, align 4, !tbaa !65
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 13
  store i8 %i.bs, ptr %i.bv, align 1, !tbaa !49
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  store i8 0, ptr %i.bw, align 2, !tbaa !49
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 15
  store i8 1, ptr %i.bx, align 1, !tbaa !49
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %i.be, ptr %i.by, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i.i, %bb.e
  %i.bz = invoke noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10CreateSlowEPNS1_7CordRepE(ptr noundef nonnull %i.be)
          to label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i unwind label %.loopexit.split-lp285

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i
  %.0.i.i = phi ptr [ %i.bl, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i ], [ %i.bz, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i ] ; 2 uses
  %i.ca = icmp ugt i64 %i.bd, 1
  br i1 %i.ca, label %.lr.ph.i109, label %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit

.lr.ph.i109:                                      ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i
  %.013.i = phi i64 [ %i.cl, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i ], [ 1, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i ] ; 2 uses
  %.0412.i = phi ptr [ %.0.i6.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i ], [ %.0.i.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.013.i
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !60 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !65  ; 2 uses
  %or.cond.i.i5.i = icmp ugt i8 %i.ce, 4
  br i1 %or.cond.i.i5.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i109
  %i.cf = icmp eq i8 %i.ce, 1
  br i1 %i.cf, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i, !prof !70

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i: ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !67
  %.phi.trans.insert.i.i8.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %.pre.i.i9.i = load i8, ptr %.phi.trans.insert.i.i8.i, align 4, !tbaa !65
  %i.ci = icmp ugt i8 %.pre.i.i9.i, 4
  br i1 %i.ci, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i, !prof !71

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i, %.lr.ph.i109
  %i.cj = invoke noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AddCordRepILNS2_8EdgeTypeE1EEEPS2_S5_PNS1_7CordRepE(ptr noundef %.0412.i, ptr noundef nonnull %i.cc)
          to label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i unwind label %.loopexit284

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i, %bb.g
  %i.ck = invoke noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AppendSlowEPS2_PNS1_7CordRepE(ptr noundef %.0412.i, ptr noundef nonnull %i.cc)
          to label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i unwind label %.loopexit284

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i
  %.0.i6.i = phi ptr [ %i.cj, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i ], [ %i.ck, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i ] ; 2 uses
  %i.cl = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i110 = icmp eq i64 %i.cl, %i.bd
  br i1 %exitcond.not.i110, label %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit, label %.lr.ph.i109, !llvm.loop !1

_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i
  %.04.lcssa.i = phi ptr [ %.0.i.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i ], [ %.0.i6.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i ] ; 8 uses
  %i.cm = load i64, ptr %i.n, align 8, !tbaa !53  ; 2 uses
  %.not265518.not = icmp eq i64 %i.cm, 3
  br i1 %.not265518.not, label %._crit_edge521, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 13
  %i.co = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 14
  %i.cp = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %.preheader.lr.ph
  %i.cq = phi i64 [ %i.cm, %.preheader.lr.ph ], [ %i.or, %._crit_edge ]
  %.0519 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ou, %._crit_edge ] ; 5 uses
  br label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_2026052615cordrep_testing18CreateRandomStringB5cxx11Em.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit242

.loopexit284:                                     ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i
  %lpad.loopexit286 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp285:                            ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i, %bb.cs
  %lpad.loopexit.split-lp287 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.i:                                             ; preds = %.lr.ph, %bb.cp
  %i.cs = phi i64 [ %i.cq, %.lr.ph ], [ %i.or, %bb.cp ]
  %storemerge517 = phi i64 [ 0, %.lr.ph ], [ %i.oq, %bb.cp ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ct = load i8, ptr %i.cn, align 1, !tbaa !49  ; 4 uses
  %i.cu = zext i8 %i.ct to i32
  store i32 %i.cu, ptr %i.p, align 8, !tbaa !73
  %i.cv = load i8, ptr %i.co, align 1             ; 2 uses
  %i.cw = zext i8 %i.ct to i64                    ; 5 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cw
  store ptr %.04.lcssa.i, ptr %i.cx, align 8, !tbaa !75
  %i.cy = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.cw
  store i8 %i.cv, ptr %i.cy, align 1, !tbaa !49
  %.018.i.i.i = zext i8 %i.cv to i64              ; 3 uses
  %.not.i.i.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.i
  %xtraiter = and i64 %i.cw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i.i.i.prol = add nsw i64 %i.cw, -1 ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.018.i.i.i
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !60 ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.prol
  store ptr %i.da, ptr %i.db, align 8, !tbaa !75
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 14
  %i.dd = load i8, ptr %i.dc, align 1             ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i.i.i.prol
  store i8 %i.dd, ptr %i.de, align 2, !tbaa !49
  %.0.i.i.i.prol = zext i8 %i.dd to i64           ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %i.cw, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.021.i.i.i.unr = phi i64 [ %.018.i.i.i, %.lr.ph.i.i.i.preheader ], [ %.0.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.01619.i.i.i.unr = phi ptr [ %.04.lcssa.i, %.lr.ph.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.prol ]
  %.0.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %.0.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.df = icmp eq i8 %i.ct, 1
  br i1 %i.df, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i = phi i64 [ %.0.i.i.i.1, %.lr.ph.i.i.i ], [ %.021.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01619.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i ], [ %.01619.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.01619.i.i.i, i64 16
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.021.i.i.i
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !60 ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !75
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 14
  %i.dl = load i8, ptr %i.dk, align 1             ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i.i.i
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !49
  %.0.i.i.i = zext i8 %i.dl to i64
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, -2 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.0.i.i.i
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !60 ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.1
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !75
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 14
  %i.ds = load i8, ptr %i.dr, align 1             ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i.i.i.1
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !49
  %.0.i.i.i.1 = zext i8 %i.ds to i64              ; 2 uses
  %i.du = icmp sgt i64 %indvars.iv.i.i.i, 2
  br i1 %i.du, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i, !llvm.loop !2

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.i
  %.0.lcssa.i.i.i = phi i64 [ %.018.i.i.i, %bb.i ], [ %.0.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %.0.i.i.i.1, %.lr.ph.i.i.i ]
  %i.dv = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.0.lcssa.i.i.i
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !60 ; 5 uses
  %i.dz = load i64, ptr %.04.lcssa.i, align 8, !tbaa !69
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !69 ; 3 uses
  %i.eb = sub i64 %i.dz, %i.ea
  store i64 %i.eb, ptr %5, align 8, !tbaa !77
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %i.ed = load i8, ptr %i.ec, align 4, !tbaa !65  ; 2 uses
  %i.ee = icmp eq i8 %i.ed, 1
  br i1 %i.ee, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !78
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !tbaa !65
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i
  %i.ej = phi i8 [ %.pre.i.i, %bb.j ], [ %i.ed, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i ]
  %.010.i.i = phi ptr [ %i.ei, %bb.j ], [ %i.dy, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i ] ; 2 uses
  %.0.i.i114 = phi i64 [ %i.eg, %bb.j ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i ]
  %i.ek = icmp ugt i8 %i.ej, 5
  br i1 %i.ek, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.el = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 13
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.em = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !80
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn.i.i = phi ptr [ %i.el, %bb.l ], [ %i.en, %bb.m ]
  %.sroa.3.0.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %.0.i.i114
  store i64 %i.ea, ptr %6, align 8
  store ptr %.sroa.3.0.i.i, ptr %i.s, align 8
  %i.eo = sub i64 %i.cs, %i.ea                    ; 3 uses
  %i.ep = load i8, ptr %i.r, align 4, !tbaa !49
  %i.eq = zext i8 %i.ep to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !60
  %i.et = load i64, ptr %i.es, align 8, !tbaa !69
  %i.eu = add i64 %i.et, %.0519
  %i.ev = invoke { ptr, i64 } @_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SkipEm(ptr noundef nonnull align 8 dereferenceable(112) %i.p, i64 noundef %i.eu)
          to label %.noexc123 unwind label %.loopexit ; 2 uses

.noexc123:                                        ; preds = %bb.n
  %i.ew = extractvalue { ptr, i64 } %i.ev, 0      ; 6 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.o, label %bb.p, !prof !99

bb.o:                                             ; preds = %.noexc123
  store i64 0, ptr %5, align 8, !tbaa !77
  br label %bb.v

bb.p:                                             ; preds = %.noexc123
  %i.ey = extractvalue { ptr, i64 } %i.ev, 1      ; 5 uses
  %i.ez = load i64, ptr %i.ew, align 8, !tbaa !69 ; 4 uses
  %i.fa = load i64, ptr %5, align 8, !tbaa !77
  %i.fb = add i64 %.0519, %i.ez
  %.neg12.i = sub i64 %i.ey, %i.fb
  %i.fc = add i64 %.neg12.i, %i.fa
  store i64 %i.fc, ptr %5, align 8, !tbaa !77
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %i.fe = load i8, ptr %i.fd, align 4, !tbaa !65  ; 2 uses
  %i.ff = icmp eq i8 %i.fe, 1
  br i1 %i.ff, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !78
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert.i.i121 = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  %.pre.i.i122 = load i8, ptr %.phi.trans.insert.i.i121, align 4, !tbaa !65
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.fk = phi i8 [ %.pre.i.i122, %bb.q ], [ %i.fe, %bb.p ]
  %.010.i.i115 = phi ptr [ %i.fj, %bb.q ], [ %i.ew, %bb.p ] ; 2 uses
  %.0.i.i116 = phi i64 [ %i.fh, %bb.q ], [ 0, %bb.p ]
  %i.fl = icmp ugt i8 %i.fk, 5
  br i1 %i.fl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fm = getelementptr inbounds nuw i8, ptr %.010.i.i115, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i

bb.t:                                             ; preds = %bb.r
  %i.fn = getelementptr inbounds nuw i8, ptr %.010.i.i115, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !80
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i: ; preds = %bb.t, %bb.s
  %.pn.i.i117 = phi ptr [ %i.fm, %bb.s ], [ %i.fo, %bb.t ]
  %i.fp = icmp ugt i64 %i.ey, %i.ez
  br i1 %i.fp, label %bb.u, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.u:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i64 noundef %i.ey, i64 noundef %i.ez) #24
          to label %.noexc124 unwind label %.loopexit.split-lp

.noexc124:                                        ; preds = %bb.u
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i
  %.sroa.3.0.i.i118 = getelementptr inbounds nuw i8, ptr %.pn.i.i117, i64 %.0.i.i116
  %i.fq = sub nuw i64 %i.ez, %i.ey
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i118, i64 %i.ey
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, %bb.o
  %.sroa.08.0.i = phi i64 [ 0, %bb.o ], [ %i.fq, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ] ; 2 uses
  %.sroa.3.0.i = phi ptr [ null, %bb.o ], [ %i.fr, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  store i64 %.sroa.08.0.i, ptr %6, align 8, !tbaa !40
  store ptr %.sroa.3.0.i, ptr %i.s, align 8, !tbaa !98
  %i.fs = load i64, ptr %i.n, align 8, !tbaa !53  ; 4 uses
  %i.ft = sub i64 %i.fs, %i.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.fu = add i64 %i.ft, %.0519                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.fv = icmp ugt i64 %i.fu, %i.fs
  br i1 %i.fv, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i64 noundef %i.fu, i64 noundef %i.fs) #24
          to label %.noexc125 unwind label %.loopexit.split-lp270

.noexc125:                                        ; preds = %bb.w
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.v
  store ptr %i.t, ptr %10, align 8, !tbaa !48, !alias.scope !349
  %i.fw = load ptr, ptr %3, align 8, !tbaa !51, !noalias !349
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fu ; 2 uses
  %i.fy = sub nuw i64 %i.fs, %i.fu
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.08.0.i, i64 %i.fy) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20, !noalias !349
  store i64 %spec.select.i.i.i, ptr %i.d, align 8, !tbaa !40, !noalias !349
  %i.fz = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.fz, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ga = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc126 unwind label %.loopexit269 ; 2 uses

.noexc126:                                        ; preds = %.noexc10.i.i
  store ptr %i.ga, ptr %10, align 8, !tbaa !51, !alias.scope !349
  %i.gb = load i64, ptr %i.d, align 8, !tbaa !40, !noalias !349
  store i64 %i.gb, ptr %i.t, align 8, !tbaa !49, !alias.scope !349
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_132CordRepBtreeReaderTest_Skip_Test8TestBodyEv:bb.a
  %.pn97.pn.pn = phi { ptr, i32 } [ %.pn97.pn, %_ZN7testing7MessageD2Ev.exit229 ], [ %.pn93.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.cr

bb.cr:                                            ; preds = %.loopexit274, %.loopexit.split-lp275, %.loopexit, %.loopexit.split-lp, %bb.au, %bb.bi, %bb.cq
  %.pn97.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn97.pn.pn, %bb.cq ], [ %.pn83.pn.pn, %bb.au ], [ %.pn89.pn.pn, %bb.bi ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit276, %.loopexit274 ], [ %lpad.loopexit.split-lp277, %.loopexit.split-lp275 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.cu

._crit_edge:                                      ; preds = %bb.cp
  %i.ou = add nuw i64 %.0519, 1                   ; 2 uses
  %i.ov = add i64 %i.or, -3
  %.not265 = icmp ult i64 %i.ou, %i.ov
  br i1 %.not265, label %.lr.ph, label %._crit_edge521, !llvm.loop !347

._crit_edge521:                                   ; preds = %._crit_edge, %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit
  %i.ow = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 8
  %i.ox = atomicrmw sub ptr %i.ow, i32 2 acq_rel, align 4
  %.not.i235 = icmp eq i32 %i.ox, 2
  br i1 %.not.i235, label %bb.cs, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit, !prof !99

bb.cs:                                            ; preds = %._crit_edge521
  invoke void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef %.04.lcssa.i)
          to label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit unwind label %.loopexit.split-lp285

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit: ; preds = %bb.co, %._crit_edge521, %bb.cs, %.thread
  %.not265464 = phi i1 [ true, %.thread ], [ false, %._crit_edge521 ], [ false, %bb.cs ], [ true, %bb.co ]
  %i.oy = load ptr, ptr %4, align 8, !tbaa !57    ; 3 uses
  %.not.i.i.i237 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i237, label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit, label %bb.ct

bb.ct:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit
  %i.oz = load ptr, ptr %i.ai, align 8, !tbaa !100
  %i.pa = ptrtoint ptr %i.oz to i64
  %i.pb = ptrtoint ptr %i.oy to i64
  %i.pc = sub i64 %i.pa, %i.pb
  call void @_ZdlPvm(ptr noundef nonnull %i.oy, i64 noundef %i.pc) #22
  br label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit

_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.pd = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.pe = icmp eq ptr %i.pd, %i.m
  br i1 %i.pe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit
  %i.pf = load i64, ptr %i.m, align 8, !tbaa !49
  %i.pg = add i64 %i.pf, 1
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.pg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.078.add = add nuw nsw i64 %.078.idx522, 8     ; 2 uses
  %.not = icmp eq i64 %.078.add, 48
  %or.cond = select i1 %.not265464, i1 true, i1 %.not
  br i1 %or.cond, label %bb.cw, label %bb.b

bb.cu:                                            ; preds = %.loopexit284, %.loopexit.split-lp285, %bb.cr
  %.pn104 = phi { ptr, i32 } [ %.pn97.pn.pn.pn.pn.pn, %bb.cr ], [ %lpad.loopexit286, %.loopexit284 ], [ %lpad.loopexit.split-lp287, %.loopexit.split-lp285 ] ; 2 uses
  %i.ph = load ptr, ptr %4, align 8, !tbaa !57    ; 3 uses
  %.not.i.i.i241 = icmp eq ptr %i.ph, null
  br i1 %.not.i.i.i241, label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit242, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.pi = load ptr, ptr %i.ai, align 8, !tbaa !100
  %i.pj = ptrtoint ptr %i.pi to i64
  %i.pk = ptrtoint ptr %i.ph to i64
  %i.pl = sub i64 %i.pj, %i.pk
  call void @_ZdlPvm(ptr noundef nonnull %i.ph, i64 noundef %i.pl) #22
  br label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit242

_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit242: ; preds = %bb.cv, %bb.cu, %bb.h
  %.pn104.pn = phi { ptr, i32 } [ %i.cr, %bb.h ], [ %.pn104, %bb.cu ], [ %.pn104, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.pm = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.m
  br i1 %i.pn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit242
  %i.po = load i64, ptr %i.m, align 8, !tbaa !49
  %i.pp = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %common.resume

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  ret void
}

declare { ptr, i64 } @_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SkipEm(ptr noundef nonnull align 8 dereferenceable(112), i64 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052613cord_internal12_GLOBAL__N_144CordRepBtreeReaderTest_SkipBeyondLength_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052613cord_internal12_GLOBAL__N_144CordRepBtreeReaderTest_SkipBeyondLength_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_144CordRepBtreeReaderTest_SkipBeyondLength_TestE, i64 16), ptr %i.a, align 8, !tbaa !28
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #22
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_144CordRepBtreeReaderTest_SkipBeyondLength_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_144CordRepBtreeReaderTest_SkipBeyondLength_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i:
  %1 = alloca %"class.absl::lts_20260526::cord_internal::CordRepBtreeReader", align 8 ; 11 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.33", align 1 ; 3 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.30", align 4 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 25769803778, ptr %i.c, align 8
  store i64 3, ptr %i.b, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.d, ptr noundef nonnull align 1 dereferenceable(3) @.str.49, i64 3, i1 false)
  %i.e = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 2, ptr %i.f, align 4, !tbaa !68
  store i64 3, ptr %i.e, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store <4 x i8> <i8 3, i8 0, i8 0, i8 1>, ptr %i.g, align 4, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.b, ptr %i.h, align 8, !tbaa !60
  %i.i = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 25769803778, ptr %i.j, align 8
  store i64 3, ptr %i.i, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.k, ptr noundef nonnull align 1 dereferenceable(3) @.str.50, i64 3, i1 false)
  %i.l = tail call noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AddCordRepILNS2_8EdgeTypeE1EEEPS2_S5_PNS1_7CordRepE(ptr noundef nonnull %i.e, ptr noundef nonnull %i.i) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 13
  %i.o = load i8, ptr %i.n, align 1, !tbaa !49    ; 4 uses
  %i.p = zext i8 %i.o to i32
  store i32 %i.p, ptr %i.m, align 8, !tbaa !73
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.t = zext i8 %i.o to i64                      ; 5 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  store ptr %i.l, ptr %i.u, align 8, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 %i.r, ptr %i.w, align 1, !tbaa !49
  %.018.i.i.i = zext i8 %i.r to i64               ; 3 uses
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i
  %xtraiter = and i64 %i.t, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i.i.i.prol = add nsw i64 %i.t, -1 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.018.i.i.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !60   ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i.prol
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !75
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 14
  %i.ac = load i8, ptr %i.ab, align 1             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.i.i.i.prol
  store i8 %i.ac, ptr %i.ad, align 2, !tbaa !49
  %.0.i.i.i27.prol = zext i8 %i.ac to i64         ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.021.i.i.i.unr = phi i64 [ %.018.i.i.i, %.lr.ph.i.i.i.preheader ], [ %.0.i.i.i27.prol, %.lr.ph.i.i.i.prol ]
  %.01619.i.i.i.unr = phi ptr [ %i.l, %.lr.ph.i.i.i.preheader ], [ %i.z, %.lr.ph.i.i.i.prol ]
  %.0.i.i.i27.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %.0.i.i.i27.prol, %.lr.ph.i.i.i.prol ]
  %i.ae = icmp eq i8 %i.o, 1
  br i1 %i.ae, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i = phi i64 [ %.0.i.i.i27.1, %.lr.ph.i.i.i ], [ %.021.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01619.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.01619.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01619.i.i.i, i64 16
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.021.i.i.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !60 ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !75
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 14
  %i.ak = load i8, ptr %i.aj, align 1             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.i.i.i
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !49
  %.0.i.i.i27 = zext i8 %i.ak to i64
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, -2 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0.i.i.i27
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !60 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i.1
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !75
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 14
  %i.ar = load i8, ptr %i.aq, align 1             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.i.i.i.1
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !49
  %.0.i.i.i27.1 = zext i8 %i.ar to i64            ; 2 uses
  %i.at = icmp sgt i64 %indvars.iv.i.i.i, 2
  br i1 %i.at, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i, !llvm.loop !2

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i
  %.0.lcssa.i.i.i = phi i64 [ %.018.i.i.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i ], [ %.0.i.i.i27.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %.0.i.i.i27.1, %.lr.ph.i.i.i ]
  %i.au = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.0.lcssa.i.i.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !60
  %i.ay = load i64, ptr %i.l, align 8, !tbaa !69
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !69
  %i.ba = sub i64 %i.ay, %i.az
  store i64 %i.ba, ptr %1, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bb = load i8, ptr %i.v, align 4, !tbaa !49
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !60
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !69
  %i.bg = add i64 %i.bf, 100
  %i.bh = call { ptr, i64 } @_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SkipEm(ptr noundef nonnull align 8 dereferenceable(112) %i.m, i64 noundef %i.bg) ; 2 uses
  %i.bi = extractvalue { ptr, i64 } %i.bh, 0      ; 6 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.a, label %bb.b, !prof !99

bb.a:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i
  store i64 0, ptr %1, align 8, !tbaa !77
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4SkipEm.exit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i
  %i.bk = extractvalue { ptr, i64 } %i.bh, 1      ; 5 uses
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !69 ; 4 uses
  %i.bm = load i64, ptr %1, align 8, !tbaa !77
  %.neg56 = add i64 %i.bk, -100
  %.neg12.i = sub i64 %.neg56, %i.bl
  %i.bn = add i64 %.neg12.i, %i.bm
  store i64 %i.bn, ptr %1, align 8, !tbaa !77
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !65  ; 2 uses
  %i.bq = icmp eq i8 %i.bp, 1
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !78
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert.i.i34 = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %.pre.i.i35 = load i8, ptr %.phi.trans.insert.i.i34, align 4, !tbaa !65
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bv = phi i8 [ %.pre.i.i35, %bb.c ], [ %i.bp, %bb.b ]
  %.010.i.i30 = phi ptr [ %i.bu, %bb.c ], [ %i.bi, %bb.b ] ; 2 uses
  %.0.i.i31 = phi i64 [ %i.bs, %bb.c ], [ 0, %bb.b ]
  %i.bw = icmp ugt i8 %i.bv, 5
  br i1 %i.bw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %.010.i.i30, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i

bb.f:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i30, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !80
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i: ; preds = %bb.f, %bb.e
  %.pn.i.i32 = phi ptr [ %i.bx, %bb.e ], [ %i.bz, %bb.f ]
  %i.ca = icmp ugt i64 %i.bk, %i.bl
  br i1 %i.ca, label %bb.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.g:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i64 noundef %i.bk, i64 noundef %i.bl) #24
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i
  %.sroa.3.0.i.i33 = getelementptr inbounds nuw i8, ptr %.pn.i.i32, i64 %.0.i.i31
  %i.cb = sub nuw i64 %i.bl, %i.bk
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i33, i64 %i.bk
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4SkipEm.exit

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4SkipEm.exit: ; preds = %bb.a, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %.sroa.08.0.i = phi i64 [ 0, %bb.a ], [ %i.cb, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  %.sroa.3.0.i = phi ptr [ null, %bb.a ], [ %i.cc, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  store i64 %.sroa.08.0.i, ptr %4, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.3.0.i, ptr %i.cd, align 8
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS_18PolymorphicMatcherINS0_14IsEmptyMatcherEEEEclISt17basic_string_viewIcSt11char_traitsIcEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.51, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ce = load i8, ptr %2, align 8, !tbaa !90, !range !91, !noundef !92
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.q, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4SkipEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !93 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.j, %bb.i
  %i.cj = phi ptr [ %i.ci, %bb.j ], [ @.str.45, %bb.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 127, ptr noundef %i.cj)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.ck = load ptr, ptr %5, align 8, !tbaa !95    ; 3 uses
  %.not.i.i36 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i36, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !28
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(128) %i.ck) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit39

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.o ], [ %i.cp, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.cr = load ptr, ptr %5, align 8, !tbaa !95    ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i37, label %_ZN7testing7MessageD2Ev.exit39, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38

end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_132CordRepBtreeReaderTest_Seek_Test8TestBodyEv:bb.a
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !49, !noalias !364
  %i.ag = load ptr, ptr %3, align 8, !tbaa !51, !alias.scope !364
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.011.i
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !49
  %i.ai = add nuw i64 %.011.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %i.ac
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2026052615cordrep_testing18CreateRandomStringB5cxx11Em.exit, label %.lr.ph.i, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %3, align 8, !tbaa !51, !alias.scope !364 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.k
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.am = load i64, ptr %i.k, align 8, !tbaa !49, !alias.scope !364
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn80.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !364
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !364
  br label %common.resume

_ZN4absl12lts_2026052615cordrep_testing18CreateRandomStringB5cxx11Em.exit: ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !364
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !364
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ao = load ptr, ptr %3, align 8, !tbaa !51
  %i.ap = load i64, ptr %i.l, align 8, !tbaa !53
  invoke void @_ZN4absl12lts_2026052615cordrep_testing21CreateFlatsFromStringESt17basic_string_viewIcSt11char_traitsIcEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, i64 %i.ap, ptr %i.ao, i64 noundef 3)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZN4absl12lts_2026052615cordrep_testing18CreateRandomStringB5cxx11Em.exit
  %i.aq = load ptr, ptr %4, align 8, !tbaa !57    ; 3 uses
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3                 ; 2 uses
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !60 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !65  ; 2 uses
  %or.cond.i.i.i = icmp ugt i8 %i.ay, 4
  br i1 %or.cond.i.i.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = icmp eq i8 %i.ay, 1
  br i1 %i.az, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i.i: ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !67
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !65
  %i.bc = icmp ugt i8 %.pre.i.i.i, 4
  br i1 %i.bc, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i.i, %bb.d
  %i.bd = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23
          to label %.noexc unwind label %.loopexit.split-lp196 ; 8 uses

.noexc:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 2, ptr %i.be, align 4, !tbaa !68
  %i.bf = load i8, ptr %i.ax, align 4, !tbaa !65
  %i.bg = icmp eq i8 %i.bf, 3
  br i1 %i.bg, label %bb.f, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i

bb.f:                                             ; preds = %.noexc
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 13
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !49
  %i.bj = add i8 %i.bi, 1
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i

_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i: ; preds = %bb.f, %.noexc
  %i.bk = phi i8 [ %i.bj, %bb.f ], [ 0, %.noexc ]
  %i.bl = load i64, ptr %i.aw, align 8, !tbaa !69
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !69
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i8 3, ptr %i.bm, align 4, !tbaa !65
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 13
  store i8 %i.bk, ptr %i.bn, align 1, !tbaa !49
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  store i8 0, ptr %i.bo, align 2, !tbaa !49
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 15
  store i8 1, ptr %i.bp, align 1, !tbaa !49
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.aw, ptr %i.bq, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i.i, %bb.e
  %i.br = invoke noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10CreateSlowEPNS1_7CordRepE(ptr noundef nonnull %i.aw)
          to label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i unwind label %.loopexit.split-lp196

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i
  %.0.i.i = phi ptr [ %i.bd, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i ], [ %i.br, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i ] ; 2 uses
  %i.bs = icmp ugt i64 %i.av, 1
  br i1 %i.bs, label %.lr.ph.i93, label %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit

.lr.ph.i93:                                       ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i
  %.013.i = phi i64 [ %i.cd, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i ], [ 1, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i ] ; 2 uses
  %.0412.i = phi ptr [ %.0.i6.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i ], [ %.0.i.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.013.i
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !60 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.bw = load i8, ptr %i.bv, align 4, !tbaa !65  ; 2 uses
  %or.cond.i.i5.i = icmp ugt i8 %i.bw, 4
  br i1 %or.cond.i.i5.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i93
  %i.bx = icmp eq i8 %i.bw, 1
  br i1 %i.bx, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i, !prof !70

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i: ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !67
  %.phi.trans.insert.i.i8.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %.pre.i.i9.i = load i8, ptr %.phi.trans.insert.i.i8.i, align 4, !tbaa !65
  %i.ca = icmp ugt i8 %.pre.i.i9.i, 4
  br i1 %i.ca, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i, !prof !71

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i, %.lr.ph.i93
  %i.cb = invoke noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AddCordRepILNS2_8EdgeTypeE1EEEPS2_S5_PNS1_7CordRepE(ptr noundef %.0412.i, ptr noundef nonnull %i.bu)
          to label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i unwind label %.loopexit195

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i, %bb.g
  %i.cc = invoke noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AppendSlowEPS2_PNS1_7CordRepE(ptr noundef %.0412.i, ptr noundef nonnull %i.bu)
          to label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i unwind label %.loopexit195

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i
  %.0.i6.i = phi ptr [ %i.cb, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i ], [ %i.cc, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i ] ; 2 uses
  %i.cd = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %i.cd, %i.av
  br i1 %exitcond.not.i94, label %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit, label %.lr.ph.i93, !llvm.loop !1

_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i
  %.04.lcssa.i = phi ptr [ %.0.i.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i ], [ %.0.i6.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i ] ; 7 uses
  %i.ce = load i64, ptr %i.l, align 8, !tbaa !53
  %.not79.not274.not = icmp eq i64 %i.ce, 1
  br i1 %.not79.not274.not, label %.critedge88, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 13
  %i.cg = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 14
  %i.ch = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 16
  br label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_2026052615cordrep_testing18CreateRandomStringB5cxx11Em.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit181

.loopexit195:                                     ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i
  %lpad.loopexit197 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit.split-lp196:                            ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i, %bb.bv
  %lpad.loopexit.split-lp198 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.i:                                             ; preds = %.lr.ph, %bb.bs
  %.0.neg276 = phi i64 [ 0, %.lr.ph ], [ %.0.neg, %bb.bs ] ; 2 uses
  %.0275 = phi i64 [ 0, %.lr.ph ], [ %i.lu, %bb.bs ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.cj = load i8, ptr %i.cf, align 1, !tbaa !49  ; 4 uses
  %i.ck = zext i8 %i.cj to i32
  store i32 %i.ck, ptr %i.n, align 8, !tbaa !73
  %i.cl = load i8, ptr %i.cg, align 1             ; 3 uses
  %i.cm = zext i8 %i.cj to i64                    ; 5 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.cm
  store ptr %.04.lcssa.i, ptr %i.cn, align 8, !tbaa !75
  %i.co = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.cm
  store i8 %i.cl, ptr %i.co, align 1, !tbaa !49
  %.not.i.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.i
  %xtraiter = and i64 %i.cm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %.021.i.i.i.prol = zext i8 %i.cl to i64
  %indvars.iv.next.i.i.i.prol = add nsw i64 %i.cm, -1 ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.021.i.i.i.prol
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !60 ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.prol
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !75
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 14
  %i.ct = load i8, ptr %i.cs, align 1             ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.next.i.i.i.prol
  store i8 %i.ct, ptr %i.cu, align 2, !tbaa !49
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %i.cm, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.021.i.i.i.in.unr = phi i8 [ %i.cl, %.lr.ph.i.i.i.preheader ], [ %i.ct, %.lr.ph.i.i.i.prol ]
  %.01619.i.i.i.unr = phi ptr [ %.04.lcssa.i, %.lr.ph.i.i.i.preheader ], [ %i.cq, %.lr.ph.i.i.i.prol ]
  %i.cv = icmp eq i8 %i.cj, 1
  br i1 %i.cv, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.in = phi i8 [ %i.di, %.lr.ph.i.i.i ], [ %.021.i.i.i.in.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01619.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i ], [ %.01619.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.021.i.i.i = zext i8 %.021.i.i.i.in to i64
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.01619.i.i.i, i64 16
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.021.i.i.i
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !60 ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !75
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 14
  %i.db = load i8, ptr %i.da, align 1             ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.next.i.i.i
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !49
  %.021.i.i.i.1 = zext i8 %i.db to i64
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, -2 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.021.i.i.i.1
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !60 ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.1
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !75
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 14
  %i.di = load i8, ptr %i.dh, align 1             ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.next.i.i.i.1
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !49
  %i.dk = icmp sgt i64 %indvars.iv.i.i.i, 2
  br i1 %i.dk, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.loopexit, !llvm.loop !2

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.loopexit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.pre = load i32, ptr %i.n, align 8, !tbaa !73
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.loopexit, %bb.i
  %i.dl = phi i32 [ 0, %bb.i ], [ %.pre, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.loopexit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !75 ; 5 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !69
  %.not.i.i = icmp ult i64 %.0275, %i.dp
  br i1 %.not.i.i, label %bb.j, label %bb.q, !prof !132

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 14
  %i.dr = load i8, ptr %i.dq, align 2, !tbaa !49
  %i.ds = zext i8 %i.dr to i64                    ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.ds
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !60
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !69 ; 2 uses
  %.not8.i.i.i = icmp ult i64 %.0275, %i.dw
  br i1 %.not8.i.i.i, label %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i.i, label %.lr.ph.i.i.i101

.lr.ph.i.i.i101:                                  ; preds = %bb.j, %.lr.ph.i.i.i101
  %i.dx = phi i64 [ %i.ec, %.lr.ph.i.i.i101 ], [ %i.dw, %bb.j ]
  %.010.i.i.i = phi i64 [ %i.dy, %.lr.ph.i.i.i101 ], [ %i.ds, %bb.j ]
  %.069.i.i.i = phi i64 [ %i.dz, %.lr.ph.i.i.i101 ], [ %.0275, %bb.j ]
  %i.dy = add i64 %.010.i.i.i, 1                  ; 3 uses
  %i.dz = sub nuw i64 %.069.i.i.i, %i.dx          ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dy
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !60
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i102 = icmp ult i64 %i.dz, %i.ec
  br i1 %.not.i.i.i102, label %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i.i, label %.lr.ph.i.i.i101, !llvm.loop !12

_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i.i: ; preds = %.lr.ph.i.i.i101, %bb.j
  %.06.lcssa.i.i.i = phi i64 [ %.0275, %bb.j ], [ %i.dz, %.lr.ph.i.i.i101 ] ; 2 uses
  %.0.lcssa.i.i.i103 = phi i64 [ %i.ds, %bb.j ], [ %i.dy, %.lr.ph.i.i.i101 ] ; 3 uses
  %i.ed = trunc i64 %.0.lcssa.i.i.i103 to i8
  %i.ee = getelementptr inbounds i8, ptr %i.p, i64 %i.dm
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !49
  %i.ef = icmp sgt i32 %i.dl, 0
  br i1 %i.ef, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SeekEm.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i.i
  %i.eg = zext nneg i32 %i.dl to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.eg, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ] ; 2 uses
  %.sroa.01.039.i.i = phi i64 [ %.0.lcssa.i.i.i103, %.lr.ph.preheader.i.i ], [ %.0.lcssa.i28.i.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ]
  %.06.lcssa.i.pn38.i.i = phi i64 [ %.06.lcssa.i.i.i, %.lr.ph.preheader.i.i ], [ %.06.lcssa.i27.i.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ] ; 3 uses
  %.037.i.i = phi ptr [ %i.do, %.lr.ph.preheader.i.i ], [ %i.ej, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.037.i.i, i64 16
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.sroa.01.039.i.i
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !60 ; 5 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !75
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 14
  %i.em = load i8, ptr %i.el, align 1, !tbaa !49
  %i.en = zext i8 %i.em to i64                    ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.en
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !60
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !69 ; 2 uses
  %.not8.i22.i.i = icmp ult i64 %.06.lcssa.i.pn38.i.i, %i.er
  br i1 %.not8.i22.i.i, label %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i, label %.lr.ph.i23.i.i

.lr.ph.i23.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i23.i.i
  %i.es = phi i64 [ %i.ex, %.lr.ph.i23.i.i ], [ %i.er, %.lr.ph.i.i ]
  %.010.i24.i.i = phi i64 [ %i.et, %.lr.ph.i23.i.i ], [ %i.en, %.lr.ph.i.i ]
  %.069.i25.i.i = phi i64 [ %i.eu, %.lr.ph.i23.i.i ], [ %.06.lcssa.i.pn38.i.i, %.lr.ph.i.i ]
  %i.et = add i64 %.010.i24.i.i, 1                ; 3 uses
  %i.eu = sub nuw i64 %.069.i25.i.i, %i.es        ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.et
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !60
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !69 ; 2 uses
  %.not.i26.i.i = icmp ult i64 %i.eu, %i.ex
  br i1 %.not.i26.i.i, label %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i, label %.lr.ph.i23.i.i, !llvm.loop !12

_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i: ; preds = %.lr.ph.i23.i.i, %.lr.ph.i.i
  %.06.lcssa.i27.i.i = phi i64 [ %.06.lcssa.i.pn38.i.i, %.lr.ph.i.i ], [ %i.eu, %.lr.ph.i23.i.i ] ; 2 uses
  %.0.lcssa.i28.i.i = phi i64 [ %i.en, %.lr.ph.i.i ], [ %i.et, %.lr.ph.i23.i.i ] ; 3 uses
  %i.ey = trunc i64 %.0.lcssa.i28.i.i to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.next.i.i
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !49
  %i.fa = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.fa, label %.lr.ph.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SeekEm.exit.i, !llvm.loop !13

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SeekEm.exit.i: ; preds = %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i.i
  %.0.lcssa.i.i = phi ptr [ %i.do, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i.i ], [ %i.ej, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ]
  %.06.lcssa.i.pn.lcssa.i.i = phi i64 [ %.06.lcssa.i.i.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i.i ], [ %.06.lcssa.i27.i.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ] ; 4 uses
  %.sroa.01.0.lcssa.i.i = phi i64 [ %.0.lcssa.i.i.i103, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i.i ], [ %.0.lcssa.i28.i.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 16
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %.sroa.01.0.lcssa.i.i
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !60 ; 6 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.q, label %bb.k, !prof !133

bb.k:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SeekEm.exit.i
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !69 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %i.fh = load i8, ptr %i.fg, align 4, !tbaa !65  ; 2 uses
  %i.fi = icmp eq i8 %i.fh, 1
  br i1 %i.fi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !78
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert.i.i107 = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  %.pre.i.i108 = load i8, ptr %.phi.trans.insert.i.i107, align 4, !tbaa !65
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.fn = phi i8 [ %.pre.i.i108, %bb.l ], [ %i.fh, %bb.k ]
  %.010.i.i104 = phi ptr [ %i.fm, %bb.l ], [ %i.fd, %bb.k ] ; 2 uses
  %.0.i.i105 = phi i64 [ %i.fk, %bb.l ], [ 0, %bb.k ]
  %i.fo = icmp ugt i8 %i.fn, 5
  br i1 %i.fo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fp = getelementptr inbounds nuw i8, ptr %.010.i.i104, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i

bb.o:                                             ; preds = %bb.m
  %i.fq = getelementptr inbounds nuw i8, ptr %.010.i.i104, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !80
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i: ; preds = %bb.o, %bb.n
  %.pn.i.i106 = phi ptr [ %i.fp, %bb.n ], [ %i.fr, %bb.o ]
  %i.fs = icmp ugt i64 %.06.lcssa.i.pn.lcssa.i.i, %i.ff
  br i1 %i.fs, label %bb.p, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.p:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i64 noundef %.06.lcssa.i.pn.lcssa.i.i, i64 noundef %i.ff) #24
          to label %.noexc109 unwind label %bb.s

.noexc109:                                        ; preds = %bb.p
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i
  %.sroa.3.0.i3.i = getelementptr inbounds nuw i8, ptr %.pn.i.i106, i64 %.0.i.i105
  %i.ft = sub nuw i64 %i.ff, %.06.lcssa.i.pn.lcssa.i.i ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i3.i, i64 %.06.lcssa.i.pn.lcssa.i.i
  %i.fv = load i32, ptr %i.n, align 8, !tbaa !73  ; 2 uses
  %i.fw = icmp sgt i32 %i.fv, -1
  call void @llvm.assume(i1 %i.fw)
  %i.fx = zext nneg i32 %i.fv to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !75
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !69
  %.neg192 = sub i64 %.0.neg276, %i.ft
  %i.gb = add i64 %.neg192, %i.ga
  br label %bb.q

bb.q:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SeekEm.exit.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
end_hunk_3
begin_hunk_4_@_ZNK7testing8internal14NotMatcherImplIRKSt17basic_string_viewIcSt11char_traitsIcEEE10DescribeToEPSo:bb.a
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.f

_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE18DescribeNegationToEPSo.exit: ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !110
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef %1, i1 noundef zeroext true), !inline_history !403
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal14NotMatcherImplIRKSt17basic_string_viewIcSt11char_traitsIcEEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE10DescribeToEPSo.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.35, i32 noundef 246)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.36, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE10DescribeToEPSo.exit

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.f

_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE10DescribeToEPSo.exit: ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !110
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef %1, i1 noundef zeroext false), !inline_history !111
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal14NotMatcherImplIRKSt17basic_string_viewIcSt11char_traitsIcEEE15MatchAndExplainES7_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.35, i32 noundef 234)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.36, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.f

_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE15MatchAndExplainES7_PNS_19MatchResultListenerE.exit: ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.j = call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2), !inline_history !11
  %i.k = xor i1 %i.j, true
  ret i1 %i.k
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052613cord_internal12_GLOBAL__N_144CordRepBtreeReaderTest_SeekBeyondLength_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052613cord_internal12_GLOBAL__N_144CordRepBtreeReaderTest_SeekBeyondLength_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_144CordRepBtreeReaderTest_SeekBeyondLength_TestE, i64 16), ptr %i.a, align 8, !tbaa !28
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #22
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_144CordRepBtreeReaderTest_SeekBeyondLength_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_144CordRepBtreeReaderTest_SeekBeyondLength_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i:
  %1 = alloca %"class.absl::lts_20260526::cord_internal::CordRepBtreeReader", align 8 ; 8 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.33", align 1 ; 3 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.30", align 4 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.33", align 1 ; 3 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.30", align 4 ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 25769803778, ptr %i.d, align 8
  store i64 3, ptr %i.c, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.e, ptr noundef nonnull align 1 dereferenceable(3) @.str.49, i64 3, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 2, ptr %i.g, align 4, !tbaa !68
  store i64 3, ptr %i.f, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store <4 x i8> <i8 3, i8 0, i8 0, i8 1>, ptr %i.h, align 4, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.c, ptr %i.i, align 8, !tbaa !60
  %i.j = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 25769803778, ptr %i.k, align 8
  store i64 3, ptr %i.j, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.l, ptr noundef nonnull align 1 dereferenceable(3) @.str.50, i64 3, i1 false)
  %i.m = tail call noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AddCordRepILNS2_8EdgeTypeE1EEEPS2_S5_PNS1_7CordRepE(ptr noundef nonnull %i.f, ptr noundef nonnull %i.j) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store i64 0, ptr %1, align 8, !tbaa !77
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 13
  %i.p = load i8, ptr %i.o, align 1, !tbaa !49    ; 4 uses
  %i.q = zext i8 %i.p to i32
  store i32 %i.q, ptr %i.n, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 14
  %i.s = load i8, ptr %i.r, align 1               ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.u = zext i8 %i.p to i64                      ; 5 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  store ptr %i.m, ptr %i.v, align 8, !tbaa !75
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 %i.s, ptr %i.x, align 1, !tbaa !49
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i
  %xtraiter = and i64 %i.u, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %.021.i.i.i.prol = zext i8 %i.s to i64
  %indvars.iv.next.i.i.i.prol = add nsw i64 %i.u, -1 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.021.i.i.i.prol
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !60  ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.prol
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !75
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 14
  %i.ad = load i8, ptr %i.ac, align 1             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i.i.prol
  store i8 %i.ad, ptr %i.ae, align 2, !tbaa !49
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %i.u, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.021.i.i.i.in.unr = phi i8 [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.prol ]
  %.01619.i.i.i.unr = phi ptr [ %i.m, %.lr.ph.i.i.i.preheader ], [ %i.aa, %.lr.ph.i.i.i.prol ]
  %i.af = icmp eq i8 %i.p, 1
  br i1 %i.af, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.in = phi i8 [ %i.as, %.lr.ph.i.i.i ], [ %.021.i.i.i.in.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01619.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %.01619.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.021.i.i.i = zext i8 %.021.i.i.i.in to i64
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01619.i.i.i, i64 16
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.021.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !60 ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !75
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 14
  %i.al = load i8, ptr %i.ak, align 1             ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i.i
  store i8 %i.al, ptr %i.am, align 1, !tbaa !49
  %.021.i.i.i.1 = zext i8 %i.al to i64
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, -2 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.021.i.i.i.1
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !60 ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.1
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !75
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 14
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i.i.1
  store i8 %i.as, ptr %i.at, align 1, !tbaa !49
  %i.au = icmp sgt i64 %indvars.iv.i.i.i, 2
  br i1 %i.au, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.loopexit, !llvm.loop !2

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.loopexit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.pre = load i32, ptr %i.n, align 8, !tbaa !73
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.loopexit, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i
  %i.av = phi i32 [ 0, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i ], [ %.pre, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.loopexit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !75 ; 5 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !69
  %.not.i.i = icmp ugt i64 %i.az, 6
  br i1 %.not.i.i, label %bb.a, label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4SeekEm.exit, !prof !132

bb.a:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 14
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !49
  %i.bc = zext i8 %i.bb to i64                    ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !60
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !69 ; 2 uses
  %.not8.i.i.i = icmp ugt i64 %i.bg, 6
  br i1 %.not8.i.i.i, label %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i.i, label %.lr.ph.i.i.i41

.lr.ph.i.i.i41:                                   ; preds = %bb.a, %.lr.ph.i.i.i41
  %i.bh = phi i64 [ %i.bm, %.lr.ph.i.i.i41 ], [ %i.bg, %bb.a ]
  %.010.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i41 ], [ %i.bc, %bb.a ]
  %.069.i.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.i41 ], [ 6, %bb.a ]
  %i.bi = add i64 %.010.i.i.i, 1                  ; 3 uses
  %i.bj = sub nuw i64 %.069.i.i.i, %i.bh          ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !60
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i42 = icmp ult i64 %i.bj, %i.bm
  br i1 %.not.i.i.i42, label %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i.i, label %.lr.ph.i.i.i41, !llvm.loop !12

_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i.i: ; preds = %.lr.ph.i.i.i41, %bb.a
  %.06.lcssa.i.i.i = phi i64 [ 6, %bb.a ], [ %i.bj, %.lr.ph.i.i.i41 ] ; 2 uses
  %.0.lcssa.i.i.i43 = phi i64 [ %i.bc, %bb.a ], [ %i.bi, %.lr.ph.i.i.i41 ] ; 3 uses
  %i.bn = trunc i64 %.0.lcssa.i.i.i43 to i8
  %i.bo = getelementptr inbounds i8, ptr %i.w, i64 %i.aw
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !49
  %i.bp = icmp sgt i32 %i.av, 0
  br i1 %i.bp, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SeekEm.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i.i
  %i.bq = zext nneg i32 %i.av to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.bq, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ] ; 2 uses
  %.sroa.01.039.i.i = phi i64 [ %.0.lcssa.i.i.i43, %.lr.ph.preheader.i.i ], [ %.0.lcssa.i28.i.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ]
  %.06.lcssa.i.pn38.i.i = phi i64 [ %.06.lcssa.i.i.i, %.lr.ph.preheader.i.i ], [ %.06.lcssa.i27.i.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ] ; 3 uses
  %.037.i.i = phi ptr [ %i.ay, %.lr.ph.preheader.i.i ], [ %i.bt, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.037.i.i, i64 16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.sroa.01.039.i.i
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !60 ; 5 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !75
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 14
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !49
  %i.bx = zext i8 %i.bw to i64                    ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !60
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !69 ; 2 uses
  %.not8.i22.i.i = icmp ult i64 %.06.lcssa.i.pn38.i.i, %i.cb
  br i1 %.not8.i22.i.i, label %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i, label %.lr.ph.i23.i.i

.lr.ph.i23.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i23.i.i
  %i.cc = phi i64 [ %i.ch, %.lr.ph.i23.i.i ], [ %i.cb, %.lr.ph.i.i ]
  %.010.i24.i.i = phi i64 [ %i.cd, %.lr.ph.i23.i.i ], [ %i.bx, %.lr.ph.i.i ]
  %.069.i25.i.i = phi i64 [ %i.ce, %.lr.ph.i23.i.i ], [ %.06.lcssa.i.pn38.i.i, %.lr.ph.i.i ]
  %i.cd = add i64 %.010.i24.i.i, 1                ; 3 uses
  %i.ce = sub nuw i64 %.069.i25.i.i, %i.cc        ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !60
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !69 ; 2 uses
  %.not.i26.i.i = icmp ult i64 %i.ce, %i.ch
  br i1 %.not.i26.i.i, label %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i, label %.lr.ph.i23.i.i, !llvm.loop !12

_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i: ; preds = %.lr.ph.i23.i.i, %.lr.ph.i.i
  %.06.lcssa.i27.i.i = phi i64 [ %.06.lcssa.i.pn38.i.i, %.lr.ph.i.i ], [ %i.ce, %.lr.ph.i23.i.i ] ; 2 uses
  %.0.lcssa.i28.i.i = phi i64 [ %i.bx, %.lr.ph.i.i ], [ %i.cd, %.lr.ph.i23.i.i ] ; 3 uses
  %i.ci = trunc i64 %.0.lcssa.i28.i.i to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !49
  %i.ck = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.ck, label %.lr.ph.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SeekEm.exit.i, !llvm.loop !13

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SeekEm.exit.i: ; preds = %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i.i
  %.0.lcssa.i.i = phi ptr [ %i.ay, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i.i ], [ %i.bt, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ]
  %.06.lcssa.i.pn.lcssa.i.i = phi i64 [ %.06.lcssa.i.i.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i.i ], [ %.06.lcssa.i27.i.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ] ; 4 uses
  %.sroa.01.0.lcssa.i.i = phi i64 [ %.0.lcssa.i.i.i43, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i.i ], [ %.0.lcssa.i28.i.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 16
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.sroa.01.0.lcssa.i.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !60 ; 6 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4SeekEm.exit, label %bb.b, !prof !133

bb.b:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SeekEm.exit.i
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !69 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cr = load i8, ptr %i.cq, align 4, !tbaa !65  ; 2 uses
  %i.cs = icmp eq i8 %i.cr, 1
  br i1 %i.cs, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !78
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert.i.i47 = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %.pre.i.i48 = load i8, ptr %.phi.trans.insert.i.i47, align 4, !tbaa !65
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cx = phi i8 [ %.pre.i.i48, %bb.c ], [ %i.cr, %bb.b ]
  %.010.i.i44 = phi ptr [ %i.cw, %bb.c ], [ %i.cn, %bb.b ] ; 2 uses
  %.0.i.i45 = phi i64 [ %i.cu, %bb.c ], [ 0, %bb.b ]
  %i.cy = icmp ugt i8 %i.cx, 5
  br i1 %i.cy, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cz = getelementptr inbounds nuw i8, ptr %.010.i.i44, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i

bb.f:                                             ; preds = %bb.d
  %i.da = getelementptr inbounds nuw i8, ptr %.010.i.i44, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !80
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i: ; preds = %bb.f, %bb.e
  %.pn.i.i46 = phi ptr [ %i.cz, %bb.e ], [ %i.db, %bb.f ]
  %i.dc = icmp ugt i64 %.06.lcssa.i.pn.lcssa.i.i, %i.cp
  br i1 %i.dc, label %bb.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.g:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i64 noundef %.06.lcssa.i.pn.lcssa.i.i, i64 noundef %i.cp) #24
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i
  %.sroa.3.0.i3.i = getelementptr inbounds nuw i8, ptr %.pn.i.i46, i64 %.0.i.i45
  %i.dd = sub nuw i64 %i.cp, %.06.lcssa.i.pn.lcssa.i.i ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i3.i, i64 %.06.lcssa.i.pn.lcssa.i.i
  %i.df = load i32, ptr %i.n, align 8, !tbaa !73  ; 2 uses
  %i.dg = icmp sgt i32 %i.df, -1
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = zext nneg i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !75
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !69
  %reass.sub = sub i64 %i.dk, %i.dd
  %i.dl = add i64 %reass.sub, -6
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4SeekEm.exit

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4SeekEm.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SeekEm.exit.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %storemerge.i = phi i64 [ %i.dl, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SeekEm.exit.i ] ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_132CordRepBtreeReaderTest_Read_Test8TestBodyEv:._crit_edge.i.i
  %97 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.30", align 4 ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %98 = alloca %"class.testing::Message", align 8 ; 7 uses
  %99 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %100 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %101 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.84", align 8 ; 5 uses
  %102 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %103 = alloca %"class.testing::Message", align 8 ; 7 uses
  %104 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %105 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %106 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.87", align 8 ; 5 uses
  %107 = alloca %"class.testing::Message", align 8 ; 7 uses
  %108 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %109 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %110 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.84", align 8 ; 5 uses
  %111 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %112 = alloca %"class.testing::Message", align 8 ; 7 uses
  %113 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %114 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %115 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.84", align 8 ; 5 uses
  %116 = alloca %"class.testing::Message", align 8 ; 7 uses
  %117 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %118 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %119 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.30", align 4 ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %120 = alloca %"class.testing::Message", align 8 ; 7 uses
  %121 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %122 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %123 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.87", align 8 ; 5 uses
  %124 = alloca %"class.testing::Message", align 8 ; 7 uses
  %125 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %126 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %127 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.84", align 8 ; 5 uses
  %128 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %129 = alloca %"class.testing::Message", align 8 ; 7 uses
  %130 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %131 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %132 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.84", align 8 ; 5 uses
  %133 = alloca %"class.testing::Message", align 8 ; 7 uses
  %134 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %135 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %136 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.30", align 4 ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %137 = alloca %"class.testing::Message", align 8 ; 7 uses
  %138 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.i, ptr noundef nonnull align 1 dereferenceable(15) @.str.54, i64 15, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 15, ptr %i.j, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 0, ptr %i.k, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZN4absl12lts_2026052615cordrep_testing21CreateFlatsFromStringESt17basic_string_viewIcSt11char_traitsIcEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %2, i64 15, ptr nonnull %i.i, i64 noundef 5)
          to label %bb.a unwind label %bb.g

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.l = load ptr, ptr %2, align 8, !tbaa !57     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !60   ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4, !tbaa !65    ; 2 uses
  %or.cond.i.i.i = icmp ugt i8 %i.u, 4
  br i1 %or.cond.i.i.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = icmp eq i8 %i.u, 1
  br i1 %i.v, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i.i: ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !67
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !65
  %i.y = icmp ugt i8 %.pre.i.i.i, 4
  br i1 %i.y, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i.i, %bb.a
  %i.z = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23
          to label %.noexc370 unwind label %.loopexit.split-lp ; 8 uses

.noexc370:                                        ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 2, ptr %i.aa, align 4, !tbaa !68
  %i.ab = load i8, ptr %i.t, align 4, !tbaa !65
  %i.ac = icmp eq i8 %i.ab, 3
  br i1 %i.ac, label %bb.c, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i

bb.c:                                             ; preds = %.noexc370
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 13
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !49
  %i.af = add i8 %i.ae, 1
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i

_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i: ; preds = %bb.c, %.noexc370
  %i.ag = phi i8 [ %i.af, %bb.c ], [ 0, %.noexc370 ]
  %i.ah = load i64, ptr %i.s, align 8, !tbaa !69
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i8 3, ptr %i.ai, align 4, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 13
  store i8 %i.ag, ptr %i.aj, align 1, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 14
  store i8 0, ptr %i.ak, align 2, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 15
  store i8 1, ptr %i.al, align 1, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.s, ptr %i.am, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i.i, %bb.b
  %i.an = invoke noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10CreateSlowEPNS1_7CordRepE(ptr noundef nonnull %i.s)
          to label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i unwind label %.loopexit.split-lp

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i
  %.0.i.i = phi ptr [ %i.z, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i ], [ %i.an, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i ] ; 2 uses
  %i.ao = icmp ugt i64 %i.r, 1
  br i1 %i.ao, label %.lr.ph.i, label %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i
  %.013.i = phi i64 [ %i.az, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i ], [ 1, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i ] ; 2 uses
  %.0412.i = phi ptr [ %.0.i6.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i ], [ %.0.i.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.013.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !60 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !65  ; 2 uses
  %or.cond.i.i5.i = icmp ugt i8 %i.as, 4
  br i1 %or.cond.i.i5.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.at = icmp eq i8 %i.as, 1
  br i1 %i.at, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i, !prof !70

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i: ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !67
  %.phi.trans.insert.i.i8.i = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %.pre.i.i9.i = load i8, ptr %.phi.trans.insert.i.i8.i, align 4, !tbaa !65
  %i.aw = icmp ugt i8 %.pre.i.i9.i, 4
  br i1 %i.aw, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i, !prof !71

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i, %.lr.ph.i
  %i.ax = invoke noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AddCordRepILNS2_8EdgeTypeE1EEEPS2_S5_PNS1_7CordRepE(ptr noundef %.0412.i, ptr noundef nonnull %i.aq)
          to label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i unwind label %.loopexit

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i, %bb.d
  %i.ay = invoke noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AppendSlowEPS2_PNS1_7CordRepE(ptr noundef %.0412.i, ptr noundef nonnull %i.aq)
          to label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i unwind label %.loopexit

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i
  %.0.i6.i = phi ptr [ %i.ax, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i ], [ %i.ay, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i ] ; 2 uses
  %i.az = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.az, %i.r
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit, label %.lr.ph.i, !llvm.loop !1

_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i
  %.04.lcssa.i = phi ptr [ %.0.i.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i ], [ %.0.i6.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i ] ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 13 ; 7 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !49  ; 4 uses
  %i.bd = zext i8 %i.bc to i32
  store i32 %i.bd, ptr %i.ba, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 14 ; 7 uses
  %i.bf = load i8, ptr %i.be, align 1             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 47 uses
  %i.bh = zext i8 %i.bc to i64                    ; 5 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh
  store ptr %.04.lcssa.i, ptr %i.bi, align 8, !tbaa !75
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 48 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 %i.bf, ptr %i.bk, align 1, !tbaa !49
  %.018.i.i.i = zext i8 %i.bf to i64              ; 3 uses
  %.not.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit
  %xtraiter = and i64 %i.bh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i.i.i.prol = add nsw i64 %i.bh, -1 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 16
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.018.i.i.i
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !60 ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i.prol
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !75
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 14
  %i.bq = load i8, ptr %i.bp, align 1             ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i.prol
  store i8 %i.bq, ptr %i.br, align 2, !tbaa !49
  %.0.i.i.i.prol = zext i8 %i.bq to i64           ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %i.bh, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.021.i.i.i.unr = phi i64 [ %.018.i.i.i, %.lr.ph.i.i.i.preheader ], [ %.0.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.01619.i.i.i.unr = phi ptr [ %.04.lcssa.i, %.lr.ph.i.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.i.prol ]
  %.0.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %.0.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.bs = icmp eq i8 %i.bc, 1
  br i1 %i.bs, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i = phi i64 [ %.0.i.i.i.1, %.lr.ph.i.i.i ], [ %.021.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01619.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i ], [ %.01619.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01619.i.i.i, i64 16
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.021.i.i.i
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !60 ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !75
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 14
  %i.by = load i8, ptr %i.bx, align 1             ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !49
  %.0.i.i.i = zext i8 %i.by to i64
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, -2 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.0.i.i.i
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !60 ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i.1
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !75
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 14
  %i.cf = load i8, ptr %i.ce, align 1             ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i.1
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !49
  %.0.i.i.i.1 = zext i8 %i.cf to i64              ; 2 uses
  %i.ch = icmp sgt i64 %indvars.iv.i.i.i, 2
  br i1 %i.ch, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i, !llvm.loop !2

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit
  %.0.lcssa.i.i.i = phi i64 [ %.018.i.i.i, %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit ], [ %.0.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %.0.i.i.i.1, %.lr.ph.i.i.i ]
  %i.ci = load ptr, ptr %i.bg, align 8, !tbaa !75
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.0.lcssa.i.i.i
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !60
  %i.cm = load i64, ptr %.04.lcssa.i, align 8, !tbaa !69
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !69 ; 2 uses
  %i.co = sub i64 %i.cm, %i.cn
  store i64 %i.co, ptr %3, align 8, !tbaa !77
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 13 uses
  %i.cp = invoke { i64, ptr } @_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4ReadEmmRPNS1_7CordRepE(ptr noundef nonnull align 8 dereferenceable(120) %3, i64 noundef 0, i64 noundef %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i
  %i.cq = extractvalue { i64, ptr } %i.cp, 0
  %i.cr = extractvalue { i64, ptr } %i.cp, 1
  store i64 %i.cq, ptr %4, align 8, !tbaa !40
  store ptr %i.cr, ptr %.sroa.558.0..sroa_idx, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i64 0, ptr %6, align 8, !alias.scope !430
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.cs = load i8, ptr %5, align 8, !tbaa !90, !range !91, !noundef !92
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.s, label %bb.j

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit1096

.loopexit:                                        ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.vb

.loopexit.split-lp:                               ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.vb

bb.h:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.va

bb.i:                                             ; preds = %bb.e
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.w

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !93 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.l, %bb.k
  %i.da = phi ptr [ %i.cz, %bb.l ], [ @.str.45, %bb.k ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 180, ptr noundef %i.da)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.db = load ptr, ptr %7, align 8, !tbaa !95    ; 3 uses
  %.not.i.i375 = icmp eq ptr %i.db, null
  br i1 %.not.i.i375, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !28
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(128) %i.db) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.n, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.s

bb.o:                                             ; preds = %bb.j
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit378

bb.p:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.dh, %bb.q ], [ %i.dg, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.di = load ptr, ptr %7, align 8, !tbaa !95    ; 3 uses
  %.not.i.i376 = icmp eq ptr %i.di, null
  br i1 %.not.i.i376, label %_ZN7testing7MessageD2Ev.exit378, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i377

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i377: ; preds = %bb.r
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !28
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(128) %i.di) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit378

_ZN7testing7MessageD2Ev.exit378:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i377, %bb.r, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.df, %bb.o ], [ %.pn, %bb.r ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i377 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #20
  br label %bb.w

bb.s:                                             ; preds = %bb.f, %_ZN7testing7MessageD2Ev.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !93 ; 4 uses
  %.not.i.i379 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i379, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !51 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !49
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef 32) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_132CordRepBtreeReaderTest_Read_Test8TestBodyEv:._crit_edge.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i.i, i64 16
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %.lcssa.sink.i.i
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !60 ; 5 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !69 ; 2 uses
  %i.hg = sub i64 %i.hb, %i.hf
  store i64 %i.hg, ptr %3, align 8, !tbaa !77
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  %i.hi = load i8, ptr %i.hh, align 4, !tbaa !65  ; 2 uses
  %i.hj = icmp eq i8 %i.hi, 1
  br i1 %i.hj, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !78
  %i.hm = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert.i.i412 = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  %.pre.i.i413 = load i8, ptr %.phi.trans.insert.i.i412, align 4, !tbaa !65
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i
  %i.ho = phi i8 [ %.pre.i.i413, %bb.bf ], [ %i.hi, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i ]
  %.010.i.i406 = phi ptr [ %i.hn, %bb.bf ], [ %i.he, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i ] ; 2 uses
  %.0.i.i407 = phi i64 [ %i.hl, %bb.bf ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i ]
  %i.hp = icmp ugt i8 %i.ho, 5
  br i1 %i.hp, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.hq = getelementptr inbounds nuw i8, ptr %.010.i.i406, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i

bb.bi:                                            ; preds = %bb.bg
  %i.hr = getelementptr inbounds nuw i8, ptr %.010.i.i406, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !80
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i: ; preds = %bb.bi, %bb.bh
  %.pn.i.i408 = phi ptr [ %i.hq, %bb.bh ], [ %i.hs, %bb.bi ]
  %.sroa.3.0.i.i409 = getelementptr inbounds nuw i8, ptr %.pn.i.i408, i64 %.0.i.i407
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i, %bb.ay
  %.sroa.0.0.i = phi i64 [ %i.hf, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i ], [ 0, %bb.ay ]
  %.sroa.3.0.i = phi ptr [ %.sroa.3.0.i.i409, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i ], [ null, %bb.ay ]
  store i64 %.sroa.0.0.i, ptr %19, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %.sroa.3.0.i, ptr %i.ht, align 8
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPKcEEEclISt17basic_string_viewIcSt11char_traitsIcEEEENS_15AssertionResultES4_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.17, ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.hu = load i8, ptr %17, align 8, !tbaa !90, !range !91, !noundef !92
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.bw, label %bb.bn

bb.bl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit400, %bb.am
  %.pn203.pn.pn = phi { ptr, i32 } [ %.pn203.pn, %_ZN7testing7MessageD2Ev.exit400 ], [ %i.ev, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.va

bb.bm:                                            ; preds = %bb.bj
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.cf

bb.bn:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bo unwind label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.hx = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !93 ; 2 uses
  %.not.i.i416 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i416, label %_ZNK7testing15AssertionResult15failure_messageEv.exit417, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit417

_ZNK7testing15AssertionResult15failure_messageEv.exit417: ; preds = %bb.bp, %bb.bo
  %i.ia = phi ptr [ %i.hz, %bb.bp ], [ @.str.45, %bb.bo ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 183, ptr noundef %i.ia)
          to label %bb.bq unwind label %bb.bt

bb.bq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit417
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.br unwind label %bb.bu

bb.br:                                            ; preds = %bb.bq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.ib = load ptr, ptr %20, align 8, !tbaa !95   ; 3 uses
  %.not.i.i418 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i418, label %_ZN7testing7MessageD2Ev.exit420, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i419

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i419: ; preds = %bb.br
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !28
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(128) %i.ib) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit420

_ZN7testing7MessageD2Ev.exit420:                  ; preds = %bb.br, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i419
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.bw

bb.bs:                                            ; preds = %bb.bn
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit423

bb.bt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit417
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bq
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #20
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn209 = phi { ptr, i32 } [ %i.ih, %bb.bu ], [ %i.ig, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.ii = load ptr, ptr %20, align 8, !tbaa !95   ; 3 uses
  %.not.i.i421 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i421, label %_ZN7testing7MessageD2Ev.exit423, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i422

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i422: ; preds = %bb.bv
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !28
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dereferenceable(128) %i.ii) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit423

_ZN7testing7MessageD2Ev.exit423:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i422, %bb.bv, %bb.bs
  %.pn209.pn = phi { ptr, i32 } [ %i.if, %bb.bs ], [ %.pn209, %bb.bv ], [ %.pn209, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i422 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #20
  br label %bb.cf

bb.bw:                                            ; preds = %bb.bk, %_ZN7testing7MessageD2Ev.exit420
  %i.im = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !93 ; 4 uses
  %.not.i.i424 = icmp eq ptr %i.in, null
  br i1 %.not.i.i424, label %_ZN7testing15AssertionResultD2Ev.exit428, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !51 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i426, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i425

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i425: ; preds = %bb.bx
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !49
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i426

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i426: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i425
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit428

_ZN7testing15AssertionResultD2Ev.exit428:         ; preds = %bb.bw, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i426
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.it = load i8, ptr %i.bb, align 1, !tbaa !49  ; 4 uses
  %i.iu = zext i8 %i.it to i32
  store i32 %i.iu, ptr %i.ba, align 8, !tbaa !73
  %i.iv = load i8, ptr %i.be, align 2             ; 2 uses
  %i.iw = zext i8 %i.it to i64                    ; 5 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.iw
  store ptr %.04.lcssa.i, ptr %i.ix, align 8, !tbaa !75
  %i.iy = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.iw
  store i8 %i.iv, ptr %i.iy, align 1, !tbaa !49
  %.018.i.i.i429 = zext i8 %i.iv to i64           ; 3 uses
  %.not.i.i.i430 = icmp eq i8 %i.it, 0
  br i1 %.not.i.i.i430, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i437, label %.lr.ph.i.i.i431.preheader

.lr.ph.i.i.i431.preheader:                        ; preds = %_ZN7testing15AssertionResultD2Ev.exit428
  %xtraiter1478 = and i64 %i.iw, 1
  %lcmp.mod1479.not = icmp eq i64 %xtraiter1478, 0
  br i1 %lcmp.mod1479.not, label %.lr.ph.i.i.i431.prol.loopexit, label %.lr.ph.i.i.i431.prol

.lr.ph.i.i.i431.prol:                             ; preds = %.lr.ph.i.i.i431.preheader
  %indvars.iv.next.i.i.i435.prol = add nsw i64 %i.iw, -1 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 16
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %.018.i.i.i429
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !60 ; 3 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i435.prol
  store ptr %i.jb, ptr %i.jc, align 8, !tbaa !75
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 14
  %i.je = load i8, ptr %i.jd, align 1             ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i435.prol
  store i8 %i.je, ptr %i.jf, align 2, !tbaa !49
  %.0.i.i.i436.prol = zext i8 %i.je to i64        ; 2 uses
  br label %.lr.ph.i.i.i431.prol.loopexit

.lr.ph.i.i.i431.prol.loopexit:                    ; preds = %.lr.ph.i.i.i431.prol, %.lr.ph.i.i.i431.preheader
  %indvars.iv.i.i.i432.unr = phi i64 [ %i.iw, %.lr.ph.i.i.i431.preheader ], [ %indvars.iv.next.i.i.i435.prol, %.lr.ph.i.i.i431.prol ]
  %.021.i.i.i433.unr = phi i64 [ %.018.i.i.i429, %.lr.ph.i.i.i431.preheader ], [ %.0.i.i.i436.prol, %.lr.ph.i.i.i431.prol ]
  %.01619.i.i.i434.unr = phi ptr [ %.04.lcssa.i, %.lr.ph.i.i.i431.preheader ], [ %i.jb, %.lr.ph.i.i.i431.prol ]
  %.0.i.i.i436.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i431.preheader ], [ %.0.i.i.i436.prol, %.lr.ph.i.i.i431.prol ]
  %i.jg = icmp eq i8 %i.it, 1
  br i1 %i.jg, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i437, label %.lr.ph.i.i.i431

.lr.ph.i.i.i431:                                  ; preds = %.lr.ph.i.i.i431.prol.loopexit, %.lr.ph.i.i.i431
  %indvars.iv.i.i.i432 = phi i64 [ %indvars.iv.next.i.i.i435.1, %.lr.ph.i.i.i431 ], [ %indvars.iv.i.i.i432.unr, %.lr.ph.i.i.i431.prol.loopexit ] ; 3 uses
  %.021.i.i.i433 = phi i64 [ %.0.i.i.i436.1, %.lr.ph.i.i.i431 ], [ %.021.i.i.i433.unr, %.lr.ph.i.i.i431.prol.loopexit ]
  %.01619.i.i.i434 = phi ptr [ %i.jq, %.lr.ph.i.i.i431 ], [ %.01619.i.i.i434.unr, %.lr.ph.i.i.i431.prol.loopexit ]
  %indvars.iv.next.i.i.i435 = add nsw i64 %indvars.iv.i.i.i432, -1 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.01619.i.i.i434, i64 16
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %.021.i.i.i433
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !60 ; 3 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i435
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !75
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 14
  %i.jm = load i8, ptr %i.jl, align 1             ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i435
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !49
  %.0.i.i.i436 = zext i8 %i.jm to i64
  %indvars.iv.next.i.i.i435.1 = add nsw i64 %indvars.iv.i.i.i432, -2 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %.0.i.i.i436
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !60 ; 3 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i435.1
  store ptr %i.jq, ptr %i.jr, align 8, !tbaa !75
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 14
  %i.jt = load i8, ptr %i.js, align 1             ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i435.1
  store i8 %i.jt, ptr %i.ju, align 1, !tbaa !49
  %.0.i.i.i436.1 = zext i8 %i.jt to i64           ; 2 uses
  %i.jv = icmp sgt i64 %indvars.iv.i.i.i432, 2
  br i1 %i.jv, label %.lr.ph.i.i.i431, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i437, !llvm.loop !2

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i437: ; preds = %.lr.ph.i.i.i431.prol.loopexit, %.lr.ph.i.i.i431, %_ZN7testing15AssertionResultD2Ev.exit428
  %.0.lcssa.i.i.i438 = phi i64 [ %.018.i.i.i429, %_ZN7testing15AssertionResultD2Ev.exit428 ], [ %.0.i.i.i436.lcssa.unr, %.lr.ph.i.i.i431.prol.loopexit ], [ %.0.i.i.i436.1, %.lr.ph.i.i.i431 ]
  %i.jw = load ptr, ptr %i.bg, align 8, !tbaa !75
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %.0.lcssa.i.i.i438
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !60 ; 5 uses
  %i.ka = load i64, ptr %.04.lcssa.i, align 8, !tbaa !69
  %i.kb = load i64, ptr %i.jz, align 8, !tbaa !69 ; 3 uses
  %i.kc = sub i64 %i.ka, %i.kb
  store i64 %i.kc, ptr %3, align 8, !tbaa !77
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  %i.ke = load i8, ptr %i.kd, align 4, !tbaa !65  ; 2 uses
  %i.kf = icmp eq i8 %i.ke, 1
  br i1 %i.kf, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i437
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !78
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert.i.i446 = getelementptr inbounds nuw i8, ptr %i.kj, i64 12
  %.pre.i.i447 = load i8, ptr %.phi.trans.insert.i.i446, align 4, !tbaa !65
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i437
  %i.kk = phi i8 [ %.pre.i.i447, %bb.by ], [ %i.ke, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i437 ]
  %.010.i.i439 = phi ptr [ %i.kj, %bb.by ], [ %i.jz, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i437 ] ; 2 uses
  %.0.i.i440 = phi i64 [ %i.kh, %bb.by ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i437 ]
  %i.kl = icmp ugt i8 %i.kk, 5
  br i1 %i.kl, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.km = getelementptr inbounds nuw i8, ptr %.010.i.i439, i64 13
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.kn = getelementptr inbounds nuw i8, ptr %.010.i.i439, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !80
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.pn.i.i442 = phi ptr [ %i.km, %bb.ca ], [ %i.ko, %bb.cb ]
  %.sroa.3.0.i.i443 = getelementptr inbounds nuw i8, ptr %.pn.i.i442, i64 %.0.i.i440
  store i64 %i.kb, ptr %4, align 8, !tbaa !40
  store ptr %.sroa.3.0.i.i443, ptr %.sroa.558.0..sroa_idx, align 8, !tbaa !98
  %i.kp = invoke { i64, ptr } @_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4ReadEmmRPNS1_7CordRepE(ptr noundef nonnull align 8 dereferenceable(120) %3, i64 noundef 15, i64 noundef %i.kb, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.cd unwind label %bb.cg     ; 2 uses

bb.cd:                                            ; preds = %bb.cc
  %i.kq = extractvalue { i64, ptr } %i.kp, 0
  %i.kr = extractvalue { i64, ptr } %i.kp, 1
  store i64 %i.kq, ptr %4, align 8, !tbaa !40
  store ptr %i.kr, ptr %.sroa.558.0..sroa_idx, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  store i64 0, ptr %23, align 8, !alias.scope !431
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9NeMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ce unwind label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  %i.ks = load i8, ptr %22, align 8, !tbaa !90, !range !91, !noundef !92
  %i.kt = trunc nuw i8 %i.ks to i1
  br i1 %i.kt, label %bb.cr, label %bb.ci

bb.cf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit423, %bb.bm
  %.pn209.pn.pn = phi { ptr, i32 } [ %.pn209.pn, %_ZN7testing7MessageD2Ev.exit423 ], [ %i.hw, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.va

bb.cg:                                            ; preds = %bb.cc
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.va

bb.ch:                                            ; preds = %bb.cd
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.cx

bb.ci:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.cj unwind label %bb.cn

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  %i.kw = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !93 ; 2 uses
  %.not.i.i449 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i449, label %_ZNK7testing15AssertionResult15failure_messageEv.exit450, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit450

_ZNK7testing15AssertionResult15failure_messageEv.exit450: ; preds = %bb.ck, %bb.cj
  %i.kz = phi ptr [ %i.ky, %bb.ck ], [ @.str.45, %bb.cj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 188, ptr noundef %i.kz)
          to label %bb.cl unwind label %bb.co

bb.cl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit450
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.cm unwind label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  %i.la = load ptr, ptr %24, align 8, !tbaa !95   ; 3 uses
  %.not.i.i451 = icmp eq ptr %i.la, null
  br i1 %.not.i.i451, label %_ZN7testing7MessageD2Ev.exit453, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i452

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i452: ; preds = %bb.cm
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !28
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8
  call void %i.ld(ptr noundef nonnull align 8 dereferenceable(128) %i.la) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit453

_ZN7testing7MessageD2Ev.exit453:                  ; preds = %bb.cm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i452
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  br label %bb.cr

bb.cn:                                            ; preds = %bb.ci
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit456

bb.co:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit450
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cl
  %i.lg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #20
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn213 = phi { ptr, i32 } [ %i.lg, %bb.cp ], [ %i.lf, %bb.co ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  %i.lh = load ptr, ptr %24, align 8, !tbaa !95   ; 3 uses
  %.not.i.i454 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i454, label %_ZN7testing7MessageD2Ev.exit456, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i455

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i455: ; preds = %bb.cq
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !28
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8
  call void %i.lk(ptr noundef nonnull align 8 dereferenceable(128) %i.lh) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit456

_ZN7testing7MessageD2Ev.exit456:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i455, %bb.cq, %bb.cn
  %.pn213.pn = phi { ptr, i32 } [ %i.le, %bb.cn ], [ %.pn213, %bb.cq ], [ %.pn213, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i455 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #20
  br label %bb.cx

end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_132CordRepBtreeReaderTest_Read_Test8TestBodyEv:._crit_edge.i.i
_ZN7testing7MessageD2Ev.exit485:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i484, %bb.dw, %bb.dt
  %.pn224.pn = phi { ptr, i32 } [ %i.nr, %bb.dt ], [ %.pn224, %bb.dw ], [ %.pn224, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i484 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #20
  br label %bb.eb

bb.dx:                                            ; preds = %bb.dl, %_ZN7testing7MessageD2Ev.exit482
  %i.ny = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !93 ; 4 uses
  %.not.i.i486 = icmp eq ptr %i.nz, null
  br i1 %.not.i.i486, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !51 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 16 ; 2 uses
  %i.oc = icmp eq ptr %i.oa, %i.ob
  br i1 %i.oc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i488, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i487

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i487: ; preds = %bb.dy
  %i.od = load i64, ptr %i.ob, align 8, !tbaa !49
  %i.oe = add i64 %i.od, 1
  call void @_ZdlPvm(ptr noundef %i.oa, i64 noundef %i.oe) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i488

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i488: ; preds = %bb.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i487
  call void @_ZdlPvm(ptr noundef nonnull %i.nz, i64 noundef 32) #22
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dx, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i488
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  store i32 0, ptr %36, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.of = load i64, ptr %3, align 8, !tbaa !77
  store i64 %i.of, ptr %i.c, align 8, !tbaa !40
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIjEEEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %35, ptr noundef nonnull align 4 dereferenceable(4) %36, ptr noundef nonnull @.str.16, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ea unwind label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  %i.og = load i8, ptr %35, align 8, !tbaa !90, !range !91, !noundef !92
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %bb.em, label %bb.ed

bb.eb:                                            ; preds = %_ZN7testing7MessageD2Ev.exit485, %bb.dn
  %.pn224.pn.pn = phi { ptr, i32 } [ %.pn224.pn, %_ZN7testing7MessageD2Ev.exit485 ], [ %i.ni, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  br label %bb.va

bb.ec:                                            ; preds = %bb.dz
  %i.oi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %bb.ew

bb.ed:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.ee unwind label %bb.ei

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  %i.oj = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !93 ; 2 uses
  %.not.i.i491 = icmp eq ptr %i.ok, null
  br i1 %.not.i.i491, label %_ZNK7testing15AssertionResult15failure_messageEv.exit492, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit492

_ZNK7testing15AssertionResult15failure_messageEv.exit492: ; preds = %bb.ef, %bb.ee
  %i.om = phi ptr [ %i.ol, %bb.ef ], [ @.str.45, %bb.ee ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %38, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 191, ptr noundef %i.om)
          to label %bb.eg unwind label %bb.ej

bb.eg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit492
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.eh unwind label %bb.ek

bb.eh:                                            ; preds = %bb.eg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  %i.on = load ptr, ptr %37, align 8, !tbaa !95   ; 3 uses
  %.not.i.i493 = icmp eq ptr %i.on, null
  br i1 %.not.i.i493, label %_ZN7testing7MessageD2Ev.exit495, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i494

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i494: ; preds = %bb.eh
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !28
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load ptr, ptr %i.op, align 8
  call void %i.oq(ptr noundef nonnull align 8 dereferenceable(128) %i.on) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit495

_ZN7testing7MessageD2Ev.exit495:                  ; preds = %bb.eh, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i494
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  br label %bb.em

bb.ei:                                            ; preds = %bb.ed
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit498

bb.ej:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit492
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ek:                                            ; preds = %bb.eg
  %i.ot = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #20
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.pn230 = phi { ptr, i32 } [ %i.ot, %bb.ek ], [ %i.os, %bb.ej ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  %i.ou = load ptr, ptr %37, align 8, !tbaa !95   ; 3 uses
  %.not.i.i496 = icmp eq ptr %i.ou, null
  br i1 %.not.i.i496, label %_ZN7testing7MessageD2Ev.exit498, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i497

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i497: ; preds = %bb.el
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !28
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8
  call void %i.ox(ptr noundef nonnull align 8 dereferenceable(128) %i.ou) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit498

_ZN7testing7MessageD2Ev.exit498:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i497, %bb.el, %bb.ei
  %.pn230.pn = phi { ptr, i32 } [ %i.or, %bb.ei ], [ %.pn230, %bb.el ], [ %.pn230, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i497 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #20
  br label %bb.ew

bb.em:                                            ; preds = %bb.ea, %_ZN7testing7MessageD2Ev.exit495
  %i.oy = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !93 ; 4 uses
  %.not.i.i499 = icmp eq ptr %i.oz, null
  br i1 %.not.i.i499, label %_ZN7testing15AssertionResultD2Ev.exit503, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !51 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 16 ; 2 uses
  %i.pc = icmp eq ptr %i.pa, %i.pb
  br i1 %i.pc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i501, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i500

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i500: ; preds = %bb.en
  %i.pd = load i64, ptr %i.pb, align 8, !tbaa !49
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pe) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i501

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i501: ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i500
  call void @_ZdlPvm(ptr noundef nonnull %i.oz, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit503

_ZN7testing15AssertionResultD2Ev.exit503:         ; preds = %bb.em, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i501
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  %i.pf = load ptr, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = atomicrmw sub ptr %i.pg, i32 2 acq_rel, align 4
  %.not.i = icmp eq i32 %i.ph, 2
  br i1 %.not.i, label %bb.eo, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit, !prof !99

bb.eo:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit503
  invoke void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.pf)
          to label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit unwind label %bb.ex

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit503, %bb.eo
  %i.pi = load i8, ptr %i.bb, align 1, !tbaa !49  ; 4 uses
  %i.pj = zext i8 %i.pi to i32
  store i32 %i.pj, ptr %i.ba, align 8, !tbaa !73
  %i.pk = load i8, ptr %i.be, align 2             ; 2 uses
  %i.pl = zext i8 %i.pi to i64                    ; 5 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.pl
  store ptr %.04.lcssa.i, ptr %i.pm, align 8, !tbaa !75
  %i.pn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.pl
  store i8 %i.pk, ptr %i.pn, align 1, !tbaa !49
  %.018.i.i.i505 = zext i8 %i.pk to i64           ; 3 uses
  %.not.i.i.i506 = icmp eq i8 %i.pi, 0
  br i1 %.not.i.i.i506, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i513, label %.lr.ph.i.i.i507.preheader

.lr.ph.i.i.i507.preheader:                        ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit
  %xtraiter1480 = and i64 %i.pl, 1
  %lcmp.mod1481.not = icmp eq i64 %xtraiter1480, 0
  br i1 %lcmp.mod1481.not, label %.lr.ph.i.i.i507.prol.loopexit, label %.lr.ph.i.i.i507.prol

.lr.ph.i.i.i507.prol:                             ; preds = %.lr.ph.i.i.i507.preheader
  %indvars.iv.next.i.i.i511.prol = add nsw i64 %i.pl, -1 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 16
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %.018.i.i.i505
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !60 ; 3 uses
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i511.prol
  store ptr %i.pq, ptr %i.pr, align 8, !tbaa !75
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 14
  %i.pt = load i8, ptr %i.ps, align 1             ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i511.prol
  store i8 %i.pt, ptr %i.pu, align 2, !tbaa !49
  %.0.i.i.i512.prol = zext i8 %i.pt to i64        ; 2 uses
  br label %.lr.ph.i.i.i507.prol.loopexit

.lr.ph.i.i.i507.prol.loopexit:                    ; preds = %.lr.ph.i.i.i507.prol, %.lr.ph.i.i.i507.preheader
  %indvars.iv.i.i.i508.unr = phi i64 [ %i.pl, %.lr.ph.i.i.i507.preheader ], [ %indvars.iv.next.i.i.i511.prol, %.lr.ph.i.i.i507.prol ]
  %.021.i.i.i509.unr = phi i64 [ %.018.i.i.i505, %.lr.ph.i.i.i507.preheader ], [ %.0.i.i.i512.prol, %.lr.ph.i.i.i507.prol ]
  %.01619.i.i.i510.unr = phi ptr [ %.04.lcssa.i, %.lr.ph.i.i.i507.preheader ], [ %i.pq, %.lr.ph.i.i.i507.prol ]
  %.0.i.i.i512.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i507.preheader ], [ %.0.i.i.i512.prol, %.lr.ph.i.i.i507.prol ]
  %i.pv = icmp eq i8 %i.pi, 1
  br i1 %i.pv, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i513, label %.lr.ph.i.i.i507

.lr.ph.i.i.i507:                                  ; preds = %.lr.ph.i.i.i507.prol.loopexit, %.lr.ph.i.i.i507
  %indvars.iv.i.i.i508 = phi i64 [ %indvars.iv.next.i.i.i511.1, %.lr.ph.i.i.i507 ], [ %indvars.iv.i.i.i508.unr, %.lr.ph.i.i.i507.prol.loopexit ] ; 3 uses
  %.021.i.i.i509 = phi i64 [ %.0.i.i.i512.1, %.lr.ph.i.i.i507 ], [ %.021.i.i.i509.unr, %.lr.ph.i.i.i507.prol.loopexit ]
  %.01619.i.i.i510 = phi ptr [ %i.qf, %.lr.ph.i.i.i507 ], [ %.01619.i.i.i510.unr, %.lr.ph.i.i.i507.prol.loopexit ]
  %indvars.iv.next.i.i.i511 = add nsw i64 %indvars.iv.i.i.i508, -1 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.01619.i.i.i510, i64 16
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %.021.i.i.i509
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !60 ; 3 uses
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i511
  store ptr %i.py, ptr %i.pz, align 8, !tbaa !75
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 14
  %i.qb = load i8, ptr %i.qa, align 1             ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i511
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !49
  %.0.i.i.i512 = zext i8 %i.qb to i64
  %indvars.iv.next.i.i.i511.1 = add nsw i64 %indvars.iv.i.i.i508, -2 ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %.0.i.i.i512
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !60 ; 3 uses
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i511.1
  store ptr %i.qf, ptr %i.qg, align 8, !tbaa !75
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 14
  %i.qi = load i8, ptr %i.qh, align 1             ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i511.1
  store i8 %i.qi, ptr %i.qj, align 1, !tbaa !49
  %.0.i.i.i512.1 = zext i8 %i.qi to i64           ; 2 uses
  %i.qk = icmp sgt i64 %indvars.iv.i.i.i508, 2
  br i1 %i.qk, label %.lr.ph.i.i.i507, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i513, !llvm.loop !2

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i513: ; preds = %.lr.ph.i.i.i507.prol.loopexit, %.lr.ph.i.i.i507, %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit
  %.0.lcssa.i.i.i514 = phi i64 [ %.018.i.i.i505, %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit ], [ %.0.i.i.i512.lcssa.unr, %.lr.ph.i.i.i507.prol.loopexit ], [ %.0.i.i.i512.1, %.lr.ph.i.i.i507 ]
  %i.ql = load ptr, ptr %i.bg, align 8, !tbaa !75
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %.0.lcssa.i.i.i514
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !60 ; 5 uses
  %i.qp = load i64, ptr %.04.lcssa.i, align 8, !tbaa !69
  %i.qq = load i64, ptr %i.qo, align 8, !tbaa !69 ; 3 uses
  %i.qr = sub i64 %i.qp, %i.qq
  store i64 %i.qr, ptr %3, align 8, !tbaa !77
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qo, i64 12
  %i.qt = load i8, ptr %i.qs, align 4, !tbaa !65  ; 2 uses
  %i.qu = icmp eq i8 %i.qt, 1
  br i1 %i.qu, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i513
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !78
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qo, i64 24
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert.i.i522 = getelementptr inbounds nuw i8, ptr %i.qy, i64 12
  %.pre.i.i523 = load i8, ptr %.phi.trans.insert.i.i522, align 4, !tbaa !65
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i513
  %i.qz = phi i8 [ %.pre.i.i523, %bb.ep ], [ %i.qt, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i513 ]
  %.010.i.i515 = phi ptr [ %i.qy, %bb.ep ], [ %i.qo, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i513 ] ; 2 uses
  %.0.i.i516 = phi i64 [ %i.qw, %bb.ep ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i513 ]
  %i.ra = icmp ugt i8 %i.qz, 5
  br i1 %i.ra, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.rb = getelementptr inbounds nuw i8, ptr %.010.i.i515, i64 13
  br label %bb.et

bb.es:                                            ; preds = %bb.eq
  %i.rc = getelementptr inbounds nuw i8, ptr %.010.i.i515, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !80
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.pn.i.i518 = phi ptr [ %i.rb, %bb.er ], [ %i.rd, %bb.es ]
  %.sroa.3.0.i.i519 = getelementptr inbounds nuw i8, ptr %.pn.i.i518, i64 %.0.i.i516
  store i64 %i.qq, ptr %4, align 8, !tbaa !40
  store ptr %.sroa.3.0.i.i519, ptr %.sroa.558.0..sroa_idx, align 8, !tbaa !98
  %i.re = invoke { i64, ptr } @_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4ReadEmmRPNS1_7CordRepE(ptr noundef nonnull align 8 dereferenceable(120) %3, i64 noundef 3, i64 noundef %i.qq, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.eu unwind label %bb.ey     ; 2 uses

bb.eu:                                            ; preds = %bb.et
  %i.rf = extractvalue { i64, ptr } %i.re, 0
  %i.rg = extractvalue { i64, ptr } %i.re, 1
  store i64 %i.rf, ptr %4, align 8, !tbaa !40
  store ptr %i.rg, ptr %.sroa.558.0..sroa_idx, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  store i64 0, ptr %40, align 8, !alias.scope !433
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9NeMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %39, ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ev unwind label %bb.ez

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  %i.rh = load i8, ptr %39, align 8, !tbaa !90, !range !91, !noundef !92
  %i.ri = trunc nuw i8 %i.rh to i1
  br i1 %i.ri, label %.critedge, label %bb.fa

bb.ew:                                            ; preds = %_ZN7testing7MessageD2Ev.exit498, %bb.ec
  %.pn230.pn.pn = phi { ptr, i32 } [ %.pn230.pn, %_ZN7testing7MessageD2Ev.exit498 ], [ %i.oi, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  br label %bb.va

bb.ex:                                            ; preds = %bb.ux, %bb.uw, %bb.sf, %bb.po, %bb.lx, %bb.ig, %bb.eo
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %bb.va

bb.ey:                                            ; preds = %bb.et
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %bb.va

bb.ez:                                            ; preds = %bb.eu
  %i.rl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  br label %bb.fp

bb.fa:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %bb.fb unwind label %bb.fg

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20
  %i.rm = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !93 ; 2 uses
  %.not.i.i525 = icmp eq ptr %i.rn, null
  br i1 %.not.i.i525, label %_ZNK7testing15AssertionResult15failure_messageEv.exit526, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit526

_ZNK7testing15AssertionResult15failure_messageEv.exit526: ; preds = %bb.fc, %bb.fb
  %i.rp = phi ptr [ %i.ro, %bb.fc ], [ @.str.45, %bb.fb ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %42, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 197, ptr noundef %i.rp)
          to label %bb.fd unwind label %bb.fh

bb.fd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit526
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %bb.fe unwind label %bb.fi

bb.fe:                                            ; preds = %bb.fd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %42) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  %i.rq = load ptr, ptr %41, align 8, !tbaa !95   ; 3 uses
  %.not.i.i527 = icmp eq ptr %i.rq, null
  br i1 %.not.i.i527, label %_ZN7testing7MessageD2Ev.exit529, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i528

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i528: ; preds = %bb.fe
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !28
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.rt = load ptr, ptr %i.rs, align 8
  call void %i.rt(ptr noundef nonnull align 8 dereferenceable(128) %i.rq) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit529

_ZN7testing7MessageD2Ev.exit529:                  ; preds = %bb.fe, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i528
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  %i.ru = load ptr, ptr %i.rm, align 8, !tbaa !93 ; 4 uses
  %.not.i.i530 = icmp eq ptr %i.ru, null
  br i1 %.not.i.i530, label %_ZN7testing15AssertionResultD2Ev.exit534, label %bb.ff

bb.ff:                                            ; preds = %_ZN7testing7MessageD2Ev.exit529
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !51 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 16 ; 2 uses
  %i.rx = icmp eq ptr %i.rv, %i.rw
  br i1 %i.rx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i532, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i531

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i531: ; preds = %bb.ff
  %i.ry = load i64, ptr %i.rw, align 8, !tbaa !49
  %i.rz = add i64 %i.ry, 1
  call void @_ZdlPvm(ptr noundef %i.rv, i64 noundef %i.rz) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i532

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i532: ; preds = %bb.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i531
  call void @_ZdlPvm(ptr noundef nonnull %i.ru, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit534

_ZN7testing15AssertionResultD2Ev.exit534:         ; preds = %_ZN7testing7MessageD2Ev.exit529, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i532
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  br label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit1090

bb.fg:                                            ; preds = %bb.fa
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit537

bb.fh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit526
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_132CordRepBtreeReaderTest_Read_Test8TestBodyEv:._crit_edge.i.i
bb.hn:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i594
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xn, i64 16
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !78
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xn, i64 24
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert.i.i606 = getelementptr inbounds nuw i8, ptr %i.xw, i64 12
  %.pre.i.i607 = load i8, ptr %.phi.trans.insert.i.i606, align 4, !tbaa !65
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i594
  %i.xx = phi i8 [ %.pre.i.i607, %bb.hn ], [ %i.xr, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i594 ]
  %.010.i.i597 = phi ptr [ %i.xw, %bb.hn ], [ %i.xn, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i594 ] ; 2 uses
  %.0.i.i598 = phi i64 [ %i.xu, %bb.hn ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i594 ]
  %i.xy = icmp ugt i8 %i.xx, 5
  br i1 %i.xy, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.xz = getelementptr inbounds nuw i8, ptr %.010.i.i597, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i599

bb.hq:                                            ; preds = %bb.ho
  %i.ya = getelementptr inbounds nuw i8, ptr %.010.i.i597, i64 16
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !80
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i599

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i599: ; preds = %bb.hq, %bb.hp
  %.pn.i.i600 = phi ptr [ %i.xz, %bb.hp ], [ %i.yb, %bb.hq ]
  %.sroa.3.0.i.i601 = getelementptr inbounds nuw i8, ptr %.pn.i.i600, i64 %.0.i.i598
  br label %bb.hr

bb.hr:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i599, %bb.hg
  %.sroa.0.0.i602 = phi i64 [ %i.xo, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i599 ], [ 0, %bb.hg ]
  %.sroa.3.0.i603 = phi ptr [ %.sroa.3.0.i.i601, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i599 ], [ null, %bb.hg ]
  store i64 %.sroa.0.0.i602, ptr %58, align 8
  %i.yc = getelementptr inbounds nuw i8, ptr %58, i64 8
  store ptr %.sroa.3.0.i603, ptr %i.yc, align 8
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPKcEEEclISt17basic_string_viewIcSt11char_traitsIcEEEENS_15AssertionResultES4_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %56, ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull @.str.17, ptr noundef nonnull align 8 dereferenceable(16) %58)
          to label %bb.hs unwind label %bb.hu

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #20
  %i.yd = load i8, ptr %56, align 8, !tbaa !90, !range !91, !noundef !92
  %i.ye = trunc nuw i8 %i.yd to i1
  br i1 %i.ye, label %bb.ie, label %bb.hv

bb.ht:                                            ; preds = %_ZN7testing7MessageD2Ev.exit588, %bb.gu
  %.pn251.pn.pn = phi { ptr, i32 } [ %.pn251.pn, %_ZN7testing7MessageD2Ev.exit588 ], [ %i.ve, %bb.gu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #20
  br label %bb.va

bb.hu:                                            ; preds = %bb.hr
  %i.yf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #20
  br label %bb.io

bb.hv:                                            ; preds = %bb.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.hw unwind label %bb.ia

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #20
  %i.yg = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !93 ; 2 uses
  %.not.i.i622 = icmp eq ptr %i.yh, null
  br i1 %.not.i.i622, label %_ZNK7testing15AssertionResult15failure_messageEv.exit623, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit623

_ZNK7testing15AssertionResult15failure_messageEv.exit623: ; preds = %bb.hx, %bb.hw
  %i.yj = phi ptr [ %i.yi, %bb.hx ], [ @.str.45, %bb.hw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %60, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 201, ptr noundef %i.yj)
          to label %bb.hy unwind label %bb.ib

bb.hy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit623
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.hz unwind label %bb.ic

bb.hz:                                            ; preds = %bb.hy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #20
  %i.yk = load ptr, ptr %59, align 8, !tbaa !95   ; 3 uses
  %.not.i.i624 = icmp eq ptr %i.yk, null
  br i1 %.not.i.i624, label %_ZN7testing7MessageD2Ev.exit626, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i625

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i625: ; preds = %bb.hz
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !28
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %i.yn = load ptr, ptr %i.ym, align 8
  call void %i.yn(ptr noundef nonnull align 8 dereferenceable(128) %i.yk) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit626

_ZN7testing7MessageD2Ev.exit626:                  ; preds = %bb.hz, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i625
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #20
  br label %bb.ie

bb.ia:                                            ; preds = %bb.hv
  %i.yo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit629

bb.ib:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit623
  %i.yp = landingpad { ptr, i32 }
          cleanup
  br label %bb.id

bb.ic:                                            ; preds = %bb.hy
  %i.yq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #20
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %.pn257 = phi { ptr, i32 } [ %i.yq, %bb.ic ], [ %i.yp, %bb.ib ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #20
  %i.yr = load ptr, ptr %59, align 8, !tbaa !95   ; 3 uses
  %.not.i.i627 = icmp eq ptr %i.yr, null
  br i1 %.not.i.i627, label %_ZN7testing7MessageD2Ev.exit629, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i628

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i628: ; preds = %bb.id
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !28
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %i.yu = load ptr, ptr %i.yt, align 8
  call void %i.yu(ptr noundef nonnull align 8 dereferenceable(128) %i.yr) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit629

_ZN7testing7MessageD2Ev.exit629:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i628, %bb.id, %bb.ia
  %.pn257.pn = phi { ptr, i32 } [ %i.yo, %bb.ia ], [ %.pn257, %bb.id ], [ %.pn257, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i628 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %56) #20
  br label %bb.io

bb.ie:                                            ; preds = %bb.hs, %_ZN7testing7MessageD2Ev.exit626
  %i.yv = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !93 ; 4 uses
  %.not.i.i630 = icmp eq ptr %i.yw, null
  br i1 %.not.i.i630, label %_ZN7testing15AssertionResultD2Ev.exit634, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !51 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yw, i64 16 ; 2 uses
  %i.yz = icmp eq ptr %i.yx, %i.yy
  br i1 %i.yz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i632, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i631

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i631: ; preds = %bb.if
  %i.za = load i64, ptr %i.yy, align 8, !tbaa !49
  %i.zb = add i64 %i.za, 1
  call void @_ZdlPvm(ptr noundef %i.yx, i64 noundef %i.zb) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i632

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i632: ; preds = %bb.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i631
  call void @_ZdlPvm(ptr noundef nonnull %i.yw, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit634

_ZN7testing15AssertionResultD2Ev.exit634:         ; preds = %bb.ie, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i632
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20
  %i.zc = load ptr, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 8
  %i.ze = atomicrmw sub ptr %i.zd, i32 2 acq_rel, align 4
  %.not.i635 = icmp eq i32 %i.ze, 2
  br i1 %.not.i635, label %bb.ig, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit637, !prof !99

bb.ig:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit634
  invoke void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.zc)
          to label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit637 unwind label %bb.ex

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit637: ; preds = %_ZN7testing15AssertionResultD2Ev.exit634, %bb.ig
  %i.zf = load i8, ptr %i.bb, align 1, !tbaa !49  ; 4 uses
  %i.zg = zext i8 %i.zf to i32
  store i32 %i.zg, ptr %i.ba, align 8, !tbaa !73
  %i.zh = load i8, ptr %i.be, align 2             ; 2 uses
  %i.zi = zext i8 %i.zf to i64                    ; 5 uses
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.zi
  store ptr %.04.lcssa.i, ptr %i.zj, align 8, !tbaa !75
  %i.zk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.zi
  store i8 %i.zh, ptr %i.zk, align 1, !tbaa !49
  %.018.i.i.i638 = zext i8 %i.zh to i64           ; 3 uses
  %.not.i.i.i639 = icmp eq i8 %i.zf, 0
  br i1 %.not.i.i.i639, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i646, label %.lr.ph.i.i.i640.preheader

.lr.ph.i.i.i640.preheader:                        ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit637
  %xtraiter1482 = and i64 %i.zi, 1
  %lcmp.mod1483.not = icmp eq i64 %xtraiter1482, 0
  br i1 %lcmp.mod1483.not, label %.lr.ph.i.i.i640.prol.loopexit, label %.lr.ph.i.i.i640.prol

.lr.ph.i.i.i640.prol:                             ; preds = %.lr.ph.i.i.i640.preheader
  %indvars.iv.next.i.i.i644.prol = add nsw i64 %i.zi, -1 ; 3 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 16
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.zl, i64 %.018.i.i.i638
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !60 ; 3 uses
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i644.prol
  store ptr %i.zn, ptr %i.zo, align 8, !tbaa !75
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zn, i64 14
  %i.zq = load i8, ptr %i.zp, align 1             ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i644.prol
  store i8 %i.zq, ptr %i.zr, align 2, !tbaa !49
  %.0.i.i.i645.prol = zext i8 %i.zq to i64        ; 2 uses
  br label %.lr.ph.i.i.i640.prol.loopexit

.lr.ph.i.i.i640.prol.loopexit:                    ; preds = %.lr.ph.i.i.i640.prol, %.lr.ph.i.i.i640.preheader
  %indvars.iv.i.i.i641.unr = phi i64 [ %i.zi, %.lr.ph.i.i.i640.preheader ], [ %indvars.iv.next.i.i.i644.prol, %.lr.ph.i.i.i640.prol ]
  %.021.i.i.i642.unr = phi i64 [ %.018.i.i.i638, %.lr.ph.i.i.i640.preheader ], [ %.0.i.i.i645.prol, %.lr.ph.i.i.i640.prol ]
  %.01619.i.i.i643.unr = phi ptr [ %.04.lcssa.i, %.lr.ph.i.i.i640.preheader ], [ %i.zn, %.lr.ph.i.i.i640.prol ]
  %.0.i.i.i645.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i640.preheader ], [ %.0.i.i.i645.prol, %.lr.ph.i.i.i640.prol ]
  %i.zs = icmp eq i8 %i.zf, 1
  br i1 %i.zs, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i646, label %.lr.ph.i.i.i640

.lr.ph.i.i.i640:                                  ; preds = %.lr.ph.i.i.i640.prol.loopexit, %.lr.ph.i.i.i640
  %indvars.iv.i.i.i641 = phi i64 [ %indvars.iv.next.i.i.i644.1, %.lr.ph.i.i.i640 ], [ %indvars.iv.i.i.i641.unr, %.lr.ph.i.i.i640.prol.loopexit ] ; 3 uses
  %.021.i.i.i642 = phi i64 [ %.0.i.i.i645.1, %.lr.ph.i.i.i640 ], [ %.021.i.i.i642.unr, %.lr.ph.i.i.i640.prol.loopexit ]
  %.01619.i.i.i643 = phi ptr [ %i.aac, %.lr.ph.i.i.i640 ], [ %.01619.i.i.i643.unr, %.lr.ph.i.i.i640.prol.loopexit ]
  %indvars.iv.next.i.i.i644 = add nsw i64 %indvars.iv.i.i.i641, -1 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %.01619.i.i.i643, i64 16
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.zt, i64 %.021.i.i.i642
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !60 ; 3 uses
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i644
  store ptr %i.zv, ptr %i.zw, align 8, !tbaa !75
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zv, i64 14
  %i.zy = load i8, ptr %i.zx, align 1             ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i644
  store i8 %i.zy, ptr %i.zz, align 1, !tbaa !49
  %.0.i.i.i645 = zext i8 %i.zy to i64
  %indvars.iv.next.i.i.i644.1 = add nsw i64 %indvars.iv.i.i.i641, -2 ; 3 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.aaa, i64 %.0.i.i.i645
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !60 ; 3 uses
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i644.1
  store ptr %i.aac, ptr %i.aad, align 8, !tbaa !75
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aac, i64 14
  %i.aaf = load i8, ptr %i.aae, align 1           ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i644.1
  store i8 %i.aaf, ptr %i.aag, align 1, !tbaa !49
  %.0.i.i.i645.1 = zext i8 %i.aaf to i64          ; 2 uses
  %i.aah = icmp sgt i64 %indvars.iv.i.i.i641, 2
  br i1 %i.aah, label %.lr.ph.i.i.i640, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i646, !llvm.loop !2

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i646: ; preds = %.lr.ph.i.i.i640.prol.loopexit, %.lr.ph.i.i.i640, %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit637
  %.0.lcssa.i.i.i647 = phi i64 [ %.018.i.i.i638, %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit637 ], [ %.0.i.i.i645.lcssa.unr, %.lr.ph.i.i.i640.prol.loopexit ], [ %.0.i.i.i645.1, %.lr.ph.i.i.i640 ]
  %i.aai = load ptr, ptr %i.bg, align 8, !tbaa !75
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 16
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.aaj, i64 %.0.lcssa.i.i.i647
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !60 ; 5 uses
  %i.aam = load i64, ptr %.04.lcssa.i, align 8, !tbaa !69
  %i.aan = load i64, ptr %i.aal, align 8, !tbaa !69 ; 3 uses
  %i.aao = sub i64 %i.aam, %i.aan
  store i64 %i.aao, ptr %3, align 8, !tbaa !77
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aal, i64 12
  %i.aaq = load i8, ptr %i.aap, align 4, !tbaa !65 ; 2 uses
  %i.aar = icmp eq i8 %i.aaq, 1
  br i1 %i.aar, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i646
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aal, i64 16
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !78
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aal, i64 24
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert.i.i655 = getelementptr inbounds nuw i8, ptr %i.aav, i64 12
  %.pre.i.i656 = load i8, ptr %.phi.trans.insert.i.i655, align 4, !tbaa !65
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i646
  %i.aaw = phi i8 [ %.pre.i.i656, %bb.ih ], [ %i.aaq, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i646 ]
  %.010.i.i648 = phi ptr [ %i.aav, %bb.ih ], [ %i.aal, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i646 ] ; 2 uses
  %.0.i.i649 = phi i64 [ %i.aat, %bb.ih ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i646 ]
  %i.aax = icmp ugt i8 %i.aaw, 5
  br i1 %i.aax, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.aay = getelementptr inbounds nuw i8, ptr %.010.i.i648, i64 13
  br label %bb.il

bb.ik:                                            ; preds = %bb.ii
  %i.aaz = getelementptr inbounds nuw i8, ptr %.010.i.i648, i64 16
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !80
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %.pn.i.i651 = phi ptr [ %i.aay, %bb.ij ], [ %i.aba, %bb.ik ]
  %.sroa.3.0.i.i652 = getelementptr inbounds nuw i8, ptr %.pn.i.i651, i64 %.0.i.i649
  store i64 %i.aan, ptr %4, align 8, !tbaa !40
  store ptr %.sroa.3.0.i.i652, ptr %.sroa.558.0..sroa_idx, align 8, !tbaa !98
  %i.abb = add i64 %i.aan, -2
  %i.abc = invoke { i64, ptr } @_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4ReadEmmRPNS1_7CordRepE(ptr noundef nonnull align 8 dereferenceable(120) %3, i64 noundef 2, i64 noundef %i.abb, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.im unwind label %bb.ip     ; 2 uses

bb.im:                                            ; preds = %bb.il
  %i.abd = extractvalue { i64, ptr } %i.abc, 0
  %i.abe = extractvalue { i64, ptr } %i.abc, 1
  store i64 %i.abd, ptr %4, align 8, !tbaa !40
  store ptr %i.abe, ptr %.sroa.558.0..sroa_idx, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #20
  store i64 0, ptr %62, align 8, !alias.scope !435
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9NeMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %61, ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.in unwind label %bb.iq

bb.in:                                            ; preds = %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #20
  %i.abf = load i8, ptr %61, align 8, !tbaa !90, !range !91, !noundef !92
  %i.abg = trunc nuw i8 %i.abf to i1
  br i1 %i.abg, label %.critedge363, label %bb.ir

bb.io:                                            ; preds = %_ZN7testing7MessageD2Ev.exit629, %bb.hu
  %.pn257.pn.pn = phi { ptr, i32 } [ %.pn257.pn, %_ZN7testing7MessageD2Ev.exit629 ], [ %i.yf, %bb.hu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20
  br label %bb.va

bb.ip:                                            ; preds = %bb.il
  %i.abh = landingpad { ptr, i32 }
          cleanup
  br label %bb.va

bb.iq:                                            ; preds = %bb.im
  %i.abi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #20
  br label %bb.jg

bb.ir:                                            ; preds = %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %63)
          to label %bb.is unwind label %bb.ix

bb.is:                                            ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #20
  %i.abj = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !93 ; 2 uses
  %.not.i.i658 = icmp eq ptr %i.abk, null
  br i1 %.not.i.i658, label %_ZNK7testing15AssertionResult15failure_messageEv.exit659, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit659

_ZNK7testing15AssertionResult15failure_messageEv.exit659: ; preds = %bb.it, %bb.is
  %i.abm = phi ptr [ %i.abl, %bb.it ], [ @.str.45, %bb.is ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %64, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 207, ptr noundef %i.abm)
          to label %bb.iu unwind label %bb.iy

bb.iu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit659
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef nonnull align 8 dereferenceable(8) %63)
          to label %bb.iv unwind label %bb.iz

bb.iv:                                            ; preds = %bb.iu
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %64) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #20
  %i.abn = load ptr, ptr %63, align 8, !tbaa !95  ; 3 uses
  %.not.i.i660 = icmp eq ptr %i.abn, null
  br i1 %.not.i.i660, label %_ZN7testing7MessageD2Ev.exit662, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i661

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i661: ; preds = %bb.iv
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !28
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8
  call void %i.abq(ptr noundef nonnull align 8 dereferenceable(128) %i.abn) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit662

_ZN7testing7MessageD2Ev.exit662:                  ; preds = %bb.iv, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i661
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #20
  %i.abr = load ptr, ptr %i.abj, align 8, !tbaa !93 ; 4 uses
  %.not.i.i663 = icmp eq ptr %i.abr, null
  br i1 %.not.i.i663, label %_ZN7testing15AssertionResultD2Ev.exit667, label %bb.iw

bb.iw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit662
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !51 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abr, i64 16 ; 2 uses
  %i.abu = icmp eq ptr %i.abs, %i.abt
  br i1 %i.abu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i665, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i664

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i664: ; preds = %bb.iw
  %i.abv = load i64, ptr %i.abt, align 8, !tbaa !49
  %i.abw = add i64 %i.abv, 1
  call void @_ZdlPvm(ptr noundef %i.abs, i64 noundef %i.abw) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i665

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i665: ; preds = %bb.iw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i664
  call void @_ZdlPvm(ptr noundef nonnull %i.abr, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit667

_ZN7testing15AssertionResultD2Ev.exit667:         ; preds = %_ZN7testing7MessageD2Ev.exit662, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i665
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #20
  br label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit1090

bb.ix:                                            ; preds = %bb.ir
  %i.abx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit670

bb.iy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit659
  %i.aby = landingpad { ptr, i32 }
          cleanup
  br label %bb.ja

bb.iz:                                            ; preds = %bb.iu
  %i.abz = landingpad { ptr, i32 }
          cleanup
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_132CordRepBtreeReaderTest_Read_Test8TestBodyEv:._crit_edge.i.i
bb.le:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i727
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahk, i64 16
  %i.ahr = load i64, ptr %i.ahq, align 8, !tbaa !78
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahk, i64 24
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert.i.i739 = getelementptr inbounds nuw i8, ptr %i.aht, i64 12
  %.pre.i.i740 = load i8, ptr %.phi.trans.insert.i.i739, align 4, !tbaa !65
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i727
  %i.ahu = phi i8 [ %.pre.i.i740, %bb.le ], [ %i.aho, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i727 ]
  %.010.i.i730 = phi ptr [ %i.aht, %bb.le ], [ %i.ahk, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i727 ] ; 2 uses
  %.0.i.i731 = phi i64 [ %i.ahr, %bb.le ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i727 ]
  %i.ahv = icmp ugt i8 %i.ahu, 5
  br i1 %i.ahv, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  %i.ahw = getelementptr inbounds nuw i8, ptr %.010.i.i730, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i732

bb.lh:                                            ; preds = %bb.lf
  %i.ahx = getelementptr inbounds nuw i8, ptr %.010.i.i730, i64 16
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !80
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i732

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i732: ; preds = %bb.lh, %bb.lg
  %.pn.i.i733 = phi ptr [ %i.ahw, %bb.lg ], [ %i.ahy, %bb.lh ]
  %.sroa.3.0.i.i734 = getelementptr inbounds nuw i8, ptr %.pn.i.i733, i64 %.0.i.i731
  br label %bb.li

bb.li:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i732, %bb.kx
  %.sroa.0.0.i735 = phi i64 [ %i.ahl, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i732 ], [ 0, %bb.kx ]
  %.sroa.3.0.i736 = phi ptr [ %.sroa.3.0.i.i734, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i732 ], [ null, %bb.kx ]
  store i64 %.sroa.0.0.i735, ptr %80, align 8
  %i.ahz = getelementptr inbounds nuw i8, ptr %80, i64 8
  store ptr %.sroa.3.0.i736, ptr %i.ahz, align 8
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPKcEEEclISt17basic_string_viewIcSt11char_traitsIcEEEENS_15AssertionResultES4_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %78, ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef nonnull @.str.17, ptr noundef nonnull align 8 dereferenceable(16) %80)
          to label %bb.lj unwind label %bb.ll

bb.lj:                                            ; preds = %bb.li
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #20
  %i.aia = load i8, ptr %78, align 8, !tbaa !90, !range !91, !noundef !92
  %i.aib = trunc nuw i8 %i.aia to i1
  br i1 %i.aib, label %bb.lv, label %bb.lm

bb.lk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit721, %bb.kl
  %.pn278.pn.pn = phi { ptr, i32 } [ %.pn278.pn, %_ZN7testing7MessageD2Ev.exit721 ], [ %i.afb, %bb.kl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #20
  br label %bb.va

bb.ll:                                            ; preds = %bb.li
  %i.aic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #20
  br label %bb.mf

bb.lm:                                            ; preds = %bb.lj
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %81)
          to label %bb.ln unwind label %bb.lr

bb.ln:                                            ; preds = %bb.lm
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #20
  %i.aid = getelementptr inbounds nuw i8, ptr %78, i64 8
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !93 ; 2 uses
  %.not.i.i755 = icmp eq ptr %i.aie, null
  br i1 %.not.i.i755, label %_ZNK7testing15AssertionResult15failure_messageEv.exit756, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit756

_ZNK7testing15AssertionResult15failure_messageEv.exit756: ; preds = %bb.lo, %bb.ln
  %i.aig = phi ptr [ %i.aif, %bb.lo ], [ @.str.45, %bb.ln ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %82, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 211, ptr noundef %i.aig)
          to label %bb.lp unwind label %bb.ls

bb.lp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit756
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %82, ptr noundef nonnull align 8 dereferenceable(8) %81)
          to label %bb.lq unwind label %bb.lt

bb.lq:                                            ; preds = %bb.lp
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %82) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #20
  %i.aih = load ptr, ptr %81, align 8, !tbaa !95  ; 3 uses
  %.not.i.i757 = icmp eq ptr %i.aih, null
  br i1 %.not.i.i757, label %_ZN7testing7MessageD2Ev.exit759, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i758

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i758: ; preds = %bb.lq
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !28
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 8
  %i.aik = load ptr, ptr %i.aij, align 8
  call void %i.aik(ptr noundef nonnull align 8 dereferenceable(128) %i.aih) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit759

_ZN7testing7MessageD2Ev.exit759:                  ; preds = %bb.lq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i758
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #20
  br label %bb.lv

bb.lr:                                            ; preds = %bb.lm
  %i.ail = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit762

bb.ls:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit756
  %i.aim = landingpad { ptr, i32 }
          cleanup
  br label %bb.lu

bb.lt:                                            ; preds = %bb.lp
  %i.ain = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %82) #20
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %.pn284 = phi { ptr, i32 } [ %i.ain, %bb.lt ], [ %i.aim, %bb.ls ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #20
  %i.aio = load ptr, ptr %81, align 8, !tbaa !95  ; 3 uses
  %.not.i.i760 = icmp eq ptr %i.aio, null
  br i1 %.not.i.i760, label %_ZN7testing7MessageD2Ev.exit762, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i761

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i761: ; preds = %bb.lu
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !28
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 8
  %i.air = load ptr, ptr %i.aiq, align 8
  call void %i.air(ptr noundef nonnull align 8 dereferenceable(128) %i.aio) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit762

_ZN7testing7MessageD2Ev.exit762:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i761, %bb.lu, %bb.lr
  %.pn284.pn = phi { ptr, i32 } [ %i.ail, %bb.lr ], [ %.pn284, %bb.lu ], [ %.pn284, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i761 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %78) #20
  br label %bb.mf

bb.lv:                                            ; preds = %bb.lj, %_ZN7testing7MessageD2Ev.exit759
  %i.ais = getelementptr inbounds nuw i8, ptr %78, i64 8
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !93 ; 4 uses
  %.not.i.i763 = icmp eq ptr %i.ait, null
  br i1 %.not.i.i763, label %_ZN7testing15AssertionResultD2Ev.exit767, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !51 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ait, i64 16 ; 2 uses
  %i.aiw = icmp eq ptr %i.aiu, %i.aiv
  br i1 %i.aiw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i765, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i764

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i764: ; preds = %bb.lw
  %i.aix = load i64, ptr %i.aiv, align 8, !tbaa !49
  %i.aiy = add i64 %i.aix, 1
  call void @_ZdlPvm(ptr noundef %i.aiu, i64 noundef %i.aiy) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i765

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i765: ; preds = %bb.lw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i764
  call void @_ZdlPvm(ptr noundef nonnull %i.ait, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit767

_ZN7testing15AssertionResultD2Ev.exit767:         ; preds = %bb.lv, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i765
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #20
  %i.aiz = load ptr, ptr %i.a, align 8, !tbaa !60 ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 8
  %i.ajb = atomicrmw sub ptr %i.aja, i32 2 acq_rel, align 4
  %.not.i768 = icmp eq i32 %i.ajb, 2
  br i1 %.not.i768, label %bb.lx, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit770, !prof !99

bb.lx:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit767
  invoke void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.aiz)
          to label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit770 unwind label %bb.ex

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit770: ; preds = %_ZN7testing15AssertionResultD2Ev.exit767, %bb.lx
  %i.ajc = load i8, ptr %i.bb, align 1, !tbaa !49 ; 4 uses
  %i.ajd = zext i8 %i.ajc to i32
  store i32 %i.ajd, ptr %i.ba, align 8, !tbaa !73
  %i.aje = load i8, ptr %i.be, align 2            ; 2 uses
  %i.ajf = zext i8 %i.ajc to i64                  ; 5 uses
  %i.ajg = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ajf
  store ptr %.04.lcssa.i, ptr %i.ajg, align 8, !tbaa !75
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ajf
  store i8 %i.aje, ptr %i.ajh, align 1, !tbaa !49
  %.018.i.i.i771 = zext i8 %i.aje to i64          ; 3 uses
  %.not.i.i.i772 = icmp eq i8 %i.ajc, 0
  br i1 %.not.i.i.i772, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i779, label %.lr.ph.i.i.i773.preheader

.lr.ph.i.i.i773.preheader:                        ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit770
  %xtraiter1484 = and i64 %i.ajf, 1
  %lcmp.mod1485.not = icmp eq i64 %xtraiter1484, 0
  br i1 %lcmp.mod1485.not, label %.lr.ph.i.i.i773.prol.loopexit, label %.lr.ph.i.i.i773.prol

.lr.ph.i.i.i773.prol:                             ; preds = %.lr.ph.i.i.i773.preheader
  %indvars.iv.next.i.i.i777.prol = add nsw i64 %i.ajf, -1 ; 3 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 16
  %i.ajj = getelementptr inbounds nuw [8 x i8], ptr %i.aji, i64 %.018.i.i.i771
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !60 ; 3 uses
  %i.ajl = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i777.prol
  store ptr %i.ajk, ptr %i.ajl, align 8, !tbaa !75
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajk, i64 14
  %i.ajn = load i8, ptr %i.ajm, align 1           ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i777.prol
  store i8 %i.ajn, ptr %i.ajo, align 2, !tbaa !49
  %.0.i.i.i778.prol = zext i8 %i.ajn to i64       ; 2 uses
  br label %.lr.ph.i.i.i773.prol.loopexit

.lr.ph.i.i.i773.prol.loopexit:                    ; preds = %.lr.ph.i.i.i773.prol, %.lr.ph.i.i.i773.preheader
  %indvars.iv.i.i.i774.unr = phi i64 [ %i.ajf, %.lr.ph.i.i.i773.preheader ], [ %indvars.iv.next.i.i.i777.prol, %.lr.ph.i.i.i773.prol ]
  %.021.i.i.i775.unr = phi i64 [ %.018.i.i.i771, %.lr.ph.i.i.i773.preheader ], [ %.0.i.i.i778.prol, %.lr.ph.i.i.i773.prol ]
  %.01619.i.i.i776.unr = phi ptr [ %.04.lcssa.i, %.lr.ph.i.i.i773.preheader ], [ %i.ajk, %.lr.ph.i.i.i773.prol ]
  %.0.i.i.i778.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i773.preheader ], [ %.0.i.i.i778.prol, %.lr.ph.i.i.i773.prol ]
  %i.ajp = icmp eq i8 %i.ajc, 1
  br i1 %i.ajp, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i779, label %.lr.ph.i.i.i773

.lr.ph.i.i.i773:                                  ; preds = %.lr.ph.i.i.i773.prol.loopexit, %.lr.ph.i.i.i773
  %indvars.iv.i.i.i774 = phi i64 [ %indvars.iv.next.i.i.i777.1, %.lr.ph.i.i.i773 ], [ %indvars.iv.i.i.i774.unr, %.lr.ph.i.i.i773.prol.loopexit ] ; 3 uses
  %.021.i.i.i775 = phi i64 [ %.0.i.i.i778.1, %.lr.ph.i.i.i773 ], [ %.021.i.i.i775.unr, %.lr.ph.i.i.i773.prol.loopexit ]
  %.01619.i.i.i776 = phi ptr [ %i.ajz, %.lr.ph.i.i.i773 ], [ %.01619.i.i.i776.unr, %.lr.ph.i.i.i773.prol.loopexit ]
  %indvars.iv.next.i.i.i777 = add nsw i64 %indvars.iv.i.i.i774, -1 ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %.01619.i.i.i776, i64 16
  %i.ajr = getelementptr inbounds nuw [8 x i8], ptr %i.ajq, i64 %.021.i.i.i775
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !60 ; 3 uses
  %i.ajt = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i777
  store ptr %i.ajs, ptr %i.ajt, align 8, !tbaa !75
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajs, i64 14
  %i.ajv = load i8, ptr %i.aju, align 1           ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i777
  store i8 %i.ajv, ptr %i.ajw, align 1, !tbaa !49
  %.0.i.i.i778 = zext i8 %i.ajv to i64
  %indvars.iv.next.i.i.i777.1 = add nsw i64 %indvars.iv.i.i.i774, -2 ; 3 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajs, i64 16
  %i.ajy = getelementptr inbounds nuw [8 x i8], ptr %i.ajx, i64 %.0.i.i.i778
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !60 ; 3 uses
  %i.aka = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i777.1
  store ptr %i.ajz, ptr %i.aka, align 8, !tbaa !75
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajz, i64 14
  %i.akc = load i8, ptr %i.akb, align 1           ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i777.1
  store i8 %i.akc, ptr %i.akd, align 1, !tbaa !49
  %.0.i.i.i778.1 = zext i8 %i.akc to i64          ; 2 uses
  %i.ake = icmp sgt i64 %indvars.iv.i.i.i774, 2
  br i1 %i.ake, label %.lr.ph.i.i.i773, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i779, !llvm.loop !2

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i779: ; preds = %.lr.ph.i.i.i773.prol.loopexit, %.lr.ph.i.i.i773, %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit770
  %.0.lcssa.i.i.i780 = phi i64 [ %.018.i.i.i771, %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit770 ], [ %.0.i.i.i778.lcssa.unr, %.lr.ph.i.i.i773.prol.loopexit ], [ %.0.i.i.i778.1, %.lr.ph.i.i.i773 ]
  %i.akf = load ptr, ptr %i.bg, align 8, !tbaa !75
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 16
  %i.akh = getelementptr inbounds nuw [8 x i8], ptr %i.akg, i64 %.0.lcssa.i.i.i780
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !60 ; 5 uses
  %i.akj = load i64, ptr %.04.lcssa.i, align 8, !tbaa !69
  %i.akk = load i64, ptr %i.aki, align 8, !tbaa !69 ; 2 uses
  %i.akl = sub i64 %i.akj, %i.akk
  store i64 %i.akl, ptr %3, align 8, !tbaa !77
  %i.akm = getelementptr inbounds nuw i8, ptr %i.aki, i64 12
  %i.akn = load i8, ptr %i.akm, align 4, !tbaa !65 ; 2 uses
  %i.ako = icmp eq i8 %i.akn, 1
  br i1 %i.ako, label %bb.ly, label %bb.lz

bb.ly:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i779
  %i.akp = getelementptr inbounds nuw i8, ptr %i.aki, i64 16
  %i.akq = load i64, ptr %i.akp, align 8, !tbaa !78
  %i.akr = getelementptr inbounds nuw i8, ptr %i.aki, i64 24
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert.i.i788 = getelementptr inbounds nuw i8, ptr %i.aks, i64 12
  %.pre.i.i789 = load i8, ptr %.phi.trans.insert.i.i788, align 4, !tbaa !65
  br label %bb.lz

bb.lz:                                            ; preds = %bb.ly, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i779
  %i.akt = phi i8 [ %.pre.i.i789, %bb.ly ], [ %i.akn, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i779 ]
  %.010.i.i781 = phi ptr [ %i.aks, %bb.ly ], [ %i.aki, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i779 ] ; 2 uses
  %.0.i.i782 = phi i64 [ %i.akq, %bb.ly ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i779 ]
  %i.aku = icmp ugt i8 %i.akt, 5
  br i1 %i.aku, label %bb.ma, label %bb.mb

bb.ma:                                            ; preds = %bb.lz
  %i.akv = getelementptr inbounds nuw i8, ptr %.010.i.i781, i64 13
  br label %bb.mc

bb.mb:                                            ; preds = %bb.lz
  %i.akw = getelementptr inbounds nuw i8, ptr %.010.i.i781, i64 16
  %i.akx = load ptr, ptr %i.akw, align 8, !tbaa !80
  br label %bb.mc

bb.mc:                                            ; preds = %bb.mb, %bb.ma
  %.pn.i.i784 = phi ptr [ %i.akv, %bb.ma ], [ %i.akx, %bb.mb ]
  %.sroa.3.0.i.i785 = getelementptr inbounds nuw i8, ptr %.pn.i.i784, i64 %.0.i.i782
  store i64 %i.akk, ptr %4, align 8, !tbaa !40
  store ptr %.sroa.3.0.i.i785, ptr %.sroa.558.0..sroa_idx, align 8, !tbaa !98
  %i.aky = invoke { i64, ptr } @_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4ReadEmmRPNS1_7CordRepE(ptr noundef nonnull align 8 dereferenceable(120) %3, i64 noundef 3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.md unwind label %bb.mg     ; 2 uses

bb.md:                                            ; preds = %bb.mc
  %i.akz = extractvalue { i64, ptr } %i.aky, 0
  %i.ala = extractvalue { i64, ptr } %i.aky, 1
  store i64 %i.akz, ptr %4, align 8, !tbaa !40
  store ptr %i.ala, ptr %.sroa.558.0..sroa_idx, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #20
  store i64 0, ptr %84, align 8, !alias.scope !437
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9NeMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %83, ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.me unwind label %bb.mh

bb.me:                                            ; preds = %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20
  %i.alb = load i8, ptr %83, align 8, !tbaa !90, !range !91, !noundef !92
  %i.alc = trunc nuw i8 %i.alb to i1
  br i1 %i.alc, label %.critedge365, label %bb.mi

bb.mf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit762, %bb.ll
  %.pn284.pn.pn = phi { ptr, i32 } [ %.pn284.pn, %_ZN7testing7MessageD2Ev.exit762 ], [ %i.aic, %bb.ll ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #20
  br label %bb.va

bb.mg:                                            ; preds = %bb.mc
  %i.ald = landingpad { ptr, i32 }
          cleanup
  br label %bb.va

bb.mh:                                            ; preds = %bb.md
  %i.ale = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20
  br label %bb.mx

bb.mi:                                            ; preds = %bb.me
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %85)
          to label %bb.mj unwind label %bb.mo

bb.mj:                                            ; preds = %bb.mi
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #20
  %i.alf = getelementptr inbounds nuw i8, ptr %83, i64 8 ; 2 uses
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !93 ; 2 uses
  %.not.i.i791 = icmp eq ptr %i.alg, null
  br i1 %.not.i.i791, label %_ZNK7testing15AssertionResult15failure_messageEv.exit792, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %i.alh = load ptr, ptr %i.alg, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit792

_ZNK7testing15AssertionResult15failure_messageEv.exit792: ; preds = %bb.mk, %bb.mj
  %i.ali = phi ptr [ %i.alh, %bb.mk ], [ @.str.45, %bb.mj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %86, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 217, ptr noundef %i.ali)
          to label %bb.ml unwind label %bb.mp

bb.ml:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit792
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef nonnull align 8 dereferenceable(8) %85)
          to label %bb.mm unwind label %bb.mq

bb.mm:                                            ; preds = %bb.ml
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %86) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20
  %i.alj = load ptr, ptr %85, align 8, !tbaa !95  ; 3 uses
  %.not.i.i793 = icmp eq ptr %i.alj, null
  br i1 %.not.i.i793, label %_ZN7testing7MessageD2Ev.exit795, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i794

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i794: ; preds = %bb.mm
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !28
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 8
  %i.alm = load ptr, ptr %i.all, align 8
  call void %i.alm(ptr noundef nonnull align 8 dereferenceable(128) %i.alj) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit795

_ZN7testing7MessageD2Ev.exit795:                  ; preds = %bb.mm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i794
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #20
  %i.aln = load ptr, ptr %i.alf, align 8, !tbaa !93 ; 4 uses
  %.not.i.i796 = icmp eq ptr %i.aln, null
  br i1 %.not.i.i796, label %_ZN7testing15AssertionResultD2Ev.exit800, label %bb.mn

bb.mn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit795
  %i.alo = load ptr, ptr %i.aln, align 8, !tbaa !51 ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.aln, i64 16 ; 2 uses
  %i.alq = icmp eq ptr %i.alo, %i.alp
  br i1 %i.alq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i798, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i797

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i797: ; preds = %bb.mn
  %i.alr = load i64, ptr %i.alp, align 8, !tbaa !49
  %i.als = add i64 %i.alr, 1
  call void @_ZdlPvm(ptr noundef %i.alo, i64 noundef %i.als) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i798

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i798: ; preds = %bb.mn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i797
  call void @_ZdlPvm(ptr noundef nonnull %i.aln, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit800

_ZN7testing15AssertionResultD2Ev.exit800:         ; preds = %_ZN7testing7MessageD2Ev.exit795, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i798
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #20
  br label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit1090

bb.mo:                                            ; preds = %bb.mi
  %i.alt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit803

bb.mp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit792
  %i.alu = landingpad { ptr, i32 }
          cleanup
  br label %bb.mr

bb.mq:                                            ; preds = %bb.ml
  %i.alv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %86) #20
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_132CordRepBtreeReaderTest_Read_Test8TestBodyEv:._crit_edge.i.i
bb.ov:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i860
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arg, i64 16
  %i.arn = load i64, ptr %i.arm, align 8, !tbaa !78
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arg, i64 24
  %i.arp = load ptr, ptr %i.aro, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert.i.i872 = getelementptr inbounds nuw i8, ptr %i.arp, i64 12
  %.pre.i.i873 = load i8, ptr %.phi.trans.insert.i.i872, align 4, !tbaa !65
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i860
  %i.arq = phi i8 [ %.pre.i.i873, %bb.ov ], [ %i.ark, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i860 ]
  %.010.i.i863 = phi ptr [ %i.arp, %bb.ov ], [ %i.arg, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i860 ] ; 2 uses
  %.0.i.i864 = phi i64 [ %i.arn, %bb.ov ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i860 ]
  %i.arr = icmp ugt i8 %i.arq, 5
  br i1 %i.arr, label %bb.ox, label %bb.oy

bb.ox:                                            ; preds = %bb.ow
  %i.ars = getelementptr inbounds nuw i8, ptr %.010.i.i863, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i865

bb.oy:                                            ; preds = %bb.ow
  %i.art = getelementptr inbounds nuw i8, ptr %.010.i.i863, i64 16
  %i.aru = load ptr, ptr %i.art, align 8, !tbaa !80
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i865

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i865: ; preds = %bb.oy, %bb.ox
  %.pn.i.i866 = phi ptr [ %i.ars, %bb.ox ], [ %i.aru, %bb.oy ]
  %.sroa.3.0.i.i867 = getelementptr inbounds nuw i8, ptr %.pn.i.i866, i64 %.0.i.i864
  br label %bb.oz

bb.oz:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i865, %bb.oo
  %.sroa.0.0.i868 = phi i64 [ %i.arh, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i865 ], [ 0, %bb.oo ]
  %.sroa.3.0.i869 = phi ptr [ %.sroa.3.0.i.i867, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i865 ], [ null, %bb.oo ]
  store i64 %.sroa.0.0.i868, ptr %102, align 8
  %i.arv = getelementptr inbounds nuw i8, ptr %102, i64 8
  store ptr %.sroa.3.0.i869, ptr %i.arv, align 8
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPKcEEEclISt17basic_string_viewIcSt11char_traitsIcEEEENS_15AssertionResultES4_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %100, ptr noundef nonnull align 8 dereferenceable(8) %101, ptr noundef nonnull @.str.17, ptr noundef nonnull align 8 dereferenceable(16) %102)
          to label %bb.pa unwind label %bb.pc

bb.pa:                                            ; preds = %bb.oz
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #20
  %i.arw = load i8, ptr %100, align 8, !tbaa !90, !range !91, !noundef !92
  %i.arx = trunc nuw i8 %i.arw to i1
  br i1 %i.arx, label %bb.pm, label %bb.pd

bb.pb:                                            ; preds = %_ZN7testing7MessageD2Ev.exit854, %bb.oc
  %.pn305.pn.pn = phi { ptr, i32 } [ %.pn305.pn, %_ZN7testing7MessageD2Ev.exit854 ], [ %i.aox, %bb.oc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #20
  br label %bb.va

bb.pc:                                            ; preds = %bb.oz
  %i.ary = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #20
  br label %bb.pw

bb.pd:                                            ; preds = %bb.pa
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %103)
          to label %bb.pe unwind label %bb.pi

bb.pe:                                            ; preds = %bb.pd
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #20
  %i.arz = getelementptr inbounds nuw i8, ptr %100, i64 8
  %i.asa = load ptr, ptr %i.arz, align 8, !tbaa !93 ; 2 uses
  %.not.i.i888 = icmp eq ptr %i.asa, null
  br i1 %.not.i.i888, label %_ZNK7testing15AssertionResult15failure_messageEv.exit889, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.asb = load ptr, ptr %i.asa, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit889

_ZNK7testing15AssertionResult15failure_messageEv.exit889: ; preds = %bb.pf, %bb.pe
  %i.asc = phi ptr [ %i.asb, %bb.pf ], [ @.str.45, %bb.pe ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %104, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 221, ptr noundef %i.asc)
          to label %bb.pg unwind label %bb.pj

bb.pg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit889
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %104, ptr noundef nonnull align 8 dereferenceable(8) %103)
          to label %bb.ph unwind label %bb.pk

bb.ph:                                            ; preds = %bb.pg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %104) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #20
  %i.asd = load ptr, ptr %103, align 8, !tbaa !95 ; 3 uses
  %.not.i.i890 = icmp eq ptr %i.asd, null
  br i1 %.not.i.i890, label %_ZN7testing7MessageD2Ev.exit892, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i891

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i891: ; preds = %bb.ph
  %i.ase = load ptr, ptr %i.asd, align 8, !tbaa !28
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 8
  %i.asg = load ptr, ptr %i.asf, align 8
  call void %i.asg(ptr noundef nonnull align 8 dereferenceable(128) %i.asd) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit892

_ZN7testing7MessageD2Ev.exit892:                  ; preds = %bb.ph, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i891
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #20
  br label %bb.pm

bb.pi:                                            ; preds = %bb.pd
  %i.ash = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit895

bb.pj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit889
  %i.asi = landingpad { ptr, i32 }
          cleanup
  br label %bb.pl

bb.pk:                                            ; preds = %bb.pg
  %i.asj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %104) #20
  br label %bb.pl

bb.pl:                                            ; preds = %bb.pk, %bb.pj
  %.pn311 = phi { ptr, i32 } [ %i.asj, %bb.pk ], [ %i.asi, %bb.pj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #20
  %i.ask = load ptr, ptr %103, align 8, !tbaa !95 ; 3 uses
  %.not.i.i893 = icmp eq ptr %i.ask, null
  br i1 %.not.i.i893, label %_ZN7testing7MessageD2Ev.exit895, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i894

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i894: ; preds = %bb.pl
  %i.asl = load ptr, ptr %i.ask, align 8, !tbaa !28
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asl, i64 8
  %i.asn = load ptr, ptr %i.asm, align 8
  call void %i.asn(ptr noundef nonnull align 8 dereferenceable(128) %i.ask) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit895

_ZN7testing7MessageD2Ev.exit895:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i894, %bb.pl, %bb.pi
  %.pn311.pn = phi { ptr, i32 } [ %i.ash, %bb.pi ], [ %.pn311, %bb.pl ], [ %.pn311, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i894 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %100) #20
  br label %bb.pw

bb.pm:                                            ; preds = %bb.pa, %_ZN7testing7MessageD2Ev.exit892
  %i.aso = getelementptr inbounds nuw i8, ptr %100, i64 8
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !93 ; 4 uses
  %.not.i.i896 = icmp eq ptr %i.asp, null
  br i1 %.not.i.i896, label %_ZN7testing15AssertionResultD2Ev.exit900, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.asq = load ptr, ptr %i.asp, align 8, !tbaa !51 ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asp, i64 16 ; 2 uses
  %i.ass = icmp eq ptr %i.asq, %i.asr
  br i1 %i.ass, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i898, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i897

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i897: ; preds = %bb.pn
  %i.ast = load i64, ptr %i.asr, align 8, !tbaa !49
  %i.asu = add i64 %i.ast, 1
  call void @_ZdlPvm(ptr noundef %i.asq, i64 noundef %i.asu) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i898

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i898: ; preds = %bb.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i897
  call void @_ZdlPvm(ptr noundef nonnull %i.asp, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit900

_ZN7testing15AssertionResultD2Ev.exit900:         ; preds = %bb.pm, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i898
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #20
  %i.asv = load ptr, ptr %i.a, align 8, !tbaa !60 ; 2 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 8
  %i.asx = atomicrmw sub ptr %i.asw, i32 2 acq_rel, align 4
  %.not.i901 = icmp eq i32 %i.asx, 2
  br i1 %.not.i901, label %bb.po, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit903, !prof !99

bb.po:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit900
  invoke void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.asv)
          to label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit903 unwind label %bb.ex

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit903: ; preds = %_ZN7testing15AssertionResultD2Ev.exit900, %bb.po
  %i.asy = load i8, ptr %i.bb, align 1, !tbaa !49 ; 4 uses
  %i.asz = zext i8 %i.asy to i32
  store i32 %i.asz, ptr %i.ba, align 8, !tbaa !73
  %i.ata = load i8, ptr %i.be, align 2            ; 2 uses
  %i.atb = zext i8 %i.asy to i64                  ; 5 uses
  %i.atc = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.atb
  store ptr %.04.lcssa.i, ptr %i.atc, align 8, !tbaa !75
  %i.atd = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.atb
  store i8 %i.ata, ptr %i.atd, align 1, !tbaa !49
  %.018.i.i.i904 = zext i8 %i.ata to i64          ; 3 uses
  %.not.i.i.i905 = icmp eq i8 %i.asy, 0
  br i1 %.not.i.i.i905, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i912, label %.lr.ph.i.i.i906.preheader

.lr.ph.i.i.i906.preheader:                        ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit903
  %xtraiter1486 = and i64 %i.atb, 1
  %lcmp.mod1487.not = icmp eq i64 %xtraiter1486, 0
  br i1 %lcmp.mod1487.not, label %.lr.ph.i.i.i906.prol.loopexit, label %.lr.ph.i.i.i906.prol

.lr.ph.i.i.i906.prol:                             ; preds = %.lr.ph.i.i.i906.preheader
  %indvars.iv.next.i.i.i910.prol = add nsw i64 %i.atb, -1 ; 3 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 16
  %i.atf = getelementptr inbounds nuw [8 x i8], ptr %i.ate, i64 %.018.i.i.i904
  %i.atg = load ptr, ptr %i.atf, align 8, !tbaa !60 ; 3 uses
  %i.ath = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i910.prol
  store ptr %i.atg, ptr %i.ath, align 8, !tbaa !75
  %i.ati = getelementptr inbounds nuw i8, ptr %i.atg, i64 14
  %i.atj = load i8, ptr %i.ati, align 1           ; 2 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i910.prol
  store i8 %i.atj, ptr %i.atk, align 2, !tbaa !49
  %.0.i.i.i911.prol = zext i8 %i.atj to i64       ; 2 uses
  br label %.lr.ph.i.i.i906.prol.loopexit

.lr.ph.i.i.i906.prol.loopexit:                    ; preds = %.lr.ph.i.i.i906.prol, %.lr.ph.i.i.i906.preheader
  %indvars.iv.i.i.i907.unr = phi i64 [ %i.atb, %.lr.ph.i.i.i906.preheader ], [ %indvars.iv.next.i.i.i910.prol, %.lr.ph.i.i.i906.prol ]
  %.021.i.i.i908.unr = phi i64 [ %.018.i.i.i904, %.lr.ph.i.i.i906.preheader ], [ %.0.i.i.i911.prol, %.lr.ph.i.i.i906.prol ]
  %.01619.i.i.i909.unr = phi ptr [ %.04.lcssa.i, %.lr.ph.i.i.i906.preheader ], [ %i.atg, %.lr.ph.i.i.i906.prol ]
  %.0.i.i.i911.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i906.preheader ], [ %.0.i.i.i911.prol, %.lr.ph.i.i.i906.prol ]
  %i.atl = icmp eq i8 %i.asy, 1
  br i1 %i.atl, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i912, label %.lr.ph.i.i.i906

.lr.ph.i.i.i906:                                  ; preds = %.lr.ph.i.i.i906.prol.loopexit, %.lr.ph.i.i.i906
  %indvars.iv.i.i.i907 = phi i64 [ %indvars.iv.next.i.i.i910.1, %.lr.ph.i.i.i906 ], [ %indvars.iv.i.i.i907.unr, %.lr.ph.i.i.i906.prol.loopexit ] ; 3 uses
  %.021.i.i.i908 = phi i64 [ %.0.i.i.i911.1, %.lr.ph.i.i.i906 ], [ %.021.i.i.i908.unr, %.lr.ph.i.i.i906.prol.loopexit ]
  %.01619.i.i.i909 = phi ptr [ %i.atv, %.lr.ph.i.i.i906 ], [ %.01619.i.i.i909.unr, %.lr.ph.i.i.i906.prol.loopexit ]
  %indvars.iv.next.i.i.i910 = add nsw i64 %indvars.iv.i.i.i907, -1 ; 2 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %.01619.i.i.i909, i64 16
  %i.atn = getelementptr inbounds nuw [8 x i8], ptr %i.atm, i64 %.021.i.i.i908
  %i.ato = load ptr, ptr %i.atn, align 8, !tbaa !60 ; 3 uses
  %i.atp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i910
  store ptr %i.ato, ptr %i.atp, align 8, !tbaa !75
  %i.atq = getelementptr inbounds nuw i8, ptr %i.ato, i64 14
  %i.atr = load i8, ptr %i.atq, align 1           ; 2 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i910
  store i8 %i.atr, ptr %i.ats, align 1, !tbaa !49
  %.0.i.i.i911 = zext i8 %i.atr to i64
  %indvars.iv.next.i.i.i910.1 = add nsw i64 %indvars.iv.i.i.i907, -2 ; 3 uses
  %i.att = getelementptr inbounds nuw i8, ptr %i.ato, i64 16
  %i.atu = getelementptr inbounds nuw [8 x i8], ptr %i.att, i64 %.0.i.i.i911
  %i.atv = load ptr, ptr %i.atu, align 8, !tbaa !60 ; 3 uses
  %i.atw = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i910.1
  store ptr %i.atv, ptr %i.atw, align 8, !tbaa !75
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atv, i64 14
  %i.aty = load i8, ptr %i.atx, align 1           ; 2 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i910.1
  store i8 %i.aty, ptr %i.atz, align 1, !tbaa !49
  %.0.i.i.i911.1 = zext i8 %i.aty to i64          ; 2 uses
  %i.aua = icmp sgt i64 %indvars.iv.i.i.i907, 2
  br i1 %i.aua, label %.lr.ph.i.i.i906, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i912, !llvm.loop !2

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i912: ; preds = %.lr.ph.i.i.i906.prol.loopexit, %.lr.ph.i.i.i906, %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit903
  %.0.lcssa.i.i.i913 = phi i64 [ %.018.i.i.i904, %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit903 ], [ %.0.i.i.i911.lcssa.unr, %.lr.ph.i.i.i906.prol.loopexit ], [ %.0.i.i.i911.1, %.lr.ph.i.i.i906 ]
  %i.aub = load ptr, ptr %i.bg, align 8, !tbaa !75
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aub, i64 16
  %i.aud = getelementptr inbounds nuw [8 x i8], ptr %i.auc, i64 %.0.lcssa.i.i.i913
  %i.aue = load ptr, ptr %i.aud, align 8, !tbaa !60 ; 5 uses
  %i.auf = load i64, ptr %.04.lcssa.i, align 8, !tbaa !69
  %i.aug = load i64, ptr %i.aue, align 8, !tbaa !69 ; 3 uses
  %i.auh = sub i64 %i.auf, %i.aug
  store i64 %i.auh, ptr %3, align 8, !tbaa !77
  %i.aui = getelementptr inbounds nuw i8, ptr %i.aue, i64 12
  %i.auj = load i8, ptr %i.aui, align 4, !tbaa !65 ; 2 uses
  %i.auk = icmp eq i8 %i.auj, 1
  br i1 %i.auk, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i912
  %i.aul = getelementptr inbounds nuw i8, ptr %i.aue, i64 16
  %i.aum = load i64, ptr %i.aul, align 8, !tbaa !78
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aue, i64 24
  %i.auo = load ptr, ptr %i.aun, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert.i.i921 = getelementptr inbounds nuw i8, ptr %i.auo, i64 12
  %.pre.i.i922 = load i8, ptr %.phi.trans.insert.i.i921, align 4, !tbaa !65
  br label %bb.pq

bb.pq:                                            ; preds = %bb.pp, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i912
  %i.aup = phi i8 [ %.pre.i.i922, %bb.pp ], [ %i.auj, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i912 ]
  %.010.i.i914 = phi ptr [ %i.auo, %bb.pp ], [ %i.aue, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i912 ] ; 2 uses
  %.0.i.i915 = phi i64 [ %i.aum, %bb.pp ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i912 ]
  %i.auq = icmp ugt i8 %i.aup, 5
  br i1 %i.auq, label %bb.pr, label %bb.ps

bb.pr:                                            ; preds = %bb.pq
  %i.aur = getelementptr inbounds nuw i8, ptr %.010.i.i914, i64 13
  br label %bb.pt

bb.ps:                                            ; preds = %bb.pq
  %i.aus = getelementptr inbounds nuw i8, ptr %.010.i.i914, i64 16
  %i.aut = load ptr, ptr %i.aus, align 8, !tbaa !80
  br label %bb.pt

bb.pt:                                            ; preds = %bb.ps, %bb.pr
  %.pn.i.i917 = phi ptr [ %i.aur, %bb.pr ], [ %i.aut, %bb.ps ]
  %.sroa.3.0.i.i918 = getelementptr inbounds nuw i8, ptr %.pn.i.i917, i64 %.0.i.i915
  store i64 %i.aug, ptr %4, align 8, !tbaa !40
  store ptr %.sroa.3.0.i.i918, ptr %.sroa.558.0..sroa_idx, align 8, !tbaa !98
  %i.auu = add i64 %i.aug, -2
  %i.auv = invoke { i64, ptr } @_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4ReadEmmRPNS1_7CordRepE(ptr noundef nonnull align 8 dereferenceable(120) %3, i64 noundef 12, i64 noundef %i.auu, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.pu unwind label %bb.px     ; 2 uses

bb.pu:                                            ; preds = %bb.pt
  %i.auw = extractvalue { i64, ptr } %i.auv, 0
  %i.aux = extractvalue { i64, ptr } %i.auv, 1
  store i64 %i.auw, ptr %4, align 8, !tbaa !40
  store ptr %i.aux, ptr %.sroa.558.0..sroa_idx, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #20
  store i64 0, ptr %106, align 8, !alias.scope !439
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9NeMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %105, ptr noundef nonnull align 8 dereferenceable(8) %106, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.pv unwind label %bb.py

bb.pv:                                            ; preds = %bb.pu
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #20
  %i.auy = load i8, ptr %105, align 8, !tbaa !90, !range !91, !noundef !92
  %i.auz = trunc nuw i8 %i.auy to i1
  br i1 %i.auz, label %.critedge367, label %bb.pz

bb.pw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit895, %bb.pc
  %.pn311.pn.pn = phi { ptr, i32 } [ %.pn311.pn, %_ZN7testing7MessageD2Ev.exit895 ], [ %i.ary, %bb.pc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #20
  br label %bb.va

bb.px:                                            ; preds = %bb.pt
  %i.ava = landingpad { ptr, i32 }
          cleanup
  br label %bb.va

bb.py:                                            ; preds = %bb.pu
  %i.avb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #20
  br label %bb.qo

bb.pz:                                            ; preds = %bb.pv
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %107)
          to label %bb.qa unwind label %bb.qf

bb.qa:                                            ; preds = %bb.pz
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #20
  %i.avc = getelementptr inbounds nuw i8, ptr %105, i64 8 ; 2 uses
  %i.avd = load ptr, ptr %i.avc, align 8, !tbaa !93 ; 2 uses
  %.not.i.i924 = icmp eq ptr %i.avd, null
  br i1 %.not.i.i924, label %_ZNK7testing15AssertionResult15failure_messageEv.exit925, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  %i.ave = load ptr, ptr %i.avd, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit925

_ZNK7testing15AssertionResult15failure_messageEv.exit925: ; preds = %bb.qb, %bb.qa
  %i.avf = phi ptr [ %i.ave, %bb.qb ], [ @.str.45, %bb.qa ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %108, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 227, ptr noundef %i.avf)
          to label %bb.qc unwind label %bb.qg

bb.qc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit925
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull align 8 dereferenceable(8) %107)
          to label %bb.qd unwind label %bb.qh

bb.qd:                                            ; preds = %bb.qc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %108) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #20
  %i.avg = load ptr, ptr %107, align 8, !tbaa !95 ; 3 uses
  %.not.i.i926 = icmp eq ptr %i.avg, null
  br i1 %.not.i.i926, label %_ZN7testing7MessageD2Ev.exit928, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i927

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i927: ; preds = %bb.qd
  %i.avh = load ptr, ptr %i.avg, align 8, !tbaa !28
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 8
  %i.avj = load ptr, ptr %i.avi, align 8
  call void %i.avj(ptr noundef nonnull align 8 dereferenceable(128) %i.avg) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit928

_ZN7testing7MessageD2Ev.exit928:                  ; preds = %bb.qd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i927
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #20
  %i.avk = load ptr, ptr %i.avc, align 8, !tbaa !93 ; 4 uses
  %.not.i.i929 = icmp eq ptr %i.avk, null
  br i1 %.not.i.i929, label %_ZN7testing15AssertionResultD2Ev.exit933, label %bb.qe

bb.qe:                                            ; preds = %_ZN7testing7MessageD2Ev.exit928
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !51 ; 2 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avk, i64 16 ; 2 uses
  %i.avn = icmp eq ptr %i.avl, %i.avm
  br i1 %i.avn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i931, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i930

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i930: ; preds = %bb.qe
  %i.avo = load i64, ptr %i.avm, align 8, !tbaa !49
  %i.avp = add i64 %i.avo, 1
  call void @_ZdlPvm(ptr noundef %i.avl, i64 noundef %i.avp) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i931

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i931: ; preds = %bb.qe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i930
  call void @_ZdlPvm(ptr noundef nonnull %i.avk, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit933

_ZN7testing15AssertionResultD2Ev.exit933:         ; preds = %_ZN7testing7MessageD2Ev.exit928, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i931
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #20
  br label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit1090

bb.qf:                                            ; preds = %bb.pz
  %i.avq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit936

bb.qg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit925
  %i.avr = landingpad { ptr, i32 }
          cleanup
  br label %bb.qi

bb.qh:                                            ; preds = %bb.qc
  %i.avs = landingpad { ptr, i32 }
          cleanup
end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_132CordRepBtreeReaderTest_Read_Test8TestBodyEv:._crit_edge.i.i
_ZN7testing7MessageD2Ev.exit974:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i973, %bb.rn, %bb.rk
  %.pn326.pn = phi { ptr, i32 } [ %i.ayd, %bb.rk ], [ %.pn326, %bb.rn ], [ %.pn326, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i973 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %114) #20
  br label %bb.rs

bb.ro:                                            ; preds = %bb.rc, %_ZN7testing7MessageD2Ev.exit971
  %i.ayk = getelementptr inbounds nuw i8, ptr %114, i64 8
  %i.ayl = load ptr, ptr %i.ayk, align 8, !tbaa !93 ; 4 uses
  %.not.i.i975 = icmp eq ptr %i.ayl, null
  br i1 %.not.i.i975, label %bb.rq, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.aym = load ptr, ptr %i.ayl, align 8, !tbaa !51 ; 2 uses
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.ayl, i64 16 ; 2 uses
  %i.ayo = icmp eq ptr %i.aym, %i.ayn
  br i1 %i.ayo, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i977, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i976

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i976: ; preds = %bb.rp
  %i.ayp = load i64, ptr %i.ayn, align 8, !tbaa !49
  %i.ayq = add i64 %i.ayp, 1
  call void @_ZdlPvm(ptr noundef %i.aym, i64 noundef %i.ayq) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i977

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i977: ; preds = %bb.rp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i976
  call void @_ZdlPvm(ptr noundef nonnull %i.ayl, i64 noundef 32) #22
  br label %bb.rq

bb.rq:                                            ; preds = %bb.ro, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i977
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #20
  store i32 0, ptr %119, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.ayr = load i64, ptr %3, align 8, !tbaa !77
  store i64 %i.ayr, ptr %i.g, align 8, !tbaa !40
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIjEEEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %118, ptr noundef nonnull align 4 dereferenceable(4) %119, ptr noundef nonnull @.str.16, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.rr unwind label %bb.rt

bb.rr:                                            ; preds = %bb.rq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #20
  %i.ays = load i8, ptr %118, align 8, !tbaa !90, !range !91, !noundef !92
  %i.ayt = trunc nuw i8 %i.ays to i1
  br i1 %i.ayt, label %bb.sd, label %bb.ru

bb.rs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit974, %bb.re
  %.pn326.pn.pn = phi { ptr, i32 } [ %.pn326.pn, %_ZN7testing7MessageD2Ev.exit974 ], [ %i.axu, %bb.re ]
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #20
  br label %bb.va

bb.rt:                                            ; preds = %bb.rq
  %i.ayu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #20
  br label %bb.sn

bb.ru:                                            ; preds = %bb.rr
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %120)
          to label %bb.rv unwind label %bb.rz

bb.rv:                                            ; preds = %bb.ru
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #20
  %i.ayv = getelementptr inbounds nuw i8, ptr %118, i64 8
  %i.ayw = load ptr, ptr %i.ayv, align 8, !tbaa !93 ; 2 uses
  %.not.i.i980 = icmp eq ptr %i.ayw, null
  br i1 %.not.i.i980, label %_ZNK7testing15AssertionResult15failure_messageEv.exit981, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit981

_ZNK7testing15AssertionResult15failure_messageEv.exit981: ; preds = %bb.rw, %bb.rv
  %i.ayy = phi ptr [ %i.ayx, %bb.rw ], [ @.str.45, %bb.rv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %121, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 230, ptr noundef %i.ayy)
          to label %bb.rx unwind label %bb.sa

bb.rx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit981
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %121, ptr noundef nonnull align 8 dereferenceable(8) %120)
          to label %bb.ry unwind label %bb.sb

bb.ry:                                            ; preds = %bb.rx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %121) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #20
  %i.ayz = load ptr, ptr %120, align 8, !tbaa !95 ; 3 uses
  %.not.i.i982 = icmp eq ptr %i.ayz, null
  br i1 %.not.i.i982, label %_ZN7testing7MessageD2Ev.exit984, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i983

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i983: ; preds = %bb.ry
  %i.aza = load ptr, ptr %i.ayz, align 8, !tbaa !28
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 8
  %i.azc = load ptr, ptr %i.azb, align 8
  call void %i.azc(ptr noundef nonnull align 8 dereferenceable(128) %i.ayz) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit984

_ZN7testing7MessageD2Ev.exit984:                  ; preds = %bb.ry, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i983
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #20
  br label %bb.sd

bb.rz:                                            ; preds = %bb.ru
  %i.azd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit987

bb.sa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit981
  %i.aze = landingpad { ptr, i32 }
          cleanup
  br label %bb.sc

bb.sb:                                            ; preds = %bb.rx
  %i.azf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %121) #20
  br label %bb.sc

bb.sc:                                            ; preds = %bb.sb, %bb.sa
  %.pn332 = phi { ptr, i32 } [ %i.azf, %bb.sb ], [ %i.aze, %bb.sa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #20
  %i.azg = load ptr, ptr %120, align 8, !tbaa !95 ; 3 uses
  %.not.i.i985 = icmp eq ptr %i.azg, null
  br i1 %.not.i.i985, label %_ZN7testing7MessageD2Ev.exit987, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i986

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i986: ; preds = %bb.sc
  %i.azh = load ptr, ptr %i.azg, align 8, !tbaa !28
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 8
  %i.azj = load ptr, ptr %i.azi, align 8
  call void %i.azj(ptr noundef nonnull align 8 dereferenceable(128) %i.azg) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit987

_ZN7testing7MessageD2Ev.exit987:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i986, %bb.sc, %bb.rz
  %.pn332.pn = phi { ptr, i32 } [ %i.azd, %bb.rz ], [ %.pn332, %bb.sc ], [ %.pn332, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i986 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %118) #20
  br label %bb.sn

bb.sd:                                            ; preds = %bb.rr, %_ZN7testing7MessageD2Ev.exit984
  %i.azk = getelementptr inbounds nuw i8, ptr %118, i64 8
  %i.azl = load ptr, ptr %i.azk, align 8, !tbaa !93 ; 4 uses
  %.not.i.i988 = icmp eq ptr %i.azl, null
  br i1 %.not.i.i988, label %_ZN7testing15AssertionResultD2Ev.exit992, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.azm = load ptr, ptr %i.azl, align 8, !tbaa !51 ; 2 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azl, i64 16 ; 2 uses
  %i.azo = icmp eq ptr %i.azm, %i.azn
  br i1 %i.azo, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i990, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i989

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i989: ; preds = %bb.se
  %i.azp = load i64, ptr %i.azn, align 8, !tbaa !49
  %i.azq = add i64 %i.azp, 1
  call void @_ZdlPvm(ptr noundef %i.azm, i64 noundef %i.azq) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i990

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i990: ; preds = %bb.se, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i989
  call void @_ZdlPvm(ptr noundef nonnull %i.azl, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit992

_ZN7testing15AssertionResultD2Ev.exit992:         ; preds = %bb.sd, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i990
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #20
  %i.azr = load ptr, ptr %i.a, align 8, !tbaa !60 ; 2 uses
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 8
  %i.azt = atomicrmw sub ptr %i.azs, i32 2 acq_rel, align 4
  %.not.i993 = icmp eq i32 %i.azt, 2
  br i1 %.not.i993, label %bb.sf, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit995, !prof !99

bb.sf:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit992
  invoke void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.azr)
          to label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit995 unwind label %bb.ex

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit995: ; preds = %_ZN7testing15AssertionResultD2Ev.exit992, %bb.sf
  %i.azu = load i8, ptr %i.bb, align 1, !tbaa !49 ; 4 uses
  %i.azv = zext i8 %i.azu to i32
  store i32 %i.azv, ptr %i.ba, align 8, !tbaa !73
  %i.azw = load i8, ptr %i.be, align 2            ; 2 uses
  %i.azx = zext i8 %i.azu to i64                  ; 5 uses
  %i.azy = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.azx
  store ptr %.04.lcssa.i, ptr %i.azy, align 8, !tbaa !75
  %i.azz = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.azx
  store i8 %i.azw, ptr %i.azz, align 1, !tbaa !49
  %.018.i.i.i996 = zext i8 %i.azw to i64          ; 3 uses
  %.not.i.i.i997 = icmp eq i8 %i.azu, 0
  br i1 %.not.i.i.i997, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i1004, label %.lr.ph.i.i.i998.preheader

.lr.ph.i.i.i998.preheader:                        ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit995
  %xtraiter1488 = and i64 %i.azx, 1
  %lcmp.mod1489.not = icmp eq i64 %xtraiter1488, 0
  br i1 %lcmp.mod1489.not, label %.lr.ph.i.i.i998.prol.loopexit, label %.lr.ph.i.i.i998.prol

.lr.ph.i.i.i998.prol:                             ; preds = %.lr.ph.i.i.i998.preheader
  %indvars.iv.next.i.i.i1002.prol = add nsw i64 %i.azx, -1 ; 3 uses
  %i.baa = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 16
  %i.bab = getelementptr inbounds nuw [8 x i8], ptr %i.baa, i64 %.018.i.i.i996
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !60 ; 3 uses
  %i.bad = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i1002.prol
  store ptr %i.bac, ptr %i.bad, align 8, !tbaa !75
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bac, i64 14
  %i.baf = load i8, ptr %i.bae, align 1           ; 2 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i1002.prol
  store i8 %i.baf, ptr %i.bag, align 2, !tbaa !49
  %.0.i.i.i1003.prol = zext i8 %i.baf to i64      ; 2 uses
  br label %.lr.ph.i.i.i998.prol.loopexit

.lr.ph.i.i.i998.prol.loopexit:                    ; preds = %.lr.ph.i.i.i998.prol, %.lr.ph.i.i.i998.preheader
  %indvars.iv.i.i.i999.unr = phi i64 [ %i.azx, %.lr.ph.i.i.i998.preheader ], [ %indvars.iv.next.i.i.i1002.prol, %.lr.ph.i.i.i998.prol ]
  %.021.i.i.i1000.unr = phi i64 [ %.018.i.i.i996, %.lr.ph.i.i.i998.preheader ], [ %.0.i.i.i1003.prol, %.lr.ph.i.i.i998.prol ]
  %.01619.i.i.i1001.unr = phi ptr [ %.04.lcssa.i, %.lr.ph.i.i.i998.preheader ], [ %i.bac, %.lr.ph.i.i.i998.prol ]
  %.0.i.i.i1003.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i998.preheader ], [ %.0.i.i.i1003.prol, %.lr.ph.i.i.i998.prol ]
  %i.bah = icmp eq i8 %i.azu, 1
  br i1 %i.bah, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i1004, label %.lr.ph.i.i.i998

.lr.ph.i.i.i998:                                  ; preds = %.lr.ph.i.i.i998.prol.loopexit, %.lr.ph.i.i.i998
  %indvars.iv.i.i.i999 = phi i64 [ %indvars.iv.next.i.i.i1002.1, %.lr.ph.i.i.i998 ], [ %indvars.iv.i.i.i999.unr, %.lr.ph.i.i.i998.prol.loopexit ] ; 3 uses
  %.021.i.i.i1000 = phi i64 [ %.0.i.i.i1003.1, %.lr.ph.i.i.i998 ], [ %.021.i.i.i1000.unr, %.lr.ph.i.i.i998.prol.loopexit ]
  %.01619.i.i.i1001 = phi ptr [ %i.bar, %.lr.ph.i.i.i998 ], [ %.01619.i.i.i1001.unr, %.lr.ph.i.i.i998.prol.loopexit ]
  %indvars.iv.next.i.i.i1002 = add nsw i64 %indvars.iv.i.i.i999, -1 ; 2 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %.01619.i.i.i1001, i64 16
  %i.baj = getelementptr inbounds nuw [8 x i8], ptr %i.bai, i64 %.021.i.i.i1000
  %i.bak = load ptr, ptr %i.baj, align 8, !tbaa !60 ; 3 uses
  %i.bal = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i1002
  store ptr %i.bak, ptr %i.bal, align 8, !tbaa !75
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bak, i64 14
  %i.ban = load i8, ptr %i.bam, align 1           ; 2 uses
  %i.bao = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i1002
  store i8 %i.ban, ptr %i.bao, align 1, !tbaa !49
  %.0.i.i.i1003 = zext i8 %i.ban to i64
  %indvars.iv.next.i.i.i1002.1 = add nsw i64 %indvars.iv.i.i.i999, -2 ; 3 uses
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bak, i64 16
  %i.baq = getelementptr inbounds nuw [8 x i8], ptr %i.bap, i64 %.0.i.i.i1003
  %i.bar = load ptr, ptr %i.baq, align 8, !tbaa !60 ; 3 uses
  %i.bas = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.i1002.1
  store ptr %i.bar, ptr %i.bas, align 8, !tbaa !75
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bar, i64 14
  %i.bau = load i8, ptr %i.bat, align 1           ; 2 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i.i.i1002.1
  store i8 %i.bau, ptr %i.bav, align 1, !tbaa !49
  %.0.i.i.i1003.1 = zext i8 %i.bau to i64         ; 2 uses
  %i.baw = icmp sgt i64 %indvars.iv.i.i.i999, 2
  br i1 %i.baw, label %.lr.ph.i.i.i998, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i1004, !llvm.loop !2

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i1004: ; preds = %.lr.ph.i.i.i998.prol.loopexit, %.lr.ph.i.i.i998, %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit995
  %.0.lcssa.i.i.i1005 = phi i64 [ %.018.i.i.i996, %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit995 ], [ %.0.i.i.i1003.lcssa.unr, %.lr.ph.i.i.i998.prol.loopexit ], [ %.0.i.i.i1003.1, %.lr.ph.i.i.i998 ]
  %i.bax = load ptr, ptr %i.bg, align 8, !tbaa !75
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 16
  %i.baz = getelementptr inbounds nuw [8 x i8], ptr %i.bay, i64 %.0.lcssa.i.i.i1005
  %i.bba = load ptr, ptr %i.baz, align 8, !tbaa !60 ; 5 uses
  %i.bbb = load i64, ptr %.04.lcssa.i, align 8, !tbaa !69
  %i.bbc = load i64, ptr %i.bba, align 8, !tbaa !69 ; 3 uses
  %i.bbd = sub i64 %i.bbb, %i.bbc
  store i64 %i.bbd, ptr %3, align 8, !tbaa !77
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bba, i64 12
  %i.bbf = load i8, ptr %i.bbe, align 4, !tbaa !65 ; 2 uses
  %i.bbg = icmp eq i8 %i.bbf, 1
  br i1 %i.bbg, label %bb.sg, label %bb.sh

bb.sg:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i1004
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bba, i64 16
  %i.bbi = load i64, ptr %i.bbh, align 8, !tbaa !78
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bba, i64 24
  %i.bbk = load ptr, ptr %i.bbj, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert.i.i1013 = getelementptr inbounds nuw i8, ptr %i.bbk, i64 12
  %.pre.i.i1014 = load i8, ptr %.phi.trans.insert.i.i1013, align 4, !tbaa !65
  br label %bb.sh

bb.sh:                                            ; preds = %bb.sg, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i1004
  %i.bbl = phi i8 [ %.pre.i.i1014, %bb.sg ], [ %i.bbf, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i1004 ]
  %.010.i.i1006 = phi ptr [ %i.bbk, %bb.sg ], [ %i.bba, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i1004 ] ; 2 uses
  %.0.i.i1007 = phi i64 [ %i.bbi, %bb.sg ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i1004 ]
  %i.bbm = icmp ugt i8 %i.bbl, 5
  br i1 %i.bbm, label %bb.si, label %bb.sj

bb.si:                                            ; preds = %bb.sh
  %i.bbn = getelementptr inbounds nuw i8, ptr %.010.i.i1006, i64 13
  br label %bb.sk

bb.sj:                                            ; preds = %bb.sh
  %i.bbo = getelementptr inbounds nuw i8, ptr %.010.i.i1006, i64 16
  %i.bbp = load ptr, ptr %i.bbo, align 8, !tbaa !80
  br label %bb.sk

bb.sk:                                            ; preds = %bb.sj, %bb.si
  %.pn.i.i1009 = phi ptr [ %i.bbn, %bb.si ], [ %i.bbp, %bb.sj ]
  %.sroa.3.0.i.i1010 = getelementptr inbounds nuw i8, ptr %.pn.i.i1009, i64 %.0.i.i1007
  store i64 %i.bbc, ptr %4, align 8, !tbaa !40
  store ptr %.sroa.3.0.i.i1010, ptr %.sroa.558.0..sroa_idx, align 8, !tbaa !98
  %i.bbq = add i64 %i.bbc, -2
  %i.bbr = invoke { i64, ptr } @_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4ReadEmmRPNS1_7CordRepE(ptr noundef nonnull align 8 dereferenceable(120) %3, i64 noundef 8, i64 noundef %i.bbq, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.sl unwind label %bb.so     ; 2 uses

bb.sl:                                            ; preds = %bb.sk
  %i.bbs = extractvalue { i64, ptr } %i.bbr, 0
  %i.bbt = extractvalue { i64, ptr } %i.bbr, 1
  store i64 %i.bbs, ptr %4, align 8, !tbaa !40
  store ptr %i.bbt, ptr %.sroa.558.0..sroa_idx, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #20
  store i64 0, ptr %123, align 8, !alias.scope !441
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9NeMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %122, ptr noundef nonnull align 8 dereferenceable(8) %123, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.sm unwind label %bb.sp

bb.sm:                                            ; preds = %bb.sl
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #20
  %i.bbu = load i8, ptr %122, align 8, !tbaa !90, !range !91, !noundef !92
  %i.bbv = trunc nuw i8 %i.bbu to i1
  br i1 %i.bbv, label %.critedge369, label %bb.sq

bb.sn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit987, %bb.rt
  %.pn332.pn.pn = phi { ptr, i32 } [ %.pn332.pn, %_ZN7testing7MessageD2Ev.exit987 ], [ %i.ayu, %bb.rt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #20
  br label %bb.va

bb.so:                                            ; preds = %bb.sk
  %i.bbw = landingpad { ptr, i32 }
          cleanup
  br label %bb.va

bb.sp:                                            ; preds = %bb.sl
  %i.bbx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #20
  br label %bb.tf

bb.sq:                                            ; preds = %bb.sm
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %124)
          to label %bb.sr unwind label %bb.sw

bb.sr:                                            ; preds = %bb.sq
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #20
  %i.bby = getelementptr inbounds nuw i8, ptr %122, i64 8 ; 2 uses
  %i.bbz = load ptr, ptr %i.bby, align 8, !tbaa !93 ; 2 uses
  %.not.i.i1016 = icmp eq ptr %i.bbz, null
  br i1 %.not.i.i1016, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1017, label %bb.ss

bb.ss:                                            ; preds = %bb.sr
  %i.bca = load ptr, ptr %i.bbz, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1017

_ZNK7testing15AssertionResult15failure_messageEv.exit1017: ; preds = %bb.ss, %bb.sr
  %i.bcb = phi ptr [ %i.bca, %bb.ss ], [ @.str.45, %bb.sr ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %125, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 236, ptr noundef %i.bcb)
          to label %bb.st unwind label %bb.sx

bb.st:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1017
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %125, ptr noundef nonnull align 8 dereferenceable(8) %124)
          to label %bb.su unwind label %bb.sy

bb.su:                                            ; preds = %bb.st
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %125) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #20
  %i.bcc = load ptr, ptr %124, align 8, !tbaa !95 ; 3 uses
  %.not.i.i1018 = icmp eq ptr %i.bcc, null
  br i1 %.not.i.i1018, label %_ZN7testing7MessageD2Ev.exit1020, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1019

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1019: ; preds = %bb.su
  %i.bcd = load ptr, ptr %i.bcc, align 8, !tbaa !28
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bcd, i64 8
  %i.bcf = load ptr, ptr %i.bce, align 8
  call void %i.bcf(ptr noundef nonnull align 8 dereferenceable(128) %i.bcc) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit1020

_ZN7testing7MessageD2Ev.exit1020:                 ; preds = %bb.su, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1019
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #20
  %i.bcg = load ptr, ptr %i.bby, align 8, !tbaa !93 ; 4 uses
  %.not.i.i1021 = icmp eq ptr %i.bcg, null
  br i1 %.not.i.i1021, label %_ZN7testing15AssertionResultD2Ev.exit1025, label %bb.sv

bb.sv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1020
  %i.bch = load ptr, ptr %i.bcg, align 8, !tbaa !51 ; 2 uses
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bcg, i64 16 ; 2 uses
  %i.bcj = icmp eq ptr %i.bch, %i.bci
  br i1 %i.bcj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1023, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1022

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1022: ; preds = %bb.sv
  %i.bck = load i64, ptr %i.bci, align 8, !tbaa !49
  %i.bcl = add i64 %i.bck, 1
  call void @_ZdlPvm(ptr noundef %i.bch, i64 noundef %i.bcl) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1023

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1023: ; preds = %bb.sv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1022
  call void @_ZdlPvm(ptr noundef nonnull %i.bcg, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit1025

_ZN7testing15AssertionResultD2Ev.exit1025:        ; preds = %_ZN7testing7MessageD2Ev.exit1020, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1023
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #20
  br label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit1090

bb.sw:                                            ; preds = %bb.sq
  %i.bcm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1028

bb.sx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1017
  %i.bcn = landingpad { ptr, i32 }
          cleanup
  br label %bb.sz

bb.sy:                                            ; preds = %bb.st
  %i.bco = landingpad { ptr, i32 }
          cleanup
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_142CordRepBtreeReaderTest_ReadExhaustive_Test8TestBodyEv:bb.a

_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit.i: ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds nuw i8, ptr @.str.18, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !49, !noalias !608
  %i.av = load ptr, ptr %3, align 8, !tbaa !51, !alias.scope !608
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.011.i
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !49
  %i.ax = add nuw i64 %.011.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ax, %i.ar
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2026052615cordrep_testing18CreateRandomStringB5cxx11Em.exit, label %.lr.ph.i, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %3, align 8, !tbaa !51, !alias.scope !608 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.m
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.bb = load i64, ptr %i.m, align 8, !tbaa !49, !alias.scope !608
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn129.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !608
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !608
  br label %common.resume

_ZN4absl12lts_2026052615cordrep_testing18CreateRandomStringB5cxx11Em.exit: ; preds = %_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEmRT_.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !608
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !608
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bd = load ptr, ptr %3, align 8, !tbaa !51
  %i.be = load i64, ptr %i.n, align 8, !tbaa !53
  invoke void @_ZN4absl12lts_2026052615cordrep_testing21CreateFlatsFromStringESt17basic_string_viewIcSt11char_traitsIcEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, i64 %i.be, ptr %i.bd, i64 noundef 3)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZN4absl12lts_2026052615cordrep_testing18CreateRandomStringB5cxx11Em.exit
  %i.bf = load ptr, ptr %4, align 8, !tbaa !57    ; 3 uses
  %i.bg = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 2 uses
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !60 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !65  ; 2 uses
  %or.cond.i.i.i = icmp ugt i8 %i.bn, 4
  br i1 %or.cond.i.i.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bo = icmp eq i8 %i.bn, 1
  br i1 %i.bo, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i.i: ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !67
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !65
  %i.br = icmp ugt i8 %.pre.i.i.i, 4
  br i1 %i.br, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i.i, %bb.d
  %i.bs = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23
          to label %.noexc unwind label %.loopexit.split-lp357 ; 8 uses

.noexc:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 2, ptr %i.bt, align 4, !tbaa !68
  %i.bu = load i8, ptr %i.bm, align 4, !tbaa !65
  %i.bv = icmp eq i8 %i.bu, 3
  br i1 %i.bv, label %bb.f, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i

bb.f:                                             ; preds = %.noexc
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 13
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !49
  %i.by = add i8 %i.bx, 1
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i

_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i: ; preds = %bb.f, %.noexc
  %i.bz = phi i8 [ %i.by, %bb.f ], [ 0, %.noexc ]
  %i.ca = load i64, ptr %i.bl, align 8, !tbaa !69
  store i64 %i.ca, ptr %i.bs, align 8, !tbaa !69
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i8 3, ptr %i.cb, align 4, !tbaa !65
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 13
  store i8 %i.bz, ptr %i.cc, align 1, !tbaa !49
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 14
  store i8 0, ptr %i.cd, align 2, !tbaa !49
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 15
  store i8 1, ptr %i.ce, align 1, !tbaa !49
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %i.bl, ptr %i.cf, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i.i, %bb.e
  %i.cg = invoke noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10CreateSlowEPNS1_7CordRepE(ptr noundef nonnull %i.bl)
          to label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i unwind label %.loopexit.split-lp357

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i
  %.0.i.i = phi ptr [ %i.bs, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i ], [ %i.cg, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i ] ; 2 uses
  %i.ch = icmp ugt i64 %i.bk, 1
  br i1 %i.ch, label %.lr.ph.i144, label %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit

.lr.ph.i144:                                      ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i
  %.013.i = phi i64 [ %i.cs, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i ], [ 1, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i ] ; 2 uses
  %.0412.i = phi ptr [ %.0.i6.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i ], [ %.0.i.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.013.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !60 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cl = load i8, ptr %i.ck, align 4, !tbaa !65  ; 2 uses
  %or.cond.i.i5.i = icmp ugt i8 %i.cl, 4
  br i1 %or.cond.i.i5.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i144
  %i.cm = icmp eq i8 %i.cl, 1
  br i1 %i.cm, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i, !prof !70

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i: ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !67
  %.phi.trans.insert.i.i8.i = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %.pre.i.i9.i = load i8, ptr %.phi.trans.insert.i.i8.i, align 4, !tbaa !65
  %i.cp = icmp ugt i8 %.pre.i.i9.i, 4
  br i1 %i.cp, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i, !prof !71

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i, %.lr.ph.i144
  %i.cq = invoke noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AddCordRepILNS2_8EdgeTypeE1EEEPS2_S5_PNS1_7CordRepE(ptr noundef %.0412.i, ptr noundef nonnull %i.cj)
          to label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i unwind label %.loopexit356

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i, %bb.g
  %i.cr = invoke noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AppendSlowEPS2_PNS1_7CordRepE(ptr noundef %.0412.i, ptr noundef nonnull %i.cj)
          to label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i unwind label %.loopexit356

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i
  %.0.i6.i = phi ptr [ %i.cq, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i ], [ %i.cr, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i ] ; 2 uses
  %i.cs = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i145 = icmp eq i64 %i.cs, %i.bk
  br i1 %exitcond.not.i145, label %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit, label %.lr.ph.i144, !llvm.loop !1

_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i
  %.04.lcssa.i = phi ptr [ %.0.i.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i ], [ %.0.i6.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i ] ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 13
  %i.cu = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 14
  %i.cv = getelementptr inbounds nuw i8, ptr %.04.lcssa.i, i64 16
  br label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_2026052615cordrep_testing18CreateRandomStringB5cxx11Em.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit317

.loopexit356:                                     ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i
  %lpad.loopexit358 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

.loopexit.split-lp357:                            ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i.i, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i, %bb.dv
  %lpad.loopexit.split-lp359 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.i:                                             ; preds = %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit, %._crit_edge
  %.046.idx563 = phi i64 [ 0, %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit ], [ %.046.add, %._crit_edge ] ; 2 uses
  %.046.ptr = getelementptr inbounds nuw i8, ptr @constinit, i64 %.046.idx563
  %i.cx = load i64, ptr %.046.ptr, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.cy = load i8, ptr %i.ct, align 1, !tbaa !49  ; 4 uses
  %i.cz = zext i8 %i.cy to i32
  store i32 %i.cz, ptr %i.p, align 8, !tbaa !73
  %i.da = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.db = zext i8 %i.cy to i64                    ; 5 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.db
  store ptr %.04.lcssa.i, ptr %i.dc, align 8, !tbaa !75
  %i.dd = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.db
  store i8 %i.da, ptr %i.dd, align 1, !tbaa !49
  %.018.i.i.i = zext i8 %i.da to i64              ; 3 uses
  %.not.i.i.i = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.i
  %xtraiter = and i64 %i.db, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i.i.i.prol = add nsw i64 %i.db, -1 ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.018.i.i.i
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !60 ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.prol
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !75
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 14
  %i.di = load i8, ptr %i.dh, align 1             ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i.i.i.prol
  store i8 %i.di, ptr %i.dj, align 2, !tbaa !49
  %.0.i.i.i.prol = zext i8 %i.di to i64           ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %i.db, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.021.i.i.i.unr = phi i64 [ %.018.i.i.i, %.lr.ph.i.i.i.preheader ], [ %.0.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.01619.i.i.i.unr = phi ptr [ %.04.lcssa.i, %.lr.ph.i.i.i.preheader ], [ %i.df, %.lr.ph.i.i.i.prol ]
  %.0.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %.0.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.dk = icmp eq i8 %i.cy, 1
  br i1 %i.dk, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i = phi i64 [ %.0.i.i.i.1, %.lr.ph.i.i.i ], [ %.021.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01619.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i ], [ %.01619.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.01619.i.i.i, i64 16
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.021.i.i.i
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !60 ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !75
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 14
  %i.dq = load i8, ptr %i.dp, align 1             ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i.i.i
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !49
  %.0.i.i.i = zext i8 %i.dq to i64
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, -2 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.0.i.i.i
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !60 ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.1
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !75
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 14
  %i.dx = load i8, ptr %i.dw, align 1             ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i.i.i.1
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !49
  %.0.i.i.i.1 = zext i8 %i.dx to i64              ; 2 uses
  %i.dz = icmp sgt i64 %indvars.iv.i.i.i, 2
  br i1 %i.dz, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i, !llvm.loop !2

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.i
  %.0.lcssa.i.i.i = phi i64 [ %.018.i.i.i, %bb.i ], [ %.0.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %.0.i.i.i.1, %.lr.ph.i.i.i ]
  %i.ea = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.0.lcssa.i.i.i
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !60 ; 5 uses
  %i.ee = load i64, ptr %.04.lcssa.i, align 8, !tbaa !69
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !69 ; 2 uses
  %i.eg = sub i64 %i.ee, %i.ef
  store i64 %i.eg, ptr %5, align 8, !tbaa !77
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.ei = load i8, ptr %i.eh, align 4, !tbaa !65  ; 2 uses
  %i.ej = icmp eq i8 %i.ei, 1
  br i1 %i.ej, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !78
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !tbaa !65
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i
  %i.eo = phi i8 [ %.pre.i.i, %bb.j ], [ %i.ei, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i ]
  %.010.i.i = phi ptr [ %i.en, %bb.j ], [ %i.ed, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i ] ; 2 uses
  %.0.i.i149 = phi i64 [ %i.el, %bb.j ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i ]
  %i.ep = icmp ugt i8 %i.eo, 5
  br i1 %i.ep, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.eq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 13
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.er = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !80
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn.i.i = phi ptr [ %i.eq, %bb.l ], [ %i.es, %bb.m ]
  %.sroa.3.0.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %.0.i.i149
  store i64 %i.ef, ptr %6, align 8
  store ptr %.sroa.3.0.i.i, ptr %i.s, align 8
  %i.et = load i64, ptr %i.n, align 8, !tbaa !53  ; 2 uses
  %.not89560 = icmp eq i64 %i.et, 0
  br i1 %.not89560, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %.critedge137
  %.0562 = phi i64 [ %i.jo, %.critedge137 ], [ 0, %bb.n ] ; 5 uses
  %.0350561 = phi i64 [ %i.jp, %.critedge137 ], [ %i.et, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.cx, i64 %.0350561) ; 4 uses
  %i.eu = load i64, ptr %6, align 8, !tbaa !97
  %i.ev = invoke { i64, ptr } @_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4ReadEmmRPNS1_7CordRepE(ptr noundef nonnull align 8 dereferenceable(120) %5, i64 noundef %.sroa.speculated, i64 noundef %i.eu, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.o unwind label %bb.q       ; 2 uses

bb.o:                                             ; preds = %.lr.ph
  %i.ew = extractvalue { i64, ptr } %i.ev, 0
  %i.ex = extractvalue { i64, ptr } %i.ev, 1
  store i64 %i.ew, ptr %6, align 8, !tbaa !40
  store ptr %i.ex, ptr %i.s, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store i64 0, ptr %8, align 8, !alias.scope !609
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9NeMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.ey = load i8, ptr %7, align 8, !tbaa !90, !range !91, !noundef !92
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.ab, label %bb.s

bb.q:                                             ; preds = %.lr.ph
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.r:                                             ; preds = %bb.o
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.ap

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.fc = load ptr, ptr %i.t, align 8, !tbaa !93  ; 2 uses
  %.not.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.u, %bb.t
  %i.fe = phi ptr [ %i.fd, %bb.u ], [ @.str.45, %bb.t ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 267, ptr noundef %i.fe)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.ff = load ptr, ptr %9, align 8, !tbaa !95    ; 3 uses
  %.not.i.i150 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i150, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.w
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !28
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(128) %i.ff) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.w, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.ab

bb.x:                                             ; preds = %bb.s
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit153

bb.y:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.fl, %bb.z ], [ %i.fk, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.fm = load ptr, ptr %9, align 8, !tbaa !95    ; 3 uses
  %.not.i.i151 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i151, label %_ZN7testing7MessageD2Ev.exit153, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152: ; preds = %bb.aa
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !28
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(128) %i.fm) #20, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit153

_ZN7testing7MessageD2Ev.exit153:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152, %bb.aa, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %i.fj, %bb.x ], [ %.pn, %bb.aa ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152 ]
end_hunk_12
