inline.NumInlined: 373
inline.NumDeleted: 179
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2cv3dnn20CorrelationLayerImpl28correlationKernelSubtractionERKNS_3MatES4_RS2_i:bb.a
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.19, i32 noundef 97) #20
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125: ; preds = %bb.m
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !22
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i126: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %_ZNK2cv8MatShapeixEm.exit122
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.am = load i32, ptr %i.al, align 8, !tbaa !60 ; 2 uses
  %.not144 = icmp eq i32 %i.ad, 2
  br i1 %.not144, label %bb.n, label %_ZN2cv8MatShapeixEm.exit133

bb.n:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.19, i32 noundef 97) #20
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130: ; preds = %bb.p
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !22
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i131: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %common.resume

_ZN2cv8MatShapeixEm.exit133:                      ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.au = load i32, ptr %i.at, align 4, !tbaa !60 ; 4 uses
  %i.av = icmp samesign ugt i32 %i.ad, 3
  br i1 %i.av, label %_ZN2cv8MatShapeixEm.exit139, label %bb.q

bb.q:                                             ; preds = %_ZN2cv8MatShapeixEm.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.19, i32 noundef 97) #20
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136: ; preds = %bb.s
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !22
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i137: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %common.resume

_ZN2cv8MatShapeixEm.exit139:                      ; preds = %_ZN2cv8MatShapeixEm.exit133
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !60 ; 4 uses
  %i.be = tail call noundef i64 @_ZNK2cv3Mat5totalEii(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 1, i32 noundef 2147483647)
  %i.bf = trunc i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !54 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !57 ; 3 uses
  %i.bk = sdiv i32 %i.bh, %i.bj                   ; 3 uses
  %i.bl = shl nsw i32 %i.bk, 1
  %i.bm = or disjoint i32 %i.bl, 1                ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !91 ; 3 uses
  %i.bp = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !91
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !91
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !55 ; 9 uses
  %i.bw = mul i32 %i.bv, %i.ab
  %i.bx = mul i32 %i.bw, %i.bv                    ; 4 uses
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = icmp slt i32 %i.bx, 0
  br i1 %i.bz, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZN2cv8MatShapeixEm.exit139
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #20
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN2cv8MatShapeixEm.exit139
  %.not.i.i.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, label %.noexc140

.noexc140:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ca = shl nuw nsw i64 %i.by, 2                ; 2 uses
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #17 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cb, i8 0, i64 %i.ca, i1 false), !tbaa !94
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.by
  %i.cd = ptrtoint ptr %i.cc to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit:            ; preds = %.noexc140, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cd, %.noexc140 ]
  %.sroa.0141.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cb, %.noexc140 ] ; 7 uses
  %.sroa.0141.0311 = ptrtoaddr ptr %.sroa.0141.0 to i64 ; 2 uses
  %i.ce = icmp sgt i32 %i.au, 0
  br i1 %i.ce, label %.preheader147.lr.ph, label %._crit_edge196.split

.preheader147.lr.ph:                              ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit
  %i.cf = icmp sgt i32 %i.bd, 0
  %i.cg = icmp slt i32 %i.bv, 1                   ; 2 uses
  %i.ch = icmp slt i32 %i.ab, 1                   ; 2 uses
  %i.ci = mul i32 %i.k, %4                        ; 2 uses
  %i.cj = icmp sgt i32 %i.bv, 0
  %i.ck = icmp sgt i32 %i.ab, 0
  %i.cl = uitofp nneg i32 %i.bx to float
  %i.cm = mul nsw i32 %4, %i.bf
  br i1 %i.cf, label %.preheader147.lr.ph.split, label %._crit_edge196.split

.preheader147.lr.ph.split:                        ; preds = %.preheader147.lr.ph
  %i.cn = icmp sgt i32 %i.am, 0
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !56 ; 8 uses
  br i1 %i.cn, label %.preheader147.us.preheader, label %.preheader147.lr.ph.split.split

.preheader147.us.preheader:                       ; preds = %.preheader147.lr.ph.split
  %i.cq = sext i32 %i.ab to i64                   ; 4 uses
  %i.cr = sext i32 %i.bv to i64                   ; 3 uses
  %i.cs = zext nneg i32 %i.au to i64
  %wide.trip.count273 = zext nneg i32 %i.au to i64
  %invariant.op310 = add i32 %i.bh, %i.ci         ; 2 uses
  %brmerge = select i1 %i.cg, i1 true, i1 %i.ch
  %wide.trip.count247 = zext nneg i32 %i.bv to i64 ; 2 uses
  %wide.trip.count237 = zext i32 %i.ab to i64     ; 8 uses
  %wide.trip.count267 = zext nneg i32 %i.am to i64
  %wide.trip.count262 = zext nneg i32 %i.bv to i64 ; 2 uses
  %i.ct = sub i64 %.sroa.0141.0311, %i.bp
  %i.cu = mul nsw i64 %i.cr, %i.cq
  %i.cv = shl i64 %i.cu, 2
  %i.cw = shl nsw i64 %i.cq, 2
  %i.cx = mul i32 %i.s, %invariant.op310
  %i.cy = add i32 %i.bh, %i.cx
  %i.cz = mul i32 %i.ab, %i.cy
  %i.da = zext i32 %i.cz to i64
  %i.db = mul i32 %i.cp, %i.s
  %i.dc = mul i32 %i.db, %i.ab
  %i.dd = zext i32 %i.dc to i64
  %i.de = mul i32 %i.cp, %i.ab
  %i.df = zext i32 %i.de to i64
  %i.dg = mul i32 %i.s, %i.ab
  %i.dh = zext i32 %i.dg to i64
  %min.iters.check320 = icmp ult i32 %i.ab, 8
  %n.vec322 = and i64 %wide.trip.count237, 2147483640 ; 3 uses
  %cmp.n329 = icmp eq i64 %n.vec322, %wide.trip.count237
  %xtraiter332 = and i64 %wide.trip.count237, 3   ; 2 uses
  %lcmp.mod333.not = icmp eq i64 %xtraiter332, 0
  %xtraiter335 = and i64 %wide.trip.count237, 3   ; 3 uses
  %i.di = icmp ult i32 %i.ab, 4
  %unroll_iter = and i64 %wide.trip.count237, 2147483644
  %lcmp.mod336.not = icmp eq i64 %xtraiter335, 0
  %lcmp.mod338 = icmp ne i64 %xtraiter335, 0
  br label %.preheader147.us

.preheader147.us:                                 ; preds = %._crit_edge188.split.us.us, %.preheader147.us.preheader
  %indvars.iv270 = phi i64 [ %indvars.iv.next271, %._crit_edge188.split.us.us ], [ 0, %.preheader147.us.preheader ] ; 4 uses
  %i.dj = mul i64 %indvars.iv270, %i.dd
  %i.dk = add i64 %i.dj, %i.da
  %i.dl = trunc i64 %indvars.iv270 to i32
  %i.dm = mul i32 %i.cp, %i.dl
  %invariant.op156.us.reass = add i32 %i.dm, %invariant.op310 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge184.us.us, %.preheader147.us
  %indvar316 = phi i64 [ %indvar.next317, %._crit_edge184.us.us ], [ 0, %.preheader147.us ] ; 2 uses
  %.096186.us.us = phi i32 [ %i.gj, %._crit_edge184.us.us ], [ 0, %.preheader147.us ] ; 3 uses
  %i.dn = mul i64 %indvar316, %i.df
  %i.do = add i64 %i.dk, %i.dn
  %i.dp = mul nsw i32 %i.cp, %.096186.us.us
  %i.dq = add nsw i32 %i.dp, %i.bh                ; 2 uses
  br i1 %brmerge, label %.preheader146.us.us, label %.preheader145.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.preheader145.us.us
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %._crit_edge.us.us ], [ 0, %.preheader145.us.us ] ; 5 uses
  %i.dr = add nuw nsw i64 %indvars.iv239, %i.fg
  %i.ds = mul nuw nsw i64 %i.dr, %i.cq
  %i.dt = trunc nuw nsw i64 %indvars.iv239 to i32
  %.reass149.reass.us.us = add i32 %invariant.op154.us.us, %i.dt
  %i.du = mul nsw i32 %.reass149.reass.us.us, %i.ab
  %i.dv = sext i32 %i.du to i64
  %invariant.gep302.a = getelementptr [4 x i8], ptr %i.bo, i64 %i.dv ; 6 uses
  %invariant.gep304 = getelementptr [4 x i8], ptr %.sroa.0141.0, i64 %i.ds ; 6 uses
  br i1 %min.iters.check320, label %scalar.ph319.preheader, label %vector.memcheck315

vector.memcheck315:                               ; preds = %.lr.ph.us.us
  %i.dw = mul i64 %i.cw, %indvars.iv239
  %i.dx = add i64 %i.fd, %i.dw
  %i.dy = mul i64 %indvars.iv239, %wide.trip.count237
  %i.dz = add i64 %i.ff, %i.dy
  %sext331 = shl i64 %i.dz, 32
  %i.ea = ashr exact i64 %sext331, 30
  %i.eb = sub i64 %i.ea, %i.dx
  %diff.check318 = icmp ugt i64 %i.eb, -32
  br i1 %diff.check318, label %scalar.ph319.preheader, label %vector.body323

vector.body323:                                   ; preds = %vector.memcheck315, %vector.body323
  %index324 = phi i64 [ %index.next327, %vector.body323 ], [ 0, %vector.memcheck315 ] ; 3 uses
  %i.ec = getelementptr [4 x i8], ptr %invariant.gep302.a, i64 %index324 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  %wide.load325 = load <4 x float>, ptr %i.ec, align 4, !tbaa !94
  %wide.load326 = load <4 x float>, ptr %i.ed, align 4, !tbaa !94
  %i.ee = getelementptr [4 x i8], ptr %invariant.gep304, i64 %index324 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 16
  store <4 x float> %wide.load325, ptr %i.ee, align 4, !tbaa !94
  store <4 x float> %wide.load326, ptr %i.ef, align 4, !tbaa !94
  %index.next327 = add nuw i64 %index324, 8       ; 2 uses
  %i.eg = icmp eq i64 %index.next327, %n.vec322
  br i1 %i.eg, label %middle.block328, label %vector.body323, !llvm.loop !97

middle.block328:                                  ; preds = %vector.body323
  br i1 %cmp.n329, label %._crit_edge.us.us, label %scalar.ph319.preheader

scalar.ph319.preheader:                           ; preds = %vector.memcheck315, %.lr.ph.us.us, %middle.block328
  %indvars.iv234.ph = phi i64 [ 0, %vector.memcheck315 ], [ 0, %.lr.ph.us.us ], [ %n.vec322, %middle.block328 ] ; 3 uses
  br i1 %lcmp.mod333.not, label %scalar.ph319.prol.loopexit, label %scalar.ph319.prol

scalar.ph319.prol:                                ; preds = %scalar.ph319.preheader, %scalar.ph319.prol
  %indvars.iv234.prol = phi i64 [ %indvars.iv.next235.prol, %scalar.ph319.prol ], [ %indvars.iv234.ph, %scalar.ph319.preheader ] ; 3 uses
  %prol.iter334 = phi i64 [ %prol.iter334.next, %scalar.ph319.prol ], [ 0, %scalar.ph319.preheader ]
  %gep303.prol.a = getelementptr [4 x i8], ptr %invariant.gep302.a, i64 %indvars.iv234.prol
  %i.eh = load float, ptr %gep303.prol.a, align 4, !tbaa !94
  %gep305.prol = getelementptr [4 x i8], ptr %invariant.gep304, i64 %indvars.iv234.prol
  store float %i.eh, ptr %gep305.prol, align 4, !tbaa !94
  %indvars.iv.next235.prol = add nuw nsw i64 %indvars.iv234.prol, 1 ; 2 uses
  %prol.iter334.next = add i64 %prol.iter334, 1   ; 2 uses
  %prol.iter334.cmp.not = icmp eq i64 %prol.iter334.next, %xtraiter332
  br i1 %prol.iter334.cmp.not, label %scalar.ph319.prol.loopexit, label %scalar.ph319.prol, !llvm.loop !100

scalar.ph319.prol.loopexit:                       ; preds = %scalar.ph319.prol, %scalar.ph319.preheader
  %indvars.iv234.unr = phi i64 [ %indvars.iv234.ph, %scalar.ph319.preheader ], [ %indvars.iv.next235.prol, %scalar.ph319.prol ]
  %i.ei = sub nsw i64 %indvars.iv234.ph, %wide.trip.count237
  %i.ej = icmp ugt i64 %i.ei, -4
  br i1 %i.ej, label %._crit_edge.us.us, label %scalar.ph319

scalar.ph319:                                     ; preds = %scalar.ph319.prol.loopexit, %scalar.ph319
  %indvars.iv234 = phi i64 [ %indvars.iv.next235.3, %scalar.ph319 ], [ %indvars.iv234.unr, %scalar.ph319.prol.loopexit ] ; 6 uses
  %gep303.a = getelementptr [4 x i8], ptr %invariant.gep302.a, i64 %indvars.iv234
  %i.ek = load float, ptr %gep303.a, align 4, !tbaa !94
  %gep305 = getelementptr [4 x i8], ptr %invariant.gep304, i64 %indvars.iv234
  store float %i.ek, ptr %gep305, align 4, !tbaa !94
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %gep303.1.a = getelementptr [4 x i8], ptr %invariant.gep302.a, i64 %indvars.iv.next235
  %i.el = load float, ptr %gep303.1.a, align 4, !tbaa !94
  %gep305.1 = getelementptr [4 x i8], ptr %invariant.gep304, i64 %indvars.iv.next235
  store float %i.el, ptr %gep305.1, align 4, !tbaa !94
  %indvars.iv.next235.1 = add nuw nsw i64 %indvars.iv234, 2 ; 2 uses
  %gep303.2.a = getelementptr [4 x i8], ptr %invariant.gep302.a, i64 %indvars.iv.next235.1
  %i.em = load float, ptr %gep303.2.a, align 4, !tbaa !94
  %gep305.2 = getelementptr [4 x i8], ptr %invariant.gep304, i64 %indvars.iv.next235.1
  store float %i.em, ptr %gep305.2, align 4, !tbaa !94
  %indvars.iv.next235.2 = add nuw nsw i64 %indvars.iv234, 3 ; 2 uses
  %gep303.3.a = getelementptr [4 x i8], ptr %invariant.gep302.a, i64 %indvars.iv.next235.2
  %i.en = load float, ptr %gep303.3.a, align 4, !tbaa !94
  %gep305.3 = getelementptr [4 x i8], ptr %invariant.gep304, i64 %indvars.iv.next235.2
  store float %i.en, ptr %gep305.3, align 4, !tbaa !94
  %indvars.iv.next235.3 = add nuw nsw i64 %indvars.iv234, 4 ; 2 uses
  %exitcond238.not.3 = icmp eq i64 %indvars.iv.next235.3, %wide.trip.count237
  br i1 %exitcond238.not.3, label %._crit_edge.us.us, label %scalar.ph319, !llvm.loop !102

bb.u:                                             ; preds = %.preheader146.us.us, %._crit_edge175.split.us.us.us
  %indvars.iv264 = phi i64 [ 0, %.preheader146.us.us ], [ %indvars.iv.next265, %._crit_edge175.split.us.us.us ] ; 3 uses
  %i.eo = trunc nuw nsw i64 %indvars.iv264 to i32 ; 2 uses
  %i.ep = srem i32 %i.eo, %i.bm
  %i.eq = sdiv i32 %i.eo, %i.bm
  %i.er = sub nsw i32 %i.ep, %i.bk
  %i.es = mul nsw i32 %i.er, %i.bj
  %i.et = add nsw i32 %i.es, %i.dq
  br i1 %i.cj, label %.preheader.lr.ph.us.us, label %._crit_edge175.split.us.us.us

._crit_edge175.split.us.us.us:                    ; preds = %._crit_edge169.split.us.us.us.us.us, %.preheader.lr.ph.us.us, %bb.u
  %.0104.lcssa.us.us = phi float [ 0.000000e+00, %bb.u ], [ 0.000000e+00, %.preheader.lr.ph.us.us ], [ %.lcssa, %._crit_edge169.split.us.us.us.us.us ]
  %i.eu = mul nuw nsw i64 %indvars.iv264, %i.cs
  %i.ev = add nuw nsw i64 %i.eu, %indvars.iv270
  %i.ew = fdiv float %.0104.lcssa.us.us, %i.cl
  %i.ex = trunc i64 %i.ev to i32
  %i.ey = mul i32 %i.bd, %i.ex
  %i.ez = add i32 %i.fj, %i.ey
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.fa
  store float %i.ew, ptr %i.fb, align 4, !tbaa !94
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond268.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count267
  br i1 %exitcond268.not, label %._crit_edge184.us.us, label %bb.u, !llvm.loop !103

.preheader145.us.us:                              ; preds = %bb.t, %._crit_edge153.us.us
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %._crit_edge153.us.us ], [ 0, %bb.t ] ; 5 uses
  %i.fc = mul i64 %i.cv, %indvars.iv244
  %i.fd = add i64 %i.ct, %i.fc
  %i.fe = mul i64 %indvars.iv244, %i.dh
  %i.ff = add i64 %i.do, %i.fe
  %i.fg = mul nuw nsw i64 %indvars.iv244, %i.cr
  %i.fh = trunc nuw nsw i64 %indvars.iv244 to i32
  %.reass.reass.us.us = add i32 %invariant.op156.us.reass, %i.fh
  %i.fi = mul nsw i32 %.reass.reass.us.us, %i.s
  %invariant.op154.us.us = add i32 %i.dq, %i.fi
  br label %.lr.ph.us.us

.preheader146.us.us:                              ; preds = %._crit_edge153.us.us, %bb.t
  %i.fj = add i32 %.096186.us.us, %i.cm
  br label %bb.u

._crit_edge.us.us:                                ; preds = %scalar.ph319.prol.loopexit, %scalar.ph319, %middle.block328
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 2 uses
  %exitcond243.not = icmp eq i64 %indvars.iv.next240, %wide.trip.count247
  br i1 %exitcond243.not, label %._crit_edge153.us.us, label %.lr.ph.us.us, !llvm.loop !104

._crit_edge153.us.us:                             ; preds = %._crit_edge.us.us
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %exitcond248.not = icmp eq i64 %indvars.iv.next245, %wide.trip.count247
  br i1 %exitcond248.not, label %.preheader146.us.us, label %.preheader145.us.us, !llvm.loop !105

.preheader.lr.ph.us.us:                           ; preds = %bb.u
  %i.fk = sub nsw i32 %i.eq, %i.bk
  %i.fl = mul nsw i32 %i.fk, %i.bj
  %invariant.op176.reass.us.us = add i32 %i.fl, %invariant.op156.us.reass
  br i1 %i.ck, label %.preheader.us.us.us.us, label %._crit_edge175.split.us.us.us

.preheader.us.us.us.us:                           ; preds = %.preheader.lr.ph.us.us, %._crit_edge169.split.us.us.us.us.us
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %._crit_edge169.split.us.us.us.us.us ], [ 0, %.preheader.lr.ph.us.us ] ; 3 uses
  %.0104173.us.us.us.us = phi float [ %.lcssa, %._crit_edge169.split.us.us.us.us.us ], [ 0.000000e+00, %.preheader.lr.ph.us.us ]
  %i.fm = mul nuw nsw i64 %indvars.iv259, %i.cr
  %i.fn = trunc nuw nsw i64 %indvars.iv259 to i32
  %.reass159.reass.us.us.us.us = add i32 %invariant.op176.reass.us.us, %i.fn
  %i.fo = mul nsw i32 %.reass159.reass.us.us.us.us, %i.s
  %invariant.op171.us.us.us.us = add i32 %i.et, %i.fo
  br label %.lr.ph164.us.us.us.us.us

.lr.ph164.us.us.us.us.us:                         ; preds = %._crit_edge165.us.us.us.us.us, %.preheader.us.us.us.us
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %._crit_edge165.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us ] ; 3 uses
  %.1166.us.us.us.us.us = phi float [ %.lcssa, %._crit_edge165.us.us.us.us.us ], [ %.0104173.us.us.us.us, %.preheader.us.us.us.us ] ; 2 uses
  %i.fp = add nuw nsw i64 %indvars.iv254, %i.fm
  %i.fq = mul nuw nsw i64 %i.fp, %i.cq
  %i.fr = trunc nuw nsw i64 %indvars.iv254 to i32
  %.reass.reass172.us.us.us.us.us = add i32 %invariant.op171.us.us.us.us, %i.fr
  %i.fs = mul nsw i32 %.reass.reass172.us.us.us.us.us, %i.ab
  %i.ft = sext i32 %i.fs to i64
  %invariant.gep306 = getelementptr [4 x i8], ptr %.sroa.0141.0, i64 %i.fq ; 5 uses
  %invariant.gep308 = getelementptr [4 x i8], ptr %i.br, i64 %i.ft ; 5 uses
  br i1 %i.di, label %.epil.preheader, label %.lr.ph164.us.us.us.us.us.new

.lr.ph164.us.us.us.us.us.new:                     ; preds = %.lr.ph164.us.us.us.us.us, %.lr.ph164.us.us.us.us.us.new
  %indvars.iv249 = phi i64 [ %indvars.iv.next250.3, %.lr.ph164.us.us.us.us.us.new ], [ 0, %.lr.ph164.us.us.us.us.us ] ; 6 uses
  %.2161.us.us.us.us.us = phi float [ %i.gf, %.lr.ph164.us.us.us.us.us.new ], [ %.1166.us.us.us.us.us, %.lr.ph164.us.us.us.us.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph164.us.us.us.us.us.new ], [ 0, %.lr.ph164.us.us.us.us.us ]
  %gep307 = getelementptr [4 x i8], ptr %invariant.gep306, i64 %indvars.iv249
  %i.fu = load float, ptr %gep307, align 4, !tbaa !94
  %gep309 = getelementptr [4 x i8], ptr %invariant.gep308, i64 %indvars.iv249
  %i.fv = load float, ptr %gep309, align 4, !tbaa !94
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.fv, float %.2161.us.us.us.us.us)
  %indvars.iv.next250 = or disjoint i64 %indvars.iv249, 1 ; 2 uses
  %gep307.1 = getelementptr [4 x i8], ptr %invariant.gep306, i64 %indvars.iv.next250
  %i.fx = load float, ptr %gep307.1, align 4, !tbaa !94
  %gep309.1 = getelementptr [4 x i8], ptr %invariant.gep308, i64 %indvars.iv.next250
  %i.fy = load float, ptr %gep309.1, align 4, !tbaa !94
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.fy, float %i.fw)
  %indvars.iv.next250.1 = or disjoint i64 %indvars.iv249, 2 ; 2 uses
end_hunk_0
