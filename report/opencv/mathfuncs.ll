inline.NumInlined: 427
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN2cv3powERKNS_11_InputArrayEdRKNS_12_OutputArrayE:bb.a
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !39
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = mul i32 %i.g, %i.ah
  %.fr248 = freeze i32 %i.ai                      ; 10 uses
  br i1 %i.m, label %bb.s, label %bb.ag

bb.s:                                             ; preds = %bb.r
  %i.aj = zext nneg i32 %i.d to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @_ZN2cvL7ipowTabE, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !115
  %i.am = icmp samesign ugt i32 %i.d, 6
  br i1 %i.am, label %bb.x, label %.preheader

.preheader:                                       ; preds = %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.ac

bb.t:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.u:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.v:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.w:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit183
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3powERKNS_11_InputArrayEdRKNS_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 1048) #27
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ab:                                            ; preds = %bb.y
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %10, align 8, !tbaa !12   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !17
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.aa
  %.pn166 = phi { ptr, i32 } [ %i.at, %bb.aa ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.au, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.bf

bb.ac:                                            ; preds = %.preheader, %bb.ae
  %.0137 = phi i64 [ %i.be, %bb.ae ], [ 0, %.preheader ] ; 2 uses
  %i.ba = load i64, ptr %i.an, align 8, !tbaa !44
  %i.bb = icmp ult i64 %.0137, %i.ba
  br i1 %i.bb, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.bc = load ptr, ptr %i.b, align 16, !tbaa !45
  %i.bd = load ptr, ptr %i.ao, align 8, !tbaa !45
  invoke void %i.al(ptr noundef %i.bc, ptr noundef %i.bd, i32 noundef %.fr248, i32 noundef %i.i)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.be = add nuw i64 %.0137, 1
  %i.bf = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %9)
          to label %bb.ac unwind label %bb.af, !llvm.loop !116 ; 0 uses

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ag:                                            ; preds = %bb.r
  %i.bh = call double @llvm.fabs.f64(double %1)
  %i.bi = fadd double %i.bh, -5.000000e-01
  %i.bj = call double @llvm.fabs.f64(double %i.bi)
  %i.bk = fcmp olt double %i.bj, f0x3CB0000000000000
  br i1 %i.bk, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.bl = fcmp olt double %1, 0.000000e+00
  %i.bm = icmp eq i32 %i.d, 5                     ; 2 uses
  %i.bn = select i1 %i.bm, ptr @_ZN2cv3hal10invSqrt32fEPKfPfi, ptr @_ZN2cv3hal10invSqrt64fEPKdPdi
  %i.bo = select i1 %i.bm, ptr @_ZN2cv3hal7sqrt32fEPKfPfi, ptr @_ZN2cv3hal7sqrt64fEPKdPdi
  %i.bp = select i1 %i.bl, ptr %i.bn, ptr %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %bb.ah
  %.0138 = phi i64 [ 0, %bb.ah ], [ %i.bw, %bb.ak ] ; 2 uses
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !44
  %i.bt = icmp ult i64 %.0138, %i.bs
  br i1 %i.bt, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  %i.bu = load ptr, ptr %i.b, align 16, !tbaa !45
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !45
  invoke void %i.bp(ptr noundef %i.bu, ptr noundef %i.bv, i32 noundef %.fr248)
          to label %bb.ak unwind label %bb.al, !callees !117

bb.ak:                                            ; preds = %bb.aj
  %i.bw = add nuw i64 %.0138, 1
  %i.bx = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %9)
          to label %bb.ai unwind label %bb.al, !llvm.loop !118 ; 0 uses

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.am:                                            ; preds = %bb.ag
  %i.bz = or disjoint i32 %i.f, 1024              ; 2 uses
  %.lhs.trunc = trunc nuw nsw i32 %i.bz to i16
  %.rhs.trunc = trunc nuw nsw i32 %i.g to i16     ; 3 uses
  %i.ca = urem i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i16 %i.ca to i32
  %i.cb = sub nuw nsw i32 %i.bz, %.zext
  %.sroa.speculated195 = call i32 @llvm.smin.i32(i32 %i.cb, i32 %.fr248) ; 5 uses
  %i.cc = load i32, ptr %7, align 8, !tbaa !27
  %i.cd = shl i32 %i.cc, 2
  %i.ce = and i32 %i.cd, 124
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = lshr i64 1275511473185297, %i.cf
  %i.ch = and i64 %i.cg, 15                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.ci, ptr %12, align 8, !tbaa !119
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 1032, ptr %i.cj, align 8, !tbaa !121
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !122
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !122
  %i.co = icmp eq ptr %i.cl, %i.cn
  br i1 %i.co, label %bb.an, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit

bb.an:                                            ; preds = %bb.am
  %i.cp = sext i32 %.sroa.speculated195 to i64
  %i.cq = mul nsw i64 %i.ch, %i.cp                ; 3 uses
  %.not.i = icmp ugt i64 %i.cq, 1032
  store i64 %i.cq, ptr %i.cj, align 8, !tbaa !121
  br i1 %.not.i, label %bb.ao, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit

bb.ao:                                            ; preds = %bb.an
  %i.cr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cq) #29
          to label %.noexc184 unwind label %bb.ap ; 2 uses

.noexc184:                                        ; preds = %bb.ao
  store ptr %i.cr, ptr %12, align 8, !tbaa !119
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit

bb.ap:                                            ; preds = %bb.ao
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.split243.us

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit:     ; preds = %bb.an, %.noexc184, %bb.am
  %.0146 = phi ptr [ null, %bb.am ], [ %i.cr, %.noexc184 ], [ %i.ci, %bb.an ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.cu = icmp sgt i32 %.fr248, 0
  %.not = icmp eq ptr %.0146, null                ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %i.cw = fcmp olt double %1, 0.000000e+00        ; 2 uses
  br i1 %i.cu, label %.split.us227, label %.split

.split.us227:                                     ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit
  %i.cx = icmp eq i32 %i.d, 5
  br i1 %i.cx, label %.split.us227.split.us.preheader, label %.split.us227.split.preheader

.split.us227.split.preheader:                     ; preds = %.split.us227
  %broadcast.splatinsert = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cy = trunc i32 %i.e to i16
  %i.cz = and i16 %i.cy, 127                      ; 2 uses
  %i.da = or disjoint i16 %i.cz, 1024             ; 2 uses
  %invariant.op = sub i16 %i.cz, %i.da
  %invariant.op438 = add i16 %invariant.op, 1024
  br label %.split.us227.split

.split.us227.split.us.preheader:                  ; preds = %.split.us227
  %broadcast.splatinsert410 = insertelement <4 x double> poison, double %1, i64 0
  %broadcast.splat411 = shufflevector <4 x double> %broadcast.splatinsert410, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.db = trunc i32 %i.e to i16
  %i.dc = and i16 %i.db, 127                      ; 2 uses
  %i.dd = or disjoint i16 %i.dc, 1024             ; 2 uses
  %invariant.op440 = sub i16 %i.dc, %i.dd
  %invariant.op441 = add i16 %invariant.op440, 1024
  br label %.split.us227.split.us

.split.us227.split.us:                            ; preds = %.split.us227.split.us.preheader, %._crit_edge226.split.us.us.us
  %.0144.us.us = phi i64 [ %i.ia, %._crit_edge226.split.us.us.us ], [ 0, %.split.us227.split.us.preheader ] ; 2 uses
  %i.de = load i64, ptr %i.ct, align 8, !tbaa !44
  %i.df = icmp ult i64 %.0144.us.us, %i.de
  br i1 %i.df, label %.preheader215.us.us.preheader, label %.split239.us

.preheader215.us.us.preheader:                    ; preds = %.split.us227.split.us
  %.pre271 = load ptr, ptr %i.b, align 16, !tbaa !45
  %.pre272 = load ptr, ptr %i.cv, align 8, !tbaa !45
  br label %.preheader215.us.us

.preheader215.us.us:                              ; preds = %.preheader215.us.us.preheader, %.loopexit210.us.us.us
  %i.dg = phi ptr [ %i.ec, %.loopexit210.us.us.us ], [ %.pre272, %.preheader215.us.us.preheader ] ; 24 uses
  %i.dh = phi ptr [ %i.ea, %.loopexit210.us.us.us ], [ %.pre271, %.preheader215.us.us.preheader ] ; 8 uses
  %.0139224.us.us.us = phi i32 [ %i.ed, %.loopexit210.us.us.us ], [ 0, %.preheader215.us.us.preheader ] ; 2 uses
  %i.di = ptrtoaddr ptr %i.dg to i64
  %i.dj = ptrtoaddr ptr %i.dh to i64
  %i.dk = sub nsw i32 %.fr248, %.0139224.us.us.us ; 2 uses
  %.sroa.speculated.us.us.us = call i32 @llvm.smin.i32(i32 %.sroa.speculated195, i32 %i.dk) ; 8 uses
  %i.dl = select i1 %.not, ptr %i.dh, ptr %.0146  ; 3 uses
  %.not160.us.us.us = icmp eq ptr %i.dl, %i.dh
  br i1 %.not160.us.us.us, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.preheader215.us.us
  %i.dm = sext i32 %.sroa.speculated.us.us.us to i64
  %i.dn = mul nsw i64 %i.ch, %i.dm
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dl, ptr align 4 %i.dh, i64 %i.dn, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.preheader215.us.us
  invoke void @_ZN2cv3hal6log32fEPKfPfi(ptr noundef %i.dl, ptr noundef %i.dg, i32 noundef %.sroa.speculated.us.us.us)
          to label %.preheader211.us.us.us unwind label %.split.us.split.us.split.us

.lr.ph220.us.us.us:                               ; preds = %.lr.ph220.us.us.us.preheader431, %.lr.ph220.us.us.us
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %.lr.ph220.us.us.us ], [ %indvars.iv261.ph, %.lr.ph220.us.us.us.preheader431 ] ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv261 ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !123
  %i.dq = fpext float %i.dp to double
  %i.dr = fmul double %1, %i.dq
  %i.ds = fptrunc double %i.dr to float
  store float %i.ds, ptr %i.do, align 4, !tbaa !123
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %i.dt = icmp samesign ult i64 %indvars.iv.next262, %i.eg
  br i1 %i.dt, label %.lr.ph220.us.us.us, label %._crit_edge221.us.us.us, !llvm.loop !125

._crit_edge221.us.us.us:                          ; preds = %.lr.ph220.us.us.us, %middle.block417, %.preheader211.us.us.us
  invoke void @_ZN2cv3hal6exp32fEPKfPfi(ptr noundef %i.dg, ptr noundef %i.dg, i32 noundef %.sroa.speculated.us.us.us)
          to label %.preheader209.us.us.us unwind label %.split.us.split.us.split.us

.lr.ph223.us.split.us237.us:                      ; preds = %.lr.ph223.us.split.us237.us.preheader429, %bb.at
  %indvars.iv264 = phi i64 [ %indvars.iv.next265, %bb.at ], [ %indvars.iv264.ph, %.lr.ph223.us.split.us237.us.preheader429 ] ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv264
  %i.dv = load float, ptr %i.du, align 4, !tbaa !123
  %or.cond = fcmp uge float %i.dv, 0.000000e+00
  br i1 %or.cond, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph223.us.split.us237.us
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv264
  store float +nan(0x3FFFFF), ptr %i.dw, align 4, !tbaa !123
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph223.us.split.us237.us
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %i.dx = icmp samesign ult i64 %indvars.iv.next265, %i.eq
  br i1 %i.dx, label %.lr.ph223.us.split.us237.us, label %.loopexit210.us.us.us, !llvm.loop !128

.preheader209.us.us.us:                           ; preds = %._crit_edge221.us.us.us
  br i1 %i.ef, label %.lr.ph223.us.us.us, label %.preheader209.us.us.us..loopexit210.us.us.us_crit_edge

.preheader209.us.us.us..loopexit210.us.us.us_crit_edge: ; preds = %.preheader209.us.us.us
  %.pre273 = sext i32 %.sroa.speculated.us.us.us to i64
  br label %.loopexit210.us.us.us

.loopexit210.us.us.us:                            ; preds = %bb.at, %bb.au, %middle.block403, %middle.block373, %.preheader209.us.us.us..loopexit210.us.us.us_crit_edge
  %.pre-phi = phi i64 [ %.pre273, %.preheader209.us.us.us..loopexit210.us.us.us_crit_edge ], [ %i.eq, %middle.block373 ], [ %i.eq, %middle.block403 ], [ %i.eq, %bb.au ], [ %i.eq, %bb.at ]
  %i.dy = mul nsw i64 %i.ch, %.pre-phi            ; 2 uses
  %i.dz = load ptr, ptr %i.b, align 16, !tbaa !45
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dy ; 2 uses
  store ptr %i.ea, ptr %i.b, align 16, !tbaa !45
  %i.eb = load ptr, ptr %i.cv, align 8, !tbaa !45
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dy ; 2 uses
  store ptr %i.ec, ptr %i.cv, align 8, !tbaa !45
  %i.ed = add nuw nsw i32 %.0139224.us.us.us, %.sroa.speculated195 ; 2 uses
  %i.ee = icmp slt i32 %i.ed, %.fr248
  br i1 %i.ee, label %.preheader215.us.us, label %._crit_edge226.split.us.us.us, !llvm.loop !129

.preheader211.us.us.us:                           ; preds = %bb.ar
  %i.ef = icmp sgt i32 %.sroa.speculated.us.us.us, 0 ; 2 uses
  br i1 %i.ef, label %.lr.ph220.us.us.us.preheader, label %._crit_edge221.us.us.us

.lr.ph220.us.us.us.preheader:                     ; preds = %.preheader211.us.us.us
  %i.eg = zext nneg i32 %.sroa.speculated.us.us.us to i64 ; 3 uses
  %min.iters.check407 = icmp ult i32 %.sroa.speculated.us.us.us, 8
  br i1 %min.iters.check407, label %.lr.ph220.us.us.us.preheader431, label %vector.ph408

vector.ph408:                                     ; preds = %.lr.ph220.us.us.us.preheader
  %n.vec409 = and i64 %i.eg, 2147483640           ; 3 uses
  br label %vector.body412

vector.body412:                                   ; preds = %vector.body412, %vector.ph408
  %index413 = phi i64 [ 0, %vector.ph408 ], [ %index.next416, %vector.body412 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index413 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %wide.load414 = load <4 x float>, ptr %i.eh, align 4, !tbaa !123
  %wide.load415 = load <4 x float>, ptr %i.ei, align 4, !tbaa !123
  %i.ej = fpext <4 x float> %wide.load414 to <4 x double>
  %i.ek = fpext <4 x float> %wide.load415 to <4 x double>
  %i.el = fmul <4 x double> %broadcast.splat411, %i.ej
  %i.em = fmul <4 x double> %broadcast.splat411, %i.ek
  %i.en = fptrunc <4 x double> %i.el to <4 x float>
  %i.eo = fptrunc <4 x double> %i.em to <4 x float>
  store <4 x float> %i.en, ptr %i.eh, align 4, !tbaa !123
  store <4 x float> %i.eo, ptr %i.ei, align 4, !tbaa !123
  %index.next416 = add nuw i64 %index413, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next416, %n.vec409
  br i1 %i.ep, label %middle.block417, label %vector.body412, !llvm.loop !130

middle.block417:                                  ; preds = %vector.body412
  %cmp.n418 = icmp eq i64 %n.vec409, %i.eg
  br i1 %cmp.n418, label %._crit_edge221.us.us.us, label %.lr.ph220.us.us.us.preheader431

.lr.ph220.us.us.us.preheader431:                  ; preds = %.lr.ph220.us.us.us.preheader, %middle.block417
  %indvars.iv261.ph = phi i64 [ 0, %.lr.ph220.us.us.us.preheader ], [ %n.vec409, %middle.block417 ]
  br label %.lr.ph220.us.us.us

.lr.ph223.us.us.us:                               ; preds = %.preheader209.us.us.us
  %i.eq = zext nneg i32 %.sroa.speculated.us.us.us to i64 ; 6 uses
  %i.er = urem i16 %i.dd, %.rhs.trunc
  %.reass442 = add i16 %i.er, %invariant.op441
  %i.es = zext i16 %.reass442 to i32
  %i.et = sub nsw i32 %i.f, %i.es
  %13 = add nsw i32 %i.et, 1024
  %i.eu = call i32 @llvm.smin.i32(i32 %.fr248, i32 %i.dk)
  %i.ev = call i32 @llvm.smin.i32(i32 %i.eu, i32 %13) ; 2 uses
  %i.ew = zext i32 %i.ev to i64                   ; 4 uses
  %min.iters.check349 = icmp ult i32 %i.ev, 8
  %i.ex = sub i64 %i.dj, %i.di
  %diff.check347 = icmp ugt i64 %i.ex, -32
  %or.cond424 = select i1 %min.iters.check349, i1 true, i1 %diff.check347 ; 2 uses
  br i1 %i.cw, label %.lr.ph223.us.split.us.us.us.preheader, label %.lr.ph223.us.split.us237.us.preheader

.lr.ph223.us.split.us237.us.preheader:            ; preds = %.lr.ph223.us.us.us
  br i1 %or.cond424, label %.lr.ph223.us.split.us237.us.preheader429, label %vector.ph380

vector.ph380:                                     ; preds = %.lr.ph223.us.split.us237.us.preheader
  %n.vec381 = and i64 %i.ew, 4294967288           ; 3 uses
  br label %vector.body382

vector.body382:                                   ; preds = %pred.store.continue401, %vector.ph380
  %index383 = phi i64 [ 0, %vector.ph380 ], [ %index.next402, %pred.store.continue401 ] ; 10 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %index383 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load384 = load <4 x float>, ptr %i.ey, align 4, !tbaa !123
  %wide.load385 = load <4 x float>, ptr %i.ez, align 4, !tbaa !123
  %i.fa = fcmp olt <4 x float> %wide.load384, zeroinitializer ; 4 uses
  %i.fb = fcmp olt <4 x float> %wide.load385, zeroinitializer ; 4 uses
  %i.fc = extractelement <4 x i1> %i.fa, i64 0
  br i1 %i.fc, label %pred.store.if386, label %pred.store.continue387

pred.store.if386:                                 ; preds = %vector.body382
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index383
  store float +nan(0x3FFFFF), ptr %i.fd, align 4, !tbaa !123
  br label %pred.store.continue387

pred.store.continue387:                           ; preds = %pred.store.if386, %vector.body382
  %i.fe = extractelement <4 x i1> %i.fa, i64 1
  br i1 %i.fe, label %pred.store.if388, label %pred.store.continue389

pred.store.if388:                                 ; preds = %pred.store.continue387
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index383
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store float +nan(0x3FFFFF), ptr %i.fg, align 4, !tbaa !123
  br label %pred.store.continue389

pred.store.continue389:                           ; preds = %pred.store.if388, %pred.store.continue387
  %i.fh = extractelement <4 x i1> %i.fa, i64 2
  br i1 %i.fh, label %pred.store.if390, label %pred.store.continue391

pred.store.if390:                                 ; preds = %pred.store.continue389
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index383
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store float +nan(0x3FFFFF), ptr %i.fj, align 4, !tbaa !123
  br label %pred.store.continue391

pred.store.continue391:                           ; preds = %pred.store.if390, %pred.store.continue389
  %i.fk = extractelement <4 x i1> %i.fa, i64 3
  br i1 %i.fk, label %pred.store.if392, label %pred.store.continue393

pred.store.if392:                                 ; preds = %pred.store.continue391
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index383
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store float +nan(0x3FFFFF), ptr %i.fm, align 4, !tbaa !123
  br label %pred.store.continue393

pred.store.continue393:                           ; preds = %pred.store.if392, %pred.store.continue391
  %i.fn = extractelement <4 x i1> %i.fb, i64 0
  br i1 %i.fn, label %pred.store.if394, label %pred.store.continue395

pred.store.if394:                                 ; preds = %pred.store.continue393
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index383
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store float +nan(0x3FFFFF), ptr %i.fp, align 4, !tbaa !123
  br label %pred.store.continue395

pred.store.continue395:                           ; preds = %pred.store.if394, %pred.store.continue393
  %i.fq = extractelement <4 x i1> %i.fb, i64 1
  br i1 %i.fq, label %pred.store.if396, label %pred.store.continue397

pred.store.if396:                                 ; preds = %pred.store.continue395
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index383
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 20
  store float +nan(0x3FFFFF), ptr %i.fs, align 4, !tbaa !123
  br label %pred.store.continue397

pred.store.continue397:                           ; preds = %pred.store.if396, %pred.store.continue395
  %i.ft = extractelement <4 x i1> %i.fb, i64 2
  br i1 %i.ft, label %pred.store.if398, label %pred.store.continue399

pred.store.if398:                                 ; preds = %pred.store.continue397
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index383
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  store float +nan(0x3FFFFF), ptr %i.fv, align 4, !tbaa !123
  br label %pred.store.continue399

pred.store.continue399:                           ; preds = %pred.store.if398, %pred.store.continue397
  %i.fw = extractelement <4 x i1> %i.fb, i64 3
  br i1 %i.fw, label %pred.store.if400, label %pred.store.continue401

pred.store.if400:                                 ; preds = %pred.store.continue399
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index383
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 28
  store float +nan(0x3FFFFF), ptr %i.fy, align 4, !tbaa !123
  br label %pred.store.continue401

pred.store.continue401:                           ; preds = %pred.store.if400, %pred.store.continue399
  %index.next402 = add nuw i64 %index383, 8       ; 2 uses
  %i.fz = icmp eq i64 %index.next402, %n.vec381
  br i1 %i.fz, label %middle.block403, label %vector.body382, !llvm.loop !131

middle.block403:                                  ; preds = %pred.store.continue401
  %cmp.n404 = icmp eq i64 %n.vec381, %i.ew
  br i1 %cmp.n404, label %.loopexit210.us.us.us, label %.lr.ph223.us.split.us237.us.preheader429

.lr.ph223.us.split.us237.us.preheader429:         ; preds = %.lr.ph223.us.split.us237.us.preheader, %middle.block403
  %indvars.iv264.ph = phi i64 [ 0, %.lr.ph223.us.split.us237.us.preheader ], [ %n.vec381, %middle.block403 ]
  br label %.lr.ph223.us.split.us237.us

.lr.ph223.us.split.us.us.us.preheader:            ; preds = %.lr.ph223.us.us.us
  br i1 %or.cond424, label %.lr.ph223.us.split.us.us.us.preheader428, label %vector.ph350

vector.ph350:                                     ; preds = %.lr.ph223.us.split.us.us.us.preheader
  %n.vec351 = and i64 %i.ew, 4294967288           ; 3 uses
  br label %vector.body352

vector.body352:                                   ; preds = %pred.store.continue371, %vector.ph350
  %index353 = phi i64 [ 0, %vector.ph350 ], [ %index.next372, %pred.store.continue371 ] ; 10 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %index353 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %wide.load354 = load <4 x float>, ptr %i.ga, align 4, !tbaa !123 ; 5 uses
  %wide.load355 = load <4 x float>, ptr %i.gb, align 4, !tbaa !123 ; 5 uses
  %i.gc = fcmp ole <4 x float> %wide.load354, zeroinitializer ; 4 uses
  %i.gd = fcmp ole <4 x float> %wide.load355, zeroinitializer ; 4 uses
  %i.ge = extractelement <4 x i1> %i.gc, i64 0
  br i1 %i.ge, label %pred.store.if356, label %pred.store.continue357

pred.store.if356:                                 ; preds = %vector.body352
  %i.gf = extractelement <4 x float> %wide.load354, i64 0
  %i.gg = fcmp oeq float %i.gf, 0.000000e+00
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index353
  %i.gi = select i1 %i.gg, float +inf, float +nan(0x3FFFFF)
  store float %i.gi, ptr %i.gh, align 4, !tbaa !123
  br label %pred.store.continue357

pred.store.continue357:                           ; preds = %pred.store.if356, %vector.body352
  %i.gj = extractelement <4 x i1> %i.gc, i64 1
  br i1 %i.gj, label %pred.store.if358, label %pred.store.continue359

pred.store.if358:                                 ; preds = %pred.store.continue357
  %i.gk = extractelement <4 x float> %wide.load354, i64 1
  %i.gl = fcmp oeq float %i.gk, 0.000000e+00
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index353
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.go = select i1 %i.gl, float +inf, float +nan(0x3FFFFF)
  store float %i.go, ptr %i.gn, align 4, !tbaa !123
  br label %pred.store.continue359

pred.store.continue359:                           ; preds = %pred.store.if358, %pred.store.continue357
  %i.gp = extractelement <4 x i1> %i.gc, i64 2
  br i1 %i.gp, label %pred.store.if360, label %pred.store.continue361

pred.store.if360:                                 ; preds = %pred.store.continue359
  %i.gq = extractelement <4 x float> %wide.load354, i64 2
  %i.gr = fcmp oeq float %i.gq, 0.000000e+00
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index353
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = select i1 %i.gr, float +inf, float +nan(0x3FFFFF)
  store float %i.gu, ptr %i.gt, align 4, !tbaa !123
  br label %pred.store.continue361

pred.store.continue361:                           ; preds = %pred.store.if360, %pred.store.continue359
  %i.gv = extractelement <4 x i1> %i.gc, i64 3
  br i1 %i.gv, label %pred.store.if362, label %pred.store.continue363

pred.store.if362:                                 ; preds = %pred.store.continue361
  %i.gw = extractelement <4 x float> %wide.load354, i64 3
  %i.gx = fcmp oeq float %i.gw, 0.000000e+00
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index353
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  %i.ha = select i1 %i.gx, float +inf, float +nan(0x3FFFFF)
  store float %i.ha, ptr %i.gz, align 4, !tbaa !123
  br label %pred.store.continue363

pred.store.continue363:                           ; preds = %pred.store.if362, %pred.store.continue361
  %i.hb = extractelement <4 x i1> %i.gd, i64 0
  br i1 %i.hb, label %pred.store.if364, label %pred.store.continue365

pred.store.if364:                                 ; preds = %pred.store.continue363
  %i.hc = extractelement <4 x float> %wide.load355, i64 0
  %i.hd = fcmp oeq float %i.hc, 0.000000e+00
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index353
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = select i1 %i.hd, float +inf, float +nan(0x3FFFFF)
  store float %i.hg, ptr %i.hf, align 4, !tbaa !123
  br label %pred.store.continue365

pred.store.continue365:                           ; preds = %pred.store.if364, %pred.store.continue363
  %i.hh = extractelement <4 x i1> %i.gd, i64 1
  br i1 %i.hh, label %pred.store.if366, label %pred.store.continue367

pred.store.if366:                                 ; preds = %pred.store.continue365
  %i.hi = extractelement <4 x float> %wide.load355, i64 1
  %i.hj = fcmp oeq float %i.hi, 0.000000e+00
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index353
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 20
  %i.hm = select i1 %i.hj, float +inf, float +nan(0x3FFFFF)
  store float %i.hm, ptr %i.hl, align 4, !tbaa !123
  br label %pred.store.continue367

pred.store.continue367:                           ; preds = %pred.store.if366, %pred.store.continue365
  %i.hn = extractelement <4 x i1> %i.gd, i64 2
  br i1 %i.hn, label %pred.store.if368, label %pred.store.continue369

pred.store.if368:                                 ; preds = %pred.store.continue367
  %i.ho = extractelement <4 x float> %wide.load355, i64 2
  %i.hp = fcmp oeq float %i.ho, 0.000000e+00
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index353
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = select i1 %i.hp, float +inf, float +nan(0x3FFFFF)
  store float %i.hs, ptr %i.hr, align 4, !tbaa !123
  br label %pred.store.continue369

pred.store.continue369:                           ; preds = %pred.store.if368, %pred.store.continue367
  %i.ht = extractelement <4 x i1> %i.gd, i64 3
  br i1 %i.ht, label %pred.store.if370, label %pred.store.continue371

pred.store.if370:                                 ; preds = %pred.store.continue369
  %i.hu = extractelement <4 x float> %wide.load355, i64 3
  %i.hv = fcmp oeq float %i.hu, 0.000000e+00
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index353
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 28
  %i.hy = select i1 %i.hv, float +inf, float +nan(0x3FFFFF)
  store float %i.hy, ptr %i.hx, align 4, !tbaa !123
  br label %pred.store.continue371

pred.store.continue371:                           ; preds = %pred.store.if370, %pred.store.continue369
  %index.next372 = add nuw i64 %index353, 8       ; 2 uses
  %i.hz = icmp eq i64 %index.next372, %n.vec351
  br i1 %i.hz, label %middle.block373, label %vector.body352, !llvm.loop !132

middle.block373:                                  ; preds = %pred.store.continue371
  %cmp.n374 = icmp eq i64 %n.vec351, %i.ew
  br i1 %cmp.n374, label %.loopexit210.us.us.us, label %.lr.ph223.us.split.us.us.us.preheader428

.lr.ph223.us.split.us.us.us.preheader428:         ; preds = %.lr.ph223.us.split.us.us.us.preheader, %middle.block373
  %indvars.iv267.ph = phi i64 [ 0, %.lr.ph223.us.split.us.us.us.preheader ], [ %n.vec351, %middle.block373 ]
  br label %.lr.ph223.us.split.us.us.us

._crit_edge226.split.us.us.us:                    ; preds = %.loopexit210.us.us.us
  %i.ia = add nuw i64 %.0144.us.us, 1
  %i.ib = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %9)
          to label %.split.us227.split.us unwind label %.split243.us.split.us, !llvm.loop !133 ; 0 uses

.lr.ph223.us.split.us.us.us:                      ; preds = %.lr.ph223.us.split.us.us.us.preheader428, %bb.au
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %bb.au ], [ %indvars.iv267.ph, %.lr.ph223.us.split.us.us.us.preheader428 ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv267
  %i.id = load float, ptr %i.ic, align 4, !tbaa !123 ; 2 uses
  %i.ie = fcmp ugt float %i.id, 0.000000e+00
  br i1 %i.ie, label %bb.au, label %.sink.split

.sink.split:                                      ; preds = %.lr.ph223.us.split.us.us.us
  %i.if = fcmp oeq float %i.id, 0.000000e+00
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv267
  %. = select i1 %i.if, float +inf, float +nan(0x3FFFFF)
  store float %., ptr %i.ig, align 4, !tbaa !123
  br label %bb.au

bb.au:                                            ; preds = %.sink.split, %.lr.ph223.us.split.us.us.us
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %i.ih = icmp samesign ult i64 %indvars.iv.next268, %i.eq
  br i1 %i.ih, label %.lr.ph223.us.split.us.us.us, label %.loopexit210.us.us.us, !llvm.loop !134

.split243.us.split.us:                            ; preds = %._crit_edge226.split.us.us.us
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.split243.us

.split.us.split.us.split.us:                      ; preds = %._crit_edge221.us.us.us, %bb.ar
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.split243.us

.split.us227.split:                               ; preds = %.split.us227.split.preheader, %._crit_edge226.split.us233
  %.0144.us = phi i64 [ %i.lw, %._crit_edge226.split.us233 ], [ 0, %.split.us227.split.preheader ] ; 2 uses
  %i.ik = load i64, ptr %i.ct, align 8, !tbaa !44
  %i.il = icmp ult i64 %.0144.us, %i.ik
  br i1 %i.il, label %.preheader215.us.preheader, label %.split239.us

.preheader215.us.preheader:                       ; preds = %.split.us227.split
  %.pre = load ptr, ptr %i.b, align 16, !tbaa !45
  %.pre270 = load ptr, ptr %i.cv, align 8, !tbaa !45
  br label %.preheader215.us

.preheader215.us:                                 ; preds = %.preheader215.us.preheader, %.loopexit213.us
  %i.im = phi ptr [ %i.jg, %.loopexit213.us ], [ %.pre270, %.preheader215.us.preheader ] ; 16 uses
  %i.in = phi ptr [ %i.je, %.loopexit213.us ], [ %.pre, %.preheader215.us.preheader ] ; 8 uses
  %.0139224.us228 = phi i32 [ %i.jh, %.loopexit213.us ], [ 0, %.preheader215.us.preheader ] ; 2 uses
  %i.io = ptrtoaddr ptr %i.im to i64
  %i.ip = ptrtoaddr ptr %i.in to i64
  %i.iq = sub nsw i32 %.fr248, %.0139224.us228    ; 2 uses
  %.sroa.speculated.us229 = call i32 @llvm.smin.i32(i32 %.sroa.speculated195, i32 %i.iq) ; 8 uses
  %i.ir = select i1 %.not, ptr %i.in, ptr %.0146  ; 3 uses
  %.not158.us = icmp eq ptr %i.ir, %i.in
  br i1 %.not158.us, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.preheader215.us
  %i.is = sext i32 %.sroa.speculated.us229 to i64
  %i.it = mul nsw i64 %i.ch, %i.is
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ir, ptr align 8 %i.in, i64 %i.it, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.preheader215.us
  invoke void @_ZN2cv3hal6log64fEPKdPdi(ptr noundef %i.ir, ptr noundef %i.im, i32 noundef %.sroa.speculated.us229)
          to label %.preheader214.us unwind label %.split241.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader435, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.us ], [ %indvars.iv.ph, %.lr.ph.us.preheader435 ] ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %indvars.iv ; 2 uses
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !103
  %i.iw = fmul double %1, %i.iv
  store double %i.iw, ptr %i.iu, align 8, !tbaa !103
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ix = icmp samesign ult i64 %indvars.iv.next, %i.jk
  br i1 %i.ix, label %.lr.ph.us, label %._crit_edge.us, !llvm.loop !135

._crit_edge.us:                                   ; preds = %.lr.ph.us, %middle.block343, %.preheader214.us
  invoke void @_ZN2cv3hal6exp64fEPKdPdi(ptr noundef %i.im, ptr noundef %i.im, i32 noundef %.sroa.speculated.us229)
          to label %.preheader212.us unwind label %.split241.us

.lr.ph218.split.us232:                            ; preds = %.lr.ph218.split.us232.preheader433, %bb.ay
  %indvars.iv255 = phi i64 [ %indvars.iv.next256, %bb.ay ], [ %indvars.iv255.ph, %.lr.ph218.split.us232.preheader433 ] ; 3 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv255
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !103
  %or.cond247 = fcmp uge double %i.iz, 0.000000e+00
  br i1 %or.cond247, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph218.split.us232
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %indvars.iv255
  store double +nan(0x7FFFFFFFFFFFF), ptr %i.ja, align 8, !tbaa !103
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph218.split.us232
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %i.jb = icmp samesign ult i64 %indvars.iv.next256, %i.jq
  br i1 %i.jb, label %.lr.ph218.split.us232, label %.loopexit213.us, !llvm.loop !136

.preheader212.us:                                 ; preds = %._crit_edge.us
  br i1 %i.jj, label %.lr.ph218.us, label %.preheader212.us..loopexit213.us_crit_edge

.preheader212.us..loopexit213.us_crit_edge:       ; preds = %.preheader212.us
  %.pre274 = sext i32 %.sroa.speculated.us229 to i64
  br label %.loopexit213.us

.loopexit213.us:                                  ; preds = %bb.ay, %bb.az, %middle.block331, %middle.block, %.preheader212.us..loopexit213.us_crit_edge
  %.pre-phi275 = phi i64 [ %.pre274, %.preheader212.us..loopexit213.us_crit_edge ], [ %i.jq, %middle.block ], [ %i.jq, %middle.block331 ], [ %i.jq, %bb.az ], [ %i.jq, %bb.ay ]
  %i.jc = mul nsw i64 %i.ch, %.pre-phi275         ; 2 uses
  %i.jd = load ptr, ptr %i.b, align 16, !tbaa !45
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jc ; 2 uses
  store ptr %i.je, ptr %i.b, align 16, !tbaa !45
  %i.jf = load ptr, ptr %i.cv, align 8, !tbaa !45
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jc ; 2 uses
  store ptr %i.jg, ptr %i.cv, align 8, !tbaa !45
  %i.jh = add nuw nsw i32 %.0139224.us228, %.sroa.speculated195 ; 2 uses
  %i.ji = icmp slt i32 %i.jh, %.fr248
  br i1 %i.ji, label %.preheader215.us, label %._crit_edge226.split.us233, !llvm.loop !129

.preheader214.us:                                 ; preds = %bb.aw
  %i.jj = icmp sgt i32 %.sroa.speculated.us229, 0 ; 2 uses
  br i1 %i.jj, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %.preheader214.us
  %i.jk = zext nneg i32 %.sroa.speculated.us229 to i64 ; 3 uses
  %min.iters.check335 = icmp ult i32 %.sroa.speculated.us229, 4
  br i1 %min.iters.check335, label %.lr.ph.us.preheader435, label %vector.ph336

vector.ph336:                                     ; preds = %.lr.ph.us.preheader
  %n.vec337 = and i64 %i.jk, 2147483644           ; 3 uses
  br label %vector.body338

vector.body338:                                   ; preds = %vector.body338, %vector.ph336
  %index339 = phi i64 [ 0, %vector.ph336 ], [ %index.next342, %vector.body338 ] ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %index339 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16 ; 2 uses
  %wide.load340 = load <2 x double>, ptr %i.jl, align 8, !tbaa !103
  %wide.load341 = load <2 x double>, ptr %i.jm, align 8, !tbaa !103
  %i.jn = fmul <2 x double> %broadcast.splat, %wide.load340
  %i.jo = fmul <2 x double> %broadcast.splat, %wide.load341
  store <2 x double> %i.jn, ptr %i.jl, align 8, !tbaa !103
  store <2 x double> %i.jo, ptr %i.jm, align 8, !tbaa !103
  %index.next342 = add nuw i64 %index339, 4       ; 2 uses
  %i.jp = icmp eq i64 %index.next342, %n.vec337
  br i1 %i.jp, label %middle.block343, label %vector.body338, !llvm.loop !137

middle.block343:                                  ; preds = %vector.body338
  %cmp.n344 = icmp eq i64 %n.vec337, %i.jk
  br i1 %cmp.n344, label %._crit_edge.us, label %.lr.ph.us.preheader435

.lr.ph.us.preheader435:                           ; preds = %.lr.ph.us.preheader, %middle.block343
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us.preheader ], [ %n.vec337, %middle.block343 ]
  br label %.lr.ph.us

.lr.ph218.us:                                     ; preds = %.preheader212.us
  %i.jq = zext nneg i32 %.sroa.speculated.us229 to i64 ; 6 uses
  %i.jr = urem i16 %i.da, %.rhs.trunc
  %.reass439 = add i16 %i.jr, %invariant.op438
  %i.js = zext i16 %.reass439 to i32
  %i.jt = sub nsw i32 %i.f, %i.js
  %14 = add nsw i32 %i.jt, 1024
  %i.ju = call i32 @llvm.smin.i32(i32 %.fr248, i32 %i.iq)
  %i.jv = call i32 @llvm.smin.i32(i32 %i.ju, i32 %14) ; 2 uses
  %i.jw = zext i32 %i.jv to i64                   ; 4 uses
  %min.iters.check = icmp ult i32 %i.jv, 4
  %i.jx = sub i64 %i.ip, %i.io
  %diff.check = icmp ugt i64 %i.jx, -32
  %or.cond426 = select i1 %min.iters.check, i1 true, i1 %diff.check ; 2 uses
  br i1 %i.cw, label %.lr.ph218.split.us.us.preheader, label %.lr.ph218.split.us232.preheader

.lr.ph218.split.us232.preheader:                  ; preds = %.lr.ph218.us
  br i1 %or.cond426, label %.lr.ph218.split.us232.preheader433, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph218.split.us232.preheader
  %n.vec317 = and i64 %i.jw, 4294967292           ; 3 uses
  br label %vector.body318

vector.body318:                                   ; preds = %pred.store.continue329, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next330, %pred.store.continue329 ] ; 6 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %index319 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %wide.load320 = load <2 x double>, ptr %i.jy, align 8, !tbaa !103
  %wide.load321 = load <2 x double>, ptr %i.jz, align 8, !tbaa !103
  %i.ka = fcmp olt <2 x double> %wide.load320, zeroinitializer ; 2 uses
  %i.kb = fcmp olt <2 x double> %wide.load321, zeroinitializer ; 2 uses
  %i.kc = extractelement <2 x i1> %i.ka, i64 0
  br i1 %i.kc, label %pred.store.if322, label %pred.store.continue323

pred.store.if322:                                 ; preds = %vector.body318
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %index319
  store double +nan(0x7FFFFFFFFFFFF), ptr %i.kd, align 8, !tbaa !103
  br label %pred.store.continue323

pred.store.continue323:                           ; preds = %pred.store.if322, %vector.body318
  %i.ke = extractelement <2 x i1> %i.ka, i64 1
  br i1 %i.ke, label %pred.store.if324, label %pred.store.continue325

pred.store.if324:                                 ; preds = %pred.store.continue323
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %index319
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store double +nan(0x7FFFFFFFFFFFF), ptr %i.kg, align 8, !tbaa !103
  br label %pred.store.continue325

pred.store.continue325:                           ; preds = %pred.store.if324, %pred.store.continue323
  %i.kh = extractelement <2 x i1> %i.kb, i64 0
  br i1 %i.kh, label %pred.store.if326, label %pred.store.continue327

pred.store.if326:                                 ; preds = %pred.store.continue325
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %index319
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store double +nan(0x7FFFFFFFFFFFF), ptr %i.kj, align 8, !tbaa !103
  br label %pred.store.continue327

pred.store.continue327:                           ; preds = %pred.store.if326, %pred.store.continue325
  %i.kk = extractelement <2 x i1> %i.kb, i64 1
  br i1 %i.kk, label %pred.store.if328, label %pred.store.continue329

pred.store.if328:                                 ; preds = %pred.store.continue327
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %index319
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  store double +nan(0x7FFFFFFFFFFFF), ptr %i.km, align 8, !tbaa !103
  br label %pred.store.continue329

pred.store.continue329:                           ; preds = %pred.store.if328, %pred.store.continue327
  %index.next330 = add nuw i64 %index319, 4       ; 2 uses
  %i.kn = icmp eq i64 %index.next330, %n.vec317
  br i1 %i.kn, label %middle.block331, label %vector.body318, !llvm.loop !138

middle.block331:                                  ; preds = %pred.store.continue329
  %cmp.n332 = icmp eq i64 %n.vec317, %i.jw
  br i1 %cmp.n332, label %.loopexit213.us, label %.lr.ph218.split.us232.preheader433

.lr.ph218.split.us232.preheader433:               ; preds = %.lr.ph218.split.us232.preheader, %middle.block331
  %indvars.iv255.ph = phi i64 [ 0, %.lr.ph218.split.us232.preheader ], [ %n.vec317, %middle.block331 ]
  br label %.lr.ph218.split.us232

.lr.ph218.split.us.us.preheader:                  ; preds = %.lr.ph218.us
  br i1 %or.cond426, label %.lr.ph218.split.us.us.preheader432, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph218.split.us.us.preheader
  %n.vec = and i64 %i.jw, 4294967292              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue311, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue311 ] ; 6 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %index ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %wide.load = load <2 x double>, ptr %i.ko, align 8, !tbaa !103 ; 3 uses
  %wide.load305 = load <2 x double>, ptr %i.kp, align 8, !tbaa !103 ; 3 uses
  %i.kq = fcmp ole <2 x double> %wide.load, zeroinitializer ; 2 uses
  %i.kr = fcmp ole <2 x double> %wide.load305, zeroinitializer ; 2 uses
  %i.ks = extractelement <2 x i1> %i.kq, i64 0
  br i1 %i.ks, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.kt = extractelement <2 x double> %wide.load, i64 0
  %i.ku = fcmp oeq double %i.kt, 0.000000e+00
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %index
  %i.kw = select i1 %i.ku, double +inf, double +nan(0x7FFFFFFFFFFFF)
  store double %i.kw, ptr %i.kv, align 8, !tbaa !103
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.kx = extractelement <2 x i1> %i.kq, i64 1
  br i1 %i.kx, label %pred.store.if306, label %pred.store.continue307

pred.store.if306:                                 ; preds = %pred.store.continue
  %i.ky = extractelement <2 x double> %wide.load, i64 1
  %i.kz = fcmp oeq double %i.ky, 0.000000e+00
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %index
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = select i1 %i.kz, double +inf, double +nan(0x7FFFFFFFFFFFF)
  store double %i.lc, ptr %i.lb, align 8, !tbaa !103
  br label %pred.store.continue307

pred.store.continue307:                           ; preds = %pred.store.if306, %pred.store.continue
  %i.ld = extractelement <2 x i1> %i.kr, i64 0
  br i1 %i.ld, label %pred.store.if308, label %pred.store.continue309

pred.store.if308:                                 ; preds = %pred.store.continue307
  %i.le = extractelement <2 x double> %wide.load305, i64 0
  %i.lf = fcmp oeq double %i.le, 0.000000e+00
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %index
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = select i1 %i.lf, double +inf, double +nan(0x7FFFFFFFFFFFF)
  store double %i.li, ptr %i.lh, align 8, !tbaa !103
  br label %pred.store.continue309

pred.store.continue309:                           ; preds = %pred.store.if308, %pred.store.continue307
  %i.lj = extractelement <2 x i1> %i.kr, i64 1
  br i1 %i.lj, label %pred.store.if310, label %pred.store.continue311

pred.store.if310:                                 ; preds = %pred.store.continue309
  %i.lk = extractelement <2 x double> %wide.load305, i64 1
  %i.ll = fcmp oeq double %i.lk, 0.000000e+00
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %index
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  %i.lo = select i1 %i.ll, double +inf, double +nan(0x7FFFFFFFFFFFF)
  store double %i.lo, ptr %i.ln, align 8, !tbaa !103
  br label %pred.store.continue311

pred.store.continue311:                           ; preds = %pred.store.if310, %pred.store.continue309
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lp = icmp eq i64 %index.next, %n.vec
  br i1 %i.lp, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %pred.store.continue311
  %cmp.n = icmp eq i64 %n.vec, %i.jw
  br i1 %cmp.n, label %.loopexit213.us, label %.lr.ph218.split.us.us.preheader432

.lr.ph218.split.us.us.preheader432:               ; preds = %.lr.ph218.split.us.us.preheader, %middle.block
  %indvars.iv258.ph = phi i64 [ 0, %.lr.ph218.split.us.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph218.split.us.us

.lr.ph218.split.us.us:                            ; preds = %.lr.ph218.split.us.us.preheader432, %bb.az
  %indvars.iv258 = phi i64 [ %indvars.iv.next259, %bb.az ], [ %indvars.iv258.ph, %.lr.ph218.split.us.us.preheader432 ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv258
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !103 ; 2 uses
  %i.ls = fcmp ugt double %i.lr, 0.000000e+00
  br i1 %i.ls, label %bb.az, label %.sink.split297

.sink.split297:                                   ; preds = %.lr.ph218.split.us.us
  %i.lt = fcmp oeq double %i.lr, 0.000000e+00
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %indvars.iv258
  %.299 = select i1 %i.lt, double +inf, double +nan(0x7FFFFFFFFFFFF)
  store double %.299, ptr %i.lu, align 8, !tbaa !103
  br label %bb.az

bb.az:                                            ; preds = %.sink.split297, %.lr.ph218.split.us.us
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %i.lv = icmp samesign ult i64 %indvars.iv.next259, %i.jq
  br i1 %i.lv, label %.lr.ph218.split.us.us, label %.loopexit213.us, !llvm.loop !140

._crit_edge226.split.us233:                       ; preds = %.loopexit213.us
  %i.lw = add nuw i64 %.0144.us, 1
  %i.lx = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %9)
          to label %.split.us227.split unwind label %.split243.us.split, !llvm.loop !133 ; 0 uses

.split241.us:                                     ; preds = %._crit_edge.us, %bb.aw
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %.split243.us

.split243.us.split:                               ; preds = %._crit_edge226.split.us233
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %.split243.us

.split:                                           ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit, %.preheader215
  %.0144 = phi i64 [ %i.mc, %.preheader215 ], [ 0, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit ] ; 2 uses
  %i.ma = load i64, ptr %i.ct, align 8, !tbaa !44
  %i.mb = icmp ult i64 %.0144, %i.ma
  br i1 %i.mb, label %.preheader215, label %.split239.us

.preheader215:                                    ; preds = %.split
  %i.mc = add nuw i64 %.0144, 1
  %i.md = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %9)
          to label %.split unwind label %.split243, !llvm.loop !133 ; 0 uses

.split239.us:                                     ; preds = %.split, %.split.us227.split, %.split.us227.split.us
  %i.me = load ptr, ptr %12, align 8, !tbaa !119  ; 3 uses
  %.not.i.i185 = icmp eq ptr %i.me, %i.ci
  %i.mf = icmp eq ptr %i.me, null
end_hunk_0
