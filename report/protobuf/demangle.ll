inline.NumInlined: 660
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4absl12lts_2025051218debugging_internalL20ParseUnnamedTypeNameEPNS1_5StateE:bb.a
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !15
  %i.h = icmp sgt i32 %i.c, 255
  %i.i = icmp sgt i32 %i.f, 131071
  %or.cond = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 15 uses
  %.sroa.0.sroa.0.0.copyload = load <3 x i32>, ptr %i.j, align 4 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7 ; 4 uses
  %i.k = add nsw i32 %i.c, 2                      ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !17
  %i.l = add nsw i32 %i.f, 2                      ; 4 uses
  store i32 %i.l, ptr %i.e, align 8, !tbaa !15
  %i.m = icmp sgt i32 %i.c, 254
  %i.n = icmp sgt i32 %i.f, 131070
  %or.cond.i = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond.i, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val11.i = load ptr, ptr %0, align 8, !tbaa !8 ; 4 uses
  %.val12.i = load i32, ptr %i.j, align 4, !tbaa !16 ; 3 uses
  %i.o = sext i32 %.val12.i to i64
  %i.p = getelementptr inbounds i8, ptr %.val11.i, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !7
  %i.r = icmp eq i8 %i.q, 85
  br i1 %i.r, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !7
  %i.u = icmp eq i8 %i.t, 116
  br i1 %i.u, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.v = add nsw i32 %.val12.i, 2                 ; 5 uses
  store i32 %i.v, ptr %i.j, align 4, !tbaa !16
  store i32 %i.d, ptr %i.b, align 4, !tbaa !17
  %i.w = add nsw i32 %i.f, 3
  store i32 %i.w, ptr %i.e, align 8, !tbaa !15
  %i.x = icmp sgt i32 %i.f, 131069
  br i1 %i.x, label %.thread80, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.c, 3
  store i32 %i.y, ptr %i.b, align 4, !tbaa !17
  %i.z = add nsw i32 %i.f, 4                      ; 4 uses
  store i32 %i.z, ptr %i.e, align 8, !tbaa !15
  %i.aa = icmp sgt i32 %i.c, 253
  %i.ab = icmp eq i32 %i.f, 131069
  %or.cond.i.i = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond.i.i, label %._crit_edge44.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = sext i32 %i.v to i64
  %i.ad = getelementptr inbounds i8, ptr %.val11.i, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !7
  %i.af = icmp eq i8 %i.ae, 110
  br i1 %i.af, label %bb.h, label %._crit_edge44.i

bb.h:                                             ; preds = %bb.g
  %i.ag = add nsw i32 %.val12.i, 3                ; 2 uses
  store i32 %i.ag, ptr %i.j, align 4, !tbaa !16
  br label %._crit_edge44.i

._crit_edge44.i:                                  ; preds = %bb.h, %bb.g, %bb.f
  %.val35.i = phi i32 [ %i.v, %bb.g ], [ %i.ag, %bb.h ], [ %i.v, %bb.f ] ; 3 uses
  %.0.i36.i = phi i1 [ false, %bb.g ], [ true, %bb.h ], [ false, %bb.f ]
  store i32 %i.k, ptr %i.b, align 4, !tbaa !17
  %i.ah = sext i32 %.val35.i to i64
  %i.ai = getelementptr inbounds i8, ptr %.val11.i, i64 %i.ah ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !7   ; 2 uses
  %i.ak = add i8 %i.aj, -48
  %i.al = icmp ult i8 %i.ak, 10
  br i1 %i.al, label %.lr.ph.i, label %.thread80

.lr.ph.i:                                         ; preds = %._crit_edge44.i, %.lr.ph.i
  %i.am = phi i8 [ %i.as, %.lr.ph.i ], [ %i.aj, %._crit_edge44.i ]
  %.041.i = phi i32 [ %i.aq, %.lr.ph.i ], [ 0, %._crit_edge44.i ]
  %.02140.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %i.ai, %._crit_edge44.i ]
  %i.an = mul i32 %.041.i, 10
  %i.ao = zext nneg i8 %i.am to i32
  %i.ap = add nsw i32 %i.ao, -48
  %i.aq = add i32 %i.ap, %i.an                    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02140.i, i64 1 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !7   ; 2 uses
  %i.at = add i8 %i.as, -48
  %i.au = icmp ult i8 %i.at, 10
  br i1 %i.au, label %.lr.ph.i, label %bb.i, !llvm.loop !42

.thread80:                                        ; preds = %bb.e, %._crit_edge44.i
  %.val7.i118 = phi i32 [ %i.v, %bb.e ], [ %.val35.i, %._crit_edge44.i ]
  %i.av = phi i32 [ 131073, %bb.e ], [ %i.z, %._crit_edge44.i ]
  store i32 %i.d, ptr %i.b, align 4, !tbaa !17
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.aw = ptrtoint ptr %i.ar to i64
  %i.ax = ptrtoint ptr %i.ai to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %i.ba = add nsw i32 %.val35.i, %i.az            ; 2 uses
  store i32 %i.ba, ptr %i.j, align 4, !tbaa !16
  %i.bb = sub i32 0, %i.aq
  %spec.select.i = select i1 %.0.i36.i, i32 %i.bb, i32 %i.aq ; 2 uses
  store i32 %i.d, ptr %i.b, align 4, !tbaa !17
  %.not = icmp sgt i32 %spec.select.i, 2147483645
  br i1 %.not, label %bb.u, label %bb.j

bb.j:                                             ; preds = %.thread80, %bb.i
  %.val7.i = phi i32 [ %.val7.i118, %.thread80 ], [ %i.ba, %bb.i ] ; 2 uses
  %i.bc = phi i32 [ %i.av, %.thread80 ], [ %i.z, %bb.i ] ; 2 uses
  %.07583 = phi i32 [ -1, %.thread80 ], [ %spec.select.i, %bb.i ]
  store i32 %i.k, ptr %i.b, align 4, !tbaa !17
  %i.bd = add nsw i32 %i.bc, 1                    ; 3 uses
  store i32 %i.bd, ptr %i.e, align 8, !tbaa !15
  %i.be = icmp sgt i32 %i.bc, 131071
  br i1 %i.be, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = sext i32 %.val7.i to i64
  %i.bg = getelementptr inbounds i8, ptr %.val11.i, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !7
  %i.bi = icmp eq i8 %i.bh, 95
  br i1 %i.bi, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  %i.bj = add nsw i32 %.val7.i, 1
  store i32 %i.bj, ptr %i.j, align 4, !tbaa !16
  store i32 %i.d, ptr %i.b, align 4, !tbaa !17
  %.not.i = icmp sgt i32 %.sroa.6.0.copyload, -1
  br i1 %.not.i, label %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit.thread, label %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit

_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit.thread: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  br label %_ZN4absl12lts_2025051218debugging_internalL18MaybeAppendDecimalEPNS1_5StateEi.exit.thread

_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit: ; preds = %bb.l
  tail call fastcc void @_ZN4absl12lts_2025051218debugging_internalL21MaybeAppendWithLengthEPNS1_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.247, i64 noundef 14)
  %.pre = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bk = icmp sgt i32 %.pre, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  br i1 %i.bk, label %_ZN4absl12lts_2025051218debugging_internalL18MaybeAppendDecimalEPNS1_5StateEi.exit.thread, label %bb.m

_ZN4absl12lts_2025051218debugging_internalL18MaybeAppendDecimalEPNS1_5StateEi.exit.thread: ; preds = %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit.thread, %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit38

bb.m:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit
  %i.bl = add nsw i32 %.07583, 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.08.i = phi i32 [ %i.bl, %bb.m ], [ %i.br, %bb.n ] ; 3 uses
  %.0.i35 = phi ptr [ %i.bm, %bb.m ], [ %i.bq, %bb.n ]
  %i.bn = srem i32 %.08.i, 10
  %i.bo = trunc nsw i32 %i.bn to i8
  %i.bp = add nsw i8 %i.bo, 48
  %i.bq = getelementptr inbounds i8, ptr %.0.i35, i64 -1 ; 5 uses
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !7
  %i.br = sdiv i32 %.08.i, 10
  %i.bs = icmp ugt ptr %i.bq, %i.a
  %i.bt = add i32 %.08.i, -10
  %i.bu = icmp ult i32 %i.bt, -19
  %i.bv = select i1 %i.bs, i1 %i.bu, i1 false
  br i1 %i.bv, label %bb.n, label %bb.o, !llvm.loop !48

bb.o:                                             ; preds = %bb.n
  %i.bw = ptrtoint ptr %i.bq to i64
  %i.bx = ptrtoint ptr %i.a to i64
  %.neg.i = sub i64 %i.bx, %i.bw
  %i.by = add i64 %.neg.i, 20                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i
  %.018.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cl, %bb.q ] ; 2 uses
  %i.cc = load i32, ptr %i.bz, align 8, !tbaa !18 ; 2 uses
  %i.cd = add nsw i32 %i.cc, 1                    ; 2 uses
  %i.ce = load i32, ptr %i.ca, align 8, !tbaa !14 ; 2 uses
  %i.cf = icmp slt i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.018.i.i
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !7
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !13
  store i32 %i.cd, ptr %i.bz, align 8, !tbaa !18
  %i.cj = sext i32 %i.cc to i64
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 %i.cj
  store i8 %i.ch, ptr %i.ck, align 1, !tbaa !7
  %i.cl = add nuw nsw i64 %.018.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cl, %i.by
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %bb.p, !llvm.loop !46

bb.r:                                             ; preds = %bb.p
  %i.cm = add nsw i32 %i.ce, 1
  store i32 %i.cm, ptr %i.bz, align 8, !tbaa !18
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.q, %bb.r, %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !18 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !14
  %i.cr = icmp slt i32 %i.co, %i.cq
  br i1 %i.cr, label %bb.s, label %_ZN4absl12lts_2025051218debugging_internalL18MaybeAppendDecimalEPNS1_5StateEi.exit

bb.s:                                             ; preds = %.loopexit.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !13
  %i.cu = sext i32 %i.co to i64
  %i.cv = getelementptr inbounds i8, ptr %i.ct, i64 %i.cu
  store i8 0, ptr %i.cv, align 1, !tbaa !7
  br label %_ZN4absl12lts_2025051218debugging_internalL18MaybeAppendDecimalEPNS1_5StateEi.exit

_ZN4absl12lts_2025051218debugging_internalL18MaybeAppendDecimalEPNS1_5StateEi.exit: ; preds = %.loopexit.i.i, %bb.s
  %.pr = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.not.i36 = icmp sgt i32 %.pr, -1
  br i1 %.not.i36, label %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit38, label %bb.t

bb.t:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL18MaybeAppendDecimalEPNS1_5StateEi.exit
  call fastcc void @_ZN4absl12lts_2025051218debugging_internalL21MaybeAppendWithLengthEPNS1_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.248, i64 noundef 1)
  br label %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit38

.loopexit:                                        ; preds = %.preheader.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.y
  %lpad.loopexit102 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZN4absl12lts_2025051218debugging_internalL10ZeroOrMoreEPFbPNS1_5StateEES3_.exit
  %lpad.loopexit.split-lp103 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit102, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp103, %.loopexit.split-lp.loopexit.split-lp ]
  %i.cw = load i32, ptr %i.b, align 4, !tbaa !17
  %i.cx = add nsw i32 %i.cw, -1
  store i32 %i.cx, ptr %i.b, align 4, !tbaa !17
  resume { ptr, i32 } %lpad.phi

.sink.split:                                      ; preds = %bb.k, %bb.j, %bb.c, %bb.d, %bb.b
  %.ph = phi i32 [ %i.l, %bb.c ], [ %i.l, %bb.b ], [ %i.l, %bb.d ], [ %i.bd, %bb.j ], [ %i.bd, %bb.k ]
  store i32 %i.d, ptr %i.b, align 4, !tbaa !17
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.i
  %i.cy = phi i32 [ %i.z, %bb.i ], [ %.ph, %.sink.split ] ; 2 uses
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.j, align 4
  %i.cz = add nsw i32 %i.c, 2
  store i32 %i.cz, ptr %i.b, align 4, !tbaa !17
  %i.da = add nsw i32 %i.cy, 1
  store i32 %i.da, ptr %i.e, align 8, !tbaa !15
  %i.db = icmp sgt i32 %i.c, 254
  %i.dc = icmp sgt i32 %i.cy, 131071
  %or.cond.i39 = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %or.cond.i39, label %_ZN4absl12lts_2025051218debugging_internalL9OneOrMoreEPFbPNS1_5StateEES3_.exit.thread.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val11.i40 = load ptr, ptr %0, align 8, !tbaa !8
  %.val12.i41 = load i32, ptr %i.j, align 4, !tbaa !16 ; 2 uses
  %i.dd = sext i32 %.val12.i41 to i64
  %i.de = getelementptr inbounds i8, ptr %.val11.i40, i64 %i.dd ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !7
  %i.dg = icmp eq i8 %i.df, 85
  br i1 %i.dg, label %bb.w, label %_ZN4absl12lts_2025051218debugging_internalL9OneOrMoreEPFbPNS1_5StateEES3_.exit.thread.sink.split

bb.w:                                             ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !7
  %i.dj = icmp eq i8 %i.di, 108
  br i1 %i.dj, label %bb.x, label %_ZN4absl12lts_2025051218debugging_internalL9OneOrMoreEPFbPNS1_5StateEES3_.exit.thread.sink.split

bb.x:                                             ; preds = %bb.w
  %i.dk = add nsw i32 %.val12.i41, 2
  store i32 %i.dk, ptr %i.j, align 4, !tbaa !16
  store i32 %i.d, ptr %i.b, align 4, !tbaa !17
  %i.dl = and i32 %.sroa.6.0.copyload, 2147483647
  store i32 %i.dl, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.y

bb.y:                                             ; preds = %.noexc, %bb.x
  %i.dm = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL22ParseTemplateParamDeclEPNS1_5StateE(ptr noundef nonnull %0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit, !inline_history !49

.noexc:                                           ; preds = %bb.y
  br i1 %i.dm, label %bb.y, label %_ZN4absl12lts_2025051218debugging_internalL10ZeroOrMoreEPFbPNS1_5StateEES3_.exit, !llvm.loop !30

_ZN4absl12lts_2025051218debugging_internalL10ZeroOrMoreEPFbPNS1_5StateEES3_.exit: ; preds = %.noexc
  %i.dn = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL9ParseTypeEPNS1_5StateE(ptr noundef nonnull %0)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !32

.noexc44:                                         ; preds = %_ZN4absl12lts_2025051218debugging_internalL10ZeroOrMoreEPFbPNS1_5StateEES3_.exit
  br i1 %i.dn, label %.preheader.i, label %_ZN4absl12lts_2025051218debugging_internalL9OneOrMoreEPFbPNS1_5StateEES3_.exit.thread

.preheader.i:                                     ; preds = %.noexc44, %.noexc45
  %i.do = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL9ParseTypeEPNS1_5StateE(ptr noundef nonnull %0)
          to label %.noexc45 unwind label %.loopexit, !inline_history !32

.noexc45:                                         ; preds = %.preheader.i
  br i1 %i.do, label %.preheader.i, label %_ZN4absl12lts_2025051218debugging_internalL9OneOrMoreEPFbPNS1_5StateEES3_.exit, !llvm.loop !33

_ZN4absl12lts_2025051218debugging_internalL9OneOrMoreEPFbPNS1_5StateEES3_.exit: ; preds = %.noexc45
  %i.dp = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  %i.dq = and i32 %.sroa.6.0.copyload, -2147483648
  %i.dr = and i32 %i.dp, 2147483647
  %i.ds = or disjoint i32 %i.dr, %i.dq
  store i32 %i.ds, ptr %.sroa.6.0..sroa_idx, align 8
  %i.dt = load i32, ptr %i.b, align 4, !tbaa !17  ; 12 uses
  %i.du = add nsw i32 %i.dt, 1                    ; 3 uses
  store i32 %i.du, ptr %i.b, align 4, !tbaa !17
  %i.dv = load i32, ptr %i.e, align 8, !tbaa !15  ; 6 uses
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.e, align 8, !tbaa !15
  %i.dx = icmp sgt i32 %i.dt, 255
  %i.dy = icmp sgt i32 %i.dv, 131071
  %or.cond.i46 = select i1 %i.dx, i1 true, i1 %i.dy
  br i1 %or.cond.i46, label %_ZN4absl12lts_2025051218debugging_internalL9OneOrMoreEPFbPNS1_5StateEES3_.exit.thread.sink.split, label %bb.z

bb.z:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL9OneOrMoreEPFbPNS1_5StateEES3_.exit
  %.val6.i47 = load ptr, ptr %0, align 8, !tbaa !8 ; 4 uses
  %.val7.i48 = load i32, ptr %i.j, align 4, !tbaa !16 ; 3 uses
  %i.dz = sext i32 %.val7.i48 to i64
  %i.ea = getelementptr inbounds i8, ptr %.val6.i47, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !7
  %i.ec = icmp eq i8 %i.eb, 69
  br i1 %i.ec, label %bb.aa, label %_ZN4absl12lts_2025051218debugging_internalL9OneOrMoreEPFbPNS1_5StateEES3_.exit.thread.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.ed = add nsw i32 %.val7.i48, 1               ; 5 uses
  store i32 %i.ed, ptr %i.j, align 4, !tbaa !16
  store i32 %i.dt, ptr %i.b, align 4, !tbaa !17
  %i.ee = add nsw i32 %i.dv, 2
  store i32 %i.ee, ptr %i.e, align 8, !tbaa !15
  %i.ef = icmp sgt i32 %i.dv, 131070
  br i1 %i.ef, label %.thread95, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = add nsw i32 %i.dt, 2
  store i32 %i.eg, ptr %i.b, align 4, !tbaa !17
  %i.eh = add nsw i32 %i.dv, 3                    ; 3 uses
  store i32 %i.eh, ptr %i.e, align 8, !tbaa !15
  %i.ei = icmp sgt i32 %i.dt, 254
  %i.ej = icmp eq i32 %i.dv, 131070
  %or.cond.i.i52 = select i1 %i.ei, i1 true, i1 %i.ej
  br i1 %or.cond.i.i52, label %._crit_edge44.i56, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ek = sext i32 %i.ed to i64
  %i.el = getelementptr inbounds i8, ptr %.val6.i47, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !7
  %i.en = icmp eq i8 %i.em, 110
  br i1 %i.en, label %bb.ad, label %._crit_edge44.i56

bb.ad:                                            ; preds = %bb.ac
  %i.eo = add nsw i32 %.val7.i48, 2               ; 2 uses
  store i32 %i.eo, ptr %i.j, align 4, !tbaa !16
  br label %._crit_edge44.i56

._crit_edge44.i56:                                ; preds = %bb.ad, %bb.ac, %bb.ab
  %.val35.i57 = phi i32 [ %i.ed, %bb.ac ], [ %i.eo, %bb.ad ], [ %i.ed, %bb.ab ] ; 3 uses
  %.0.i36.i58 = phi i1 [ false, %bb.ac ], [ true, %bb.ad ], [ false, %bb.ab ]
  store i32 %i.du, ptr %i.b, align 4, !tbaa !17
  %i.ep = sext i32 %.val35.i57 to i64
  %i.eq = getelementptr inbounds i8, ptr %.val6.i47, i64 %i.ep ; 3 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !7   ; 2 uses
  %i.es = add i8 %i.er, -48
  %i.et = icmp ult i8 %i.es, 10
  br i1 %i.et, label %.lr.ph.i60, label %.thread95

.lr.ph.i60:                                       ; preds = %._crit_edge44.i56, %.lr.ph.i60
  %i.eu = phi i8 [ %i.fa, %.lr.ph.i60 ], [ %i.er, %._crit_edge44.i56 ]
  %.041.i61 = phi i32 [ %i.ey, %.lr.ph.i60 ], [ 0, %._crit_edge44.i56 ]
  %.02140.i62 = phi ptr [ %i.ez, %.lr.ph.i60 ], [ %i.eq, %._crit_edge44.i56 ]
  %i.ev = mul i32 %.041.i61, 10
  %i.ew = zext nneg i8 %i.eu to i32
  %i.ex = add nsw i32 %i.ew, -48
  %i.ey = add i32 %i.ex, %i.ev                    ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.02140.i62, i64 1 ; 3 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !7   ; 2 uses
  %i.fb = add i8 %i.fa, -48
  %i.fc = icmp ult i8 %i.fb, 10
  br i1 %i.fc, label %.lr.ph.i60, label %bb.ae, !llvm.loop !42

.thread95:                                        ; preds = %bb.aa, %._crit_edge44.i56
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218debugging_internalL18ParseClassEnumTypeEPNS1_5StateE:bb.a
bb.n:                                             ; preds = %bb.k, %bb.m
  %.pre = load i32, ptr %i.a, align 4, !tbaa !17
  %i.ar = add nsw i32 %.pre, -1
  br label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %bb.n
  %i.as = phi i32 [ %i.ar, %bb.n ], [ %i.b, %bb.a ]
  %.1 = phi i1 [ %i.an, %bb.n ], [ false, %bb.a ]
  store i32 %i.as, ptr %i.a, align 4, !tbaa !17
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL26ParseTemplateTemplateParamEPNS1_5StateE(ptr nofree noundef captures(none) %0) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !15
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL18ParseTemplateParamEPNS1_5StateE(ptr noundef nonnull %0)
  br i1 %i.i, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL17ParseSubstitutionEPNS1_5StateEb(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.j, %bb.c ]
  %i.k = load i32, ptr %i.a, align 4, !tbaa !17
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.a, align 4, !tbaa !17
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL14ParseLongTokenEPNS1_5StateEPKc(ptr nofree noundef captures(none) %0) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 3 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !15
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.val14 = load ptr, ptr %0, align 8, !tbaa !8
  %i.i = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %.val15 = load i32, ptr %i.i, align 4, !tbaa !16 ; 2 uses
  %i.j = sext i32 %.val15 to i64
  %i.k = getelementptr inbounds i8, ptr %.val14, i64 %i.j ; 11 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !7
  %.not12 = icmp eq i8 %i.l, 95
  br i1 %.not12, label %bb.b, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.b:                                             ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !7
  %.not12.1 = icmp eq i8 %i.n, 83
  br i1 %.not12.1, label %bb.c, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !7
  %.not12.2 = icmp eq i8 %i.p, 85
  br i1 %.not12.2, label %bb.d, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !7
  %.not12.3 = icmp eq i8 %i.r, 66
  br i1 %.not12.3, label %bb.e, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.t = load i8, ptr %i.s, align 1, !tbaa !7
  %.not12.4 = icmp eq i8 %i.t, 83
  br i1 %.not12.4, label %bb.f, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.v = load i8, ptr %i.u, align 1, !tbaa !7
  %.not12.5 = icmp eq i8 %i.v, 84
  br i1 %.not12.5, label %bb.g, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.x = load i8, ptr %i.w, align 1, !tbaa !7
  %.not12.6 = icmp eq i8 %i.x, 80
  br i1 %.not12.6, label %bb.h, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %i.z = load i8, ptr %i.y, align 1, !tbaa !7
  %.not12.7 = icmp eq i8 %i.z, 65
  br i1 %.not12.7, label %bb.i, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !7
  %.not12.8 = icmp eq i8 %i.ab, 67
  br i1 %.not12.8, label %bb.j, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !7
  %.not12.9 = icmp eq i8 %i.ad, 75
  br i1 %.not12.9, label %bb.k, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !7
  %.not12.10 = icmp eq i8 %i.af, 95
  br i1 %.not12.10, label %bb.l, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %.val15, 11
  store i32 %i.ag, ptr %i.i, align 4, !tbaa !16
  br label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %.preheader, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.a, %bb.l
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %.preheader ]
  store i32 %i.b, ptr %i.a, align 4, !tbaa !17
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl12lts_2025051218debugging_internalL18MaybeAppendDecimalEPNS1_5StateEi(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 4
  %.not = icmp sgt i32 %i.c, -1
  br i1 %.not, label %_ZN4absl12lts_2025051218debugging_internalL6AppendEPNS1_5StateEPKcm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.08 = phi i32 [ %1, %bb.b ], [ %i.i, %bb.c ]   ; 3 uses
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.h, %bb.c ]
  %i.e = srem i32 %.08, 10
  %i.f = trunc nsw i32 %i.e to i8
  %i.g = add nsw i8 %i.f, 48
  %i.h = getelementptr inbounds i8, ptr %.0, i64 -1 ; 5 uses
  store i8 %i.g, ptr %i.h, align 1, !tbaa !7
  %i.i = sdiv i32 %.08, 10
  %i.j = icmp ugt ptr %i.h, %i.a
  %i.k = add i32 %.08, -10
  %i.l = icmp ult i32 %i.k, -19
  %i.m = select i1 %i.j, i1 %i.l, i1 false
  br i1 %i.m, label %bb.c, label %bb.d, !llvm.loop !48

bb.d:                                             ; preds = %bb.c
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %i.a to i64
  %.neg = sub i64 %i.o, %i.n
  %i.p = add i64 %.neg, 20                        ; 2 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %.018.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ac, %bb.f ] ; 2 uses
  %i.t = load i32, ptr %i.q, align 4, !tbaa !18   ; 2 uses
  %i.u = add nsw i32 %i.t, 1                      ; 2 uses
  %i.v = load i32, ptr %i.r, align 8, !tbaa !14   ; 2 uses
  %i.w = icmp slt i32 %i.u, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %.018.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !7
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !13
  store i32 %i.u, ptr %i.q, align 8, !tbaa !18
  %i.aa = sext i32 %i.t to i64
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 %i.aa
  store i8 %i.y, ptr %i.ab, align 1, !tbaa !7
  %i.ac = add nuw nsw i64 %.018.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %i.p
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.e, !llvm.loop !46

bb.g:                                             ; preds = %bb.e
  %i.ad = add nsw i32 %i.v, 1
  store i32 %i.ad, ptr %i.q, align 8, !tbaa !18
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.f, %bb.g, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !18 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !14
  %i.ai = icmp slt i32 %i.af, %i.ah
  br i1 %i.ai, label %bb.h, label %_ZN4absl12lts_2025051218debugging_internalL6AppendEPNS1_5StateEPKcm.exit

bb.h:                                             ; preds = %.loopexit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !13
  %i.al = sext i32 %i.af to i64
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  store i8 0, ptr %i.am, align 1, !tbaa !7
  br label %_ZN4absl12lts_2025051218debugging_internalL6AppendEPNS1_5StateEPKcm.exit

_ZN4absl12lts_2025051218debugging_internalL6AppendEPNS1_5StateEPKcm.exit: ; preds = %bb.h, %.loopexit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress nofree nosync memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL22ParseTemplateParamDeclEPNS1_5StateE(ptr noundef captures(none) %0) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 24 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 5 uses
  %i.c = add nsw i32 %i.b, 1                      ; 5 uses
  store i32 %i.c, ptr %i.a, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15   ; 6 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !15
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 17 uses
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.i, align 4 ; 4 uses
  %i.j = add nsw i32 %i.b, 2                      ; 2 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !17
  %i.k = add nsw i32 %i.e, 2
  store i32 %i.k, ptr %i.d, align 8, !tbaa !15
  %i.l = icmp sgt i32 %i.b, 254                   ; 2 uses
  %i.m = icmp sgt i32 %i.e, 131070
  %or.cond.i = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val11.i = load ptr, ptr %0, align 8, !tbaa !8
  %.val12.i = load i32, ptr %i.i, align 4, !tbaa !16 ; 2 uses
  %i.n = sext i32 %.val12.i to i64
  %i.o = getelementptr inbounds i8, ptr %.val11.i, i64 %i.n ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !7
  %i.q = icmp eq i8 %i.p, 84
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !7
  %i.t = icmp eq i8 %i.s, 121
  br i1 %i.t, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit, label %bb.f

_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit: ; preds = %bb.d
  %i.u = add nsw i32 %.val12.i, 2
  store i32 %i.u, ptr %i.i, align 4, !tbaa !16
  store i32 %i.c, ptr %i.a, align 4, !tbaa !17
  br label %bb.ab

.loopexit:                                        ; preds = %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.i, %bb.k, %bb.o, %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.v = load i32, ptr %i.a, align 4, !tbaa !17
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.a, align 4, !tbaa !17
  resume { ptr, i32 } %lpad.phi

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.c
  store i32 %i.j, ptr %i.a, align 4, !tbaa !17
  %i.x = add nsw i32 %i.e, 3                      ; 2 uses
  store i32 %i.x, ptr %i.d, align 8, !tbaa !15
  %i.y = icmp sgt i32 %i.e, 131069
  %or.cond.i23 = select i1 %i.l, i1 true, i1 %i.y
  br i1 %or.cond.i23, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit27.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val11.i24 = load ptr, ptr %0, align 8, !tbaa !8
  %.val12.i25 = load i32, ptr %i.i, align 4, !tbaa !16 ; 2 uses
  %i.z = sext i32 %.val12.i25 to i64
  %i.aa = getelementptr inbounds i8, ptr %.val11.i24, i64 %i.z ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !7
  %i.ac = icmp eq i8 %i.ab, 84
  br i1 %i.ac, label %bb.h, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit27.thread

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !7
  %i.af = icmp eq i8 %i.ae, 107
  br i1 %i.af, label %bb.i, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit27.thread

_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit27.thread: ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.c, ptr %i.a, align 4, !tbaa !17
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ag = add nsw i32 %.val12.i25, 2
  store i32 %i.ag, ptr %i.i, align 4, !tbaa !16
  store i32 %i.c, ptr %i.a, align 4, !tbaa !17
  %i.ah = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL9ParseNameEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.j unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  br i1 %i.ah, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.pre = load i32, ptr %i.a, align 4, !tbaa !17
  %.pre52 = load i32, ptr %i.d, align 8, !tbaa !15
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL17ParseTemplateArgsEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.ab unwind label %.loopexit.split-lp ; 0 uses

bb.l:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit27.thread
  %i.aj = phi i32 [ %.pre52, %._crit_edge ], [ %i.x, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit27.thread ] ; 2 uses
  %i.ak = phi i32 [ %.pre, %._crit_edge ], [ %i.c, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit27.thread ] ; 5 uses
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.i, align 4
  %i.al = add nsw i32 %i.ak, 1                    ; 2 uses
  store i32 %i.al, ptr %i.a, align 4, !tbaa !17
  %i.am = add nsw i32 %i.aj, 1                    ; 2 uses
  store i32 %i.am, ptr %i.d, align 8, !tbaa !15
  %i.an = icmp sgt i32 %i.ak, 255
  %i.ao = icmp sgt i32 %i.aj, 131071
  %or.cond.i28 = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond.i28, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit32.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val11.i29 = load ptr, ptr %0, align 8, !tbaa !8
  %.val12.i30 = load i32, ptr %i.i, align 4, !tbaa !16 ; 2 uses
  %i.ap = sext i32 %.val12.i30 to i64
  %i.aq = getelementptr inbounds i8, ptr %.val11.i29, i64 %i.ap ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !7
  %i.as = icmp eq i8 %i.ar, 84
  br i1 %i.as, label %bb.n, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit32.thread

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !7
  %i.av = icmp eq i8 %i.au, 110
  br i1 %i.av, label %bb.o, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit32.thread

_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit32.thread: ; preds = %bb.l, %bb.n, %bb.m
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !17
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aw = add nsw i32 %.val12.i30, 2
  store i32 %i.aw, ptr %i.i, align 4, !tbaa !16
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !17
  %i.ax = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL9ParseTypeEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.p unwind label %.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  br i1 %i.ax, label %bb.ab, label %._crit_edge53

._crit_edge53:                                    ; preds = %bb.p
  %.pre54 = load i32, ptr %i.a, align 4, !tbaa !17 ; 2 uses
  %.pre55 = load i32, ptr %i.d, align 8, !tbaa !15
  %.pre57 = add nsw i32 %.pre54, 1
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge53, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit32.thread
  %.pre-phi = phi i32 [ %.pre57, %._crit_edge53 ], [ %i.al, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit32.thread ] ; 4 uses
  %i.ay = phi i32 [ %.pre55, %._crit_edge53 ], [ %i.am, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit32.thread ] ; 2 uses
  %i.az = phi i32 [ %.pre54, %._crit_edge53 ], [ %i.ak, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit32.thread ] ; 5 uses
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.pre-phi, ptr %i.a, align 4, !tbaa !17
  %i.ba = add nsw i32 %i.ay, 1                    ; 4 uses
  store i32 %i.ba, ptr %i.d, align 8, !tbaa !15
  %i.bb = icmp sgt i32 %i.az, 255
  %i.bc = icmp sgt i32 %i.ay, 131071
  %or.cond.i33 = select i1 %i.bb, i1 true, i1 %i.bc
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218debugging_internalL29ParseUnresolvedQualifierLevelEPNS1_5StateE:bb.a
  ret i1 %.1

bb.i:                                             ; preds = %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.k, %bb.d ]
  %i.r = load i32, ptr %i.a, align 4, !tbaa !17
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.a, align 4, !tbaa !17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree nosync memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL20ParseLocalNameSuffixEPNS1_5StateE(ptr nofree noundef captures(none) %0) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 20 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17   ; 7 uses
  %i.d = add nsw i32 %i.c, 1                      ; 4 uses
  store i32 %i.d, ptr %i.b, align 4, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15   ; 8 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !15
  %i.h = icmp sgt i32 %i.c, 255
  %i.i = icmp sgt i32 %i.f, 131071
  %or.cond73 = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond73, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 12 uses
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.j, align 4 ; 3 uses
  %i.k = add nsw i32 %i.c, 2                      ; 2 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !17
  %i.l = add nsw i32 %i.f, 2
  store i32 %i.l, ptr %i.e, align 8, !tbaa !15
  %i.m = icmp sgt i32 %i.c, 254
  %i.n = icmp sgt i32 %i.f, 131070
  %or.cond.i = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond.i, label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !8  ; 3 uses
  %.val7.i = load i32, ptr %i.j, align 4, !tbaa !16 ; 3 uses
  %i.o = sext i32 %.val7.i to i64
  %i.p = getelementptr inbounds i8, ptr %.val6.i, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !7
  %i.r = icmp eq i8 %i.q, 100
  br i1 %i.r, label %bb.d, label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread

_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread: ; preds = %bb.b, %bb.c
  store i32 %i.d, ptr %i.b, align 4, !tbaa !17
  br label %bb.z

bb.d:                                             ; preds = %bb.c
  %i.s = add nsw i32 %.val7.i, 1                  ; 4 uses
  store i32 %i.s, ptr %i.j, align 4, !tbaa !16
  store i32 %i.d, ptr %i.b, align 4, !tbaa !17
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.val6.i, i64 %i.t ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !7     ; 2 uses
  %i.w = add i8 %i.v, -48
  %i.x = icmp ult i8 %i.w, 10
  %i.y = icmp eq i8 %i.v, 95
  %or.cond44 = or i1 %i.y, %i.x
  br i1 %or.cond44, label %bb.e, label %bb.z

bb.e:                                             ; preds = %bb.d
  %i.z = add nsw i32 %i.f, 3
  store i32 %i.z, ptr %i.e, align 8, !tbaa !15
  %i.aa = icmp sgt i32 %i.f, 131069
  br i1 %i.aa, label %_ZN4absl12lts_2025051218debugging_internalL11ParseNumberEPNS1_5StateEPi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = add nsw i32 %i.c, 3
  store i32 %i.ab, ptr %i.b, align 4, !tbaa !17
  %i.ac = add nsw i32 %i.f, 4
  store i32 %i.ac, ptr %i.e, align 8, !tbaa !15
  %i.ad = icmp sgt i32 %i.c, 253
  %i.ae = icmp eq i32 %i.f, 131069
  %or.cond.i.i = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond.i.i, label %._crit_edge44.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i8, ptr %i.u, align 1, !tbaa !7
  %i.ag = icmp eq i8 %i.af, 110
  br i1 %i.ag, label %bb.h, label %._crit_edge44.i

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %.val7.i, 2                 ; 3 uses
  store i32 %i.ah, ptr %i.j, align 4, !tbaa !16
  %.pre82 = sext i32 %i.ah to i64
  br label %._crit_edge44.i

._crit_edge44.i:                                  ; preds = %bb.h, %bb.g, %bb.f
  %.pre-phi = phi i64 [ %.pre82, %bb.h ], [ %i.t, %bb.g ], [ %i.t, %bb.f ]
  %.val35.i = phi i32 [ %i.ah, %bb.h ], [ %i.s, %bb.g ], [ %i.s, %bb.f ]
  %.0.i36.i = phi i1 [ true, %bb.h ], [ false, %bb.g ], [ false, %bb.f ]
  store i32 %i.k, ptr %i.b, align 4, !tbaa !17
  %i.ai = getelementptr inbounds i8, ptr %.val6.i, i64 %.pre-phi ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !7   ; 2 uses
  %i.ak = add i8 %i.aj, -48
  %i.al = icmp ult i8 %i.ak, 10
  br i1 %i.al, label %.lr.ph.i, label %_ZN4absl12lts_2025051218debugging_internalL11ParseNumberEPNS1_5StateEPi.exit

.lr.ph.i:                                         ; preds = %._crit_edge44.i, %.lr.ph.i
  %i.am = phi i8 [ %i.as, %.lr.ph.i ], [ %i.aj, %._crit_edge44.i ]
  %.041.i = phi i32 [ %i.aq, %.lr.ph.i ], [ 0, %._crit_edge44.i ]
  %.02140.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %i.ai, %._crit_edge44.i ]
  %i.an = mul i32 %.041.i, 10
  %i.ao = zext nneg i8 %i.am to i32
  %i.ap = add nsw i32 %i.ao, -48
  %i.aq = add i32 %i.ap, %i.an                    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02140.i, i64 1 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !7   ; 2 uses
  %i.at = add i8 %i.as, -48
  %i.au = icmp ult i8 %i.at, 10
  br i1 %i.au, label %.lr.ph.i, label %bb.i, !llvm.loop !42

bb.i:                                             ; preds = %.lr.ph.i
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = ptrtoint ptr %i.ai to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = trunc i64 %i.ax to i32
  %i.az = add nsw i32 %.val35.i, %i.ay
  store i32 %i.az, ptr %i.j, align 4, !tbaa !16
  %i.ba = sub i32 0, %i.aq
  %spec.select.i = select i1 %.0.i36.i, i32 %i.ba, i32 %i.aq
  br label %_ZN4absl12lts_2025051218debugging_internalL11ParseNumberEPNS1_5StateEPi.exit

_ZN4absl12lts_2025051218debugging_internalL11ParseNumberEPNS1_5StateEPi.exit: ; preds = %bb.e, %._crit_edge44.i, %bb.i
  %.0 = phi i32 [ -1, %bb.e ], [ %spec.select.i, %bb.i ], [ -1, %._crit_edge44.i ] ; 2 uses
  store i32 %i.d, ptr %i.b, align 4, !tbaa !17
  %i.bb = add i32 %.0, -2147483646
  %or.cond = icmp ult i32 %i.bb, -2147483647
  %i.bc = add nsw i32 %.0, 2
  %i.bd = select i1 %or.cond, i32 1, i32 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bf = load i32, ptr %i.be, align 8
  %.not.i = icmp sgt i32 %i.bf, -1
  br i1 %.not.i, label %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit.thread, label %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit

_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit.thread: ; preds = %_ZN4absl12lts_2025051218debugging_internalL11ParseNumberEPNS1_5StateEPi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  br label %_ZN4absl12lts_2025051218debugging_internalL18MaybeAppendDecimalEPNS1_5StateEi.exit.thread

_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit: ; preds = %_ZN4absl12lts_2025051218debugging_internalL11ParseNumberEPNS1_5StateEPi.exit
  tail call fastcc void @_ZN4absl12lts_2025051218debugging_internalL21MaybeAppendWithLengthEPNS1_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.251, i64 noundef 15)
  %.pr = load i32, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %.not.i48 = icmp sgt i32 %.pr, -1
  br i1 %.not.i48, label %_ZN4absl12lts_2025051218debugging_internalL18MaybeAppendDecimalEPNS1_5StateEi.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.08.i = phi i32 [ %i.bd, %bb.j ], [ %i.bl, %bb.k ] ; 3 uses
  %.0.i49 = phi ptr [ %i.bg, %bb.j ], [ %i.bk, %bb.k ]
  %i.bh = srem i32 %.08.i, 10
  %i.bi = trunc nsw i32 %i.bh to i8
  %i.bj = add nsw i8 %i.bi, 48
  %i.bk = getelementptr inbounds i8, ptr %.0.i49, i64 -1 ; 5 uses
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !7
  %i.bl = sdiv i32 %.08.i, 10
  %i.bm = icmp ugt ptr %i.bk, %i.a
  %i.bn = add i32 %.08.i, -10
  %i.bo = icmp ult i32 %i.bn, -19
  %i.bp = select i1 %i.bm, i1 %i.bo, i1 false
  br i1 %i.bp, label %bb.k, label %bb.l, !llvm.loop !48

bb.l:                                             ; preds = %bb.k
  %i.bq = ptrtoint ptr %i.bk to i64
  %i.br = ptrtoint ptr %i.a to i64
  %.neg.i = sub i64 %i.br, %i.bq
  %i.bs = add i64 %.neg.i, 20                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i
  %.018.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cf, %bb.n ] ; 2 uses
  %i.bw = load i32, ptr %i.bt, align 8, !tbaa !18 ; 2 uses
  %i.bx = add nsw i32 %i.bw, 1                    ; 2 uses
  %i.by = load i32, ptr %i.bu, align 8, !tbaa !14 ; 2 uses
  %i.bz = icmp slt i32 %i.bx, %i.by
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.018.i.i
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !7
  %i.cc = load ptr, ptr %i.bv, align 8, !tbaa !13
  store i32 %i.bx, ptr %i.bt, align 8, !tbaa !18
  %i.cd = sext i32 %i.bw to i64
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 %i.cd
  store i8 %i.cb, ptr %i.ce, align 1, !tbaa !7
  %i.cf = add nuw nsw i64 %.018.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cf, %i.bs
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %bb.m, !llvm.loop !46

bb.o:                                             ; preds = %bb.m
  %i.cg = add nsw i32 %i.by, 1
  store i32 %i.cg, ptr %i.bt, align 8, !tbaa !18
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.n, %bb.o, %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !18 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !14
  %i.cl = icmp slt i32 %i.ci, %i.ck
  br i1 %i.cl, label %bb.p, label %_ZN4absl12lts_2025051218debugging_internalL18MaybeAppendDecimalEPNS1_5StateEi.exit

bb.p:                                             ; preds = %.loopexit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !13
  %i.co = sext i32 %i.ci to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  store i8 0, ptr %i.cp, align 1, !tbaa !7
  br label %_ZN4absl12lts_2025051218debugging_internalL18MaybeAppendDecimalEPNS1_5StateEi.exit

_ZN4absl12lts_2025051218debugging_internalL18MaybeAppendDecimalEPNS1_5StateEi.exit.thread: ; preds = %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit.thread, %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit52

_ZN4absl12lts_2025051218debugging_internalL18MaybeAppendDecimalEPNS1_5StateEi.exit: ; preds = %.loopexit.i.i, %bb.p
  %.pr69 = load i32, ptr %i.be, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.not.i50 = icmp sgt i32 %.pr69, -1
  br i1 %.not.i50, label %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit52, label %bb.q

bb.q:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL18MaybeAppendDecimalEPNS1_5StateEi.exit
  call fastcc void @_ZN4absl12lts_2025051218debugging_internalL21MaybeAppendWithLengthEPNS1_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.252, i64 noundef 3)
  br label %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit52

_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit52: ; preds = %_ZN4absl12lts_2025051218debugging_internalL18MaybeAppendDecimalEPNS1_5StateEi.exit.thread, %_ZN4absl12lts_2025051218debugging_internalL18MaybeAppendDecimalEPNS1_5StateEi.exit, %bb.q
  %i.cq = load i32, ptr %i.b, align 4, !tbaa !17  ; 4 uses
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.b, align 4, !tbaa !17
  %i.cs = load i32, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.e, align 8, !tbaa !15
  %i.cu = icmp sgt i32 %i.cq, 255
  %i.cv = icmp sgt i32 %i.cs, 131071
  %or.cond.i53 = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond.i53, label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit57.thread, label %bb.r

bb.r:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit52
  %.val6.i54 = load ptr, ptr %0, align 8, !tbaa !8
  %.val7.i55 = load i32, ptr %i.j, align 4, !tbaa !16 ; 2 uses
  %i.cw = sext i32 %.val7.i55 to i64
  %i.cx = getelementptr inbounds i8, ptr %.val6.i54, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !7
  %i.cz = icmp eq i8 %i.cy, 95
  br i1 %i.cz, label %bb.u, label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit57.thread

_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit57.thread: ; preds = %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit52, %bb.r
  store i32 %i.cq, ptr %i.b, align 4, !tbaa !17
  br label %bb.w

bb.s:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit60
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.t:                                             ; preds = %bb.u
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.u:                                             ; preds = %bb.r
  %i.dc = add nsw i32 %.val7.i55, 1
  store i32 %i.dc, ptr %i.j, align 4, !tbaa !16
  store i32 %i.cq, ptr %i.b, align 4, !tbaa !17
  %i.dd = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL9ParseNameEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.u
  br i1 %i.dd, label %bb.aj, label %bb.w

bb.w:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit57.thread, %bb.v
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.j, align 4
  %i.de = load i32, ptr %i.be, align 8
  %.not37 = icmp sgt i32 %i.de, -1
  br i1 %.not37, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !18 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !14
  %i.dj = icmp slt i32 %i.dg, %i.di
  br i1 %i.dj, label %bb.y, label %bb.aj

bb.y:                                             ; preds = %bb.x
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !13
  %i.dm = sext i32 %i.dg to i64
  %i.dn = getelementptr inbounds i8, ptr %i.dl, i64 %i.dm
  store i8 0, ptr %i.dn, align 1, !tbaa !7
  br label %bb.aj

bb.z:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread, %bb.d
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.j, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8
  %.not.i58 = icmp sgt i32 %i.dp, -1
  br i1 %.not.i58, label %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit60, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @_ZN4absl12lts_2025051218debugging_internalL21MaybeAppendWithLengthEPNS1_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i64 noundef 2)
  br label %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit60

_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit60: ; preds = %bb.z, %bb.aa
  %i.dq = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL9ParseNameEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.ab unwind label %bb.s

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit60
  br i1 %i.dq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @_ZN4absl12lts_2025051218debugging_internalL18ParseDiscriminatorEPNS1_5StateE(ptr noundef nonnull %0)
  br label %bb.aj

bb.ad:                                            ; preds = %bb.ab
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.j, align 4
  %i.dr = load i32, ptr %i.do, align 8
  %.not = icmp sgt i32 %i.dr, -1
  br i1 %.not, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !18 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !14
  %i.dw = icmp slt i32 %i.dt, %i.dv
  br i1 %i.dw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !13
  %i.dz = sext i32 %i.dt to i64
  %i.ea = getelementptr inbounds i8, ptr %i.dy, i64 %i.dz
  store i8 0, ptr %i.ea, align 1, !tbaa !7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.eb = load i32, ptr %i.b, align 4, !tbaa !17  ; 4 uses
  %i.ec = add nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.b, align 4, !tbaa !17
  %i.ed = load i32, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.ee = add nsw i32 %i.ed, 1
  store i32 %i.ee, ptr %i.e, align 8, !tbaa !15
  %i.ef = icmp sgt i32 %i.eb, 255
  %i.eg = icmp sgt i32 %i.ed, 131071
  %or.cond.i61 = select i1 %i.ef, i1 true, i1 %i.eg
  br i1 %or.cond.i61, label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit65.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val6.i62 = load ptr, ptr %0, align 8, !tbaa !8
  %.val7.i63 = load i32, ptr %i.j, align 4, !tbaa !16 ; 2 uses
  %i.eh = sext i32 %.val7.i63 to i64
  %i.ei = getelementptr inbounds i8, ptr %.val6.i62, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !7
  %i.ek = icmp eq i8 %i.ej, 115
  br i1 %i.ek, label %bb.ai, label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit65.thread

_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit65.thread: ; preds = %bb.ag, %bb.ah
  store i32 %i.eb, ptr %i.b, align 4, !tbaa !17
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.el = add nsw i32 %.val7.i63, 1
  store i32 %i.el, ptr %i.j, align 4, !tbaa !16
  store i32 %i.eb, ptr %i.b, align 4, !tbaa !17
  tail call fastcc void @_ZN4absl12lts_2025051218debugging_internalL18ParseDiscriminatorEPNS1_5StateE(ptr noundef nonnull %0)
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit65.thread, %bb.v, %bb.y, %bb.x, %bb.w, %bb.ac, %bb.ai
  %.1 = phi i1 [ true, %bb.ai ], [ false, %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit65.thread ], [ true, %bb.ac ], [ true, %bb.v ], [ false, %bb.y ], [ false, %bb.x ], [ false, %bb.w ]
  %.pre = load i32, ptr %i.b, align 4, !tbaa !17
  %i.em = add nsw i32 %.pre, -1
  br label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.ak:                                            ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.db, %bb.t ], [ %i.da, %bb.s ]
  %i.en = load i32, ptr %i.b, align 4, !tbaa !17
  %i.eo = add nsw i32 %i.en, -1
  store i32 %i.eo, ptr %i.b, align 4, !tbaa !17
  resume { ptr, i32 } %.pn

_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %bb.aj
  %i.ep = phi i32 [ %i.em, %bb.aj ], [ %i.c, %bb.a ]
  %.2 = phi i1 [ %.1, %bb.aj ], [ false, %bb.a ]
  store i32 %i.ep, ptr %i.b, align 4, !tbaa !17
  ret i1 %.2
}
end_hunk_2
