Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/maxpool_layer?download=true
inline.NumInlined: 761
inline.NumDeleted: 370
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL10maxPool32fEPKvPvRKNS5_14dnn5_v202606059ConvStateEE3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %6, align 8, !tbaa !53    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i191.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i191.i.i.i: ; preds = %bb.w
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !48
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192.i.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i191.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %common.resume.i.i.i

_ZNK2cv8MatShapeixEm.exit194.i.i.i:               ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !81
  br label %bb.x

._crit_edge124.i.i.i:                             ; preds = %.thread159.i.i.i
  %i.bq = zext nneg i32 %i.au to i64              ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.pre121.i.i.i, i64 84
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bq
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !81
  %.phi.trans.insert125.i.i.i = getelementptr inbounds nuw i8, ptr %.pre121.i.i.i, i64 124
  %.pre126.i.i.i = load i32, ptr %.phi.trans.insert125.i.i.i, align 4, !tbaa !66
  %.pre128.i.i.i = tail call i32 @llvm.smax.i32(i32 %.pre126.i.i.i, i32 1)
  br label %bb.ab

bb.x:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit194.i.i.i, %_ZNK2cv8MatShapeixEm.exit188.i._crit_edge.i.i
  %narrow.i195.i.i.i = phi i32 [ %i.bg, %_ZNK2cv8MatShapeixEm.exit188.i._crit_edge.i.i ], [ %i.bf, %_ZNK2cv8MatShapeixEm.exit194.i.i.i ] ; 2 uses
  %.ph.i.i.i = phi i32 [ 1, %_ZNK2cv8MatShapeixEm.exit188.i._crit_edge.i.i ], [ %i.bp, %_ZNK2cv8MatShapeixEm.exit194.i.i.i ]
  %i.bu = icmp samesign ult i32 %i.d, %narrow.i195.i.i.i
  br i1 %i.bu, label %_ZNK2cv8MatShapeixEm.exit200.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.22, i32 noundef 103) #20
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197.i.i.i: ; preds = %bb.aa
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !48
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198.i.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %common.resume.i.i.i

_ZNK2cv8MatShapeixEm.exit200.i.i.i:               ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.an
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !81
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit200.i.i.i, %._crit_edge124.i.i.i
  %i.ce = phi i32 [ 1, %._crit_edge124.i.i.i ], [ %.ph.i.i.i, %_ZNK2cv8MatShapeixEm.exit200.i.i.i ] ; 3 uses
  %i.cf = phi i64 [ %i.bq, %._crit_edge124.i.i.i ], [ %i.as, %_ZNK2cv8MatShapeixEm.exit200.i.i.i ]
  %i.cg = phi i32 [ %i.au, %._crit_edge124.i.i.i ], [ %i.ar, %_ZNK2cv8MatShapeixEm.exit200.i.i.i ]
  %i.ch = phi i32 [ 1, %._crit_edge124.i.i.i ], [ %i.aq, %_ZNK2cv8MatShapeixEm.exit200.i.i.i ] ; 6 uses
  %i.ci = phi i32 [ 1, %._crit_edge124.i.i.i ], [ %i.af, %_ZNK2cv8MatShapeixEm.exit200.i.i.i ] ; 2 uses
  %i.cj = phi ptr [ %.pre121.i.i.i, %._crit_edge124.i.i.i ], [ %i.ae, %_ZNK2cv8MatShapeixEm.exit200.i.i.i ] ; 16 uses
  %i.ck = phi i32 [ %i.bt, %._crit_edge124.i.i.i ], [ %i.bd, %_ZNK2cv8MatShapeixEm.exit200.i.i.i ] ; 7 uses
  %narrow.i201.pre-phi.i.i.i = phi i32 [ %.pre128.i.i.i, %._crit_edge124.i.i.i ], [ %narrow.i195.i.i.i, %_ZNK2cv8MatShapeixEm.exit200.i.i.i ]
  %i.cl = phi i32 [ 1, %._crit_edge124.i.i.i ], [ %i.cd, %_ZNK2cv8MatShapeixEm.exit200.i.i.i ] ; 3 uses
  %i.cm = icmp samesign ult i32 %i.cg, %narrow.i201.pre-phi.i.i.i
  br i1 %i.cm, label %_ZNK2cv8MatShapeixEm.exit206.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.22, i32 noundef 103) #20
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i204.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i203.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i203.i.i.i: ; preds = %bb.ae
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !48
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i204.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i204.i.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i203.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %common.resume.i.i.i

_ZNK2cv8MatShapeixEm.exit206.i.i.i:               ; preds = %bb.ab
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 136
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cf
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !81 ; 5 uses
  %i.cw = mul i32 %i.ch, %.fr74.i.i.i
  %i.cx = mul i32 %i.cw, %i.ci
  %i.cy = mul i32 %i.cx, %i.ck                    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !81 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cj, i64 28
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !81 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !81 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !81 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cj, i64 52
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !81 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !81 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cj, i64 228
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !81
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cj, i64 240
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !81
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cj, i64 232
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !81
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cj, i64 244
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !81
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cj, i64 236
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !81
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cj, i64 248
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !81 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cj, i64 280
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cj, i64 288
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !80
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !57 ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = lshr i64 %i.ed, 2                       ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cj, i64 256
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !57
  %i.eh = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !313, !nonnull !68, !align !128
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !110 ; 3 uses
  %i.ek = mul i32 %i.cy, %.val2
  %i.el = sext i32 %i.ek to i64                   ; 3 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !314, !nonnull !68, !align !128
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !110
  %i.eq = mul i32 %.fr74.i.i.i, %.val2
  %i.er = mul i32 %i.eq, %i.ce
  %i.es = mul i32 %i.er, %i.cl
  %i.et = mul i32 %i.es, %i.cv
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.eu
  %i.ew = icmp slt i32 %.val2, %.val3
  br i1 %i.ew, label %.preheader10.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL10maxPool32fEPKvPvRKNS1_14dnn5_v202606059ConvStateEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit"

.preheader10.lr.ph.i.i.i:                         ; preds = %_ZNK2cv8MatShapeixEm.exit206.i.i.i
  %i.ex = trunc i64 %i.ee to i32
  %i.ey = icmp sgt i32 %i.ce, 0
  %i.ez = mul i32 %i.cv, %.fr74.i.i.i             ; 4 uses
  %i.fa = icmp sgt i32 %i.ez, 0
  %i.fb = icmp slt i32 %i.ex, 1                   ; 2 uses
  %i.fc = icmp slt i32 %.fr74.i.i.i, 1            ; 2 uses
  %i.fd = sext i32 %i.ez to i64                   ; 3 uses
  %i.fe = sext i32 %i.cy to i64                   ; 3 uses
  %i.ff = icmp sgt i32 %i.cl, 0
  %or.cond.i.i.i = select i1 %i.ey, i1 %i.ff, i1 false
  br i1 %or.cond.i.i.i, label %.preheader10.us.preheader.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL10maxPool32fEPKvPvRKNS1_14dnn5_v202606059ConvStateEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit"

.preheader10.us.preheader.i.i.i:                  ; preds = %.preheader10.lr.ph.i.i.i
  %i.fg = sext i32 %.fr74.i.i.i to i64            ; 6 uses
  %wide.trip.count.i.i.i = zext i32 %i.ez to i64  ; 3 uses
  %wide.trip.count95.i.i.i = and i64 %i.ee, 2147483647 ; 2 uses
  %wide.trip.count90.i.i.i = zext i32 %.fr74.i.i.i to i64 ; 14 uses
  %wide.trip.count115.i.i.i = zext nneg i32 %i.dw to i64
  %i.fh = shl nuw nsw i64 %wide.trip.count90.i.i.i, 2
  %i.fi = add nsw i64 %i.el, %wide.trip.count90.i.i.i
  %i.fj = shl nsw i64 %i.fe, 2
  %i.fk = mul i32 %i.ch, %i.dg
  %i.fl = add i32 %i.fk, %i.di
  %i.fm = mul i32 %i.fl, %i.ck
  %i.fn = add i32 %i.fm, %i.dk
  %i.fo = mul i32 %i.ck, %i.ch
  %i.fp = mul i32 %i.fo, %i.da
  %i.fq = mul i32 %i.ck, %i.dc
  %i.fr = mul i32 %.fr74.i.i.i, %i.de
  %i.fs = shl nsw i64 %i.fd, 2
  %i.ft = shl nsw i64 %i.fg, 2
  %i.fu = shl nsw i64 %i.fg, 2
  %i.fv = shl nuw nsw i64 %wide.trip.count90.i.i.i, 2
  %i.fw = add nsw i64 %i.el, %wide.trip.count90.i.i.i
  %i.fx = shl nsw i64 %i.fe, 2
  %i.fy = shl nsw i64 %i.fd, 2
  %i.fz = shl nsw i64 %i.fg, 2
  %i.ga = shl nsw i64 %i.fg, 2
  %min.iters.check83 = icmp ult i32 %i.ez, 8
  %n.vec85 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n90 = icmp eq i64 %n.vec85, %wide.trip.count.i.i.i
  %min.iters.check65 = icmp ult i32 %.fr74.i.i.i, 8
  %n.vec71 = and i64 %wide.trip.count90.i.i.i, 2147483640 ; 3 uses
  %cmp.n80 = icmp eq i64 %n.vec71, %wide.trip.count90.i.i.i
  %xtraiter = and i64 %wide.trip.count90.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.gb = add nsw i64 %wide.trip.count90.i.i.i, -1
  %min.iters.check = icmp ult i32 %.fr74.i.i.i, 8
  %n.vec = and i64 %wide.trip.count90.i.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count90.i.i.i
  %xtraiter93 = and i64 %wide.trip.count90.i.i.i, 1
  %lcmp.mod94.not = icmp eq i64 %xtraiter93, 0
  %i.gc = add nsw i64 %wide.trip.count90.i.i.i, -1
  br label %.preheader10.us.i.i.i

.preheader10.us.i.i.i:                            ; preds = %._crit_edge47.split.us.us.i.i.i, %.preheader10.us.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge47.split.us.us.i.i.i ], [ 0, %.preheader10.us.preheader.i.i.i ] ; 3 uses
  %.015171.us.i.i.i = phi i32 [ %i.le, %._crit_edge47.split.us.us.i.i.i ], [ %.val2, %.preheader10.us.preheader.i.i.i ]
  %.015270.us.i.i.i = phi ptr [ %i.lc, %._crit_edge47.split.us.us.i.i.i ], [ %i.ev, %.preheader10.us.preheader.i.i.i ]
  %.015568.us.i.i.i = phi ptr [ %i.lf, %._crit_edge47.split.us.us.i.i.i ], [ %i.em, %.preheader10.us.preheader.i.i.i ] ; 3 uses
  %i.gd = mul i64 %i.fx, %indvar
  %i.ge = mul i64 %i.fj, %indvar
  %invariant.gep.a = getelementptr i8, ptr %i.ej, i64 %i.gd
  %invariant.gep95 = getelementptr i8, ptr %i.ej, i64 %i.ge
  br label %.lr.ph43.us.us.i.i.i

.lr.ph43.us.us.i.i.i:                             ; preds = %._crit_edge.us.us.i.i.i, %.preheader10.us.i.i.i
  %.015045.us.us.i.i.i = phi i32 [ 0, %.preheader10.us.i.i.i ], [ %i.ld, %._crit_edge.us.us.i.i.i ] ; 5 uses
  %.115344.us.us.i.i.i = phi ptr [ %.015270.us.i.i.i, %.preheader10.us.i.i.i ], [ %i.lc, %._crit_edge.us.us.i.i.i ] ; 3 uses
  %i.gf = mul i32 %i.fp, %.015045.us.us.i.i.i
  %i.gg = sub i32 %i.gf, %i.fn
  %i.gh = mul nsw i32 %.015045.us.us.i.i.i, %i.da
  %i.gi = sub nsw i32 %i.gh, %i.dg                ; 2 uses
  %.not.us.us.i.i.i = icmp sge i32 %.015045.us.us.i.i.i, %i.dm
  %i.gj = icmp slt i32 %.015045.us.us.i.i.i, %i.do
  %or.cond.not2.not5.us.us.i.i.i = select i1 %.not.us.us.i.i.i, i1 %i.gj, i1 false
  %i.gk = mul nsw i32 %i.gi, %i.ch
  %i.gl = getelementptr i8, ptr %.115344.us.us.i.i.i, i64 %i.fv
  %i.gm = getelementptr i8, ptr %.115344.us.us.i.i.i, i64 %i.fh
  br label %bb.af

bb.af:                                            ; preds = %bb.ai, %.lr.ph43.us.us.i.i.i
  %indvar45 = phi i64 [ %indvar.next46, %bb.ai ], [ 0, %.lr.ph43.us.us.i.i.i ] ; 3 uses
  %.014942.us.us.i.i.i = phi i32 [ %i.lb, %bb.ai ], [ 0, %.lr.ph43.us.us.i.i.i ] ; 5 uses
  %.215441.us.us.i.i.i = phi ptr [ %i.lc, %bb.ai ], [ %.115344.us.us.i.i.i, %.lr.ph43.us.us.i.i.i ] ; 5 uses
  %i.gn = mul i64 %i.fy, %indvar45
  %i.go = mul i32 %i.fq, %.014942.us.us.i.i.i
  %i.gp = add i32 %i.gg, %i.go
  %i.gq = mul i64 %i.fs, %indvar45
  %.not169.us.us.i.i.i = icmp sge i32 %.014942.us.us.i.i.i, %i.dq
  %or.cond173.not3.us.us.i.i.i = select i1 %or.cond.not2.not5.us.us.i.i.i, i1 %.not169.us.us.i.i.i, i1 false
  %i.gr = icmp slt i32 %.014942.us.us.i.i.i, %i.ds
  %or.cond174.us.us.i.i.i = select i1 %or.cond173.not3.us.us.i.i.i, i1 %i.gr, i1 false
  %i.gs = select i1 %or.cond174.us.us.i.i.i, i32 %i.du, i32 %i.cv
  %i.gt = mul nsw i32 %.014942.us.us.i.i.i, %i.dc
  %i.gu = sub nsw i32 %i.gt, %i.di                ; 2 uses
  br i1 %i.fa, label %.lr.ph.us.us.i.i.i.preheader, label %.preheader9.us.us.i.i.i

.lr.ph.us.us.i.i.i.preheader:                     ; preds = %bb.af
  br i1 %min.iters.check83, label %.lr.ph.us.us.i.i.i.preheader92, label %vector.body86

vector.body86:                                    ; preds = %.lr.ph.us.us.i.i.i.preheader, %vector.body86
  %index87 = phi i64 [ %index.next88, %vector.body86 ], [ 0, %.lr.ph.us.us.i.i.i.preheader ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.215441.us.us.i.i.i, i64 %index87 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.gv, align 4, !tbaa !129
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.gw, align 4, !tbaa !129
  %index.next88 = add nuw i64 %index87, 8         ; 2 uses
  %i.gx = icmp eq i64 %index.next88, %n.vec85
  br i1 %i.gx, label %middle.block89, label %vector.body86, !llvm.loop !290

middle.block89:                                   ; preds = %vector.body86
  br i1 %cmp.n90, label %.preheader9.us.us.i.i.i, label %.lr.ph.us.us.i.i.i.preheader92

.lr.ph.us.us.i.i.i.preheader92:                   ; preds = %.lr.ph.us.us.i.i.i.preheader, %middle.block89
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.us.us.i.i.i.preheader ], [ %n.vec85, %middle.block89 ]
  br label %.lr.ph.us.us.i.i.i

.lr.ph.us.us.i.i.i:                               ; preds = %.lr.ph.us.us.i.i.i.preheader92, %.lr.ph.us.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.us.us.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph.us.us.i.i.i.preheader92 ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.215441.us.us.i.i.i, i64 %indvars.iv.i.i.i
  store float f0xFF7FFFFF, ptr %i.gy, align 4, !tbaa !129
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.preheader9.us.us.i.i.i, label %.lr.ph.us.us.i.i.i, !llvm.loop !291

.preheader9.us.us.i.i.i:                          ; preds = %.lr.ph.us.us.i.i.i, %middle.block89, %bb.af
  %i.gz = add nsw i32 %i.gu, %i.gk
  %i.ha = mul nsw i32 %i.gz, %i.ck
  %i.hb = sub i32 %i.ha, %i.dk
  %i.hc = getelementptr i8, ptr %i.gl, i64 %i.gn
  %i.hd = getelementptr i8, ptr %i.gm, i64 %i.gq
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit8.us.us.i.i.i, %.preheader9.us.us.i.i.i
  %.0148.us.us.i.i.i = phi i32 [ %.2.lcssa.us.us.i.i.i, %.loopexit8.us.us.i.i.i ], [ 0, %.preheader9.us.us.i.i.i ] ; 3 uses
  %.0147.us.us.i.i.i = phi i32 [ %i.cv, %.loopexit8.us.us.i.i.i ], [ %i.gs, %.preheader9.us.us.i.i.i ] ; 5 uses
  %i.he = icmp sge i32 %.0148.us.us.i.i.i, %.0147.us.us.i.i.i
  %brmerge.i.i.i = select i1 %i.he, i1 true, i1 %i.fb ; 2 uses
  %.0148.us.us.mux.i.i.i = tail call i32 @llvm.smax.i32(i32 %.0148.us.us.i.i.i, i32 %.0147.us.us.i.i.i)
  %brmerge166.i.i.i = or i1 %i.fc, %brmerge.i.i.i
  %.0148.us.us.mux.mux.i.i.i = select i1 %brmerge.i.i.i, i32 %.0148.us.us.mux.i.i.i, i32 %.0147.us.us.i.i.i
  br i1 %brmerge166.i.i.i, label %._crit_edge19.us.us.i.i.i, label %.lr.ph15.us.us.us.us.preheader.i.i.i

.lr.ph15.us.us.us.us.preheader.i.i.i:             ; preds = %bb.ag
  %i.hf = zext i32 %.0148.us.us.i.i.i to i64      ; 2 uses
  %wide.trip.count100.i.i.i = zext nneg i32 %.0147.us.us.i.i.i to i64
  %i.hg = mul i64 %i.fz, %i.hf
  %i.hh = getelementptr i8, ptr %i.hc, i64 %i.hg
  br label %.lr.ph15.us.us.us.us.i.i.i

.lr.ph15.us.us.us.us.i.i.i:                       ; preds = %._crit_edge.split.us.us.us.us.us.i.i.i, %.lr.ph15.us.us.us.us.preheader.i.i.i
  %indvar61 = phi i64 [ %indvar.next62, %._crit_edge.split.us.us.us.us.us.i.i.i ], [ 0, %.lr.ph15.us.us.us.us.preheader.i.i.i ] ; 2 uses
  %indvars.iv97.i.i.i = phi i64 [ %indvars.iv.next98.i.i.i, %._crit_edge.split.us.us.us.us.us.i.i.i ], [ %i.hf, %.lr.ph15.us.us.us.us.preheader.i.i.i ] ; 3 uses
  %i.hi = mul i64 %i.ga, %indvar61
  %scevgep63 = getelementptr i8, ptr %i.hh, i64 %i.hi
  %i.hj = mul i64 %indvars.iv97.i.i.i, %i.fg
  %i.hk = trunc i64 %indvars.iv97.i.i.i to i32
  %i.hl = mul i32 %i.de, %i.hk
  %i.hm = sub i32 %i.hl, %i.dk
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %.215441.us.us.i.i.i, i64 %i.hj ; 5 uses
  br label %bb.ah

bb.ah:                                            ; preds = %..loopexit_crit_edge.us.us.us.us.us.i.i.i, %.lr.ph15.us.us.us.us.i.i.i
  %indvars.iv92.i.i.i = phi i64 [ %indvars.iv.next93.i.i.i, %..loopexit_crit_edge.us.us.us.us.us.i.i.i ], [ 0, %.lr.ph15.us.us.us.us.i.i.i ] ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %indvars.iv92.i.i.i, 12
  %i.hn = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx.i.i.i ; 3 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !81
  %i.hp = add nsw i32 %i.ho, %i.gi                ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !81
  %i.hs = add nsw i32 %i.hr, %i.gu                ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !81
  %i.hv = add nsw i32 %i.hu, %i.hm                ; 2 uses
  %.not170.us.us.us.us.us.i.i.i = icmp ult i32 %i.hp, %i.ci
  %.not171.us.us.us.us.us.i.i.i = icmp ult i32 %i.hs, %i.ch
  %or.cond175.us.us.us.us.us.i.i.i = select i1 %.not170.us.us.us.us.us.i.i.i, i1 %.not171.us.us.us.us.us.i.i.i, i1 false
  %.not172.us.us.us.us.us.i.i.i = icmp ult i32 %i.hv, %i.ck
  %or.cond176.us.us.us.us.us.i.i.i = select i1 %or.cond175.us.us.us.us.us.i.i.i, i1 %.not172.us.us.us.us.us.i.i.i, i1 false
  br i1 %or.cond176.us.us.us.us.us.i.i.i, label %.lr.ph13.us.us.us.us.us.i.i.i, label %..loopexit_crit_edge.us.us.us.us.us.i.i.i

.lr.ph13.us.us.us.us.us.i.i.i:                    ; preds = %bb.ah
  %i.hw = mul nsw i32 %i.hp, %i.ch
  %i.hx = add nsw i32 %i.hw, %i.hs
  %i.hy = mul nsw i32 %i.hx, %i.ck
  %i.hz = add nsw i32 %i.hy, %i.hv
  %i.ia = mul nsw i32 %i.hz, %.fr74.i.i.i
  %i.ib = sext i32 %i.ia to i64                   ; 2 uses
  %i.ic = getelementptr inbounds [4 x i8], ptr %.015568.us.i.i.i, i64 %i.ib ; 5 uses
  br i1 %min.iters.check65, label %scalar.ph64.preheader, label %vector.memcheck66

vector.memcheck66:                                ; preds = %.lr.ph13.us.us.us.us.us.i.i.i
  %i.id = add nsw i64 %i.fw, %i.ib
  %i.ie = shl nsw i64 %i.id, 2
  %gep = getelementptr i8, ptr %invariant.gep.a, i64 %i.ie
  %bound067 = icmp ult ptr %invariant.gep.i.i.i, %gep
  %bound168 = icmp ult ptr %i.ic, %scevgep63
  %found.conflict69 = and i1 %bound067, %bound168
  br i1 %found.conflict69, label %scalar.ph64.preheader, label %vector.body72

vector.body72:                                    ; preds = %vector.memcheck66, %vector.body72
  %index73 = phi i64 [ %index.next78, %vector.body72 ], [ 0, %vector.memcheck66 ] ; 3 uses
  %i.if = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %index73 ; 3 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %index73 ; 2 uses
  %i.ih = getelementptr i8, ptr %i.if, i64 16     ; 2 uses
  %wide.load74 = load <4 x float>, ptr %i.if, align 4, !tbaa !129, !alias.scope !315, !noalias !316 ; 2 uses
  %wide.load75 = load <4 x float>, ptr %i.ih, align 4, !tbaa !129, !alias.scope !315, !noalias !316 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %wide.load76 = load <4 x float>, ptr %i.ig, align 4, !tbaa !129, !alias.scope !316 ; 2 uses
  %wide.load77 = load <4 x float>, ptr %i.ii, align 4, !tbaa !129, !alias.scope !316 ; 2 uses
  %i.ij = fcmp olt <4 x float> %wide.load74, %wide.load76
  %i.ik = fcmp olt <4 x float> %wide.load75, %wide.load77
  %i.il = select <4 x i1> %i.ij, <4 x float> %wide.load76, <4 x float> %wide.load74
  %i.im = select <4 x i1> %i.ik, <4 x float> %wide.load77, <4 x float> %wide.load75
  store <4 x float> %i.il, ptr %i.if, align 4, !tbaa !129, !alias.scope !315, !noalias !316
  store <4 x float> %i.im, ptr %i.ih, align 4, !tbaa !129, !alias.scope !315, !noalias !316
  %index.next78 = add nuw i64 %index73, 8         ; 2 uses
  %i.in = icmp eq i64 %index.next78, %n.vec71
  br i1 %i.in, label %middle.block79, label %vector.body72, !llvm.loop !295

middle.block79:                                   ; preds = %vector.body72
  br i1 %cmp.n80, label %..loopexit_crit_edge.us.us.us.us.us.i.i.i, label %scalar.ph64.preheader

scalar.ph64.preheader:                            ; preds = %vector.memcheck66, %.lr.ph13.us.us.us.us.us.i.i.i, %middle.block79
  %indvars.iv87.i.i.i.ph = phi i64 [ 0, %vector.memcheck66 ], [ 0, %.lr.ph13.us.us.us.us.us.i.i.i ], [ %n.vec71, %middle.block79 ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph64.prol.loopexit, label %scalar.ph64.prol

scalar.ph64.prol:                                 ; preds = %scalar.ph64.preheader
  %gep.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv87.i.i.i.ph ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv87.i.i.i.ph
  %i.ip = load float, ptr %gep.i.i.i.prol, align 4, !tbaa !129 ; 2 uses
  %i.iq = load float, ptr %i.io, align 4, !tbaa !129 ; 2 uses
  %i.ir = fcmp olt float %i.ip, %i.iq
  %i.is = select i1 %i.ir, float %i.iq, float %i.ip
  store float %i.is, ptr %gep.i.i.i.prol, align 4, !tbaa !129
  %indvars.iv.next88.i.i.i.prol = or disjoint i64 %indvars.iv87.i.i.i.ph, 1
  br label %scalar.ph64.prol.loopexit

scalar.ph64.prol.loopexit:                        ; preds = %scalar.ph64.prol, %scalar.ph64.preheader
  %indvars.iv87.i.i.i.unr = phi i64 [ %indvars.iv87.i.i.i.ph, %scalar.ph64.preheader ], [ %indvars.iv.next88.i.i.i.prol, %scalar.ph64.prol ]
  %i.it = icmp eq i64 %indvars.iv87.i.i.i.ph, %i.gb
  br i1 %i.it, label %..loopexit_crit_edge.us.us.us.us.us.i.i.i, label %scalar.ph64

scalar.ph64:                                      ; preds = %scalar.ph64.prol.loopexit, %scalar.ph64
  %indvars.iv87.i.i.i = phi i64 [ %indvars.iv.next88.i.i.i.1, %scalar.ph64 ], [ %indvars.iv87.i.i.i.unr, %scalar.ph64.prol.loopexit ] ; 4 uses
  %gep.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv87.i.i.i ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv87.i.i.i
  %i.iv = load float, ptr %gep.i.i.i, align 4, !tbaa !129 ; 2 uses
  %i.iw = load float, ptr %i.iu, align 4, !tbaa !129 ; 2 uses
  %i.ix = fcmp olt float %i.iv, %i.iw
  %i.iy = select i1 %i.ix, float %i.iw, float %i.iv
  store float %i.iy, ptr %gep.i.i.i, align 4, !tbaa !129
  %indvars.iv.next88.i.i.i = add nuw nsw i64 %indvars.iv87.i.i.i, 1 ; 2 uses
  %gep.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next88.i.i.i ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv.next88.i.i.i
  %i.ja = load float, ptr %gep.i.i.i.1, align 4, !tbaa !129 ; 2 uses
  %i.jb = load float, ptr %i.iz, align 4, !tbaa !129 ; 2 uses
  %i.jc = fcmp olt float %i.ja, %i.jb
  %i.jd = select i1 %i.jc, float %i.jb, float %i.ja
  store float %i.jd, ptr %gep.i.i.i.1, align 4, !tbaa !129
  %indvars.iv.next88.i.i.i.1 = add nuw nsw i64 %indvars.iv87.i.i.i, 2 ; 2 uses
  %exitcond91.not.i.i.i.1 = icmp eq i64 %indvars.iv.next88.i.i.i.1, %wide.trip.count90.i.i.i
  br i1 %exitcond91.not.i.i.i.1, label %..loopexit_crit_edge.us.us.us.us.us.i.i.i, label %scalar.ph64, !llvm.loop !296

..loopexit_crit_edge.us.us.us.us.us.i.i.i:        ; preds = %scalar.ph64.prol.loopexit, %scalar.ph64, %middle.block79, %bb.ah
  %indvars.iv.next93.i.i.i = add nuw nsw i64 %indvars.iv92.i.i.i, 1 ; 2 uses
  %exitcond96.not.i.i.i = icmp eq i64 %indvars.iv.next93.i.i.i, %wide.trip.count95.i.i.i
  br i1 %exitcond96.not.i.i.i, label %._crit_edge.split.us.us.us.us.us.i.i.i, label %bb.ah, !llvm.loop !297

._crit_edge.split.us.us.us.us.us.i.i.i:           ; preds = %..loopexit_crit_edge.us.us.us.us.us.i.i.i
  %indvars.iv.next98.i.i.i = add nuw nsw i64 %indvars.iv97.i.i.i, 1 ; 2 uses
  %exitcond101.not.i.i.i = icmp eq i64 %indvars.iv.next98.i.i.i, %wide.trip.count100.i.i.i
  %indvar.next62 = add i64 %indvar61, 1
  br i1 %exitcond101.not.i.i.i, label %._crit_edge19.us.us.i.i.i, label %.lr.ph15.us.us.us.us.i.i.i, !llvm.loop !298

._crit_edge19.us.us.i.i.i:                        ; preds = %._crit_edge.split.us.us.us.us.us.i.i.i, %bb.ag
  %.1.lcssa.us.us.i.i.i = phi i32 [ %.0148.us.us.mux.mux.i.i.i, %bb.ag ], [ %.0147.us.us.i.i.i, %._crit_edge.split.us.us.us.us.us.i.i.i ] ; 5 uses
  %i.je = icmp eq i32 %.1.lcssa.us.us.i.i.i, %i.cv
  br i1 %i.je, label %bb.ai, label %.preheader.us.us.i.i.i

.preheader.us.us.i.i.i:                           ; preds = %._crit_edge19.us.us.i.i.i
  %i.jf = icmp sge i32 %.1.lcssa.us.us.i.i.i, %i.dw
  %brmerge169.i.i.i = select i1 %i.jf, i1 true, i1 %i.fb ; 2 uses
  %.1.lcssa.us.us.mux.i.i.i = tail call i32 @llvm.smax.i32(i32 %.1.lcssa.us.us.i.i.i, i32 %i.dw)
  %brmerge171.i.i.i = or i1 %i.fc, %brmerge169.i.i.i
  %.1.lcssa.us.us.mux.mux.i.i.i = select i1 %brmerge169.i.i.i, i32 %.1.lcssa.us.us.mux.i.i.i, i32 %i.dw
  br i1 %brmerge171.i.i.i, label %.loopexit8.us.us.i.i.i, label %.lr.ph34.us.us.us.us.preheader.i.i.i

.lr.ph34.us.us.us.us.preheader.i.i.i:             ; preds = %.preheader.us.us.i.i.i
  %i.jg = zext i32 %.1.lcssa.us.us.i.i.i to i64   ; 2 uses
  %i.jh = mul i32 %i.de, %.1.lcssa.us.us.i.i.i
  %i.ji = add i32 %i.gp, %i.jh
  %i.jj = mul i32 %.fr74.i.i.i, %i.ji
  %i.jk = mul i64 %i.ft, %i.jg
  %i.jl = getelementptr i8, ptr %i.hd, i64 %i.jk
  br label %.lr.ph34.us.us.us.us.i.i.i

.lr.ph34.us.us.us.us.i.i.i:                       ; preds = %._crit_edge35.us.us.us.us.i.i.i, %.lr.ph34.us.us.us.us.preheader.i.i.i
  %indvar47 = phi i64 [ %indvar.next48, %._crit_edge35.us.us.us.us.i.i.i ], [ 0, %.lr.ph34.us.us.us.us.preheader.i.i.i ] ; 2 uses
  %indvar43 = phi i32 [ %indvar.next44, %._crit_edge35.us.us.us.us.i.i.i ], [ 0, %.lr.ph34.us.us.us.us.preheader.i.i.i ] ; 2 uses
  %indvars.iv112.i.i.i = phi i64 [ %indvars.iv.next113.i.i.i, %._crit_edge35.us.us.us.us.i.i.i ], [ %i.jg, %.lr.ph34.us.us.us.us.preheader.i.i.i ] ; 3 uses
  %i.jm = mul i32 %i.fr, %indvar43
  %i.jn = add i32 %i.jj, %i.jm
  %i.jo = sext i32 %i.jn to i64
  %16 = add nsw i64 %i.fi, %i.jo
  %i.jp = mul i64 %i.fu, %indvar47
  %scevgep = getelementptr i8, ptr %i.jl, i64 %i.jp
  %i.jq = trunc i64 %indvars.iv112.i.i.i to i32
  %i.jr = mul i32 %i.de, %i.jq
  %i.js = add i32 %i.hb, %i.jr
  %i.jt = mul nsw i32 %i.js, %.fr74.i.i.i
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %.015568.us.i.i.i, i64 %i.ju
  %i.jw = mul nuw nsw i64 %indvars.iv112.i.i.i, %i.fg
  %invariant.gep162.i.i.i = getelementptr [4 x i8], ptr %.215441.us.us.i.i.i, i64 %i.jw ; 5 uses
  br label %.lr.ph31.us.us.us.us.i.i.i

.lr.ph31.us.us.us.us.i.i.i:                       ; preds = %._crit_edge.us.us.us.us.i.i.i, %.lr.ph34.us.us.us.us.i.i.i
  %indvars.iv107.i.i.i = phi i64 [ %indvars.iv.next108.i.i.i, %._crit_edge.us.us.us.us.i.i.i ], [ 0, %.lr.ph34.us.us.us.us.i.i.i ] ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv107.i.i.i
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !81
  %i.jz = sext i32 %i.jy to i64                   ; 2 uses
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.jz ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph31.us.us.us.us.i.i.i
  %17 = add nsw i64 %16, %i.jz
  %i.kb = shl nsw i64 %17, 2
  %gep96 = getelementptr i8, ptr %invariant.gep95, i64 %i.kb
  %bound0 = icmp ult ptr %invariant.gep162.i.i.i, %gep96
  %bound1 = icmp ult ptr %i.ka, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.kc = getelementptr [4 x i8], ptr %invariant.gep162.i.i.i, i64 %index ; 3 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %index ; 2 uses
  %i.ke = getelementptr i8, ptr %i.kc, i64 16     ; 2 uses
  %wide.load = load <4 x float>, ptr %i.kc, align 4, !tbaa !129, !alias.scope !317, !noalias !318 ; 2 uses
  %wide.load49 = load <4 x float>, ptr %i.ke, align 4, !tbaa !129, !alias.scope !317, !noalias !318 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %wide.load50 = load <4 x float>, ptr %i.kd, align 4, !tbaa !129, !alias.scope !318 ; 2 uses
  %wide.load51 = load <4 x float>, ptr %i.kf, align 4, !tbaa !129, !alias.scope !318 ; 2 uses
  %i.kg = fcmp olt <4 x float> %wide.load, %wide.load50
  %i.kh = fcmp olt <4 x float> %wide.load49, %wide.load51
  %i.ki = select <4 x i1> %i.kg, <4 x float> %wide.load50, <4 x float> %wide.load
  %i.kj = select <4 x i1> %i.kh, <4 x float> %wide.load51, <4 x float> %wide.load49
  store <4 x float> %i.ki, ptr %i.kc, align 4, !tbaa !129, !alias.scope !317, !noalias !318
  store <4 x float> %i.kj, ptr %i.ke, align 4, !tbaa !129, !alias.scope !317, !noalias !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kk = icmp eq i64 %index.next, %n.vec
  br i1 %i.kk, label %middle.block, label %vector.body, !llvm.loop !302

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us.us.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph31.us.us.us.us.i.i.i, %middle.block
  %indvars.iv102.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph31.us.us.us.us.i.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod94.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep163.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep162.i.i.i, i64 %indvars.iv102.i.i.i.ph ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv102.i.i.i.ph
  %i.km = load float, ptr %gep163.i.i.i.prol, align 4, !tbaa !129 ; 2 uses
  %i.kn = load float, ptr %i.kl, align 4, !tbaa !129 ; 2 uses
  %i.ko = fcmp olt float %i.km, %i.kn
  %i.kp = select i1 %i.ko, float %i.kn, float %i.km
  store float %i.kp, ptr %gep163.i.i.i.prol, align 4, !tbaa !129
  %indvars.iv.next103.i.i.i.prol = or disjoint i64 %indvars.iv102.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv102.i.i.i.unr = phi i64 [ %indvars.iv102.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next103.i.i.i.prol, %scalar.ph.prol ]
  %i.kq = icmp eq i64 %indvars.iv102.i.i.i.ph, %i.gc
  br i1 %i.kq, label %._crit_edge.us.us.us.us.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv102.i.i.i = phi i64 [ %indvars.iv.next103.i.i.i.1, %scalar.ph ], [ %indvars.iv102.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %gep163.i.i.i = getelementptr [4 x i8], ptr %invariant.gep162.i.i.i, i64 %indvars.iv102.i.i.i ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv102.i.i.i
  %i.ks = load float, ptr %gep163.i.i.i, align 4, !tbaa !129 ; 2 uses
  %i.kt = load float, ptr %i.kr, align 4, !tbaa !129 ; 2 uses
  %i.ku = fcmp olt float %i.ks, %i.kt
  %i.kv = select i1 %i.ku, float %i.kt, float %i.ks
  store float %i.kv, ptr %gep163.i.i.i, align 4, !tbaa !129
  %indvars.iv.next103.i.i.i = add nuw nsw i64 %indvars.iv102.i.i.i, 1 ; 2 uses
  %gep163.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep162.i.i.i, i64 %indvars.iv.next103.i.i.i ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv.next103.i.i.i
  %i.kx = load float, ptr %gep163.i.i.i.1, align 4, !tbaa !129 ; 2 uses
  %i.ky = load float, ptr %i.kw, align 4, !tbaa !129 ; 2 uses
  %i.kz = fcmp olt float %i.kx, %i.ky
  %i.la = select i1 %i.kz, float %i.ky, float %i.kx
  store float %i.la, ptr %gep163.i.i.i.1, align 4, !tbaa !129
  %indvars.iv.next103.i.i.i.1 = add nuw nsw i64 %indvars.iv102.i.i.i, 2 ; 2 uses
  %exitcond106.not.i.i.i.1 = icmp eq i64 %indvars.iv.next103.i.i.i.1, %wide.trip.count90.i.i.i
  br i1 %exitcond106.not.i.i.i.1, label %._crit_edge.us.us.us.us.i.i.i, label %scalar.ph, !llvm.loop !303

._crit_edge.us.us.us.us.i.i.i:                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next108.i.i.i = add nuw nsw i64 %indvars.iv107.i.i.i, 1 ; 2 uses
  %exitcond111.not.i.i.i = icmp eq i64 %indvars.iv.next108.i.i.i, %wide.trip.count95.i.i.i
  br i1 %exitcond111.not.i.i.i, label %._crit_edge35.us.us.us.us.i.i.i, label %.lr.ph31.us.us.us.us.i.i.i, !llvm.loop !304

._crit_edge35.us.us.us.us.i.i.i:                  ; preds = %._crit_edge.us.us.us.us.i.i.i
  %indvars.iv.next113.i.i.i = add nuw nsw i64 %indvars.iv112.i.i.i, 1 ; 2 uses
  %exitcond116.not.i.i.i = icmp eq i64 %indvars.iv.next113.i.i.i, %wide.trip.count115.i.i.i
  %indvar.next44 = add i32 %indvar43, 1
  %indvar.next48 = add i64 %indvar47, 1
  br i1 %exitcond116.not.i.i.i, label %.loopexit8.us.us.i.i.i, label %.lr.ph34.us.us.us.us.i.i.i, !llvm.loop !305

.loopexit8.us.us.i.i.i:                           ; preds = %._crit_edge35.us.us.us.us.i.i.i, %.preheader.us.us.i.i.i
  %.2.lcssa.us.us.i.i.i = phi i32 [ %.1.lcssa.us.us.mux.mux.i.i.i, %.preheader.us.us.i.i.i ], [ %i.dw, %._crit_edge35.us.us.us.us.i.i.i ]
  br label %bb.ag, !llvm.loop !306

bb.ai:                                            ; preds = %._crit_edge19.us.us.i.i.i
  %i.lb = add nuw nsw i32 %.014942.us.us.i.i.i, 1 ; 2 uses
  %i.lc = getelementptr [4 x i8], ptr %.215441.us.us.i.i.i, i64 %i.fd ; 3 uses
  %exitcond117.not.i.i.i = icmp eq i32 %i.lb, %i.cl
  %indvar.next46 = add i64 %indvar45, 1
  br i1 %exitcond117.not.i.i.i, label %._crit_edge.us.us.i.i.i, label %bb.af, !llvm.loop !307

._crit_edge.us.us.i.i.i:                          ; preds = %bb.ai
  %i.ld = add nuw nsw i32 %.015045.us.us.i.i.i, 1 ; 2 uses
  %exitcond118.not.i.i.i = icmp eq i32 %i.ld, %i.ce
  br i1 %exitcond118.not.i.i.i, label %._crit_edge47.split.us.us.i.i.i, label %.lr.ph43.us.us.i.i.i, !llvm.loop !308

._crit_edge47.split.us.us.i.i.i:                  ; preds = %._crit_edge.us.us.i.i.i
  %i.le = add nsw i32 %.015171.us.i.i.i, 1        ; 2 uses
  %i.lf = getelementptr inbounds [4 x i8], ptr %.015568.us.i.i.i, i64 %i.fe
  %exitcond119.not.i.i.i = icmp eq i32 %i.le, %.val3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond119.not.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL10maxPool32fEPKvPvRKNS1_14dnn5_v202606059ConvStateEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit", label %.preheader10.us.i.i.i, !llvm.loop !309

"_ZSt10__invoke_rIvRZN2cv3dnnL10maxPool32fEPKvPvRKNS1_14dnn5_v202606059ConvStateEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit": ; preds = %._crit_edge47.split.us.us.i.i.i, %_ZNK2cv8MatShapeixEm.exit206.i.i.i, %.preheader10.lr.ph.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL10maxPool32fEPKvPvRKNS5_14dnn5_v202606059ConvStateEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL10maxPool32fEPKvPvRKNS2_14dnn5_v202606059ConvStateEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnnL10maxPool32fEPKvPvRKNS0_14dnn5_v202606059ConvStateEE3$_0", ptr %0, align 8, !tbaa !131
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL10maxPool32fEPKvPvRKNS2_14dnn5_v202606059ConvStateEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !110
  store ptr %.val, ptr %0, align 8, !tbaa !110
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL10maxPool32fEPKvPvRKNS2_14dnn5_v202606059ConvStateEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !319
  store ptr %i.a, ptr %0, align 8, !tbaa !110
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL10maxPool32fEPKvPvRKNS2_14dnn5_v202606059ConvStateEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !110 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL10maxPool32fEPKvPvRKNS2_14dnn5_v202606059ConvStateEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #22
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL10maxPool32fEPKvPvRKNS2_14dnn5_v202606059ConvStateEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL10maxPool32fEPKvPvRKNS2_14dnn5_v202606059ConvStateEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShape4backEv(ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL28maxPool32f_nchw_with_indicesEPKfPfPliiiiiiiiiiiiiiE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #15 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !110   ; 18 uses
  %.val2 = load i32, ptr %1, align 4, !tbaa !112  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4            ; 3 uses
  %i.b = icmp slt i32 %.val2, %.val3
  br i1 %i.b, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL28maxPool32f_nchw_with_indicesEPKfPfPliiiiiiiiiiiiiiE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.c = load ptr, ptr %.val, align 8, !tbaa !328, !nonnull !68, !align !329
  %i.d = load i32, ptr %i.c, align 4, !tbaa !81   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !330, !nonnull !68, !align !128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !121
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !331, !nonnull !68, !align !329
  %i.j = load i32, ptr %i.i, align 4, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !332, !nonnull !68, !align !128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !121  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !333, !nonnull !68, !align !329
  %i.p = load i32, ptr %i.o, align 4, !tbaa !81   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !334, !nonnull !68, !align !128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !122  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !335, !nonnull !68, !align !329
  %i.v = load i32, ptr %i.u, align 4, !tbaa !81   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 96 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 136 ; 3 uses
  br i1 %i.w, label %.lr.ph.split.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL28maxPool32f_nchw_with_indicesEPKfPfPliiiiiiiiiiiiiiE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !68, !align !329
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !81 ; 4 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.split.split.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL28maxPool32f_nchw_with_indicesEPKfPfPliiiiiiiiiiiiiiE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

end_hunk_0
