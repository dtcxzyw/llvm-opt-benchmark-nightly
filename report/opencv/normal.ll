Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/normal?download=true
inline.NumInlined: 1999
inline.NumDeleted: 608
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZNK2cv15RgbdNormalsImplIdE5applyERKNS_11_InputArrayERKNS_12_OutputArrayE:bb.a
  %i.ay = and i32 %i.ax, 31
  %i.az = icmp eq i32 %i.ay, 6
  br i1 %i.az, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ba = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %bb.am unwind label %bb.ai     ; 0 uses

bb.ah:                                            ; preds = %bb.ad
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ai:                                            ; preds = %bb.an, %bb.au, %bb.at, %bb.ag
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aj:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.be, align 8
  store i32 33619968, ptr %15, align 8, !tbaa !59
  store ptr %14, ptr %i.bd, align 8, !tbaa !21
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %.body

bb.am:                                            ; preds = %bb.ak, %bb.ag, %bb.ae
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !62 ; 6 uses
  %i.bi = icmp slt i32 %i.bh, 3
  br i1 %i.bi, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %bb.an
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.13, i32 noundef 109) #21
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %.noexc
  unreachable

bb.ap:                                            ; preds = %.noexc
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ap
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !18
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.body

bb.aq:                                            ; preds = %bb.am
  %i.bp = icmp sgt i32 %i.bh, 0
  br i1 %i.bp, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.bq = icmp eq i32 %i.bh, 2
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bq, i64 88, i64 84
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.br = load i32, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !36
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.bs = icmp eq i32 %i.bh, 0
  %i.bt = zext i1 %i.bs to i32
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.bu = phi i32 [ %i.br, %bb.ar ], [ %i.bt, %bb.as ]
  %i.bv = icmp eq i32 %i.bh, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 84
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = icmp sgt i32 %i.bh, -1
  %i.bz = zext i1 %i.by to i32
  %i.ca = select i1 %i.bv, i32 %i.bx, i32 %i.bz
  %.sroa.2.0.insert.ext.i = zext i32 %i.ca to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.bu to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  invoke void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %.sroa.0.0.insert.insert.i, i32 noundef 102, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.au unwind label %bb.ai

bb.au:                                            ; preds = %bb.at
  %i.cb = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %bb.av unwind label %bb.ai

bb.av:                                            ; preds = %bb.au
  br i1 %i.cb, label %bb.bo, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.cc = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc50 unwind label %bb.bc

.noexc50:                                         ; preds = %bb.aw
  %i.cd = icmp eq i32 %i.cc, 65536
  br i1 %i.cd, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.noexc50
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !21, !noalias !226
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %i.cf)
          to label %_ZNK2cv11_InputArray6getMatEi.exit53 unwind label %bb.bc

bb.ay:                                            ; preds = %.noexc50
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit53 unwind label %bb.bc

_ZNK2cv11_InputArray6getMatEi.exit53:             ; preds = %bb.ax, %bb.ay
  %i.cg = load i32, ptr %i.w, align 4, !tbaa !88
  switch i32 %i.cg, label %bb.bi [
    i32 0, label %bb.az
    i32 2, label %bb.az
    i32 1, label %.invoke
    i32 3, label %bb.bh
  ]

bb.az:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit53, %_ZNK2cv11_InputArray6getMatEi.exit53
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !57, !noalias !227 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !58, !noalias !227 ; 3 uses
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %18, i32 noundef %i.ck, i32 noundef %i.ci, i32 noundef 6)
          to label %.noexc54 unwind label %bb.bd

.noexc54:                                         ; preds = %bb.az
  %i.cl = load i32, ptr %14, align 8, !tbaa !33, !noalias !227
  %i.cm = and i32 %i.cl, 16384
  %.not23.i = icmp eq i32 %i.cm, 0
  br i1 %.not23.i, label %bb.ba, label %.thread.i

.thread.i:                                        ; preds = %.noexc54
  %i.cn = load i32, ptr %i.ch, align 4, !tbaa !57, !noalias !227
  %i.co = load i32, ptr %i.cj, align 8, !tbaa !58, !noalias !227
  %i.cp = mul nsw i32 %i.co, %i.cn
  br label %.lr.ph29.i

bb.ba:                                            ; preds = %.noexc54
  %i.cq = icmp sgt i32 %i.ck, 0
  br i1 %i.cq, label %.lr.ph29.i, label %_ZN2cv13computeRadiusIdEENS_4Mat_IT_EERKNS_3MatE.exit

.lr.ph29.i:                                       ; preds = %bb.ba, %.thread.i
  %.sroa.7.035.i = phi i32 [ 1, %.thread.i ], [ %i.ck, %bb.ba ]
  %.sroa.022.034.i = phi i32 [ %i.cp, %.thread.i ], [ %i.ci, %bb.ba ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !63, !noalias !227 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 128
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !49, !noalias !227 ; 3 uses
  %i.cv = sext i32 %.sroa.022.034.i to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !63, !alias.scope !227 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %18, i64 128
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !49, !alias.scope !227 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %.sroa.7.035.i to i64 ; 2 uses
  %.idx.i = shl nsw i64 %i.cv, 5                  ; 4 uses
  %.not24.i = icmp eq i32 %.sroa.022.034.i, 0
  br i1 %.not24.i, label %_ZN2cv13computeRadiusIdEENS_4Mat_IT_EERKNS_3MatE.exit, label %.lr.ph.preheader.i.preheader

.lr.ph.preheader.i.preheader:                     ; preds = %.lr.ph29.i
  %i.da = add nsw i64 %.idx.i, -32
  %i.db = lshr exact i64 %i.da, 2
  %i.dc = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %i.dd = mul i64 %i.cz, %i.dc
  %i.de = getelementptr i8, ptr %i.cx, i64 %i.db
  %i.df = getelementptr i8, ptr %i.de, i64 %i.dd
  %scevgep = getelementptr i8, ptr %i.df, i64 8
  %i.dg = mul i64 %i.cu, %i.dc
  %i.dh = getelementptr i8, ptr %i.cs, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 %.idx.i
  %scevgep75 = getelementptr i8, ptr %i.di, i64 -8
  %i.dj = add nsw i64 %.idx.i, -32                ; 3 uses
  %i.dk = lshr exact i64 %i.dj, 5
  %21 = add nuw nsw i64 %i.dk, 1
  %min.iters.check = icmp ult i64 %i.dj, 64
  %bound0 = icmp ult ptr %i.cx, %scevgep75
  %bound1 = icmp ult ptr %i.cs, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dl = or i64 %i.cu, %i.cz
  %i.dm = icmp slt i64 %i.dl, 0
  %i.dn = or i1 %found.conflict, %i.dm
  %22 = and i64 %i.dj, 32
  %.not80 = icmp eq i64 %22, 0
  %.neg = select i1 %.not80, i64 -1, i64 -2
  %n.vec = add nsw i64 %.neg, %21                 ; 3 uses
  %i.do = shl i64 %n.vec, 3
  %i.dp = shl i64 %n.vec, 5
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %._crit_edge.i.loopexit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i.loopexit ], [ 0, %.lr.ph.preheader.i.preheader ] ; 3 uses
  %i.dq = mul i64 %indvars.iv.i, %i.cu
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dq ; 5 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %.idx.i
  %i.dt = mul i64 %indvars.iv.i, %i.cz
  %i.du = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dt ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.dn
  br i1 %brmerge, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.do
  %i.dw = getelementptr i8, ptr %i.dr, i64 %i.dp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.du, i64 %i.dx
  %i.dy = shl i64 %index, 5                       ; 2 uses
  %next.gep77 = getelementptr i8, ptr %i.dr, i64 %i.dy ; 3 uses
  %i.dz = getelementptr i8, ptr %i.dr, i64 %i.dy  ; 3 uses
  %next.gep78 = getelementptr i8, ptr %i.dz, i64 32
  %i.ea = load double, ptr %next.gep77, align 8, !tbaa !91, !alias.scope !228
  %i.eb = load double, ptr %next.gep78, align 8, !tbaa !91, !alias.scope !228
  %i.ec = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ed = insertelement <2 x double> %i.ec, double %i.eb, i64 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %next.gep77, i64 8
  %i.ef = getelementptr i8, ptr %i.dz, i64 40
  %i.eg = load double, ptr %i.ee, align 8, !tbaa !91, !alias.scope !228
  %i.eh = load double, ptr %i.ef, align 8, !tbaa !91, !alias.scope !228
  %i.ei = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.eh, i64 1 ; 2 uses
  %i.ek = fmul <2 x double> %i.ej, %i.ej
  %i.el = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.ed, <2 x double> %i.ek)
  %i.em = getelementptr inbounds nuw i8, ptr %next.gep77, i64 16
  %i.en = getelementptr i8, ptr %i.dz, i64 48
  %i.eo = load double, ptr %i.em, align 8, !tbaa !91, !alias.scope !228
  %i.ep = load double, ptr %i.en, align 8, !tbaa !91, !alias.scope !228
  %i.eq = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %i.ep, i64 1 ; 2 uses
  %i.es = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.er, <2 x double> %i.er, <2 x double> %i.el)
  %i.et = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.es)
  store <2 x double> %i.et, ptr %next.gep, align 8, !tbaa !91, !alias.scope !229, !noalias !228
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %.lr.ph.i.preheader, label %vector.body, !llvm.loop !223

.lr.ph.i.preheader:                               ; preds = %vector.body, %.lr.ph.preheader.i
  %.026.i.ph = phi ptr [ %i.du, %.lr.ph.preheader.i ], [ %i.dv, %vector.body ]
  %.02025.i.ph = phi ptr [ %i.dr, %.lr.ph.preheader.i ], [ %i.dw, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.026.i = phi ptr [ %i.fe, %.lr.ph.i ], [ %.026.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02025.i = phi ptr [ %i.fd, %.lr.ph.i ], [ %.02025.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.ev = load double, ptr %.02025.i, align 8, !tbaa !91 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.02025.i, i64 8
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !91 ; 2 uses
  %i.ey = fmul double %i.ex, %i.ex
  %i.ez = call double @llvm.fmuladd.f64(double %i.ev, double %i.ev, double %i.ey)
  %i.fa = getelementptr inbounds nuw i8, ptr %.02025.i, i64 16
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !91 ; 2 uses
  %i.fc = call double @llvm.fmuladd.f64(double %i.fb, double %i.fb, double %i.ez)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.fc)
  store double %sqrt.i.i, ptr %.026.i, align 8, !tbaa !91
  %i.fd = getelementptr inbounds nuw i8, ptr %.02025.i, i64 32 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  %.not.i = icmp eq ptr %i.fd, %i.ds
  br i1 %.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !224

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv13computeRadiusIdEENS_4Mat_IT_EERKNS_3MatE.exit, label %.lr.ph.preheader.i, !llvm.loop !3

_ZN2cv13computeRadiusIdEENS_4Mat_IT_EERKNS_3MatE.exit: ; preds = %._crit_edge.i.loopexit, %.lr.ph29.i, %bb.ba
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %18) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.ff = load ptr, ptr %0, align 8, !tbaa !26
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 112
  %i.fh = load ptr, ptr %i.fg, align 8
  invoke void %i.fh(ptr noundef nonnull align 8 dereferenceable(441) %0, ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %16)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %_ZN2cv13computeRadiusIdEENS_4Mat_IT_EERKNS_3MatE.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.bn

bb.bc:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bd:                                            ; preds = %bb.az
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.bf

bb.be:                                            ; preds = %_ZN2cv13computeRadiusIdEENS_4Mat_IT_EERKNS_3MatE.exit
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #20
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn34 = phi { ptr, i32 } [ %i.fk, %bb.be ], [ %i.fj, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.bp

bb.bg:                                            ; preds = %.invoke
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bh:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit53
  br label %.invoke

.invoke:                                          ; preds = %_ZNK2cv11_InputArray6getMatEi.exit53, %bb.bh
  %i.fm = phi ptr [ %14, %bb.bh ], [ %5, %_ZNK2cv11_InputArray6getMatEi.exit53 ]
  %i.fn = load ptr, ptr %0, align 8, !tbaa !26
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 112
  %i.fp = load ptr, ptr %i.fo, align 8
  invoke void %i.fp(ptr noundef nonnull align 8 dereferenceable(441) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.fm, ptr noundef nonnull align 8 dereferenceable(208) %16)
          to label %bb.bn unwind label %bb.bg

bb.bi:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit53
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZNK2cv15RgbdNormalsImplIfE5applyERKNS_11_InputArrayERKNS_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 300) #21
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  unreachable

bb.bl:                                            ; preds = %bb.bi
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

bb.bm:                                            ; preds = %bb.bj
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = load ptr, ptr %19, align 8, !tbaa !17   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.bm
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !18
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.bl
  %.pn32 = phi { ptr, i32 } [ %i.fq, %bb.bl ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %i.fr, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.bp

bb.bn:                                            ; preds = %.invoke, %bb.bb
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.bo

bb.bo:                                            ; preds = %bb.av, %bb.bn
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %bb.bg, %bb.bf
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %bb.bf ], [ %i.fl, %bb.bg ], [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #20
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bc
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %bb.bp ], [ %i.fi, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %.body

.body:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.bq, %bb.al
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %bb.bq ], [ %i.bf, %bb.al ], [ %i.bc, %bb.ai ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.br

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.ah, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn34.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn34.pn.pn.pn, %.body ], [ %i.bb, %bb.ah ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ]
end_hunk_0
begin_hunk_1_@_ZN2cv15computeThetaPhiIdEEviiRKNS_4MatxIT_Li3ELi3EEERNS_3MatES7_S7_S7_:bb.a

.body:                                            ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %10) #20
  br label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.g) #20
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #20
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.i) #20
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.j) #20
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.k) #20
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.l) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.m, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 0, ptr %i.n, align 4, !tbaa !77
  store i32 16842752, ptr %13, align 8, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %9, ptr %i.o, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %15, align 16, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 153, ptr %i.p, align 16, !tbaa !84
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.r, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.s, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 0)
          to label %.noexc86 unwind label %bb.o

.noexc86:                                         ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.u, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !59
  store ptr %15, ptr %i.t, align 8, !tbaa !21
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %.noexc86
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.body87

bb.e:                                             ; preds = %.noexc86
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.w, align 8, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.x, align 4, !tbaa !77
  store i32 16842752, ptr %14, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %15, ptr %i.y, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 0, ptr %i.aa, align 8
  store i32 33619968, ptr %16, align 8, !tbaa !59
  store ptr %12, ptr %i.z, align 8, !tbaa !21
  %i.ab = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv9depthTo3dERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef %0, i32 noundef %1, i32 noundef 6)
          to label %_ZN2cv4Mat_IdEC2Eii.exit unwind label %bb.q

_ZN2cv4Mat_IdEC2Eii.exit:                         ; preds = %bb.g
  %i.ac = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.h unwind label %bb.r       ; 0 uses

bb.h:                                             ; preds = %_ZN2cv4Mat_IdEC2Eii.exit
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %18, i32 noundef %0, i32 noundef %1, i32 noundef 6)
          to label %_ZN2cv4Mat_IdEC2Eii.exit91 unwind label %bb.t

_ZN2cv4Mat_IdEC2Eii.exit91:                       ; preds = %bb.h
  %i.ad = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %18)
          to label %bb.i unwind label %bb.u       ; 0 uses

bb.i:                                             ; preds = %_ZN2cv4Mat_IdEC2Eii.exit91
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %19, i32 noundef %0, i32 noundef %1, i32 noundef 6)
          to label %_ZN2cv4Mat_IdEC2Eii.exit93 unwind label %bb.w

_ZN2cv4Mat_IdEC2Eii.exit93:                       ; preds = %bb.i
  %i.ae = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.j unwind label %bb.x       ; 0 uses

bb.j:                                             ; preds = %_ZN2cv4Mat_IdEC2Eii.exit93
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %20, i32 noundef %0, i32 noundef %1, i32 noundef 6)
          to label %_ZN2cv4Mat_IdEC2Eii.exit95 unwind label %bb.z

_ZN2cv4Mat_IdEC2Eii.exit95:                       ; preds = %bb.j
  %i.af = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %20)
          to label %bb.k unwind label %bb.aa      ; 0 uses

bb.k:                                             ; preds = %_ZN2cv4Mat_IdEC2Eii.exit95
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !57, !noalias !255 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !58, !noalias !255 ; 3 uses
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %22, i32 noundef %i.aj, i32 noundef %i.ah, i32 noundef 6)
          to label %.noexc96 unwind label %bb.ac

.noexc96:                                         ; preds = %bb.k
  %i.ak = load i32, ptr %12, align 8, !tbaa !33, !noalias !255
  %i.al = and i32 %i.ak, 16384
  %.not23.i = icmp eq i32 %i.al, 0
  br i1 %.not23.i, label %bb.l, label %.thread.i

.thread.i:                                        ; preds = %.noexc96
  %i.am = load i32, ptr %i.ag, align 4, !tbaa !57, !noalias !255
  %i.an = load i32, ptr %i.ai, align 8, !tbaa !58, !noalias !255
  %i.ao = mul nsw i32 %i.an, %i.am
  br label %.lr.ph29.i

bb.l:                                             ; preds = %.noexc96
  %i.ap = icmp sgt i32 %i.aj, 0
  br i1 %i.ap, label %.lr.ph29.i, label %_ZN2cv13computeRadiusIdEENS_4Mat_IT_EERKNS_3MatE.exit

.lr.ph29.i:                                       ; preds = %bb.l, %.thread.i
  %.sroa.7.035.i = phi i32 [ 1, %.thread.i ], [ %i.aj, %bb.l ]
  %.sroa.022.034.i = phi i32 [ %i.ao, %.thread.i ], [ %i.ah, %bb.l ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !63, !noalias !255 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.at = load i64, ptr %i.as, align 8, !tbaa !49, !noalias !255 ; 3 uses
  %i.au = sext i32 %.sroa.022.034.i to i64
  %i.av = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !63, !alias.scope !255 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %22, i64 128
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !49, !alias.scope !255 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %.sroa.7.035.i to i64 ; 2 uses
  %.idx.i = shl nsw i64 %i.au, 5                  ; 4 uses
  %.not24.i = icmp eq i32 %.sroa.022.034.i, 0
  br i1 %.not24.i, label %_ZN2cv13computeRadiusIdEENS_4Mat_IT_EERKNS_3MatE.exit, label %.lr.ph.preheader.i.preheader

.lr.ph.preheader.i.preheader:                     ; preds = %.lr.ph29.i
  %i.az = add nsw i64 %.idx.i, -32
  %i.ba = lshr exact i64 %i.az, 2
  %i.bb = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %i.bc = mul i64 %i.ay, %i.bb
  %i.bd = getelementptr i8, ptr %i.aw, i64 %i.ba
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bc
  %scevgep = getelementptr i8, ptr %i.be, i64 8
  %i.bf = mul i64 %i.at, %i.bb
  %i.bg = getelementptr i8, ptr %i.ar, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 %.idx.i
  %scevgep108 = getelementptr i8, ptr %i.bh, i64 -8
  %i.bi = add nsw i64 %.idx.i, -32                ; 3 uses
  %i.bj = lshr exact i64 %i.bi, 5
  %23 = add nuw nsw i64 %i.bj, 1
  %min.iters.check = icmp ult i64 %i.bi, 64
  %bound0 = icmp ult ptr %i.aw, %scevgep108
  %bound1 = icmp ult ptr %i.ar, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bk = or i64 %i.at, %i.ay
  %i.bl = icmp slt i64 %i.bk, 0
  %i.bm = or i1 %found.conflict, %i.bl
  %24 = and i64 %i.bi, 32
  %.not = icmp eq i64 %24, 0
  %.neg = select i1 %.not, i64 -1, i64 -2
  %n.vec = add nsw i64 %.neg, %23                 ; 3 uses
  %i.bn = shl i64 %n.vec, 3
  %i.bo = shl i64 %n.vec, 5
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %._crit_edge.i.loopexit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i.loopexit ], [ 0, %.lr.ph.preheader.i.preheader ] ; 3 uses
  %i.bp = mul i64 %indvars.iv.i, %i.at
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bp ; 5 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %.idx.i
  %i.bs = mul i64 %indvars.iv.i, %i.ay
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bs ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bm
  br i1 %brmerge, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bn
  %i.bv = getelementptr i8, ptr %i.bq, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bw = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.bw
  %i.bx = shl i64 %index, 5                       ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.bq, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %i.bq, i64 %i.bx  ; 3 uses
  %next.gep111 = getelementptr i8, ptr %i.by, i64 32
  %i.bz = load double, ptr %next.gep110, align 8, !tbaa !91, !alias.scope !256
  %i.ca = load double, ptr %next.gep111, align 8, !tbaa !91, !alias.scope !256
  %i.cb = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.ca, i64 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %next.gep110, i64 8
  %i.ce = getelementptr i8, ptr %i.by, i64 40
  %i.cf = load double, ptr %i.cd, align 8, !tbaa !91, !alias.scope !256
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !91, !alias.scope !256
  %i.ch = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %i.cg, i64 1 ; 2 uses
  %i.cj = fmul <2 x double> %i.ci, %i.ci
  %i.ck = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.cc, <2 x double> %i.cj)
  %i.cl = getelementptr inbounds nuw i8, ptr %next.gep110, i64 16
  %i.cm = getelementptr i8, ptr %i.by, i64 48
  %i.cn = load double, ptr %i.cl, align 8, !tbaa !91, !alias.scope !256
  %i.co = load double, ptr %i.cm, align 8, !tbaa !91, !alias.scope !256
  %i.cp = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.co, i64 1 ; 2 uses
  %i.cr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.cq, <2 x double> %i.ck)
  %i.cs = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.cr)
  store <2 x double> %i.cs, ptr %next.gep, align 8, !tbaa !91, !alias.scope !257, !noalias !256
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %.lr.ph.i.preheader, label %vector.body, !llvm.loop !250

.lr.ph.i.preheader:                               ; preds = %vector.body, %.lr.ph.preheader.i
  %.026.i.ph = phi ptr [ %i.bt, %.lr.ph.preheader.i ], [ %i.bu, %vector.body ]
  %.02025.i.ph = phi ptr [ %i.bq, %.lr.ph.preheader.i ], [ %i.bv, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.026.i = phi ptr [ %i.dd, %.lr.ph.i ], [ %.026.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02025.i = phi ptr [ %i.dc, %.lr.ph.i ], [ %.02025.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.cu = load double, ptr %.02025.i, align 8, !tbaa !91 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.02025.i, i64 8
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !91 ; 2 uses
  %i.cx = fmul double %i.cw, %i.cw
  %i.cy = call double @llvm.fmuladd.f64(double %i.cu, double %i.cu, double %i.cx)
  %i.cz = getelementptr inbounds nuw i8, ptr %.02025.i, i64 16
  %i.da = load double, ptr %i.cz, align 8, !tbaa !91 ; 2 uses
  %i.db = call double @llvm.fmuladd.f64(double %i.da, double %i.da, double %i.cy)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.db)
  store double %sqrt.i.i, ptr %.026.i, align 8, !tbaa !91
  %i.dc = getelementptr inbounds nuw i8, ptr %.02025.i, i64 32 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  %.not.i = icmp eq ptr %i.dc, %i.br
  br i1 %.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !251

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv13computeRadiusIdEENS_4Mat_IT_EERKNS_3MatE.exit, label %.lr.ph.preheader.i, !llvm.loop !3

_ZN2cv13computeRadiusIdEENS_4Mat_IT_EERKNS_3MatE.exit: ; preds = %._crit_edge.i.loopexit, %.lr.ph29.i, %bb.l
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %22) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  %i.de = icmp sgt i32 %0, 0
  br i1 %i.de, label %.lr.ph104, label %._crit_edge105

.lr.ph104:                                        ; preds = %_ZN2cv13computeRadiusIdEENS_4Mat_IT_EERKNS_3MatE.exit
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !63
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !49
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !63
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !49
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !63
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !49
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !63
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !49
  %i.dv = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !63
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !49
  %i.dz = load i32, ptr %i.ag, align 4, !tbaa !57 ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !63
  %i.ed = getelementptr inbounds nuw i8, ptr %21, i64 128
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !49
  %wide.trip.count = zext nneg i32 %0 to i64
  %.idx = shl nuw nsw i64 %i.ea, 5
  %i.ef = icmp sgt i32 %i.dz, 0
  br label %bb.ad

._crit_edge105:                                   ; preds = %._crit_edge, %_ZN2cv13computeRadiusIdEENS_4Mat_IT_EERKNS_3MatE.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  ret void

bb.m:                                             ; preds = %bb.a
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.f, %.body ], [ %i.eg, %bb.m ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.af

bb.o:                                             ; preds = %.noexc, %bb.c
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body87

bb.p:                                             ; preds = %bb.f, %bb.e
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #20
  br label %.body87

.body87:                                          ; preds = %bb.o, %bb.d, %bb.p
  %.pn70.pn.pn = phi { ptr, i32 } [ %i.ei, %bb.p ], [ %i.eh, %bb.o ], [ %i.v, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.ae

bb.q:                                             ; preds = %bb.g
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZN2cv4Mat_IdEC2Eii.exit
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn75 = phi { ptr, i32 } [ %i.ek, %bb.r ], [ %i.ej, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.ae

bb.t:                                             ; preds = %bb.h
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZN2cv4Mat_IdEC2Eii.exit91
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn77 = phi { ptr, i32 } [ %i.em, %bb.u ], [ %i.el, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.ae

bb.w:                                             ; preds = %bb.i
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %_ZN2cv4Mat_IdEC2Eii.exit93
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #20
  br label %bb.y
end_hunk_1
begin_hunk_2_@_ZNK2cv3SRIIdE7computeERKNS_3MatERS2_:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !63
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !63
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !63
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !63
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.048109 = phi ptr [ %i.eg, %bb.o ], [ %i.bn, %.lr.ph.preheader ] ; 5 uses
  %.050108 = phi ptr [ %i.ef, %bb.o ], [ %i.bp, %.lr.ph.preheader ] ; 3 uses
  %.051107 = phi ptr [ %i.ee, %bb.o ], [ %i.br, %.lr.ph.preheader ] ; 8 uses
  %.052106 = phi ptr [ %i.ed, %bb.o ], [ %i.bt, %.lr.ph.preheader ] ; 2 uses
  %.053105 = phi ptr [ %i.ec, %bb.o ], [ %i.bg, %.lr.ph.preheader ] ; 2 uses
  %i.bu = load double, ptr %.050108, align 8, !tbaa !91 ; 4 uses
  %i.bv = fcmp ord double %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.l, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  store double %i.bu, ptr %.048109, align 8, !tbaa !91
  %i.bw = load double, ptr %.050108, align 8, !tbaa !91
  %i.bx = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.o

bb.h:                                             ; preds = %bb.c
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.v

bb.i:                                             ; preds = %bb.d
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.u

bb.j:                                             ; preds = %bb.e
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.u

bb.k:                                             ; preds = %bb.f
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.l:                                             ; preds = %.lr.ph
  %i.cd = load double, ptr %.053105, align 8, !tbaa !91
  %i.ce = fdiv double %i.cd, %i.bu
  %i.cf = load double, ptr %.052106, align 8, !tbaa !91
  %i.cg = getelementptr inbounds nuw i8, ptr %.051107, i64 16
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !91
  %i.ci = getelementptr inbounds nuw i8, ptr %.051107, i64 24
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !91
  %i.ck = getelementptr inbounds nuw i8, ptr %.051107, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %.051107, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %.051107, i64 56
  %i.cn = getelementptr inbounds nuw i8, ptr %.051107, i64 64
  %i.co = fdiv double %i.cf, %i.bu                ; 2 uses
  %i.cp = load double, ptr %i.ck, align 8, !tbaa !91
  %i.cq = load double, ptr %i.cl, align 8, !tbaa !91
  %i.cr = load double, ptr %i.cm, align 8, !tbaa !91
  %i.cs = load <2 x double>, ptr %.051107, align 8, !tbaa !91 ; 2 uses
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cu = insertelement <2 x double> %i.ct, double %i.cr, i64 1
  %i.cv = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = insertelement <2 x double> %i.cs, double %i.cq, i64 1
  %i.cy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.cw, <2 x double> %i.cx) ; 2 uses
  %i.cz = extractelement <2 x double> %i.cy, i64 0
  %i.da = call double @llvm.fmuladd.f64(double %i.ch, double %i.co, double %i.cz) ; 4 uses
  %i.db = load double, ptr %i.cn, align 8, !tbaa !91
  %i.dc = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.db, i64 1
  %i.de = insertelement <2 x double> poison, double %i.co, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = insertelement <2 x double> %i.cy, double %i.cj, i64 0
  %i.dh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> %i.df, <2 x double> %i.dg) ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %i.dh, %i.dh
  %i.di = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dj = call double @llvm.fmuladd.f64(double %i.da, double %i.da, double %i.di)
  %i.dk = extractelement <2 x double> %i.dh, i64 1 ; 3 uses
  %i.dl = call double @llvm.fmuladd.f64(double %i.dk, double %i.dk, double %i.dj)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.dl)
  %i.dm = fdiv double 1.000000e+00, %sqrt.i       ; 4 uses
  %i.dn = fcmp ogt double %i.dk, 0.000000e+00
  br i1 %i.dn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.do = fneg double %i.da
  %i.dp = fmul double %i.dm, %i.do
  %i.dq = fneg <2 x double> %i.dh
  %i.dr = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x double> %i.ds, %i.dq
  br label %_ZN2cv10signNormalIdEEvT_S1_S1_RNS_3VecIS1_Li4EEE.exit

bb.n:                                             ; preds = %bb.l
  %i.du = fmul double %i.da, %i.dm
  %i.dv = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x double> %i.dh, %i.dw
  br label %_ZN2cv10signNormalIdEEvT_S1_S1_RNS_3VecIS1_Li4EEE.exit

_ZN2cv10signNormalIdEEvT_S1_S1_RNS_3VecIS1_Li4EEE.exit: ; preds = %bb.m, %bb.n
  %.sink28.i = phi double [ %i.dp, %bb.m ], [ %i.du, %bb.n ]
  %i.dy = phi <2 x double> [ %i.dt, %bb.m ], [ %i.dx, %bb.n ]
  store double %.sink28.i, ptr %.048109, align 8, !tbaa !91
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN2cv10signNormalIdEEvT_S1_S1_RNS_3VecIS1_Li4EEE.exit
  %i.dz = phi <2 x double> [ %i.by, %bb.g ], [ %i.dy, %_ZN2cv10signNormalIdEEvT_S1_S1_RNS_3VecIS1_Li4EEE.exit ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.048109, i64 8
  store <2 x double> %i.dz, ptr %i.ea, align 8, !tbaa !91
  %i.eb = getelementptr inbounds nuw i8, ptr %.048109, i64 24
  store double 0.000000e+00, ptr %i.eb, align 8, !tbaa !91
  %i.ec = getelementptr inbounds nuw i8, ptr %.053105, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.052106, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %.051107, i64 72
  %i.ef = getelementptr inbounds nuw i8, ptr %.050108, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.048109, i64 32
  %.not = icmp eq ptr %i.ec, %i.bl
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !313

._crit_edge:                                      ; preds = %bb.o, %_ZN2cv4Mat_INS_3VecIdLi4EEEEC2Eii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.eh = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 0, ptr %i.eh, align 8, !tbaa !76
  %i.ei = getelementptr inbounds nuw i8, ptr %21, i64 20
  store i32 0, ptr %i.ei, align 4, !tbaa !77
  store i32 -2130640794, ptr %21, align 8, !tbaa !59
  %i.ej = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %20, ptr %i.ej, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.ek = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 0, ptr %i.el, align 8
  store i32 33619968, ptr %22, align 8, !tbaa !59
  store ptr %2, ptr %i.ek, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.en = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 0, ptr %i.en, align 8, !tbaa !76
  %i.eo = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 0, ptr %i.eo, align 4, !tbaa !77
  store i32 16842752, ptr %23, align 8, !tbaa !59
  %i.ep = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %i.em, ptr %i.ep, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %i.er = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 0, ptr %i.er, align 8, !tbaa !76
  %i.es = getelementptr inbounds nuw i8, ptr %24, i64 20
  store i32 0, ptr %i.es, align 4, !tbaa !77
  store i32 16842752, ptr %24, align 8, !tbaa !59
  %i.et = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %i.eq, ptr %i.et, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24, i32 noundef 1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %25, i32 noundef 0)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !63 ; 5 uses
  %i.ew = load i32, ptr %i.bb, align 8, !tbaa !85
  %i.ex = load i32, ptr %i.bd, align 4, !tbaa !86
  %i.ey = mul nsw i32 %i.ex, %i.ew                ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %.idx115 = shl nsw i64 %i.ez, 5                 ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %i.ev, i64 %.idx115
  %.not95110 = icmp eq i32 %i.ey, 0
  br i1 %.not95110, label %._crit_edge114, label %.lr.ph113.preheader

.lr.ph113.preheader:                              ; preds = %bb.p
  %i.fb = add nsw i64 %.idx115, -32               ; 3 uses
  %min.iters.check = icmp ult i64 %i.fb, 64
  br i1 %min.iters.check, label %.lr.ph113.preheader132, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph113.preheader
  %i.fc = lshr exact i64 %i.fb, 5
  %26 = add nuw nsw i64 %i.fc, 1
  %i.fd = and i64 %i.fb, 32
  %.not128 = icmp eq i64 %i.fd, 0
  %.neg = select i1 %.not128, i64 -1, i64 -2
  %n.vec = add nsw i64 %.neg, %26                 ; 2 uses
  %i.fe = shl i64 %n.vec, 5
  %i.ff = getelementptr i8, ptr %i.ev, i64 %i.fe
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fg = shl i64 %index, 5                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ev, i64 %i.fg ; 4 uses
  %i.fh = getelementptr i8, ptr %i.ev, i64 %i.fg  ; 3 uses
  %next.gep125 = getelementptr i8, ptr %i.fh, i64 32
  %i.fi = load double, ptr %next.gep, align 8, !tbaa !91
  %i.fj = load double, ptr %next.gep125, align 8, !tbaa !91
  %i.fk = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.fj, i64 1 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.fn = getelementptr i8, ptr %i.fh, i64 40
  %i.fo = load double, ptr %i.fm, align 8, !tbaa !91
  %i.fp = load double, ptr %i.fn, align 8, !tbaa !91
  %i.fq = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fr = insertelement <2 x double> %i.fq, double %i.fp, i64 1 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.ft = getelementptr i8, ptr %i.fh, i64 48
  %i.fu = load double, ptr %i.fs, align 8, !tbaa !91
  %i.fv = load double, ptr %i.ft, align 8, !tbaa !91
  %i.fw = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.fx = insertelement <2 x double> %i.fw, double %i.fv, i64 1 ; 5 uses
  %i.fy = fmul <2 x double> %i.fr, %i.fr
  %i.fz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> %i.fl, <2 x double> %i.fy)
  %i.ga = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.fx, <2 x double> %i.fz)
  %i.gb = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ga)
  %i.gc = fdiv <2 x double> splat (double 1.000000e+00), %i.gb ; 3 uses
  %i.gd = fcmp ogt <2 x double> %i.fx, zeroinitializer ; 3 uses
  %i.ge = fneg <2 x double> %i.fl
  %i.gf = fneg <2 x double> %i.fr
  %i.gg = fneg <2 x double> %i.fx
  %predphi.v = select <2 x i1> %i.gd, <2 x double> %i.ge, <2 x double> %i.fl
  %predphi = fmul <2 x double> %i.gc, %predphi.v
  %predphi126.v = select <2 x i1> %i.gd, <2 x double> %i.gf, <2 x double> %i.fr
  %predphi126 = fmul <2 x double> %i.gc, %predphi126.v
  %predphi127.v = select <2 x i1> %i.gd, <2 x double> %i.gg, <2 x double> %i.fx
  %predphi127 = fmul <2 x double> %i.gc, %predphi127.v
  %i.gh = shufflevector <2 x double> %predphi, <2 x double> %predphi126, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gi = shufflevector <2 x double> %predphi127, <2 x double> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.gh, <4 x double> %i.gi, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %next.gep, align 8, !tbaa !91
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gj = icmp eq i64 %index.next, %n.vec
  br i1 %i.gj, label %.lr.ph113.preheader132, label %vector.body, !llvm.loop !314

.lr.ph113.preheader132:                           ; preds = %vector.body, %.lr.ph113.preheader
  %.149111.ph = phi ptr [ %i.ev, %.lr.ph113.preheader ], [ %i.ff, %vector.body ]
  br label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113.preheader132, %_ZN2cv10signNormalIdEEvT_S1_S1_RNS_3VecIS1_Li4EEE.exit101
  %.149111 = phi ptr [ %i.hf, %_ZN2cv10signNormalIdEEvT_S1_S1_RNS_3VecIS1_Li4EEE.exit101 ], [ %.149111.ph, %.lr.ph113.preheader132 ] ; 5 uses
  %i.gk = load <2 x double>, ptr %.149111, align 8, !tbaa !91 ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.149111, i64 16 ; 2 uses
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !91 ; 5 uses
  %foldExtExtBinop130 = fmul <2 x double> %i.gk, %i.gk
  %i.gn = extractelement <2 x double> %foldExtExtBinop130, i64 1
  %i.go = extractelement <2 x double> %i.gk, i64 0 ; 2 uses
  %i.gp = call double @llvm.fmuladd.f64(double %i.go, double %i.go, double %i.gn)
  %i.gq = call double @llvm.fmuladd.f64(double %i.gm, double %i.gm, double %i.gp)
  %sqrt.i97 = call double @llvm.sqrt.f64(double %i.gq)
  %i.gr = fdiv double 1.000000e+00, %sqrt.i97     ; 4 uses
  %i.gs = fcmp ogt double %i.gm, 0.000000e+00
  br i1 %i.gs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph113
  %i.gt = fneg <2 x double> %i.gk
  %i.gu = insertelement <2 x double> poison, double %i.gr, i64 0
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gw = fmul <2 x double> %i.gv, %i.gt
  %i.gx = fneg double %i.gm
  %i.gy = fmul double %i.gr, %i.gx
  br label %_ZN2cv10signNormalIdEEvT_S1_S1_RNS_3VecIS1_Li4EEE.exit101

bb.r:                                             ; preds = %.lr.ph113
  %i.gz = insertelement <2 x double> poison, double %i.gr, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = fmul <2 x double> %i.gk, %i.ha
  %i.hc = fmul double %i.gm, %i.gr
  br label %_ZN2cv10signNormalIdEEvT_S1_S1_RNS_3VecIS1_Li4EEE.exit101

_ZN2cv10signNormalIdEEvT_S1_S1_RNS_3VecIS1_Li4EEE.exit101: ; preds = %bb.q, %bb.r
  %.sink.i100 = phi double [ %i.gy, %bb.q ], [ %i.hc, %bb.r ]
  %i.hd = phi <2 x double> [ %i.gw, %bb.q ], [ %i.hb, %bb.r ]
  store <2 x double> %i.hd, ptr %.149111, align 8, !tbaa !91
  store double %.sink.i100, ptr %i.gl, align 8, !tbaa !91
  %i.he = getelementptr inbounds nuw i8, ptr %.149111, i64 24
  store double 0.000000e+00, ptr %i.he, align 8, !tbaa !91
  %i.hf = getelementptr inbounds nuw i8, ptr %.149111, i64 32 ; 2 uses
  %.not95 = icmp eq ptr %i.hf, %i.fa
  br i1 %.not95, label %._crit_edge114, label %.lr.ph113, !llvm.loop !315

bb.s:                                             ; preds = %._crit_edge
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #20
  br label %bb.t

._crit_edge114:                                   ; preds = %_ZN2cv10signNormalIdEEvT_S1_S1_RNS_3VecIS1_Li4EEE.exit101, %bb.p
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.t:                                             ; preds = %bb.s, %bb.k
  %.pn87.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hg, %bb.s ], [ %i.cc, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.j, %bb.i
  %.pn87.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn.pn.pn.pn, %bb.t ], [ %i.cb, %bb.j ], [ %i.ca, %bb.i ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.h
  %.pn87.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn.pn.pn.pn.pn, %bb.u ], [ %i.bz, %bb.h ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %common.resume
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIfEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 464) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(441) dereferenceable(441) %i.a) #20, !inline_history !316
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIfEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 464) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !18
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #20
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

end_hunk_2
