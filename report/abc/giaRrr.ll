Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaRrr?download=true
inline.NumInlined: 27716
inline.NumDeleted: 6990
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN3rrr9SimulatorINS_10AndNetworkEE11ComputeCareEi:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef signext i8 %i.bf(ptr noundef nonnull align 8 dereferenceable(570) %i.ay, i8 noundef signext 10) #26, !inline_history !23
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i = phi i8 [ %i.bc, %bb.l ], [ %i.bg, %bb.m ]
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i8 noundef signext %.0.i.i.i) #26
  %i.bi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) #26 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.i
  %i.bj = load ptr, ptr %0, align 8, !tbaa !1203  ; 3 uses
  %i.bk = load i32, ptr %i.e, align 4, !tbaa !1201
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 104
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !218 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !218 ; 2 uses
  %.not1314.not.i = icmp eq ptr %i.bm, %i.bo
  br i1 %.not1314.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 128
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !227
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i, i64 4 ; 2 uses
  %.not13.not.i = icmp eq ptr %i.br, %i.bo
  br i1 %.not13.not.i, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i
  %.sroa.09.015.i = phi ptr [ %i.bm, %.lr.ph.i ], [ %i.br, %bb.o ] ; 2 uses
  %i.bs = load i32, ptr %.sroa.09.015.i, align 4, !tbaa !219
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !223
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !219
  %i.bx = ashr i32 %i.bw, 1
  %.not.i = icmp eq i32 %i.bx, %i.bk
  br i1 %.not.i, label %_ZNK3rrr10AndNetwork10IsPoDriverEi.exit, label %bb.o

_ZNK3rrr10AndNetwork10IsPoDriverEi.exit:          ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !1207 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not5.i.i.i.i.i, label %_ZNK3rrr9SimulatorINS_10AndNetworkEE4FillEiN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEE.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNK3rrr10AndNetwork10IsPoDriverEi.exit
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1210
  %i.cc = sext i32 %i.bz to i64
  %.idx.i = shl nsw i64 %i.cc, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cb, i8 -1, i64 %.idx.i, i1 false), !tbaa !907
  br label %_ZNK3rrr9SimulatorINS_10AndNetworkEE4FillEiN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEE.exit

_ZNK3rrr9SimulatorINS_10AndNetworkEE4FillEiN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEE.exit: ; preds = %_ZNK3rrr10AndNetwork10IsPoDriverEi.exit, %.lr.ph.i.i.i.i.preheader.i
  %i.cd = load i32, ptr %i.ao, align 8, !tbaa !1225
  %.not13 = icmp eq i32 %i.cd, 0
  br i1 %.not13, label %bb.u, label %bb.q

bb.q:                                             ; preds = %_ZNK3rrr9SimulatorINS_10AndNetworkEE4FillEiN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEE.exit
  %i.ce = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.200, i64 noundef 5) #26 ; 0 uses
  %i.cf = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 3, ptr %i.cj, align 8, !tbaa !922
  %i.ck = load i32, ptr %i.e, align 4, !tbaa !1201
  %i.cl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.ck) #26
  %i.cm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.13, i64 noundef 2) #26 ; 0 uses
  %i.cn = load i32, ptr %i.by, align 4, !tbaa !1207
  %i.co = load ptr, ptr %i.ca, align 8, !tbaa !1210
  tail call void @_ZNK3rrr9SimulatorINS_10AndNetworkEE5PrintEiN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEE(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %i.cn, ptr %i.co)
  %i.cp = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.cq = getelementptr i8, ptr %i.cp, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 240
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !354 ; 6 uses
  %.not.i.i.i21 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i21, label %bb.r, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i22

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i22: ; preds = %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !359
  %.not.i1.i.i23 = icmp eq i8 %i.cw, 0
  br i1 %.not.i1.i.i23, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i22
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 67
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !205
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit25

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i22
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cu) #26
  %i.cz = load ptr, ptr %i.cu, align 8, !tbaa !339
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = tail call noundef signext i8 %i.db(ptr noundef nonnull align 8 dereferenceable(570) %i.cu, i8 noundef signext 10) #26, !inline_history !23
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit25

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit25: ; preds = %bb.s, %bb.t
  %.0.i.i.i24 = phi i8 [ %i.cy, %bb.s ], [ %i.dc, %bb.t ]
  %i.dd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i24) #26
  %i.de = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dd) #26 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit25, %_ZNK3rrr9SimulatorINS_10AndNetworkEE4FillEiN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEE.exit
  %i.df = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  br label %.sink.split

.loopexit:                                        ; preds = %bb.o, %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.di = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.dg) ; 0 uses
  %i.dj = load ptr, ptr %0, align 8, !tbaa !1203
  %i.dk = load i32, ptr %i.e, align 4, !tbaa !1201
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.dn, align 8
  %i.do = ptrtoint ptr %0 to i64
  store i64 %i.do, ptr %2, align 8, !tbaa !1204
  store ptr @_ZNSt17_Function_handlerIFviEZN3rrr9SimulatorINS1_10AndNetworkEE11ComputeCareEiEUliE_E9_M_invokeERKSt9_Any_dataOi, ptr %i.dm, align 8, !tbaa !270
  store ptr @_ZNSt17_Function_handlerIFviEZN3rrr9SimulatorINS1_10AndNetworkEE11ComputeCareEiEUliE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.dl, align 8, !tbaa !211
  call void @_ZN3rrr10AndNetwork10ForEachTfoEibRKSt8functionIFviEE(ptr noundef nonnull align 8 dereferenceable(264) %i.dj, i32 noundef %i.dk, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !211 ; 2 uses
  %.not.i14 = icmp eq ptr %i.dp, null
  br i1 %.not.i14, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.dq = call noundef zeroext i1 %i.dp(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #26, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %.loopexit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !1207 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1210 ; 8 uses
  %.not5.i.i.i.i.i15 = icmp eq i32 %i.ds, 0
  br i1 %.not5.i.i.i.i.i15, label %_ZNK3rrr10AndNetwork15ForEachPoDriverIZNS_9SimulatorIS0_E11ComputeCareEiEUliE0_EEvRKT_.exit, label %_ZNK3rrr9SimulatorINS_10AndNetworkEE5ClearEiN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEE.exit

_ZNK3rrr9SimulatorINS_10AndNetworkEE5ClearEiN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEE.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.dv = sext i32 %i.ds to i64
  %.idx.i17 = shl nsw i64 %i.dv, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.du, i8 0, i64 %.idx.i17, i1 false), !tbaa !907
  %i.dw = load ptr, ptr %0, align 8, !tbaa !1203  ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 104
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !218 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 112
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !218 ; 2 uses
  %.not7.i = icmp eq ptr %i.dy, %i.ea
  br i1 %.not7.i, label %_ZNK3rrr10AndNetwork15ForEachPoDriverIZNS_9SimulatorIS0_E11ComputeCareEiEUliE0_EEvRKT_.exit, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %_ZNK3rrr9SimulatorINS_10AndNetworkEE5ClearEiN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEE.exit
  %i.eb = icmp sgt i32 %i.ds, 0
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 128
  %i.ed = load ptr, ptr %i.ec, align 8
  %wide.trip.count.i.i = zext i32 %i.ds to i64    ; 6 uses
  br i1 %i.eb, label %.lr.ph.split.i, label %_ZNK3rrr10AndNetwork15ForEachPoDriverIZNS_9SimulatorIS0_E11ComputeCareEiEUliE0_EEvRKT_.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i18
  %i.ee = load ptr, ptr %i.dg, align 8, !tbaa !1209 ; 6 uses
  %i.ef = load ptr, ptr %i.dh, align 8, !tbaa !1209 ; 6 uses
  %i.eg = shl nuw nsw i64 %wide.trip.count.i.i, 3 ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ef, i64 %i.eg
  %scevgep70 = getelementptr i8, ptr %i.ee, i64 %i.eg
  %scevgep71 = getelementptr i8, ptr %i.du, i64 %i.eg ; 2 uses
  %min.iters.check = icmp ult i32 %i.ds, 6
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.eh = add nsw i64 %wide.trip.count.i.i, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZZN3rrr9SimulatorINS_10AndNetworkEE11ComputeCareEiENKUliE0_clEi.exit.loopexit.i, %.lr.ph.split.i
  %.sroa.04.08.i = phi ptr [ %i.dy, %.lr.ph.split.i ], [ %i.gh, %_ZZN3rrr9SimulatorINS_10AndNetworkEE11ComputeCareEiENKUliE0_clEi.exit.loopexit.i ] ; 2 uses
  %i.ei = load i32, ptr %.sroa.04.08.i, align 4, !tbaa !219
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !223
  %i.em = load i32, ptr %i.el, align 4, !tbaa !219
  %i.en = ashr i32 %i.em, 1
  %i.eo = mul nsw i32 %i.en, %i.ds
  %i.ep = sext i32 %i.eo to i64                   ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.eq = shl nsw i64 %i.ep, 3                    ; 4 uses
  %i.er = getelementptr nuw i8, ptr %i.ee, i64 %i.eq
  %i.es = getelementptr i8, ptr %scevgep70, i64 %i.eq
  %3 = getelementptr nuw i8, ptr %i.ef, i64 %i.eq
  %4 = getelementptr i8, ptr %scevgep, i64 %i.eq
  %bound0 = icmp ult ptr %i.du, %i.es
  %bound1 = icmp ult ptr %i.er, %scevgep71
  %found.conflict = and i1 %bound0, %bound1
  %bound072 = icmp ult ptr %i.du, %4
  %bound173 = icmp ult ptr %3, %scevgep71
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx = or i1 %found.conflict, %found.conflict74
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.et, align 8, !tbaa !907, !alias.scope !3703, !noalias !3704
  %wide.load75 = load <2 x i64>, ptr %i.eu, align 8, !tbaa !907, !alias.scope !3703, !noalias !3704
  %i.ev = add nsw i64 %index, %i.ep               ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load76 = load <2 x i64>, ptr %i.ew, align 8, !tbaa !907, !alias.scope !3705
  %wide.load77 = load <2 x i64>, ptr %i.ex, align 8, !tbaa !907, !alias.scope !3705
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ev ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load78 = load <2 x i64>, ptr %i.ey, align 8, !tbaa !907, !alias.scope !3706
  %wide.load79 = load <2 x i64>, ptr %i.ez, align 8, !tbaa !907, !alias.scope !3706
  %i.fa = xor <2 x i64> %wide.load78, %wide.load76
  %i.fb = xor <2 x i64> %wide.load79, %wide.load77
  %i.fc = or <2 x i64> %i.fa, %wide.load
  %i.fd = or <2 x i64> %i.fb, %wide.load75
  store <2 x i64> %i.fc, ptr %i.et, align 8, !tbaa !907, !alias.scope !3703, !noalias !3704
  store <2 x i64> %i.fd, ptr %i.eu, align 8, !tbaa !907, !alias.scope !3703, !noalias !3704
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !3701

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZZN3rrr9SimulatorINS_10AndNetworkEE11ComputeCareEiENKUliE0_clEi.exit.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !907
  %i.fh = add nsw i64 %indvars.iv.i.i.ph, %i.ep   ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.fh
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !907
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fh
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !907
  %i.fm = xor i64 %i.fl, %i.fj
  %i.fn = or i64 %i.fm, %i.fg
  store i64 %i.fn, ptr %i.ff, align 8, !tbaa !907
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.fo = icmp eq i64 %indvars.iv.i.i.ph, %i.eh
  br i1 %i.fo, label %_ZZN3rrr9SimulatorINS_10AndNetworkEE11ComputeCareEiENKUliE0_clEi.exit.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.i.i ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !907
  %i.fr = add nsw i64 %indvars.iv.i.i, %i.ep      ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !907
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fr
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !907
  %i.fw = xor i64 %i.fv, %i.ft
  %i.fx = or i64 %i.fw, %i.fq
  store i64 %i.fx, ptr %i.fp, align 8, !tbaa !907
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next.i.i ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !907
  %i.ga = add nsw i64 %indvars.iv.next.i.i, %i.ep ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ga
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !907
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ga
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !907
  %i.gf = xor i64 %i.ge, %i.gc
  %i.gg = or i64 %i.gf, %i.fz
  store i64 %i.gg, ptr %i.fy, align 8, !tbaa !907
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %_ZZN3rrr9SimulatorINS_10AndNetworkEE11ComputeCareEiENKUliE0_clEi.exit.loopexit.i, label %scalar.ph, !llvm.loop !3702

_ZZN3rrr9SimulatorINS_10AndNetworkEE11ComputeCareEiENKUliE0_clEi.exit.loopexit.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 4 ; 2 uses
  %.not.i19 = icmp eq ptr %i.gh, %i.ea
  br i1 %.not.i19, label %_ZNK3rrr10AndNetwork15ForEachPoDriverIZNS_9SimulatorIS0_E11ComputeCareEiEUliE0_EEvRKT_.exit, label %.lr.ph.i.i

_ZNK3rrr10AndNetwork15ForEachPoDriverIZNS_9SimulatorIS0_E11ComputeCareEiEUliE0_EEvRKT_.exit: ; preds = %_ZZN3rrr9SimulatorINS_10AndNetworkEE11ComputeCareEiENKUliE0_clEi.exit.loopexit.i, %_ZNSt14_Function_baseD2Ev.exit, %_ZNK3rrr9SimulatorINS_10AndNetworkEE5ClearEiN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEE.exit, %.lr.ph.i18
  %i.gi = load i32, ptr %i.ao, align 8, !tbaa !1225
  %.not12 = icmp eq i32 %i.gi, 0
  br i1 %.not12, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %_ZNK3rrr10AndNetwork15ForEachPoDriverIZNS_9SimulatorIS0_E11ComputeCareEiEUliE0_EEvRKT_.exit
  %i.gj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.200, i64 noundef 5) #26 ; 0 uses
  %i.gk = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.gl = getelementptr i8, ptr %i.gk, i64 -24
  %i.gm = load i64, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i64 3, ptr %i.go, align 8, !tbaa !922
  %i.gp = load i32, ptr %i.e, align 4, !tbaa !1201
  %i.gq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.gp) #26
  %i.gr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gq, ptr noundef nonnull @.str.13, i64 noundef 2) #26 ; 0 uses
  %i.gs = load i32, ptr %i.dr, align 4, !tbaa !1207
  %i.gt = load ptr, ptr %i.dt, align 8, !tbaa !1210
  call void @_ZNK3rrr9SimulatorINS_10AndNetworkEE5PrintEiN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEE(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %i.gs, ptr %i.gt)
  %i.gu = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.gv = getelementptr i8, ptr %i.gu, i64 -24
  %i.gw = load i64, ptr %i.gv, align 8
  %i.gx = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 240
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !354 ; 6 uses
  %.not.i.i.i26 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i26, label %bb.x, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27

bb.x:                                             ; preds = %bb.w
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27: ; preds = %bb.w
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 56
  %i.hb = load i8, ptr %i.ha, align 8, !tbaa !359
  %.not.i1.i.i28 = icmp eq i8 %i.hb, 0
  br i1 %.not.i1.i.i28, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 67
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !205
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gz) #26
  %i.he = load ptr, ptr %i.gz, align 8, !tbaa !339
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 48
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = call noundef signext i8 %i.hg(ptr noundef nonnull align 8 dereferenceable(570) %i.gz, i8 noundef signext 10) #26, !inline_history !23
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30: ; preds = %bb.y, %bb.z
  %.0.i.i.i29 = phi i8 [ %i.hd, %bb.y ], [ %i.hh, %bb.z ]
  %i.hi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i29) #26
  %i.hj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hi) #26 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30, %_ZNK3rrr10AndNetwork15ForEachPoDriverIZNS_9SimulatorIS0_E11ComputeCareEiEUliE0_EEvRKT_.exit
  %i.hk = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aa, %bb.u
  %.sink = phi i64 [ %i.df, %bb.u ], [ %i.hk, %bb.aa ]
  %i.hl = sub nsw i64 %.sink, %i.an
  %i.hm = sitofp i64 %i.hl to double
  %i.hn = fdiv double %i.hm, 1.000000e+09
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !1278
  %i.hq = fadd double %i.hp, %i.hn
  store double %i.hq, ptr %i.ho, align 8, !tbaa !1278
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNK3rrr10AndNetwork15ForEachFaninIdxIZNS_9SimulatorIS0_E15CheckRedundancyEiiEUliibE_EEviRKT_(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.b ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !223 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val1.i = load ptr, ptr %i.e, align 8, !tbaa !222
  %i.f = ptrtoint ptr %.val1.i to i64
  %i.g = ptrtoint ptr %.val.i to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 2                   ; 2 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1269 ; 4 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !3720, !nonnull !316, !align !414
  %i.o = load i32, ptr %i.n, align 4, !tbaa !219
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !316, !align !411 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !316 ; 2 uses
  %i.x = zext i32 %i.o to i64
  %wide.trip.count = and i64 %i.i, 2147483647
  br label %bb.b

end_hunk_0
