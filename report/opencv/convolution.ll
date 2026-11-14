Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/convolution?download=true
inline.NumInlined: 742
inline.NumDeleted: 316
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn11runFastConvERKNS0_11_InputArrayERKNS0_12_OutputArrayERKNS0_3PtrINS5_8FastConvEEEiRKNSC_INS5_14dnn5_v2026060515ActivationLayerEEERKSt6vectorIfSaIfEEbE3$_1E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 296
  %i.sp = load ptr, ptr %i.so, align 8
  tail call void %i.sp(ptr noundef nonnull align 8 dereferenceable(156) %i.ks, ptr noundef %i.jr, ptr noundef %i.jr, i32 noundef %i.ep, i64 noundef %i.sm, i32 noundef %i.ct, i32 noundef %i.eh), !inline_history !351
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
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267.i.i.i

bb.ak:                                            ; preds = %bb.ah
  %i.sr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ss = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.su = icmp eq ptr %i.ss, %i.st
  br i1 %i.su, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265.i.i.i: ; preds = %bb.ak
  %i.sv = load i64, ptr %i.st, align 8, !tbaa !36
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.ss, i64 noundef %i.sw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267.i.i.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265.i.i.i, %bb.aj
  %.pn238.i.i.i = phi { ptr, i32 } [ %i.sq, %bb.aj ], [ %i.sr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265.i.i.i ], [ %i.sr, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.at

bb.al:                                            ; preds = %bb.af
  %i.sx = load ptr, ptr %i.au, align 8, !tbaa !447, !nonnull !67, !align !125
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !39
  %i.sz = mul nsw i32 %i.sy, %i.ct
  %i.ta = load ptr, ptr %i.av, align 8, !tbaa !436, !nonnull !67, !align !125
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !39
  %i.tc = mul nsw i32 %i.sz, %i.tb
  %i.td = load ptr, ptr %i.as, align 8, !tbaa !429, !nonnull !67, !align !125
  %i.te = load i32, ptr %i.td, align 4, !tbaa !39
  %i.tf = mul nsw i32 %i.tc, %i.te
  %i.tg = sext i32 %i.tf to i64
  %i.th = getelementptr inbounds i8, ptr %i.im, i64 %i.tg
  %i.ti = getelementptr inbounds nuw i8, ptr %i.hr, i64 120
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !16
  %i.tk = load ptr, ptr %i.q, align 8, !tbaa !400, !nonnull !67, !align !125
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !39
  %i.tm = mul nsw i32 %i.tl, %i.ct
  %i.tn = sext i32 %i.tm to i64
  %i.to = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.tn
  %i.tp = load ptr, ptr %i.r, align 8, !tbaa !404, !nonnull !67, !align !125
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !39
  %i.tr = mul i32 %i.tq, %i.es                    ; 5 uses
  br i1 %i.ef, label %.lr.ph340.i.i.i, label %.loopexit303.i.i.i

.lr.ph340.i.i.i:                                  ; preds = %bb.al
  %i.ts = icmp sgt i32 %i.es, 0
  %i.tt = sext i32 %i.tr to i64                   ; 7 uses
  %i.tu = shl nsw i64 %i.tt, 2                    ; 3 uses
  %i.tv = sext i32 %.1212345.i.i.i to i64
  %i.tw = icmp sgt i32 %i.ep, 0                   ; 2 uses
  %.pre395.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !448
  %.pre396.i.i.i = load i32, ptr %.pre395.i.i.i, align 4, !tbaa !39
  %wide.trip.count.i.i.i = zext i32 %i.ep to i64  ; 17 uses
  %i.tx = shl nuw nsw i64 %wide.trip.count.i.i.i, 2 ; 5 uses
  %scevgep178 = getelementptr i8, ptr %scevgep177, i64 %i.tx
  %i.ty = shl nsw i64 %i.tt, 2
  %i.tz = mul nsw i64 %i.tt, -4                   ; 2 uses
  %scevgep255 = getelementptr i8, ptr %scevgep254, i64 %i.tx
  %i.ua = shl nsw i64 %i.tt, 2
  %i.ub = shl nsw i64 %i.tt, 2
  %stride.check337 = icmp slt i32 %i.tr, 0
  %min.iters.check301 = icmp ult i32 %i.ep, 8
  %n.vec307 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n318 = icmp eq i64 %n.vec307, %wide.trip.count.i.i.i
  %xtraiter398 = and i64 %wide.trip.count.i.i.i, 1
  %lcmp.mod399.not = icmp eq i64 %xtraiter398, 0
  %i.uc = add nsw i64 %wide.trip.count.i.i.i, -1
  %min.iters.check258 = icmp ult i32 %i.ep, 8
  %stride.check263 = icmp slt i32 %i.tr, 0
  %n.vec277 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n292 = icmp eq i64 %n.vec277, %wide.trip.count.i.i.i
  %min.iters.check215 = icmp ult i32 %i.ep, 8
  %n.vec219 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n228 = icmp eq i64 %n.vec219, %wide.trip.count.i.i.i
  %xtraiter401 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod402.not = icmp eq i64 %xtraiter401, 0
  %min.iters.check181 = icmp ult i32 %i.ep, 8
  %stride.check186 = icmp slt i32 %i.tr, 0
  %n.vec195 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n208 = icmp eq i64 %n.vec195, %wide.trip.count.i.i.i
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge337.i.i.i, %.lr.ph340.i.i.i
  %i.ud = phi i32 [ %.pre396.i.i.i, %.lr.ph340.i.i.i ], [ %i.abm, %._crit_edge337.i.i.i ]
  %.0199338.i.i.i = phi i32 [ %.0214.i.i.i, %.lr.ph340.i.i.i ], [ %i.abn, %._crit_edge337.i.i.i ] ; 9 uses
  %i.ue = add i32 %.0199338.i.i.i, %i.ud
  %..0213.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ue, i32 %.0213.i.i.i) ; 5 uses
  %i.uf = load ptr, ptr %i.av, align 8, !tbaa !436, !nonnull !67, !align !125
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !39 ; 2 uses
  %i.uh = icmp sgt i32 %i.ug, 0
  br i1 %i.uh, label %.lr.ph317.i.i.i, label %._crit_edge318.i.i.i

.lr.ph317.i.i.i:                                  ; preds = %bb.am
  %i.ui = icmp slt i32 %.0199338.i.i.i, %..0213.i.i.i
  br label %bb.an

.loopexit299.i.i.i:                               ; preds = %._crit_edge.i.i.i, %.lr.ph314.i.i.i, %bb.ap
  %i.uj = phi i32 [ %i.vm, %bb.ap ], [ %i.vm, %.lr.ph314.i.i.i ], [ %i.aba, %._crit_edge.i.i.i ] ; 2 uses
  %i.uk = icmp slt i32 %i.vn, %i.uj
  br i1 %i.uk, label %bb.an, label %._crit_edge318.i.i.i, !llvm.loop !352

._crit_edge318.i.i.i:                             ; preds = %.loopexit299.i.i.i, %bb.am
  %i.ul = icmp slt i32 %.0199338.i.i.i, %..0213.i.i.i
  br i1 %i.ul, label %.lr.ph336.preheader.i.i.i, label %._crit_edge337.i.i.i

.lr.ph336.preheader.i.i.i:                        ; preds = %._crit_edge318.i.i.i
  %i.um = load ptr, ptr %i.ba, align 8, !tbaa !449, !nonnull !67, !align !124
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !83 ; 2 uses
  %.not240.i.i.i = icmp eq ptr %i.un, null
  %i.uo = load ptr, ptr %i.s, align 8, !tbaa !401, !nonnull !67, !align !124
  %i.up = load i64, ptr %i.uo, align 8, !tbaa !38 ; 2 uses
  %i.uq = load ptr, ptr %i.l, align 8, !tbaa !396, !nonnull !67, !align !125
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !39
  %i.us = mul nsw i32 %i.ur, %i.cs
  %i.ut = add nsw i32 %i.us, %i.ct
  %i.uu = load ptr, ptr %i.q, align 8, !tbaa !400, !nonnull !67, !align !125
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !39
  %i.uw = mul nsw i32 %i.ut, %i.uv
  %i.ux = add nsw i32 %i.uw, %.0199338.i.i.i
  %i.uy = sext i32 %i.ux to i64
  %i.uz = mul i64 %i.up, %i.uy
  %i.va = add i64 %i.uz, %i.tv                    ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.va
  %i.vc = load ptr, ptr %i.az, align 8, !tbaa !432, !nonnull !67, !align !124
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !83
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %i.va
  %i.vf = sext i32 %.0199338.i.i.i to i64
  %spec.select = select i1 %.not240.i.i.i, ptr null, ptr %i.vb
  %i.vg = xor i32 %.0199338.i.i.i, -1
  %i.vh = add i32 %..0213.i.i.i, %i.vg            ; 2 uses
  %i.vi = zext i32 %i.vh to i64
  %i.vj = mul i64 %i.ty, %i.vi
  %scevgep179 = getelementptr i8, ptr %scevgep178, i64 %i.vj
  %i.vk = zext i32 %i.vh to i64
  %i.vl = mul i64 %i.ua, %i.vk
  %scevgep256 = getelementptr i8, ptr %scevgep255, i64 %i.vl
  br label %.lr.ph336.i.i.i

bb.an:                                            ; preds = %.loopexit299.i.i.i, %.lr.ph317.i.i.i
  %i.vm = phi i32 [ %i.ug, %.lr.ph317.i.i.i ], [ %i.uj, %.loopexit299.i.i.i ] ; 4 uses
  %.0198315.i.i.i = phi i32 [ 0, %.lr.ph317.i.i.i ], [ %i.vn, %.loopexit299.i.i.i ] ; 5 uses
  %i.vn = add nuw nsw i32 %.0198315.i.i.i, 256    ; 3 uses
  %.252.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.vn, i32 %i.vm)
  %i.vo = load ptr, ptr %i.v, align 8, !tbaa !406, !nonnull !67
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !107, !range !66, !noundef !67
  %i.vq = trunc nuw i8 %i.vp to i1
  br i1 %i.vq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.vr = load ptr, ptr %i.ax, align 8, !tbaa !433, !nonnull !67, !align !124
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !111
  %i.vt = load ptr, ptr %i.ay, align 8, !tbaa !434, !nonnull !67, !align !125
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !39
  %i.vv = mul nsw i32 %i.vu, %i.cn
  %i.vw = load ptr, ptr %i.r, align 8, !tbaa !404, !nonnull !67, !align !125
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !39
  %i.vy = sdiv i32 %.1212345.i.i.i, %i.vx
  %i.vz = add nsw i32 %i.vy, %i.vv
  %i.wa = sext i32 %i.vz to i64
  %i.wb = load ptr, ptr %i.ar, align 8, !tbaa !428, !nonnull !67, !align !124
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !38
  %i.wd = mul i64 %i.wc, %i.wa
  %i.we = load ptr, ptr %i.as, align 8, !tbaa !429, !nonnull !67, !align !125
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !39
  %i.wg = sext i32 %i.wf to i64
  %i.wh = mul i64 %i.wd, %i.wg
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vs, i64 %i.wh
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.wj = phi ptr [ %i.wi, %bb.ao ], [ %i.bu, %bb.an ]
  br i1 %i.ts, label %.lr.ph314.i.i.i, label %.loopexit299.i.i.i

.lr.ph314.i.i.i:                                  ; preds = %bb.ap
  %i.wk = sub nsw i32 %.252.i.i.i, %.0198315.i.i.i
  %i.wl = icmp eq i32 %.0198315.i.i.i, 0
  %wide.trip.count97.i.i.i.i.i = zext nneg i32 %i.wk to i64
  br i1 %i.ui, label %.lr.ph.preheader.i.i.i, label %.loopexit299.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph314.i.i.i
  %i.wm = load ptr, ptr %i.r, align 8, !tbaa !404, !nonnull !67, !align !125
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !39
  %i.wo = mul nsw i32 %i.wn, %.0198315.i.i.i
  %i.wp = load ptr, ptr %i.as, align 8, !tbaa !429, !nonnull !67, !align !125
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !39 ; 2 uses
  %i.wr = mul nsw i32 %i.wo, %i.wq
  %i.ws = sext i32 %i.wr to i64
  %i.wt = getelementptr inbounds i8, ptr %i.wj, i64 %i.ws
  %.pre397.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !403
  %.pre398.i.i.i = load i32, ptr %.pre397.i.i.i, align 4, !tbaa !39
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i.i, %.lr.ph.preheader.i.i.i
  %i.wu = phi i32 [ %i.abd, %._crit_edge.i.i.i ], [ %i.wq, %.lr.ph.preheader.i.i.i ]
  %i.wv = phi i32 [ %i.aax, %._crit_edge.i.i.i ], [ %.pre398.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.ww = phi i32 [ %i.aba, %._crit_edge.i.i.i ], [ %i.vm, %.lr.ph.preheader.i.i.i ]
  %.0196312.i.i.i = phi i32 [ %i.xr, %._crit_edge.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.0197311.i.i.i = phi ptr [ %i.xw, %._crit_edge.i.i.i ], [ %i.wt, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.wx = load ptr, ptr %i.r, align 8, !tbaa !404, !nonnull !67, !align !125
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !39 ; 2 uses
  %i.wz = mul nsw i32 %i.wy, %.0196312.i.i.i      ; 2 uses
  %i.xa = sub nsw i32 %i.ep, %i.wz
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.wy, i32 %i.xa) ; 6 uses
  %i.xb = mul nsw i32 %i.ww, %.0199338.i.i.i
  %i.xc = mul nsw i32 %i.wv, %.0198315.i.i.i
  %i.xd = add nsw i32 %i.xb, %i.xc
  %i.xe = mul nsw i32 %i.xd, %i.wu
  %i.xf = sext i32 %i.xe to i64
  %i.xg = getelementptr inbounds i8, ptr %i.th, i64 %i.xf
  %i.xh = sext i32 %i.wz to i64
  %i.xi = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.xh
  %i.xj = icmp slt i32 %.sroa.speculated.i.i.i, 1
  %i.xk = zext i32 %.sroa.speculated.i.i.i to i64 ; 15 uses
  %i.xl = icmp sgt i32 %.sroa.speculated.i.i.i, 0
  %i.xm = shl nuw nsw i64 %i.xk, 2                ; 8 uses
  %i.xn = shl nuw nsw i64 %i.xk, 2
  %i.xo = shl nuw nsw i64 %i.xk, 2
  %i.xp = getelementptr i8, ptr %.0197311.i.i.i, i64 %i.xm
  %min.iters.check359 = icmp ult i32 %.sroa.speculated.i.i.i, 8
  %n.vec365 = and i64 %i.xk, 2147483640           ; 3 uses
  %cmp.n376 = icmp eq i64 %n.vec365, %i.xk
  %xtraiter = and i64 %i.xk, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.xq = add nsw i64 %i.xk, -1
  %min.iters.check332 = icmp ult i32 %.sroa.speculated.i.i.i, 8
  %n.vec339 = and i64 %i.xk, 2147483640           ; 3 uses
  %cmp.n348 = icmp eq i64 %n.vec339, %i.xk
  %xtraiter393 = and i64 %i.xk, 3                 ; 2 uses
  %lcmp.mod394.not = icmp eq i64 %xtraiter393, 0
  br label %bb.aq

._crit_edge.i.i.i:                                ; preds = %_ZN2cv3dnn13convBlock_F32EiPKfS2_Pfibiii.exit.i.i.i
  %i.xr = add nuw nsw i32 %.0196312.i.i.i, 1      ; 2 uses
  %i.xs = load ptr, ptr %i.ar, align 8, !tbaa !428, !nonnull !67, !align !124
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !38
  %i.xu = sext i32 %i.abd to i64
  %i.xv = mul i64 %i.xt, %i.xu
  %i.xw = getelementptr inbounds nuw i8, ptr %.0197311.i.i.i, i64 %i.xv
  %exitcond.not.i.i.i = icmp eq i32 %i.xr, %i.es
  br i1 %exitcond.not.i.i.i, label %.loopexit299.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !353

bb.aq:                                            ; preds = %_ZN2cv3dnn13convBlock_F32EiPKfS2_Pfibiii.exit.i.i.i, %.lr.ph.i.i.i
  %i.xx = phi i32 [ %i.wv, %.lr.ph.i.i.i ], [ %i.aax, %_ZN2cv3dnn13convBlock_F32EiPKfS2_Pfibiii.exit.i.i.i ] ; 8 uses
  %.0193310.i.i.i = phi i32 [ %.0199338.i.i.i, %.lr.ph.i.i.i ], [ %i.aay, %_ZN2cv3dnn13convBlock_F32EiPKfS2_Pfibiii.exit.i.i.i ]
  %.0194307.i.i.i = phi ptr [ %i.xi, %.lr.ph.i.i.i ], [ %i.abj, %_ZN2cv3dnn13convBlock_F32EiPKfS2_Pfibiii.exit.i.i.i ] ; 7 uses
  %.0195306.i.i.i = phi ptr [ %i.xg, %.lr.ph.i.i.i ], [ %i.abg, %_ZN2cv3dnn13convBlock_F32EiPKfS2_Pfibiii.exit.i.i.i ] ; 2 uses
  %i.xy = load ptr, ptr %i.r, align 8, !tbaa !404, !nonnull !67, !align !125
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !39
  %i.ya = mul nsw i32 %i.xx, %.sroa.speculated.i.i.i ; 3 uses
  %i.yb = sext i32 %i.ya to i64                   ; 2 uses
  %i.yc = icmp slt i32 %i.ya, 0
  br i1 %i.yc, label %.noexc.i.i279.i.i.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i269.i.i.i

.noexc.i.i279.i.i.i:                              ; preds = %bb.aq
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #24
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i269.i.i.i: ; preds = %bb.aq
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ya, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i.i270.i.i.i, label %.noexc62.i.i.i.i.i

.noexc62.i.i.i.i.i:                               ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i269.i.i.i
  %i.yd = shl nuw nsw i64 %i.yb, 2                ; 2 uses
  %i.ye = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yd) #21 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ye, i8 0, i64 %i.yd, i1 false), !tbaa !99
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %i.yb
  %i.yg = ptrtoint ptr %i.yf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i.i270.i.i.i

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i.i270.i.i.i: ; preds = %.noexc62.i.i.i.i.i, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i269.i.i.i
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i269.i.i.i ], [ %i.yg, %.noexc62.i.i.i.i.i ]
  %.sroa.063.0.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i269.i.i.i ], [ %i.ye, %.noexc62.i.i.i.i.i ] ; 12 uses
  %i.yh = icmp slt i32 %i.xx, 1
  %or.cond.reass.i.i.i = or i1 %i.xj, %i.yh
  br i1 %or.cond.reass.i.i.i, label %._crit_edge75.split.i.i.i.i.i, label %.preheader69.preheader.i.i.i.i.i

.preheader69.preheader.i.i.i.i.i:                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i.i270.i.i.i
  %i.yi = zext nneg i32 %i.xx to i64              ; 3 uses
  %i.yj = sext i32 %i.xz to i64                   ; 2 uses
  %i.yk = shl nsw i64 %i.yj, 2
  %i.yl = mul nuw i64 %i.xo, %i.yi
  %scevgep357 = getelementptr i8, ptr %.sroa.063.0.i.i.i.i.i, i64 %i.yl
  br label %.preheader69.i.i.i.i.i

.preheader69.i.i.i.i.i:                           ; preds = %._crit_edge73.i.i.i.i.i, %.preheader69.preheader.i.i.i.i.i
  %indvars.iv94.i.i.i.i.i = phi i64 [ 0, %.preheader69.preheader.i.i.i.i.i ], [ %indvars.iv.next95.i.i.i.i.i, %._crit_edge73.i.i.i.i.i ] ; 4 uses
  %i.ym = mul i64 %i.yk, %indvars.iv94.i.i.i.i.i
  %scevgep356 = getelementptr i8, ptr %i.xp, i64 %i.ym
  %i.yn = mul nuw nsw i64 %indvars.iv94.i.i.i.i.i, %i.yi
  %i.yo = mul nsw i64 %indvars.iv94.i.i.i.i.i, %i.yj
  %invariant.gep124.i.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %.0195306.i.i.i, i64 %i.yn
  %invariant.gep.i.i272.i.i.i = getelementptr [4 x i8], ptr %.0197311.i.i.i, i64 %i.yo ; 5 uses
  %bound0361 = icmp ult ptr %.sroa.063.0.i.i.i.i.i, %scevgep356
  %bound1362 = icmp ult ptr %invariant.gep.i.i272.i.i.i, %scevgep357
  %found.conflict363 = and i1 %bound0361, %bound1362
  br label %.lr.ph.i.i273.i.i.i

._crit_edge75.split.i.i.i.i.i:                    ; preds = %._crit_edge73.i.i.i.i.i, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i.i270.i.i.i
  %i.yp = icmp sgt i32 %i.xx, 0
  %or.cond86.i.i.i.i.i = and i1 %i.xl, %i.yp      ; 2 uses
  br i1 %i.wl, label %.preheader65.i.i.i.i.i, label %.preheader67.i.i.i.i.i

.preheader67.i.i.i.i.i:                           ; preds = %._crit_edge75.split.i.i.i.i.i
  br i1 %or.cond86.i.i.i.i.i, label %.preheader66.preheader.i.i.i.i.i, label %.loopexit.i.i271.i.i.i

.preheader66.preheader.i.i.i.i.i:                 ; preds = %.preheader67.i.i.i.i.i
  %wide.trip.count107.i.i.i.i.i = zext nneg i32 %i.xx to i64 ; 3 uses
  %i.yq = mul nuw i64 %i.xn, %wide.trip.count107.i.i.i.i.i
  %scevgep328 = getelementptr i8, ptr %.sroa.063.0.i.i.i.i.i, i64 %i.yq
  %scevgep329 = getelementptr i8, ptr %.0194307.i.i.i, i64 %i.xm
  %i.yr = add nsw i64 %wide.trip.count107.i.i.i.i.i, -1
  %i.ys = mul i64 %i.ub, %i.yr
  %scevgep330 = getelementptr i8, ptr %scevgep329, i64 %i.ys
  %bound0334 = icmp ult ptr %.0194307.i.i.i, %scevgep328
  %bound1335 = icmp ult ptr %.sroa.063.0.i.i.i.i.i, %scevgep330
  %found.conflict336 = and i1 %bound0334, %bound1335
  %i.yt = or i1 %found.conflict336, %stride.check337
  br label %.preheader66.i.i.i.i.i

.preheader65.i.i.i.i.i:                           ; preds = %._crit_edge75.split.i.i.i.i.i
  br i1 %or.cond86.i.i.i.i.i, label %.preheader.preheader.i.i.i.i.i, label %.loopexit.i.i271.i.i.i

.preheader.preheader.i.i.i.i.i:                   ; preds = %.preheader65.i.i.i.i.i
  %wide.trip.count114.i.i.i.i.i = zext nneg i32 %i.xx to i64 ; 2 uses
  %xtraiter395 = and i64 %wide.trip.count114.i.i.i.i.i, 1
  %i.yu = icmp eq i32 %i.xx, 1
  br i1 %i.yu, label %.preheader.i.i.i.i.i.epil.preheader, label %.preheader.preheader.i.i.i.i.i.new

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
  %i.yv = load float, ptr %gep125.i.i.i.i.i, align 4, !tbaa !99 ; 4 uses
  %i.yw = mul nuw nsw i64 %indvars.iv89.i.i.i.i.i, %i.xk
  %invariant.gep122.i.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.063.0.i.i.i.i.i, i64 %i.yw ; 4 uses
  %brmerge418 = select i1 %min.iters.check359, i1 true, i1 %found.conflict363
  br i1 %brmerge418, label %scalar.ph358.preheader, label %vector.ph364

vector.ph364:                                     ; preds = %.lr.ph.i.i273.i.i.i
  %broadcast.splatinsert366 = insertelement <4 x float> poison, float %i.yv, i64 0
  %broadcast.splat367 = shufflevector <4 x float> %broadcast.splatinsert366, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph364
  %index369 = phi i64 [ 0, %vector.ph364 ], [ %index.next374, %vector.body368 ] ; 3 uses
  %i.yx = getelementptr [4 x i8], ptr %invariant.gep.i.i272.i.i.i, i64 %index369 ; 2 uses
  %i.yy = getelementptr i8, ptr %i.yx, i64 16
  %wide.load370 = load <4 x float>, ptr %i.yx, align 4, !tbaa !99, !alias.scope !450
  %wide.load371 = load <4 x float>, ptr %i.yy, align 4, !tbaa !99, !alias.scope !450
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep122.i.i.i.i.i, i64 %index369 ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 16 ; 2 uses
  %wide.load372 = load <4 x float>, ptr %i.yz, align 4, !tbaa !99, !alias.scope !451, !noalias !450
  %wide.load373 = load <4 x float>, ptr %i.za, align 4, !tbaa !99, !alias.scope !451, !noalias !450
  %i.zb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load370, <4 x float> %broadcast.splat367, <4 x float> %wide.load372)
  %i.zc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load371, <4 x float> %broadcast.splat367, <4 x float> %wide.load373)
  store <4 x float> %i.zb, ptr %i.yz, align 4, !tbaa !99, !alias.scope !451, !noalias !450
  store <4 x float> %i.zc, ptr %i.za, align 4, !tbaa !99, !alias.scope !451, !noalias !450
  %index.next374 = add nuw i64 %index369, 8       ; 2 uses
  %i.zd = icmp eq i64 %index.next374, %n.vec365
  br i1 %i.zd, label %middle.block375, label %vector.body368, !llvm.loop !357

middle.block375:                                  ; preds = %vector.body368
  br i1 %cmp.n376, label %._crit_edge.i.i278.i.i.i, label %scalar.ph358.preheader

scalar.ph358.preheader:                           ; preds = %.lr.ph.i.i273.i.i.i, %middle.block375
  %indvars.iv.i.i274.i.i.i.ph = phi i64 [ %n.vec365, %middle.block375 ], [ 0, %.lr.ph.i.i273.i.i.i ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph358.prol.loopexit, label %scalar.ph358.prol

scalar.ph358.prol:                                ; preds = %scalar.ph358.preheader
  %gep.i.i275.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i272.i.i.i, i64 %indvars.iv.i.i274.i.i.i.ph
  %i.ze = load float, ptr %gep.i.i275.i.i.i.prol, align 4, !tbaa !99
  %gep123.i.i.i.i.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep122.i.i.i.i.i, i64 %indvars.iv.i.i274.i.i.i.ph ; 2 uses
  %i.zf = load float, ptr %gep123.i.i.i.i.i.prol, align 4, !tbaa !99
  %i.zg = tail call float @llvm.fmuladd.f32(float %i.ze, float %i.yv, float %i.zf)
  store float %i.zg, ptr %gep123.i.i.i.i.i.prol, align 4, !tbaa !99
  %indvars.iv.next.i.i276.i.i.i.prol = or disjoint i64 %indvars.iv.i.i274.i.i.i.ph, 1
  br label %scalar.ph358.prol.loopexit

scalar.ph358.prol.loopexit:                       ; preds = %scalar.ph358.prol, %scalar.ph358.preheader
  %indvars.iv.i.i274.i.i.i.unr = phi i64 [ %indvars.iv.i.i274.i.i.i.ph, %scalar.ph358.preheader ], [ %indvars.iv.next.i.i276.i.i.i.prol, %scalar.ph358.prol ]
  %i.zh = icmp eq i64 %indvars.iv.i.i274.i.i.i.ph, %i.xq
  br i1 %i.zh, label %._crit_edge.i.i278.i.i.i, label %scalar.ph358

._crit_edge.i.i278.i.i.i:                         ; preds = %scalar.ph358.prol.loopexit, %scalar.ph358, %middle.block375
  %indvars.iv.next90.i.i.i.i.i = add nuw nsw i64 %indvars.iv89.i.i.i.i.i, 1 ; 2 uses
  %exitcond93.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next90.i.i.i.i.i, %i.yi
  br i1 %exitcond93.not.i.i.i.i.i, label %._crit_edge73.i.i.i.i.i, label %.lr.ph.i.i273.i.i.i, !llvm.loop !2

scalar.ph358:                                     ; preds = %scalar.ph358.prol.loopexit, %scalar.ph358
  %indvars.iv.i.i274.i.i.i = phi i64 [ %indvars.iv.next.i.i276.i.i.i.1, %scalar.ph358 ], [ %indvars.iv.i.i274.i.i.i.unr, %scalar.ph358.prol.loopexit ] ; 4 uses
  %gep.i.i275.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i272.i.i.i, i64 %indvars.iv.i.i274.i.i.i
  %i.zi = load float, ptr %gep.i.i275.i.i.i, align 4, !tbaa !99
  %gep123.i.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep122.i.i.i.i.i, i64 %indvars.iv.i.i274.i.i.i ; 2 uses
  %i.zj = load float, ptr %gep123.i.i.i.i.i, align 4, !tbaa !99
  %i.zk = tail call float @llvm.fmuladd.f32(float %i.zi, float %i.yv, float %i.zj)
  store float %i.zk, ptr %gep123.i.i.i.i.i, align 4, !tbaa !99
  %indvars.iv.next.i.i276.i.i.i = add nuw nsw i64 %indvars.iv.i.i274.i.i.i, 1 ; 2 uses
  %gep.i.i275.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i272.i.i.i, i64 %indvars.iv.next.i.i276.i.i.i
  %i.zl = load float, ptr %gep.i.i275.i.i.i.1, align 4, !tbaa !99
  %gep123.i.i.i.i.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep122.i.i.i.i.i, i64 %indvars.iv.next.i.i276.i.i.i ; 2 uses
  %i.zm = load float, ptr %gep123.i.i.i.i.i.1, align 4, !tbaa !99
  %i.zn = tail call float @llvm.fmuladd.f32(float %i.zl, float %i.yv, float %i.zm)
  store float %i.zn, ptr %gep123.i.i.i.i.i.1, align 4, !tbaa !99
  %indvars.iv.next.i.i276.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i274.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i277.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i276.i.i.i.1, %i.xk
  br i1 %exitcond.not.i.i277.i.i.i.1, label %._crit_edge.i.i278.i.i.i, label %scalar.ph358, !llvm.loop !358

.preheader66.i.i.i.i.i:                           ; preds = %._crit_edge79.i.i.i.i.i, %.preheader66.preheader.i.i.i.i.i
  %indvars.iv104.i.i.i.i.i = phi i64 [ 0, %.preheader66.preheader.i.i.i.i.i ], [ %indvars.iv.next105.i.i.i.i.i, %._crit_edge79.i.i.i.i.i ] ; 3 uses
  %i.zo = mul nuw nsw i64 %indvars.iv104.i.i.i.i.i, %i.xk
  %i.zp = mul nsw i64 %indvars.iv104.i.i.i.i.i, %i.tt
  %invariant.gep126.i.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.063.0.i.i.i.i.i, i64 %i.zo ; 6 uses
  %invariant.gep128.i.i.i.i.i = getelementptr [4 x i8], ptr %.0194307.i.i.i, i64 %i.zp ; 6 uses
  %brmerge419 = select i1 %min.iters.check332, i1 true, i1 %i.yt
  br i1 %brmerge419, label %scalar.ph331.preheader, label %vector.body340

vector.body340:                                   ; preds = %.preheader66.i.i.i.i.i, %vector.body340
  %index341 = phi i64 [ %index.next346, %vector.body340 ], [ 0, %.preheader66.i.i.i.i.i ] ; 3 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep126.i.i.i.i.i, i64 %index341 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  %wide.load342 = load <4 x float>, ptr %i.zq, align 4, !tbaa !99, !alias.scope !452
  %wide.load343 = load <4 x float>, ptr %i.zr, align 4, !tbaa !99, !alias.scope !452
  %i.zs = getelementptr [4 x i8], ptr %invariant.gep128.i.i.i.i.i, i64 %index341 ; 3 uses
  %i.zt = getelementptr i8, ptr %i.zs, i64 16     ; 2 uses
  %wide.load344 = load <4 x float>, ptr %i.zs, align 4, !tbaa !99, !alias.scope !453, !noalias !452
  %wide.load345 = load <4 x float>, ptr %i.zt, align 4, !tbaa !99, !alias.scope !453, !noalias !452
  %i.zu = fadd <4 x float> %wide.load342, %wide.load344
  %i.zv = fadd <4 x float> %wide.load343, %wide.load345
  store <4 x float> %i.zu, ptr %i.zs, align 4, !tbaa !99, !alias.scope !453, !noalias !452
  store <4 x float> %i.zv, ptr %i.zt, align 4, !tbaa !99, !alias.scope !453, !noalias !452
  %index.next346 = add nuw i64 %index341, 8       ; 2 uses
  %i.zw = icmp eq i64 %index.next346, %n.vec339
  br i1 %i.zw, label %middle.block347, label %vector.body340, !llvm.loop !362

middle.block347:                                  ; preds = %vector.body340
  br i1 %cmp.n348, label %._crit_edge79.i.i.i.i.i, label %scalar.ph331.preheader

scalar.ph331.preheader:                           ; preds = %.preheader66.i.i.i.i.i, %middle.block347
  %indvars.iv99.i.i.i.i.i.ph = phi i64 [ %n.vec339, %middle.block347 ], [ 0, %.preheader66.i.i.i.i.i ] ; 3 uses
  br i1 %lcmp.mod394.not, label %scalar.ph331.prol.loopexit, label %scalar.ph331.prol

scalar.ph331.prol:                                ; preds = %scalar.ph331.preheader, %scalar.ph331.prol
  %indvars.iv99.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next100.i.i.i.i.i.prol, %scalar.ph331.prol ], [ %indvars.iv99.i.i.i.i.i.ph, %scalar.ph331.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph331.prol ], [ 0, %scalar.ph331.preheader ]
  %gep127.i.i.i.i.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep126.i.i.i.i.i, i64 %indvars.iv99.i.i.i.i.i.prol
  %i.zx = load float, ptr %gep127.i.i.i.i.i.prol, align 4, !tbaa !99
  %gep129.i.i.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep128.i.i.i.i.i, i64 %indvars.iv99.i.i.i.i.i.prol ; 2 uses
  %i.zy = load float, ptr %gep129.i.i.i.i.i.prol, align 4, !tbaa !99
  %i.zz = fadd float %i.zx, %i.zy
  store float %i.zz, ptr %gep129.i.i.i.i.i.prol, align 4, !tbaa !99
  %indvars.iv.next100.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv99.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter393
  br i1 %prol.iter.cmp.not, label %scalar.ph331.prol.loopexit, label %scalar.ph331.prol, !llvm.loop !363

scalar.ph331.prol.loopexit:                       ; preds = %scalar.ph331.prol, %scalar.ph331.preheader
  %indvars.iv99.i.i.i.i.i.unr = phi i64 [ %indvars.iv99.i.i.i.i.i.ph, %scalar.ph331.preheader ], [ %indvars.iv.next100.i.i.i.i.i.prol, %scalar.ph331.prol ]
  %i.aaa = sub nsw i64 %indvars.iv99.i.i.i.i.i.ph, %i.xk
  %i.aab = icmp ugt i64 %i.aaa, -4
  br i1 %i.aab, label %._crit_edge79.i.i.i.i.i, label %scalar.ph331

._crit_edge79.i.i.i.i.i:                          ; preds = %scalar.ph331.prol.loopexit, %scalar.ph331, %middle.block347
  %indvars.iv.next105.i.i.i.i.i = add nuw nsw i64 %indvars.iv104.i.i.i.i.i, 1 ; 2 uses
  %exitcond108.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next105.i.i.i.i.i, %wide.trip.count107.i.i.i.i.i
  br i1 %exitcond108.not.i.i.i.i.i, label %.loopexit.thread.i.i.i.i.i, label %.preheader66.i.i.i.i.i, !llvm.loop !3

end_hunk_0
