Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/convolution?download=true
inline.NumInlined: 742
inline.NumDeleted: 316
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn11runFastConvERKNS0_11_InputArrayERKNS0_12_OutputArrayERKNS0_3PtrINS5_8FastConvEEEiRKNSC_INS5_14dnn5_v2026060515ActivationLayerEEERKSt6vectorIfSaIfEEbE3$_1E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %i.sl = load ptr, ptr %i.sk, align 8
  tail call void %i.sl(ptr noundef nonnull align 8 dereferenceable(156) %i.ks, ptr noundef %i.jr, ptr noundef %i.jr, i32 noundef %i.ep, i64 noundef %i.si, i32 noundef %i.ct, i32 noundef %i.eh), !inline_history !351
  br label %.loopexit303.i.i.i

bb.af:                                            ; preds = %bb.q
  br i1 %.not243.i.i.i, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @"__func__._ZZN2cv3dnn12initFastConvERKNS_11_InputArrayEPfiiiRKSt6vectorImSaImEES9_S9_S9_S9_ibbENK3$_1clERKNS_5RangeE", ptr noundef nonnull @.str.1, i32 noundef 1490) #24
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %bb.ag
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267.i.i.i

bb.ak:                                            ; preds = %bb.ah
  %i.sn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.so = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.sq = icmp eq ptr %i.so, %i.sp
  br i1 %i.sq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265.i.i.i: ; preds = %bb.ak
  %i.sr = load i64, ptr %i.sp, align 8, !tbaa !36
  %i.ss = add i64 %i.sr, 1
  call void @_ZdlPvm(ptr noundef %i.so, i64 noundef %i.ss) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267.i.i.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265.i.i.i, %bb.aj
  %.pn238.i.i.i = phi { ptr, i32 } [ %i.sm, %bb.aj ], [ %i.sn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265.i.i.i ], [ %i.sn, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.at

bb.al:                                            ; preds = %bb.af
  %i.st = load ptr, ptr %i.au, align 8, !tbaa !447, !nonnull !67, !align !125
  %i.su = load i32, ptr %i.st, align 4, !tbaa !39
  %i.sv = mul nsw i32 %i.su, %i.ct
  %i.sw = load ptr, ptr %i.av, align 8, !tbaa !436, !nonnull !67, !align !125
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !39
  %i.sy = mul nsw i32 %i.sv, %i.sx
  %i.sz = load ptr, ptr %i.as, align 8, !tbaa !429, !nonnull !67, !align !125
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !39
  %i.tb = mul nsw i32 %i.sy, %i.ta
  %i.tc = sext i32 %i.tb to i64
  %i.td = getelementptr inbounds i8, ptr %i.im, i64 %i.tc
  %i.te = getelementptr inbounds nuw i8, ptr %i.hr, i64 120
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !16
  %i.tg = load ptr, ptr %i.q, align 8, !tbaa !400, !nonnull !67, !align !125
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !39
  %i.ti = mul nsw i32 %i.th, %i.ct
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.tj
  %i.tl = load ptr, ptr %i.r, align 8, !tbaa !404, !nonnull !67, !align !125
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !39
  %i.tn = mul i32 %i.tm, %i.es                    ; 5 uses
  br i1 %i.ef, label %.lr.ph340.i.i.i, label %.loopexit303.i.i.i

.lr.ph340.i.i.i:                                  ; preds = %bb.al
  %i.to = icmp sgt i32 %i.es, 0
  %i.tp = sext i32 %i.tn to i64                   ; 8 uses
  %i.tq = shl nsw i64 %i.tp, 2                    ; 3 uses
  %i.tr = sext i32 %.1212345.i.i.i to i64
  %i.ts = icmp sgt i32 %i.ep, 0                   ; 2 uses
  %.pre395.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !448
  %.pre396.i.i.i = load i32, ptr %.pre395.i.i.i, align 4, !tbaa !39
  %wide.trip.count.i.i.i = zext i32 %i.ep to i64  ; 17 uses
  %i.tt = shl nuw nsw i64 %wide.trip.count.i.i.i, 2 ; 5 uses
  %scevgep151 = getelementptr i8, ptr %scevgep150, i64 %i.tt
  %i.tu = shl nsw i64 %i.tp, 2
  %i.tv = mul nsw i64 %i.tp, -4
  %scevgep204 = getelementptr i8, ptr %scevgep203, i64 %i.tt
  %i.tw = shl nsw i64 %i.tp, 2
  %i.tx = mul nsw i64 %i.tp, -4
  %i.ty = shl nsw i64 %i.tp, 2
  %stride.check273 = icmp slt i32 %i.tn, 0
  %min.iters.check251 = icmp ult i32 %i.ep, 8
  %n.vec253 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n264 = icmp eq i64 %n.vec253, %wide.trip.count.i.i.i
  %xtraiter330 = and i64 %wide.trip.count.i.i.i, 1
  %lcmp.mod331.not = icmp eq i64 %xtraiter330, 0
  %i.tz = add nsw i64 %wide.trip.count.i.i.i, -1
  %min.iters.check226 = icmp ult i32 %i.ep, 8
  %stride.check212 = icmp slt i32 %i.tn, 0
  %n.vec228 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n243 = icmp eq i64 %n.vec228, %wide.trip.count.i.i.i
  %min.iters.check188 = icmp ult i32 %i.ep, 8
  %n.vec190 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n199 = icmp eq i64 %n.vec190, %wide.trip.count.i.i.i
  %xtraiter333 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod334.not = icmp eq i64 %xtraiter333, 0
  %min.iters.check167 = icmp ult i32 %i.ep, 8
  %stride.check158 = icmp slt i32 %i.tn, 0
  %n.vec169 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n182 = icmp eq i64 %n.vec169, %wide.trip.count.i.i.i
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge337.i.i.i, %.lr.ph340.i.i.i
  %i.ua = phi i32 [ %.pre396.i.i.i, %.lr.ph340.i.i.i ], [ %i.abj, %._crit_edge337.i.i.i ]
  %.0199338.i.i.i = phi i32 [ %.0214.i.i.i, %.lr.ph340.i.i.i ], [ %i.abk, %._crit_edge337.i.i.i ] ; 9 uses
  %i.ub = add i32 %.0199338.i.i.i, %i.ua
  %..0213.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ub, i32 %.0213.i.i.i) ; 5 uses
  %i.uc = load ptr, ptr %i.av, align 8, !tbaa !436, !nonnull !67, !align !125
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !39 ; 2 uses
  %i.ue = icmp sgt i32 %i.ud, 0
  br i1 %i.ue, label %.lr.ph317.i.i.i, label %._crit_edge318.i.i.i

.lr.ph317.i.i.i:                                  ; preds = %bb.am
  %i.uf = icmp slt i32 %.0199338.i.i.i, %..0213.i.i.i
  br label %bb.an

.loopexit299.i.i.i:                               ; preds = %._crit_edge.i.i.i, %.lr.ph314.i.i.i, %bb.ap
  %i.ug = phi i32 [ %i.vj, %bb.ap ], [ %i.vj, %.lr.ph314.i.i.i ], [ %i.aax, %._crit_edge.i.i.i ] ; 2 uses
  %i.uh = icmp slt i32 %i.vk, %i.ug
  br i1 %i.uh, label %bb.an, label %._crit_edge318.i.i.i, !llvm.loop !352

._crit_edge318.i.i.i:                             ; preds = %.loopexit299.i.i.i, %bb.am
  %i.ui = icmp slt i32 %.0199338.i.i.i, %..0213.i.i.i
  br i1 %i.ui, label %.lr.ph336.preheader.i.i.i, label %._crit_edge337.i.i.i

.lr.ph336.preheader.i.i.i:                        ; preds = %._crit_edge318.i.i.i
  %i.uj = load ptr, ptr %i.ba, align 8, !tbaa !449, !nonnull !67, !align !124
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !83 ; 2 uses
  %.not240.i.i.i = icmp eq ptr %i.uk, null
  %i.ul = load ptr, ptr %i.s, align 8, !tbaa !401, !nonnull !67, !align !124
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !38 ; 2 uses
  %i.un = load ptr, ptr %i.l, align 8, !tbaa !396, !nonnull !67, !align !125
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !39
  %i.up = mul nsw i32 %i.uo, %i.cs
  %i.uq = add nsw i32 %i.up, %i.ct
  %i.ur = load ptr, ptr %i.q, align 8, !tbaa !400, !nonnull !67, !align !125
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !39
  %i.ut = mul nsw i32 %i.uq, %i.us
  %i.uu = add nsw i32 %i.ut, %.0199338.i.i.i
  %i.uv = sext i32 %i.uu to i64
  %i.uw = mul i64 %i.um, %i.uv
  %i.ux = add i64 %i.uw, %i.tr                    ; 2 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %i.ux
  %i.uz = load ptr, ptr %i.az, align 8, !tbaa !432, !nonnull !67, !align !124
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !83
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.ux
  %i.vc = sext i32 %.0199338.i.i.i to i64
  %spec.select = select i1 %.not240.i.i.i, ptr null, ptr %i.uy
  %i.vd = xor i32 %.0199338.i.i.i, -1
  %i.ve = add i32 %..0213.i.i.i, %i.vd            ; 2 uses
  %i.vf = zext i32 %i.ve to i64
  %i.vg = mul i64 %i.tu, %i.vf
  %scevgep152 = getelementptr i8, ptr %scevgep151, i64 %i.vg
  %i.vh = zext i32 %i.ve to i64
  %i.vi = mul i64 %i.tw, %i.vh
  %scevgep205 = getelementptr i8, ptr %scevgep204, i64 %i.vi
  br label %.lr.ph336.i.i.i

bb.an:                                            ; preds = %.loopexit299.i.i.i, %.lr.ph317.i.i.i
  %i.vj = phi i32 [ %i.ud, %.lr.ph317.i.i.i ], [ %i.ug, %.loopexit299.i.i.i ] ; 4 uses
  %.0198315.i.i.i = phi i32 [ 0, %.lr.ph317.i.i.i ], [ %i.vk, %.loopexit299.i.i.i ] ; 5 uses
  %i.vk = add nuw nsw i32 %.0198315.i.i.i, 256    ; 3 uses
  %.252.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.vk, i32 %i.vj)
  %i.vl = load ptr, ptr %i.v, align 8, !tbaa !406, !nonnull !67
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !107, !range !66, !noundef !67
  %i.vn = trunc nuw i8 %i.vm to i1
  br i1 %i.vn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.vo = load ptr, ptr %i.ax, align 8, !tbaa !433, !nonnull !67, !align !124
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !111
  %i.vq = load ptr, ptr %i.ay, align 8, !tbaa !434, !nonnull !67, !align !125
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !39
  %i.vs = mul nsw i32 %i.vr, %i.cn
  %i.vt = load ptr, ptr %i.r, align 8, !tbaa !404, !nonnull !67, !align !125
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !39
  %i.vv = sdiv i32 %.1212345.i.i.i, %i.vu
  %i.vw = add nsw i32 %i.vv, %i.vs
  %i.vx = sext i32 %i.vw to i64
  %i.vy = load ptr, ptr %i.ar, align 8, !tbaa !428, !nonnull !67, !align !124
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !38
  %i.wa = mul i64 %i.vz, %i.vx
  %i.wb = load ptr, ptr %i.as, align 8, !tbaa !429, !nonnull !67, !align !125
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !39
  %i.wd = sext i32 %i.wc to i64
  %i.we = mul i64 %i.wa, %i.wd
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vp, i64 %i.we
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.wg = phi ptr [ %i.wf, %bb.ao ], [ %i.bu, %bb.an ]
  br i1 %i.to, label %.lr.ph314.i.i.i, label %.loopexit299.i.i.i

.lr.ph314.i.i.i:                                  ; preds = %bb.ap
  %i.wh = sub nsw i32 %.252.i.i.i, %.0198315.i.i.i
  %i.wi = icmp eq i32 %.0198315.i.i.i, 0
  %wide.trip.count97.i.i.i.i.i = zext nneg i32 %i.wh to i64
  br i1 %i.uf, label %.lr.ph.preheader.i.i.i, label %.loopexit299.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph314.i.i.i
  %i.wj = load ptr, ptr %i.r, align 8, !tbaa !404, !nonnull !67, !align !125
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !39
  %i.wl = mul nsw i32 %i.wk, %.0198315.i.i.i
  %i.wm = load ptr, ptr %i.as, align 8, !tbaa !429, !nonnull !67, !align !125
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !39 ; 2 uses
  %i.wo = mul nsw i32 %i.wl, %i.wn
  %i.wp = sext i32 %i.wo to i64
  %i.wq = getelementptr inbounds i8, ptr %i.wg, i64 %i.wp
  %.pre397.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !403
  %.pre398.i.i.i = load i32, ptr %.pre397.i.i.i, align 4, !tbaa !39
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i.i, %.lr.ph.preheader.i.i.i
  %i.wr = phi i32 [ %i.aba, %._crit_edge.i.i.i ], [ %i.wn, %.lr.ph.preheader.i.i.i ]
  %i.ws = phi i32 [ %i.aau, %._crit_edge.i.i.i ], [ %.pre398.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.wt = phi i32 [ %i.aax, %._crit_edge.i.i.i ], [ %i.vj, %.lr.ph.preheader.i.i.i ]
  %.0196312.i.i.i = phi i32 [ %i.xo, %._crit_edge.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.0197311.i.i.i = phi ptr [ %i.xt, %._crit_edge.i.i.i ], [ %i.wq, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.wu = load ptr, ptr %i.r, align 8, !tbaa !404, !nonnull !67, !align !125
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !39 ; 2 uses
  %i.ww = mul nsw i32 %i.wv, %.0196312.i.i.i      ; 2 uses
  %i.wx = sub nsw i32 %i.ep, %i.ww
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.wv, i32 %i.wx) ; 6 uses
  %i.wy = mul nsw i32 %i.wt, %.0199338.i.i.i
  %i.wz = mul nsw i32 %i.ws, %.0198315.i.i.i
  %i.xa = add nsw i32 %i.wy, %i.wz
  %i.xb = mul nsw i32 %i.xa, %i.wr
  %i.xc = sext i32 %i.xb to i64
  %i.xd = getelementptr inbounds i8, ptr %i.td, i64 %i.xc
  %i.xe = sext i32 %i.ww to i64
  %i.xf = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.xe
  %i.xg = icmp slt i32 %.sroa.speculated.i.i.i, 1
  %i.xh = zext i32 %.sroa.speculated.i.i.i to i64 ; 15 uses
  %i.xi = icmp sgt i32 %.sroa.speculated.i.i.i, 0
  %i.xj = shl nuw nsw i64 %i.xh, 2                ; 8 uses
  %i.xk = shl nuw nsw i64 %i.xh, 2
  %i.xl = shl nuw nsw i64 %i.xh, 2
  %i.xm = getelementptr i8, ptr %.0197311.i.i.i, i64 %i.xj
  %min.iters.check295 = icmp ult i32 %.sroa.speculated.i.i.i, 8
  %n.vec297 = and i64 %i.xh, 2147483640           ; 3 uses
  %cmp.n308 = icmp eq i64 %n.vec297, %i.xh
  %xtraiter = and i64 %i.xh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.xn = add nsw i64 %i.xh, -1
  %min.iters.check275 = icmp ult i32 %.sroa.speculated.i.i.i, 8
  %n.vec277 = and i64 %i.xh, 2147483640           ; 3 uses
  %cmp.n286 = icmp eq i64 %n.vec277, %i.xh
  %xtraiter325 = and i64 %i.xh, 3                 ; 2 uses
  %lcmp.mod326.not = icmp eq i64 %xtraiter325, 0
  br label %bb.aq

._crit_edge.i.i.i:                                ; preds = %_ZN2cv3dnn13convBlock_F32EiPKfS2_Pfibiii.exit.i.i.i
  %i.xo = add nuw nsw i32 %.0196312.i.i.i, 1      ; 2 uses
  %i.xp = load ptr, ptr %i.ar, align 8, !tbaa !428, !nonnull !67, !align !124
  %i.xq = load i64, ptr %i.xp, align 8, !tbaa !38
  %i.xr = sext i32 %i.aba to i64
  %i.xs = mul i64 %i.xq, %i.xr
  %i.xt = getelementptr inbounds nuw i8, ptr %.0197311.i.i.i, i64 %i.xs
  %exitcond.not.i.i.i = icmp eq i32 %i.xo, %i.es
  br i1 %exitcond.not.i.i.i, label %.loopexit299.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !353

bb.aq:                                            ; preds = %_ZN2cv3dnn13convBlock_F32EiPKfS2_Pfibiii.exit.i.i.i, %.lr.ph.i.i.i
  %i.xu = phi i32 [ %i.ws, %.lr.ph.i.i.i ], [ %i.aau, %_ZN2cv3dnn13convBlock_F32EiPKfS2_Pfibiii.exit.i.i.i ] ; 8 uses
  %.0193310.i.i.i = phi i32 [ %.0199338.i.i.i, %.lr.ph.i.i.i ], [ %i.aav, %_ZN2cv3dnn13convBlock_F32EiPKfS2_Pfibiii.exit.i.i.i ]
  %.0194307.i.i.i = phi ptr [ %i.xf, %.lr.ph.i.i.i ], [ %i.abg, %_ZN2cv3dnn13convBlock_F32EiPKfS2_Pfibiii.exit.i.i.i ] ; 7 uses
  %.0195306.i.i.i = phi ptr [ %i.xd, %.lr.ph.i.i.i ], [ %i.abd, %_ZN2cv3dnn13convBlock_F32EiPKfS2_Pfibiii.exit.i.i.i ] ; 2 uses
  %i.xv = load ptr, ptr %i.r, align 8, !tbaa !404, !nonnull !67, !align !125
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !39
  %i.xx = mul nsw i32 %i.xu, %.sroa.speculated.i.i.i ; 3 uses
  %i.xy = sext i32 %i.xx to i64                   ; 2 uses
  %i.xz = icmp slt i32 %i.xx, 0
  br i1 %i.xz, label %.noexc.i.i279.i.i.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i269.i.i.i

.noexc.i.i279.i.i.i:                              ; preds = %bb.aq
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #24
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i269.i.i.i: ; preds = %bb.aq
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.xx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i.i270.i.i.i, label %.noexc62.i.i.i.i.i

.noexc62.i.i.i.i.i:                               ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i269.i.i.i
  %i.ya = shl nuw nsw i64 %i.xy, 2                ; 2 uses
  %i.yb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ya) #21 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.yb, i8 0, i64 %i.ya, i1 false), !tbaa !99
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %i.xy
  %i.yd = ptrtoint ptr %i.yc to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i.i270.i.i.i

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i.i270.i.i.i: ; preds = %.noexc62.i.i.i.i.i, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i269.i.i.i
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i269.i.i.i ], [ %i.yd, %.noexc62.i.i.i.i.i ]
  %.sroa.063.0.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i269.i.i.i ], [ %i.yb, %.noexc62.i.i.i.i.i ] ; 12 uses
  %i.ye = icmp slt i32 %i.xu, 1
  %or.cond.reass.i.i.i = or i1 %i.xg, %i.ye
  br i1 %or.cond.reass.i.i.i, label %._crit_edge75.split.i.i.i.i.i, label %.preheader69.preheader.i.i.i.i.i

.preheader69.preheader.i.i.i.i.i:                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i.i270.i.i.i
  %i.yf = zext nneg i32 %i.xu to i64              ; 3 uses
  %i.yg = sext i32 %i.xw to i64                   ; 2 uses
  %i.yh = mul nuw i64 %i.xl, %i.yf
  %scevgep289 = getelementptr i8, ptr %.sroa.063.0.i.i.i.i.i, i64 %i.yh
  %i.yi = shl nsw i64 %i.yg, 2
  br label %.preheader69.i.i.i.i.i

.preheader69.i.i.i.i.i:                           ; preds = %._crit_edge73.i.i.i.i.i, %.preheader69.preheader.i.i.i.i.i
  %indvars.iv94.i.i.i.i.i = phi i64 [ 0, %.preheader69.preheader.i.i.i.i.i ], [ %indvars.iv.next95.i.i.i.i.i, %._crit_edge73.i.i.i.i.i ] ; 4 uses
  %i.yj = mul i64 %i.yi, %indvars.iv94.i.i.i.i.i
  %scevgep290 = getelementptr i8, ptr %i.xm, i64 %i.yj
  %i.yk = mul nuw nsw i64 %indvars.iv94.i.i.i.i.i, %i.yf
  %i.yl = mul nsw i64 %indvars.iv94.i.i.i.i.i, %i.yg
  %invariant.gep124.i.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %.0195306.i.i.i, i64 %i.yk
  %invariant.gep.i.i272.i.i.i = getelementptr [4 x i8], ptr %.0197311.i.i.i, i64 %i.yl ; 5 uses
  %bound0291 = icmp ult ptr %.sroa.063.0.i.i.i.i.i, %scevgep290
  %bound1292 = icmp ult ptr %invariant.gep.i.i272.i.i.i, %scevgep289
  %found.conflict293 = and i1 %bound0291, %bound1292
  br label %.lr.ph.i.i273.i.i.i

._crit_edge75.split.i.i.i.i.i:                    ; preds = %._crit_edge73.i.i.i.i.i, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i.i270.i.i.i
  %i.ym = icmp sgt i32 %i.xu, 0
  %or.cond86.i.i.i.i.i = and i1 %i.xi, %i.ym      ; 2 uses
  br i1 %i.wi, label %.preheader65.i.i.i.i.i, label %.preheader67.i.i.i.i.i

.preheader67.i.i.i.i.i:                           ; preds = %._crit_edge75.split.i.i.i.i.i
  br i1 %or.cond86.i.i.i.i.i, label %.preheader66.preheader.i.i.i.i.i, label %.loopexit.i.i271.i.i.i

.preheader66.preheader.i.i.i.i.i:                 ; preds = %.preheader67.i.i.i.i.i
  %wide.trip.count107.i.i.i.i.i = zext nneg i32 %i.xu to i64 ; 3 uses
  %scevgep267 = getelementptr i8, ptr %.0194307.i.i.i, i64 %i.xj
  %i.yn = add nsw i64 %wide.trip.count107.i.i.i.i.i, -1
  %i.yo = mul i64 %i.ty, %i.yn
  %scevgep268 = getelementptr i8, ptr %scevgep267, i64 %i.yo
  %i.yp = mul nuw i64 %i.xk, %wide.trip.count107.i.i.i.i.i
  %scevgep269 = getelementptr i8, ptr %.sroa.063.0.i.i.i.i.i, i64 %i.yp
  %bound0270 = icmp ult ptr %.0194307.i.i.i, %scevgep269
  %bound1271 = icmp ult ptr %.sroa.063.0.i.i.i.i.i, %scevgep268
  %found.conflict272 = and i1 %bound0270, %bound1271
  %i.yq = or i1 %found.conflict272, %stride.check273
  br label %.preheader66.i.i.i.i.i

.preheader65.i.i.i.i.i:                           ; preds = %._crit_edge75.split.i.i.i.i.i
  br i1 %or.cond86.i.i.i.i.i, label %.preheader.preheader.i.i.i.i.i, label %.loopexit.i.i271.i.i.i

.preheader.preheader.i.i.i.i.i:                   ; preds = %.preheader65.i.i.i.i.i
  %wide.trip.count114.i.i.i.i.i = zext nneg i32 %i.xu to i64 ; 2 uses
  %xtraiter327 = and i64 %wide.trip.count114.i.i.i.i.i, 1
  %i.yr = icmp eq i32 %i.xu, 1
  br i1 %i.yr, label %.preheader.i.i.i.i.i.epil.preheader, label %.preheader.preheader.i.i.i.i.i.new

.preheader.preheader.i.i.i.i.i.new:               ; preds = %.preheader.preheader.i.i.i.i.i
  %unroll_iter = and i64 %wide.trip.count114.i.i.i.i.i, 2147483646
  br label %.preheader.i.i.i.i.i

._crit_edge73.i.i.i.i.i:                          ; preds = %._crit_edge.i.i278.i.i.i
  %indvars.iv.next95.i.i.i.i.i = add nuw nsw i64 %indvars.iv94.i.i.i.i.i, 1 ; 2 uses
  %exitcond98.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next95.i.i.i.i.i, %wide.trip.count97.i.i.i.i.i
  br i1 %exitcond98.not.i.i.i.i.i, label %._crit_edge75.split.i.i.i.i.i, label %.preheader69.i.i.i.i.i, !llvm.loop !1

.lr.ph.i.i273.i.i.i:                              ; preds = %._crit_edge.i.i278.i.i.i, %.preheader69.i.i.i.i.i
  %indvars.iv89.i.i.i.i.i = phi i64 [ 0, %.preheader69.i.i.i.i.i ], [ %indvars.iv.next90.i.i.i.i.i, %._crit_edge.i.i278.i.i.i ] ; 3 uses
  %gep125.i.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep124.i.i.i.i.i, i64 %indvars.iv89.i.i.i.i.i
  %i.ys = load float, ptr %gep125.i.i.i.i.i, align 4, !tbaa !99 ; 4 uses
  %i.yt = mul nuw nsw i64 %indvars.iv89.i.i.i.i.i, %i.xh
  %invariant.gep122.i.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.063.0.i.i.i.i.i, i64 %i.yt ; 4 uses
  %brmerge350 = select i1 %min.iters.check295, i1 true, i1 %found.conflict293
  br i1 %brmerge350, label %scalar.ph294.preheader, label %vector.ph296

vector.ph296:                                     ; preds = %.lr.ph.i.i273.i.i.i
  %broadcast.splatinsert298 = insertelement <4 x float> poison, float %i.ys, i64 0
  %broadcast.splat299 = shufflevector <4 x float> %broadcast.splatinsert298, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph296
  %index301 = phi i64 [ 0, %vector.ph296 ], [ %index.next306, %vector.body300 ] ; 3 uses
  %i.yu = getelementptr [4 x i8], ptr %invariant.gep.i.i272.i.i.i, i64 %index301 ; 2 uses
  %i.yv = getelementptr i8, ptr %i.yu, i64 16
  %wide.load302 = load <4 x float>, ptr %i.yu, align 4, !tbaa !99, !alias.scope !450
  %wide.load303 = load <4 x float>, ptr %i.yv, align 4, !tbaa !99, !alias.scope !450
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep122.i.i.i.i.i, i64 %index301 ; 3 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16 ; 2 uses
  %wide.load304 = load <4 x float>, ptr %i.yw, align 4, !tbaa !99, !alias.scope !451, !noalias !450
  %wide.load305 = load <4 x float>, ptr %i.yx, align 4, !tbaa !99, !alias.scope !451, !noalias !450
  %i.yy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load302, <4 x float> %broadcast.splat299, <4 x float> %wide.load304)
  %i.yz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load303, <4 x float> %broadcast.splat299, <4 x float> %wide.load305)
  store <4 x float> %i.yy, ptr %i.yw, align 4, !tbaa !99, !alias.scope !451, !noalias !450
  store <4 x float> %i.yz, ptr %i.yx, align 4, !tbaa !99, !alias.scope !451, !noalias !450
  %index.next306 = add nuw i64 %index301, 8       ; 2 uses
  %i.za = icmp eq i64 %index.next306, %n.vec297
  br i1 %i.za, label %middle.block307, label %vector.body300, !llvm.loop !357

middle.block307:                                  ; preds = %vector.body300
  br i1 %cmp.n308, label %._crit_edge.i.i278.i.i.i, label %scalar.ph294.preheader

scalar.ph294.preheader:                           ; preds = %.lr.ph.i.i273.i.i.i, %middle.block307
  %indvars.iv.i.i274.i.i.i.ph = phi i64 [ %n.vec297, %middle.block307 ], [ 0, %.lr.ph.i.i273.i.i.i ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph294.prol.loopexit, label %scalar.ph294.prol

scalar.ph294.prol:                                ; preds = %scalar.ph294.preheader
  %gep.i.i275.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i272.i.i.i, i64 %indvars.iv.i.i274.i.i.i.ph
  %i.zb = load float, ptr %gep.i.i275.i.i.i.prol, align 4, !tbaa !99
  %gep123.i.i.i.i.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep122.i.i.i.i.i, i64 %indvars.iv.i.i274.i.i.i.ph ; 2 uses
  %i.zc = load float, ptr %gep123.i.i.i.i.i.prol, align 4, !tbaa !99
  %i.zd = tail call float @llvm.fmuladd.f32(float %i.zb, float %i.ys, float %i.zc)
  store float %i.zd, ptr %gep123.i.i.i.i.i.prol, align 4, !tbaa !99
  %indvars.iv.next.i.i276.i.i.i.prol = or disjoint i64 %indvars.iv.i.i274.i.i.i.ph, 1
  br label %scalar.ph294.prol.loopexit

scalar.ph294.prol.loopexit:                       ; preds = %scalar.ph294.prol, %scalar.ph294.preheader
  %indvars.iv.i.i274.i.i.i.unr = phi i64 [ %indvars.iv.i.i274.i.i.i.ph, %scalar.ph294.preheader ], [ %indvars.iv.next.i.i276.i.i.i.prol, %scalar.ph294.prol ]
  %i.ze = icmp eq i64 %indvars.iv.i.i274.i.i.i.ph, %i.xn
  br i1 %i.ze, label %._crit_edge.i.i278.i.i.i, label %scalar.ph294

._crit_edge.i.i278.i.i.i:                         ; preds = %scalar.ph294.prol.loopexit, %scalar.ph294, %middle.block307
  %indvars.iv.next90.i.i.i.i.i = add nuw nsw i64 %indvars.iv89.i.i.i.i.i, 1 ; 2 uses
  %exitcond93.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next90.i.i.i.i.i, %i.yf
  br i1 %exitcond93.not.i.i.i.i.i, label %._crit_edge73.i.i.i.i.i, label %.lr.ph.i.i273.i.i.i, !llvm.loop !2

scalar.ph294:                                     ; preds = %scalar.ph294.prol.loopexit, %scalar.ph294
  %indvars.iv.i.i274.i.i.i = phi i64 [ %indvars.iv.next.i.i276.i.i.i.1, %scalar.ph294 ], [ %indvars.iv.i.i274.i.i.i.unr, %scalar.ph294.prol.loopexit ] ; 4 uses
  %gep.i.i275.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i272.i.i.i, i64 %indvars.iv.i.i274.i.i.i
  %i.zf = load float, ptr %gep.i.i275.i.i.i, align 4, !tbaa !99
  %gep123.i.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep122.i.i.i.i.i, i64 %indvars.iv.i.i274.i.i.i ; 2 uses
  %i.zg = load float, ptr %gep123.i.i.i.i.i, align 4, !tbaa !99
  %i.zh = tail call float @llvm.fmuladd.f32(float %i.zf, float %i.ys, float %i.zg)
  store float %i.zh, ptr %gep123.i.i.i.i.i, align 4, !tbaa !99
  %indvars.iv.next.i.i276.i.i.i = add nuw nsw i64 %indvars.iv.i.i274.i.i.i, 1 ; 2 uses
  %gep.i.i275.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i272.i.i.i, i64 %indvars.iv.next.i.i276.i.i.i
  %i.zi = load float, ptr %gep.i.i275.i.i.i.1, align 4, !tbaa !99
  %gep123.i.i.i.i.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep122.i.i.i.i.i, i64 %indvars.iv.next.i.i276.i.i.i ; 2 uses
  %i.zj = load float, ptr %gep123.i.i.i.i.i.1, align 4, !tbaa !99
  %i.zk = tail call float @llvm.fmuladd.f32(float %i.zi, float %i.ys, float %i.zj)
  store float %i.zk, ptr %gep123.i.i.i.i.i.1, align 4, !tbaa !99
  %indvars.iv.next.i.i276.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i274.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i277.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i276.i.i.i.1, %i.xh
  br i1 %exitcond.not.i.i277.i.i.i.1, label %._crit_edge.i.i278.i.i.i, label %scalar.ph294, !llvm.loop !358

.preheader66.i.i.i.i.i:                           ; preds = %._crit_edge79.i.i.i.i.i, %.preheader66.preheader.i.i.i.i.i
  %indvars.iv104.i.i.i.i.i = phi i64 [ 0, %.preheader66.preheader.i.i.i.i.i ], [ %indvars.iv.next105.i.i.i.i.i, %._crit_edge79.i.i.i.i.i ] ; 3 uses
  %i.zl = mul nuw nsw i64 %indvars.iv104.i.i.i.i.i, %i.xh
  %i.zm = mul nsw i64 %indvars.iv104.i.i.i.i.i, %i.tp
  %invariant.gep126.i.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.063.0.i.i.i.i.i, i64 %i.zl ; 6 uses
  %invariant.gep128.i.i.i.i.i = getelementptr [4 x i8], ptr %.0194307.i.i.i, i64 %i.zm ; 6 uses
  %brmerge351 = select i1 %min.iters.check275, i1 true, i1 %i.yq
  br i1 %brmerge351, label %scalar.ph274.preheader, label %vector.body278

vector.body278:                                   ; preds = %.preheader66.i.i.i.i.i, %vector.body278
  %index279 = phi i64 [ %index.next284, %vector.body278 ], [ 0, %.preheader66.i.i.i.i.i ] ; 3 uses
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep126.i.i.i.i.i, i64 %index279 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 16
  %wide.load280 = load <4 x float>, ptr %i.zn, align 4, !tbaa !99, !alias.scope !452
  %wide.load281 = load <4 x float>, ptr %i.zo, align 4, !tbaa !99, !alias.scope !452
  %i.zp = getelementptr [4 x i8], ptr %invariant.gep128.i.i.i.i.i, i64 %index279 ; 3 uses
  %i.zq = getelementptr i8, ptr %i.zp, i64 16     ; 2 uses
  %wide.load282 = load <4 x float>, ptr %i.zp, align 4, !tbaa !99, !alias.scope !453, !noalias !452
  %wide.load283 = load <4 x float>, ptr %i.zq, align 4, !tbaa !99, !alias.scope !453, !noalias !452
  %i.zr = fadd <4 x float> %wide.load280, %wide.load282
  %i.zs = fadd <4 x float> %wide.load281, %wide.load283
  store <4 x float> %i.zr, ptr %i.zp, align 4, !tbaa !99, !alias.scope !453, !noalias !452
  store <4 x float> %i.zs, ptr %i.zq, align 4, !tbaa !99, !alias.scope !453, !noalias !452
  %index.next284 = add nuw i64 %index279, 8       ; 2 uses
  %i.zt = icmp eq i64 %index.next284, %n.vec277
  br i1 %i.zt, label %middle.block285, label %vector.body278, !llvm.loop !362

middle.block285:                                  ; preds = %vector.body278
  br i1 %cmp.n286, label %._crit_edge79.i.i.i.i.i, label %scalar.ph274.preheader

scalar.ph274.preheader:                           ; preds = %.preheader66.i.i.i.i.i, %middle.block285
  %indvars.iv99.i.i.i.i.i.ph = phi i64 [ %n.vec277, %middle.block285 ], [ 0, %.preheader66.i.i.i.i.i ] ; 3 uses
  br i1 %lcmp.mod326.not, label %scalar.ph274.prol.loopexit, label %scalar.ph274.prol

scalar.ph274.prol:                                ; preds = %scalar.ph274.preheader, %scalar.ph274.prol
  %indvars.iv99.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next100.i.i.i.i.i.prol, %scalar.ph274.prol ], [ %indvars.iv99.i.i.i.i.i.ph, %scalar.ph274.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph274.prol ], [ 0, %scalar.ph274.preheader ]
  %gep127.i.i.i.i.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep126.i.i.i.i.i, i64 %indvars.iv99.i.i.i.i.i.prol
  %i.zu = load float, ptr %gep127.i.i.i.i.i.prol, align 4, !tbaa !99
  %gep129.i.i.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep128.i.i.i.i.i, i64 %indvars.iv99.i.i.i.i.i.prol ; 2 uses
  %i.zv = load float, ptr %gep129.i.i.i.i.i.prol, align 4, !tbaa !99
  %i.zw = fadd float %i.zu, %i.zv
  store float %i.zw, ptr %gep129.i.i.i.i.i.prol, align 4, !tbaa !99
  %indvars.iv.next100.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv99.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter325
  br i1 %prol.iter.cmp.not, label %scalar.ph274.prol.loopexit, label %scalar.ph274.prol, !llvm.loop !363

scalar.ph274.prol.loopexit:                       ; preds = %scalar.ph274.prol, %scalar.ph274.preheader
  %indvars.iv99.i.i.i.i.i.unr = phi i64 [ %indvars.iv99.i.i.i.i.i.ph, %scalar.ph274.preheader ], [ %indvars.iv.next100.i.i.i.i.i.prol, %scalar.ph274.prol ]
  %i.zx = sub nsw i64 %indvars.iv99.i.i.i.i.i.ph, %i.xh
  %i.zy = icmp ugt i64 %i.zx, -4
  br i1 %i.zy, label %._crit_edge79.i.i.i.i.i, label %scalar.ph274

._crit_edge79.i.i.i.i.i:                          ; preds = %scalar.ph274.prol.loopexit, %scalar.ph274, %middle.block285
  %indvars.iv.next105.i.i.i.i.i = add nuw nsw i64 %indvars.iv104.i.i.i.i.i, 1 ; 2 uses
  %exitcond108.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next105.i.i.i.i.i, %wide.trip.count107.i.i.i.i.i
  br i1 %exitcond108.not.i.i.i.i.i, label %.loopexit.thread.i.i.i.i.i, label %.preheader66.i.i.i.i.i, !llvm.loop !3

end_hunk_0
