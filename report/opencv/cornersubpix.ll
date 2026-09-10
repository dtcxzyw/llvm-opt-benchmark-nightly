Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cornersubpix?download=true
inline.NumInlined: 78
inline.NumDeleted: 50
begin_hunk_0_@_ZN2cv12cornerSubPixERKNS_11_InputArrayERKNS_17_InputOutputArrayENS_5Size_IiEES7_NS_12TermCriteriaE:bb.a
  %i.av = add nuw nsw i32 %i.a, 5
  %.not222 = icmp slt i32 %i.au, %i.av
  br i1 %.not222, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !42
  %i.ay = add nuw nsw i32 %i.c, 5
  %.not223 = icmp slt i32 %i.ax, %i.ay
  br i1 %.not223, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv12cornerSubPixERKNS_11_InputArrayERKNS_17_InputOutputArrayENS_5Size_IiEES7_NS_12TermCriteriaE, ptr noundef nonnull @.str.1, i32 noundef 65) #15
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
  %i.bb = load ptr, ptr %13, align 8, !tbaa !13   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %bb.ag
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !14
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260, %bb.af
  %.pn224 = phi { ptr, i32 } [ %i.az, %bb.af ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260 ], [ %i.ba, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %bb.bl

bb.ah:                                            ; preds = %bb.ab
  %i.bg = load i32, ptr %7, align 8, !tbaa !43
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
  %i.bl = load ptr, ptr %15, align 8, !tbaa !13   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263: ; preds = %bb.am
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !14
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
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !40 ; 3 uses
  %i.bu = uitofp nneg i32 %.sroa.10.0.extract.trunc to float
  %i.bv = uitofp nneg i32 %.sroa.0153.0.extract.trunc to float
  %smax = call i32 @llvm.smax.i32(i32 %i.a, i32 0)
  %i.bw = or disjoint i32 %smax, 1
  %i.bx = zext i32 %i.b to i64
  %smax365 = call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  %i.by = or disjoint i32 %smax365, 1
  %wide.trip.count366 = zext nneg i32 %i.by to i64
  %wide.trip.count = zext nneg i32 %i.bw to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv362 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next363, %._crit_edge ] ; 3 uses
  %i.bz = sub nsw i64 %indvars.iv362, %.sroa.10.0.extract.shift
  %i.ca = trunc nsw i64 %i.bz to i32
  %i.cb = sitofp i32 %i.ca to float
  %i.cc = fdiv float %i.cb, %i.bu                 ; 2 uses
  %i.cd = fneg float %i.cc
  %i.ce = fmul float %i.cc, %i.cd
  %i.cf = call noundef float @expf(float noundef %i.ce) #14
  %i.cg = mul nuw nsw i64 %indvars.iv362, %i.bx
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
  store float %i.co, ptr %gep, align 4, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ap, !llvm.loop !22

bb.aq:                                            ; preds = %bb.an
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ar:                                            ; preds = %bb.ao
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

._crit_edge:                                      ; preds = %bb.ap
  %indvars.iv.next363 = add nuw nsw i64 %indvars.iv362, 1 ; 2 uses
  %exitcond367.not = icmp eq i64 %indvars.iv.next363, %wide.trip.count366
  br i1 %exitcond367.not, label %._crit_edge303, label %.lr.ph, !llvm.loop !23

._crit_edge303:                                   ; preds = %._crit_edge
  %i.cr = and i64 %3, -9223372034707292160
  %or.cond5 = icmp eq i64 %i.cr, 0
  %i.cs = icmp slt i32 %.sroa.0146.0.extract.trunc, %.sroa.0153.0.extract.trunc
  %or.cond249 = select i1 %or.cond5, i1 %i.cs, i1 false
  %i.ct = icmp slt i32 %.sroa.5.0.extract.trunc, %.sroa.10.0.extract.trunc
  %or.cond250 = select i1 %or.cond249, i1 %i.ct, i1 false
  br i1 %or.cond250, label %.lr.ph307.preheader, label %.lr.ph352

.lr.ph307.preheader:                              ; preds = %._crit_edge303
  %i.cu = add nuw nsw i32 %.sroa.5.0.extract.trunc, %.sroa.10.0.extract.trunc
  %i.cv = add nuw i32 %.sroa.0146.0.extract.trunc, %.sroa.0153.0.extract.trunc
  %i.cw = sub nsw i32 %.sroa.0153.0.extract.trunc, %.sroa.0146.0.extract.trunc
  %i.cx = sub nsw i32 %.sroa.10.0.extract.trunc, %.sroa.5.0.extract.trunc ; 2 uses
  %i.cy = or disjoint i32 %i.a, 1                 ; 2 uses
  %i.cz = mul i32 %i.cx, %i.cy
  %i.da = add i32 %i.cz, %.sroa.0153.0.extract.trunc
  %i.db = sub i32 %i.da, %.sroa.0146.0.extract.trunc
  %smax368 = call i32 @llvm.smax.i32(i32 %i.cw, i32 %i.cv)
  %i.dc = add nuw i32 %smax368, %.sroa.0146.0.extract.trunc
  %i.dd = sub i32 %i.dc, %.sroa.0153.0.extract.trunc
  %i.de = zext i32 %i.dd to i64
  %i.df = shl nuw nsw i64 %i.de, 2
  %i.dg = add nuw nsw i64 %i.df, 4
  br label %.lr.ph307

.lr.ph307:                                        ; preds = %.lr.ph307.preheader, %.lr.ph307
  %indvar = phi i32 [ 0, %.lr.ph307.preheader ], [ %indvar.next, %.lr.ph307 ] ; 2 uses
  %.1310 = phi i32 [ %i.cx, %.lr.ph307.preheader ], [ %i.dl, %.lr.ph307 ] ; 2 uses
  %i.dh = mul i32 %i.cy, %indvar
  %i.di = add i32 %i.db, %i.dh
  %i.dj = sext i32 %i.di to i64
  %i.dk = shl nsw i64 %i.dj, 2
  %scevgep = getelementptr i8, ptr %i.bt, i64 %i.dk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.dg, i1 false), !tbaa !45
  %i.dl = add nuw nsw i32 %.1310, 1
  %.not229.not = icmp slt i32 %.1310, %i.cu
  %indvar.next = add i32 %indvar, 1
  br i1 %.not229.not, label %.lr.ph307, label %.lr.ph352, !llvm.loop !24

.lr.ph352:                                        ; preds = %.lr.ph307, %._crit_edge303
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
  %smax376 = call i32 @llvm.smax.i32(i32 %i.a, i32 0) ; 2 uses
  %i.dx = or disjoint i32 %smax376, 1
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = or disjoint i32 %smax376, 1
  %smax382 = call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  %wide.trip.count388 = zext nneg i32 %i.v to i64
  %wide.trip.count380 = zext nneg i32 %i.dz to i64
  br label %bb.as

._crit_edge353:                                   ; preds = %bb.be
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  br label %bb.bg

bb.as:                                            ; preds = %.lr.ph352, %bb.be
  %indvars.iv384 = phi i64 [ 0, %.lr.ph352 ], [ %indvars.iv.next385, %bb.be ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv384 ; 2 uses
  %i.eb = load <2 x float>, ptr %i.ea, align 4    ; 7 uses
  %.sroa.0286.0.vec.extract289 = extractelement <2 x float> %i.eb, i64 0
  %.sroa.0286.4.vec.extract292 = extractelement <2 x float> %i.eb, i64 1
  %i.ec = fcmp oge float %.sroa.0286.0.vec.extract289, 0.000000e+00
  %i.ed = fcmp oge float %.sroa.0286.4.vec.extract292, 0.000000e+00
  %i.ee = load <2 x i32>, ptr %i.aw, align 8, !tbaa !47
  %i.ef = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eg = fpext <2 x float> %i.ef to <2 x double>
  %i.eh = sitofp <2 x i32> %i.ee to <2 x double>
  %i.ei = fcmp ogt <2 x double> %i.eh, %i.eg      ; 2 uses
  %i.ej = extractelement <2 x i1> %i.ei, i64 1
  %or.cond.i.not4.not7.i = select i1 %i.ec, i1 %i.ej, i1 false
  %or.cond.not.i = select i1 %or.cond.i.not4.not7.i, i1 %i.ed, i1 false
  %i.ek = extractelement <2 x i1> %i.ei, i64 0
  %i.el = select i1 %or.cond.not.i, i1 %i.ek, i1 false
  br i1 %i.el, label %.preheader, label %bb.at

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
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

bb.ax:                                            ; preds = %bb.au
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %19, align 8, !tbaa !13   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266: ; preds = %bb.ax
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !14
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266, %bb.aw
  %.pn238 = phi { ptr, i32 } [ %i.em, %bb.aw ], [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266 ], [ %i.en, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  br label %bb.bf

.preheader:                                       ; preds = %bb.as, %bb.bb
  %.sroa.054.0 = phi <2 x float> [ %i.hu, %bb.bb ], [ %i.eb, %bb.as ] ; 6 uses
  %.0188 = phi i32 [ %i.il, %bb.bb ], [ 0, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14
  store i32 0, ptr %i.dm, align 8, !tbaa !48
  store i32 0, ptr %i.dn, align 4, !tbaa !49
  store i32 16842752, ptr %21, align 8, !tbaa !50
  store ptr %7, ptr %i.do, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #14
  store i64 0, ptr %i.dq, align 8
  store i32 33619968, ptr %22, align 8, !tbaa !50
  store ptr %18, ptr %i.dp, align 8, !tbaa !31
  %i.et = load i32, ptr %18, align 8, !tbaa !43
  %i.eu = and i32 %i.et, 4095
  invoke void @_ZN2cv13getRectSubPixERKNS_11_InputArrayENS_5Size_IiEENS_6Point_IfEERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 %.sroa.0271.0.insert.insert, <2 x float> %.sroa.054.0, ptr noundef nonnull align 8 dereferenceable(24) %22, i32 noundef %i.eu)
          to label %.lr.ph322.preheader unwind label %bb.az

.lr.ph322.preheader:                              ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  %i.ev = load ptr, ptr %i.ds, align 8, !tbaa !40
  %i.ew = load i32, ptr %i.dr, align 4, !tbaa !51
  %i.ex = icmp slt i32 %i.ew, 2
  %i.ey = load i64, ptr %i.dt, align 8
  %.sink.idx.i = select i1 %i.ex, i64 0, i64 %i.ey
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.sink.idx.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.sink.i, i64 4
  br label %.lr.ph322

.lr.ph322:                                        ; preds = %.lr.ph322.preheader, %._crit_edge323
  %.2337 = phi i32 [ %i.gy, %._crit_edge323 ], [ 0, %.lr.ph322.preheader ] ; 3 uses
  %.0173336 = phi i64 [ %i.gx, %._crit_edge323 ], [ 0, %.lr.ph322.preheader ] ; 2 uses
  %.0175335 = phi ptr [ %i.gz, %._crit_edge323 ], [ %i.ez, %.lr.ph322.preheader ] ; 5 uses
  %i.fa = phi <2 x double> [ %i.gv, %._crit_edge323 ], [ zeroinitializer, %.lr.ph322.preheader ]
  %i.fb = phi <2 x double> [ %i.gp, %._crit_edge323 ], [ zeroinitializer, %.lr.ph322.preheader ]
  %i.fc = phi <2 x double> [ %i.gq, %._crit_edge323 ], [ zeroinitializer, %.lr.ph322.preheader ]
  %i.fd = sub nsw i32 %.2337, %.sroa.10.0.extract.trunc
  %i.fe = sitofp i32 %i.fd to double
  %invariant.gep406 = getelementptr [4 x i8], ptr %.0175335, i64 %i.dw
  %i.ff = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph322, %bb.ay
  %indvars.iv374 = phi i64 [ %.0173336, %.lr.ph322 ], [ %indvars.iv.next375, %bb.ay ] ; 2 uses
  %indvars.iv372 = phi i64 [ 0, %.lr.ph322 ], [ %indvars.iv.next373, %bb.ay ] ; 5 uses
  %i.fh = phi <2 x double> [ %i.fa, %.lr.ph322 ], [ %i.gv, %bb.ay ]
  %i.fi = phi <2 x double> [ %i.fb, %.lr.ph322 ], [ %i.gp, %bb.ay ]
  %i.fj = phi <2 x double> [ %i.fc, %.lr.ph322 ], [ %i.gq, %bb.ay ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv374
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !45
  %i.fm = fpext float %i.fl to double
  %indvars.iv.next373 = add nuw nsw i64 %indvars.iv372, 1 ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.0175335, i64 %indvars.iv.next373
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !45
  %i.fp = getelementptr [4 x i8], ptr %.0175335, i64 %indvars.iv372
  %i.fq = getelementptr i8, ptr %i.fp, i64 -4
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !45
  %gep407 = getelementptr [4 x i8], ptr %invariant.gep406, i64 %indvars.iv372
  %i.fs = getelementptr inbounds nuw i8, ptr %gep407, i64 8
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !45
  %i.fu = sub nsw i64 %indvars.iv372, %i.dw
  %i.fv = getelementptr [4 x i8], ptr %.0175335, i64 %i.fu
  %i.fw = getelementptr i8, ptr %i.fv, i64 -8
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !45
  %i.fy = sub i64 %indvars.iv372, %2
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = sitofp i32 %i.fz to double
  %i.gb = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.gc = insertelement <2 x float> %i.gb, float %i.fo, i64 1
  %i.gd = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.ge = insertelement <2 x float> %i.gd, float %i.fr, i64 1
  %i.gf = fsub <2 x float> %i.gc, %i.ge
  %i.gg = fpext <2 x float> %i.gf to <2 x double> ; 4 uses
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gi = fmul <2 x double> %i.gh, %i.gg
  %i.gj = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gk = fmul <2 x double> %i.gj, %i.gg
  %i.gl = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gn = fmul <2 x double> %i.gi, %i.gm          ; 2 uses
  %i.go = fmul <2 x double> %i.gk, %i.gm          ; 2 uses
  %i.gp = fadd <2 x double> %i.fi, %i.gn          ; 5 uses
  %i.gq = fadd <2 x double> %i.fj, %i.go          ; 4 uses
  %i.gr = fmul <2 x double> %i.go, %i.fg
  %i.gs = insertelement <2 x double> poison, double %i.ga, i64 0
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %i.gt, <2 x double> %i.gr)
  %i.gv = fadd <2 x double> %i.fh, %i.gu          ; 4 uses
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1
  %exitcond381.not = icmp eq i64 %indvars.iv.next373, %wide.trip.count380
  br i1 %exitcond381.not, label %._crit_edge323, label %bb.ay, !llvm.loop !25

bb.az:                                            ; preds = %.preheader
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  br label %bb.bf

._crit_edge323:                                   ; preds = %bb.ay
  %i.gx = add nuw nsw i64 %.0173336, %i.dy
  %i.gy = add nuw nsw i32 %.2337, 1
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.0175335, i64 %.sroa.0271.0.insert.ext
  %exitcond383.not = icmp eq i32 %.2337, %smax382
  br i1 %exitcond383.not, label %._crit_edge340, label %.lr.ph322, !llvm.loop !26

._crit_edge340:                                   ; preds = %._crit_edge323
end_hunk_0
