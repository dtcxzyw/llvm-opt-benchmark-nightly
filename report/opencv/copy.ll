Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/copy?download=true
inline.NumInlined: 329
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE:bb.a

_ZNK2cv11_InputArray6getMatEi.exit85:             ; preds = %bb.u, %bb.v
  %i.bf = or i32 %.0205, %.0206
  %i.bg = or i32 %i.bf, %.0204
  %i.bh = or i32 %i.bg, %.0
  %or.cond11 = icmp eq i32 %i.bh, 0
  br i1 %or.cond11, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit85
  %i.bi = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !34
  %i.bk = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !34
  %.not66 = icmp eq ptr %i.bj, %i.bl
  br i1 %.not66, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bm = getelementptr inbounds nuw i8, ptr %21, i64 128
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !23
  %i.bo = getelementptr inbounds nuw i8, ptr %24, i64 128
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !23
  %.not67 = icmp eq i64 %i.bn, %i.bp
  br i1 %.not67, label %bb.cl, label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %i.bq = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i64 0, ptr %i.br, align 8
  store i32 33619968, ptr %25, align 8, !tbaa !60
  store ptr %24, ptr %i.bq, align 8, !tbaa !41
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %bb.cl

bb.aa:                                            ; preds = %bb.v, %bb.u, %bb.t
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.ab:                                            ; preds = %bb.at, %bb.am, %bb.af
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %bb.y
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %.body

bb.ad:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit85
  %i.bv = and i32 %6, -17                         ; 7 uses
  %.not = icmp eq i32 %i.bv, 0
  br i1 %.not, label %_ZN2cv10AutoBufferIdLm136EEC2Em.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bw = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !34 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %21, i64 128
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !23 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %21, i64 72
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !54 ; 6 uses
  %i.cc = icmp slt i32 %i.cb, 3
  br i1 %i.cc, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %.noexc86 unwind label %bb.ab

.noexc86:                                         ; preds = %bb.af
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.42, i32 noundef 109) #20
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %.noexc86
  unreachable

bb.ah:                                            ; preds = %.noexc86
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = load ptr, ptr %16, align 8, !tbaa !13   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ah
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !14
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %.body

bb.ai:                                            ; preds = %bb.ae
  %i.cj = icmp sgt i32 %i.cb, 0
  br i1 %i.cj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ck = icmp eq i32 %i.cb, 2
  %.sroa.sel160.v.sroa.sel.v.sroa.sel.v = select i1 %i.ck, i64 88, i64 84
  %.sroa.sel160.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %21, i64 %.sroa.sel160.v.sroa.sel.v.sroa.sel.v
  %i.cl = load i32, ptr %.sroa.sel160.v.sroa.sel.v.sroa.sel, align 4, !tbaa !22
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.cm = icmp eq i32 %i.cb, 0
  %i.cn = zext i1 %i.cm to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.co = phi i32 [ %i.cl, %bb.aj ], [ %i.cn, %bb.ak ] ; 8 uses
  %i.cp = icmp eq i32 %i.cb, 2
  %i.cq = getelementptr inbounds nuw i8, ptr %21, i64 84
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp sgt i32 %i.cb, -1
  %i.ct = zext i1 %i.cs to i32
  %i.cu = select i1 %i.cp, i32 %i.cr, i32 %i.ct   ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !34 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %24, i64 128
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !23 ; 8 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %24, i64 72
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !54 ; 6 uses
  %i.db = icmp slt i32 %i.da, 3
  br i1 %i.db, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc94 unwind label %bb.ab

.noexc94:                                         ; preds = %bb.am
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.42, i32 noundef 109) #20
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %.noexc94
  unreachable

bb.ao:                                            ; preds = %.noexc94
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = load ptr, ptr %14, align 8, !tbaa !13   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87: ; preds = %bb.ao
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !14
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %.body

bb.ap:                                            ; preds = %bb.al
  %i.di = icmp sgt i32 %i.da, 0
  br i1 %i.di, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dj = icmp eq i32 %i.da, 2
  %.sroa.sel149.v.sroa.sel.v.sroa.sel.v = select i1 %i.dj, i64 88, i64 84
  %.sroa.sel149.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %24, i64 %.sroa.sel149.v.sroa.sel.v.sroa.sel.v
  %i.dk = load i32, ptr %.sroa.sel149.v.sroa.sel.v.sroa.sel, align 4, !tbaa !22
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.dl = icmp eq i32 %i.da, 0
  %i.dm = zext i1 %i.dl to i32
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.dn = phi i32 [ %i.dk, %bb.aq ], [ %i.dm, %bb.ar ] ; 2 uses
  %i.do = icmp eq i32 %i.da, 2
  %i.dp = getelementptr inbounds nuw i8, ptr %24, i64 84
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = icmp sgt i32 %i.da, -1
  %i.ds = zext i1 %i.dr to i32
  %i.dt = select i1 %i.do, i32 %i.dq, i32 %i.ds
  %i.du = load i32, ptr %21, align 8, !tbaa !33   ; 2 uses
  %i.dv = lshr i32 %i.du, 5
  %i.dw = and i32 %i.dv, 127
  %i.dx = add nuw nsw i32 %i.dw, 1
  %i.dy = shl i32 %i.du, 2
  %i.dz = and i32 %i.dy, 124
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = lshr i64 1275511473185297, %i.ea
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = and i32 %i.ec, 15
  %i.ee = mul nuw nsw i32 %i.ed, %i.dx            ; 3 uses
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = ptrtoint ptr %i.bx to i64
  %i.eh = ptrtoint ptr %i.cw to i64
  %i.ei = or i64 %i.eg, %i.eh
  %i.ej = or i64 %i.ei, %i.ef
  %i.ek = or i64 %i.ej, %i.bz
  %i.el = or i64 %i.ek, %i.cy
  %i.em = and i64 %i.el, 3
  %i.en = icmp eq i64 %i.em, 0                    ; 3 uses
  %.zext = lshr i32 %i.ee, 2
  %.0161.i = select i1 %i.en, i32 %.zext, i32 %i.ee ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.eo = sub nsw i32 %i.dn, %i.co                ; 2 uses
  %i.ep = mul nsw i32 %.0161.i, %i.eo             ; 3 uses
  %i.eq = sext i32 %i.ep to i64                   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.er, ptr %13, align 8, !tbaa !233
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.not.i.i.i = icmp ugt i32 %i.ep, 264
  store i64 %i.eq, ptr %i.es, align 8, !tbaa !234
  br i1 %.not.i.i.i, label %bb.at, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i

bb.at:                                            ; preds = %bb.as
  %i.et = icmp slt i32 %i.ep, 0
  %i.eu = shl nuw nsw i64 %i.eq, 2
  %i.ev = select i1 %i.et, i64 -1, i64 %i.eu
  %i.ew = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ev) #23
          to label %.noexc98 unwind label %bb.ab  ; 2 uses

.noexc98:                                         ; preds = %bb.at
  store ptr %i.ew, ptr %13, align 8, !tbaa !233
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i:           ; preds = %.noexc98, %bb.as
  %i.ex = phi ptr [ %i.er, %bb.as ], [ %i.ew, %.noexc98 ] ; 13 uses
  %i.ey = sub i32 %i.eo, %.0206                   ; 4 uses
  %i.ez = add i32 %i.cu, %.0
  %i.fa = sub i32 %i.dt, %i.ez                    ; 2 uses
  %i.fb = icmp sgt i32 %.0206, 0
  br i1 %i.fb, label %.lr.ph191.i, label %.preheader186.i

.lr.ph191.i:                                      ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i
  %.not207 = icmp eq i32 %.0161.i, 0
  br i1 %.not207, label %.lr.ph191.split.i, label %.lr.ph191.split.us.preheader.i

.lr.ph191.split.us.preheader.i:                   ; preds = %.lr.ph191.i
  %i.fc = zext nneg i32 %.0161.i to i64           ; 4 uses
  %wide.trip.count240.i = zext nneg i32 %.0206 to i64
  %min.iters.check = icmp samesign ult i32 %.0161.i, 8
  %n.vec = and i64 %i.fc, 1073741816              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.fc
  br label %.lr.ph191.split.us.i

.lr.ph191.split.us.i:                             ; preds = %._crit_edge.us.i, %.lr.ph191.split.us.preheader.i
  %indvars.iv237.i = phi i64 [ 0, %.lr.ph191.split.us.preheader.i ], [ %indvars.iv.next238.i, %._crit_edge.us.i ] ; 3 uses
  %i.fd = trunc i64 %indvars.iv237.i to i32
  %i.fe = sub i32 %i.fd, %.0206
  %i.ff = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.fe, i32 noundef %i.co, i32 noundef range(i32 1, -16) %i.bv)
          to label %.lr.ph.us.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.us.i:                                      ; preds = %.lr.ph191.split.us.i
  %i.fg = mul nsw i32 %i.ff, %.0161.i             ; 2 uses
  %i.fh = mul nuw nsw i64 %indvars.iv237.i, %i.fc
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fh ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.fg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.fj = add <4 x i32> %broadcast.splat, %vec.ind
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store <4 x i32> %i.fj, ptr %i.fi, align 4, !tbaa !22
  store <4 x i32> %.reass, ptr %i.fk, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.fm = trunc i64 %indvars.iv.i to i32
  %i.fn = add i32 %i.fg, %i.fm
  store i32 %i.fn, ptr %gep.i, align 4, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next.i, %i.fc
  br i1 %exitcond236.not.i, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !201

._crit_edge.us.i:                                 ; preds = %scalar.ph, %middle.block
  %indvars.iv.next238.i = add nuw nsw i64 %indvars.iv237.i, 1 ; 2 uses
  %exitcond241.not.i = icmp eq i64 %indvars.iv.next238.i, %wide.trip.count240.i
  br i1 %exitcond241.not.i, label %.preheader186.i, label %.lr.ph191.split.us.i, !llvm.loop !202

.preheader186.i:                                  ; preds = %._crit_edge.us.i, %bb.au, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i
  %i.fo = icmp sgt i32 %i.ey, 0
  br i1 %i.fo, label %.lr.ph194.i, label %._crit_edge195.i

.lr.ph194.i:                                      ; preds = %.preheader186.i
  %.not208 = icmp eq i32 %.0161.i, 0
  br i1 %.not208, label %.lr.ph194.split.i, label %.lr.ph194.split.us.preheader.i

.lr.ph194.split.us.preheader.i:                   ; preds = %.lr.ph194.i
  %i.fp = zext nneg i32 %i.ey to i64
  %i.fq = sext i32 %.0206 to i64
  %i.fr = zext nneg i32 %.0161.i to i64           ; 4 uses
  %min.iters.check303 = icmp samesign ult i32 %.0161.i, 8
  %n.vec305 = and i64 %i.fr, 1073741816           ; 3 uses
  %cmp.n315 = icmp eq i64 %n.vec305, %i.fr
  br label %.lr.ph194.split.us.i

.lr.ph194.split.us.i:                             ; preds = %._crit_edge.us197.i, %.lr.ph194.split.us.preheader.i
  %indvars.iv247.i = phi i64 [ 0, %.lr.ph194.split.us.preheader.i ], [ %indvars.iv.next248.i, %._crit_edge.us197.i ] ; 3 uses
  %i.fs = trunc i64 %indvars.iv247.i to i32
  %i.ft = add i32 %i.co, %i.fs
  %i.fu = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.ft, i32 noundef %i.co, i32 noundef range(i32 1, -16) %i.bv)
          to label %.lr.ph.us196.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.us196.i:                                   ; preds = %.lr.ph194.split.us.i
  %i.fv = mul nsw i32 %i.fu, %.0161.i             ; 2 uses
  %i.fw = add nsw i64 %indvars.iv247.i, %i.fq
  %i.fx = mul nsw i64 %i.fw, %i.fr
  %invariant.gep298.i = getelementptr [4 x i8], ptr %i.ex, i64 %i.fx ; 2 uses
  br i1 %min.iters.check303, label %scalar.ph302.preheader, label %vector.ph304

vector.ph304:                                     ; preds = %.lr.ph.us196.i
  %broadcast.splatinsert306 = insertelement <4 x i32> poison, i32 %i.fv, i64 0
  %broadcast.splat307 = shufflevector <4 x i32> %broadcast.splatinsert306, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op388 = add <4 x i32> splat (i32 4), %broadcast.splat307
  br label %vector.body308

vector.body308:                                   ; preds = %vector.body308, %vector.ph304
  %index309 = phi i64 [ 0, %vector.ph304 ], [ %index.next312, %vector.body308 ] ; 2 uses
  %vec.ind310 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph304 ], [ %vec.ind.next313, %vector.body308 ] ; 3 uses
  %i.fy = getelementptr [4 x i8], ptr %invariant.gep298.i, i64 %index309 ; 2 uses
  %i.fz = add <4 x i32> %broadcast.splat307, %vec.ind310
  %.reass389 = add <4 x i32> %vec.ind310, %invariant.op388
  %i.ga = getelementptr i8, ptr %i.fy, i64 16
  store <4 x i32> %i.fz, ptr %i.fy, align 4, !tbaa !22
  store <4 x i32> %.reass389, ptr %i.ga, align 4, !tbaa !22
  %index.next312 = add nuw i64 %index309, 8       ; 2 uses
  %vec.ind.next313 = add <4 x i32> %vec.ind310, splat (i32 8)
  %i.gb = icmp eq i64 %index.next312, %n.vec305
  br i1 %i.gb, label %middle.block314, label %vector.body308, !llvm.loop !203

middle.block314:                                  ; preds = %vector.body308
  br i1 %cmp.n315, label %._crit_edge.us197.i, label %scalar.ph302.preheader

scalar.ph302.preheader:                           ; preds = %.lr.ph.us196.i, %middle.block314
  %indvars.iv242.i.ph = phi i64 [ 0, %.lr.ph.us196.i ], [ %n.vec305, %middle.block314 ]
  br label %scalar.ph302

scalar.ph302:                                     ; preds = %scalar.ph302.preheader, %scalar.ph302
  %indvars.iv242.i = phi i64 [ %indvars.iv.next243.i, %scalar.ph302 ], [ %indvars.iv242.i.ph, %scalar.ph302.preheader ] ; 3 uses
  %gep299.i = getelementptr [4 x i8], ptr %invariant.gep298.i, i64 %indvars.iv242.i
  %i.gc = trunc i64 %indvars.iv242.i to i32
  %i.gd = add i32 %i.fv, %i.gc
  store i32 %i.gd, ptr %gep299.i, align 4, !tbaa !22
  %indvars.iv.next243.i = add nuw nsw i64 %indvars.iv242.i, 1 ; 2 uses
  %exitcond246.not.i = icmp eq i64 %indvars.iv.next243.i, %i.fr
  br i1 %exitcond246.not.i, label %._crit_edge.us197.i, label %scalar.ph302, !llvm.loop !204

._crit_edge.us197.i:                              ; preds = %scalar.ph302, %middle.block314
  %indvars.iv.next248.i = add nuw nsw i64 %indvars.iv247.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next248.i, %i.fp
  br i1 %exitcond.not, label %._crit_edge195.i, label %.lr.ph194.split.us.i, !llvm.loop !205

.lr.ph191.split.i:                                ; preds = %.lr.ph191.i, %bb.au
  %.0157190.i = phi i32 [ %i.gg, %bb.au ], [ 0, %.lr.ph191.i ] ; 2 uses
  %i.ge = sub nsw i32 %.0157190.i, %.0206
  %i.gf = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.ge, i32 noundef %i.co, i32 noundef range(i32 1, -16) %i.bv)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.au:                                            ; preds = %.lr.ph191.split.i
  %i.gg = add nuw nsw i32 %.0157190.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gg, %.0206
  br i1 %exitcond.not.i, label %.preheader186.i, label %.lr.ph191.split.i, !llvm.loop !202

.lr.ph194.split.i:                                ; preds = %.lr.ph194.i, %bb.av
  %.1158193.i = phi i32 [ %i.gj, %bb.av ], [ 0, %.lr.ph194.i ] ; 2 uses
  %i.gh = add nsw i32 %.1158193.i, %i.co
  %i.gi = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.gh, i32 noundef %i.co, i32 noundef range(i32 1, -16) %i.bv)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.av:                                            ; preds = %.lr.ph194.split.i
  %i.gj = add nuw nsw i32 %.1158193.i, 1          ; 2 uses
  %i.gk = icmp slt i32 %i.gj, %i.ey
  br i1 %i.gk, label %.lr.ph194.split.i, label %._crit_edge195.i, !llvm.loop !205

._crit_edge195.i:                                 ; preds = %._crit_edge.us197.i, %bb.av, %.preheader186.i
  %29 = mul nsw i32 %.0161.i, %i.dn
  %i.gl = sext i32 %.0 to i64
  %i.gm = mul i64 %i.cy, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.gm ; 3 uses
  %i.go = icmp sgt i32 %i.cu, 0
  %30 = select i1 %i.en, i32 2, i32 0             ; 3 uses
  br i1 %i.go, label %.lr.ph212.i, label %._crit_edge.i

.lr.ph212.i:                                      ; preds = %._crit_edge195.i
  %i.gp = mul i32 %.0161.i, %i.ey                 ; 4 uses
  %i.gq = mul i32 %.0161.i, %.0206                ; 6 uses
  %i.gr = mul nsw i32 %.0161.i, %i.co             ; 2 uses
  %i.gs = shl i32 %i.gq, %30
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds i8, ptr %i.gn, i64 %i.gt ; 2 uses
  %i.gv = shl i32 %i.gr, %30
  %i.gw = sext i32 %i.gv to i64                   ; 2 uses
  %i.gx = icmp sgt i32 %i.gq, 0                   ; 2 uses
  %i.gy = icmp sgt i32 %i.gp, 0                   ; 2 uses
  %i.gz = sext i32 %i.gq to i64                   ; 11 uses
  %i.ha = sext i32 %i.gr to i64                   ; 2 uses
  %wide.trip.count264.i = zext i32 %i.gq to i64   ; 4 uses
  %wide.trip.count269.i = zext i32 %i.gp to i64   ; 4 uses
  %invariant.gep304.i = getelementptr [4 x i8], ptr %i.ex, i64 %i.gz ; 10 uses
  br i1 %i.en, label %.lr.ph212.split.us.i.preheader, label %.lr.ph212.split.i.preheader

.lr.ph212.split.i.preheader:                      ; preds = %.lr.ph212.i
  %xtraiter = and i64 %wide.trip.count264.i, 3    ; 3 uses
  %i.hb = icmp ult i32 %i.gq, 4
  %unroll_iter = and i64 %wide.trip.count264.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod348 = icmp ne i64 %xtraiter, 0
  %xtraiter349 = and i64 %wide.trip.count269.i, 3 ; 3 uses
  %i.hc = icmp ult i32 %i.gp, 4
  %unroll_iter353 = and i64 %wide.trip.count269.i, 2147483644
  %lcmp.mod351.not = icmp eq i64 %xtraiter349, 0
  %lcmp.mod352 = icmp ne i64 %xtraiter349, 0
  br label %.lr.ph212.split.i

.lr.ph212.split.us.i.preheader:                   ; preds = %.lr.ph212.i
  %xtraiter355 = and i64 %wide.trip.count264.i, 3 ; 3 uses
  %i.hd = icmp ult i32 %i.gq, 4
  %unroll_iter359 = and i64 %wide.trip.count264.i, 2147483644
  %lcmp.mod357.not = icmp eq i64 %xtraiter355, 0
  %lcmp.mod358 = icmp ne i64 %xtraiter355, 0
  %xtraiter361 = and i64 %wide.trip.count269.i, 3 ; 3 uses
  %i.he = icmp ult i32 %i.gp, 4
  %unroll_iter365 = and i64 %wide.trip.count269.i, 2147483644
  %lcmp.mod363.not = icmp eq i64 %xtraiter361, 0
  %lcmp.mod364 = icmp ne i64 %xtraiter361, 0
  br label %.lr.ph212.split.us.i

.lr.ph212.split.us.i:                             ; preds = %.lr.ph212.split.us.i.preheader, %.loopexit181.us.i
  %.0210.us.i = phi ptr [ %i.jj, %.loopexit181.us.i ], [ %i.gu, %.lr.ph212.split.us.i.preheader ] ; 9 uses
  %.2159209.us.i = phi i32 [ %i.ji, %.loopexit181.us.i ], [ 0, %.lr.ph212.split.us.i.preheader ]
  %.0162207.us.i = phi ptr [ %i.jk, %.loopexit181.us.i ], [ %i.bx, %.lr.ph212.split.us.i.preheader ] ; 13 uses
  %.not.us.i = icmp eq ptr %.0210.us.i, %.0162207.us.i
  br i1 %.not.us.i, label %.preheader182.us.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph212.split.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0210.us.i, ptr align 1 %.0162207.us.i, i64 %i.gw, i1 false)
  br label %.preheader182.us.i

.preheader182.us.i:                               ; preds = %bb.aw, %.lr.ph212.split.us.i
  br i1 %i.gx, label %.lr.ph204.us.i.preheader, label %.preheader180.us.i

.lr.ph204.us.i.preheader:                         ; preds = %.preheader182.us.i
  br i1 %i.hd, label %.lr.ph204.us.i.epil.preheader, label %.lr.ph204.us.i

.lr.ph204.us.i:                                   ; preds = %.lr.ph204.us.i.preheader, %.lr.ph204.us.i
  %indvars.iv261.i = phi i64 [ %indvars.iv.next262.i.3, %.lr.ph204.us.i ], [ 0, %.lr.ph204.us.i.preheader ] ; 6 uses
  %niter360 = phi i64 [ %niter360.next.3, %.lr.ph204.us.i ], [ 0, %.lr.ph204.us.i.preheader ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv261.i
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !22
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !22
  %i.hk = sub nsw i64 %indvars.iv261.i, %i.gz
  %i.hl = getelementptr inbounds [4 x i8], ptr %.0210.us.i, i64 %i.hk
  store i32 %i.hj, ptr %i.hl, align 4, !tbaa !22
  %indvars.iv.next262.i = or disjoint i64 %indvars.iv261.i, 1 ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.next262.i
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !22
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !22
  %i.hr = sub nsw i64 %indvars.iv.next262.i, %i.gz
  %i.hs = getelementptr inbounds [4 x i8], ptr %.0210.us.i, i64 %i.hr
  store i32 %i.hq, ptr %i.hs, align 4, !tbaa !22
  %indvars.iv.next262.i.1 = or disjoint i64 %indvars.iv261.i, 2 ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.next262.i.1
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !22
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !22
  %i.hy = sub nsw i64 %indvars.iv.next262.i.1, %i.gz
  %i.hz = getelementptr inbounds [4 x i8], ptr %.0210.us.i, i64 %i.hy
  store i32 %i.hx, ptr %i.hz, align 4, !tbaa !22
  %indvars.iv.next262.i.2 = or disjoint i64 %indvars.iv261.i, 3 ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.next262.i.2
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !22
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !22
  %i.if = sub nsw i64 %indvars.iv.next262.i.2, %i.gz
  %i.ig = getelementptr inbounds [4 x i8], ptr %.0210.us.i, i64 %i.if
  store i32 %i.ie, ptr %i.ig, align 4, !tbaa !22
  %indvars.iv.next262.i.3 = add nuw nsw i64 %indvars.iv261.i, 4 ; 2 uses
  %niter360.next.3 = add i64 %niter360, 4         ; 2 uses
  %niter360.ncmp.3 = icmp eq i64 %niter360.next.3, %unroll_iter359
  br i1 %niter360.ncmp.3, label %.preheader180.us.i.loopexit.unr-lcssa, label %.lr.ph204.us.i, !llvm.loop !206

.preheader180.us.i.loopexit.unr-lcssa:            ; preds = %.lr.ph204.us.i
  br i1 %lcmp.mod357.not, label %.preheader180.us.i, label %.lr.ph204.us.i.epil.preheader

.lr.ph204.us.i.epil.preheader:                    ; preds = %.preheader180.us.i.loopexit.unr-lcssa, %.lr.ph204.us.i.preheader
  %indvars.iv261.i.epil.init = phi i64 [ 0, %.lr.ph204.us.i.preheader ], [ %indvars.iv.next262.i.3, %.preheader180.us.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod358)
  br label %.lr.ph204.us.i.epil

.lr.ph204.us.i.epil:                              ; preds = %.lr.ph204.us.i.epil, %.lr.ph204.us.i.epil.preheader
  %indvars.iv261.i.epil = phi i64 [ %indvars.iv.next262.i.epil, %.lr.ph204.us.i.epil ], [ %indvars.iv261.i.epil.init, %.lr.ph204.us.i.epil.preheader ] ; 3 uses
  %epil.iter356 = phi i64 [ %epil.iter356.next, %.lr.ph204.us.i.epil ], [ 0, %.lr.ph204.us.i.epil.preheader ]
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv261.i.epil
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !22
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !22
  %i.im = sub nsw i64 %indvars.iv261.i.epil, %i.gz
  %i.in = getelementptr inbounds [4 x i8], ptr %.0210.us.i, i64 %i.im
  store i32 %i.il, ptr %i.in, align 4, !tbaa !22
  %indvars.iv.next262.i.epil = add nuw nsw i64 %indvars.iv261.i.epil, 1
  %epil.iter356.next = add i64 %epil.iter356, 1   ; 2 uses
  %epil.iter356.cmp.not = icmp eq i64 %epil.iter356.next, %xtraiter355
  br i1 %epil.iter356.cmp.not, label %.preheader180.us.i, label %.lr.ph204.us.i.epil, !llvm.loop !207

.preheader180.us.i:                               ; preds = %.preheader180.us.i.loopexit.unr-lcssa, %.lr.ph204.us.i.epil, %.preheader182.us.i
  br i1 %i.gy, label %.lr.ph206.us.preheader.i, label %.loopexit181.us.i

.lr.ph206.us.preheader.i:                         ; preds = %.preheader180.us.i
  %invariant.gep306.i = getelementptr [4 x i8], ptr %.0210.us.i, i64 %i.ha ; 5 uses
  br i1 %i.he, label %.lr.ph206.us.i.epil.preheader, label %.lr.ph206.us.i

.lr.ph206.us.i:                                   ; preds = %.lr.ph206.us.preheader.i, %.lr.ph206.us.i
  %indvars.iv266.i = phi i64 [ %indvars.iv.next267.i.3, %.lr.ph206.us.i ], [ 0, %.lr.ph206.us.preheader.i ] ; 6 uses
  %niter366 = phi i64 [ %niter366.next.3, %.lr.ph206.us.i ], [ 0, %.lr.ph206.us.preheader.i ]
  %gep305.i = getelementptr [4 x i8], ptr %invariant.gep304.i, i64 %indvars.iv266.i
  %i.io = load i32, ptr %gep305.i, align 4, !tbaa !22
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !22
  %gep307.i = getelementptr [4 x i8], ptr %invariant.gep306.i, i64 %indvars.iv266.i
  store i32 %i.ir, ptr %gep307.i, align 4, !tbaa !22
  %indvars.iv.next267.i = or disjoint i64 %indvars.iv266.i, 1 ; 2 uses
  %gep305.i.1 = getelementptr [4 x i8], ptr %invariant.gep304.i, i64 %indvars.iv.next267.i
  %i.is = load i32, ptr %gep305.i.1, align 4, !tbaa !22
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !22
  %gep307.i.1 = getelementptr [4 x i8], ptr %invariant.gep306.i, i64 %indvars.iv.next267.i
  store i32 %i.iv, ptr %gep307.i.1, align 4, !tbaa !22
  %indvars.iv.next267.i.1 = or disjoint i64 %indvars.iv266.i, 2 ; 2 uses
  %gep305.i.2 = getelementptr [4 x i8], ptr %invariant.gep304.i, i64 %indvars.iv.next267.i.1
  %i.iw = load i32, ptr %gep305.i.2, align 4, !tbaa !22
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !22
  %gep307.i.2 = getelementptr [4 x i8], ptr %invariant.gep306.i, i64 %indvars.iv.next267.i.1
  store i32 %i.iz, ptr %gep307.i.2, align 4, !tbaa !22
  %indvars.iv.next267.i.2 = or disjoint i64 %indvars.iv266.i, 3 ; 2 uses
  %gep305.i.3 = getelementptr [4 x i8], ptr %invariant.gep304.i, i64 %indvars.iv.next267.i.2
  %i.ja = load i32, ptr %gep305.i.3, align 4, !tbaa !22
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !22
  %gep307.i.3 = getelementptr [4 x i8], ptr %invariant.gep306.i, i64 %indvars.iv.next267.i.2
  store i32 %i.jd, ptr %gep307.i.3, align 4, !tbaa !22
  %indvars.iv.next267.i.3 = add nuw nsw i64 %indvars.iv266.i, 4 ; 2 uses
  %niter366.next.3 = add i64 %niter366, 4         ; 2 uses
  %niter366.ncmp.3 = icmp eq i64 %niter366.next.3, %unroll_iter365
  br i1 %niter366.ncmp.3, label %.loopexit181.us.i.loopexit.unr-lcssa, label %.lr.ph206.us.i, !llvm.loop !208

.loopexit181.us.i.loopexit.unr-lcssa:             ; preds = %.lr.ph206.us.i
  br i1 %lcmp.mod363.not, label %.loopexit181.us.i, label %.lr.ph206.us.i.epil.preheader

.lr.ph206.us.i.epil.preheader:                    ; preds = %.loopexit181.us.i.loopexit.unr-lcssa, %.lr.ph206.us.preheader.i
  %indvars.iv266.i.epil.init = phi i64 [ 0, %.lr.ph206.us.preheader.i ], [ %indvars.iv.next267.i.3, %.loopexit181.us.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod364)
  br label %.lr.ph206.us.i.epil

.lr.ph206.us.i.epil:                              ; preds = %.lr.ph206.us.i.epil, %.lr.ph206.us.i.epil.preheader
  %indvars.iv266.i.epil = phi i64 [ %indvars.iv266.i.epil.init, %.lr.ph206.us.i.epil.preheader ], [ %indvars.iv.next267.i.epil, %.lr.ph206.us.i.epil ] ; 3 uses
  %epil.iter362 = phi i64 [ 0, %.lr.ph206.us.i.epil.preheader ], [ %epil.iter362.next, %.lr.ph206.us.i.epil ]
  %gep305.i.epil = getelementptr [4 x i8], ptr %invariant.gep304.i, i64 %indvars.iv266.i.epil
  %i.je = load i32, ptr %gep305.i.epil, align 4, !tbaa !22
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !22
  %gep307.i.epil = getelementptr [4 x i8], ptr %invariant.gep306.i, i64 %indvars.iv266.i.epil
  store i32 %i.jh, ptr %gep307.i.epil, align 4, !tbaa !22
  %indvars.iv.next267.i.epil = add nuw nsw i64 %indvars.iv266.i.epil, 1
  %epil.iter362.next = add i64 %epil.iter362, 1   ; 2 uses
  %epil.iter362.cmp.not = icmp eq i64 %epil.iter362.next, %xtraiter361
  br i1 %epil.iter362.cmp.not, label %.loopexit181.us.i, label %.lr.ph206.us.i.epil, !llvm.loop !209

.loopexit181.us.i:                                ; preds = %.loopexit181.us.i.loopexit.unr-lcssa, %.lr.ph206.us.i.epil, %.preheader180.us.i
  %i.ji = add nuw nsw i32 %.2159209.us.i, 1       ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.0210.us.i, i64 %i.cy
  %i.jk = getelementptr inbounds nuw i8, ptr %.0162207.us.i, i64 %i.bz
  %exitcond271.not.i = icmp eq i32 %i.ji, %i.cu
  br i1 %exitcond271.not.i, label %._crit_edge.i, label %.lr.ph212.split.us.i, !llvm.loop !210

.lr.ph212.split.i:                                ; preds = %.lr.ph212.split.i.preheader, %.loopexit184.i
  %.0210.i = phi ptr [ %i.lp, %.loopexit184.i ], [ %i.gu, %.lr.ph212.split.i.preheader ] ; 9 uses
  %.2159209.i = phi i32 [ %i.lo, %.loopexit184.i ], [ 0, %.lr.ph212.split.i.preheader ]
  %.0162207.i = phi ptr [ %i.lq, %.loopexit184.i ], [ %i.bx, %.lr.ph212.split.i.preheader ] ; 13 uses
  %.not.i = icmp eq ptr %.0210.i, %.0162207.i
  br i1 %.not.i, label %.preheader185.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph212.split.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0210.i, ptr align 1 %.0162207.i, i64 %i.gw, i1 false)
  br label %.preheader185.i

.preheader185.i:                                  ; preds = %bb.ax, %.lr.ph212.split.i
  br i1 %i.gx, label %.lr.ph.i.preheader, label %.preheader183.i

.lr.ph.i.preheader:                               ; preds = %.preheader185.i
  br i1 %i.hb, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.preheader183.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %.preheader183.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader183.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv250.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next251.i.3, %.preheader183.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod348)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv250.i.epil = phi i64 [ %indvars.iv.next251.i.epil, %.lr.ph.i.epil ], [ %indvars.iv250.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv250.i.epil
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !22
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !14
  %i.jq = sub nsw i64 %indvars.iv250.i.epil, %i.gz
  %i.jr = getelementptr inbounds i8, ptr %.0210.i, i64 %i.jq
  store i8 %i.jp, ptr %i.jr, align 1, !tbaa !14
  %indvars.iv.next251.i.epil = add nuw nsw i64 %indvars.iv250.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader183.i, label %.lr.ph.i.epil, !llvm.loop !211

.preheader183.i:                                  ; preds = %.preheader183.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.preheader185.i
  br i1 %i.gy, label %.lr.ph202.preheader.i, label %.loopexit184.i

.lr.ph202.preheader.i:                            ; preds = %.preheader183.i
  %invariant.gep302.i = getelementptr i8, ptr %.0210.i, i64 %i.ha ; 5 uses
  br i1 %i.hc, label %.lr.ph202.i.epil.preheader, label %.lr.ph202.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv250.i = phi i64 [ %indvars.iv.next251.i.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv250.i
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !22
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !14
  %i.jx = sub nsw i64 %indvars.iv250.i, %i.gz
  %i.jy = getelementptr inbounds i8, ptr %.0210.i, i64 %i.jx
  store i8 %i.jw, ptr %i.jy, align 1, !tbaa !14
  %indvars.iv.next251.i = or disjoint i64 %indvars.iv250.i, 1 ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.next251.i
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !22
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !14
  %i.ke = sub nsw i64 %indvars.iv.next251.i, %i.gz
  %i.kf = getelementptr inbounds i8, ptr %.0210.i, i64 %i.ke
  store i8 %i.kd, ptr %i.kf, align 1, !tbaa !14
  %indvars.iv.next251.i.1 = or disjoint i64 %indvars.iv250.i, 2 ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.next251.i.1
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !22
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !14
  %i.kl = sub nsw i64 %indvars.iv.next251.i.1, %i.gz
  %i.km = getelementptr inbounds i8, ptr %.0210.i, i64 %i.kl
  store i8 %i.kk, ptr %i.km, align 1, !tbaa !14
  %indvars.iv.next251.i.2 = or disjoint i64 %indvars.iv250.i, 3 ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.next251.i.2
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !22
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !14
  %i.ks = sub nsw i64 %indvars.iv.next251.i.2, %i.gz
  %i.kt = getelementptr inbounds i8, ptr %.0210.i, i64 %i.ks
  store i8 %i.kr, ptr %i.kt, align 1, !tbaa !14
  %indvars.iv.next251.i.3 = add nuw nsw i64 %indvars.iv250.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader183.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !212

.lr.ph202.i:                                      ; preds = %.lr.ph202.preheader.i, %.lr.ph202.i
  %indvars.iv255.i = phi i64 [ %indvars.iv.next256.i.3, %.lr.ph202.i ], [ 0, %.lr.ph202.preheader.i ] ; 6 uses
  %niter354 = phi i64 [ %niter354.next.3, %.lr.ph202.i ], [ 0, %.lr.ph202.preheader.i ]
  %gep301.i = getelementptr [4 x i8], ptr %invariant.gep304.i, i64 %indvars.iv255.i
  %i.ku = load i32, ptr %gep301.i, align 4, !tbaa !22
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !14
  %gep303.i = getelementptr i8, ptr %invariant.gep302.i, i64 %indvars.iv255.i
  store i8 %i.kx, ptr %gep303.i, align 1, !tbaa !14
  %indvars.iv.next256.i = or disjoint i64 %indvars.iv255.i, 1 ; 2 uses
  %gep301.i.1 = getelementptr [4 x i8], ptr %invariant.gep304.i, i64 %indvars.iv.next256.i
  %i.ky = load i32, ptr %gep301.i.1, align 4, !tbaa !22
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.kz
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !14
  %gep303.i.1 = getelementptr i8, ptr %invariant.gep302.i, i64 %indvars.iv.next256.i
  store i8 %i.lb, ptr %gep303.i.1, align 1, !tbaa !14
  %indvars.iv.next256.i.1 = or disjoint i64 %indvars.iv255.i, 2 ; 2 uses
  %gep301.i.2 = getelementptr [4 x i8], ptr %invariant.gep304.i, i64 %indvars.iv.next256.i.1
  %i.lc = load i32, ptr %gep301.i.2, align 4, !tbaa !22
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.ld
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !14
  %gep303.i.2 = getelementptr i8, ptr %invariant.gep302.i, i64 %indvars.iv.next256.i.1
  store i8 %i.lf, ptr %gep303.i.2, align 1, !tbaa !14
  %indvars.iv.next256.i.2 = or disjoint i64 %indvars.iv255.i, 3 ; 2 uses
  %gep301.i.3 = getelementptr [4 x i8], ptr %invariant.gep304.i, i64 %indvars.iv.next256.i.2
  %i.lg = load i32, ptr %gep301.i.3, align 4, !tbaa !22
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !14
  %gep303.i.3 = getelementptr i8, ptr %invariant.gep302.i, i64 %indvars.iv.next256.i.2
  store i8 %i.lj, ptr %gep303.i.3, align 1, !tbaa !14
  %indvars.iv.next256.i.3 = add nuw nsw i64 %indvars.iv255.i, 4 ; 2 uses
  %niter354.next.3 = add i64 %niter354, 4         ; 2 uses
  %niter354.ncmp.3 = icmp eq i64 %niter354.next.3, %unroll_iter353
  br i1 %niter354.ncmp.3, label %.loopexit184.i.loopexit.unr-lcssa, label %.lr.ph202.i, !llvm.loop !213

.loopexit184.i.loopexit.unr-lcssa:                ; preds = %.lr.ph202.i
  br i1 %lcmp.mod351.not, label %.loopexit184.i, label %.lr.ph202.i.epil.preheader

.lr.ph202.i.epil.preheader:                       ; preds = %.loopexit184.i.loopexit.unr-lcssa, %.lr.ph202.preheader.i
  %indvars.iv255.i.epil.init = phi i64 [ 0, %.lr.ph202.preheader.i ], [ %indvars.iv.next256.i.3, %.loopexit184.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod352)
  br label %.lr.ph202.i.epil

.lr.ph202.i.epil:                                 ; preds = %.lr.ph202.i.epil, %.lr.ph202.i.epil.preheader
  %indvars.iv255.i.epil = phi i64 [ %indvars.iv255.i.epil.init, %.lr.ph202.i.epil.preheader ], [ %indvars.iv.next256.i.epil, %.lr.ph202.i.epil ] ; 3 uses
  %epil.iter350 = phi i64 [ 0, %.lr.ph202.i.epil.preheader ], [ %epil.iter350.next, %.lr.ph202.i.epil ]
  %gep301.i.epil = getelementptr [4 x i8], ptr %invariant.gep304.i, i64 %indvars.iv255.i.epil
  %i.lk = load i32, ptr %gep301.i.epil, align 4, !tbaa !22
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.ll
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !14
  %gep303.i.epil = getelementptr i8, ptr %invariant.gep302.i, i64 %indvars.iv255.i.epil
  store i8 %i.ln, ptr %gep303.i.epil, align 1, !tbaa !14
  %indvars.iv.next256.i.epil = add nuw nsw i64 %indvars.iv255.i.epil, 1
  %epil.iter350.next = add i64 %epil.iter350, 1   ; 2 uses
  %epil.iter350.cmp.not = icmp eq i64 %epil.iter350.next, %xtraiter349
  br i1 %epil.iter350.cmp.not, label %.loopexit184.i, label %.lr.ph202.i.epil, !llvm.loop !214

.loopexit184.i:                                   ; preds = %.loopexit184.i.loopexit.unr-lcssa, %.lr.ph202.i.epil, %.preheader183.i
  %i.lo = add nuw nsw i32 %.2159209.i, 1          ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.0210.i, i64 %i.cy
  %i.lq = getelementptr inbounds nuw i8, ptr %.0162207.i, i64 %i.bz
  %exitcond260.not.i = icmp eq i32 %i.lo, %i.cu
  br i1 %exitcond260.not.i, label %._crit_edge.i, label %.lr.ph212.split.i, !llvm.loop !210

._crit_edge.i:                                    ; preds = %.loopexit184.i, %.loopexit181.us.i, %._crit_edge195.i
  %31 = shl i32 %29, %30                          ; 2 uses
  %i.lr = icmp sgt i32 %.0, 0
  br i1 %i.lr, label %.lr.ph215.i, label %.preheader.i

.lr.ph215.i:                                      ; preds = %._crit_edge.i
  %i.ls = sext i32 %31 to i64
  %wide.trip.count275.i = zext nneg i32 %.0 to i64
  br label %bb.ay

.preheader.i:                                     ; preds = %bb.az, %._crit_edge.i
  %i.lt = icmp sgt i32 %i.fa, 0
  br i1 %i.lt, label %.lr.ph217.i, label %._crit_edge218.i

.lr.ph217.i:                                      ; preds = %.preheader.i
  %i.lu = sext i32 %31 to i64
  %i.lv = sext i32 %i.cu to i64
  %wide.trip.count280.i = zext nneg i32 %i.fa to i64
  br label %bb.bb

bb.ay:                                            ; preds = %bb.az, %.lr.ph215.i
  %indvars.iv272.i = phi i64 [ 0, %.lr.ph215.i ], [ %indvars.iv.next273.i, %bb.az ] ; 3 uses
  %i.lw = trunc i64 %indvars.iv272.i to i32
  %i.lx = sub i32 %i.lw, %.0
  %i.ly = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.lx, i32 noundef %i.cu, i32 noundef range(i32 1, -16) %i.bv)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay
  %i.lz = mul i64 %indvars.iv272.i, %i.cy
  %i.ma = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.lz
  %i.mb = add nsw i32 %i.ly, %.0
  %i.mc = sext i32 %i.mb to i64
  %i.md = mul i64 %i.cy, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.md
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ma, ptr align 1 %i.me, i64 %i.ls, i1 false)
  %indvars.iv.next273.i = add nuw nsw i64 %indvars.iv272.i, 1 ; 2 uses
  %exitcond276.not.i = icmp eq i64 %indvars.iv.next273.i, %wide.trip.count275.i
  br i1 %exitcond276.not.i, label %.preheader.i, label %bb.ay, !llvm.loop !215

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph194.split.us.i, %bb.bb, %bb.ay, %.lr.ph194.split.i, %.lr.ph191.split.i, %.lr.ph191.split.us.i
  %lpad.loopexit.split-lp345 = landingpad { ptr, i32 }
          cleanup
  %i.mf = load ptr, ptr %13, align 8, !tbaa !233  ; 3 uses
  %.not.i.i172.i = icmp eq ptr %i.mf, %i.er
  %i.mg = icmp eq ptr %i.mf, null
  %or.cond.i.i = or i1 %.not.i.i172.i, %i.mg
  br i1 %or.cond.i.i, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit.i, label %bb.ba

bb.ba:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdaPv(ptr noundef nonnull %i.mf) #21
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit.i

_ZN2cv10AutoBufferIiLm264EED2Ev.exit.i:           ; preds = %bb.ba, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %.body

bb.bb:                                            ; preds = %bb.bc, %.lr.ph217.i
  %indvars.iv277.i = phi i64 [ 0, %.lr.ph217.i ], [ %indvars.iv.next278.i, %bb.bc ] ; 2 uses
  %i.mh = add nsw i64 %indvars.iv277.i, %i.lv     ; 2 uses
  %i.mi = trunc nsw i64 %i.mh to i32
  %i.mj = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.mi, i32 noundef %i.cu, i32 noundef range(i32 1, -16) %i.bv)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  %i.mk = mul i64 %i.mh, %i.cy
  %i.ml = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.mk
  %i.mm = sext i32 %i.mj to i64
  %i.mn = mul i64 %i.cy, %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.mn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ml, ptr align 1 %i.mo, i64 %i.lu, i1 false)
  %indvars.iv.next278.i = add nuw nsw i64 %indvars.iv277.i, 1 ; 2 uses
  %exitcond281.not.i = icmp eq i64 %indvars.iv.next278.i, %wide.trip.count280.i
  br i1 %exitcond281.not.i, label %._crit_edge218.i, label %bb.bb, !llvm.loop !216

._crit_edge218.i:                                 ; preds = %bb.bc, %.preheader.i
  %i.mp = load ptr, ptr %13, align 8, !tbaa !233  ; 3 uses
  %.not.i.i173.i = icmp eq ptr %i.mp, %i.er
  %i.mq = icmp eq ptr %i.mp, null
  %or.cond.i174.i = or i1 %.not.i.i173.i, %i.mq
  br i1 %or.cond.i174.i, label %_ZN12_GLOBAL__N_117copyMakeBorder_8uEPKhmN2cv5Size_IiEEPhmS4_iiii.exit, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge218.i
  call void @_ZdaPv(ptr noundef nonnull %i.mp) #21
  br label %_ZN12_GLOBAL__N_117copyMakeBorder_8uEPKhmN2cv5Size_IiEEPhmS4_iiii.exit

_ZN12_GLOBAL__N_117copyMakeBorder_8uEPKhmN2cv5Size_IiEEPhmS4_iiii.exit: ; preds = %._crit_edge218.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.cl

_ZN2cv10AutoBufferIdLm136EEC2Em.exit:             ; preds = %bb.ad
  %i.mr = load i32, ptr %21, align 8, !tbaa !33   ; 2 uses
  %i.ms = lshr i32 %i.mr, 5
  %i.mt = and i32 %i.ms, 127                      ; 2 uses
  %i.mu = add nuw nsw i32 %i.mt, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  store ptr %i.mw, ptr %26, align 8, !tbaa !237
  %i.mx = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.mv, ptr %i.mx, align 8, !tbaa !238
  %i.my = icmp samesign ugt i32 %i.mt, 3
  br i1 %i.my, label %bb.be, label %bb.bn

bb.be:                                            ; preds = %_ZN2cv10AutoBufferIdLm136EEC2Em.exit
  %i.mz = load double, ptr %7, align 8, !tbaa !16 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.nb = load double, ptr %i.na, align 8, !tbaa !16
  %i.nc = fcmp oeq double %i.mz, %i.nb
  br i1 %i.nc, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.nd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !16
  %i.nf = fcmp oeq double %i.mz, %i.ne
  br i1 %i.nf, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.ng = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !16
  %i.ni = fcmp oeq double %i.mz, %i.nh
  br i1 %i.ni, label %bb.bn, label %bb.bi

bb.bh:                                            ; preds = %bb.cd, %bb.bw, %bb.bp, %bb.bn
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %.body113

bb.bi:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @__func__._ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE, ptr noundef nonnull @.str.1, i32 noundef 1278) #20
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  unreachable

bb.bl:                                            ; preds = %bb.bi
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

bb.bm:                                            ; preds = %bb.bj
  %i.nl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nm = load ptr, ptr %27, align 8, !tbaa !13   ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.no = icmp eq ptr %i.nm, %i.nn
  br i1 %i.no, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.bm
  %i.np = load i64, ptr %i.nn, align 8, !tbaa !14
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nm, i64 noundef %i.nq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %bb.bl
  %.pn61 = phi { ptr, i32 } [ %i.nk, %bb.bl ], [ %i.nl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %i.nl, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %.body113

bb.bn:                                            ; preds = %bb.bg, %_ZN2cv10AutoBufferIdLm136EEC2Em.exit
  %.044 = phi i32 [ %i.mu, %_ZN2cv10AutoBufferIdLm136EEC2Em.exit ], [ 1, %bb.bg ]
  %i.nr = shl nuw nsw i32 %.044, 5
  %i.ns = or i32 %i.mr, -32
  %i.nt = add nsw i32 %i.ns, %i.nr
  invoke void @_ZN2cv15scalarToRawDataERKNS_7Scalar_IdEEPvii(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %i.mw, i32 noundef %i.nt, i32 noundef %i.mu)
          to label %bb.bo unwind label %bb.bh

bb.bo:                                            ; preds = %bb.bn
  %i.nu = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !34
  %i.nw = getelementptr inbounds nuw i8, ptr %21, i64 128
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !23
  %i.ny = getelementptr inbounds nuw i8, ptr %21, i64 72
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !54 ; 6 uses
  %i.oa = icmp slt i32 %i.nz, 3
  br i1 %i.oa, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %.noexc112 unwind label %bb.bh

.noexc112:                                        ; preds = %bb.bp
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.42, i32 noundef 109) #20
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %.noexc112
  unreachable

bb.br:                                            ; preds = %.noexc112
  %i.ob = landingpad { ptr, i32 }
          cleanup
  %i.oc = load ptr, ptr %11, align 8, !tbaa !13   ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.oe = icmp eq ptr %i.oc, %i.od
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105: ; preds = %bb.br
  %i.of = load i64, ptr %i.od, align 8, !tbaa !14
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.og) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i106: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %.body113

bb.bs:                                            ; preds = %bb.bo
end_hunk_0
