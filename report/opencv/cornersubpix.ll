inline.NumInlined: 78
inline.NumDeleted: 50
begin_hunk_0_@_ZN2cv12cornerSubPixERKNS_11_InputArrayERKNS_17_InputOutputArrayENS_5Size_IiEES7_NS_12TermCriteriaE:bb.a
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

bb.ag:                                            ; preds = %bb.ad
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %13, align 8, !tbaa !18   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %bb.ag
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !23
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260, %bb.af
  %.pn224 = phi { ptr, i32 } [ %i.az, %bb.af ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260 ], [ %i.ba, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %bb.bl

bb.ah:                                            ; preds = %bb.ab
  %i.bg = load i32, ptr %7, align 8, !tbaa !33
  %i.bh = and i32 %i.bg, 4064
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv12cornerSubPixERKNS_11_InputArrayERKNS_17_InputOutputArrayENS_5Size_IiEES7_NS_12TermCriteriaE, ptr noundef nonnull @.str.1, i32 noundef 66) #15
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.ai
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265

bb.am:                                            ; preds = %bb.aj
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %15, align 8, !tbaa !18   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263: ; preds = %bb.am
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !23
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263, %bb.al
  %.pn226 = phi { ptr, i32 } [ %i.bj, %bb.al ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263 ], [ %i.bk, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  br label %bb.bl

bb.an:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef %i.d, i32 noundef %i.b, i32 noundef 5)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  %i.bq = add nuw nsw i32 %i.c, 3                 ; 2 uses
  %i.br = add nuw nsw i32 %i.a, 3                 ; 2 uses
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %18, i32 noundef %i.bq, i32 noundef %i.br, i32 noundef 5)
          to label %.lr.ph.preheader unwind label %bb.ar

.lr.ph.preheader:                                 ; preds = %bb.ao
  %i.bs = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !24 ; 3 uses
  %i.bu = uitofp nneg i32 %.sroa.10.0.extract.trunc to float
  %i.bv = uitofp nneg i32 %.sroa.0153.0.extract.trunc to float
  %smax = call i32 @llvm.smax.i32(i32 %i.a, i32 0)
  %i.bw = or disjoint i32 %smax, 1
  %i.bx = zext i32 %i.b to i64
  %smax367 = call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  %i.by = or disjoint i32 %smax367, 1
  %wide.trip.count368 = zext nneg i32 %i.by to i64
  %wide.trip.count = zext nneg i32 %i.bw to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv364 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next365, %._crit_edge ] ; 3 uses
  %i.bz = sub nsw i64 %indvars.iv364, %.sroa.10.0.extract.shift
  %i.ca = trunc nsw i64 %i.bz to i32
  %i.cb = sitofp i32 %i.ca to float
  %i.cc = fdiv float %i.cb, %i.bu                 ; 2 uses
  %i.cd = fneg float %i.cc
  %i.ce = fmul float %i.cc, %i.cd
  %i.cf = call noundef float @expf(float noundef %i.ce) #14
  %i.cg = mul nuw nsw i64 %indvars.iv364, %i.bx
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.cg
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph, %bb.ap
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ap ] ; 3 uses
  %i.ch = sub i64 %indvars.iv, %2
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = sitofp i32 %i.ci to float
  %i.ck = fdiv float %i.cj, %i.bv                 ; 2 uses
  %i.cl = fneg float %i.ck
  %i.cm = fmul float %i.ck, %i.cl
  %i.cn = call noundef float @expf(float noundef %i.cm) #14
  %i.co = fmul float %i.cf, %i.cn
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.co, ptr %gep, align 4, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ap, !llvm.loop !36

bb.aq:                                            ; preds = %bb.an
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ar:                                            ; preds = %bb.ao
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

._crit_edge:                                      ; preds = %bb.ap
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %exitcond369.not = icmp eq i64 %indvars.iv.next365, %wide.trip.count368
  br i1 %exitcond369.not, label %._crit_edge305, label %.lr.ph, !llvm.loop !38

._crit_edge305:                                   ; preds = %._crit_edge
  %i.cr = and i64 %3, -9223372034707292160
  %or.cond5 = icmp eq i64 %i.cr, 0
  %i.cs = icmp slt i32 %.sroa.0146.0.extract.trunc, %.sroa.0153.0.extract.trunc
  %or.cond249 = select i1 %or.cond5, i1 %i.cs, i1 false
  %i.ct = icmp slt i32 %.sroa.5.0.extract.trunc, %.sroa.10.0.extract.trunc
  %or.cond250 = select i1 %or.cond249, i1 %i.ct, i1 false
  br i1 %or.cond250, label %.lr.ph309.preheader, label %.lr.ph354

.lr.ph309.preheader:                              ; preds = %._crit_edge305
  %i.cu = add nuw nsw i32 %.sroa.5.0.extract.trunc, %.sroa.10.0.extract.trunc
  %i.cv = add nuw i32 %.sroa.0146.0.extract.trunc, %.sroa.0153.0.extract.trunc
  %i.cw = sub nsw i32 %.sroa.0153.0.extract.trunc, %.sroa.0146.0.extract.trunc
  %i.cx = sub nsw i32 %.sroa.10.0.extract.trunc, %.sroa.5.0.extract.trunc ; 2 uses
  %i.cy = or disjoint i32 %i.a, 1                 ; 2 uses
  %i.cz = mul i32 %i.cx, %i.cy
  %i.da = add i32 %i.cz, %.sroa.0153.0.extract.trunc
  %i.db = sub i32 %i.da, %.sroa.0146.0.extract.trunc
  %smax370 = call i32 @llvm.smax.i32(i32 %i.cw, i32 %i.cv)
  %i.dc = add nuw i32 %smax370, %.sroa.0146.0.extract.trunc
  %i.dd = sub i32 %i.dc, %.sroa.0153.0.extract.trunc
  %i.de = zext i32 %i.dd to i64
  %i.df = shl nuw nsw i64 %i.de, 2
  %i.dg = add nuw nsw i64 %i.df, 4
  br label %.lr.ph309

.lr.ph309:                                        ; preds = %.lr.ph309.preheader, %.lr.ph309
  %indvar = phi i32 [ 0, %.lr.ph309.preheader ], [ %indvar.next, %.lr.ph309 ] ; 2 uses
  %.1312 = phi i32 [ %i.cx, %.lr.ph309.preheader ], [ %i.dl, %.lr.ph309 ] ; 2 uses
  %i.dh = mul i32 %i.cy, %indvar
  %i.di = add i32 %i.db, %i.dh
  %i.dj = sext i32 %i.di to i64
  %i.dk = shl nsw i64 %i.dj, 2
  %scevgep = getelementptr i8, ptr %i.bt, i64 %i.dk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.dg, i1 false), !tbaa !34
  %i.dl = add nuw nsw i32 %.1312, 1
  %.not229.not = icmp slt i32 %.1312, %i.cu
  %indvar.next = add i32 %indvar, 1
  br i1 %.not229.not, label %.lr.ph309, label %.lr.ph354, !llvm.loop !39

.lr.ph354:                                        ; preds = %.lr.ph309, %._crit_edge305
  %i.dm = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %21, i64 20
  %i.do = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %22, i64 16
  %.sroa.2.0.insert.ext = zext nneg i32 %i.bq to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0271.0.insert.ext = zext nneg i32 %i.br to i64 ; 2 uses
  %.sroa.0271.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0271.0.insert.ext
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %18, i64 128
  %i.du = uitofp nneg i32 %.sroa.0153.0.extract.trunc to float
  %i.dv = uitofp nneg i32 %.sroa.10.0.extract.trunc to float
  %i.dw = sext i32 %i.b to i64                    ; 2 uses
  %smax378 = call i32 @llvm.smax.i32(i32 %i.a, i32 0) ; 2 uses
  %23 = or disjoint i32 %smax378, 1
  %24 = zext nneg i32 %23 to i64
  %i.dx = or disjoint i32 %smax378, 1
  %smax384 = call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  %wide.trip.count390 = zext nneg i32 %i.v to i64
  %wide.trip.count382 = zext nneg i32 %i.dx to i64
  br label %bb.as

._crit_edge355:                                   ; preds = %bb.be
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  br label %bb.bg

bb.as:                                            ; preds = %.lr.ph354, %bb.be
  %indvars.iv386 = phi i64 [ 0, %.lr.ph354 ], [ %indvars.iv.next387, %bb.be ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv386 ; 2 uses
  %i.dz = load <2 x float>, ptr %i.dy, align 4    ; 7 uses
  %.sroa.0286.0.vec.extract289 = extractelement <2 x float> %i.dz, i64 0
  %.sroa.0286.4.vec.extract292 = extractelement <2 x float> %i.dz, i64 1
  %i.ea = fcmp oge float %.sroa.0286.0.vec.extract289, 0.000000e+00
  %i.eb = fcmp oge float %.sroa.0286.4.vec.extract292, 0.000000e+00
  %i.ec = load <2 x i32>, ptr %i.aw, align 8, !tbaa !40
  %i.ed = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ee = fpext <2 x float> %i.ed to <2 x double>
  %i.ef = sitofp <2 x i32> %i.ec to <2 x double>
  %i.eg = fcmp ogt <2 x double> %i.ef, %i.ee      ; 2 uses
  %i.eh = extractelement <2 x i1> %i.eg, i64 1
  %or.cond.i.not4.not7.i = select i1 %i.ea, i1 %i.eh, i1 false
  %or.cond.not.i = select i1 %or.cond.i.not4.not7.i, i1 %i.eb, i1 false
  %i.ei = extractelement <2 x i1> %i.eg, i64 0
  %i.ej = select i1 %or.cond.not.i, i1 %i.ei, i1 false
  br i1 %i.ej, label %.preheader, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -211, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv12cornerSubPixERKNS_11_InputArrayERKNS_17_InputOutputArrayENS_5Size_IiEES7_NS_12TermCriteriaE, ptr noundef nonnull @.str.1, i32 noundef 102) #15
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  unreachable

bb.aw:                                            ; preds = %bb.at
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

bb.ax:                                            ; preds = %bb.au
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = load ptr, ptr %19, align 8, !tbaa !18   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266: ; preds = %bb.ax
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !23
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266, %bb.aw
  %.pn238 = phi { ptr, i32 } [ %i.ek, %bb.aw ], [ %i.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266 ], [ %i.el, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  br label %bb.bf

.preheader:                                       ; preds = %bb.as, %bb.bb
  %.0197 = phi i32 [ %i.ih, %bb.bb ], [ 0, %bb.as ]
  %.sroa.054.0 = phi <2 x float> [ %i.hq, %bb.bb ], [ %i.dz, %bb.as ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14
  store i32 0, ptr %i.dm, align 8, !tbaa !41
  store i32 0, ptr %i.dn, align 4, !tbaa !42
  store i32 16842752, ptr %21, align 8, !tbaa !43
  store ptr %7, ptr %i.do, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #14
  store i64 0, ptr %i.dq, align 8
  store i32 33619968, ptr %22, align 8, !tbaa !43
  store ptr %18, ptr %i.dp, align 8, !tbaa !8
  %i.er = load i32, ptr %18, align 8, !tbaa !33
  %i.es = and i32 %i.er, 4095
  invoke void @_ZN2cv13getRectSubPixERKNS_11_InputArrayENS_5Size_IiEENS_6Point_IfEERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 %.sroa.0271.0.insert.insert, <2 x float> %.sroa.054.0, ptr noundef nonnull align 8 dereferenceable(24) %22, i32 noundef %i.es)
          to label %.lr.ph324.preheader unwind label %bb.az

.lr.ph324.preheader:                              ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  %i.et = load ptr, ptr %i.ds, align 8, !tbaa !24
  %i.eu = load i32, ptr %i.dr, align 4, !tbaa !44
  %i.ev = icmp slt i32 %i.eu, 2
  %i.ew = load i64, ptr %i.dt, align 8
  %.sink.idx.i = select i1 %i.ev, i64 0, i64 %i.ew
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.et, i64 %.sink.idx.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.sink.i, i64 4
  br label %.lr.ph324

.lr.ph324:                                        ; preds = %.lr.ph324.preheader, %._crit_edge325
  %.2339.a = phi i32 [ %i.gu, %._crit_edge325 ], [ 0, %.lr.ph324.preheader ] ; 3 uses
  %.0173338 = phi i64 [ %25, %._crit_edge325 ], [ 0, %.lr.ph324.preheader ] ; 2 uses
  %.0198337 = phi ptr [ %i.gv, %._crit_edge325 ], [ %i.ex, %.lr.ph324.preheader ] ; 5 uses
  %.0205334 = phi double [ %i.gl, %._crit_edge325 ], [ 0.000000e+00, %.lr.ph324.preheader ]
  %i.ey = phi <2 x double> [ %i.gk, %._crit_edge325 ], [ zeroinitializer, %.lr.ph324.preheader ]
  %i.ez = phi <2 x double> [ %i.gs, %._crit_edge325 ], [ zeroinitializer, %.lr.ph324.preheader ]
  %i.fa = sub nsw i32 %.2339.a, %.sroa.10.0.extract.trunc
  %i.fb = sitofp i32 %i.fa to double
  %invariant.gep408 = getelementptr [4 x i8], ptr %.0198337, i64 %i.dw
  %i.fc = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph324, %bb.ay
  %indvars.iv376 = phi i64 [ %.0173338, %.lr.ph324 ], [ %indvars.iv.next377, %bb.ay ] ; 2 uses
  %indvars.iv374 = phi i64 [ 0, %.lr.ph324 ], [ %indvars.iv.next375, %bb.ay ] ; 5 uses
  %.1206318 = phi double [ %.0205334, %.lr.ph324 ], [ %i.gl, %bb.ay ]
  %i.fe = phi <2 x double> [ %i.ey, %.lr.ph324 ], [ %i.gk, %bb.ay ]
  %i.ff = phi <2 x double> [ %i.ez, %.lr.ph324 ], [ %i.gs, %bb.ay ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv376
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !34
  %i.fi = fpext float %i.fh to double             ; 2 uses
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 3 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.0198337, i64 %indvars.iv.next375
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !34
  %i.fl = getelementptr [4 x i8], ptr %.0198337, i64 %indvars.iv374
  %i.fm = getelementptr i8, ptr %i.fl, i64 -4
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !34
  %gep409 = getelementptr [4 x i8], ptr %invariant.gep408, i64 %indvars.iv374
  %i.fo = getelementptr inbounds nuw i8, ptr %gep409, i64 8
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !34
  %i.fq = sub nsw i64 %indvars.iv374, %i.dw
  %i.fr = getelementptr [4 x i8], ptr %.0198337, i64 %i.fq
  %i.fs = getelementptr i8, ptr %i.fr, i64 -8
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !34
  %i.fu = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.fv = insertelement <2 x float> %i.fu, float %i.fk, i64 1
  %i.fw = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.fn, i64 1
  %i.fy = fsub <2 x float> %i.fv, %i.fx
  %i.fz = fpext <2 x float> %i.fy to <2 x double> ; 4 uses
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gb = fmul <2 x double> %i.ga, %i.fz
  %foldExtExtBinop = fmul <2 x double> %i.fz, %i.fz
  %i.gc = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.gd = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.ge = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gf = fmul <2 x double> %i.gb, %i.ge          ; 3 uses
  %i.gg = fmul double %i.gc, %i.fi                ; 2 uses
  %i.gh = sub i64 %indvars.iv374, %2
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = sitofp i32 %i.gi to double
  %i.gk = fadd <2 x double> %i.fe, %i.gf          ; 5 uses
  %i.gl = fadd double %.1206318, %i.gg            ; 4 uses
  %i.gm = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.gn = insertelement <2 x double> %i.gm, double %i.gg, i64 0
  %i.go = fmul <2 x double> %i.gn, %i.fd
  %i.gp = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> %i.gq, <2 x double> %i.go)
  %i.gs = fadd <2 x double> %i.ff, %i.gr          ; 4 uses
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1
  %exitcond383.not = icmp eq i64 %indvars.iv.next375, %wide.trip.count382
  br i1 %exitcond383.not, label %._crit_edge325, label %bb.ay, !llvm.loop !45

bb.az:                                            ; preds = %.preheader
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  br label %bb.bf

._crit_edge325:                                   ; preds = %bb.ay
  %25 = add nuw nsw i64 %.0173338, %24
  %i.gu = add nuw nsw i32 %.2339.a, 1
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.0198337, i64 %.sroa.0271.0.insert.ext
  %exitcond385.not = icmp eq i32 %.2339.a, %smax384
  br i1 %exitcond385.not, label %._crit_edge342, label %.lr.ph324, !llvm.loop !46

._crit_edge342:                                   ; preds = %._crit_edge325
  %i.gw = extractelement <2 x double> %i.gk, i64 0 ; 2 uses
  %i.gx = fneg double %i.gw
  %i.gy = fmul double %i.gw, %i.gx
  %i.gz = extractelement <2 x double> %i.gk, i64 1
  %i.ha = call double @llvm.fmuladd.f64(double %i.gz, double %i.gl, double %i.gy) ; 2 uses
  %i.hb = call double @llvm.fabs.f64(double %i.ha)
  %i.hc = fcmp ugt double %i.hb, f0x3970000000000000
  br i1 %i.hc, label %bb.ba, label %.thread

bb.ba:                                            ; preds = %._crit_edge342
  %i.hd = fdiv double 1.000000e+00, %i.ha         ; 3 uses
  %i.he = fneg double %i.hd
  %i.hf = fmul double %i.gl, %i.hd
  %i.hg = fpext <2 x float> %.sroa.054.0 to <2 x double>
  %i.hh = insertelement <2 x double> poison, double %i.he, i64 0
  %i.hi = insertelement <2 x double> %i.hh, double %i.hd, i64 1
  %i.hj = fmul <2 x double> %i.gk, %i.hi          ; 2 uses
  %i.hk = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.hl = insertelement <2 x double> %i.hk, double %i.hf, i64 0
  %i.hm = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.hm, <2 x double> %i.hg)
  %i.ho = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> %i.ho, <2 x double> %i.hn) ; 2 uses
  %i.hq = fptrunc <2 x double> %i.hp to <2 x float> ; 5 uses
  %i.hr = load <2 x i32>, ptr %i.aw, align 8, !tbaa !40
  %i.hs = sitofp <2 x i32> %i.hr to <2 x double>
  %i.ht = fpext <2 x float> %i.hq to <2 x double>
  %i.hu = shufflevector <2 x double> %i.hs, <2 x double> %i.hp, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.hv = shufflevector <2 x double> %i.ht, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hw = shufflevector <4 x double> %i.hv, <4 x double> <double poison, double poison, double f0xB690000000000000, double f0xB690000000000000>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.hx = fcmp ogt <4 x double> %i.hu, %i.hw
  %i.hy = fcmp oge <4 x double> %i.hu, %i.hw
  %i.hz = shufflevector <4 x i1> %i.hx, <4 x i1> %i.hy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ia = freeze <4 x i1> %i.hz
  %i.ib = bitcast <4 x i1> %i.ia to i4
  %i.ic = icmp eq i4 %i.ib, -1
  br i1 %i.ic, label %bb.bb, label %.thread

bb.bb:                                            ; preds = %bb.ba
  %foldExtExtBinop415 = fsub <2 x float> %i.hq, %.sroa.054.0
  %i.id = extractelement <2 x float> %foldExtExtBinop415, i64 0 ; 2 uses
  %foldExtExtBinop417 = fsub <2 x float> %i.hq, %.sroa.054.0 ; 2 uses
  %foldExtExtBinop419 = fmul <2 x float> %foldExtExtBinop417, %foldExtExtBinop417
  %i.ie = extractelement <2 x float> %foldExtExtBinop419, i64 1
  %i.if = call float @llvm.fmuladd.f32(float %i.id, float %i.id, float %i.ie)
  %i.ig = fpext float %i.if to double
  %i.ih = add nuw nsw i32 %.0197, 1               ; 2 uses
  %i.ii = icmp samesign ult i32 %i.ih, %i.h
  %i.ij = fcmp olt double %i.m, %i.ig
  %i.ik = select i1 %i.ii, i1 %i.ij, i1 false
  br i1 %i.ik, label %.preheader, label %.thread, !llvm.loop !47

.thread:                                          ; preds = %._crit_edge342, %bb.ba, %bb.bb
  %.sroa.054.2298 = phi <2 x float> [ %i.hq, %bb.bb ], [ %.sroa.054.0, %._crit_edge342 ], [ %.sroa.054.0, %bb.ba ] ; 3 uses
  %foldExtExtBinop421 = fsub <2 x float> %.sroa.054.2298, %i.dz
  %i.il = extractelement <2 x float> %foldExtExtBinop421, i64 0
  %i.im = call noundef float @llvm.fabs.f32(float %i.il)
  %i.in = fcmp ogt float %i.im, %i.du
  br i1 %i.in, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.thread
  %foldExtExtBinop423 = fsub <2 x float> %.sroa.054.2298, %i.dz
  %i.io = extractelement <2 x float> %foldExtExtBinop423, i64 1
  %i.ip = call noundef float @llvm.fabs.f32(float %i.io)
  %i.iq = fcmp ogt float %i.ip, %i.dv
  br i1 %i.iq, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc, %.thread
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.054.3 = phi <2 x float> [ %i.dz, %bb.bd ], [ %.sroa.054.2298, %bb.bc ]
  store <2 x float> %.sroa.054.3, ptr %i.dy, align 4
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %exitcond391.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count390
  br i1 %exitcond391.not, label %._crit_edge355, label %bb.as, !llvm.loop !48

bb.bf:                                            ; preds = %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268
  %.pn238.pn = phi { ptr, i32 } [ %.pn238, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268 ], [ %i.gt, %bb.az ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #14
  br label %bb.bj

bb.bg:                                            ; preds = %bb.t, %._crit_edge355
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.ir = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !49
  %.not.i = icmp eq i32 %i.is, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.it = landingpad { ptr, i32 }
          catch ptr null
  %i.iu = extractvalue { ptr, i32 } %i.it, 0
  call void @__clang_call_terminate(ptr %i.iu) #17
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void

bb.bj:                                            ; preds = %bb.bf, %bb.ar
  %.pn238.pn.pn = phi { ptr, i32 } [ %.pn238.pn, %bb.bf ], [ %i.cq, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #14
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.aq
  %.pn238.pn.pn.pn = phi { ptr, i32 } [ %.pn238.pn.pn, %bb.bj ], [ %i.cp, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.n
  %.pn238.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.z, %bb.n ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn238.pn.pn.pn, %bb.bk ], [ %.pn226, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ], [ %.pn224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ], [ %.pn220, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #14
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.m
  %.pn238.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn238.pn.pn.pn.pn.pn, %bb.bl ], [ %i.y, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #14
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.l
  %.pn238.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn238.pn.pn.pn.pn.pn.pn, %bb.bm ], [ %i.x, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  resume { ptr, i32 } %.pn238.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !52
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.d, ptr %i.a, align 8, !tbaa !53
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !18
  %i.g = load i64, ptr %i.a, align 8, !tbaa !53
  store i64 %i.g, ptr %i.b, align 8, !tbaa !23
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !23
  store i8 %i.i, ptr %i.h, align 1, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !54
  %i.l = load ptr, ptr %0, align 8, !tbaa !18
end_hunk_0
