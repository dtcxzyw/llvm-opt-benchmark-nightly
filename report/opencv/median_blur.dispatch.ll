Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/median_blur.dispatch?download=true
inline.NumInlined: 1467
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN2cv12cpu_baseline10medianBlurERKNS_3MatERS1_i:bb.a
          to label %bb.k unwind label %bb.g       ; 0 uses

bb.g:                                             ; preds = %bb.kt, %bb.jx, %bb.jb, %bb.l, %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #14
  %i.o = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 33619968, ptr %30, align 8, !tbaa !120
  store ptr %29, ptr %i.o, align 8, !tbaa !19
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %30)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #14
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #14
  br label %.body

bb.k:                                             ; preds = %bb.f, %bb.i
  %i.r = load i32, ptr %29, align 8, !tbaa !16
  %i.s = and i32 %i.r, 31
  switch i32 %i.s, label %bb.lr [
    i32 0, label %bb.l
    i32 2, label %bb.jb
    i32 3, label %bb.jx
    i32 5, label %bb.kt
  ]

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #14
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %27, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_118medianBlur_SortNetINS1_8MinMax8uES3_EEvRKNS_3MatERS4_iE25__cv_trace_location_fn626)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !119  ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !119  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.y = load i64, ptr %i.v, align 8, !tbaa !21   ; 3 uses
  %i.z = trunc i64 %i.y to i32                    ; 4 uses
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !21  ; 3 uses
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !22 ; 6 uses
  %i.ae = icmp slt i32 %i.ad, 3
  br i1 %i.ae, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %.noexc.i unwind label %bb.x

.noexc.i:                                         ; preds = %bb.m
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.17, i32 noundef 109) #15
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc.i
  unreachable

bb.o:                                             ; preds = %.noexc.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %25, align 8, !tbaa !25   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.o
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !26
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  br label %.body.i

bb.p:                                             ; preds = %.noexc
  %i.al = icmp sgt i32 %i.ad, 0
  br i1 %i.al, label %bb.q, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.p
  %i.am = icmp eq i32 %i.ad, 0
  %i.an = zext i1 %i.am to i32
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.ap = icmp eq i32 %i.ad, 2
  %i.aq = zext i1 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !121 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ad, 1
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = load i32, ptr %i.ao, align 4, !tbaa !121
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %.thread.i.i
  %i.au = phi i32 [ %i.an, %.thread.i.i ], [ %i.as, %bb.q ]
  %i.av = icmp sgt i32 %i.ad, -1
  %i.aw = zext i1 %i.av to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ax = phi i32 [ %i.as, %bb.r ], [ %i.au, %bb.s ] ; 6 uses
  %i.ay = phi i32 [ %i.at, %bb.r ], [ %i.aw, %bb.s ] ; 10 uses
  %i.az = load i32, ptr %29, align 8, !tbaa !16
  %i.ba = lshr i32 %i.az, 5
  %i.bb = and i32 %i.ba, 127                      ; 3 uses
  %i.bc = add nuw nsw i32 %i.bb, 1                ; 18 uses
  switch i32 %2, label %.loopexit.i [
    i32 3, label %bb.u
    i32 5, label %bb.bc
  ]

bb.u:                                             ; preds = %bb.t
  %i.bd = icmp eq i32 %i.ax, 1
  %i.be = icmp eq i32 %i.ay, 1                    ; 4 uses
  %or.cond.i = or i1 %i.bd, %i.be
  br i1 %or.cond.i, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.bf = add nsw i32 %i.ay, %i.ax                ; 2 uses
  %i.bg = select i1 %i.be, i32 %i.bc, i32 %i.z    ; 2 uses
  %i.bh = icmp sgt i32 %i.bf, 1
  br i1 %i.bh, label %.preheader.lr.ph.i, label %.loopexit.i

.preheader.lr.ph.i:                               ; preds = %bb.v
  %i.bi = select i1 %i.be, i32 %i.bc, i32 %i.ab
  %i.bj = sub nsw i32 %i.z, %i.bc
  %i.bk = sub nsw i32 0, %i.bg
  %i.bl = add nsw i32 %i.bf, -2                   ; 2 uses
  %narrow1478.i = select i1 %i.be, i32 0, i32 %i.bj
  %i.bm = sext i32 %narrow1478.i to i64
  %i.bn = sext i32 %i.bi to i64
  %wide.trip.count1651.i = zext nneg i32 %i.bc to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.lr.ph.i
  %.01607.i = phi ptr [ %i.u, %.preheader.lr.ph.i ], [ %i.da, %bb.y ]
  %.03321606.i = phi ptr [ %i.w, %.preheader.lr.ph.i ], [ %i.db, %bb.y ] ; 2 uses
  %.03361605.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.cz, %bb.y ] ; 4 uses
  %.not362.i = icmp eq i32 %.03361605.i, 0
  %i.bo = select i1 %.not362.i, i32 0, i32 %i.bk
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i32 %.03361605.i, %i.bl
  %i.br = select i1 %i.bq, i32 %i.bg, i32 0
  %i.bs = sext i32 %i.br to i64
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit.i: ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit399.i, %.preheader.i
  %indvars.iv1648.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next1649.i, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit399.i ] ; 2 uses
  %.11604.i = phi ptr [ %.01607.i, %.preheader.i ], [ %i.cx, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit399.i ] ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %.11604.i, i64 %i.bp
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !26
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = load i8, ptr %.11604.i, align 1, !tbaa !26
  %i.bx = zext i8 %i.bw to i32                    ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %.11604.i, i64 %i.bs
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !26
  %i.ca = zext i8 %i.bz to i32
  %i.cb = sub nsw i32 %i.bv, %i.bx
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 256
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !26
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %i.ch = add nuw nsw i32 %i.cg, %i.bx            ; 2 uses
  %i.ci = sub nsw i32 %i.ch, %i.ca
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 256
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !26
  %i.cn = zext i8 %i.cm to i32
  %i.co = sub nsw i32 %i.ch, %i.cn                ; 2 uses
  %i.cp = add nsw i32 %i.co, %i.cg
  %i.cq = sub nsw i32 %i.bv, %i.cp                ; 2 uses
  %i.cr = add nsw i32 %i.cq, 256
  %or.cond.i398.i = icmp ult i32 %i.cr, 769
  br i1 %or.cond.i398.i, label %bb.w, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit399.i

bb.w:                                             ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit.i
  %i.cs = sext i32 %i.cq to i64
  %i.ct = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 256
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !26
  %38 = zext i8 %i.cv to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit399.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit399.i: ; preds = %bb.w, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit.i
  %39 = phi i32 [ %38, %bb.w ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit.i ]
  %40 = add nsw i32 %39, %i.co
  %41 = trunc i32 %40 to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %.03321606.i, i64 %indvars.iv1648.i
  store i8 %41, ptr %i.cw, align 1, !tbaa !26
  %indvars.iv.next1649.i = add nuw nsw i64 %indvars.iv1648.i, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.11604.i, i64 1 ; 2 uses
  %exitcond1652.not.i = icmp eq i64 %indvars.iv.next1649.i, %wide.trip.count1651.i
  br i1 %exitcond1652.not.i, label %bb.y, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit.i, !llvm.loop !32

bb.x:                                             ; preds = %bb.m
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cy, %bb.x ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %27) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  br label %.body

bb.y:                                             ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit399.i
  %i.cz = add nuw nsw i32 %.03361605.i, 1
  %i.da = getelementptr inbounds i8, ptr %i.cx, i64 %i.bm
  %i.db = getelementptr inbounds i8, ptr %.03321606.i, i64 %i.bn
  %exitcond1653.not.i = icmp eq i32 %.03361605.i, %i.bl
  br i1 %exitcond1653.not.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !33

bb.z:                                             ; preds = %bb.u
  %i.dc = mul nsw i32 %i.bc, %i.ax                ; 3 uses
  %i.dd = icmp sgt i32 %i.ay, 0
  br i1 %i.dd, label %.lr.ph1602.i, label %.loopexit.i

.lr.ph1602.i:                                     ; preds = %bb.z
  %sext359.i = shl i64 %i.y, 32
  %i.de = ashr exact i64 %sext359.i, 32           ; 3 uses
  %i.df = add nsw i32 %i.ay, -1
  %i.dg = sub nsw i32 %i.dc, %i.bc                ; 2 uses
  %i.dh = zext nneg i32 %i.bc to i64              ; 6 uses
  %i.di = sub nsw i64 0, %i.dh                    ; 3 uses
  %sext360.i = shl i64 %i.aa, 32
  %i.dj = ashr exact i64 %sext360.i, 32
  %i.dk = zext nneg i32 %i.bb to i64
  %i.dl = sext i32 %i.dg to i64                   ; 2 uses
  %wide.trip.count1646.i = zext nneg i32 %i.ay to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.bb, %.lr.ph1602.i
  %indvars.iv1643.i = phi i64 [ 0, %.lr.ph1602.i ], [ %indvars.iv.next1644.i, %bb.bb ] ; 3 uses
  %.13331600.i = phi ptr [ %i.w, %.lr.ph1602.i ], [ %i.sz, %bb.bb ] ; 3 uses
  %i.dm = trunc nuw nsw i64 %indvars.iv1643.i to i32
  %i.dn = call i32 @llvm.smax.i32(i32 %i.dm, i32 1)
  %.sroa.speculated1454.i = add nsw i32 %i.dn, -1
  %i.do = zext nneg i32 %.sroa.speculated1454.i to i64
  %i.dp = mul nsw i64 %i.de, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.dp ; 4 uses
  %i.dr = mul nsw i64 %indvars.iv1643.i, %i.de
  %i.ds = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.dr ; 4 uses
  %indvars.iv.next1644.i = add nuw nsw i64 %indvars.iv1643.i, 1 ; 3 uses
  %i.dt = trunc nuw nsw i64 %indvars.iv.next1644.i to i32
  %.sroa.speculated1449.i = call i32 @llvm.smin.i32(i32 %i.df, i32 %i.dt)
  %i.du = sext i32 %.sroa.speculated1449.i to i64
  %i.dv = mul nsw i64 %i.de, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.dv ; 4 uses
  br label %.loopexit1574.i

.loopexit1574.loopexit.i:                         ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit476.i
  %i.dx = trunc nsw i64 %indvars.iv.next1641.i to i32
  br label %.loopexit1574.i.backedge

.loopexit1574.i:                                  ; preds = %.loopexit1574.i.backedge, %bb.aa
  %.1343.i = phi i32 [ 0, %bb.aa ], [ %.1343.i.be, %.loopexit1574.i.backedge ] ; 3 uses
  %.0340.i = phi i32 [ %i.bc, %bb.aa ], [ %i.dc, %.loopexit1574.i.backedge ] ; 4 uses
  %i.dy = icmp slt i32 %.1343.i, %.0340.i
  br i1 %i.dy, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit402.preheader.i, label %._crit_edge1595.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit402.preheader.i: ; preds = %.loopexit1574.i
  %i.dz = sext i32 %.1343.i to i64
  %wide.trip.count1638.i = sext i32 %.0340.i to i64
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit402.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit402.i: ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit438.i, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit402.preheader.i
  %indvars.iv1635.i = phi i64 [ %i.dz, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit402.preheader.i ], [ %indvars.iv.next1636.i, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit438.i ] ; 9 uses
  %.not361.not.i = icmp sgt i64 %indvars.iv1635.i, %i.dk
  %i.ea = select i1 %.not361.not.i, i64 %i.dh, i64 0
  %i.eb = sub nsw i64 %indvars.iv1635.i, %i.ea    ; 3 uses
  %i.ec = icmp slt i64 %indvars.iv1635.i, %i.dl
  %i.ed = select i1 %i.ec, i64 %i.dh, i64 0
  %i.ee = add nsw i64 %i.ed, %indvars.iv1635.i    ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %i.dq, i64 %i.eb
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !26
  %i.eh = zext i8 %i.eg to i32                    ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.dq, i64 %indvars.iv1635.i
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !26
  %i.ek = zext i8 %i.ej to i32                    ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.dq, i64 %i.ee
  %i.em = load i8, ptr %i.el, align 1, !tbaa !26
  %i.en = zext i8 %i.em to i32                    ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.ds, i64 %i.eb
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !26
  %i.eq = zext i8 %i.ep to i32                    ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.ds, i64 %indvars.iv1635.i
  %i.es = load i8, ptr %i.er, align 1, !tbaa !26
  %i.et = zext i8 %i.es to i32                    ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.ds, i64 %i.ee
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !26
  %i.ew = zext i8 %i.ev to i32                    ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.dw, i64 %i.eb
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !26
  %i.ez = zext i8 %i.ey to i32                    ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %i.dw, i64 %indvars.iv1635.i
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !26
  %i.fc = zext i8 %i.fb to i32                    ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %i.dw, i64 %i.ee
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !26
  %i.ff = zext i8 %i.fe to i32                    ; 2 uses
  %i.fg = sub nsw i32 %i.ek, %i.en
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.fh
  %i.fj = getelementptr i8, ptr %i.fi, i64 256
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !26
  %i.fl = zext i8 %i.fk to i32                    ; 2 uses
  %i.fm = add nuw nsw i32 %i.fl, %i.en            ; 2 uses
  %i.fn = sub nsw i32 %i.ek, %i.fl                ; 2 uses
  %i.fo = sub nsw i32 %i.et, %i.ew
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.fp
  %i.fr = getelementptr i8, ptr %i.fq, i64 256
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !26
  %i.ft = zext i8 %i.fs to i32                    ; 2 uses
  %i.fu = add nuw nsw i32 %i.ft, %i.ew            ; 2 uses
  %i.fv = sub nsw i32 %i.et, %i.ft                ; 2 uses
  %i.fw = sub nsw i32 %i.fc, %i.ff
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 256
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !26
  %i.gb = zext i8 %i.ga to i32                    ; 2 uses
  %i.gc = add nuw nsw i32 %i.gb, %i.ff            ; 2 uses
  %i.gd = sub nsw i32 %i.fc, %i.gb                ; 2 uses
  %i.ge = sub nsw i32 %i.eh, %i.fn
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.gf
  %i.gh = getelementptr i8, ptr %i.gg, i64 256
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !26
  %i.gj = zext i8 %i.gi to i32                    ; 2 uses
  %i.gk = add nsw i32 %i.fn, %i.gj                ; 2 uses
  %i.gl = sub nsw i32 %i.eq, %i.fv
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gn, i64 256
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !26
  %i.gq = zext i8 %i.gp to i32                    ; 2 uses
  %i.gr = add nsw i32 %i.fv, %i.gq                ; 2 uses
  %i.gs = sub nsw i32 %i.eq, %i.gq                ; 2 uses
  %i.gt = sub nsw i32 %i.ez, %i.gd
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.gu
  %i.gw = getelementptr i8, ptr %i.gv, i64 256
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !26
  %i.gy = zext i8 %i.gx to i32                    ; 2 uses
  %i.gz = add nsw i32 %i.gd, %i.gy                ; 2 uses
  %i.ha = sub nsw i32 %i.ez, %i.gy                ; 2 uses
  %i.hb = sub nsw i32 %i.gk, %i.fm                ; 2 uses
  %i.hc = add nsw i32 %i.hb, 256
  %or.cond.i413.i = icmp ult i32 %i.hc, 769
  br i1 %or.cond.i413.i, label %bb.ab, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit414.i

bb.ab:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit402.i
  %i.hd = sext i32 %i.hb to i64
  %i.he = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.he, i64 256
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !26
  %i.hh = zext i8 %i.hg to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit414.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit414.i: ; preds = %bb.ab, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit402.i
  %i.hi = phi i32 [ %i.hh, %bb.ab ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit402.i ] ; 2 uses
  %i.hj = add nuw nsw i32 %i.hi, %i.fm            ; 2 uses
  %i.hk = sub nsw i32 %i.gr, %i.fu                ; 2 uses
  %i.hl = add nsw i32 %i.hk, 256
  %or.cond.i415.i = icmp ult i32 %i.hl, 769
  br i1 %or.cond.i415.i, label %bb.ac, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit416.i

bb.ac:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit414.i
  %i.hm = sext i32 %i.hk to i64
  %i.hn = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hn, i64 256
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !26
  %i.hq = zext i8 %i.hp to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit416.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit416.i: ; preds = %bb.ac, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit414.i
  %i.hr = phi i32 [ %i.hq, %bb.ac ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit414.i ] ; 2 uses
  %i.hs = add nuw nsw i32 %i.hr, %i.fu            ; 2 uses
  %i.ht = sub nsw i32 %i.gr, %i.hr                ; 2 uses
  %i.hu = sub nsw i32 %i.gz, %i.gc                ; 2 uses
  %i.hv = add nsw i32 %i.hu, 256
  %or.cond.i417.i = icmp ult i32 %i.hv, 769
  br i1 %or.cond.i417.i, label %bb.ad, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit418.i

bb.ad:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit416.i
  %i.hw = sext i32 %i.hu to i64
  %i.hx = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.hx, i64 256
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !26
  %i.ia = zext i8 %i.hz to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit418.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit418.i: ; preds = %bb.ad, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit416.i
  %i.ib = phi i32 [ %i.ia, %bb.ad ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit416.i ] ; 2 uses
  %i.ic = sub nsw i32 %i.gz, %i.ib                ; 2 uses
  %i.id = add nsw i32 %i.gs, %i.gj
  %i.ie = sub nsw i32 %i.eh, %i.id                ; 2 uses
  %i.if = add nsw i32 %i.ie, 256
  %or.cond.i419.i = icmp ult i32 %i.if, 769
  br i1 %or.cond.i419.i, label %bb.ae, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit420.i

bb.ae:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit418.i
  %i.ig = sext i32 %i.ie to i64
  %i.ih = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.ig
  %i.ii = getelementptr i8, ptr %i.ih, i64 256
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !26
  %i.ik = zext i8 %i.ij to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit420.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit420.i: ; preds = %bb.ae, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit418.i
  %i.il = phi i32 [ %i.ik, %bb.ae ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit418.i ]
  %i.im = add nuw nsw i32 %i.gc, %i.ib
  %i.in = sub nsw i32 %i.hs, %i.im                ; 2 uses
  %i.io = add nsw i32 %i.in, 256
  %or.cond.i421.i = icmp ult i32 %i.io, 769
  br i1 %or.cond.i421.i, label %bb.af, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit422.i

bb.af:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit420.i
  %i.ip = sext i32 %i.in to i64
  %i.iq = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.ip
  %i.ir = getelementptr i8, ptr %i.iq, i64 256
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !26
  %i.it = zext i8 %i.is to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit422.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit422.i: ; preds = %bb.af, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit420.i
  %i.iu = phi i32 [ %i.it, %bb.af ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit420.i ]
  %.neg1476.i = sub nsw i32 %i.iu, %i.hs
  %i.iv = sub nsw i32 %i.ht, %i.ic                ; 2 uses
  %i.iw = add nsw i32 %i.iv, 256
  %or.cond.i423.i = icmp ult i32 %i.iw, 769
  br i1 %or.cond.i423.i, label %bb.ag, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit424.i

bb.ag:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit422.i
  %i.ix = sext i32 %i.iv to i64
  %i.iy = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.ix
  %i.iz = getelementptr i8, ptr %i.iy, i64 256
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !26
  %i.jb = zext i8 %i.ja to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit424.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit424.i: ; preds = %bb.ag, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit422.i
  %i.jc = phi i32 [ %i.jb, %bb.ag ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit422.i ] ; 2 uses
  %i.jd = sub nsw i32 %i.ht, %i.jc                ; 2 uses
  %i.je = sub nsw i32 %i.gs, %i.ha
  %i.jf = add nsw i32 %i.il, %i.je                ; 2 uses
  %i.jg = add nsw i32 %i.jf, 256
  %or.cond.i425.i = icmp ult i32 %i.jg, 769
  br i1 %or.cond.i425.i, label %bb.ah, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit426.i

bb.ah:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit424.i
  %i.jh = sext i32 %i.jf to i64
  %i.ji = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.jh
  %i.jj = getelementptr i8, ptr %i.ji, i64 256
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !26
  %i.jl = zext i8 %i.jk to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit426.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit426.i: ; preds = %bb.ah, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit424.i
  %i.jm = phi i32 [ %i.jl, %bb.ah ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit424.i ]
  %i.jn = add nsw i32 %i.jm, %i.ha
  %i.jo = add nsw i32 %i.hi, %i.jd
  %i.jp = sub nsw i32 %i.gk, %i.jo                ; 2 uses
  %i.jq = add nsw i32 %i.jp, 256
  %or.cond.i427.i = icmp ult i32 %i.jq, 769
  br i1 %or.cond.i427.i, label %bb.ai, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit428.i

bb.ai:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit426.i
  %i.jr = sext i32 %i.jp to i64
  %i.js = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.jr
  %i.jt = getelementptr i8, ptr %i.js, i64 256
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !26
  %i.jv = zext i8 %i.ju to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit428.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit428.i: ; preds = %bb.ai, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit426.i
  %i.jw = phi i32 [ %i.jv, %bb.ai ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit426.i ]
  %i.jx = add nsw i32 %i.jw, %i.jd                ; 2 uses
  %i.jy = add nsw i32 %.neg1476.i, %i.hj          ; 2 uses
  %i.jz = add nsw i32 %i.jy, 256
  %or.cond.i429.i = icmp ult i32 %i.jz, 769
  br i1 %or.cond.i429.i, label %bb.aj, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit430.i

bb.aj:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit428.i
  %i.ka = sext i32 %i.jy to i64
  %i.kb = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.ka
  %i.kc = getelementptr i8, ptr %i.kb, i64 256
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !26
  %i.ke = zext i8 %i.kd to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit430.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit430.i: ; preds = %bb.aj, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit428.i
  %i.kf = phi i32 [ %i.ke, %bb.aj ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit428.i ]
  %i.kg = sub nsw i32 %i.hj, %i.kf                ; 2 uses
  %i.kh = add nsw i32 %i.jc, %i.ic
  %i.ki = sub nsw i32 %i.jx, %i.kh                ; 2 uses
  %i.kj = add nsw i32 %i.ki, 256
  %or.cond.i431.i = icmp ult i32 %i.kj, 769
  br i1 %or.cond.i431.i, label %bb.ak, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit432.i

bb.ak:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit430.i
  %i.kk = sext i32 %i.ki to i64
  %i.kl = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.kk
  %i.km = getelementptr i8, ptr %i.kl, i64 256
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !26
  %i.ko = zext i8 %i.kn to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit432.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit432.i: ; preds = %bb.ak, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit430.i
  %i.kp = phi i32 [ %i.ko, %bb.ak ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit430.i ]
  %i.kq = sub nsw i32 %i.jx, %i.kp                ; 2 uses
  %i.kr = sub nsw i32 %i.kq, %i.kg                ; 2 uses
  %i.ks = add nsw i32 %i.kr, 256
  %or.cond.i433.i = icmp ult i32 %i.ks, 769
  br i1 %or.cond.i433.i, label %bb.al, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit434.i

bb.al:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit432.i
  %i.kt = sext i32 %i.kr to i64
  %i.ku = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.kt
  %i.kv = getelementptr i8, ptr %i.ku, i64 256
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !26
  %i.kx = zext i8 %i.kw to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit434.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit434.i: ; preds = %bb.al, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit432.i
  %i.ky = phi i32 [ %i.kx, %bb.al ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit432.i ] ; 2 uses
  %i.kz = sub nsw i32 %i.kq, %i.ky                ; 2 uses
  %i.la = sub nsw i32 %i.jn, %i.kz                ; 2 uses
  %i.lb = add nsw i32 %i.la, 256
  %or.cond.i435.i = icmp ult i32 %i.lb, 769
  br i1 %or.cond.i435.i, label %bb.am, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit436.i

bb.am:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit434.i
  %i.lc = sext i32 %i.la to i64
  %i.ld = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.lc
  %i.le = getelementptr i8, ptr %i.ld, i64 256
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !26
  %i.lg = zext i8 %i.lf to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit436.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit436.i: ; preds = %bb.am, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit434.i
  %i.lh = phi i32 [ %i.lg, %bb.am ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit434.i ]
  %i.li = add nsw i32 %i.lh, %i.kz                ; 2 uses
  %i.lj = add nsw i32 %i.ky, %i.kg
  %i.lk = sub nsw i32 %i.li, %i.lj                ; 2 uses
  %i.ll = add nsw i32 %i.lk, 256
  %or.cond.i437.i = icmp ult i32 %i.ll, 769
  br i1 %or.cond.i437.i, label %bb.an, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit438.i

bb.an:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit436.i
  %i.lm = sext i32 %i.lk to i64
  %i.ln = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.lm
  %i.lo = getelementptr i8, ptr %i.ln, i64 256
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !26
  %42 = zext i8 %i.lp to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit438.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit438.i: ; preds = %bb.an, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit436.i
  %43 = phi i32 [ %42, %bb.an ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit436.i ]
  %44 = sub nsw i32 %i.li, %43
  %45 = trunc i32 %44 to i8
  %i.lq = getelementptr inbounds i8, ptr %.13331600.i, i64 %indvars.iv1635.i
  store i8 %45, ptr %i.lq, align 1, !tbaa !26
  %indvars.iv.next1636.i = add nsw i64 %indvars.iv1635.i, 1 ; 2 uses
  %exitcond1639.not.i = icmp eq i64 %indvars.iv.next1636.i, %wide.trip.count1638.i
  br i1 %exitcond1639.not.i, label %._crit_edge1595.i, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit402.i, !llvm.loop !34

._crit_edge1595.i:                                ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit438.i, %.loopexit1574.i
  %.2344.lcssa.i = phi i32 [ %.1343.i, %.loopexit1574.i ], [ %.0340.i, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit438.i ] ; 3 uses
  %i.lr = icmp eq i32 %.0340.i, %i.dc
  br i1 %i.lr, label %bb.bb, label %.preheader1573.i

.preheader1573.i:                                 ; preds = %._crit_edge1595.i
  %i.ls = icmp slt i32 %.2344.lcssa.i, %i.dg
  br i1 %i.ls, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit440.preheader.i, label %.loopexit1574.i.backedge

.loopexit1574.i.backedge:                         ; preds = %.preheader1573.i, %.loopexit1574.loopexit.i
  %.1343.i.be = phi i32 [ %.2344.lcssa.i, %.preheader1573.i ], [ %i.dx, %.loopexit1574.loopexit.i ]
  br label %.loopexit1574.i, !llvm.loop !35

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit440.preheader.i: ; preds = %.preheader1573.i
  %i.lt = sext i32 %.2344.lcssa.i to i64
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit440.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit440.i: ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit476.i, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit440.preheader.i
  %indvars.iv1640.i = phi i64 [ %i.lt, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit440.preheader.i ], [ %indvars.iv.next1641.i, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit476.i ] ; 5 uses
  %i.lu = getelementptr inbounds i8, ptr %i.dq, i64 %indvars.iv1640.i ; 3 uses
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 %i.di
  %.val370.i = load i8, ptr %i.lv, align 1, !tbaa !26
  %i.lw = zext i8 %.val370.i to i32               ; 2 uses
  %.val369.i = load i8, ptr %i.lu, align 1, !tbaa !26
  %i.lx = zext i8 %.val369.i to i32               ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.dh
  %.val368.i = load i8, ptr %i.ly, align 1, !tbaa !26
  %i.lz = zext i8 %.val368.i to i32               ; 2 uses
  %i.ma = getelementptr inbounds i8, ptr %i.ds, i64 %indvars.iv1640.i ; 3 uses
  %i.mb = getelementptr inbounds i8, ptr %i.ma, i64 %i.di
  %.val367.i = load i8, ptr %i.mb, align 1, !tbaa !26
  %i.mc = zext i8 %.val367.i to i32               ; 2 uses
  %.val366.i = load i8, ptr %i.ma, align 1, !tbaa !26
  %i.md = zext i8 %.val366.i to i32               ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.dh
  %.val365.i = load i8, ptr %i.me, align 1, !tbaa !26
  %i.mf = zext i8 %.val365.i to i32               ; 2 uses
  %i.mg = getelementptr inbounds i8, ptr %i.dw, i64 %indvars.iv1640.i ; 3 uses
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 %i.di
  %.val364.i = load i8, ptr %i.mh, align 1, !tbaa !26
  %i.mi = zext i8 %.val364.i to i32               ; 2 uses
  %.val363.i = load i8, ptr %i.mg, align 1, !tbaa !26
  %i.mj = zext i8 %.val363.i to i32               ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.dh
  %.val.i = load i8, ptr %i.mk, align 1, !tbaa !26
  %i.ml = zext i8 %.val.i to i32                  ; 2 uses
  %i.mm = sub nsw i32 %i.lx, %i.lz
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.mn
  %i.mp = getelementptr i8, ptr %i.mo, i64 256
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !26
  %i.mr = zext i8 %i.mq to i32                    ; 2 uses
  %i.ms = add nuw nsw i32 %i.mr, %i.lz            ; 2 uses
  %i.mt = sub nsw i32 %i.lx, %i.mr                ; 2 uses
  %i.mu = sub nsw i32 %i.md, %i.mf
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.mv
  %i.mx = getelementptr i8, ptr %i.mw, i64 256
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !26
  %i.mz = zext i8 %i.my to i32                    ; 2 uses
  %i.na = add nuw nsw i32 %i.mz, %i.mf            ; 2 uses
  %i.nb = sub nsw i32 %i.md, %i.mz                ; 2 uses
  %i.nc = sub nsw i32 %i.mj, %i.ml
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.nd
  %i.nf = getelementptr i8, ptr %i.ne, i64 256
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !26
  %i.nh = zext i8 %i.ng to i32                    ; 2 uses
  %i.ni = add nuw nsw i32 %i.nh, %i.ml            ; 2 uses
  %i.nj = sub nsw i32 %i.mj, %i.nh                ; 2 uses
  %i.nk = sub nsw i32 %i.lw, %i.mt
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.nl
  %i.nn = getelementptr i8, ptr %i.nm, i64 256
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !26
  %i.np = zext i8 %i.no to i32                    ; 2 uses
  %i.nq = add nsw i32 %i.mt, %i.np                ; 2 uses
  %i.nr = sub nsw i32 %i.mc, %i.nb
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.ns
  %i.nu = getelementptr i8, ptr %i.nt, i64 256
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !26
  %i.nw = zext i8 %i.nv to i32                    ; 2 uses
  %i.nx = add nsw i32 %i.nb, %i.nw                ; 2 uses
  %i.ny = sub nsw i32 %i.mc, %i.nw                ; 2 uses
  %i.nz = sub nsw i32 %i.mi, %i.nj
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.oa
  %i.oc = getelementptr i8, ptr %i.ob, i64 256
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !26
  %i.oe = zext i8 %i.od to i32                    ; 2 uses
  %i.of = add nsw i32 %i.nj, %i.oe                ; 2 uses
  %i.og = sub nsw i32 %i.mi, %i.oe                ; 2 uses
  %i.oh = sub nsw i32 %i.nq, %i.ms                ; 2 uses
  %i.oi = add nsw i32 %i.oh, 256
  %or.cond.i451.i = icmp ult i32 %i.oi, 769
  br i1 %or.cond.i451.i, label %bb.ao, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit452.i

bb.ao:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit440.i
  %i.oj = sext i32 %i.oh to i64
  %i.ok = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.oj
  %i.ol = getelementptr i8, ptr %i.ok, i64 256
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !26
  %i.on = zext i8 %i.om to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit452.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit452.i: ; preds = %bb.ao, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit440.i
  %i.oo = phi i32 [ %i.on, %bb.ao ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit440.i ] ; 2 uses
  %i.op = add nuw nsw i32 %i.oo, %i.ms            ; 2 uses
  %i.oq = sub nsw i32 %i.nx, %i.na                ; 2 uses
  %i.or = add nsw i32 %i.oq, 256
  %or.cond.i453.i = icmp ult i32 %i.or, 769
  br i1 %or.cond.i453.i, label %bb.ap, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit454.i

bb.ap:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit452.i
  %i.os = sext i32 %i.oq to i64
  %i.ot = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.os
  %i.ou = getelementptr i8, ptr %i.ot, i64 256
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !26
  %i.ow = zext i8 %i.ov to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit454.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit454.i: ; preds = %bb.ap, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit452.i
  %i.ox = phi i32 [ %i.ow, %bb.ap ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit452.i ] ; 2 uses
  %i.oy = add nuw nsw i32 %i.ox, %i.na            ; 2 uses
  %i.oz = sub nsw i32 %i.nx, %i.ox                ; 2 uses
  %i.pa = sub nsw i32 %i.of, %i.ni                ; 2 uses
  %i.pb = add nsw i32 %i.pa, 256
  %or.cond.i455.i = icmp ult i32 %i.pb, 769
  br i1 %or.cond.i455.i, label %bb.aq, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit456.i

bb.aq:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit454.i
  %i.pc = sext i32 %i.pa to i64
  %i.pd = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.pc
  %i.pe = getelementptr i8, ptr %i.pd, i64 256
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !26
  %i.pg = zext i8 %i.pf to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit456.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit456.i: ; preds = %bb.aq, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit454.i
  %i.ph = phi i32 [ %i.pg, %bb.aq ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit454.i ] ; 2 uses
  %i.pi = sub nsw i32 %i.of, %i.ph                ; 2 uses
  %i.pj = add nsw i32 %i.ny, %i.np
  %i.pk = sub nsw i32 %i.lw, %i.pj                ; 2 uses
  %i.pl = add nsw i32 %i.pk, 256
  %or.cond.i457.i = icmp ult i32 %i.pl, 769
  br i1 %or.cond.i457.i, label %bb.ar, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit458.i

bb.ar:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit456.i
  %i.pm = sext i32 %i.pk to i64
  %i.pn = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.pm
  %i.po = getelementptr i8, ptr %i.pn, i64 256
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !26
  %i.pq = zext i8 %i.pp to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit458.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit458.i: ; preds = %bb.ar, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit456.i
  %i.pr = phi i32 [ %i.pq, %bb.ar ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit456.i ]
  %i.ps = add nuw nsw i32 %i.ni, %i.ph
  %i.pt = sub nsw i32 %i.oy, %i.ps                ; 2 uses
  %i.pu = add nsw i32 %i.pt, 256
  %or.cond.i459.i = icmp ult i32 %i.pu, 769
  br i1 %or.cond.i459.i, label %bb.as, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit460.i

bb.as:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit458.i
  %i.pv = sext i32 %i.pt to i64
  %i.pw = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.pv
  %i.px = getelementptr i8, ptr %i.pw, i64 256
  %i.py = load i8, ptr %i.px, align 1, !tbaa !26
  %i.pz = zext i8 %i.py to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit460.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit460.i: ; preds = %bb.as, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit458.i
  %i.qa = phi i32 [ %i.pz, %bb.as ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit458.i ]
  %.neg1475.i = sub nsw i32 %i.qa, %i.oy
  %i.qb = sub nsw i32 %i.oz, %i.pi                ; 2 uses
  %i.qc = add nsw i32 %i.qb, 256
  %or.cond.i461.i = icmp ult i32 %i.qc, 769
  br i1 %or.cond.i461.i, label %bb.at, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit462.i

bb.at:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit460.i
  %i.qd = sext i32 %i.qb to i64
  %i.qe = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.qd
  %i.qf = getelementptr i8, ptr %i.qe, i64 256
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !26
  %i.qh = zext i8 %i.qg to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit462.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit462.i: ; preds = %bb.at, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit460.i
  %i.qi = phi i32 [ %i.qh, %bb.at ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit460.i ] ; 2 uses
  %i.qj = sub nsw i32 %i.oz, %i.qi                ; 2 uses
  %i.qk = sub nsw i32 %i.ny, %i.og
  %i.ql = add nsw i32 %i.pr, %i.qk                ; 2 uses
  %i.qm = add nsw i32 %i.ql, 256
  %or.cond.i463.i = icmp ult i32 %i.qm, 769
  br i1 %or.cond.i463.i, label %bb.au, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit464.i

bb.au:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit462.i
  %i.qn = sext i32 %i.ql to i64
  %i.qo = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.qn
  %i.qp = getelementptr i8, ptr %i.qo, i64 256
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !26
  %i.qr = zext i8 %i.qq to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit464.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit464.i: ; preds = %bb.au, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit462.i
  %i.qs = phi i32 [ %i.qr, %bb.au ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit462.i ]
  %i.qt = add nsw i32 %i.qs, %i.og
  %i.qu = add nsw i32 %i.oo, %i.qj
  %i.qv = sub nsw i32 %i.nq, %i.qu                ; 2 uses
  %i.qw = add nsw i32 %i.qv, 256
  %or.cond.i465.i = icmp ult i32 %i.qw, 769
  br i1 %or.cond.i465.i, label %bb.av, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit466.i

bb.av:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit464.i
  %i.qx = sext i32 %i.qv to i64
  %i.qy = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.qx
  %i.qz = getelementptr i8, ptr %i.qy, i64 256
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !26
  %i.rb = zext i8 %i.ra to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit466.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit466.i: ; preds = %bb.av, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit464.i
  %i.rc = phi i32 [ %i.rb, %bb.av ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit464.i ]
  %i.rd = add nsw i32 %i.rc, %i.qj                ; 2 uses
  %i.re = add nsw i32 %.neg1475.i, %i.op          ; 2 uses
  %i.rf = add nsw i32 %i.re, 256
  %or.cond.i467.i = icmp ult i32 %i.rf, 769
  br i1 %or.cond.i467.i, label %bb.aw, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit468.i

bb.aw:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit466.i
  %i.rg = sext i32 %i.re to i64
  %i.rh = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.rg
  %i.ri = getelementptr i8, ptr %i.rh, i64 256
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !26
  %i.rk = zext i8 %i.rj to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit468.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit468.i: ; preds = %bb.aw, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit466.i
  %i.rl = phi i32 [ %i.rk, %bb.aw ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit466.i ]
  %i.rm = sub nsw i32 %i.op, %i.rl                ; 2 uses
  %i.rn = add nsw i32 %i.qi, %i.pi
  %i.ro = sub nsw i32 %i.rd, %i.rn                ; 2 uses
  %i.rp = add nsw i32 %i.ro, 256
  %or.cond.i469.i = icmp ult i32 %i.rp, 769
  br i1 %or.cond.i469.i, label %bb.ax, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit470.i

bb.ax:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit468.i
  %i.rq = sext i32 %i.ro to i64
  %i.rr = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.rq
  %i.rs = getelementptr i8, ptr %i.rr, i64 256
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !26
  %i.ru = zext i8 %i.rt to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit470.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit470.i: ; preds = %bb.ax, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit468.i
  %i.rv = phi i32 [ %i.ru, %bb.ax ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit468.i ]
  %i.rw = sub nsw i32 %i.rd, %i.rv                ; 2 uses
  %i.rx = sub nsw i32 %i.rw, %i.rm                ; 2 uses
  %i.ry = add nsw i32 %i.rx, 256
  %or.cond.i471.i = icmp ult i32 %i.ry, 769
  br i1 %or.cond.i471.i, label %bb.ay, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit472.i

bb.ay:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit470.i
  %i.rz = sext i32 %i.rx to i64
  %i.sa = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.rz
  %i.sb = getelementptr i8, ptr %i.sa, i64 256
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !26
  %i.sd = zext i8 %i.sc to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit472.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit472.i: ; preds = %bb.ay, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit470.i
  %i.se = phi i32 [ %i.sd, %bb.ay ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit470.i ] ; 2 uses
  %i.sf = sub nsw i32 %i.rw, %i.se                ; 2 uses
  %i.sg = sub nsw i32 %i.qt, %i.sf                ; 2 uses
  %i.sh = add nsw i32 %i.sg, 256
  %or.cond.i473.i = icmp ult i32 %i.sh, 769
  br i1 %or.cond.i473.i, label %bb.az, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit474.i

bb.az:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit472.i
  %i.si = sext i32 %i.sg to i64
  %i.sj = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.si
  %i.sk = getelementptr i8, ptr %i.sj, i64 256
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !26
  %i.sm = zext i8 %i.sl to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit474.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit474.i: ; preds = %bb.az, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit472.i
  %i.sn = phi i32 [ %i.sm, %bb.az ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit472.i ]
  %i.so = add nsw i32 %i.sn, %i.sf                ; 2 uses
  %i.sp = add nsw i32 %i.se, %i.rm
  %i.sq = sub nsw i32 %i.so, %i.sp                ; 2 uses
  %i.sr = add nsw i32 %i.sq, 256
  %or.cond.i475.i = icmp ult i32 %i.sr, 769
  br i1 %or.cond.i475.i, label %bb.ba, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit476.i

bb.ba:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit474.i
  %i.ss = sext i32 %i.sq to i64
  %i.st = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.ss
  %i.su = getelementptr i8, ptr %i.st, i64 256
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !26
  %46 = zext i8 %i.sv to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit476.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit476.i: ; preds = %bb.ba, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit474.i
  %47 = phi i32 [ %46, %bb.ba ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit474.i ]
  %48 = sub nsw i32 %i.so, %47
  %i.sw = getelementptr inbounds i8, ptr %.13331600.i, i64 %indvars.iv1640.i
  %i.sx = trunc i32 %48 to i8
  store i8 %i.sx, ptr %i.sw, align 1, !tbaa !26
  %indvars.iv.next1641.i = add nsw i64 %indvars.iv1640.i, 1 ; 3 uses
  %i.sy = icmp slt i64 %indvars.iv.next1641.i, %i.dl
  br i1 %i.sy, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit440.i, label %.loopexit1574.loopexit.i, !llvm.loop !36

bb.bb:                                            ; preds = %._crit_edge1595.i
  %i.sz = getelementptr inbounds i8, ptr %.13331600.i, i64 %i.dj
  %exitcond1647.not.i = icmp eq i64 %indvars.iv.next1644.i, %wide.trip.count1646.i
  br i1 %exitcond1647.not.i, label %.loopexit.i, label %bb.aa, !llvm.loop !37

bb.bc:                                            ; preds = %bb.t
  %i.ta = icmp eq i32 %i.ax, 1
  %i.tb = icmp eq i32 %i.ay, 1                    ; 4 uses
  %or.cond5.i = or i1 %i.ta, %i.tb
  br i1 %or.cond5.i, label %bb.bd, label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  %i.tc = add nsw i32 %i.ay, %i.ax                ; 3 uses
  %i.td = select i1 %i.tb, i32 %i.bc, i32 %i.z    ; 3 uses
  %i.te = icmp sgt i32 %i.tc, 1
  br i1 %i.te, label %.preheader1576.lr.ph.i, label %.loopexit.i

.preheader1576.lr.ph.i:                           ; preds = %bb.bd
  %i.tf = select i1 %i.tb, i32 %i.bc, i32 %i.ab
  %i.tg = sub nsw i32 %i.z, %i.bc
  %i.th = sub nsw i32 0, %i.td                    ; 2 uses
  %i.ti = shl nsw i32 %i.th, 1
  %i.tj = add nsw i32 %i.tc, -2                   ; 2 uses
  %i.tk = add nsw i32 %i.tc, -3
  %i.tl = shl nsw i32 %i.td, 1
  %narrow.i = select i1 %i.tb, i32 0, i32 %i.tg
  %i.tm = sext i32 %narrow.i to i64
  %i.tn = sext i32 %i.tf to i64
  %wide.trip.count1632.i = zext nneg i32 %i.bc to i64
  br label %.preheader1576.i

.preheader1576.i:                                 ; preds = %bb.bj, %.preheader1576.lr.ph.i
  %.21593.i = phi ptr [ %i.u, %.preheader1576.lr.ph.i ], [ %i.xe, %bb.bj ]
  %.23341592.i = phi ptr [ %i.w, %.preheader1576.lr.ph.i ], [ %i.xf, %bb.bj ] ; 2 uses
  %.23381591.i = phi i32 [ 0, %.preheader1576.lr.ph.i ], [ %i.xd, %bb.bj ] ; 6 uses
  %.not358.i = icmp eq i32 %.23381591.i, 0
  %i.to = select i1 %.not358.i, i32 0, i32 %i.th  ; 2 uses
  %i.tp = icmp samesign ugt i32 %.23381591.i, 1
  %i.tq = select i1 %i.tp, i32 %i.ti, i32 %i.to
  %i.tr = icmp slt i32 %.23381591.i, %i.tj
  %i.ts = select i1 %i.tr, i32 %i.td, i32 0       ; 2 uses
  %i.tt = icmp slt i32 %.23381591.i, %i.tk
  %i.tu = select i1 %i.tt, i32 %i.tl, i32 %i.ts
  %i.tv = sext i32 %i.tq to i64
  %i.tw = sext i32 %i.to to i64
  %i.tx = sext i32 %i.ts to i64
  %i.ty = sext i32 %i.tu to i64
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit478.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit478.i: ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit492.i, %.preheader1576.i
  %indvars.iv1629.i = phi i64 [ 0, %.preheader1576.i ], [ %indvars.iv.next1630.i, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit492.i ] ; 2 uses
  %.31590.i = phi ptr [ %.21593.i, %.preheader1576.i ], [ %i.xc, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit492.i ] ; 6 uses
  %i.tz = getelementptr inbounds i8, ptr %.31590.i, i64 %i.tv
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !26
  %i.ub = zext i8 %i.ua to i32                    ; 2 uses
  %i.uc = getelementptr inbounds i8, ptr %.31590.i, i64 %i.tw
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !26
  %i.ue = zext i8 %i.ud to i32                    ; 2 uses
  %i.uf = load i8, ptr %.31590.i, align 1, !tbaa !26
  %i.ug = zext i8 %i.uf to i32                    ; 2 uses
  %i.uh = getelementptr inbounds i8, ptr %.31590.i, i64 %i.tx
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !26
  %i.uj = zext i8 %i.ui to i32                    ; 2 uses
  %i.uk = getelementptr inbounds i8, ptr %.31590.i, i64 %i.ty
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !26
  %i.um = zext i8 %i.ul to i32                    ; 2 uses
  %i.un = sub nsw i32 %i.ub, %i.ue
  %i.uo = sext i32 %i.un to i64
  %i.up = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.uo
  %i.uq = getelementptr i8, ptr %i.up, i64 256
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !26
  %i.us = zext i8 %i.ur to i32                    ; 2 uses
  %i.ut = add nuw nsw i32 %i.us, %i.ue            ; 2 uses
  %i.uu = sub nsw i32 %i.uj, %i.um
  %i.uv = sext i32 %i.uu to i64
  %i.uw = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.uv
  %i.ux = getelementptr i8, ptr %i.uw, i64 256
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !26
  %i.uz = zext i8 %i.uy to i32                    ; 2 uses
  %i.va = add nuw nsw i32 %i.uz, %i.um            ; 2 uses
  %i.vb = sub nsw i32 %i.uj, %i.uz                ; 2 uses
  %i.vc = sub nsw i32 %i.ug, %i.vb
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.vd
  %i.vf = getelementptr i8, ptr %i.ve, i64 256
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !26
  %i.vh = zext i8 %i.vg to i32                    ; 2 uses
  %i.vi = add nsw i32 %i.vb, %i.vh                ; 2 uses
  %i.vj = sub nsw i32 %i.ug, %i.vh                ; 2 uses
  %i.vk = sub nsw i32 %i.vi, %i.va                ; 2 uses
  %i.vl = add nsw i32 %i.vk, 256
  %or.cond.i483.i = icmp ult i32 %i.vl, 769
  br i1 %or.cond.i483.i, label %bb.be, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit484.i

bb.be:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit478.i
  %i.vm = sext i32 %i.vk to i64
  %i.vn = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.vm
  %i.vo = getelementptr i8, ptr %i.vn, i64 256
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !26
  %i.vq = zext i8 %i.vp to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit484.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit484.i: ; preds = %bb.be, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit478.i
  %i.vr = phi i32 [ %i.vq, %bb.be ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit478.i ] ; 2 uses
  %.neg1474.i = sub nsw i32 %i.vr, %i.vi
  %i.vs = add nsw i32 %i.vj, %i.us
  %i.vt = sub nsw i32 %i.ub, %i.vs                ; 2 uses
  %i.vu = add nsw i32 %i.vt, 256
  %or.cond.i485.i = icmp ult i32 %i.vu, 769
  br i1 %or.cond.i485.i, label %bb.bf, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit486.i

bb.bf:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit484.i
  %i.vv = sext i32 %i.vt to i64
  %i.vw = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.vv
  %i.vx = getelementptr i8, ptr %i.vw, i64 256
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !26
  %i.vz = zext i8 %i.vy to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit486.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit486.i: ; preds = %bb.bf, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit484.i
  %i.wa = phi i32 [ %i.vz, %bb.bf ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit484.i ]
  %i.wb = add nsw i32 %i.wa, %i.vj                ; 2 uses
  %i.wc = add nuw nsw i32 %i.vr, %i.va
  %i.wd = sub nsw i32 %i.wb, %i.wc                ; 2 uses
  %i.we = add nsw i32 %i.wd, 256
  %or.cond.i487.i = icmp ult i32 %i.we, 769
  br i1 %or.cond.i487.i, label %bb.bg, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit488.i

bb.bg:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit486.i
  %i.wf = sext i32 %i.wd to i64
  %i.wg = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.wf
  %i.wh = getelementptr i8, ptr %i.wg, i64 256
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !26
  %i.wj = zext i8 %i.wi to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit488.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit488.i: ; preds = %bb.bg, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit486.i
  %i.wk = phi i32 [ %i.wj, %bb.bg ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit486.i ]
  %i.wl = sub nsw i32 %i.wb, %i.wk                ; 2 uses
  %i.wm = add nsw i32 %.neg1474.i, %i.ut          ; 2 uses
  %i.wn = add nsw i32 %i.wm, 256
  %or.cond.i489.i = icmp ult i32 %i.wn, 769
  br i1 %or.cond.i489.i, label %bb.bh, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit490.i

bb.bh:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit488.i
  %i.wo = sext i32 %i.wm to i64
  %i.wp = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.wo
  %i.wq = getelementptr i8, ptr %i.wp, i64 256
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !26
  %i.ws = zext i8 %i.wr to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit490.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit490.i: ; preds = %bb.bh, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit488.i
  %i.wt = phi i32 [ %i.ws, %bb.bh ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit488.i ]
  %i.wu = add nsw i32 %i.wl, %i.wt
  %i.wv = sub nsw i32 %i.ut, %i.wu                ; 2 uses
  %i.ww = add nsw i32 %i.wv, 256
  %or.cond.i491.i = icmp ult i32 %i.ww, 769
  br i1 %or.cond.i491.i, label %bb.bi, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit492.i

bb.bi:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit490.i
  %i.wx = sext i32 %i.wv to i64
  %i.wy = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.wx
  %i.wz = getelementptr i8, ptr %i.wy, i64 256
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !26
  %49 = zext i8 %i.xa to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit492.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit492.i: ; preds = %bb.bi, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit490.i
  %50 = phi i32 [ %49, %bb.bi ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit490.i ]
  %51 = add nsw i32 %50, %i.wl
  %52 = trunc i32 %51 to i8
  %i.xb = getelementptr inbounds nuw i8, ptr %.23341592.i, i64 %indvars.iv1629.i
  store i8 %52, ptr %i.xb, align 1, !tbaa !26
  %indvars.iv.next1630.i = add nuw nsw i64 %indvars.iv1629.i, 1 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.31590.i, i64 1 ; 2 uses
  %exitcond1633.not.i = icmp eq i64 %indvars.iv.next1630.i, %wide.trip.count1632.i
  br i1 %exitcond1633.not.i, label %bb.bj, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit478.i, !llvm.loop !38

bb.bj:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit492.i
  %i.xd = add nuw nsw i32 %.23381591.i, 1
  %i.xe = getelementptr inbounds i8, ptr %i.xc, i64 %i.tm
  %i.xf = getelementptr inbounds i8, ptr %.23341592.i, i64 %i.tn
  %exitcond1634.not.i = icmp eq i32 %.23381591.i, %i.tj
  br i1 %exitcond1634.not.i, label %.loopexit.i, label %.preheader1576.i, !llvm.loop !39

bb.bk:                                            ; preds = %bb.bc
  %i.xg = mul nsw i32 %i.bc, %i.ax                ; 4 uses
  %i.xh = icmp sgt i32 %i.ay, 0
  br i1 %i.xh, label %.lr.ph1588.i, label %.loopexit.i

.lr.ph1588.i:                                     ; preds = %bb.bk
  %sext.i = shl i64 %i.y, 32
  %i.xi = ashr exact i64 %sext.i, 32              ; 5 uses
  %i.xj = add nsw i32 %i.ay, -1                   ; 2 uses
  %i.xk = shl nuw nsw i32 %i.bc, 1                ; 5 uses
  %i.xl = sub nsw i32 %i.xg, %i.bc
  %i.xm = sub nsw i32 %i.xg, %i.xk                ; 2 uses
  %i.xn = zext nneg i32 %i.xk to i64              ; 7 uses
  %i.xo = sub nsw i64 0, %i.xn                    ; 5 uses
  %i.xp = zext nneg i32 %i.bc to i64              ; 6 uses
  %i.xq = sub nsw i64 0, %i.xp                    ; 5 uses
  %sext356.i = shl i64 %i.aa, 32
  %i.xr = ashr exact i64 %sext356.i, 32
  %i.xs = zext nneg i32 %i.bb to i64
  %i.xt = sext i32 %i.xl to i64
  %i.xu = sext i32 %i.xm to i64                   ; 2 uses
  %wide.trip.count1627.i = zext nneg i32 %i.ay to i64
  br label %bb.bl

bb.bl:                                            ; preds = %bb.iy, %.lr.ph1588.i
  %indvars.iv1624.i = phi i64 [ 0, %.lr.ph1588.i ], [ %indvars.iv.next1625.i, %bb.iy ] ; 3 uses
  %.33351586.i = phi ptr [ %i.w, %.lr.ph1588.i ], [ %i.dhw, %bb.iy ] ; 3 uses
  %i.xv = trunc i64 %indvars.iv1624.i to i32      ; 3 uses
  %i.xw = call i32 @llvm.smax.i32(i32 %i.xv, i32 2)
  %.sroa.speculated1303.i = add nsw i32 %i.xw, -2
  %i.xx = zext nneg i32 %.sroa.speculated1303.i to i64
  %i.xy = mul nsw i64 %i.xi, %i.xx
  %i.xz = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.xy ; 6 uses
  %i.ya = call i32 @llvm.smax.i32(i32 %i.xv, i32 1)
  %.sroa.speculated1298.i = add nsw i32 %i.ya, -1
  %i.yb = zext nneg i32 %.sroa.speculated1298.i to i64
  %i.yc = mul nsw i64 %i.xi, %i.yb
  %i.yd = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.yc ; 6 uses
  %i.ye = mul nsw i64 %indvars.iv1624.i, %i.xi
  %i.yf = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ye ; 6 uses
  %indvars.iv.next1625.i = add nuw nsw i64 %indvars.iv1624.i, 1 ; 3 uses
  %i.yg = trunc nuw nsw i64 %indvars.iv.next1625.i to i32
  %.sroa.speculated1293.i = call i32 @llvm.smin.i32(i32 %i.xj, i32 %i.yg)
  %i.yh = sext i32 %.sroa.speculated1293.i to i64
  %i.yi = mul nsw i64 %i.xi, %i.yh
  %i.yj = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.yi ; 6 uses
  %i.yk = add i32 %i.xv, 2
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.xj, i32 %i.yk)
  %i.yl = sext i32 %.sroa.speculated.i to i64
  %i.ym = mul nsw i64 %i.xi, %i.yl
  %i.yn = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ym ; 6 uses
  br label %.loopexit1579.i

.loopexit1579.loopexit.i:                         ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit948.i
  %i.yo = trunc nsw i64 %indvars.iv.next1622.i to i32
  br label %.loopexit1579.i.backedge

.loopexit1579.i:                                  ; preds = %.loopexit1579.i.backedge, %bb.bl
  %.6.i = phi i32 [ 0, %bb.bl ], [ %.6.i.be, %.loopexit1579.i.backedge ] ; 3 uses
  %.0331.i = phi i32 [ %i.xk, %bb.bl ], [ %i.xg, %.loopexit1579.i.backedge ] ; 4 uses
  %i.yp = icmp slt i32 %.6.i, %.0331.i
  br i1 %i.yp, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.loopexit1579.i
  %i.yq = sext i32 %.6.i to i64
  %wide.trip.count.i = sext i32 %.0331.i to i64
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit500.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit500.i: ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit722.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.yq, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit722.i ] ; 12 uses
  %.not.not.i = icmp sgt i64 %indvars.iv.i, %i.xs
  %i.yr = select i1 %.not.not.i, i32 %i.bc, i32 0
  %i.ys = trunc nsw i64 %indvars.iv.i to i32      ; 4 uses
  %i.yt = sub nsw i32 %i.ys, %i.yr                ; 2 uses
  %.not357.i = icmp slt i64 %indvars.iv.i, %i.xn
  %i.yu = sub i32 %i.ys, %i.xk
  %i.yv = select i1 %.not357.i, i32 %i.yt, i32 %i.yu
  %i.yw = icmp slt i64 %indvars.iv.i, %i.xt
  %i.yx = select i1 %i.yw, i32 %i.bc, i32 0
  %i.yy = add nsw i32 %i.yx, %i.ys                ; 2 uses
  %i.yz = icmp slt i64 %indvars.iv.i, %i.xu
  %i.za = add i32 %i.xk, %i.ys
  %i.zb = select i1 %i.yz, i32 %i.za, i32 %i.yy
  %i.zc = sext i32 %i.yv to i64                   ; 5 uses
  %i.zd = sext i32 %i.yt to i64                   ; 5 uses
  %i.ze = sext i32 %i.yy to i64                   ; 5 uses
  %i.zf = sext i32 %i.zb to i64                   ; 5 uses
  %i.zg = getelementptr inbounds i8, ptr %i.xz, i64 %i.zc
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !26
  %i.zi = zext i8 %i.zh to i32                    ; 2 uses
  %i.zj = getelementptr inbounds i8, ptr %i.xz, i64 %i.zd
  %i.zk = load i8, ptr %i.zj, align 1, !tbaa !26
  %i.zl = zext i8 %i.zk to i32                    ; 2 uses
  %i.zm = getelementptr inbounds i8, ptr %i.xz, i64 %indvars.iv.i
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !26
  %i.zo = zext i8 %i.zn to i32                    ; 2 uses
  %i.zp = getelementptr inbounds i8, ptr %i.xz, i64 %i.ze
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !26
  %i.zr = zext i8 %i.zq to i32                    ; 2 uses
  %i.zs = getelementptr inbounds i8, ptr %i.xz, i64 %i.zf
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !26
  %i.zu = zext i8 %i.zt to i32                    ; 2 uses
  %i.zv = getelementptr inbounds i8, ptr %i.yd, i64 %i.zc
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !26
  %i.zx = zext i8 %i.zw to i32                    ; 2 uses
  %i.zy = getelementptr inbounds i8, ptr %i.yd, i64 %i.zd
  %i.zz = load i8, ptr %i.zy, align 1, !tbaa !26
  %i.aaa = zext i8 %i.zz to i32                   ; 2 uses
  %i.aab = getelementptr inbounds i8, ptr %i.yd, i64 %indvars.iv.i
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !26
  %i.aad = zext i8 %i.aac to i32                  ; 2 uses
  %i.aae = getelementptr inbounds i8, ptr %i.yd, i64 %i.ze
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !26
  %i.aag = zext i8 %i.aaf to i32                  ; 2 uses
  %i.aah = getelementptr inbounds i8, ptr %i.yd, i64 %i.zf
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !26
  %i.aaj = zext i8 %i.aai to i32                  ; 2 uses
  %i.aak = getelementptr inbounds i8, ptr %i.yf, i64 %i.zc
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !26
  %i.aam = zext i8 %i.aal to i32                  ; 2 uses
  %i.aan = getelementptr inbounds i8, ptr %i.yf, i64 %i.zd
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !26
  %i.aap = zext i8 %i.aao to i32                  ; 2 uses
  %i.aaq = getelementptr inbounds i8, ptr %i.yf, i64 %indvars.iv.i
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !26
  %i.aas = zext i8 %i.aar to i32                  ; 2 uses
  %i.aat = getelementptr inbounds i8, ptr %i.yf, i64 %i.ze
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !26
  %i.aav = zext i8 %i.aau to i32                  ; 2 uses
  %i.aaw = getelementptr inbounds i8, ptr %i.yf, i64 %i.zf
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !26
  %i.aay = zext i8 %i.aax to i32                  ; 2 uses
  %i.aaz = getelementptr inbounds i8, ptr %i.yj, i64 %i.zc
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !26
  %i.abb = zext i8 %i.aba to i32                  ; 2 uses
  %i.abc = getelementptr inbounds i8, ptr %i.yj, i64 %i.zd
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !26
  %i.abe = zext i8 %i.abd to i32                  ; 2 uses
  %i.abf = getelementptr inbounds i8, ptr %i.yj, i64 %indvars.iv.i
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !26
  %i.abh = zext i8 %i.abg to i32                  ; 2 uses
  %i.abi = getelementptr inbounds i8, ptr %i.yj, i64 %i.ze
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !26
  %i.abk = zext i8 %i.abj to i32                  ; 2 uses
  %i.abl = getelementptr inbounds i8, ptr %i.yj, i64 %i.zf
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !26
  %i.abn = zext i8 %i.abm to i32                  ; 2 uses
  %i.abo = getelementptr inbounds i8, ptr %i.yn, i64 %i.zc
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !26
  %i.abq = zext i8 %i.abp to i32                  ; 2 uses
  %i.abr = getelementptr inbounds i8, ptr %i.yn, i64 %i.zd
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !26
  %i.abt = zext i8 %i.abs to i32                  ; 2 uses
  %i.abu = getelementptr inbounds i8, ptr %i.yn, i64 %indvars.iv.i
  %i.abv = load i8, ptr %i.abu, align 1, !tbaa !26
  %i.abw = zext i8 %i.abv to i32                  ; 2 uses
  %i.abx = getelementptr inbounds i8, ptr %i.yn, i64 %i.ze
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !26
  %i.abz = zext i8 %i.aby to i32                  ; 2 uses
  %i.aca = getelementptr inbounds i8, ptr %i.yn, i64 %i.zf
  %i.acb = load i8, ptr %i.aca, align 1, !tbaa !26
  %i.acc = zext i8 %i.acb to i32                  ; 2 uses
  %i.acd = sub nsw i32 %i.zl, %i.zo
  %i.ace = sext i32 %i.acd to i64
  %i.acf = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.ace
  %i.acg = getelementptr i8, ptr %i.acf, i64 256
  %i.ach = load i8, ptr %i.acg, align 1, !tbaa !26
  %i.aci = zext i8 %i.ach to i32                  ; 2 uses
  %i.acj = add nuw nsw i32 %i.aci, %i.zo          ; 2 uses
  %i.ack = sub nsw i32 %i.zl, %i.aci              ; 2 uses
  %i.acl = sub nsw i32 %i.zi, %i.ack
  %i.acm = sext i32 %i.acl to i64
  %i.acn = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.acm
  %i.aco = getelementptr i8, ptr %i.acn, i64 256
  %i.acp = load i8, ptr %i.aco, align 1, !tbaa !26
  %i.acq = zext i8 %i.acp to i32                  ; 2 uses
  %i.acr = add nsw i32 %i.ack, %i.acq             ; 2 uses
  %i.acs = sub nsw i32 %i.zi, %i.acq              ; 2 uses
  %i.act = sub nsw i32 %i.acr, %i.acj             ; 2 uses
  %i.acu = add nsw i32 %i.act, 256
  %or.cond.i501.i = icmp ult i32 %i.acu, 769
  br i1 %or.cond.i501.i, label %bb.bm, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit506.i

bb.bm:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit500.i
  %i.acv = sext i32 %i.act to i64
  %i.acw = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.acv
  %i.acx = getelementptr i8, ptr %i.acw, i64 256
  %i.acy = load i8, ptr %i.acx, align 1, !tbaa !26
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baseline10medianBlurERKNS_3MatERS1_i:bb.a
bb.es:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit696.i
  %i.bmr = sext i32 %i.bmp to i64
  %i.bms = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.bmr
  %i.bmt = getelementptr i8, ptr %i.bms, i64 256
  %i.bmu = load i8, ptr %i.bmt, align 1, !tbaa !26
  %i.bmv = zext i8 %i.bmu to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit698.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit698.i: ; preds = %bb.es, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit696.i
  %i.bmw = phi i32 [ %i.bmv, %bb.es ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit696.i ]
  %i.bmx = add nsw i32 %i.bmw, %i.bkt             ; 2 uses
  %i.bmy = add nsw i32 %i.app, %i.bha
  %i.bmz = sub nsw i32 %i.anj, %i.bmy             ; 2 uses
  %i.bna = add nsw i32 %i.bmz, 256
  %or.cond.i699.i = icmp ult i32 %i.bna, 769
  br i1 %or.cond.i699.i, label %bb.et, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit700.i

bb.et:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit698.i
  %i.bnb = sext i32 %i.bmz to i64
  %i.bnc = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.bnb
  %i.bnd = getelementptr i8, ptr %i.bnc, i64 256
  %i.bne = load i8, ptr %i.bnd, align 1, !tbaa !26
  %i.bnf = zext i8 %i.bne to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit700.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit700.i: ; preds = %bb.et, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit698.i
  %i.bng = phi i32 [ %i.bnf, %bb.et ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit698.i ]
  %i.bnh = add nsw i32 %i.bng, %i.bha             ; 2 uses
  %i.bni = add nsw i32 %.neg1678.i, %i.arc        ; 2 uses
  %i.bnj = add nsw i32 %i.bni, 256
  %or.cond.i701.i = icmp ult i32 %i.bnj, 769
  br i1 %or.cond.i701.i, label %bb.eu, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit702.i

bb.eu:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit700.i
  %i.bnk = sext i32 %i.bni to i64
  %i.bnl = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.bnk
  %i.bnm = getelementptr i8, ptr %i.bnl, i64 256
  %i.bnn = load i8, ptr %i.bnm, align 1, !tbaa !26
  %i.bno = zext i8 %i.bnn to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit702.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit702.i: ; preds = %bb.eu, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit700.i
  %i.bnp = phi i32 [ %i.bno, %bb.eu ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit700.i ]
  %i.bnq = add nsw i32 %i.bnh, %i.bnp
  %i.bnr = sub nsw i32 %i.arc, %i.bnq             ; 2 uses
  %i.bns = add nsw i32 %i.bnr, 256
  %or.cond.i703.i = icmp ult i32 %i.bns, 769
  br i1 %or.cond.i703.i, label %bb.ev, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit704.i

bb.ev:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit702.i
  %i.bnt = sext i32 %i.bnr to i64
  %i.bnu = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.bnt
  %i.bnv = getelementptr i8, ptr %i.bnu, i64 256
  %i.bnw = load i8, ptr %i.bnv, align 1, !tbaa !26
  %i.bnx = zext i8 %i.bnw to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit704.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit704.i: ; preds = %bb.ev, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit702.i
  %i.bny = phi i32 [ %i.bnx, %bb.ev ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit702.i ]
  %i.bnz = add nsw i32 %i.bny, %i.bnh             ; 2 uses
  %.neg605 = sub nsw i32 %i.aow, %i.aqh
  %i.boa = add nsw i32 %.neg605, %.neg727         ; 2 uses
  %i.bob = add nsw i32 %i.boa, 256
  %or.cond.i705.i = icmp ult i32 %i.bob, 769
  br i1 %or.cond.i705.i, label %bb.ew, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit706.i

bb.ew:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit704.i
  %i.boc = sext i32 %i.boa to i64
  %i.bod = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.boc
  %i.boe = getelementptr i8, ptr %i.bod, i64 256
  %i.bof = load i8, ptr %i.boe, align 1, !tbaa !26
  %i.bog = zext i8 %i.bof to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit706.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit706.i: ; preds = %bb.ew, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit704.i
  %i.boh = phi i32 [ %i.bog, %bb.ew ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit704.i ]
  %.neg607 = add nsw i32 %i.bnz, %.neg727
  %i.boi = sub nsw i32 %.neg607, %i.boh           ; 2 uses
  %i.boj = add nsw i32 %i.boi, 256
  %or.cond.i707.i = icmp ult i32 %i.boj, 769
  br i1 %or.cond.i707.i, label %bb.ex, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit708.i

bb.ex:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit706.i
  %i.bok = sext i32 %i.boi to i64
  %i.bol = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.bok
  %i.bom = getelementptr i8, ptr %i.bol, i64 256
  %i.bon = load i8, ptr %i.bom, align 1, !tbaa !26
  %i.boo = zext i8 %i.bon to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit708.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit708.i: ; preds = %bb.ex, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit706.i
  %i.bop = phi i32 [ %i.boo, %bb.ex ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit706.i ]
  %.neg1681.i = sub nsw i32 %i.bop, %i.bnz
  %.neg610 = sub nsw i32 %i.aox, %i.apy
  %i.boq = add nsw i32 %.neg610, %.neg726         ; 2 uses
  %i.bor = add nsw i32 %i.boq, 256
  %or.cond.i709.i = icmp ult i32 %i.bor, 769
  br i1 %or.cond.i709.i, label %bb.ey, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit710.i

bb.ey:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit708.i
  %i.bos = sext i32 %i.boq to i64
  %i.bot = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.bos
  %i.bou = getelementptr i8, ptr %i.bot, i64 256
  %i.bov = load i8, ptr %i.bou, align 1, !tbaa !26
  %i.bow = zext i8 %i.bov to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit710.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit710.i: ; preds = %bb.ey, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit708.i
  %i.box = phi i32 [ %i.bow, %bb.ey ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit708.i ]
  %i.boy = add nsw i32 %.neg1679.i, %i.ans        ; 2 uses
  %i.boz = add nsw i32 %i.boy, 256
  %or.cond.i711.i = icmp ult i32 %i.boz, 769
  br i1 %or.cond.i711.i, label %bb.ez, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit712.i

bb.ez:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit710.i
  %i.bpa = sext i32 %i.boy to i64
  %i.bpb = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.bpa
  %i.bpc = getelementptr i8, ptr %i.bpb, i64 256
  %i.bpd = load i8, ptr %i.bpc, align 1, !tbaa !26
  %i.bpe = zext i8 %i.bpd to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit712.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit712.i: ; preds = %bb.ez, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit710.i
  %i.bpf = phi i32 [ %i.bpe, %bb.ez ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit710.i ]
  %i.bpg = sub nsw i32 %i.ans, %i.bpf             ; 2 uses
  %.neg612 = sub nsw i32 %.neg726, %i.box
  %i.bph = add nsw i32 %.neg612, %i.bpg           ; 2 uses
  %i.bpi = add nsw i32 %i.bph, 256
  %or.cond.i713.i = icmp ult i32 %i.bpi, 769
  br i1 %or.cond.i713.i, label %bb.fa, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit714.i

bb.fa:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit712.i
  %i.bpj = sext i32 %i.bph to i64
  %i.bpk = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.bpj
  %i.bpl = getelementptr i8, ptr %i.bpk, i64 256
  %i.bpm = load i8, ptr %i.bpl, align 1, !tbaa !26
  %i.bpn = zext i8 %i.bpm to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit714.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit714.i: ; preds = %bb.fa, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit712.i
  %i.bpo = phi i32 [ %i.bpn, %bb.fa ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit712.i ]
  %i.bpp = sub nsw i32 %i.bpg, %i.bpo             ; 2 uses
  %i.bpq = add nsw i32 %.neg1680.i, %i.aqs        ; 2 uses
  %i.bpr = add nsw i32 %i.bpq, 256
  %or.cond.i715.i = icmp ult i32 %i.bpr, 769
  br i1 %or.cond.i715.i, label %bb.fb, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit716.i

bb.fb:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit714.i
  %i.bps = sext i32 %i.bpq to i64
  %i.bpt = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.bps
  %i.bpu = getelementptr i8, ptr %i.bpt, i64 256
  %i.bpv = load i8, ptr %i.bpu, align 1, !tbaa !26
  %i.bpw = zext i8 %i.bpv to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit716.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit716.i: ; preds = %bb.fb, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit714.i
  %i.bpx = phi i32 [ %i.bpw, %bb.fb ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit714.i ]
  %i.bpy = add nsw i32 %i.bpp, %i.bpx
  %i.bpz = sub nsw i32 %i.aqs, %i.bpy             ; 2 uses
  %i.bqa = add nsw i32 %i.bpz, 256
  %or.cond.i717.i = icmp ult i32 %i.bqa, 769
  br i1 %or.cond.i717.i, label %bb.fc, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit718.i

bb.fc:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit716.i
  %i.bqb = sext i32 %i.bpz to i64
  %i.bqc = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.bqb
  %i.bqd = getelementptr i8, ptr %i.bqc, i64 256
  %i.bqe = load i8, ptr %i.bqd, align 1, !tbaa !26
  %i.bqf = zext i8 %i.bqe to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit718.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit718.i: ; preds = %bb.fc, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit716.i
  %i.bqg = phi i32 [ %i.bqf, %bb.fc ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit716.i ]
  %i.bqh = add nsw i32 %i.bqg, %i.bpp             ; 2 uses
  %i.bqi = add nsw i32 %i.bqh, %.neg1681.i        ; 2 uses
  %i.bqj = add nsw i32 %i.bqi, 256
  %or.cond.i719.i = icmp ult i32 %i.bqj, 769
  br i1 %or.cond.i719.i, label %bb.fd, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit720.i

bb.fd:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit718.i
  %i.bqk = sext i32 %i.bqi to i64
  %i.bql = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.bqk
  %i.bqm = getelementptr i8, ptr %i.bql, i64 256
  %i.bqn = load i8, ptr %i.bqm, align 1, !tbaa !26
  %i.bqo = zext i8 %i.bqn to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit720.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit720.i: ; preds = %bb.fd, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit718.i
  %i.bqp = phi i32 [ %i.bqo, %bb.fd ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit718.i ]
  %i.bqq = add nsw i32 %i.bmx, %i.bqp
  %i.bqr = sub nsw i32 %i.bqh, %i.bqq             ; 2 uses
  %i.bqs = add nsw i32 %i.bqr, 256
  %or.cond.i721.i = icmp ult i32 %i.bqs, 769
  br i1 %or.cond.i721.i, label %bb.fe, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit722.i

bb.fe:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit720.i
  %i.bqt = sext i32 %i.bqr to i64
  %i.bqu = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.bqt
  %i.bqv = getelementptr i8, ptr %i.bqu, i64 256
  %i.bqw = load i8, ptr %i.bqv, align 1, !tbaa !26
  %53 = zext i8 %i.bqw to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit722.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit722.i: ; preds = %bb.fe, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit720.i
  %54 = phi i32 [ %53, %bb.fe ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit720.i ]
  %55 = add nsw i32 %54, %i.bmx
  %56 = trunc i32 %55 to i8
  %i.bqx = getelementptr inbounds i8, ptr %.33351586.i, i64 %indvars.iv.i
  store i8 %56, ptr %i.bqx, align 1, !tbaa !26
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit500.i, !llvm.loop !40

._crit_edge.i:                                    ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit722.i, %.loopexit1579.i
  %.7.lcssa.i = phi i32 [ %.6.i, %.loopexit1579.i ], [ %.0331.i, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit722.i ] ; 3 uses
  %i.bqy = icmp eq i32 %.0331.i, %i.xg
  br i1 %i.bqy, label %bb.iy, label %.preheader1578.i

.preheader1578.i:                                 ; preds = %._crit_edge.i
  %i.bqz = icmp slt i32 %.7.lcssa.i, %i.xm
  br i1 %i.bqz, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit724.preheader.i, label %.loopexit1579.i.backedge

.loopexit1579.i.backedge:                         ; preds = %.preheader1578.i, %.loopexit1579.loopexit.i
  %.6.i.be = phi i32 [ %.7.lcssa.i, %.preheader1578.i ], [ %i.yo, %.loopexit1579.loopexit.i ]
  br label %.loopexit1579.i, !llvm.loop !41

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit724.preheader.i: ; preds = %.preheader1578.i
  %i.bra = sext i32 %.7.lcssa.i to i64
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit724.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit724.i: ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit948.i, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit724.preheader.i
  %indvars.iv1621.i = phi i64 [ %i.bra, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit724.preheader.i ], [ %indvars.iv.next1622.i, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit948.i ] ; 7 uses
  %i.brb = getelementptr inbounds i8, ptr %i.xz, i64 %indvars.iv1621.i ; 5 uses
  %i.brc = getelementptr inbounds i8, ptr %i.brb, i64 %i.xo
  %.val395.i = load i8, ptr %i.brc, align 1, !tbaa !26
  %i.brd = zext i8 %.val395.i to i32              ; 2 uses
  %i.bre = getelementptr inbounds i8, ptr %i.yd, i64 %indvars.iv1621.i ; 5 uses
  %i.brf = getelementptr inbounds i8, ptr %i.bre, i64 %i.xo
  %.val394.i = load i8, ptr %i.brf, align 1, !tbaa !26
  %i.brg = zext i8 %.val394.i to i32              ; 2 uses
  %i.brh = getelementptr inbounds i8, ptr %i.yf, i64 %indvars.iv1621.i ; 5 uses
  %i.bri = getelementptr inbounds i8, ptr %i.brh, i64 %i.xo
  %.val393.i = load i8, ptr %i.bri, align 1, !tbaa !26
  %i.brj = zext i8 %.val393.i to i32              ; 2 uses
  %i.brk = getelementptr inbounds i8, ptr %i.yj, i64 %indvars.iv1621.i ; 5 uses
  %i.brl = getelementptr inbounds i8, ptr %i.brk, i64 %i.xo
  %.val392.i = load i8, ptr %i.brl, align 1, !tbaa !26
  %i.brm = zext i8 %.val392.i to i32              ; 2 uses
  %i.brn = getelementptr inbounds i8, ptr %i.yn, i64 %indvars.iv1621.i ; 5 uses
  %i.bro = getelementptr inbounds i8, ptr %i.brn, i64 %i.xo
  %.val391.i = load i8, ptr %i.bro, align 1, !tbaa !26
  %i.brp = zext i8 %.val391.i to i32              ; 2 uses
  %i.brq = getelementptr inbounds i8, ptr %i.brb, i64 %i.xq
  %.val390.i = load i8, ptr %i.brq, align 1, !tbaa !26
  %i.brr = zext i8 %.val390.i to i32              ; 2 uses
  %i.brs = getelementptr inbounds i8, ptr %i.bre, i64 %i.xq
  %.val389.i = load i8, ptr %i.brs, align 1, !tbaa !26
  %i.brt = zext i8 %.val389.i to i32              ; 2 uses
  %i.bru = getelementptr inbounds i8, ptr %i.brh, i64 %i.xq
  %.val388.i = load i8, ptr %i.bru, align 1, !tbaa !26
  %i.brv = zext i8 %.val388.i to i32              ; 2 uses
  %i.brw = getelementptr inbounds i8, ptr %i.brk, i64 %i.xq
  %.val387.i = load i8, ptr %i.brw, align 1, !tbaa !26
  %i.brx = zext i8 %.val387.i to i32              ; 2 uses
  %i.bry = getelementptr inbounds i8, ptr %i.brn, i64 %i.xq
  %.val386.i = load i8, ptr %i.bry, align 1, !tbaa !26
  %i.brz = zext i8 %.val386.i to i32              ; 2 uses
  %.val385.i = load i8, ptr %i.brb, align 1, !tbaa !26
  %i.bsa = zext i8 %.val385.i to i32              ; 2 uses
  %.val384.i = load i8, ptr %i.bre, align 1, !tbaa !26
  %i.bsb = zext i8 %.val384.i to i32              ; 2 uses
  %.val383.i = load i8, ptr %i.brh, align 1, !tbaa !26
  %i.bsc = zext i8 %.val383.i to i32              ; 2 uses
  %.val382.i = load i8, ptr %i.brk, align 1, !tbaa !26
  %i.bsd = zext i8 %.val382.i to i32              ; 2 uses
  %.val381.i = load i8, ptr %i.brn, align 1, !tbaa !26
  %i.bse = zext i8 %.val381.i to i32              ; 2 uses
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.brb, i64 %i.xp
  %.val380.i = load i8, ptr %i.bsf, align 1, !tbaa !26
  %i.bsg = zext i8 %.val380.i to i32              ; 2 uses
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bre, i64 %i.xp
  %.val379.i = load i8, ptr %i.bsh, align 1, !tbaa !26
  %i.bsi = zext i8 %.val379.i to i32              ; 2 uses
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.brh, i64 %i.xp
  %.val378.i = load i8, ptr %i.bsj, align 1, !tbaa !26
  %i.bsk = zext i8 %.val378.i to i32              ; 2 uses
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.brk, i64 %i.xp
  %.val377.i = load i8, ptr %i.bsl, align 1, !tbaa !26
  %i.bsm = zext i8 %.val377.i to i32              ; 2 uses
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.brn, i64 %i.xp
  %.val376.i = load i8, ptr %i.bsn, align 1, !tbaa !26
  %i.bso = zext i8 %.val376.i to i32              ; 2 uses
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.brb, i64 %i.xn
  %.val375.i = load i8, ptr %i.bsp, align 1, !tbaa !26
  %i.bsq = zext i8 %.val375.i to i32              ; 2 uses
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bre, i64 %i.xn
  %.val374.i = load i8, ptr %i.bsr, align 1, !tbaa !26
  %i.bss = zext i8 %.val374.i to i32              ; 2 uses
  %i.bst = getelementptr inbounds nuw i8, ptr %i.brh, i64 %i.xn
  %.val373.i = load i8, ptr %i.bst, align 1, !tbaa !26
  %i.bsu = zext i8 %.val373.i to i32              ; 2 uses
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.brk, i64 %i.xn
  %.val372.i = load i8, ptr %i.bsv, align 1, !tbaa !26
  %i.bsw = zext i8 %.val372.i to i32              ; 2 uses
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.brn, i64 %i.xn
  %.val371.i = load i8, ptr %i.bsx, align 1, !tbaa !26
  %i.bsy = zext i8 %.val371.i to i32              ; 2 uses
  %i.bsz = sub nsw i32 %i.brr, %i.bsa
  %i.bta = sext i32 %i.bsz to i64
  %i.btb = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.bta
  %i.btc = getelementptr i8, ptr %i.btb, i64 256
  %i.btd = load i8, ptr %i.btc, align 1, !tbaa !26
  %i.bte = zext i8 %i.btd to i32                  ; 2 uses
  %i.btf = add nuw nsw i32 %i.bte, %i.bsa         ; 2 uses
  %i.btg = sub nsw i32 %i.brr, %i.bte             ; 2 uses
  %i.bth = sub nsw i32 %i.brd, %i.btg
  %i.bti = sext i32 %i.bth to i64
  %i.btj = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.bti
  %i.btk = getelementptr i8, ptr %i.btj, i64 256
  %i.btl = load i8, ptr %i.btk, align 1, !tbaa !26
  %i.btm = zext i8 %i.btl to i32                  ; 2 uses
  %i.btn = add nsw i32 %i.btg, %i.btm             ; 2 uses
  %i.bto = sub nsw i32 %i.brd, %i.btm             ; 2 uses
  %i.btp = sub nsw i32 %i.btn, %i.btf             ; 2 uses
  %i.btq = add nsw i32 %i.btp, 256
  %or.cond.i727.i = icmp ult i32 %i.btq, 769
  br i1 %or.cond.i727.i, label %bb.ff, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit728.i

bb.ff:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit724.i
  %i.btr = sext i32 %i.btp to i64
  %i.bts = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.btr
  %i.btt = getelementptr i8, ptr %i.bts, i64 256
  %i.btu = load i8, ptr %i.btt, align 1, !tbaa !26
  %i.btv = zext i8 %i.btu to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit728.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit728.i: ; preds = %bb.ff, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit724.i
  %i.btw = phi i32 [ %i.btv, %bb.ff ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit724.i ] ; 2 uses
  %i.btx = add nuw nsw i32 %i.btw, %i.btf         ; 2 uses
  %i.bty = sub nsw i32 %i.btn, %i.btw             ; 2 uses
  %i.btz = sub nsw i32 %i.bsq, %i.brg
  %i.bua = sext i32 %i.btz to i64
  %i.bub = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.bua
  %i.buc = getelementptr i8, ptr %i.bub, i64 256
  %i.bud = load i8, ptr %i.buc, align 1, !tbaa !26
  %i.bue = zext i8 %i.bud to i32                  ; 2 uses
  %i.buf = add nuw nsw i32 %i.bue, %i.brg         ; 2 uses
  %i.bug = sub nsw i32 %i.bsq, %i.bue             ; 2 uses
  %i.buh = sub nsw i32 %i.bsg, %i.bug
  %i.bui = sext i32 %i.buh to i64
  %i.buj = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.bui
  %i.buk = getelementptr i8, ptr %i.buj, i64 256
  %i.bul = load i8, ptr %i.buk, align 1, !tbaa !26
  %i.bum = zext i8 %i.bul to i32                  ; 2 uses
  %i.bun = add nsw i32 %i.bug, %i.bum             ; 2 uses
  %i.buo = sub nsw i32 %i.bsg, %i.bum             ; 2 uses
  %i.bup = sub nsw i32 %i.bun, %i.buf             ; 2 uses
  %i.buq = add nsw i32 %i.bup, 256
  %or.cond.i733.i = icmp ult i32 %i.buq, 769
  br i1 %or.cond.i733.i, label %bb.fg, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit734.i

bb.fg:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit728.i
  %i.bur = sext i32 %i.bup to i64
  %i.bus = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.bur
  %i.but = getelementptr i8, ptr %i.bus, i64 256
  %i.buu = load i8, ptr %i.but, align 1, !tbaa !26
  %i.buv = zext i8 %i.buu to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit734.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit734.i: ; preds = %bb.fg, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit728.i
  %i.buw = phi i32 [ %i.buv, %bb.fg ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit728.i ] ; 2 uses
  %i.bux = add nuw nsw i32 %i.buw, %i.buf         ; 2 uses
  %i.buy = sub nsw i32 %i.bun, %i.buw             ; 2 uses
  %i.buz = sub nsw i32 %i.bto, %i.buo             ; 2 uses
  %i.bva = add nsw i32 %i.buz, 256
  %or.cond.i735.i = icmp ult i32 %i.bva, 769
  br i1 %or.cond.i735.i, label %bb.fh, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit736.i

bb.fh:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit734.i
  %i.bvb = sext i32 %i.buz to i64
  %i.bvc = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.bvb
  %i.bvd = getelementptr i8, ptr %i.bvc, i64 256
  %i.bve = load i8, ptr %i.bvd, align 1, !tbaa !26
  %i.bvf = zext i8 %i.bve to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit736.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit736.i: ; preds = %bb.fh, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit734.i
  %i.bvg = phi i32 [ %i.bvf, %bb.fh ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit734.i ] ; 2 uses
  %i.bvh = add nsw i32 %i.bvg, %i.buo             ; 2 uses
  %i.bvi = sub nsw i32 %i.bto, %i.bvg             ; 2 uses
  %i.bvj = sub nsw i32 %i.btx, %i.bux             ; 2 uses
  %i.bvk = add nsw i32 %i.bvj, 256
  %or.cond.i737.i = icmp ult i32 %i.bvk, 769
  br i1 %or.cond.i737.i, label %bb.fi, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit738.i

bb.fi:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit736.i
  %i.bvl = sext i32 %i.bvj to i64
  %i.bvm = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.bvl
  %i.bvn = getelementptr i8, ptr %i.bvm, i64 256
  %i.bvo = load i8, ptr %i.bvn, align 1, !tbaa !26
  %i.bvp = zext i8 %i.bvo to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit738.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit738.i: ; preds = %bb.fi, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit736.i
  %i.bvq = phi i32 [ %i.bvp, %bb.fi ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit736.i ] ; 2 uses
  %i.bvr = add nuw nsw i32 %i.bvq, %i.bux         ; 2 uses
  %i.bvs = sub nsw i32 %i.btx, %i.bvq             ; 2 uses
  %i.bvt = sub nsw i32 %i.bvs, %i.bvh             ; 2 uses
  %i.bvu = add nsw i32 %i.bvt, 256
end_hunk_1
begin_hunk_2_@_ZN2cv12cpu_baseline10medianBlurERKNS_3MatERS1_i:bb.a
bb.il:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit922.i
  %i.ddn = sext i32 %i.ddl to i64
  %i.ddo = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.ddn
  %i.ddp = getelementptr i8, ptr %i.ddo, i64 256
  %i.ddq = load i8, ptr %i.ddp, align 1, !tbaa !26
  %i.ddr = zext i8 %i.ddq to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit924.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit924.i: ; preds = %bb.il, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit922.i
  %i.dds = phi i32 [ %i.ddr, %bb.il ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit922.i ]
  %i.ddt = add nsw i32 %i.dds, %i.dbp             ; 2 uses
  %i.ddu = add nsw i32 %i.cgl, %i.cxw
  %i.ddv = sub nsw i32 %i.cef, %i.ddu             ; 2 uses
  %i.ddw = add nsw i32 %i.ddv, 256
  %or.cond.i925.i = icmp ult i32 %i.ddw, 769
  br i1 %or.cond.i925.i, label %bb.im, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit926.i

bb.im:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit924.i
  %i.ddx = sext i32 %i.ddv to i64
  %i.ddy = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.ddx
  %i.ddz = getelementptr i8, ptr %i.ddy, i64 256
  %i.dea = load i8, ptr %i.ddz, align 1, !tbaa !26
  %i.deb = zext i8 %i.dea to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit926.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit926.i: ; preds = %bb.im, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit924.i
  %i.dec = phi i32 [ %i.deb, %bb.im ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit924.i ]
  %i.ded = add nsw i32 %i.dec, %i.cxw             ; 2 uses
  %i.dee = add nsw i32 %.neg1470.i, %i.chy        ; 2 uses
  %i.def = add nsw i32 %i.dee, 256
  %or.cond.i927.i = icmp ult i32 %i.def, 769
  br i1 %or.cond.i927.i, label %bb.in, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit928.i

bb.in:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit926.i
  %i.deg = sext i32 %i.dee to i64
  %i.deh = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.deg
  %i.dei = getelementptr i8, ptr %i.deh, i64 256
  %i.dej = load i8, ptr %i.dei, align 1, !tbaa !26
  %i.dek = zext i8 %i.dej to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit928.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit928.i: ; preds = %bb.in, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit926.i
  %i.del = phi i32 [ %i.dek, %bb.in ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit926.i ]
  %i.dem = add nsw i32 %i.ded, %i.del
  %i.den = sub nsw i32 %i.chy, %i.dem             ; 2 uses
  %i.deo = add nsw i32 %i.den, 256
  %or.cond.i929.i = icmp ult i32 %i.deo, 769
  br i1 %or.cond.i929.i, label %bb.io, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit930.i

bb.io:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit928.i
  %i.dep = sext i32 %i.den to i64
  %i.deq = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.dep
  %i.der = getelementptr i8, ptr %i.deq, i64 256
  %i.des = load i8, ptr %i.der, align 1, !tbaa !26
  %i.det = zext i8 %i.des to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit930.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit930.i: ; preds = %bb.io, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit928.i
  %i.deu = phi i32 [ %i.det, %bb.io ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit928.i ]
  %i.dev = add nsw i32 %i.deu, %i.ded             ; 2 uses
  %.neg1513.i = sub nsw i32 %i.cfs, %i.chd
  %i.dew = add nsw i32 %.neg1609.i, %.neg1513.i   ; 2 uses
  %i.dex = add nsw i32 %i.dew, 256
  %or.cond.i931.i = icmp ult i32 %i.dex, 769
  br i1 %or.cond.i931.i, label %bb.ip, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit932.i

bb.ip:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit930.i
  %i.dey = sext i32 %i.dew to i64
  %i.dez = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.dey
  %i.dfa = getelementptr i8, ptr %i.dez, i64 256
  %i.dfb = load i8, ptr %i.dfa, align 1, !tbaa !26
  %i.dfc = zext i8 %i.dfb to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit932.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit932.i: ; preds = %bb.ip, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit930.i
  %i.dfd = phi i32 [ %i.dfc, %bb.ip ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit930.i ]
  %.neg1515.i = add nsw i32 %i.dev, %.neg1609.i
  %i.dfe = sub nsw i32 %.neg1515.i, %i.dfd        ; 2 uses
  %i.dff = add nsw i32 %i.dfe, 256
  %or.cond.i933.i = icmp ult i32 %i.dff, 769
  br i1 %or.cond.i933.i, label %bb.iq, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit934.i

bb.iq:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit932.i
  %i.dfg = sext i32 %i.dfe to i64
  %i.dfh = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.dfg
  %i.dfi = getelementptr i8, ptr %i.dfh, i64 256
  %i.dfj = load i8, ptr %i.dfi, align 1, !tbaa !26
  %i.dfk = zext i8 %i.dfj to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit934.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit934.i: ; preds = %bb.iq, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit932.i
  %i.dfl = phi i32 [ %i.dfk, %bb.iq ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit932.i ]
  %.neg1473.i = sub nsw i32 %i.dfl, %i.dev
  %.neg1518.i = sub nsw i32 %i.cft, %i.cgu
  %i.dfm = add nsw i32 %.neg1608.i, %.neg1518.i   ; 2 uses
  %i.dfn = add nsw i32 %i.dfm, 256
  %or.cond.i935.i = icmp ult i32 %i.dfn, 769
  br i1 %or.cond.i935.i, label %bb.ir, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit936.i

bb.ir:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit934.i
  %i.dfo = sext i32 %i.dfm to i64
  %i.dfp = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.dfo
  %i.dfq = getelementptr i8, ptr %i.dfp, i64 256
  %i.dfr = load i8, ptr %i.dfq, align 1, !tbaa !26
  %i.dfs = zext i8 %i.dfr to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit936.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit936.i: ; preds = %bb.ir, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit934.i
  %i.dft = phi i32 [ %i.dfs, %bb.ir ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit934.i ]
  %i.dfu = add nsw i32 %.neg1471.i, %i.ceo        ; 2 uses
  %i.dfv = add nsw i32 %i.dfu, 256
  %or.cond.i937.i = icmp ult i32 %i.dfv, 769
  br i1 %or.cond.i937.i, label %bb.is, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit938.i

bb.is:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit936.i
  %i.dfw = sext i32 %i.dfu to i64
  %i.dfx = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.dfw
  %i.dfy = getelementptr i8, ptr %i.dfx, i64 256
  %i.dfz = load i8, ptr %i.dfy, align 1, !tbaa !26
  %i.dga = zext i8 %i.dfz to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit938.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit938.i: ; preds = %bb.is, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit936.i
  %i.dgb = phi i32 [ %i.dga, %bb.is ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit936.i ]
  %i.dgc = sub nsw i32 %i.ceo, %i.dgb             ; 2 uses
  %.neg1520.i = sub nsw i32 %.neg1608.i, %i.dft
  %i.dgd = add nsw i32 %i.dgc, %.neg1520.i        ; 2 uses
  %i.dge = add nsw i32 %i.dgd, 256
  %or.cond.i939.i = icmp ult i32 %i.dge, 769
  br i1 %or.cond.i939.i, label %bb.it, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit940.i

bb.it:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit938.i
  %i.dgf = sext i32 %i.dgd to i64
  %i.dgg = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.dgf
  %i.dgh = getelementptr i8, ptr %i.dgg, i64 256
  %i.dgi = load i8, ptr %i.dgh, align 1, !tbaa !26
  %i.dgj = zext i8 %i.dgi to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit940.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit940.i: ; preds = %bb.it, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit938.i
  %i.dgk = phi i32 [ %i.dgj, %bb.it ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit938.i ]
  %i.dgl = sub nsw i32 %i.dgc, %i.dgk             ; 2 uses
  %i.dgm = add nsw i32 %.neg1472.i, %i.cho        ; 2 uses
  %i.dgn = add nsw i32 %i.dgm, 256
  %or.cond.i941.i = icmp ult i32 %i.dgn, 769
  br i1 %or.cond.i941.i, label %bb.iu, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit942.i

bb.iu:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit940.i
  %i.dgo = sext i32 %i.dgm to i64
  %i.dgp = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.dgo
  %i.dgq = getelementptr i8, ptr %i.dgp, i64 256
  %i.dgr = load i8, ptr %i.dgq, align 1, !tbaa !26
  %i.dgs = zext i8 %i.dgr to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit942.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit942.i: ; preds = %bb.iu, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit940.i
  %i.dgt = phi i32 [ %i.dgs, %bb.iu ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit940.i ]
  %i.dgu = add nsw i32 %i.dgl, %i.dgt
  %i.dgv = sub nsw i32 %i.cho, %i.dgu             ; 2 uses
  %i.dgw = add nsw i32 %i.dgv, 256
  %or.cond.i943.i = icmp ult i32 %i.dgw, 769
  br i1 %or.cond.i943.i, label %bb.iv, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit944.i

bb.iv:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit942.i
  %i.dgx = sext i32 %i.dgv to i64
  %i.dgy = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.dgx
  %i.dgz = getelementptr i8, ptr %i.dgy, i64 256
  %i.dha = load i8, ptr %i.dgz, align 1, !tbaa !26
  %i.dhb = zext i8 %i.dha to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit944.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit944.i: ; preds = %bb.iv, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit942.i
  %i.dhc = phi i32 [ %i.dhb, %bb.iv ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit942.i ]
  %i.dhd = add nsw i32 %i.dhc, %i.dgl             ; 2 uses
  %i.dhe = add nsw i32 %i.dhd, %.neg1473.i        ; 2 uses
  %i.dhf = add nsw i32 %i.dhe, 256
  %or.cond.i945.i = icmp ult i32 %i.dhf, 769
  br i1 %or.cond.i945.i, label %bb.iw, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit946.i

bb.iw:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit944.i
  %i.dhg = sext i32 %i.dhe to i64
  %i.dhh = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.dhg
  %i.dhi = getelementptr i8, ptr %i.dhh, i64 256
  %i.dhj = load i8, ptr %i.dhi, align 1, !tbaa !26
  %i.dhk = zext i8 %i.dhj to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit946.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit946.i: ; preds = %bb.iw, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit944.i
  %i.dhl = phi i32 [ %i.dhk, %bb.iw ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit944.i ]
  %i.dhm = add nsw i32 %i.ddt, %i.dhl
  %i.dhn = sub nsw i32 %i.dhd, %i.dhm             ; 2 uses
  %i.dho = add nsw i32 %i.dhn, 256
  %or.cond.i947.i = icmp ult i32 %i.dho, 769
  br i1 %or.cond.i947.i, label %bb.ix, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit948.i

bb.ix:                                            ; preds = %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit946.i
  %i.dhp = sext i32 %i.dhn to i64
  %i.dhq = getelementptr i8, ptr @icvSaturate8u_cv, i64 %i.dhp
  %i.dhr = getelementptr i8, ptr %i.dhq, i64 256
  %i.dhs = load i8, ptr %i.dhr, align 1, !tbaa !26
  %57 = zext i8 %i.dhs to i32
  br label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit948.i

_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit948.i: ; preds = %bb.ix, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit946.i
  %58 = phi i32 [ %57, %bb.ix ], [ 0, %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit946.i ]
  %59 = add nsw i32 %58, %i.ddt
  %i.dht = getelementptr inbounds i8, ptr %.33351586.i, i64 %indvars.iv1621.i
  %i.dhu = trunc i32 %59 to i8
  store i8 %i.dhu, ptr %i.dht, align 1, !tbaa !26
  %indvars.iv.next1622.i = add nsw i64 %indvars.iv1621.i, 1 ; 3 uses
  %i.dhv = icmp slt i64 %indvars.iv.next1622.i, %i.xu
  br i1 %i.dhv, label %_ZNK2cv12cpu_baseline12_GLOBAL__N_18MinMax8uclERiS3_.exit724.i, label %.loopexit1579.loopexit.i, !llvm.loop !42

bb.iy:                                            ; preds = %._crit_edge.i
  %i.dhw = getelementptr inbounds i8, ptr %.33351586.i, i64 %i.xr
  %exitcond1628.not.i = icmp eq i64 %indvars.iv.next1625.i, %wide.trip.count1627.i
  br i1 %exitcond1628.not.i, label %.loopexit.i, label %bb.bl, !llvm.loop !43

.loopexit.i:                                      ; preds = %bb.iy, %bb.bj, %bb.bb, %bb.y, %bb.bk, %bb.bd, %bb.z, %bb.v, %bb.t
  %i.dhx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.dhy = load i32, ptr %i.dhx, align 8, !tbaa !29
  %.not.i949.i = icmp eq i32 %i.dhy, 0
  br i1 %.not.i949.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_118medianBlur_SortNetINS1_8MinMax8uES3_EEvRKNS_3MatERS4_i.exit, label %bb.iz

bb.iz:                                            ; preds = %.loopexit.i
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %27)
          to label %_ZN2cv12cpu_baseline12_GLOBAL__N_118medianBlur_SortNetINS1_8MinMax8uES3_EEvRKNS_3MatERS4_i.exit unwind label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.dhz = landingpad { ptr, i32 }
          catch ptr null
  %i.dia = extractvalue { ptr, i32 } %i.dhz, 0
  call void @__clang_call_terminate(ptr %i.dia) #17
  unreachable

_ZN2cv12cpu_baseline12_GLOBAL__N_118medianBlur_SortNetINS1_8MinMax8uES3_EEvRKNS_3MatERS4_i.exit: ; preds = %.loopexit.i, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  br label %bb.px

bb.jb:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #14
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %24, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_118medianBlur_SortNetINS1_9MinMax16uES3_EEvRKNS_3MatERS4_iE25__cv_trace_location_fn626)
          to label %.noexc134 unwind label %bb.g

.noexc134:                                        ; preds = %bb.jb
  %i.dib = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.dic = load ptr, ptr %i.dib, align 8, !tbaa !119 ; 11 uses
  %i.did = ptrtoaddr ptr %i.dic to i64            ; 8 uses
  %i.die = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.dif = load ptr, ptr %i.i, align 8, !tbaa !119 ; 5 uses
  %i.dig = ptrtoaddr ptr %i.dif to i64            ; 11 uses
  %i.dih = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dii = load i64, ptr %i.die, align 8, !tbaa !21
  %i.dij = lshr i64 %i.dii, 1                     ; 3 uses
  %i.dik = trunc i64 %i.dij to i32                ; 4 uses
  %i.dil = load i64, ptr %i.dih, align 8, !tbaa !21
  %i.dim = lshr i64 %i.dil, 1                     ; 3 uses
  %i.din = trunc i64 %i.dim to i32                ; 2 uses
  %i.dio = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dip = load i32, ptr %i.dio, align 8, !tbaa !22 ; 6 uses
  %i.diq = icmp slt i32 %i.dip, 3
  br i1 %i.diq, label %bb.jf, label %bb.jc

bb.jc:                                            ; preds = %.noexc134
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %.noexc.i64 unwind label %bb.jm

.noexc.i64:                                       ; preds = %bb.jc
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.17, i32 noundef 109) #15
          to label %bb.jd unwind label %bb.je

bb.jd:                                            ; preds = %.noexc.i64
  unreachable

bb.je:                                            ; preds = %.noexc.i64
  %i.dir = landingpad { ptr, i32 }
          cleanup
  %i.dis = load ptr, ptr %22, align 8, !tbaa !25  ; 2 uses
  %i.dit = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.diu = icmp eq ptr %i.dis, %i.dit
  br i1 %i.diu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65: ; preds = %bb.je
  %i.div = load i64, ptr %i.dit, align 8, !tbaa !26
  %i.diw = add i64 %i.div, 1
  call void @_ZdlPvm(ptr noundef %i.dis, i64 noundef %i.diw) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i66: ; preds = %bb.je, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  br label %.body.i62

bb.jf:                                            ; preds = %.noexc134
  %i.dix = icmp sgt i32 %i.dip, 0
  br i1 %i.dix, label %bb.jg, label %.thread.i.i68

.thread.i.i68:                                    ; preds = %bb.jf
  %i.diy = icmp eq i32 %i.dip, 0
  %i.diz = zext i1 %i.diy to i32
  br label %bb.ji

bb.jg:                                            ; preds = %bb.jf
  %i.dja = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.djb = icmp eq i32 %i.dip, 2
  %i.djc = zext i1 %i.djb to i64
  %i.djd = getelementptr inbounds nuw [4 x i8], ptr %i.dja, i64 %i.djc
  %i.dje = load i32, ptr %i.djd, align 4, !tbaa !121 ; 2 uses
  %.not.i.i133 = icmp eq i32 %i.dip, 1
  br i1 %.not.i.i133, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.djf = load i32, ptr %i.dja, align 4, !tbaa !121
  br label %bb.jj

bb.ji:                                            ; preds = %bb.jg, %.thread.i.i68
  %i.djg = phi i32 [ %i.diz, %.thread.i.i68 ], [ %i.dje, %bb.jg ]
  %i.djh = icmp sgt i32 %i.dip, -1
  %i.dji = zext i1 %i.djh to i32
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.jh
  %i.djj = phi i32 [ %i.dje, %bb.jh ], [ %i.djg, %bb.ji ] ; 6 uses
  %i.djk = phi i32 [ %i.djf, %bb.jh ], [ %i.dji, %bb.ji ] ; 10 uses
  %i.djl = load i32, ptr %29, align 8, !tbaa !16
  %i.djm = lshr i32 %i.djl, 5                     ; 3 uses
  %i.djn = and i32 %i.djm, 127                    ; 6 uses
  %i.djo = add nuw nsw i32 %i.djn, 1              ; 18 uses
  switch i32 %2, label %.loopexit.i70 [
    i32 3, label %bb.jk
    i32 5, label %bb.jq
  ]

bb.jk:                                            ; preds = %bb.jj
  %i.djp = icmp eq i32 %i.djj, 1
  %i.djq = icmp eq i32 %i.djk, 1                  ; 4 uses
  %or.cond.i113 = or i1 %i.djp, %i.djq
  br i1 %or.cond.i113, label %bb.jl, label %bb.jn

bb.jl:                                            ; preds = %bb.jk
  %i.djr = add nsw i32 %i.djk, %i.djj             ; 2 uses
  %i.djs = select i1 %i.djq, i32 %i.djo, i32 %i.dik ; 2 uses
  %i.djt = icmp sgt i32 %i.djr, 1
  br i1 %i.djt, label %.preheader.lr.ph.i130, label %.loopexit.i70

.preheader.lr.ph.i130:                            ; preds = %bb.jl
  %i.dju = select i1 %i.djq, i32 %i.djo, i32 %i.din
  %i.djv = sub nsw i32 %i.dik, %i.djo
  %i.djw = sub nsw i32 0, %i.djs
  %i.djx = add nsw i32 %i.djr, -2                 ; 2 uses
  %narrow1197.i = select i1 %i.djq, i32 0, i32 %i.djv
  %i.djy = sext i32 %narrow1197.i to i64
  %i.djz = sext i32 %i.dju to i64                 ; 2 uses
  %wide.trip.count1278.i = zext nneg i32 %i.djo to i64 ; 6 uses
  %i.dka = shl nsw i64 %i.djz, 1
  %min.iters.check1423 = icmp samesign ult i32 %i.djn, 3
  %min.iters.check1424 = icmp samesign ult i32 %i.djn, 15
  %i.dkb = and i64 %wide.trip.count1278.i, 12
  %n.vec1426 = and i64 %wide.trip.count1278.i, 240 ; 11 uses
  %i.dkc = shl nuw nsw i64 %n.vec1426, 1
  %i.dkd = icmp eq i64 %n.vec1426, 16
  %i.dke = icmp eq i64 %n.vec1426, 32
  %i.dkf = icmp eq i64 %n.vec1426, 48
  %i.dkg = icmp eq i64 %n.vec1426, 64
  %i.dkh = icmp eq i64 %n.vec1426, 80
  %i.dki = icmp eq i64 %n.vec1426, 96
  %i.dkj = icmp eq i64 %n.vec1426, 112
  %cmp.n1438 = icmp eq i64 %n.vec1426, %wide.trip.count1278.i
  %min.epilog.iters.check = icmp eq i64 %i.dkb, 0
  %n.vec1440 = and i64 %wide.trip.count1278.i, 252 ; 4 uses
  %i.dkk = shl nuw nsw i64 %n.vec1440, 1
  %cmp.n1447 = icmp eq i64 %n.vec1440, %wide.trip.count1278.i
  br label %iter.check

iter.check:                                       ; preds = %.loopexit, %.preheader.lr.ph.i130
  %indvar1414 = phi i64 [ %indvar.next1415, %.loopexit ], [ 0, %.preheader.lr.ph.i130 ] ; 2 uses
  %.01236.i = phi ptr [ %i.dqm, %.loopexit ], [ %i.dic, %.preheader.lr.ph.i130 ] ; 24 uses
  %.03321235.i = phi ptr [ %i.dqn, %.loopexit ], [ %i.dif, %.preheader.lr.ph.i130 ] ; 19 uses
  %.03361234.i = phi i32 [ %i.dql, %.loopexit ], [ 0, %.preheader.lr.ph.i130 ] ; 4 uses
  %.not362.i132 = icmp eq i32 %.03361234.i, 0
  %i.dkl = select i1 %.not362.i132, i32 0, i32 %i.djw
  %i.dkm = sext i32 %i.dkl to i64                 ; 11 uses
  %i.dkn = icmp slt i32 %.03361234.i, %i.djx
  %i.dko = select i1 %i.dkn, i32 %i.djs, i32 0
  %i.dkp = sext i32 %i.dko to i64                 ; 11 uses
  br i1 %min.iters.check1423, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck1413

vector.memcheck1413:                              ; preds = %iter.check
  %.01236.i1416 = ptrtoaddr ptr %.01236.i to i64  ; 2 uses
  %i.dkq = mul i64 %i.dka, %indvar1414
  %i.dkr = add i64 %i.dkq, %i.dig                 ; 2 uses
  %i.dks = sub i64 %i.dkr, %.01236.i1416          ; 2 uses
  %i.dkt = shl nsw i64 %i.dkp, 1
  %i.dku = sub i64 %i.dkt, %i.dks
  %diff.check1417 = icmp ugt i64 %i.dku, -32
  %i.dkv = add i64 %i.dks, -1
  %diff.check1418 = icmp ult i64 %i.dkv, 31
  %conflict.rdx1419 = or i1 %diff.check1417, %diff.check1418
  %i.dkw = shl nsw i64 %i.dkm, 1
  %i.dkx = add i64 %i.dkw, %.01236.i1416
  %i.dky = sub i64 %i.dkx, %i.dkr
  %diff.check1420 = icmp ugt i64 %i.dky, -32
  %conflict.rdx1421 = or i1 %conflict.rdx1419, %diff.check1420
  br i1 %conflict.rdx1421, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck1413
  br i1 %min.iters.check1424, label %vec.epilog.ph, label %vector.ph1425
end_hunk_2
