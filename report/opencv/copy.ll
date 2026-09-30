Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/copy?download=true
inline.NumInlined: 329
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE:bb.a
bb.y:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit85
  %i.bj = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !34
  %.not66 = icmp eq ptr %i.bk, %i.bm
  br i1 %.not66, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %21, i64 128
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !23
  %i.bp = getelementptr inbounds nuw i8, ptr %24, i64 128
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !23
  %.not67 = icmp eq i64 %i.bo, %i.bq
  br i1 %.not67, label %bb.cn, label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %i.br = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i64 0, ptr %i.bs, align 8
  store i32 33619968, ptr %25, align 8, !tbaa !60
  store ptr %24, ptr %i.br, align 8, !tbaa !41
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %bb.cn

bb.ac:                                            ; preds = %bb.x, %bb.w, %bb.v
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.ad:                                            ; preds = %bb.av, %bb.ao, %bb.ah
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %bb.aa
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %.body

bb.af:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit85
  %i.bw = and i32 %6, -17                         ; 7 uses
  %.not = icmp eq i32 %i.bw, 0
  br i1 %.not, label %_ZN2cv10AutoBufferIdLm136EEC2Em.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bx = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !34 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %21, i64 128
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !23 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %21, i64 72
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !54 ; 6 uses
  %i.cd = icmp slt i32 %i.cc, 3
  br i1 %i.cd, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %.noexc86 unwind label %bb.ad

.noexc86:                                         ; preds = %bb.ah
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.42, i32 noundef 109) #20
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.noexc86
  unreachable

bb.aj:                                            ; preds = %.noexc86
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %16, align 8, !tbaa !13   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aj
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !14
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %.body

bb.ak:                                            ; preds = %bb.ag
  %i.ck = icmp sgt i32 %i.cc, 0
  br i1 %i.ck, label %bb.al, label %.thread.i

.thread.i:                                        ; preds = %bb.ak
  %i.cl = icmp eq i32 %i.cc, 0
  %i.cm = zext i1 %i.cl to i32
  br label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cn = getelementptr inbounds nuw i8, ptr %21, i64 84
  %i.co = icmp eq i32 %i.cc, 2
  %.sroa.gep165 = getelementptr inbounds nuw i8, ptr %21, i64 88
  %.sroa.gep165.val = load i32, ptr %.sroa.gep165, align 8
  %.val = load i32, ptr %i.cn, align 4            ; 2 uses
  %i.cp = select i1 %i.co, i32 %.sroa.gep165.val, i32 %.val ; 2 uses
  %.not.i = icmp eq i32 %i.cc, 1
  br i1 %.not.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %.thread.i
  %i.cq = phi i32 [ %i.cm, %.thread.i ], [ %i.cp, %bb.al ]
  %i.cr = icmp sgt i32 %i.cc, -1
  %i.cs = zext i1 %i.cr to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.ct = phi i32 [ %i.cq, %bb.am ], [ %i.cp, %bb.al ] ; 8 uses
  %i.cu = phi i32 [ %i.cs, %bb.am ], [ %.val, %bb.al ] ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !34 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %24, i64 128
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !23 ; 8 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %24, i64 72
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !54 ; 6 uses
  %i.db = icmp slt i32 %i.da, 3
  br i1 %i.db, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc96 unwind label %bb.ad

.noexc96:                                         ; preds = %bb.ao
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.42, i32 noundef 109) #20
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %.noexc96
  unreachable

bb.aq:                                            ; preds = %.noexc96
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = load ptr, ptr %14, align 8, !tbaa !13   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87: ; preds = %bb.aq
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !14
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %.body

bb.ar:                                            ; preds = %bb.an
  %i.di = icmp sgt i32 %i.da, 0
  br i1 %i.di, label %bb.as, label %.thread.i90

.thread.i90:                                      ; preds = %bb.ar
  %i.dj = icmp eq i32 %i.da, 0
  %i.dk = zext i1 %i.dj to i32
  br label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dl = getelementptr inbounds nuw i8, ptr %24, i64 84
  %i.dm = icmp eq i32 %i.da, 2
  %.sroa.gep154 = getelementptr inbounds nuw i8, ptr %24, i64 88
  %.sroa.gep154.val = load i32, ptr %.sroa.gep154, align 8
  %.val214 = load i32, ptr %i.dl, align 4         ; 2 uses
  %i.dn = select i1 %i.dm, i32 %.sroa.gep154.val, i32 %.val214 ; 2 uses
  %.not.i95 = icmp eq i32 %i.da, 1
  br i1 %.not.i95, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %.thread.i90
  %i.do = phi i32 [ %i.dk, %.thread.i90 ], [ %i.dn, %bb.as ]
  %i.dp = icmp sgt i32 %i.da, -1
  %i.dq = zext i1 %i.dp to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.dr = phi i32 [ %i.do, %bb.at ], [ %i.dn, %bb.as ] ; 2 uses
  %i.ds = phi i32 [ %i.dq, %bb.at ], [ %.val214, %bb.as ]
  %i.dt = load i32, ptr %21, align 8, !tbaa !33   ; 2 uses
  %i.du = lshr i32 %i.dt, 5
  %i.dv = and i32 %i.du, 127
  %i.dw = add nuw nsw i32 %i.dv, 1
  %i.dx = shl i32 %i.dt, 2
  %i.dy = and i32 %i.dx, 124
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = lshr i64 1275511473185297, %i.dz
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = and i32 %i.eb, 15
  %i.ed = mul nuw nsw i32 %i.ec, %i.dw            ; 3 uses
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = ptrtoint ptr %i.by to i64
  %i.eg = ptrtoint ptr %i.cw to i64
  %i.eh = or i64 %i.ef, %i.eg
  %i.ei = or i64 %i.eh, %i.ee
  %i.ej = or i64 %i.ei, %i.ca
  %i.ek = or i64 %i.ej, %i.cy
  %i.el = and i64 %i.ek, 3
  %i.em = icmp eq i64 %i.el, 0                    ; 3 uses
  %.zext = lshr i32 %i.ed, 2
  %.0161.i = select i1 %i.em, i32 %.zext, i32 %i.ed ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.en = sub nsw i32 %i.dr, %i.ct                ; 2 uses
  %i.eo = mul nsw i32 %.0161.i, %i.en             ; 3 uses
  %i.ep = sext i32 %i.eo to i64                   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.eq, ptr %13, align 8, !tbaa !233
  %i.er = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.not.i.i.i = icmp ugt i32 %i.eo, 264
  store i64 %i.ep, ptr %i.er, align 8, !tbaa !234
  br i1 %.not.i.i.i, label %bb.av, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i

bb.av:                                            ; preds = %bb.au
  %i.es = icmp slt i32 %i.eo, 0
  %i.et = shl nuw nsw i64 %i.ep, 2
  %i.eu = select i1 %i.es, i64 -1, i64 %i.et
  %i.ev = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.eu) #23
          to label %.noexc101 unwind label %bb.ad ; 2 uses

.noexc101:                                        ; preds = %bb.av
  store ptr %i.ev, ptr %13, align 8, !tbaa !233
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i:           ; preds = %.noexc101, %bb.au
  %i.ew = phi ptr [ %i.eq, %bb.au ], [ %i.ev, %.noexc101 ] ; 13 uses
  %i.ex = sub i32 %i.en, %.0213                   ; 4 uses
  %i.ey = add i32 %i.cu, %.0
  %i.ez = sub i32 %i.ds, %i.ey                    ; 2 uses
  %i.fa = icmp sgt i32 %.0213, 0
  br i1 %i.fa, label %.lr.ph191.i, label %.preheader183.i

.lr.ph191.i:                                      ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i
  %.not215 = icmp eq i32 %.0161.i, 0
  br i1 %.not215, label %.lr.ph191.split.i, label %.lr.ph191.split.us.preheader.i

.lr.ph191.split.us.preheader.i:                   ; preds = %.lr.ph191.i
  %i.fb = zext nneg i32 %.0161.i to i64           ; 4 uses
  %wide.trip.count229.i = zext nneg i32 %.0213 to i64
  %min.iters.check = icmp samesign ult i32 %.0161.i, 8
  %n.vec = and i64 %i.fb, 1073741816              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.fb
  br label %.lr.ph191.split.us.i

.lr.ph191.split.us.i:                             ; preds = %._crit_edge.us.i, %.lr.ph191.split.us.preheader.i
  %indvars.iv226.i = phi i64 [ 0, %.lr.ph191.split.us.preheader.i ], [ %indvars.iv.next227.i, %._crit_edge.us.i ] ; 3 uses
  %i.fc = trunc i64 %indvars.iv226.i to i32
  %i.fd = sub i32 %i.fc, %.0213
  %i.fe = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.fd, i32 noundef %i.ct, i32 noundef range(i32 1, -16) %i.bw)
          to label %.lr.ph.us.i unwind label %.loopexit.split-lp185.split.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph191.split.us.i
  %i.ff = mul nsw i32 %i.fe, %.0161.i             ; 2 uses
  %i.fg = mul nuw nsw i64 %indvars.iv226.i, %i.fb
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fg ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ff, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.fi = add <4 x i32> %broadcast.splat, %vec.ind
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store <4 x i32> %i.fi, ptr %i.fh, align 4, !tbaa !22
  store <4 x i32> %.reass, ptr %i.fj, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.fl = trunc i64 %indvars.iv.i to i32
  %i.fm = add i32 %i.ff, %i.fl
  store i32 %i.fm, ptr %gep.i, align 4, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond225.not.i = icmp eq i64 %indvars.iv.next.i, %i.fb
  br i1 %exitcond225.not.i, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !201

._crit_edge.us.i:                                 ; preds = %scalar.ph, %middle.block
  %indvars.iv.next227.i = add nuw nsw i64 %indvars.iv226.i, 1 ; 2 uses
  %exitcond230.not.i = icmp eq i64 %indvars.iv.next227.i, %wide.trip.count229.i
  br i1 %exitcond230.not.i, label %.preheader183.i, label %.lr.ph191.split.us.i, !llvm.loop !202

.loopexit.split-lp185.split.us.i:                 ; preds = %.lr.ph191.split.us.i
  %lpad.loopexit.split-lp187.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit184.i

.preheader183.i:                                  ; preds = %._crit_edge.us.i, %bb.aw, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i
  %i.fn = icmp sgt i32 %i.ex, 0
  br i1 %i.fn, label %.lr.ph194.i, label %._crit_edge195.i

.lr.ph194.i:                                      ; preds = %.preheader183.i
  %.not216 = icmp eq i32 %.0161.i, 0
  br i1 %.not216, label %.lr.ph194.split.i, label %.lr.ph194.split.us.preheader.i

.lr.ph194.split.us.preheader.i:                   ; preds = %.lr.ph194.i
  %i.fo = zext nneg i32 %i.ex to i64
  %i.fp = sext i32 %.0213 to i64
  %i.fq = zext nneg i32 %.0161.i to i64           ; 4 uses
  %min.iters.check275 = icmp samesign ult i32 %.0161.i, 8
  %n.vec277 = and i64 %i.fq, 1073741816           ; 3 uses
  %cmp.n287 = icmp eq i64 %n.vec277, %i.fq
  br label %.lr.ph194.split.us.i

.lr.ph194.split.us.i:                             ; preds = %._crit_edge.us197.i, %.lr.ph194.split.us.preheader.i
  %indvars.iv236.i = phi i64 [ 0, %.lr.ph194.split.us.preheader.i ], [ %indvars.iv.next237.i, %._crit_edge.us197.i ] ; 3 uses
  %i.fr = trunc i64 %indvars.iv236.i to i32
  %i.fs = add i32 %i.ct, %i.fr
  %i.ft = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.fs, i32 noundef %i.ct, i32 noundef range(i32 1, -16) %i.bw)
          to label %.lr.ph.us196.i unwind label %.loopexit184.split.us.i

.lr.ph.us196.i:                                   ; preds = %.lr.ph194.split.us.i
  %i.fu = mul nsw i32 %i.ft, %.0161.i             ; 2 uses
  %i.fv = add nsw i64 %indvars.iv236.i, %i.fp
  %i.fw = mul nsw i64 %i.fv, %i.fq
  %invariant.gep287.i = getelementptr [4 x i8], ptr %i.ew, i64 %i.fw ; 2 uses
  br i1 %min.iters.check275, label %scalar.ph274.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %.lr.ph.us196.i
  %broadcast.splatinsert278 = insertelement <4 x i32> poison, i32 %i.fu, i64 0
  %broadcast.splat279 = shufflevector <4 x i32> %broadcast.splatinsert278, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op342 = add <4 x i32> splat (i32 4), %broadcast.splat279
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph276
  %index281 = phi i64 [ 0, %vector.ph276 ], [ %index.next284, %vector.body280 ] ; 2 uses
  %vec.ind282 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph276 ], [ %vec.ind.next285, %vector.body280 ] ; 3 uses
  %i.fx = getelementptr [4 x i8], ptr %invariant.gep287.i, i64 %index281 ; 2 uses
  %i.fy = add <4 x i32> %broadcast.splat279, %vec.ind282
  %.reass343 = add <4 x i32> %vec.ind282, %invariant.op342
  %i.fz = getelementptr i8, ptr %i.fx, i64 16
  store <4 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !22
  store <4 x i32> %.reass343, ptr %i.fz, align 4, !tbaa !22
  %index.next284 = add nuw i64 %index281, 8       ; 2 uses
  %vec.ind.next285 = add <4 x i32> %vec.ind282, splat (i32 8)
  %i.ga = icmp eq i64 %index.next284, %n.vec277
  br i1 %i.ga, label %middle.block286, label %vector.body280, !llvm.loop !203

middle.block286:                                  ; preds = %vector.body280
  br i1 %cmp.n287, label %._crit_edge.us197.i, label %scalar.ph274.preheader

scalar.ph274.preheader:                           ; preds = %.lr.ph.us196.i, %middle.block286
  %indvars.iv231.i.ph = phi i64 [ 0, %.lr.ph.us196.i ], [ %n.vec277, %middle.block286 ]
  br label %scalar.ph274

scalar.ph274:                                     ; preds = %scalar.ph274.preheader, %scalar.ph274
  %indvars.iv231.i = phi i64 [ %indvars.iv.next232.i, %scalar.ph274 ], [ %indvars.iv231.i.ph, %scalar.ph274.preheader ] ; 3 uses
  %gep288.i = getelementptr [4 x i8], ptr %invariant.gep287.i, i64 %indvars.iv231.i
  %i.gb = trunc i64 %indvars.iv231.i to i32
  %i.gc = add i32 %i.fu, %i.gb
  store i32 %i.gc, ptr %gep288.i, align 4, !tbaa !22
  %indvars.iv.next232.i = add nuw nsw i64 %indvars.iv231.i, 1 ; 2 uses
  %exitcond235.not.i = icmp eq i64 %indvars.iv.next232.i, %i.fq
  br i1 %exitcond235.not.i, label %._crit_edge.us197.i, label %scalar.ph274, !llvm.loop !204

._crit_edge.us197.i:                              ; preds = %scalar.ph274, %middle.block286
  %indvars.iv.next237.i = add nuw nsw i64 %indvars.iv236.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next237.i, %i.fo
  br i1 %exitcond.not, label %._crit_edge195.i, label %.lr.ph194.split.us.i, !llvm.loop !205

.loopexit184.split.us.i:                          ; preds = %.lr.ph194.split.us.i
  %lpad.loopexit186.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit184.i

.lr.ph191.split.i:                                ; preds = %.lr.ph191.i, %bb.aw
  %.0157190.i = phi i32 [ %i.gf, %bb.aw ], [ 0, %.lr.ph191.i ] ; 2 uses
  %i.gd = sub nsw i32 %.0157190.i, %.0213
  %i.ge = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.gd, i32 noundef %i.ct, i32 noundef range(i32 1, -16) %i.bw)
          to label %bb.aw unwind label %.loopexit.split-lp185.split.i ; 0 uses

bb.aw:                                            ; preds = %.lr.ph191.split.i
  %i.gf = add nuw nsw i32 %.0157190.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gf, %.0213
  br i1 %exitcond.not.i, label %.preheader183.i, label %.lr.ph191.split.i, !llvm.loop !202

.loopexit184.split.i:                             ; preds = %.lr.ph194.split.i
  %lpad.loopexit186.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit184.i

.loopexit.split-lp185.split.i:                    ; preds = %.lr.ph191.split.i
  %lpad.loopexit.split-lp187.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit184.i

.lr.ph194.split.i:                                ; preds = %.lr.ph194.i, %bb.ax
  %.1158193.i = phi i32 [ %i.gi, %bb.ax ], [ 0, %.lr.ph194.i ] ; 2 uses
  %i.gg = add nsw i32 %.1158193.i, %i.ct
  %i.gh = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.gg, i32 noundef %i.ct, i32 noundef range(i32 1, -16) %i.bw)
          to label %bb.ax unwind label %.loopexit184.split.i ; 0 uses

bb.ax:                                            ; preds = %.lr.ph194.split.i
  %i.gi = add nuw nsw i32 %.1158193.i, 1          ; 2 uses
  %i.gj = icmp slt i32 %i.gi, %i.ex
  br i1 %i.gj, label %.lr.ph194.split.i, label %._crit_edge195.i, !llvm.loop !205

._crit_edge195.i:                                 ; preds = %._crit_edge.us197.i, %bb.ax, %.preheader183.i
  %29 = mul nsw i32 %.0161.i, %i.dr
  %i.gk = sext i32 %.0 to i64
  %i.gl = mul i64 %i.cy, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.gl ; 3 uses
  %i.gn = icmp sgt i32 %i.cu, 0
  %30 = select i1 %i.em, i32 2, i32 0             ; 3 uses
  br i1 %i.gn, label %.lr.ph212.i, label %._crit_edge.i

.lr.ph212.i:                                      ; preds = %._crit_edge195.i
  %i.go = mul i32 %.0161.i, %i.ex                 ; 4 uses
  %i.gp = mul i32 %.0161.i, %.0213                ; 6 uses
  %i.gq = mul nsw i32 %.0161.i, %i.ct             ; 2 uses
  %i.gr = shl i32 %i.gp, %30
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds i8, ptr %i.gm, i64 %i.gs ; 2 uses
  %i.gu = shl i32 %i.gq, %30
  %i.gv = sext i32 %i.gu to i64                   ; 2 uses
  %i.gw = icmp sgt i32 %i.gp, 0                   ; 2 uses
  %i.gx = icmp sgt i32 %i.go, 0                   ; 2 uses
  %i.gy = sext i32 %i.gp to i64                   ; 11 uses
  %i.gz = sext i32 %i.gq to i64                   ; 2 uses
  %wide.trip.count253.i = zext i32 %i.gp to i64   ; 4 uses
  %wide.trip.count258.i = zext i32 %i.go to i64   ; 4 uses
  %invariant.gep293.i = getelementptr [4 x i8], ptr %i.ew, i64 %i.gy ; 10 uses
  br i1 %i.em, label %.lr.ph212.split.us.i.preheader, label %.lr.ph212.split.i.preheader

.lr.ph212.split.i.preheader:                      ; preds = %.lr.ph212.i
  %xtraiter = and i64 %wide.trip.count253.i, 3    ; 3 uses
  %i.ha = icmp ult i32 %i.gp, 4
  %unroll_iter = and i64 %wide.trip.count253.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod309 = icmp ne i64 %xtraiter, 0
  %xtraiter310 = and i64 %wide.trip.count258.i, 3 ; 3 uses
  %i.hb = icmp ult i32 %i.go, 4
  %unroll_iter314 = and i64 %wide.trip.count258.i, 2147483644
  %lcmp.mod312.not = icmp eq i64 %xtraiter310, 0
  %lcmp.mod313 = icmp ne i64 %xtraiter310, 0
  br label %.lr.ph212.split.i

.lr.ph212.split.us.i.preheader:                   ; preds = %.lr.ph212.i
  %xtraiter316 = and i64 %wide.trip.count253.i, 3 ; 3 uses
  %i.hc = icmp ult i32 %i.gp, 4
  %unroll_iter320 = and i64 %wide.trip.count253.i, 2147483644
  %lcmp.mod318.not = icmp eq i64 %xtraiter316, 0
  %lcmp.mod319 = icmp ne i64 %xtraiter316, 0
  %xtraiter322 = and i64 %wide.trip.count258.i, 3 ; 3 uses
  %i.hd = icmp ult i32 %i.go, 4
  %unroll_iter326 = and i64 %wide.trip.count258.i, 2147483644
  %lcmp.mod324.not = icmp eq i64 %xtraiter322, 0
  %lcmp.mod325 = icmp ne i64 %xtraiter322, 0
  br label %.lr.ph212.split.us.i

.lr.ph212.split.us.i:                             ; preds = %.lr.ph212.split.us.i.preheader, %.loopexit178.us.i
  %.0210.us.i = phi ptr [ %i.ji, %.loopexit178.us.i ], [ %i.gt, %.lr.ph212.split.us.i.preheader ] ; 9 uses
  %.2159209.us.i = phi i32 [ %i.jh, %.loopexit178.us.i ], [ 0, %.lr.ph212.split.us.i.preheader ]
  %.0162207.us.i = phi ptr [ %i.jj, %.loopexit178.us.i ], [ %i.by, %.lr.ph212.split.us.i.preheader ] ; 13 uses
  %.not.us.i = icmp eq ptr %.0210.us.i, %.0162207.us.i
  br i1 %.not.us.i, label %.preheader179.us.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph212.split.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0210.us.i, ptr align 1 %.0162207.us.i, i64 %i.gv, i1 false)
  br label %.preheader179.us.i

.preheader179.us.i:                               ; preds = %bb.ay, %.lr.ph212.split.us.i
  br i1 %i.gw, label %.lr.ph204.us.i.preheader, label %.preheader177.us.i

.lr.ph204.us.i.preheader:                         ; preds = %.preheader179.us.i
  br i1 %i.hc, label %.lr.ph204.us.i.epil.preheader, label %.lr.ph204.us.i

.lr.ph204.us.i:                                   ; preds = %.lr.ph204.us.i.preheader, %.lr.ph204.us.i
  %indvars.iv250.i = phi i64 [ %indvars.iv.next251.i.3, %.lr.ph204.us.i ], [ 0, %.lr.ph204.us.i.preheader ] ; 6 uses
  %niter321 = phi i64 [ %niter321.next.3, %.lr.ph204.us.i ], [ 0, %.lr.ph204.us.i.preheader ]
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv250.i
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !22
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !22
  %i.hj = sub nsw i64 %indvars.iv250.i, %i.gy
  %i.hk = getelementptr inbounds [4 x i8], ptr %.0210.us.i, i64 %i.hj
  store i32 %i.hi, ptr %i.hk, align 4, !tbaa !22
  %indvars.iv.next251.i = or disjoint i64 %indvars.iv250.i, 1 ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next251.i
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !22
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !22
  %i.hq = sub nsw i64 %indvars.iv.next251.i, %i.gy
  %i.hr = getelementptr inbounds [4 x i8], ptr %.0210.us.i, i64 %i.hq
  store i32 %i.hp, ptr %i.hr, align 4, !tbaa !22
  %indvars.iv.next251.i.1 = or disjoint i64 %indvars.iv250.i, 2 ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next251.i.1
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !22
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !22
  %i.hx = sub nsw i64 %indvars.iv.next251.i.1, %i.gy
  %i.hy = getelementptr inbounds [4 x i8], ptr %.0210.us.i, i64 %i.hx
  store i32 %i.hw, ptr %i.hy, align 4, !tbaa !22
  %indvars.iv.next251.i.2 = or disjoint i64 %indvars.iv250.i, 3 ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next251.i.2
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !22
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !22
  %i.ie = sub nsw i64 %indvars.iv.next251.i.2, %i.gy
  %i.if = getelementptr inbounds [4 x i8], ptr %.0210.us.i, i64 %i.ie
  store i32 %i.id, ptr %i.if, align 4, !tbaa !22
  %indvars.iv.next251.i.3 = add nuw nsw i64 %indvars.iv250.i, 4 ; 2 uses
  %niter321.next.3 = add i64 %niter321, 4         ; 2 uses
  %niter321.ncmp.3 = icmp eq i64 %niter321.next.3, %unroll_iter320
  br i1 %niter321.ncmp.3, label %.preheader177.us.i.loopexit.unr-lcssa, label %.lr.ph204.us.i, !llvm.loop !206

.preheader177.us.i.loopexit.unr-lcssa:            ; preds = %.lr.ph204.us.i
  br i1 %lcmp.mod318.not, label %.preheader177.us.i, label %.lr.ph204.us.i.epil.preheader

.lr.ph204.us.i.epil.preheader:                    ; preds = %.preheader177.us.i.loopexit.unr-lcssa, %.lr.ph204.us.i.preheader
  %indvars.iv250.i.epil.init = phi i64 [ 0, %.lr.ph204.us.i.preheader ], [ %indvars.iv.next251.i.3, %.preheader177.us.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod319)
  br label %.lr.ph204.us.i.epil

.lr.ph204.us.i.epil:                              ; preds = %.lr.ph204.us.i.epil, %.lr.ph204.us.i.epil.preheader
  %indvars.iv250.i.epil = phi i64 [ %indvars.iv.next251.i.epil, %.lr.ph204.us.i.epil ], [ %indvars.iv250.i.epil.init, %.lr.ph204.us.i.epil.preheader ] ; 3 uses
  %epil.iter317 = phi i64 [ %epil.iter317.next, %.lr.ph204.us.i.epil ], [ 0, %.lr.ph204.us.i.epil.preheader ]
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv250.i.epil
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !22
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !22
  %i.il = sub nsw i64 %indvars.iv250.i.epil, %i.gy
  %i.im = getelementptr inbounds [4 x i8], ptr %.0210.us.i, i64 %i.il
  store i32 %i.ik, ptr %i.im, align 4, !tbaa !22
  %indvars.iv.next251.i.epil = add nuw nsw i64 %indvars.iv250.i.epil, 1
  %epil.iter317.next = add i64 %epil.iter317, 1   ; 2 uses
  %epil.iter317.cmp.not = icmp eq i64 %epil.iter317.next, %xtraiter316
  br i1 %epil.iter317.cmp.not, label %.preheader177.us.i, label %.lr.ph204.us.i.epil, !llvm.loop !207

.preheader177.us.i:                               ; preds = %.preheader177.us.i.loopexit.unr-lcssa, %.lr.ph204.us.i.epil, %.preheader179.us.i
  br i1 %i.gx, label %.lr.ph206.us.preheader.i, label %.loopexit178.us.i

.lr.ph206.us.preheader.i:                         ; preds = %.preheader177.us.i
  %invariant.gep295.i = getelementptr [4 x i8], ptr %.0210.us.i, i64 %i.gz ; 5 uses
  br i1 %i.hd, label %.lr.ph206.us.i.epil.preheader, label %.lr.ph206.us.i

.lr.ph206.us.i:                                   ; preds = %.lr.ph206.us.preheader.i, %.lr.ph206.us.i
  %indvars.iv255.i = phi i64 [ %indvars.iv.next256.i.3, %.lr.ph206.us.i ], [ 0, %.lr.ph206.us.preheader.i ] ; 6 uses
  %niter327 = phi i64 [ %niter327.next.3, %.lr.ph206.us.i ], [ 0, %.lr.ph206.us.preheader.i ]
  %gep294.i = getelementptr [4 x i8], ptr %invariant.gep293.i, i64 %indvars.iv255.i
  %i.in = load i32, ptr %gep294.i, align 4, !tbaa !22
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !22
  %gep296.i = getelementptr [4 x i8], ptr %invariant.gep295.i, i64 %indvars.iv255.i
  store i32 %i.iq, ptr %gep296.i, align 4, !tbaa !22
  %indvars.iv.next256.i = or disjoint i64 %indvars.iv255.i, 1 ; 2 uses
  %gep294.i.1 = getelementptr [4 x i8], ptr %invariant.gep293.i, i64 %indvars.iv.next256.i
  %i.ir = load i32, ptr %gep294.i.1, align 4, !tbaa !22
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !22
  %gep296.i.1 = getelementptr [4 x i8], ptr %invariant.gep295.i, i64 %indvars.iv.next256.i
  store i32 %i.iu, ptr %gep296.i.1, align 4, !tbaa !22
  %indvars.iv.next256.i.1 = or disjoint i64 %indvars.iv255.i, 2 ; 2 uses
  %gep294.i.2 = getelementptr [4 x i8], ptr %invariant.gep293.i, i64 %indvars.iv.next256.i.1
  %i.iv = load i32, ptr %gep294.i.2, align 4, !tbaa !22
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !22
  %gep296.i.2 = getelementptr [4 x i8], ptr %invariant.gep295.i, i64 %indvars.iv.next256.i.1
  store i32 %i.iy, ptr %gep296.i.2, align 4, !tbaa !22
  %indvars.iv.next256.i.2 = or disjoint i64 %indvars.iv255.i, 3 ; 2 uses
  %gep294.i.3 = getelementptr [4 x i8], ptr %invariant.gep293.i, i64 %indvars.iv.next256.i.2
  %i.iz = load i32, ptr %gep294.i.3, align 4, !tbaa !22
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !22
  %gep296.i.3 = getelementptr [4 x i8], ptr %invariant.gep295.i, i64 %indvars.iv.next256.i.2
  store i32 %i.jc, ptr %gep296.i.3, align 4, !tbaa !22
  %indvars.iv.next256.i.3 = add nuw nsw i64 %indvars.iv255.i, 4 ; 2 uses
  %niter327.next.3 = add i64 %niter327, 4         ; 2 uses
  %niter327.ncmp.3 = icmp eq i64 %niter327.next.3, %unroll_iter326
  br i1 %niter327.ncmp.3, label %.loopexit178.us.i.loopexit.unr-lcssa, label %.lr.ph206.us.i, !llvm.loop !208

.loopexit178.us.i.loopexit.unr-lcssa:             ; preds = %.lr.ph206.us.i
  br i1 %lcmp.mod324.not, label %.loopexit178.us.i, label %.lr.ph206.us.i.epil.preheader

.lr.ph206.us.i.epil.preheader:                    ; preds = %.loopexit178.us.i.loopexit.unr-lcssa, %.lr.ph206.us.preheader.i
  %indvars.iv255.i.epil.init = phi i64 [ 0, %.lr.ph206.us.preheader.i ], [ %indvars.iv.next256.i.3, %.loopexit178.us.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod325)
  br label %.lr.ph206.us.i.epil

.lr.ph206.us.i.epil:                              ; preds = %.lr.ph206.us.i.epil, %.lr.ph206.us.i.epil.preheader
  %indvars.iv255.i.epil = phi i64 [ %indvars.iv255.i.epil.init, %.lr.ph206.us.i.epil.preheader ], [ %indvars.iv.next256.i.epil, %.lr.ph206.us.i.epil ] ; 3 uses
  %epil.iter323 = phi i64 [ 0, %.lr.ph206.us.i.epil.preheader ], [ %epil.iter323.next, %.lr.ph206.us.i.epil ]
  %gep294.i.epil = getelementptr [4 x i8], ptr %invariant.gep293.i, i64 %indvars.iv255.i.epil
  %i.jd = load i32, ptr %gep294.i.epil, align 4, !tbaa !22
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %.0162207.us.i, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !22
  %gep296.i.epil = getelementptr [4 x i8], ptr %invariant.gep295.i, i64 %indvars.iv255.i.epil
  store i32 %i.jg, ptr %gep296.i.epil, align 4, !tbaa !22
  %indvars.iv.next256.i.epil = add nuw nsw i64 %indvars.iv255.i.epil, 1
  %epil.iter323.next = add i64 %epil.iter323, 1   ; 2 uses
  %epil.iter323.cmp.not = icmp eq i64 %epil.iter323.next, %xtraiter322
  br i1 %epil.iter323.cmp.not, label %.loopexit178.us.i, label %.lr.ph206.us.i.epil, !llvm.loop !209

.loopexit178.us.i:                                ; preds = %.loopexit178.us.i.loopexit.unr-lcssa, %.lr.ph206.us.i.epil, %.preheader177.us.i
  %i.jh = add nuw nsw i32 %.2159209.us.i, 1       ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.0210.us.i, i64 %i.cy
  %i.jj = getelementptr inbounds nuw i8, ptr %.0162207.us.i, i64 %i.ca
  %exitcond260.not.i = icmp eq i32 %i.jh, %i.cu
  br i1 %exitcond260.not.i, label %._crit_edge.i, label %.lr.ph212.split.us.i, !llvm.loop !210

.lr.ph212.split.i:                                ; preds = %.lr.ph212.split.i.preheader, %.loopexit181.i
  %.0210.i = phi ptr [ %i.lo, %.loopexit181.i ], [ %i.gt, %.lr.ph212.split.i.preheader ] ; 9 uses
  %.2159209.i = phi i32 [ %i.ln, %.loopexit181.i ], [ 0, %.lr.ph212.split.i.preheader ]
  %.0162207.i = phi ptr [ %i.lp, %.loopexit181.i ], [ %i.by, %.lr.ph212.split.i.preheader ] ; 13 uses
  %.not.i100 = icmp eq ptr %.0210.i, %.0162207.i
  br i1 %.not.i100, label %.preheader182.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph212.split.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0210.i, ptr align 1 %.0162207.i, i64 %i.gv, i1 false)
  br label %.preheader182.i

.preheader182.i:                                  ; preds = %bb.az, %.lr.ph212.split.i
  br i1 %i.gw, label %.lr.ph.i.preheader, label %.preheader180.i

.lr.ph.i.preheader:                               ; preds = %.preheader182.i
  br i1 %i.ha, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.preheader180.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %.preheader180.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader180.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv239.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next240.i.3, %.preheader180.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod309)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv239.i.epil = phi i64 [ %indvars.iv.next240.i.epil, %.lr.ph.i.epil ], [ %indvars.iv239.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv239.i.epil
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !22
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !14
  %i.jp = sub nsw i64 %indvars.iv239.i.epil, %i.gy
  %i.jq = getelementptr inbounds i8, ptr %.0210.i, i64 %i.jp
  store i8 %i.jo, ptr %i.jq, align 1, !tbaa !14
  %indvars.iv.next240.i.epil = add nuw nsw i64 %indvars.iv239.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader180.i, label %.lr.ph.i.epil, !llvm.loop !211

.preheader180.i:                                  ; preds = %.preheader180.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.preheader182.i
  br i1 %i.gx, label %.lr.ph202.preheader.i, label %.loopexit181.i

.lr.ph202.preheader.i:                            ; preds = %.preheader180.i
  %invariant.gep291.i = getelementptr i8, ptr %.0210.i, i64 %i.gz ; 5 uses
  br i1 %i.hb, label %.lr.ph202.i.epil.preheader, label %.lr.ph202.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv239.i = phi i64 [ %indvars.iv.next240.i.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv239.i
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !22
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !14
  %i.jw = sub nsw i64 %indvars.iv239.i, %i.gy
  %i.jx = getelementptr inbounds i8, ptr %.0210.i, i64 %i.jw
  store i8 %i.jv, ptr %i.jx, align 1, !tbaa !14
  %indvars.iv.next240.i = or disjoint i64 %indvars.iv239.i, 1 ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next240.i
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !22
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !14
  %i.kd = sub nsw i64 %indvars.iv.next240.i, %i.gy
  %i.ke = getelementptr inbounds i8, ptr %.0210.i, i64 %i.kd
  store i8 %i.kc, ptr %i.ke, align 1, !tbaa !14
  %indvars.iv.next240.i.1 = or disjoint i64 %indvars.iv239.i, 2 ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next240.i.1
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !22
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !14
  %i.kk = sub nsw i64 %indvars.iv.next240.i.1, %i.gy
  %i.kl = getelementptr inbounds i8, ptr %.0210.i, i64 %i.kk
  store i8 %i.kj, ptr %i.kl, align 1, !tbaa !14
  %indvars.iv.next240.i.2 = or disjoint i64 %indvars.iv239.i, 3 ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next240.i.2
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !22
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !14
  %i.kr = sub nsw i64 %indvars.iv.next240.i.2, %i.gy
  %i.ks = getelementptr inbounds i8, ptr %.0210.i, i64 %i.kr
  store i8 %i.kq, ptr %i.ks, align 1, !tbaa !14
  %indvars.iv.next240.i.3 = add nuw nsw i64 %indvars.iv239.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader180.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !212

.lr.ph202.i:                                      ; preds = %.lr.ph202.preheader.i, %.lr.ph202.i
  %indvars.iv244.i = phi i64 [ %indvars.iv.next245.i.3, %.lr.ph202.i ], [ 0, %.lr.ph202.preheader.i ] ; 6 uses
  %niter315 = phi i64 [ %niter315.next.3, %.lr.ph202.i ], [ 0, %.lr.ph202.preheader.i ]
  %gep290.i = getelementptr [4 x i8], ptr %invariant.gep293.i, i64 %indvars.iv244.i
  %i.kt = load i32, ptr %gep290.i, align 4, !tbaa !22
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !14
  %gep292.i = getelementptr i8, ptr %invariant.gep291.i, i64 %indvars.iv244.i
  store i8 %i.kw, ptr %gep292.i, align 1, !tbaa !14
  %indvars.iv.next245.i = or disjoint i64 %indvars.iv244.i, 1 ; 2 uses
  %gep290.i.1 = getelementptr [4 x i8], ptr %invariant.gep293.i, i64 %indvars.iv.next245.i
  %i.kx = load i32, ptr %gep290.i.1, align 4, !tbaa !22
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !14
  %gep292.i.1 = getelementptr i8, ptr %invariant.gep291.i, i64 %indvars.iv.next245.i
  store i8 %i.la, ptr %gep292.i.1, align 1, !tbaa !14
  %indvars.iv.next245.i.1 = or disjoint i64 %indvars.iv244.i, 2 ; 2 uses
  %gep290.i.2 = getelementptr [4 x i8], ptr %invariant.gep293.i, i64 %indvars.iv.next245.i.1
  %i.lb = load i32, ptr %gep290.i.2, align 4, !tbaa !22
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !14
  %gep292.i.2 = getelementptr i8, ptr %invariant.gep291.i, i64 %indvars.iv.next245.i.1
  store i8 %i.le, ptr %gep292.i.2, align 1, !tbaa !14
  %indvars.iv.next245.i.2 = or disjoint i64 %indvars.iv244.i, 3 ; 2 uses
  %gep290.i.3 = getelementptr [4 x i8], ptr %invariant.gep293.i, i64 %indvars.iv.next245.i.2
  %i.lf = load i32, ptr %gep290.i.3, align 4, !tbaa !22
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !14
  %gep292.i.3 = getelementptr i8, ptr %invariant.gep291.i, i64 %indvars.iv.next245.i.2
  store i8 %i.li, ptr %gep292.i.3, align 1, !tbaa !14
  %indvars.iv.next245.i.3 = add nuw nsw i64 %indvars.iv244.i, 4 ; 2 uses
  %niter315.next.3 = add i64 %niter315, 4         ; 2 uses
  %niter315.ncmp.3 = icmp eq i64 %niter315.next.3, %unroll_iter314
  br i1 %niter315.ncmp.3, label %.loopexit181.i.loopexit.unr-lcssa, label %.lr.ph202.i, !llvm.loop !213

.loopexit181.i.loopexit.unr-lcssa:                ; preds = %.lr.ph202.i
  br i1 %lcmp.mod312.not, label %.loopexit181.i, label %.lr.ph202.i.epil.preheader

.lr.ph202.i.epil.preheader:                       ; preds = %.loopexit181.i.loopexit.unr-lcssa, %.lr.ph202.preheader.i
  %indvars.iv244.i.epil.init = phi i64 [ 0, %.lr.ph202.preheader.i ], [ %indvars.iv.next245.i.3, %.loopexit181.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod313)
  br label %.lr.ph202.i.epil

.lr.ph202.i.epil:                                 ; preds = %.lr.ph202.i.epil, %.lr.ph202.i.epil.preheader
  %indvars.iv244.i.epil = phi i64 [ %indvars.iv244.i.epil.init, %.lr.ph202.i.epil.preheader ], [ %indvars.iv.next245.i.epil, %.lr.ph202.i.epil ] ; 3 uses
  %epil.iter311 = phi i64 [ 0, %.lr.ph202.i.epil.preheader ], [ %epil.iter311.next, %.lr.ph202.i.epil ]
  %gep290.i.epil = getelementptr [4 x i8], ptr %invariant.gep293.i, i64 %indvars.iv244.i.epil
  %i.lj = load i32, ptr %gep290.i.epil, align 4, !tbaa !22
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds i8, ptr %.0162207.i, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !14
  %gep292.i.epil = getelementptr i8, ptr %invariant.gep291.i, i64 %indvars.iv244.i.epil
  store i8 %i.lm, ptr %gep292.i.epil, align 1, !tbaa !14
  %indvars.iv.next245.i.epil = add nuw nsw i64 %indvars.iv244.i.epil, 1
  %epil.iter311.next = add i64 %epil.iter311, 1   ; 2 uses
  %epil.iter311.cmp.not = icmp eq i64 %epil.iter311.next, %xtraiter310
  br i1 %epil.iter311.cmp.not, label %.loopexit181.i, label %.lr.ph202.i.epil, !llvm.loop !214

.loopexit181.i:                                   ; preds = %.loopexit181.i.loopexit.unr-lcssa, %.lr.ph202.i.epil, %.preheader180.i
  %i.ln = add nuw nsw i32 %.2159209.i, 1          ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.0210.i, i64 %i.cy
  %i.lp = getelementptr inbounds nuw i8, ptr %.0162207.i, i64 %i.ca
  %exitcond249.not.i = icmp eq i32 %i.ln, %i.cu
  br i1 %exitcond249.not.i, label %._crit_edge.i, label %.lr.ph212.split.i, !llvm.loop !210

._crit_edge.i:                                    ; preds = %.loopexit181.i, %.loopexit178.us.i, %._crit_edge195.i
  %31 = shl i32 %29, %30                          ; 2 uses
  %i.lq = icmp sgt i32 %.0, 0
  br i1 %i.lq, label %.lr.ph215.i, label %.preheader.i

.lr.ph215.i:                                      ; preds = %._crit_edge.i
  %i.lr = sext i32 %31 to i64
  %wide.trip.count264.i = zext nneg i32 %.0 to i64
  br label %bb.ba

.preheader.i:                                     ; preds = %bb.bb, %._crit_edge.i
  %i.ls = icmp sgt i32 %i.ez, 0
  br i1 %i.ls, label %.lr.ph217.i, label %._crit_edge218.i

.lr.ph217.i:                                      ; preds = %.preheader.i
  %i.lt = sext i32 %31 to i64
  %i.lu = sext i32 %i.cu to i64
  %wide.trip.count269.i = zext nneg i32 %i.ez to i64
  br label %bb.bc

bb.ba:                                            ; preds = %bb.bb, %.lr.ph215.i
  %indvars.iv261.i = phi i64 [ 0, %.lr.ph215.i ], [ %indvars.iv.next262.i, %bb.bb ] ; 3 uses
  %i.lv = trunc i64 %indvars.iv261.i to i32
  %i.lw = sub i32 %i.lv, %.0
  %i.lx = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.lw, i32 noundef %i.cu, i32 noundef range(i32 1, -16) %i.bw)
          to label %bb.bb unwind label %.loopexit.split-lp.i

bb.bb:                                            ; preds = %bb.ba
  %i.ly = mul i64 %indvars.iv261.i, %i.cy
  %i.lz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ly
  %i.ma = add nsw i32 %i.lx, %.0
  %i.mb = sext i32 %i.ma to i64
  %i.mc = mul i64 %i.cy, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.mc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lz, ptr align 1 %i.md, i64 %i.lr, i1 false)
  %indvars.iv.next262.i = add nuw nsw i64 %indvars.iv261.i, 1 ; 2 uses
  %exitcond265.not.i = icmp eq i64 %indvars.iv.next262.i, %wide.trip.count264.i
  br i1 %exitcond265.not.i, label %.preheader.i, label %bb.ba, !llvm.loop !215

.loopexit.i:                                      ; preds = %bb.bc
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit184.i

.loopexit.split-lp.i:                             ; preds = %bb.ba
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit184.i

bb.bc:                                            ; preds = %bb.bd, %.lr.ph217.i
  %indvars.iv266.i = phi i64 [ 0, %.lr.ph217.i ], [ %indvars.iv.next267.i, %bb.bd ] ; 2 uses
  %i.me = add nsw i64 %indvars.iv266.i, %i.lu     ; 2 uses
  %i.mf = trunc nsw i64 %i.me to i32
  %i.mg = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.mf, i32 noundef %i.cu, i32 noundef range(i32 1, -16) %i.bw)
          to label %bb.bd unwind label %.loopexit.i

bb.bd:                                            ; preds = %bb.bc
  %i.mh = mul i64 %i.me, %i.cy
  %i.mi = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.mh
  %i.mj = sext i32 %i.mg to i64
  %i.mk = mul i64 %i.cy, %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.mk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mi, ptr align 1 %i.ml, i64 %i.lt, i1 false)
  %indvars.iv.next267.i = add nuw nsw i64 %indvars.iv266.i, 1 ; 2 uses
  %exitcond270.not.i = icmp eq i64 %indvars.iv.next267.i, %wide.trip.count269.i
  br i1 %exitcond270.not.i, label %._crit_edge218.i, label %bb.bc, !llvm.loop !216

._crit_edge218.i:                                 ; preds = %bb.bd, %.preheader.i
  %i.mm = load ptr, ptr %13, align 8, !tbaa !233  ; 3 uses
  %.not.i.i172.i = icmp eq ptr %i.mm, %i.eq
  %i.mn = icmp eq ptr %i.mm, null
  %or.cond.i.i = or i1 %.not.i.i172.i, %i.mn
  br i1 %or.cond.i.i, label %_ZN12_GLOBAL__N_117copyMakeBorder_8uEPKhmN2cv5Size_IiEEPhmS4_iiii.exit, label %bb.be

bb.be:                                            ; preds = %._crit_edge218.i
  call void @_ZdaPv(ptr noundef nonnull %i.mm) #21
  br label %_ZN12_GLOBAL__N_117copyMakeBorder_8uEPKhmN2cv5Size_IiEEPhmS4_iiii.exit

.loopexit184.i:                                   ; preds = %.loopexit.split-lp.i, %.loopexit.i, %.loopexit.split-lp185.split.i, %.loopexit184.split.i, %.loopexit184.split.us.i, %.loopexit.split-lp185.split.us.i
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp187.us.i, %.loopexit.split-lp185.split.us.i ], [ %lpad.loopexit186.us.i, %.loopexit184.split.us.i ], [ %lpad.loopexit186.i, %.loopexit184.split.i ], [ %lpad.loopexit.split-lp187.i, %.loopexit.split-lp185.split.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.mo = load ptr, ptr %13, align 8, !tbaa !233  ; 3 uses
  %.not.i.i173.i = icmp eq ptr %i.mo, %i.eq
  %i.mp = icmp eq ptr %i.mo, null
  %or.cond.i174.i = or i1 %.not.i.i173.i, %i.mp
  br i1 %or.cond.i174.i, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit175.i, label %bb.bf

bb.bf:                                            ; preds = %.loopexit184.i
  call void @_ZdaPv(ptr noundef nonnull %i.mo) #21
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit175.i

_ZN2cv10AutoBufferIiLm264EED2Ev.exit175.i:        ; preds = %bb.bf, %.loopexit184.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %.body

_ZN12_GLOBAL__N_117copyMakeBorder_8uEPKhmN2cv5Size_IiEEPhmS4_iiii.exit: ; preds = %._crit_edge218.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.cn

_ZN2cv10AutoBufferIdLm136EEC2Em.exit:             ; preds = %bb.af
  %i.mq = load i32, ptr %21, align 8, !tbaa !33   ; 2 uses
  %i.mr = lshr i32 %i.mq, 5
  %i.ms = and i32 %i.mr, 127                      ; 2 uses
  %i.mt = add nuw nsw i32 %i.ms, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %i.mu = zext nneg i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  store ptr %i.mv, ptr %26, align 8, !tbaa !237
  %i.mw = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.mu, ptr %i.mw, align 8, !tbaa !238
  %i.mx = icmp samesign ugt i32 %i.ms, 3
  br i1 %i.mx, label %bb.bg, label %bb.bp

bb.bg:                                            ; preds = %_ZN2cv10AutoBufferIdLm136EEC2Em.exit
  %i.my = load double, ptr %7, align 8, !tbaa !16 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.na = load double, ptr %i.mz, align 8, !tbaa !16
  %i.nb = fcmp oeq double %i.my, %i.na
  br i1 %i.nb, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.nc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !16
  %i.ne = fcmp oeq double %i.my, %i.nd
  br i1 %i.ne, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.nf = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !16
  %i.nh = fcmp oeq double %i.my, %i.ng
  br i1 %i.nh, label %bb.bp, label %bb.bk

bb.bj:                                            ; preds = %bb.cf, %bb.by, %bb.br, %bb.bp
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %.body118

bb.bk:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @__func__._ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE, ptr noundef nonnull @.str.1, i32 noundef 1278) #20
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  unreachable

bb.bn:                                            ; preds = %bb.bk
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.bo:                                            ; preds = %bb.bl
  %i.nk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nl = load ptr, ptr %27, align 8, !tbaa !13   ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.nn = icmp eq ptr %i.nl, %i.nm
  br i1 %i.nn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.bo
  %i.no = load i64, ptr %i.nm, align 8, !tbaa !14
  %i.np = add i64 %i.no, 1
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef %i.np) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.bn
  %.pn61 = phi { ptr, i32 } [ %i.nj, %bb.bn ], [ %i.nk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %i.nk, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %.body118

bb.bp:                                            ; preds = %bb.bi, %_ZN2cv10AutoBufferIdLm136EEC2Em.exit
  %.044 = phi i32 [ %i.mt, %_ZN2cv10AutoBufferIdLm136EEC2Em.exit ], [ 1, %bb.bi ]
  %i.nq = shl nuw nsw i32 %.044, 5
  %i.nr = or i32 %i.mq, -32
  %i.ns = add nsw i32 %i.nr, %i.nq
  invoke void @_ZN2cv15scalarToRawDataERKNS_7Scalar_IdEEPvii(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %i.mv, i32 noundef %i.ns, i32 noundef %i.mt)
          to label %bb.bq unwind label %bb.bj

bb.bq:                                            ; preds = %bb.bp
  %i.nt = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !34
  %i.nv = getelementptr inbounds nuw i8, ptr %21, i64 128
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !23
  %i.nx = getelementptr inbounds nuw i8, ptr %21, i64 72
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !54 ; 6 uses
  %i.nz = icmp slt i32 %i.ny, 3
  br i1 %i.nz, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %.noexc117 unwind label %bb.bj

.noexc117:                                        ; preds = %bb.br
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.42, i32 noundef 109) #20
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %.noexc117
  unreachable

bb.bt:                                            ; preds = %.noexc117
  %i.oa = landingpad { ptr, i32 }
          cleanup
  %i.ob = load ptr, ptr %11, align 8, !tbaa !13   ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.od = icmp eq ptr %i.ob, %i.oc
  br i1 %i.od, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108: ; preds = %bb.bt
  %i.oe = load i64, ptr %i.oc, align 8, !tbaa !14
  %i.of = add i64 %i.oe, 1
end_hunk_0
