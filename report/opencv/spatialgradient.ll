Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/spatialgradient?download=true
inline.NumInlined: 65
inline.NumDeleted: 35
begin_hunk_0_@_ZN2cv15spatialGradientERKNS_11_InputArrayERKNS_12_OutputArrayES5_ii:bb.a
  %i.av = icmp eq i32 %i.ah, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 84 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = icmp sgt i32 %i.ah, -1
  %i.az = zext i1 %i.ay to i32
  %i.ba = select i1 %i.av, i32 %i.ax, i32 %i.az
  %.sroa.2.0.insert.ext.i = zext i32 %i.ba to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.au to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  invoke void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %.sroa.0.0.insert.insert.i, i32 noundef 3, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.af unwind label %bb.f

bb.af:                                            ; preds = %bb.ae
  %i.bb = load i32, ptr %i.ag, align 8, !tbaa !45 ; 6 uses
  %i.bc = icmp slt i32 %i.bb, 3
  br i1 %i.bc, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc226 unwind label %bb.f

.noexc226:                                        ; preds = %bb.ag
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.8, i32 noundef 109) #11
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %.noexc226
  unreachable

bb.ai:                                            ; preds = %.noexc226
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i220, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i219: ; preds = %bb.ai
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !14
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i220: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %.body

bb.aj:                                            ; preds = %bb.af
  %i.bj = icmp sgt i32 %i.bb, 0
  br i1 %i.bj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.bk = icmp eq i32 %i.bb, 2
  %.sroa.gep272 = getelementptr inbounds nuw i8, ptr %10, i64 88
  %.sroa.gep272.val = load i32, ptr %.sroa.gep272, align 8
  %.val = load i32, ptr %i.aw, align 4            ; 2 uses
  %i.bl = select i1 %i.bk, i32 %.sroa.gep272.val, i32 %.val
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.bm = icmp eq i32 %i.bb, 0
  %i.bn = zext i1 %i.bm to i32
  %.pre = load i32, ptr %i.aw, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.bo = phi i32 [ %.val, %bb.ak ], [ %.pre, %bb.al ]
  %i.bp = phi i32 [ %i.bl, %bb.ak ], [ %i.bn, %bb.al ]
  %i.bq = icmp eq i32 %i.bb, 2
  %i.br = icmp sgt i32 %i.bb, -1
  %i.bs = zext i1 %i.br to i32
  %i.bt = select i1 %i.bq, i32 %i.bo, i32 %i.bs
  %.sroa.2.0.insert.ext.i222 = zext i32 %i.bt to i64
  %.sroa.2.0.insert.shift.i223 = shl nuw i64 %.sroa.2.0.insert.ext.i222, 32
  %.sroa.0.0.insert.ext.i224 = zext i32 %i.bp to i64
  %.sroa.0.0.insert.insert.i225 = or disjoint i64 %.sroa.2.0.insert.shift.i223, %.sroa.0.0.insert.ext.i224
  invoke void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %.sroa.0.0.insert.insert.i225, i32 noundef 3, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.an unwind label %bb.f

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #10
  %i.bu = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc230 unwind label %bb.as

.noexc230:                                        ; preds = %bb.an
  %i.bv = icmp eq i32 %i.bu, 65536
  br i1 %i.bv, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.noexc230
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !36, !noalias !47
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %i.bx)
          to label %_ZNK2cv11_InputArray6getMatEi.exit233 unwind label %bb.as

bb.ap:                                            ; preds = %.noexc230
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit233 unwind label %bb.as

_ZNK2cv11_InputArray6getMatEi.exit233:            ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #10
  %i.by = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc234 unwind label %bb.at

.noexc234:                                        ; preds = %_ZNK2cv11_InputArray6getMatEi.exit233
  %i.bz = icmp eq i32 %i.by, 65536
  br i1 %i.bz, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.noexc234
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !36, !noalias !48
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %i.cb)
          to label %_ZNK2cv11_InputArray6getMatEi.exit237 unwind label %bb.at

bb.ar:                                            ; preds = %.noexc234
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit237 unwind label %bb.at

_ZNK2cv11_InputArray6getMatEi.exit237:            ; preds = %bb.aq, %bb.ar
  %i.cc = icmp eq i32 %3, 3
  br i1 %i.cc, label %bb.az, label %bb.au

bb.as:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.at:                                            ; preds = %bb.ar, %bb.aq, %_ZNK2cv11_InputArray6getMatEi.exit233
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.au:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit237
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv15spatialGradientERKNS_11_InputArrayERKNS_12_OutputArrayES5_ii, ptr noundef nonnull @.str.1, i32 noundef 114) #11
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.au
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i239

bb.ay:                                            ; preds = %bb.av
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %19, align 8, !tbaa !13   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %bb.ay
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !14
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i239

bb.az:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit237
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.co = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.cq = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %18, i64 128
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !49 ; 5 uses
  %i.cv = load i32, ptr %i.cs, align 4, !tbaa !50 ; 5 uses
  %i.cw = add nsw i32 %i.cu, -1                   ; 3 uses
  br i1 %i.y, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.cx = icmp sgt i32 %i.cu, 1                   ; 2 uses
  %i.cy = add nsw i32 %i.cu, -2
  %spec.select = zext i1 %i.cx to i64
  %spec.select183 = select i1 %i.cx, i32 %i.cy, i32 %i.cw
  %i.cz = icmp sgt i32 %i.cv, 1                   ; 2 uses
  %spec.select185 = zext i1 %i.cz to i64
  %spec.select186 = sext i1 %i.cz to i32
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.1151 = phi i64 [ 0, %bb.az ], [ %spec.select, %bb.ba ]
  %.1 = phi i32 [ %i.cw, %bb.az ], [ %spec.select183, %bb.ba ]
  %.0148 = phi i64 [ 0, %bb.az ], [ %spec.select185, %bb.ba ] ; 3 uses
  %.0147 = phi i32 [ 0, %bb.az ], [ %spec.select186, %bb.ba ] ; 2 uses
  %i.da = icmp sgt i32 %i.cu, 0
  br i1 %i.da, label %.lr.ph291, label %._crit_edge292

.lr.ph291:                                        ; preds = %bb.bb
  %i.db = load ptr, ptr %i.cm, align 8, !tbaa !51 ; 8 uses
  %i.dc = load i64, ptr %i.cn, align 8, !tbaa !15 ; 5 uses
  %i.dd = load ptr, ptr %i.co, align 8, !tbaa !51 ; 3 uses
  %i.de = load i64, ptr %i.cp, align 8, !tbaa !15 ; 3 uses
  %i.df = load ptr, ptr %i.cq, align 8, !tbaa !51 ; 3 uses
  %i.dg = load i64, ptr %i.cr, align 8, !tbaa !15 ; 3 uses
  %.inv = icmp sgt i32 %i.cv, 1
  %narrow = select i1 %.inv, i32 1, i32 %.0147
  %spec.select184 = sext i32 %narrow to i64       ; 3 uses
  %i.dh = add i32 %i.cv, -1                       ; 3 uses
  %i.di = icmp sgt i32 %i.cv, 2
  %i.dj = zext nneg i32 %i.cw to i64
  %wide.trip.count298 = zext nneg i32 %i.cu to i64 ; 2 uses
  %i.dk = sext i32 %.1 to i64
  %wide.trip.count = zext i32 %i.dh to i64        ; 5 uses
  %scevgep = getelementptr i8, ptr %i.dd, i64 2   ; 4 uses
  %i.dl = add nsw i64 %wide.trip.count298, -1     ; 3 uses
  %i.dm = mul i64 %i.de, %i.dl
  %i.dn = shl nuw nsw i64 %wide.trip.count, 1     ; 2 uses
  %i.do = getelementptr i8, ptr %i.dd, i64 %i.dm
  %scevgep317 = getelementptr i8, ptr %i.do, i64 %i.dn ; 4 uses
  %scevgep318 = getelementptr i8, ptr %i.df, i64 2 ; 4 uses
  %i.dp = mul i64 %i.dg, %i.dl
  %i.dq = getelementptr i8, ptr %i.df, i64 %i.dp
  %scevgep319 = getelementptr i8, ptr %i.dq, i64 %i.dn ; 4 uses
  %scevgep320 = getelementptr i8, ptr %i.db, i64 2 ; 3 uses
  %i.dr = add nuw nsw i64 %wide.trip.count, 1     ; 2 uses
  %scevgep322 = getelementptr i8, ptr %i.db, i64 %i.dr
  %i.ds = mul i64 %i.dc, %i.dl
  %i.dt = getelementptr i8, ptr %i.db, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dt, i64 %wide.trip.count
  %scevgep324 = getelementptr i8, ptr %i.du, i64 1 ; 2 uses
  %scevgep325 = getelementptr i8, ptr %i.db, i64 2
  %scevgep327 = getelementptr i8, ptr %i.db, i64 %i.dr
  %i.dv = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i64 %i.dv, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep319
  %bound1 = icmp ult ptr %scevgep318, %scevgep317
  %found.conflict = and i1 %bound0, %bound1
  %i.dw = or i64 %i.dg, %i.de
  %stride.check333 = icmp slt i64 %i.dw, 0
  %invariant.op.a = or i1 %found.conflict, %stride.check333
  %bound0334 = icmp ult ptr %scevgep, %scevgep324
  %bound1335 = icmp ult ptr %scevgep320, %scevgep317
  %found.conflict336 = and i1 %bound0334, %bound1335
  %i.dx = icmp slt i64 %i.dc, 0
  %i.dy = or i1 %found.conflict336, %i.dx
  %invariant.op389 = or i1 %invariant.op.a, %i.dy
  %bound0350.a = icmp ult ptr %scevgep318, %scevgep324
  %bound1351.a = icmp ult ptr %scevgep320, %scevgep319
  %found.conflict352.a = and i1 %bound0350.a, %bound1351.a
  %n.vec = and i64 %i.dv, -8                      ; 3 uses
  %i.dz = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph291, %bb.be
  %indvars.iv295 = phi i64 [ 0, %.lr.ph291 ], [ %indvars.iv.next296, %bb.be ] ; 7 uses
  %i.ea = icmp eq i64 %indvars.iv295, 0
  %i.eb = add nuw i64 %indvars.iv295, 4294967295
  %i.ec = select i1 %i.ea, i64 %.1151, i64 %i.eb
  %sext = shl i64 %i.ec, 32
  %i.ed = ashr exact i64 %sext, 32
  %i.ee = mul i64 %i.dc, %i.ed                    ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ee ; 8 uses
  %i.eg = mul i64 %i.dc, %indvars.iv295
  %i.eh = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.eg ; 7 uses
  %i.ei = icmp eq i64 %indvars.iv295, %i.dj
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 3 uses
  %i.ej = select i1 %i.ei, i64 %i.dk, i64 %indvars.iv.next296
  %i.ek = mul i64 %i.dc, %i.ej                    ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ek ; 8 uses
  %i.em = mul i64 %i.de, %indvars.iv295
  %i.en = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.em ; 4 uses
  %i.eo = mul i64 %i.dg, %indvars.iv295
  %i.ep = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.eo ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.0148
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !14
  %i.es = load i8, ptr %i.ef, align 1, !tbaa !14
  %i.et = getelementptr inbounds i8, ptr %i.ef, i64 %spec.select184
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !14
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.0148
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !14
  %i.ex = getelementptr inbounds i8, ptr %i.eh, i64 %spec.select184
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !14
  %i.ez = getelementptr inbounds nuw i8, ptr %i.el, i64 %.0148
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !14
  %i.fb = load i8, ptr %i.el, align 1, !tbaa !14
  %i.fc = getelementptr inbounds i8, ptr %i.el, i64 %spec.select184
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !14
  %i.fe = zext i8 %i.er to i16
  %i.ff = zext i8 %i.es to i16
  %i.fg = zext i8 %i.eu to i16
  %i.fh = zext i8 %i.ew to i16
  %i.fi = zext i8 %i.ey to i16
  %i.fj = zext i8 %i.fa to i16
  %i.fk = zext i8 %i.fb to i16
  %i.fl = zext i8 %i.fd to i16
  %i.fm = sub nsw i16 %i.fl, %i.fe                ; 2 uses
  %i.fn = sub nsw i16 %i.fg, %i.fj                ; 2 uses
  %i.fo = sub nsw i16 %i.fi, %i.fh
  %i.fp = sub nsw i16 %i.fk, %i.ff
  %reass.add.i = shl nsw i16 %i.fo, 1
  %i.fq = add nsw i16 %reass.add.i, %i.fn
  %i.fr = add nsw i16 %i.fq, %i.fm
  store i16 %i.fr, ptr %i.en, align 2, !tbaa !53
  %i.fs = sub nsw i16 %i.fm, %i.fn
  %reass.add17.i = shl nsw i16 %i.fp, 1
  %i.ft = add nsw i16 %i.fs, %reass.add17.i
  store i16 %i.ft, ptr %i.ep, align 2, !tbaa !53
  %i.fu = load i8, ptr %i.ef, align 1, !tbaa !14  ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !14  ; 4 uses
  %i.fx = load i8, ptr %i.eh, align 1, !tbaa !14  ; 4 uses
  %i.fy = load i8, ptr %i.el, align 1, !tbaa !14  ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !14  ; 4 uses
  br i1 %i.di, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.bc
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !14  ; 3 uses
  br i1 %min.iters.check, label %.lr.ph.preheader385, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep321 = getelementptr i8, ptr %scevgep320, i64 %i.ek ; 2 uses
  %scevgep323 = getelementptr i8, ptr %scevgep322, i64 %i.ek ; 2 uses
  %scevgep326 = getelementptr i8, ptr %scevgep325, i64 %i.ee ; 2 uses
  %scevgep328 = getelementptr i8, ptr %scevgep327, i64 %i.ee ; 2 uses
  %bound0330 = icmp ult ptr %scevgep, %scevgep323
  %bound1331 = icmp ult ptr %scevgep321, %scevgep317
  %found.conflict332 = and i1 %bound0330, %bound1331
  %conflict.rdx339.reass = or i1 %found.conflict332, %invariant.op389
  %bound0340 = icmp ult ptr %scevgep, %scevgep328
  %bound1341 = icmp ult ptr %scevgep326, %scevgep317
  %found.conflict342 = and i1 %bound0340, %bound1341
  %conflict.rdx344 = or i1 %conflict.rdx339.reass, %found.conflict342
  %bound0345 = icmp ult ptr %scevgep318, %scevgep323
  %bound1346 = icmp ult ptr %scevgep321, %scevgep319
  %found.conflict347 = and i1 %bound0345, %bound1346
  %conflict.rdx349.a = or i1 %conflict.rdx344, %found.conflict347
  %conflict.rdx355 = or i1 %conflict.rdx349.a, %found.conflict352.a
  %bound0356 = icmp ult ptr %scevgep318, %scevgep328
  %bound1357 = icmp ult ptr %scevgep326, %scevgep319
  %found.conflict358 = and i1 %bound0356, %bound1357
  %conflict.rdx360 = or i1 %conflict.rdx355, %found.conflict358
  br i1 %conflict.rdx360, label %.lr.ph.preheader385, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %vector.recur.init = insertelement <8 x i8> poison, i8 %i.ga, i64 7
  %vector.recur.init361 = insertelement <8 x i8> poison, i8 %i.fy, i64 7
  %vector.recur.init363 = insertelement <8 x i8> poison, i8 %i.gc, i64 7
  %vector.recur.init365 = insertelement <8 x i8> poison, i8 %i.fx, i64 7
  %vector.recur.init367 = insertelement <8 x i8> poison, i8 %i.fw, i64 7
  %vector.recur.init369 = insertelement <8 x i8> poison, i8 %i.fu, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <8 x i8> [ %vector.recur.init, %vector.ph ], [ %wide.load372, %vector.body ]
  %vector.recur362 = phi <8 x i8> [ %vector.recur.init361, %vector.ph ], [ %i.gm, %vector.body ]
  %vector.recur364 = phi <8 x i8> [ %vector.recur.init363, %vector.ph ], [ %wide.load371, %vector.body ]
  %vector.recur366 = phi <8 x i8> [ %vector.recur.init365, %vector.ph ], [ %i.gj, %vector.body ]
  %vector.recur368 = phi <8 x i8> [ %vector.recur.init367, %vector.ph ], [ %wide.load, %vector.body ]
  %vector.recur370 = phi <8 x i8> [ %vector.recur.init369, %vector.ph ], [ %i.gg, %vector.body ]
  %i.gd = or disjoint i64 %index, 1               ; 2 uses
  %i.ge = or disjoint i64 %index, 2               ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ge
  %wide.load = load <8 x i8>, ptr %i.gf, align 1, !tbaa !14, !alias.scope !54 ; 6 uses
  %i.gg = shufflevector <8 x i8> %vector.recur368, <8 x i8> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %i.gh = shufflevector <8 x i8> %vector.recur370, <8 x i8> %i.gg, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.gi = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ge
  %wide.load371 = load <8 x i8>, ptr %i.gi, align 1, !tbaa !14, !alias.scope !55 ; 6 uses
  %i.gj = shufflevector <8 x i8> %vector.recur364, <8 x i8> %wide.load371, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.gk = shufflevector <8 x i8> %vector.recur366, <8 x i8> %i.gj, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.gl = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ge
  %wide.load372 = load <8 x i8>, ptr %i.gl, align 1, !tbaa !14, !alias.scope !56 ; 6 uses
  %i.gm = shufflevector <8 x i8> %vector.recur, <8 x i8> %wide.load372, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %i.gn = shufflevector <8 x i8> %vector.recur362, <8 x i8> %i.gm, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.gd
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.gd
  %i.gq = zext <8 x i8> %i.gh to <8 x i16>
  %i.gr = zext <8 x i8> %i.gg to <8 x i16>
  %i.gs = zext <8 x i8> %wide.load to <8 x i16>
  %i.gt = zext <8 x i8> %i.gk to <8 x i16>
  %i.gu = zext <8 x i8> %wide.load371 to <8 x i16>
  %i.gv = zext <8 x i8> %i.gn to <8 x i16>
  %i.gw = zext <8 x i8> %i.gm to <8 x i16>
  %i.gx = zext <8 x i8> %wide.load372 to <8 x i16>
  %i.gy = sub nsw <8 x i16> %i.gx, %i.gq          ; 2 uses
  %i.gz = sub nsw <8 x i16> %i.gs, %i.gv          ; 2 uses
  %i.ha = sub nsw <8 x i16> %i.gu, %i.gt
  %i.hb = sub nsw <8 x i16> %i.gw, %i.gr
  %i.hc = shl nsw <8 x i16> %i.ha, splat (i16 1)
  %i.hd = add nsw <8 x i16> %i.hc, %i.gz
  %i.he = add nsw <8 x i16> %i.hd, %i.gy
  store <8 x i16> %i.he, ptr %i.go, align 2, !tbaa !53, !alias.scope !57, !noalias !58
  %i.hf = shl nsw <8 x i16> %i.hb, splat (i16 1)
  %i.hg = sub nsw <8 x i16> %i.hf, %i.gz
  %i.hh = add nsw <8 x i16> %i.hg, %i.gy
  store <8 x i16> %i.hh, ptr %i.gp, align 2, !tbaa !53, !alias.scope !59, !noalias !60
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hi = icmp eq i64 %index.next, %n.vec
  br i1 %i.hi, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract.for.phi = extractelement <8 x i8> %wide.load372, i64 6
  %vector.recur.extract.for.phi373 = extractelement <8 x i8> %wide.load371, i64 6
  %vector.recur.extract.for.phi374 = extractelement <8 x i8> %wide.load, i64 6
  %vector.recur.extract = extractelement <8 x i8> %wide.load372, i64 7 ; 2 uses
  %vector.recur.extract375 = extractelement <8 x i8> %wide.load372, i64 6
  %vector.recur.extract376 = extractelement <8 x i8> %wide.load371, i64 7
  %vector.recur.extract377 = extractelement <8 x i8> %wide.load371, i64 6
  %vector.recur.extract378 = extractelement <8 x i8> %wide.load, i64 7 ; 2 uses
  %vector.recur.extract379 = extractelement <8 x i8> %wide.load, i64 6
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader385

.lr.ph.preheader385:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.dz, %middle.block ]
  %.0283.ph = phi i8 [ %i.ga, %vector.memcheck ], [ %i.ga, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.0141282.ph = phi i8 [ %i.fy, %vector.memcheck ], [ %i.fy, %.lr.ph.preheader ], [ %vector.recur.extract375, %middle.block ]
  %.0142281.ph = phi i8 [ %i.gc, %vector.memcheck ], [ %i.gc, %.lr.ph.preheader ], [ %vector.recur.extract376, %middle.block ]
  %.0143280.ph = phi i8 [ %i.fx, %vector.memcheck ], [ %i.fx, %.lr.ph.preheader ], [ %vector.recur.extract377, %middle.block ]
  %.0144279.ph = phi i8 [ %i.fw, %vector.memcheck ], [ %i.fw, %.lr.ph.preheader ], [ %vector.recur.extract378, %middle.block ]
  %.0145278.ph = phi i8 [ %i.fu, %vector.memcheck ], [ %i.fu, %.lr.ph.preheader ], [ %vector.recur.extract379, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader385, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader385 ] ; 3 uses
  %.0283 = phi i8 [ %i.ho, %.lr.ph ], [ %.0283.ph, %.lr.ph.preheader385 ] ; 3 uses
  %.0141282 = phi i8 [ %.0283, %.lr.ph ], [ %.0141282.ph, %.lr.ph.preheader385 ]
  %.0142281 = phi i8 [ %i.hm, %.lr.ph ], [ %.0142281.ph, %.lr.ph.preheader385 ] ; 2 uses
  %.0143280 = phi i8 [ %.0142281, %.lr.ph ], [ %.0143280.ph, %.lr.ph.preheader385 ]
  %.0144279 = phi i8 [ %i.hk, %.lr.ph ], [ %.0144279.ph, %.lr.ph.preheader385 ] ; 3 uses
  %.0145278 = phi i8 [ %.0144279, %.lr.ph ], [ %.0145278.ph, %.lr.ph.preheader385 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ef, i64 %indvars.iv.next
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !14  ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.next
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !14  ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.el, i64 %indvars.iv.next
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !14  ; 3 uses
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %indvars.iv
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %indvars.iv
  %i.hr = zext i8 %.0145278 to i16
  %i.hs = zext i8 %.0144279 to i16
  %i.ht = zext i8 %i.hk to i16
  %i.hu = zext i8 %.0143280 to i16
  %i.hv = zext i8 %i.hm to i16
  %i.hw = zext i8 %.0141282 to i16
  %i.hx = zext i8 %.0283 to i16
  %i.hy = zext i8 %i.ho to i16
  %i.hz = sub nsw i16 %i.hy, %i.hr                ; 2 uses
  %i.ia = sub nsw i16 %i.ht, %i.hw                ; 2 uses
  %i.ib = sub nsw i16 %i.hv, %i.hu
  %i.ic = sub nsw i16 %i.hx, %i.hs
  %reass.add.i244 = shl nsw i16 %i.ib, 1
  %i.id = add nsw i16 %reass.add.i244, %i.ia
  %i.ie = add nsw i16 %i.id, %i.hz
  store i16 %i.ie, ptr %i.hp, align 2, !tbaa !53
  %reass.add17.i245 = shl nsw i16 %i.ic, 1
  %i.if = sub nsw i16 %reass.add17.i245, %i.ia
  %i.ig = add nsw i16 %i.if, %i.hz
  store i16 %i.ig, ptr %i.hq, align 2, !tbaa !53
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.bc
  %.0152.lcssa = phi i32 [ 1, %bb.bc ], [ %i.dh, %middle.block ], [ %i.dh, %.lr.ph ] ; 3 uses
  %.0145.lcssa = phi i8 [ %i.fu, %bb.bc ], [ %vector.recur.extract.for.phi374, %middle.block ], [ %.0144279, %.lr.ph ]
  %.0144.lcssa = phi i8 [ %i.fw, %bb.bc ], [ %vector.recur.extract378, %middle.block ], [ %i.hk, %.lr.ph ]
  %.0143.lcssa = phi i8 [ %i.fx, %bb.bc ], [ %vector.recur.extract.for.phi373, %middle.block ], [ %.0142281, %.lr.ph ]
  %.0141.lcssa = phi i8 [ %i.fy, %bb.bc ], [ %vector.recur.extract.for.phi, %middle.block ], [ %.0283, %.lr.ph ]
  %.0.lcssa = phi i8 [ %i.ga, %bb.bc ], [ %vector.recur.extract, %middle.block ], [ %i.ho, %.lr.ph ]
  %i.ih = icmp slt i32 %.0152.lcssa, %i.cv
  br i1 %i.ih, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %._crit_edge
  %i.ii = add nsw i32 %.0152.lcssa, %.0147
  %i.ij = sext i32 %i.ii to i64                   ; 3 uses
  %i.ik = getelementptr inbounds i8, ptr %i.ef, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !14
  %i.im = getelementptr inbounds i8, ptr %i.eh, i64 %i.ij
  %i.in = load i8, ptr %i.im, align 1, !tbaa !14
  %i.io = getelementptr inbounds i8, ptr %i.el, i64 %i.ij
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !14
  %i.iq = zext nneg i32 %.0152.lcssa to i64       ; 2 uses
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.iq
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.iq
  %i.it = zext i8 %.0145.lcssa to i16
  %i.iu = zext i8 %.0144.lcssa to i16
  %i.iv = zext i8 %i.il to i16
  %i.iw = zext i8 %.0143.lcssa to i16
  %i.ix = zext i8 %i.in to i16
  %i.iy = zext i8 %.0141.lcssa to i16
  %i.iz = zext i8 %.0.lcssa to i16
  %i.ja = zext i8 %i.ip to i16
  %i.jb = sub nsw i16 %i.ja, %i.it                ; 2 uses
  %i.jc = sub nsw i16 %i.iv, %i.iy                ; 2 uses
  %i.jd = sub nsw i16 %i.ix, %i.iw
  %i.je = sub nsw i16 %i.iz, %i.iu
  %reass.add.i246 = shl nsw i16 %i.jd, 1
  %i.jf = add nsw i16 %reass.add.i246, %i.jc
  %i.jg = add nsw i16 %i.jf, %i.jb
  store i16 %i.jg, ptr %i.ir, align 2, !tbaa !53
  %reass.add17.i247 = shl nsw i16 %i.je, 1
  %i.jh = sub nsw i16 %reass.add17.i247, %i.jc
  %i.ji = add nsw i16 %i.jh, %i.jb
  store i16 %i.ji, ptr %i.is, align 2, !tbaa !53
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %._crit_edge
  %exitcond299.not = icmp eq i64 %indvars.iv.next296, %wide.trip.count298
  br i1 %exitcond299.not, label %._crit_edge292, label %bb.bc, !llvm.loop !33

._crit_edge292:                                   ; preds = %bb.be, %bb.bb
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #10
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #10
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  %i.jj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !18
  %.not.i = icmp eq i32 %i.jk, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge292
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %9)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jl = landingpad { ptr, i32 }
          catch ptr null
  %i.jm = extractvalue { ptr, i32 } %i.jl, 0
  call void @__clang_call_terminate(ptr %i.jm) #13
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge292, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i239: ; preds = %bb.ay, %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238
  %.pn172 = phi { ptr, i32 } [ %i.cf, %bb.ax ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238 ], [ %i.cg, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #10
end_hunk_0
