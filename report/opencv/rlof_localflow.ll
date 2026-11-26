Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rlof_localflow?download=true
inline.NumInlined: 1717
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN2cv7optflowL24calcLocalOpticalFlowCoreEPNS_3PtrINS0_12CImageBufferEEES4_RKNS_11_InputArrayERKNS_17_InputOutputArrayERKNS0_24RLOFOpticalFlowParameterE:bb.a
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.pq = icmp eq i32 %i.pc, 0
  %i.pr = zext i1 %i.pq to i32
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ps = phi i32 [ %i.pp, %bb.bj ], [ %i.pr, %bb.bk ] ; 2 uses
  %i.pt = icmp eq i32 %i.pc, 2
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pa, i64 84
  %i.pv = load i32, ptr %i.pu, align 4
  %i.pw = icmp sgt i32 %i.pc, -1
  %i.px = zext i1 %i.pw to i32
  %i.py = select i1 %i.pt, i32 %i.pv, i32 %i.px   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #20
  %i.pz = add nsw i32 %i.py, %i.fn
  %i.qa = add nsw i32 %i.ps, %i.fn
  %i.qb = load i32, ptr %45, align 8, !tbaa !33
  %i.qc = and i32 %i.qb, 4095
  %i.qd = load ptr, ptr %i.fx, align 8, !tbaa !80
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %47, i32 noundef %i.pz, i32 noundef %i.qa, i32 noundef %i.qc, ptr noundef %i.qd, i64 noundef 0)
          to label %bb.bm unwind label %bb.cc

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #20
  store <2 x i32> %i.ox, ptr %49, align 8, !tbaa !45
  store i32 %i.ps, ptr %i.fy, align 8, !tbaa !49
  store i32 %i.py, ptr %i.fz, align 4, !tbaa !50
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %48, ptr noundef nonnull align 8 dereferenceable(208) %47, ptr noundef nonnull align 4 dereferenceable(16) %49)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit unwind label %bb.cd

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit:               ; preds = %bb.bm
  %i.qe = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %46, ptr noundef nonnull align 8 dereferenceable(208) %48)
          to label %bb.bn unwind label %bb.ce     ; 0 uses

bb.bn:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  %i.qf = load ptr, ptr %0, align 8, !tbaa !56
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !302
  %i.qh = getelementptr inbounds nuw [208 x i8], ptr %i.qg, i64 %indvars.iv ; 5 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !43 ; 6 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qh, i64 12
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !42 ; 5 uses
  %i.qm = load i32, ptr %i.qh, align 8, !tbaa !33 ; 2 uses
  %i.qn = lshr i32 %i.qm, 5                       ; 3 uses
  %i.qo = and i32 %i.qn, 127                      ; 2 uses
  %i.qp = add nuw nsw i32 %i.qo, 1                ; 6 uses
  %i.qq = mul i32 %i.qp, %i.ql                    ; 5 uses
  %i.qr = and i32 %i.qm, 31
  %i.qs = icmp eq i32 %i.qr, 0
  br i1 %i.qs, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %.noexc322 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc322:                                        ; preds = %bb.bo
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZN2cv12_GLOBAL__N_114calcSharrDerivERKNS_3MatERS1_, ptr noundef nonnull @.str.1, i32 noundef 25) #21
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %.noexc322
  unreachable

bb.bq:                                            ; preds = %.noexc322
  %i.qt = landingpad { ptr, i32 }
          cleanup
  %i.qu = load ptr, ptr %20, align 8, !tbaa !37   ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.qw = icmp eq ptr %i.qu, %i.qv
  br i1 %i.qw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i318: ; preds = %bb.bq
  %i.qx = load i64, ptr %i.qv, align 8, !tbaa !38
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i319: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i318
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %.body323

bb.br:                                            ; preds = %bb.bn
  %i.qz = shl nuw nsw i32 %i.qp, 6
  %i.ra = add nsw i32 %i.qz, -29
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %46, i32 noundef %i.qj, i32 noundef %i.ql, i32 noundef %i.ra)
          to label %.noexc325 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc325:                                        ; preds = %bb.br
  %i.rb = add nsw i32 %i.ql, 2
  %i.rc = mul nsw i32 %i.qp, %i.rb
  %i.rd = zext i32 %i.rc to i64
  %i.re = add nuw nsw i64 %i.rd, 15
  %i.rf = and i64 %i.re, 8589934576               ; 2 uses
  %i.rg = trunc i64 %i.rf to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.rh = shl nsw i32 %i.rg, 1
  %i.ri = add nsw i32 %i.rh, 64                   ; 2 uses
  %i.rj = sext i32 %i.ri to i64                   ; 2 uses
  store ptr %i.ga, ptr %22, align 8, !tbaa !83
  %.not.i.i.i = icmp ugt i32 %i.ri, 520
  store i64 %i.rj, ptr %i.gb, align 8, !tbaa !84
  br i1 %.not.i.i.i, label %bb.bs, label %_ZN2cv10AutoBufferIsLm520EEC2Em.exit.i

bb.bs:                                            ; preds = %.noexc325
  %i.rk = shl nuw nsw i64 %i.rj, 1
  %.inv.i.i.i = icmp sgt i32 %i.rg, -33
  %i.rl = select i1 %.inv.i.i.i, i64 %i.rk, i64 -1
  %i.rm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.rl) #23
          to label %.noexc326 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc326:                                        ; preds = %bb.bs
  store ptr %i.rm, ptr %22, align 8, !tbaa !83
  br label %_ZN2cv10AutoBufferIsLm520EEC2Em.exit.i

_ZN2cv10AutoBufferIsLm520EEC2Em.exit.i:           ; preds = %.noexc326, %.noexc325
  %i.rn = phi ptr [ %i.ga, %.noexc325 ], [ %i.rm, %.noexc326 ] ; 3 uses
  %i.ro = zext nneg i32 %i.qp to i64              ; 10 uses
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %i.rn, i64 %i.ro
  %i.rq = ptrtoint ptr %i.rp to i64
  %i.rr = add i64 %i.rq, 15
  %i.rs = and i64 %i.rr, -16
  %i.rt = inttoptr i64 %i.rs to ptr               ; 26 uses
  %sext.i = shl i64 %i.rf, 32
  %i.ru = ashr exact i64 %sext.i, 31              ; 14 uses
  %i.rv = getelementptr i8, ptr %i.rt, i64 %i.ru  ; 22 uses
  %i.rw = icmp sgt i32 %i.qj, 0
  br i1 %i.rw, label %.lr.ph126.i, label %._crit_edge127.i

.lr.ph126.i:                                      ; preds = %_ZN2cv10AutoBufferIsLm520EEC2Em.exit.i
  %i.rx = icmp ne i32 %i.qj, 1
  %i.ry = zext i1 %i.rx to i64
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qh, i64 24
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !80 ; 7 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.qh, i64 128
  %i.sc = load i64, ptr %i.sb, align 8, !tbaa !85 ; 5 uses
  %i.sd = add nsw i32 %i.qj, -1
  %i.se = call i32 @llvm.usub.sat.i32(i32 %i.qj, i32 2)
  %i.sf = load ptr, ptr %i.gc, align 8, !tbaa !80 ; 4 uses
  %i.sg = load i64, ptr %i.gd, align 8, !tbaa !85 ; 3 uses
  %i.sh = icmp sgt i32 %i.qq, 0                   ; 2 uses
  %i.si = icmp sgt i32 %i.ql, 1
  %i.sj = select i1 %i.si, i32 %i.qp, i32 0
  %i.sk = call i32 @llvm.smax.i32(i32 %i.ql, i32 2)
  %i.sl = add nsw i32 %i.sk, -2
  %i.sm = mul i32 %i.qp, %i.sl
  %i.sn = zext nneg i32 %i.sj to i64              ; 4 uses
  %i.so = zext i32 %i.sm to i64                   ; 4 uses
  %i.sp = sext i32 %i.qq to i64                   ; 4 uses
  %i.sq = zext nneg i32 %i.sd to i64
  %wide.trip.count142.i = zext nneg i32 %i.qj to i64 ; 3 uses
  %i.sr = zext nneg i32 %i.se to i64
  %wide.trip.count.i = zext i32 %i.qq to i64      ; 13 uses
  %scevgep = getelementptr i8, ptr %i.rt, i64 2
  %i.ss = shl nuw nsw i64 %wide.trip.count.i, 1   ; 4 uses
  %i.st = and i32 %i.qn, 127
  %i.su = zext nneg i32 %i.st to i64              ; 2 uses
  %i.sv = shl nuw nsw i64 %i.su, 1                ; 7 uses
  %i.sw = getelementptr i8, ptr %scevgep, i64 %i.ss
  %scevgep658 = getelementptr i8, ptr %i.sw, i64 %i.sv
  %scevgep659 = getelementptr i8, ptr %i.rt, i64 2
  %scevgep660 = getelementptr i8, ptr %scevgep659, i64 %i.sv
  %scevgep661 = getelementptr i8, ptr %i.rt, i64 -2 ; 2 uses
  %i.sx = sub nsw i64 %i.ss, %i.sv
  %scevgep662 = getelementptr i8, ptr %scevgep661, i64 %i.sx
  %i.sy = mul nsw i64 %i.su, -2
  %scevgep663 = getelementptr i8, ptr %scevgep661, i64 %i.sy
  %scevgep664 = getelementptr i8, ptr %i.rt, i64 2 ; 2 uses
  %i.sz = getelementptr i8, ptr %scevgep664, i64 %i.ss
  %i.ta = getelementptr i8, ptr %i.sz, i64 %i.sv
  %scevgep665 = getelementptr i8, ptr %i.ta, i64 %i.ru
  %i.tb = getelementptr i8, ptr %scevgep664, i64 %i.sv
  %scevgep666 = getelementptr i8, ptr %i.tb, i64 %i.ru
  %scevgep667 = getelementptr i8, ptr %i.rt, i64 -2 ; 2 uses
  %i.tc = add nsw i64 %i.ss, %i.ru                ; 2 uses
  %i.td = sub nsw i64 %i.tc, %i.sv
  %scevgep668 = getelementptr i8, ptr %scevgep667, i64 %i.td
  %i.te = sub nsw i64 %i.ru, %i.sv
  %scevgep669 = getelementptr i8, ptr %scevgep667, i64 %i.te
  %scevgep670 = getelementptr i8, ptr %i.rt, i64 %i.tc
  %i.tf = add nsw i64 %wide.trip.count142.i, -1
  %i.tg = mul i64 %i.sg, %i.tf
  %i.th = shl nuw nsw i64 %wide.trip.count.i, 2
  %i.ti = getelementptr i8, ptr %i.sf, i64 %i.tg
  %scevgep671 = getelementptr i8, ptr %i.ti, i64 %i.th ; 2 uses
  %i.tj = shl nsw i64 %i.sp, 1                    ; 5 uses
  %i.tk = add nsw i64 %i.tj, %i.ru                ; 2 uses
  %i.tl = shl nuw nsw i64 %i.so, 1                ; 3 uses
  %i.tm = shl nuw nsw i64 %i.sn, 1                ; 3 uses
  %i.tn = add nsw i64 %i.ru, -2                   ; 2 uses
  %i.to = and i32 %i.qn, 127
  %i.tp = zext nneg i32 %i.to to i64              ; 3 uses
  %i.tq = add nuw nsw i64 %i.so, %i.tp
  %i.tr = shl nuw nsw i64 %i.tq, 1                ; 3 uses
  %i.ts = add nuw nsw i64 %i.sn, %i.tp
  %i.tt = shl nuw nsw i64 %i.ts, 1                ; 2 uses
  %i.tu = add nsw i64 %i.tl, %i.ru
  %i.tv = add nsw i64 %i.tm, %i.ru
  %i.tw = add nsw i64 %i.sp, %i.tp
  %i.tx = shl nsw i64 %i.tw, 1                    ; 3 uses
  %scevgep803 = getelementptr i8, ptr %i.sa, i64 %wide.trip.count.i ; 2 uses
  %i.ty = add nsw i64 %wide.trip.count142.i, -1
  %i.tz = mul i64 %i.sc, %i.ty
  %i.ua = getelementptr i8, ptr %i.sa, i64 %i.tz
  %scevgep804 = getelementptr i8, ptr %i.ua, i64 %wide.trip.count.i ; 2 uses
  %i.ub = shl nuw nsw i64 %wide.trip.count.i, 1   ; 2 uses
  %i.uc = getelementptr i8, ptr %i.rt, i64 %i.ub
  %scevgep805 = getelementptr i8, ptr %i.uc, i64 %i.ru ; 3 uses
  %scevgep806 = getelementptr i8, ptr %i.rt, i64 %i.ub
  %i.ud = insertelement <4 x ptr> poison, ptr %i.sf, i64 0
  %i.ue = shufflevector <4 x ptr> %i.ud, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.uf = insertelement <4 x ptr> poison, ptr %scevgep670, i64 0
  %i.ug = insertelement <4 x ptr> %i.uf, ptr %scevgep668, i64 1
  %i.uh = insertelement <4 x ptr> %i.ug, ptr %scevgep665, i64 2
  %i.ui = insertelement <4 x ptr> %i.uh, ptr %scevgep662, i64 3
  %i.uj = insertelement <4 x ptr> poison, ptr %i.rv, i64 0
  %i.uk = insertelement <4 x ptr> %i.uj, ptr %scevgep669, i64 1
  %i.ul = insertelement <4 x ptr> %i.uk, ptr %scevgep666, i64 2
  %i.um = insertelement <4 x ptr> %i.ul, ptr %scevgep663, i64 3
  %i.un = insertelement <4 x ptr> poison, ptr %scevgep671, i64 0
  %i.uo = shufflevector <4 x ptr> %i.un, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.up = insertelement <4 x ptr> poison, ptr %scevgep804, i64 0
  %i.uq = insertelement <4 x ptr> %i.up, ptr %scevgep805, i64 1
  %i.ur = insertelement <4 x ptr> poison, ptr %i.rt, i64 0
  %i.us = shufflevector <4 x ptr> %i.ur, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ut = insertelement <4 x ptr> poison, ptr %i.sa, i64 0
  %i.uu = insertelement <4 x ptr> %i.ut, ptr %i.rv, i64 1
  %i.uv = insertelement <4 x ptr> poison, ptr %scevgep806, i64 0
  %i.uw = shufflevector <4 x ptr> %i.uv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ux = insertelement <2 x ptr> poison, ptr %i.sa, i64 0
  %i.uy = insertelement <2 x ptr> poison, ptr %scevgep805, i64 0
  %i.uz = shufflevector <2 x ptr> %i.uy, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.va = insertelement <2 x ptr> poison, ptr %i.rv, i64 0
  %i.vb = shufflevector <2 x ptr> %i.va, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.vc = insertelement <2 x ptr> poison, ptr %scevgep804, i64 0
  %min.iters.check808 = icmp ult i32 %i.qq, 16
  %stride.check816 = icmp slt i64 %i.sc, 0
  %n.vec839 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n847 = icmp eq i64 %n.vec839, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.vd = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check723 = icmp samesign ult i32 %i.qo, 23
  %diff.check = icmp ult i64 %i.tx, 14
  %op.rdx854 = or disjoint i64 %i.ru, 1
  %op.rdx855 = add nsw i64 %op.rdx854, %i.tx
  %diff.check727 = icmp ult i64 %op.rdx855, 15
  %conflict.rdx728 = or i1 %diff.check, %diff.check727
  %diff.check731.a = icmp ult i64 %i.tr, 14
  %conflict.rdx732.a = or i1 %conflict.rdx728, %diff.check731.a
  %op.rdx852 = or disjoint i64 %i.ru, 1
  %op.rdx853 = add nsw i64 %op.rdx852, %i.tt
  %diff.check733.a = icmp ult i64 %op.rdx853, 15
  %conflict.rdx734.a = or i1 %conflict.rdx732.a, %diff.check733.a
  %op.rdx850 = or disjoint i64 %i.ru, 1
  %op.rdx851 = add nsw i64 %op.rdx850, %i.tr
  %diff.check735.a = icmp ult i64 %op.rdx851, 15
  %conflict.rdx736.a = or i1 %conflict.rdx734.a, %diff.check735.a
  %i.ve = sub nsw i64 %i.ru, %i.tx
  %i.vf = add nsw i64 %i.ve, -3
  %diff.check737.a = icmp ult i64 %i.vf, 15
  %conflict.rdx738.a = or i1 %conflict.rdx736.a, %diff.check737.a
  %i.vg = sub nsw i64 %i.tm, %i.tj
  %diff.check739.a = icmp ugt i64 %i.vg, -16
  %conflict.rdx740.a = or i1 %conflict.rdx738.a, %diff.check739.a
  %i.vh = sub nsw i64 %i.tl, %i.tj
  %diff.check741.a = icmp ugt i64 %i.vh, -16
  %conflict.rdx742.a = or i1 %conflict.rdx740.a, %diff.check741.a
  %i.vi = sub nsw i64 %i.tj, %i.tv
  %diff.check743.a = icmp ugt i64 %i.vi, -16
  %conflict.rdx744.a = or i1 %conflict.rdx742.a, %diff.check743.a
  %i.vj = sub nsw i64 %i.tj, %i.tu
  %diff.check745.a = icmp ugt i64 %i.vj, -16
  %conflict.rdx746.a = or i1 %conflict.rdx744.a, %diff.check745.a
  %i.vk = sub nsw i64 %i.tt, %i.tn
  %diff.check747 = icmp ugt i64 %i.vk, -16
  %conflict.rdx748 = or i1 %conflict.rdx746.a, %diff.check747
  %i.vl = sub nsw i64 %i.tr, %i.tn
  %diff.check749 = icmp ugt i64 %i.vl, -16
  %conflict.rdx750 = or i1 %conflict.rdx748, %diff.check749
  %i.vm = sub nsw i64 %i.tm, %i.tk
  %diff.check751 = icmp ugt i64 %i.vm, -16
  %conflict.rdx752 = or i1 %conflict.rdx750, %diff.check751
  %i.vn = sub nsw i64 %i.tl, %i.tk
  %diff.check753 = icmp ugt i64 %i.vn, -16
  %conflict.rdx754 = or i1 %conflict.rdx752, %diff.check753
  %n.vec756 = and i64 %i.ro, 248                  ; 3 uses
  %cmp.n765 = icmp eq i64 %n.vec756, %i.ro
  %min.iters.check = icmp ult i32 %i.qq, 8
  %i.vo = icmp ult <4 x ptr> %i.ue, %i.ui
  %i.vp = icmp ult <4 x ptr> %i.um, %i.uo
  %stride.check = icmp slt i64 %i.sg, 0
  %i.vq = and <4 x i1> %i.vo, %i.vp
  %bound0683 = icmp ult ptr %i.sf, %scevgep658
  %bound1684 = icmp ult ptr %scevgep660, %scevgep671
  %found.conflict685 = and i1 %bound0683, %bound1684
  %i.vr = bitcast <4 x i1> %i.vq to i4
  %i.vs = icmp ne i4 %i.vr, 0
  %op.rdx = or i1 %i.vs, %found.conflict685
  %op.rdx849 = or i1 %op.rdx, %stride.check
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge124.i, %.lr.ph126.i
  %indvars.iv139.i = phi i64 [ 0, %.lr.ph126.i ], [ %indvars.iv.next140.i, %._crit_edge124.i ] ; 6 uses
  %.not.i = icmp eq i64 %indvars.iv139.i, 0
  %i.vt = add nuw nsw i64 %indvars.iv139.i, 4294967295
  %i.vu = select i1 %.not.i, i64 %i.ry, i64 %i.vt
  %sext148.i = shl i64 %i.vu, 32
  %i.vv = ashr exact i64 %sext148.i, 32
  %i.vw = mul i64 %i.vv, %i.sc                    ; 2 uses
  %i.vx = getelementptr i8, ptr %i.sa, i64 %i.vw  ; 6 uses
  %i.vy = mul i64 %indvars.iv139.i, %i.sc
  %i.vz = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.vy ; 4 uses
  %i.wa = icmp samesign ult i64 %indvars.iv139.i, %i.sq
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, 1 ; 3 uses
  %i.wb = select i1 %i.wa, i64 %indvars.iv.next140.i, i64 %i.sr
  %i.wc = mul i64 %i.wb, %i.sc                    ; 2 uses
  %i.wd = getelementptr i8, ptr %i.sa, i64 %i.wc  ; 6 uses
  %i.we = mul i64 %indvars.iv139.i, %i.sg
  %i.wf = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.we ; 2 uses
  br i1 %i.sh, label %.lr.ph.i.preheader, label %._crit_edge.i321

.lr.ph.i.preheader:                               ; preds = %bb.bt
  br i1 %min.iters.check808, label %.lr.ph.i.preheader858, label %vector.memcheck809

vector.memcheck809:                               ; preds = %.lr.ph.i.preheader
  %i.wg = getelementptr i8, ptr %scevgep803, i64 %i.wc ; 2 uses
  %i.wh = getelementptr i8, ptr %scevgep803, i64 %i.vw ; 2 uses
  %i.wi = insertelement <4 x ptr> %i.uu, ptr %i.wd, i64 2
  %i.wj = insertelement <4 x ptr> %i.wi, ptr %i.vx, i64 3
  %i.wk = icmp ult <4 x ptr> %i.wj, %i.uw
  %i.wl = insertelement <2 x ptr> %i.ux, ptr %i.wd, i64 1
  %i.wm = icmp ult <2 x ptr> %i.wl, %i.uz
  %i.wn = insertelement <2 x ptr> %i.vc, ptr %i.wg, i64 1
  %i.wo = icmp ult <2 x ptr> %i.vb, %i.wn
  %bound0834 = icmp ult ptr %i.rv, %i.wh
  %bound1835 = icmp ult ptr %i.vx, %scevgep805
  %i.wp = insertelement <4 x ptr> %i.uq, ptr %i.wg, i64 2
  %i.wq = insertelement <4 x ptr> %i.wp, ptr %i.wh, i64 3
  %i.wr = icmp ugt <4 x ptr> %i.wq, %i.us
  %i.ws = shufflevector <2 x i1> %i.wo, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.wt = insertelement <8 x i1> %i.ws, i1 %bound0834, i64 6
  %i.wu = insertelement <8 x i1> %i.wt, i1 %stride.check816, i64 7
  %i.wv = shufflevector <4 x i1> %i.wr, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ww = shufflevector <8 x i1> %i.wv, <8 x i1> %i.wu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.wx = shufflevector <2 x i1> %i.wm, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.wy = shufflevector <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, <8 x i1> %i.wx, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 7>
  %i.wz = insertelement <8 x i1> %i.wy, i1 %bound1835, i64 6
  %i.xa = shufflevector <4 x i1> %i.wk, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xb = shufflevector <8 x i1> %i.xa, <8 x i1> %i.wz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.xc = and <8 x i1> %i.ww, %i.xb
  %i.xd = bitcast <8 x i1> %i.xc to i8
  %.not856 = icmp eq i8 %i.xd, 0
  br i1 %.not856, label %vector.body840, label %.lr.ph.i.preheader858

vector.body840:                                   ; preds = %vector.memcheck809, %vector.body840
  %index841 = phi i64 [ %index.next845, %vector.body840 ], [ 0, %vector.memcheck809 ] ; 6 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.vx, i64 %index841
  %wide.load842 = load <8 x i8>, ptr %i.xe, align 1, !tbaa !38, !alias.scope !303
  %i.xf = zext <8 x i8> %wide.load842 to <8 x i32> ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wd, i64 %index841
  %wide.load843 = load <8 x i8>, ptr %i.xg, align 1, !tbaa !38, !alias.scope !304
  %i.xh = zext <8 x i8> %wide.load843 to <8 x i32> ; 2 uses
  %i.xi = add nuw nsw <8 x i32> %i.xh, %i.xf
  %i.xj = mul nuw nsw <8 x i32> %i.xi, splat (i32 3)
  %i.xk = getelementptr inbounds nuw i8, ptr %i.vz, i64 %index841
  %wide.load844 = load <8 x i8>, ptr %i.xk, align 1, !tbaa !38, !alias.scope !305
  %i.xl = zext <8 x i8> %wide.load844 to <8 x i32>
  %i.xm = mul nuw nsw <8 x i32> %i.xl, splat (i32 10)
  %i.xn = add nuw nsw <8 x i32> %i.xj, %i.xm
  %i.xo = sub nsw <8 x i32> %i.xh, %i.xf
  %i.xp = trunc nuw nsw <8 x i32> %i.xn to <8 x i16>
  %i.xq = getelementptr inbounds nuw [2 x i8], ptr %i.rt, i64 %index841
  store <8 x i16> %i.xp, ptr %i.xq, align 16, !tbaa !87, !alias.scope !306, !noalias !307
  %i.xr = trunc nsw <8 x i32> %i.xo to <8 x i16>
  %i.xs = getelementptr inbounds nuw [2 x i8], ptr %i.rv, i64 %index841
  store <8 x i16> %i.xr, ptr %i.xs, align 16, !tbaa !87, !alias.scope !308, !noalias !309
  %index.next845 = add nuw i64 %index841, 8       ; 2 uses
  %i.xt = icmp eq i64 %index.next845, %n.vec839
  br i1 %i.xt, label %middle.block846, label %vector.body840, !llvm.loop !276

middle.block846:                                  ; preds = %vector.body840
  br i1 %cmp.n847, label %._crit_edge.i321, label %.lr.ph.i.preheader858

.lr.ph.i.preheader858:                            ; preds = %vector.memcheck809, %.lr.ph.i.preheader, %middle.block846
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck809 ], [ 0, %.lr.ph.i.preheader ], [ %n.vec839, %middle.block846 ] ; 8 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader858
  %i.xu = getelementptr inbounds nuw i8, ptr %i.vx, i64 %indvars.iv.i.ph
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !38
  %i.xw = zext i8 %i.xv to i32                    ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.wd, i64 %indvars.iv.i.ph
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !38
  %i.xz = zext i8 %i.xy to i32                    ; 2 uses
  %i.ya = add nuw nsw i32 %i.xz, %i.xw
  %i.yb = mul nuw nsw i32 %i.ya, 3
  %i.yc = getelementptr inbounds nuw i8, ptr %i.vz, i64 %indvars.iv.i.ph
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !38
  %i.ye = zext i8 %i.yd to i32
  %i.yf = mul nuw nsw i32 %i.ye, 10
  %i.yg = add nuw nsw i32 %i.yb, %i.yf
  %i.yh = sub nsw i32 %i.xz, %i.xw
  %i.yi = trunc nuw nsw i32 %i.yg to i16
  %i.yj = getelementptr inbounds nuw [2 x i8], ptr %i.rt, i64 %indvars.iv.i.ph
  store i16 %i.yi, ptr %i.yj, align 16, !tbaa !87
  %i.yk = trunc nsw i32 %i.yh to i16
  %i.yl = getelementptr inbounds nuw [2 x i8], ptr %i.rv, i64 %indvars.iv.i.ph
  store i16 %i.yk, ptr %i.yl, align 16, !tbaa !87
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader858
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader858 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ym = icmp eq i64 %indvars.iv.i.ph, %i.vd
  br i1 %i.ym, label %._crit_edge.i321, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.vx, i64 %indvars.iv.i
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !38
  %i.yp = zext i8 %i.yo to i32                    ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.wd, i64 %indvars.iv.i
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !38
  %i.ys = zext i8 %i.yr to i32                    ; 2 uses
  %i.yt = add nuw nsw i32 %i.ys, %i.yp
  %i.yu = mul nuw nsw i32 %i.yt, 3
  %i.yv = getelementptr inbounds nuw i8, ptr %i.vz, i64 %indvars.iv.i
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !38
  %i.yx = zext i8 %i.yw to i32
  %i.yy = mul nuw nsw i32 %i.yx, 10
  %i.yz = add nuw nsw i32 %i.yu, %i.yy
  %i.za = sub nsw i32 %i.ys, %i.yp
  %i.zb = trunc nuw nsw i32 %i.yz to i16
  %i.zc = getelementptr inbounds nuw [2 x i8], ptr %i.rt, i64 %indvars.iv.i
  store i16 %i.zb, ptr %i.zc, align 2, !tbaa !87
  %i.zd = trunc nsw i32 %i.za to i16
  %i.ze = getelementptr inbounds nuw [2 x i8], ptr %i.rv, i64 %indvars.iv.i
  store i16 %i.zd, ptr %i.ze, align 2, !tbaa !87
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.vx, i64 %indvars.iv.next.i
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !38
  %i.zh = zext i8 %i.zg to i32                    ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.wd, i64 %indvars.iv.next.i
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !38
  %i.zk = zext i8 %i.zj to i32                    ; 2 uses
  %i.zl = add nuw nsw i32 %i.zk, %i.zh
  %i.zm = mul nuw nsw i32 %i.zl, 3
end_hunk_0
