Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fuzzy_F0_math?download=true
inline.NumInlined: 545
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv2ft16FT02D_FL_processERKNS_11_InputArrayEiRKNS_12_OutputArrayE:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.m, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !19
  store ptr %5, ptr %i.l, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %1, i32 noundef %i.k, i32 noundef %1, i32 noundef %i.k, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.h unwind label %bb.t

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #18
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %8, i64 208
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.1) #18
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %8, i64 416
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.2) #18
  invoke void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull %8)
          to label %bb.i unwind label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 440
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 232
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !28   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = sdiv i32 %i.u, %1                        ; 2 uses
  %i.y = add nsw i32 %i.x, 1                      ; 3 uses
  %i.z = sdiv i32 %i.w, %1
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = mul nsw i32 %i.aa, %i.y                 ; 3 uses
  %i.ac = sext i32 %i.ab to i64                   ; 7 uses
  %i.ad = icmp slt i32 %i.ab, 0
  br i1 %i.ad, label %bb.j, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit242, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #21
          to label %.noexc228 unwind label %bb.u  ; 7 uses

.noexc228:                                        ; preds = %bb.k
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ac  ; 4 uses
  store i8 0, ptr %i.ae, align 1, !tbaa !16
  %i.ag = add nsw i64 %i.ac, -1                   ; 4 uses
  %i.ah = icmp eq i64 %i.ag, 0                    ; 3 uses
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.noexc228
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ai, i8 0, i64 %i.ag, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %.noexc228, %bb.l
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #21
          to label %.noexc234 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit268.thread ; 6 uses

.noexc234:                                        ; preds = %bb.m
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ac  ; 3 uses
  store i8 0, ptr %i.aj, align 1, !tbaa !16
  br i1 %i.ah, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.noexc234
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.al, i8 0, i64 %i.ag, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %.noexc234, %bb.n
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #21
          to label %.noexc241 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit266.thread ; 5 uses

.noexc241:                                        ; preds = %bb.o
  %i.an = getelementptr i8, ptr %i.am, i64 %i.ac  ; 2 uses
  store i8 0, ptr %i.am, align 1, !tbaa !16
  br i1 %i.ah, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit242, label %bb.p

bb.p:                                             ; preds = %.noexc241
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ao, i8 0, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit242

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit242:            ; preds = %bb.p, %.noexc241, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14295.0358 = phi ptr [ %i.ak, %bb.p ], [ %i.ak, %.noexc241 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0287.0348 = phi ptr [ %i.aj, %bb.p ], [ %i.aj, %.noexc241 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  %.sroa.14306.0319338 = phi ptr [ %i.af, %bb.p ], [ %i.af, %.noexc241 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.sroa.0298.0330336 = phi ptr [ %i.ae, %bb.p ], [ %i.ae, %.noexc241 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  %.sroa.0278.0 = phi ptr [ %i.am, %bb.p ], [ %i.am, %.noexc241 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 13 uses
  %.sroa.14.0 = phi ptr [ %i.an, %bb.p ], [ %i.an, %.noexc241 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.ap = add i32 %1, 1                           ; 4 uses
  %i.aq = sext i32 %i.ap to i64                   ; 3 uses
  %i.ar = icmp slt i32 %1, -1
  br i1 %i.ar, label %bb.q, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit242
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
          to label %.noexc245 unwind label %bb.v

.noexc245:                                        ; preds = %bb.q
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit242
  %.not.i.i.i.i243 = icmp eq i32 %i.ap, 0         ; 2 uses
  br i1 %.not.i.i.i.i243, label %.preheader382, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.as = shl nuw nsw i64 %i.aq, 2
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #21
          to label %.noexc246 unwind label %bb.v  ; 6 uses

.noexc246:                                        ; preds = %bb.r
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.aq
  store i32 0, ptr %i.at, align 4, !tbaa !30
  %i.av = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.preheader, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc246
  %i.ax = getelementptr i8, ptr %i.at, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.av, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ax, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !30
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc246
  %wide.trip.count = zext i32 %i.ap to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ap, 8
  br i1 %min.iters.check, label %.lr.ph.preheader539, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.az = sub <4 x i32> %broadcast.splat, %vec.ind
  %i.ba = sub <4 x i32> %broadcast.splat, %step.add
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x i32> %i.az, ptr %i.ay, align 4, !tbaa !30
  store <4 x i32> %i.ba, ptr %i.bb, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader382.loopexit, label %.lr.ph.preheader539

.lr.ph.preheader539:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader382.loopexit:                           ; preds = %.lr.ph, %middle.block
  %i.bd = ptrtoint ptr %i.au to i64
  br label %.preheader382

.preheader382:                                    ; preds = %.preheader382.loopexit, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0506 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bd, %.preheader382.loopexit ] ; 2 uses
  %.sroa.0271.0499 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.at, %.preheader382.loopexit ] ; 8 uses
  %i.be = sub nsw i32 %i.w, %1                    ; 2 uses
  %i.bf = icmp slt i32 %1, %i.be
  br i1 %i.bf, label %.preheader.lr.ph, label %._crit_edge420

.preheader.lr.ph:                                 ; preds = %.preheader382
  %i.bg = sub nsw i32 %i.u, %1                    ; 5 uses
  %i.bh = icmp slt i32 %1, %i.bg
  br i1 %i.bh, label %.preheader.us.preheader, label %._crit_edge420

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.bi = sext i32 %i.u to i64
  %i.bj = sext i32 %1 to i64                      ; 4 uses
  %i.bk = zext nneg i32 %i.bg to i64
  %i.bl = sext i32 %i.x to i64
  %i.bm = add nsw i64 %i.bl, 1
  %i.bn = zext nneg i32 %i.be to i64
  %i.bo = shl i32 %1, 1                           ; 3 uses
  %i.bp = call i32 @llvm.smax.i32(i32 %i.bo, i32 %i.bg)
  %i.bq = icmp slt i32 %i.bo, %i.bg
  %i.br = zext i1 %i.bq to i32                    ; 2 uses
  %i.bs = or disjoint i32 %i.bo, %i.br
  %i.bt = sub i32 %i.bp, %i.bs
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge415.us
  %indvars.iv465 = phi i64 [ %i.bj, %.preheader.us.preheader ], [ %indvars.iv.next466, %._crit_edge415.us ] ; 2 uses
  %indvars.iv455 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next456, %._crit_edge415.us ] ; 7 uses
  %indvars.iv448 = phi i32 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next449, %._crit_edge415.us ] ; 2 uses
  %i.bu = sext i32 %indvars.iv448 to i64
  %indvars.iv.next466 = add nsw i64 %indvars.iv465, %i.bj ; 3 uses
  br i1 %.not.i.i.i.i243, label %.lr.ph414.split.us.us, label %.lr.ph391.us.preheader

.lr.ph391.us.preheader:                           ; preds = %.preheader.us, %._crit_edge403.us
  %indvars.iv457 = phi i64 [ %indvars.iv.next458, %._crit_edge403.us ], [ %indvars.iv455, %.preheader.us ] ; 4 uses
  %indvars.iv453 = phi i64 [ %indvars.iv.next454, %._crit_edge403.us ], [ %i.bj, %.preheader.us ] ; 2 uses
  %indvars.iv443 = phi i32 [ %indvars.iv.next444, %._crit_edge403.us ], [ 0, %.preheader.us ] ; 2 uses
  %i.bv = sext i32 %indvars.iv443 to i64
  %indvars.iv.next454 = add nuw nsw i64 %indvars.iv453, %i.bj ; 3 uses
  br label %.lr.ph391.us

.lr.ph391.us:                                     ; preds = %.lr.ph391.us.preheader, %._crit_edge.us
  %indvars.iv450 = phi i64 [ %i.bu, %.lr.ph391.us.preheader ], [ %indvars.iv.next451, %._crit_edge.us ] ; 4 uses
  %.0176399.us = phi i32 [ 0, %.lr.ph391.us.preheader ], [ %i.da, %._crit_edge.us ]
  %.0177398.us = phi i32 [ 0, %.lr.ph391.us.preheader ], [ %i.cz, %._crit_edge.us ]
  %.0179397.us = phi i32 [ 0, %.lr.ph391.us.preheader ], [ %i.cu, %._crit_edge.us ]
  %.0181396.us = phi i32 [ 0, %.lr.ph391.us.preheader ], [ %i.cp, %._crit_edge.us ]
  %i.bw = mul nsw i64 %indvars.iv450, %i.bi
  %i.bx = sub nsw i64 %indvars.iv450, %indvars.iv465
  %i.by = trunc nsw i64 %i.bx to i32
  %i.bz = call i32 @llvm.abs.i32(i32 %i.by, i1 true)
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0271.0499, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph391.us
  %indvars.iv445 = phi i64 [ %indvars.iv.next446, %bb.s ], [ %i.bv, %.lr.ph391.us ] ; 4 uses
  %.1389.us = phi i32 [ %i.da, %bb.s ], [ %.0176399.us, %.lr.ph391.us ]
  %.1178388.us = phi i32 [ %i.cz, %bb.s ], [ %.0177398.us, %.lr.ph391.us ]
  %.1180387.us = phi i32 [ %i.cu, %bb.s ], [ %.0179397.us, %.lr.ph391.us ]
  %.1182386.us = phi i32 [ %i.cp, %bb.s ], [ %.0181396.us, %.lr.ph391.us ]
  %i.cd = sub nsw i64 %indvars.iv445, %indvars.iv453
  %i.ce = trunc nsw i64 %i.cd to i32
  %i.cf = call i32 @llvm.abs.i32(i32 %i.ce, i1 true)
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0271.0499, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !30
  %i.cj = mul nsw i32 %i.ci, %i.cc                ; 4 uses
  %i.ck = add nsw i64 %indvars.iv445, %i.bw       ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %i.o, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !16
  %i.cn = zext i8 %i.cm to i32
  %i.co = mul nsw i32 %i.cj, %i.cn
  %i.cp = add nsw i32 %i.co, %.1182386.us         ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %i.q, i64 %i.ck
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !16
  %i.cs = zext i8 %i.cr to i32
  %i.ct = mul nsw i32 %i.cj, %i.cs
  %i.cu = add nsw i32 %i.ct, %.1180387.us         ; 3 uses
  %i.cv = getelementptr inbounds i8, ptr %i.s, i64 %i.ck
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !16
  %i.cx = zext i8 %i.cw to i32
  %i.cy = mul nsw i32 %i.cj, %i.cx
  %i.cz = add nsw i32 %i.cy, %.1178388.us         ; 3 uses
  %i.da = add nsw i32 %i.cj, %.1389.us            ; 3 uses
  %indvars.iv.next446 = add nsw i64 %indvars.iv445, 1
  %.not227.us.not = icmp slt i64 %indvars.iv445, %indvars.iv.next454
  br i1 %.not227.us.not, label %bb.s, label %._crit_edge.us, !llvm.loop !59

._crit_edge.us:                                   ; preds = %bb.s
  %indvars.iv.next451 = add nsw i64 %indvars.iv450, 1
  %.not217.us426.not = icmp slt i64 %indvars.iv450, %indvars.iv.next466
  br i1 %.not217.us426.not, label %.lr.ph391.us, label %._crit_edge403.us, !llvm.loop !60

._crit_edge403.us:                                ; preds = %._crit_edge.us
  %i.db = sitofp i32 %i.da to float
  %i.dc = fdiv float 1.000000e+00, %i.db          ; 3 uses
  %i.dd = sitofp i32 %i.cp to float
  %i.de = fmul float %i.dc, %i.dd
  %i.df = insertelement <4 x float> poison, float %i.de, i64 0
  %i.dg = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.df)
  %i.dh = trunc i32 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0298.0330336, i64 %indvars.iv457
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !16
  %i.dj = sitofp i32 %i.cu to float
  %i.dk = fmul float %i.dc, %i.dj
  %i.dl = insertelement <4 x float> poison, float %i.dk, i64 0
  %i.dm = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.dl)
  %i.dn = trunc i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0287.0348, i64 %indvars.iv457
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !16
  %i.dp = sitofp i32 %i.cz to float
  %i.dq = fmul float %i.dc, %i.dp
  %i.dr = insertelement <4 x float> poison, float %i.dq, i64 0
  %i.ds = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.dr)
  %i.dt = trunc i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0278.0, i64 %indvars.iv457
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !16
  %indvars.iv.next458 = add nsw i64 %indvars.iv457, 1
  %i.dv = icmp slt i64 %indvars.iv.next454, %i.bk
  %indvars.iv.next444 = add i32 %indvars.iv443, %1
  br i1 %i.dv, label %.lr.ph391.us.preheader, label %._crit_edge415.us, !llvm.loop !61

.lr.ph414.split.us.us:                            ; preds = %.preheader.us
  %i.dw = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> <float +qnan, float poison, float poison, float poison>)
  %i.dx = trunc i32 %i.dw to i8                   ; 4 uses
  %i.dy = udiv i32 %i.bt, %1
  %i.dz = add i32 %i.dy, %i.br                    ; 2 uses
  %i.ea = zext i32 %i.dz to i64
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 3 uses
  %min.iters.check523 = icmp eq i32 %i.dz, 0
  br i1 %min.iters.check523, label %scalar.ph522.preheader, label %vector.body528

vector.body528:                                   ; preds = %.lr.ph414.split.us.us
  %broadcast.splatinsert526 = insertelement <2 x i8> poison, i8 %i.dx, i64 0
  %broadcast.splat527 = shufflevector <2 x i8> %broadcast.splatinsert526, <2 x i8> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = or i32 %i.ec, 1
  %i.ee = mul i32 %1, %i.ed
  %n.vec525 = and i64 %i.eb, 8589934590           ; 2 uses
  %i.ef = add i64 %indvars.iv455, %n.vec525
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0298.0330336, i64 %indvars.iv455
  store <2 x i8> %broadcast.splat527, ptr %i.eg, align 1, !tbaa !16
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0287.0348, i64 %indvars.iv455
  store <2 x i8> %broadcast.splat527, ptr %i.eh, align 1, !tbaa !16
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0278.0, i64 %indvars.iv455
  store <2 x i8> %broadcast.splat527, ptr %i.ei, align 1, !tbaa !16
  %cmp.n532 = icmp eq i64 %i.eb, %n.vec525
  br i1 %cmp.n532, label %._crit_edge415.us, label %scalar.ph522.preheader

scalar.ph522.preheader:                           ; preds = %.lr.ph414.split.us.us, %vector.body528
  %indvars.iv462.ph = phi i64 [ %indvars.iv455, %.lr.ph414.split.us.us ], [ %i.ef, %vector.body528 ]
  %.0171412.us.us.ph = phi i32 [ %1, %.lr.ph414.split.us.us ], [ %i.ee, %vector.body528 ]
  br label %scalar.ph522

scalar.ph522:                                     ; preds = %scalar.ph522.preheader, %scalar.ph522
  %indvars.iv462 = phi i64 [ %indvars.iv.next463, %scalar.ph522 ], [ %indvars.iv462.ph, %scalar.ph522.preheader ] ; 4 uses
  %.0171412.us.us = phi i32 [ %i.em, %scalar.ph522 ], [ %.0171412.us.us.ph, %scalar.ph522.preheader ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0298.0330336, i64 %indvars.iv462
  store i8 %i.dx, ptr %i.ej, align 1, !tbaa !16
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0287.0348, i64 %indvars.iv462
  store i8 %i.dx, ptr %i.ek, align 1, !tbaa !16
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0278.0, i64 %indvars.iv462
  store i8 %i.dx, ptr %i.el, align 1, !tbaa !16
  %indvars.iv.next463 = add nsw i64 %indvars.iv462, 1
  %i.em = add nsw i32 %.0171412.us.us, %1         ; 2 uses
  %i.en = icmp slt i32 %i.em, %i.bg
  br i1 %i.en, label %scalar.ph522, label %._crit_edge415.us, !llvm.loop !62

._crit_edge415.us:                                ; preds = %._crit_edge403.us, %scalar.ph522, %vector.body528
  %indvars.iv.next456 = add i64 %indvars.iv455, %i.bm
  %i.eo = icmp slt i64 %indvars.iv.next466, %i.bn
  %indvars.iv.next449 = add i32 %indvars.iv448, %1
  br i1 %i.eo, label %.preheader.us, label %._crit_edge420, !llvm.loop !63

bb.t:                                             ; preds = %bb.g
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.bc

bb.u:                                             ; preds = %bb.h, %bb.k, %bb.j
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit270

_ZNSt6vectorIhSaIhEED2Ev.exit268.thread:          ; preds = %bb.m
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

_ZNSt6vectorIhSaIhEED2Ev.exit266.thread:          ; preds = %bb.o
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.v:                                             ; preds = %bb.r, %bb.q
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit264

.lr.ph:                                           ; preds = %.lr.ph.preheader539, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader539 ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.ev = trunc i64 %indvars.iv to i32
  %i.ew = sub i32 %1, %i.ev
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader382.loopexit, label %.lr.ph, !llvm.loop !64

._crit_edge420:                                   ; preds = %._crit_edge415.us, %.preheader.lr.ph, %.preheader382
  %i.ex = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.w unwind label %bb.ab      ; 5 uses

bb.w:                                             ; preds = %._crit_edge420
  %i.ey = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.x unwind label %bb.ab      ; 6 uses

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef %i.ex, i32 noundef %i.ey, i32 noundef 0)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef %i.ex, i32 noundef %i.ey, i32 noundef 0)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef %i.ex, i32 noundef %i.ey, i32 noundef 0)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !27
  %i.fb = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !27
  %i.fd = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !27
  %i.ff = icmp sgt i32 %i.ex, 0
  %i.fg = icmp sgt i32 %i.ey, 0
  %or.cond = and i1 %i.ff, %i.fg
  br i1 %or.cond, label %.lr.ph431, label %._crit_edge435.split

._crit_edge435.split:                             ; preds = %._crit_edge, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 7 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr null, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit unwind label %bb.ar

bb.ab:                                            ; preds = %._crit_edge420, %bb.w
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ac:                                            ; preds = %bb.x
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ad:                                            ; preds = %bb.y
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ae:                                            ; preds = %bb.z
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.lr.ph431:                                        ; preds = %bb.aa, %._crit_edge
  %indvars.iv470 = phi i32 [ %indvars.iv.next471, %._crit_edge ], [ 0, %bb.aa ] ; 2 uses
  %.0167432 = phi i32 [ %i.ft, %._crit_edge ], [ 0, %bb.aa ] ; 3 uses
  %i.fn = zext i32 %indvars.iv470 to i64
  %i.fo = srem i32 %.0167432, %1                  ; 3 uses
  %i.fp = sub nsw i32 %1, %i.fo                   ; 3 uses
  %i.fq = sdiv i32 %.0167432, %1
  %i.fr = mul nsw i32 %i.fq, %i.y
  %i.fs = mul i32 %i.fp, %1
  br label %bb.af

._crit_edge:                                      ; preds = %bb.af
  %i.ft = add nuw nsw i32 %.0167432, 1            ; 2 uses
  %indvars.iv.next471 = add i32 %indvars.iv470, %i.ey
  %exitcond476.not = icmp eq i32 %i.ft, %i.ex
  br i1 %exitcond476.not, label %._crit_edge435.split, label %.lr.ph431, !llvm.loop !65

bb.af:                                            ; preds = %.lr.ph431, %bb.af
  %indvars.iv472 = phi i64 [ %i.fn, %.lr.ph431 ], [ %indvars.iv.next473, %bb.af ] ; 4 uses
  %.0430 = phi i32 [ 0, %.lr.ph431 ], [ %i.je, %bb.af ] ; 3 uses
  %i.fu = srem i32 %.0430, %1                     ; 3 uses
  %i.fv = sub nsw i32 %1, %i.fu                   ; 2 uses
  %i.fw = sdiv i32 %.0430, %1
  %i.fx = add nsw i32 %i.fw, %i.fr                ; 3 uses
  %i.fy = add nsw i32 %i.fx, 1
  %i.fz = add nsw i32 %i.fx, %i.y                 ; 2 uses
  %i.ga = add nsw i32 %i.fz, 1
  %i.gb = mul nsw i32 %i.fv, %i.fp                ; 3 uses
  %i.gc = mul nsw i32 %i.fu, %i.fp                ; 3 uses
  %i.gd = mul nsw i32 %i.fv, %i.fo                ; 4 uses
  %i.ge = mul nuw nsw i32 %i.fu, %i.fo            ; 4 uses
  %i.gf = add i32 %i.ge, %i.fs
  %i.gg = add i32 %i.gf, %i.gd
  %i.gh = sitofp i32 %i.gg to float
  %i.gi = fdiv float 1.000000e+00, %i.gh          ; 3 uses
  %i.gj = sext i32 %i.fx to i64                   ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0298.0330336, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !16
  %i.gm = zext i8 %i.gl to i32
  %i.gn = mul nsw i32 %i.gb, %i.gm
  %i.go = sext i32 %i.fy to i64                   ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0298.0330336, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !16
  %i.gr = zext i8 %i.gq to i32
  %i.gs = mul nsw i32 %i.gc, %i.gr
  %i.gt = add nsw i32 %i.gs, %i.gn
  %i.gu = sext i32 %i.fz to i64                   ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0298.0330336, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !16
  %i.gx = zext i8 %i.gw to i32
  %i.gy = mul nsw i32 %i.gd, %i.gx
  %i.gz = add nsw i32 %i.gt, %i.gy
end_hunk_0
begin_hunk_1_@_ZN2cv2ft22FT02D_FL_process_floatERKNS_11_InputArrayEiRKNS_12_OutputArrayE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %1, i32 noundef %i.k, i32 noundef %1, i32 noundef %i.k, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #18
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %8, i64 208
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.1) #18
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %8, i64 416
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.2) #18
  invoke void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull %8)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 440
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 232
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !28   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = sdiv i32 %i.u, %1                        ; 2 uses
  %i.y = add nsw i32 %i.x, 1                      ; 3 uses
  %i.z = sdiv i32 %i.w, %1
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = mul nsw i32 %i.aa, %i.y                 ; 3 uses
  %i.ac = sext i32 %i.ab to i64                   ; 5 uses
  %i.ad = icmp slt i32 %i.ab, 0
  br i1 %i.ad, label %bb.j, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit243, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ae = shl nuw nsw i64 %i.ac, 2                ; 3 uses
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #21
          to label %.noexc225 unwind label %bb.r  ; 7 uses

.noexc225:                                        ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ac ; 4 uses
  store float 0.000000e+00, ptr %i.af, align 4, !tbaa !42
  %i.ah = add nsw i64 %i.ac, -1                   ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 0                    ; 3 uses
  br i1 %i.ai, label %bb.l, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc225
  %i.aj = getelementptr i8, ptr %i.af, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ah, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aj, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %.noexc225, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #21
          to label %.noexc233 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit270.thread ; 6 uses

.noexc233:                                        ; preds = %bb.l
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ac ; 3 uses
  store float 0.000000e+00, ptr %i.ak, align 4, !tbaa !42
  br i1 %i.ai, label %bb.m, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i228

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i228: ; preds = %.noexc233
  %i.am = getelementptr i8, ptr %i.ak, i64 4
  %.idx.i.i.i.i.i.i.i229 = shl nuw nsw i64 %i.ah, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.am, i8 0, i64 %.idx.i.i.i.i.i.i.i229, i1 false), !tbaa !42
  br label %bb.m

bb.m:                                             ; preds = %.noexc233, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i228
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #21
          to label %.noexc242 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit268.thread ; 5 uses

.noexc242:                                        ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ac ; 2 uses
  store float 0.000000e+00, ptr %i.an, align 4, !tbaa !42
  br i1 %i.ai, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit243, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237: ; preds = %.noexc242
  %i.ap = getelementptr i8, ptr %i.an, i64 4
  %.idx.i.i.i.i.i.i.i238 = shl nuw nsw i64 %i.ah, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ap, i8 0, i64 %.idx.i.i.i.i.i.i.i238, i1 false), !tbaa !42
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit243

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit243:            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237, %.noexc242, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14297.0360 = phi ptr [ %i.al, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237 ], [ %i.al, %.noexc242 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0289.0350 = phi ptr [ %i.ak, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237 ], [ %i.ak, %.noexc242 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  %.sroa.14308.0321340 = phi ptr [ %i.ag, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237 ], [ %i.ag, %.noexc242 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.sroa.0300.0332338 = phi ptr [ %i.af, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237 ], [ %i.af, %.noexc242 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  %.sroa.0280.0 = phi ptr [ %i.an, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237 ], [ %i.an, %.noexc242 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 13 uses
  %.sroa.14.0 = phi ptr [ %i.ao, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237 ], [ %i.ao, %.noexc242 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.aq = add i32 %1, 1                           ; 4 uses
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  %i.as = icmp slt i32 %1, -1
  br i1 %i.as, label %bb.n, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.n:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit243
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
          to label %.noexc247 unwind label %bb.s

.noexc247:                                        ; preds = %bb.n
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit243
  %.not.i.i.i.i244 = icmp eq i32 %i.aq, 0         ; 2 uses
  br i1 %.not.i.i.i.i244, label %.preheader384, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.at = shl nuw nsw i64 %i.ar, 2
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #21
          to label %.noexc248 unwind label %bb.s  ; 6 uses

.noexc248:                                        ; preds = %bb.o
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ar
  store i32 0, ptr %i.au, align 4, !tbaa !30
  %i.aw = add nsw i64 %i.ar, -1                   ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.preheader, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc248
  %i.ay = getelementptr i8, ptr %i.au, i64 4
  %.idx.i.i.i.i.i.i.i245 = shl nuw nsw i64 %i.aw, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ay, i8 0, i64 %.idx.i.i.i.i.i.i.i245, i1 false), !tbaa !30
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc248
  %wide.trip.count = zext i32 %i.aq to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.aq, 8
  br i1 %min.iters.check, label %.lr.ph.preheader540, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.ba = sub <4 x i32> %broadcast.splat, %vec.ind
  %i.bb = sub <4 x i32> %broadcast.splat, %step.add
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <4 x i32> %i.ba, ptr %i.az, align 4, !tbaa !30
  store <4 x i32> %i.bb, ptr %i.bc, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader384.loopexit, label %.lr.ph.preheader540

.lr.ph.preheader540:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader384.loopexit:                           ; preds = %.lr.ph, %middle.block
  %i.be = ptrtoint ptr %i.av to i64
  br label %.preheader384

.preheader384:                                    ; preds = %.preheader384.loopexit, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0508 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.be, %.preheader384.loopexit ] ; 2 uses
  %.sroa.0273.0501 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.au, %.preheader384.loopexit ] ; 8 uses
  %i.bf = sub nsw i32 %i.w, %1                    ; 2 uses
  %i.bg = icmp slt i32 %1, %i.bf
  br i1 %i.bg, label %.preheader.lr.ph, label %._crit_edge422

.preheader.lr.ph:                                 ; preds = %.preheader384
  %i.bh = sub nsw i32 %i.u, %1                    ; 5 uses
  %i.bi = icmp slt i32 %1, %i.bh
  br i1 %i.bi, label %.preheader.us.preheader, label %._crit_edge422

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.bj = sext i32 %i.u to i64
  %i.bk = sext i32 %1 to i64                      ; 4 uses
  %i.bl = zext nneg i32 %i.bh to i64
  %i.bm = sext i32 %i.x to i64
  %i.bn = add nsw i64 %i.bm, 1
  %i.bo = zext nneg i32 %i.bf to i64
  %i.bp = shl i32 %1, 1                           ; 3 uses
  %i.bq = call i32 @llvm.smax.i32(i32 %i.bp, i32 %i.bh)
  %i.br = icmp slt i32 %i.bp, %i.bh
  %i.bs = zext i1 %i.br to i32                    ; 2 uses
  %i.bt = or disjoint i32 %i.bp, %i.bs
  %i.bu = sub i32 %i.bq, %i.bt
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge417.us
  %indvars.iv467 = phi i64 [ %i.bk, %.preheader.us.preheader ], [ %indvars.iv.next468, %._crit_edge417.us ] ; 2 uses
  %indvars.iv457 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next458, %._crit_edge417.us ] ; 7 uses
  %indvars.iv450 = phi i32 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next451, %._crit_edge417.us ] ; 2 uses
  %i.bv = sext i32 %indvars.iv450 to i64
  %indvars.iv.next468 = add nsw i64 %indvars.iv467, %i.bk ; 3 uses
  br i1 %.not.i.i.i.i244, label %.lr.ph416.split.us.us.preheader, label %.lr.ph393.us.preheader

.lr.ph416.split.us.us.preheader:                  ; preds = %.preheader.us
  %i.bw = udiv i32 %i.bu, %1
  %i.bx = add i32 %i.bw, %i.bs                    ; 2 uses
  %i.by = zext i32 %i.bx to i64
  %i.bz = add nuw nsw i64 %i.by, 1                ; 3 uses
  %min.iters.check525 = icmp eq i32 %i.bx, 0
  br i1 %min.iters.check525, label %.lr.ph416.split.us.us.preheader535, label %vector.body528

vector.body528:                                   ; preds = %.lr.ph416.split.us.us.preheader
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = or i32 %i.ca, 1
  %i.cc = mul i32 %1, %i.cb
  %n.vec527 = and i64 %i.bz, 8589934590           ; 2 uses
  %i.cd = add i64 %indvars.iv457, %n.vec527
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0300.0332338, i64 %indvars.iv457
  store <2 x float> splat (float +qnan), ptr %i.ce, align 4, !tbaa !42
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0289.0350, i64 %indvars.iv457
  store <2 x float> splat (float +qnan), ptr %i.cf, align 4, !tbaa !42
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0, i64 %indvars.iv457
  store <2 x float> splat (float +qnan), ptr %i.cg, align 4, !tbaa !42
  %cmp.n532 = icmp eq i64 %i.bz, %n.vec527
  br i1 %cmp.n532, label %._crit_edge417.us, label %.lr.ph416.split.us.us.preheader535

.lr.ph416.split.us.us.preheader535:               ; preds = %.lr.ph416.split.us.us.preheader, %vector.body528
  %indvars.iv464.ph = phi i64 [ %indvars.iv457, %.lr.ph416.split.us.us.preheader ], [ %i.cd, %vector.body528 ]
  %.0171414.us.us.ph = phi i32 [ %1, %.lr.ph416.split.us.us.preheader ], [ %i.cc, %vector.body528 ]
  br label %.lr.ph416.split.us.us

.lr.ph393.us.preheader:                           ; preds = %.preheader.us, %._crit_edge405.us
  %indvars.iv459 = phi i64 [ %indvars.iv.next460, %._crit_edge405.us ], [ %indvars.iv457, %.preheader.us ] ; 4 uses
  %indvars.iv455 = phi i64 [ %indvars.iv.next456, %._crit_edge405.us ], [ %i.bk, %.preheader.us ] ; 2 uses
  %indvars.iv445 = phi i32 [ %indvars.iv.next446, %._crit_edge405.us ], [ 0, %.preheader.us ] ; 2 uses
  %i.ch = sext i32 %indvars.iv445 to i64
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, %i.bk ; 3 uses
  br label %.lr.ph393.us

.lr.ph393.us:                                     ; preds = %.lr.ph393.us.preheader, %._crit_edge.us
  %indvars.iv452 = phi i64 [ %i.bv, %.lr.ph393.us.preheader ], [ %indvars.iv.next453, %._crit_edge.us ] ; 4 uses
  %.0176401.us = phi i32 [ 0, %.lr.ph393.us.preheader ], [ %i.dm, %._crit_edge.us ]
  %.0177400.us = phi i32 [ 0, %.lr.ph393.us.preheader ], [ %i.dl, %._crit_edge.us ]
  %.0179399.us = phi i32 [ 0, %.lr.ph393.us.preheader ], [ %i.dg, %._crit_edge.us ]
  %.0181398.us = phi i32 [ 0, %.lr.ph393.us.preheader ], [ %i.db, %._crit_edge.us ]
  %i.ci = mul nsw i64 %indvars.iv452, %i.bj
  %i.cj = sub nsw i64 %indvars.iv452, %indvars.iv467
  %i.ck = trunc nsw i64 %i.cj to i32
  %i.cl = call i32 @llvm.abs.i32(i32 %i.ck, i1 true)
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0273.0501, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !30
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph393.us
  %indvars.iv447 = phi i64 [ %indvars.iv.next448, %bb.p ], [ %i.ch, %.lr.ph393.us ] ; 4 uses
  %.1391.us = phi i32 [ %i.dm, %bb.p ], [ %.0176401.us, %.lr.ph393.us ]
  %.1178390.us = phi i32 [ %i.dl, %bb.p ], [ %.0177400.us, %.lr.ph393.us ]
  %.1180389.us = phi i32 [ %i.dg, %bb.p ], [ %.0179399.us, %.lr.ph393.us ]
  %.1182388.us = phi i32 [ %i.db, %bb.p ], [ %.0181398.us, %.lr.ph393.us ]
  %i.cp = sub nsw i64 %indvars.iv447, %indvars.iv455
  %i.cq = trunc nsw i64 %i.cp to i32
  %i.cr = call i32 @llvm.abs.i32(i32 %i.cq, i1 true)
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0273.0501, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !30
  %i.cv = mul nsw i32 %i.cu, %i.co                ; 4 uses
  %i.cw = add nsw i64 %indvars.iv447, %i.ci       ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %i.o, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !16
  %i.cz = zext i8 %i.cy to i32
  %i.da = mul nsw i32 %i.cv, %i.cz
  %i.db = add nsw i32 %i.da, %.1182388.us         ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %i.q, i64 %i.cw
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !16
  %i.de = zext i8 %i.dd to i32
  %i.df = mul nsw i32 %i.cv, %i.de
  %i.dg = add nsw i32 %i.df, %.1180389.us         ; 3 uses
  %i.dh = getelementptr inbounds i8, ptr %i.s, i64 %i.cw
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !16
  %i.dj = zext i8 %i.di to i32
  %i.dk = mul nsw i32 %i.cv, %i.dj
  %i.dl = add nsw i32 %i.dk, %.1178390.us         ; 3 uses
  %i.dm = add nsw i32 %i.cv, %.1391.us            ; 3 uses
  %indvars.iv.next448 = add nsw i64 %indvars.iv447, 1
  %.not224.us.not = icmp slt i64 %indvars.iv447, %indvars.iv.next456
  br i1 %.not224.us.not, label %bb.p, label %._crit_edge.us, !llvm.loop !71

._crit_edge.us:                                   ; preds = %bb.p
  %indvars.iv.next453 = add nsw i64 %indvars.iv452, 1
  %.not223.us428.not = icmp slt i64 %indvars.iv452, %indvars.iv.next468
  br i1 %.not223.us428.not, label %.lr.ph393.us, label %._crit_edge405.us, !llvm.loop !72

._crit_edge405.us:                                ; preds = %._crit_edge.us
  %i.dn = sitofp i32 %i.dm to float
  %i.do = fdiv float 1.000000e+00, %i.dn          ; 3 uses
  %i.dp = sitofp i32 %i.db to float
  %i.dq = fmul float %i.do, %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0300.0332338, i64 %indvars.iv459
  store float %i.dq, ptr %i.dr, align 4, !tbaa !42
  %i.ds = sitofp i32 %i.dg to float
  %i.dt = fmul float %i.do, %i.ds
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0289.0350, i64 %indvars.iv459
  store float %i.dt, ptr %i.du, align 4, !tbaa !42
  %i.dv = sitofp i32 %i.dl to float
  %i.dw = fmul float %i.do, %i.dv
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0, i64 %indvars.iv459
  store float %i.dw, ptr %i.dx, align 4, !tbaa !42
  %indvars.iv.next460 = add nsw i64 %indvars.iv459, 1
  %i.dy = icmp slt i64 %indvars.iv.next456, %i.bl
  %indvars.iv.next446 = add i32 %indvars.iv445, %1
  br i1 %i.dy, label %.lr.ph393.us.preheader, label %._crit_edge417.us, !llvm.loop !73

.lr.ph416.split.us.us:                            ; preds = %.lr.ph416.split.us.us.preheader535, %.lr.ph416.split.us.us
  %indvars.iv464 = phi i64 [ %indvars.iv.next465, %.lr.ph416.split.us.us ], [ %indvars.iv464.ph, %.lr.ph416.split.us.us.preheader535 ] ; 4 uses
  %.0171414.us.us = phi i32 [ %i.ec, %.lr.ph416.split.us.us ], [ %.0171414.us.us.ph, %.lr.ph416.split.us.us.preheader535 ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0300.0332338, i64 %indvars.iv464
  store float +qnan, ptr %i.dz, align 4, !tbaa !42
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0289.0350, i64 %indvars.iv464
  store float +qnan, ptr %i.ea, align 4, !tbaa !42
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0, i64 %indvars.iv464
  store float +qnan, ptr %i.eb, align 4, !tbaa !42
  %indvars.iv.next465 = add nsw i64 %indvars.iv464, 1
  %i.ec = add nsw i32 %.0171414.us.us, %1         ; 2 uses
  %i.ed = icmp slt i32 %i.ec, %i.bh
  br i1 %i.ed, label %.lr.ph416.split.us.us, label %._crit_edge417.us, !llvm.loop !74

._crit_edge417.us:                                ; preds = %._crit_edge405.us, %.lr.ph416.split.us.us, %vector.body528
  %indvars.iv.next458 = add i64 %indvars.iv457, %i.bn
  %i.ee = icmp slt i64 %indvars.iv.next468, %i.bo
  %indvars.iv.next451 = add i32 %indvars.iv450, %1
  br i1 %i.ee, label %.preheader.us, label %._crit_edge422, !llvm.loop !75

bb.q:                                             ; preds = %bb.g
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.az

bb.r:                                             ; preds = %bb.h, %bb.k, %bb.j
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit272

_ZNSt6vectorIfSaIfEED2Ev.exit270.thread:          ; preds = %bb.l
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

_ZNSt6vectorIfSaIfEED2Ev.exit268.thread:          ; preds = %bb.m
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.s:                                             ; preds = %bb.o, %bb.n
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit266

.lr.ph:                                           ; preds = %.lr.ph.preheader540, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader540 ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  %i.el = trunc i64 %indvars.iv to i32
  %i.em = sub i32 %1, %i.el
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader384.loopexit, label %.lr.ph, !llvm.loop !76

._crit_edge422:                                   ; preds = %._crit_edge417.us, %.preheader.lr.ph, %.preheader384
  %i.en = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.t unwind label %bb.y       ; 5 uses

bb.t:                                             ; preds = %._crit_edge422
  %i.eo = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.u unwind label %bb.y       ; 6 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef %i.en, i32 noundef %i.eo, i32 noundef 5)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef %i.en, i32 noundef %i.eo, i32 noundef 5)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef %i.en, i32 noundef %i.eo, i32 noundef 5)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !27
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !27
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !27
  %i.ev = icmp sgt i32 %i.en, 0
  %i.ew = icmp sgt i32 %i.eo, 0
  %or.cond = and i1 %i.ev, %i.ew
  br i1 %or.cond, label %.lr.ph433, label %._crit_edge437.split

end_hunk_1
begin_hunk_2_@_ZN2cv2ft15FT02D_iterationERKNS_11_InputArrayES3_RKNS_12_OutputArrayES3_S6_b:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %.body
  %.pn205.pn.pn.pn = phi { ptr, i32 } [ %.pn205.pn.pn, %bb.cy ], [ %i.bb, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn205.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn205.pn.pn.pn, %bb.cz ]
  resume { ptr, i32 } %.pn205.pn.pn.pn.pn.pn
}

declare void @_ZNK2cv12_OutputArray5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN2cv3Mat4onesEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #10

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #1

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

declare void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !40     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775696
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 208                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 44343134792571037)
  %i.l = select i1 %i.j, i64 44343134792571037, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 208                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.q, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i) #18
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i) #18
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 208 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !122

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 208 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.v, %.lr.ph.i.i.i27 ], [ %i.t, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i29 = phi ptr [ %i.u, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i29) #18
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i29) #18
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 208 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 208 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !122

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.t, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i27 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #20
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !40
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw [208 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !37
  ret void

bb.d:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #18 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #20
  invoke void @__cxa_rethrow() #19
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #22
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !31}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !13, i64 8, !6, i64 16}
!15 = !{!14, !11, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!"_ZTSN2cv5Size_IiEE", !7, i64 0, !7, i64 4}
!18 = !{!"_ZTSN2cv11_InputArrayE", !7, i64 0, !10, i64 8, !17, i64 16}
!19 = !{!18, !7, i64 0}
!20 = !{!18, !10, i64 8}
!21 = !{!"p1 _ZTSN2cv12MatAllocatorE", !10, i64 0}
!22 = !{!"p1 _ZTSN2cv8UMatDataE", !10, i64 0}
!23 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!24 = !{!"_ZTSN2cv8MatShapeE", !7, i64 0, !23, i64 4, !7, i64 8, !6, i64 12}
!25 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!26 = !{!"_ZTSN2cv3MatE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !21, i64 56, !22, i64 64, !24, i64 72, !25, i64 128}
!27 = !{!26, !11, i64 24}
!28 = !{!26, !7, i64 12}
!29 = !{!26, !7, i64 8}
!30 = !{!7, !7, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"llvm.loop.isvectorized", i32 1}
!33 = !{!"llvm.loop.unroll.runtime.disable"}
!34 = !{!"p1 _ZTSN2cv3MatE", !10, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!35, !34, i64 8}
!37 = !{!35, !34, i64 16}
!38 = !{!17, !7, i64 0}
!39 = !{!17, !7, i64 4}
!40 = !{!35, !34, i64 0}
!41 = !{!"float", !6, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"p1 _ZTSN2cv5MatOpE", !10, i64 0}
!44 = !{!"double", !6, i64 0}
!45 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !6, i64 0}
!46 = !{!"_ZTSN2cv3VecIdLi4EEE", !45, i64 0}
!47 = !{!"_ZTSN2cv7Scalar_IdEE", !46, i64 0}
!48 = !{!"_ZTSN2cv7MatExprE", !43, i64 0, !7, i64 8, !26, i64 16, !26, i64 224, !26, i64 432, !44, i64 640, !44, i64 648, !47, i64 656}
!49 = !{!48, !43, i64 0}
!50 = !{!"vtable pointer", !5, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"_ZTSN2cv5Rect_IiEE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!53 = !{!52, !7, i64 0}
!54 = !{!52, !7, i64 4}
!55 = !{!52, !7, i64 8}
!56 = !{!52, !7, i64 12}
!57 = !{!44, !44, i64 0}
!58 = distinct !{!58, !31, !32, !33}
!59 = distinct !{!59, !31}
!60 = distinct !{!60, !31}
!61 = distinct !{!61, !31}
!62 = distinct !{!62, !31, !33, !32}
!63 = distinct !{!63, !31}
!64 = distinct !{!64, !31, !33, !32}
!65 = distinct !{!65, !31}
!66 = distinct !{!66, !31}
!67 = !{!12, !11, i64 0}
!68 = !{!13, !13, i64 0}
!69 = !{!14, !13, i64 8}
!70 = distinct !{!70, !31, !32, !33}
!71 = distinct !{!71, !31}
!72 = distinct !{!72, !31}
!73 = distinct !{!73, !31}
!74 = distinct !{!74, !31, !33, !32}
!75 = distinct !{!75, !31}
!76 = distinct !{!76, !31, !33, !32}
!77 = distinct !{!77, !31}
!78 = distinct !{!78, !31}
!79 = distinct !{!79, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!80 = distinct !{!80, !79, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!81 = distinct !{!81, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!82 = distinct !{!82, !81, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!83 = distinct !{!83, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!84 = distinct !{!84, !83, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!85 = distinct !{!85, !31}
!86 = distinct !{!86, i1 true, !"_ZNK2cv3Mat3rowEi"}
!87 = distinct !{!87, !86, !"_ZNK2cv3Mat3rowEi: argument 0"}
!88 = distinct !{!88, i1 true, !"_ZNK2cv3Mat3colEi"}
!89 = distinct !{!89, !88, !"_ZNK2cv3Mat3colEi: argument 0"}
!90 = distinct !{!90, !31}
!91 = !{!80}
!92 = !{!82}
!93 = !{!84}
!94 = !{!87}
!95 = !{!"_ZTSN2cv5RangeE", !7, i64 0, !7, i64 4}
!96 = !{!95, !7, i64 0}
!97 = !{!95, !7, i64 4}
!98 = !{!89}
!99 = distinct !{!99, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!100 = distinct !{!100, !99, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!101 = distinct !{!101, !31, !104}
!102 = distinct !{!102, !31}
!103 = !{!100}
!104 = !{!"llvm.loop.unswitch.partial.disable"}
!105 = !{!26, !7, i64 4}
!106 = distinct !{!106, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!107 = distinct !{!107, !106, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!108 = distinct !{!108, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!109 = distinct !{!109, !108, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!110 = distinct !{!110, !31}
!111 = distinct !{!111, !31}
!112 = !{!107}
!113 = !{!109}
!114 = distinct !{!114, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!115 = distinct !{!115, !114, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!116 = distinct !{!116, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!117 = distinct !{!117, !116, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!118 = distinct !{!118, !31}
!119 = distinct !{!119, !31}
!120 = !{!115}
!121 = !{!117}
!122 = distinct !{!122, !31}
end_hunk_2
