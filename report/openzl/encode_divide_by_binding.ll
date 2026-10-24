Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_divide_by_binding?download=true
inline.NumInlined: 39
inline.NumDeleted: 23
begin_hunk_0_@EI_divide_by_int:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = tail call ptr @ZL_Encoder_getOperationContext(ptr noundef %0) #8
  store ptr %i.c, ptr %4, align 8, !tbaa !37
  %i.d = load ptr, ptr %1, align 8, !tbaa !15     ; 3 uses
  %i.e = tail call i64 @ZL_Data_eltWidth(ptr noundef %i.d) #7 ; 6 uses
  %i.f = tail call i64 @ZL_Data_numElts(ptr noundef %i.d) #7 ; 32 uses
  %i.g = tail call ptr @ZL_Encoder_createTypedStream(ptr noundef %0, i32 noundef 0, i64 noundef %i.f, i64 noundef %i.e) #7 ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.thread, label %bb.b, !prof !38

.thread:                                          ; preds = %bb.a
  %i.h = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_divide_by_int.__zl_static_error_info, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 87, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #7 ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i32, ptr } %i.h, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.i, ptr %i.j, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  %i.k = ptrtoint ptr %i.j to i64
  br label %bb.bh

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @ZL_Data_rPtr(ptr noundef %i.d) #7 ; 17 uses
  %i.m = tail call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @ZL_Encoder_getLocalParam(ptr dead_on_unwind nonnull writable sret(%struct.ZL_RefParam) align 8 %5, ptr noundef %0, i32 noundef 112) #7
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18   ; 2 uses
  %.not63 = icmp eq ptr %i.o, null
  br i1 %.not63, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !19   ; 2 uses
  %.not64 = icmp eq i64 %i.q, 8
  br i1 %.not64, label %bb.e, label %bb.d, !prof !39

bb.d:                                             ; preds = %bb.c
  %i.r = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_divide_by_int.__zl_static_error_info.9, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 95, i32 noundef 44, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i64 noundef %i.q, i64 noundef 8) #7 ; 2 uses
  %i.s = extractvalue { i32, ptr } %i.r, 0        ; 2 uses
  %i.t = extractvalue { i32, ptr } %i.r, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.s, ptr %i.t, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  %i.u = ptrtoint ptr %i.t to i64
  br label %bb.bg

bb.e:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.o, align 8, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.057 = phi i64 [ %i.v, %bb.e ], [ 0, %bb.b ]   ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.x = call ptr @ZL_NULL_getOperationContext(ptr noundef null) #8
  store ptr %i.x, ptr %3, align 8, !tbaa !37
  %i.y = icmp eq i64 %.057, 0
  br i1 %i.y, label %bb.g, label %bb.ag

bb.g:                                             ; preds = %bb.f
  %i.z = icmp ult i64 %i.f, 2
  br i1 %i.z, label %getDivisor.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.e)
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %.split.i.i, label %getDivisor.exit.thread

.split.i.i:                                       ; preds = %bb.h
  %i.ac = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.e, i1 true) ; 2 uses
  switch i64 %i.ac, label %getDivisor.exit.thread [
    i64 0, label %.preheader.i.i
    i64 1, label %.preheader231.i.i
    i64 2, label %.preheader233.i.i
    i64 3, label %.preheader235.i.i
  ]

.preheader.i.i:                                   ; preds = %.split.i.i, %bb.i
  %.0108239.i.i = phi i64 [ %i.ag, %bb.i ], [ %i.ac, %.split.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0108239.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !40  ; 2 uses
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.i, label %.critedge.i.i

bb.i:                                             ; preds = %.preheader.i.i
  %i.ag = add nuw i64 %.0108239.i.i, 1            ; 2 uses
  %exitcond245.not.i.i = icmp eq i64 %i.ag, %i.f
  br i1 %exitcond245.not.i.i, label %getDivisor.exit.thread, label %.preheader.i.i, !llvm.loop !21

.critedge.i.i:                                    ; preds = %.preheader.i.i
  %i.ah = zext i8 %i.ae to i64
  br label %ZL_gcdImpl.exit.i.i

ZL_gcdImpl.exit.i.i:                              ; preds = %ZL_gcdImpl.exit.i.i.backedge, %.critedge.i.i
  %.1109.in.i.i = phi i64 [ %.0108239.i.i, %.critedge.i.i ], [ %i.bp, %ZL_gcdImpl.exit.i.i.backedge ]
  %.0104.i.i = phi i64 [ %i.ah, %.critedge.i.i ], [ %.0104.i.i.be, %ZL_gcdImpl.exit.i.i.backedge ] ; 5 uses
  %.1109.i.i = add i64 %.1109.in.i.i, 1           ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %.1109.i.i
  %i.aj = sub i64 %i.f, %.1109.i.i                ; 3 uses
  %i.ak = udiv i64 255, %.0104.i.i
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = trunc nuw nsw i64 %.0104.i.i to i32     ; 2 uses
  %i.an = and i32 %i.am, 255                      ; 2 uses
  %i.ao = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.an, i1 true) ; 2 uses
  %i.ap = lshr exact i32 %i.an, %i.ao             ; 4 uses
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %ZL_getMultiplicativeInverse8.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %ZL_gcdImpl.exit.i.i
  %.rhs.trunc.i.i.i.i = trunc nuw i32 %i.ap to i8
  %i.ar = udiv i8 -1, %.rhs.trunc.i.i.i.i
  %.zext.i.i.i.i = zext i8 %i.ar to i32           ; 2 uses
  %i.as = mul nuw nsw i32 %i.ap, %.zext.i.i.i.i
  %i.at = sub nsw i32 0, %i.as
  %i.au = and i32 %i.at, 255                      ; 2 uses
  %.not42.i.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not42.i.i.i.i, label %ZL_getMultiplicativeInverse8.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %.0.in47.i.i.i.i = phi i32 [ %i.ba, %.lr.ph.i.i.i.i ], [ %.zext.i.i.i.i, %bb.j ] ; 4 uses
  %.03546.i.i.i.i = phi i32 [ %.0.in47.i.i.i.i, %.lr.ph.i.i.i.i ], [ 1, %bb.j ]
  %.03645.i.i.i.i = phi i32 [ %i.bb, %.lr.ph.i.i.i.i ], [ 1, %bb.j ] ; 2 uses
  %.037.in44.i.i.i.i = phi i32 [ %.03843.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ap, %bb.j ] ; 2 uses
  %.03843.i.i.i.i = phi i32 [ %i.ay, %.lr.ph.i.i.i.i ], [ %i.au, %bb.j ] ; 3 uses
  %.lhs.trunc.i.i.i.i = trunc nuw i32 %.037.in44.i.i.i.i to i8
  %.rhs.trunc54.i.i.i.i = trunc nuw i32 %.03843.i.i.i.i to i8
  %i.av = udiv i8 %.lhs.trunc.i.i.i.i, %.rhs.trunc54.i.i.i.i
  %.zext55.i.i.i.i = zext i8 %i.av to i32         ; 2 uses
  %i.aw = mul nuw nsw i32 %.03843.i.i.i.i, %.zext55.i.i.i.i
  %i.ax = sub nsw i32 %.037.in44.i.i.i.i, %i.aw
  %i.ay = and i32 %i.ax, 255                      ; 2 uses
  %i.az = mul i32 %.0.in47.i.i.i.i, %.zext55.i.i.i.i
  %i.ba = add i32 %i.az, %.03546.i.i.i.i
  %i.bb = xor i32 %.03645.i.i.i.i, 1
  %.not.i.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !22

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  %i.bc = icmp eq i32 %.03645.i.i.i.i, 1
  %i.bd = sub i32 0, %.0.in47.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.bc, i32 %i.bd, i32 %.0.in47.i.i.i.i
  %i.be = and i32 %spec.select.i.i.i.i, 255
  br label %ZL_getMultiplicativeInverse8.exit.i.i.i

ZL_getMultiplicativeInverse8.exit.i.i.i:          ; preds = %._crit_edge.i.i.i.i, %bb.j, %ZL_gcdImpl.exit.i.i
  %.1.i.i.i.i = phi i32 [ 1, %ZL_gcdImpl.exit.i.i ], [ 1, %bb.j ], [ %i.be, %._crit_edge.i.i.i.i ]
  %.not2326.not.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not2326.not.i.i.i, label %ZL_firstIndexNotDivisibleBy8.exit.i.i, label %.lr.ph.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = add nuw i64 %.02028.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bf, %i.aj
  br i1 %exitcond.not.i.i.i, label %ZL_firstIndexNotDivisibleBy8.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !23

.lr.ph.i.i.i:                                     ; preds = %ZL_getMultiplicativeInverse8.exit.i.i.i, %bb.k
  %.02028.i.i.i = phi i64 [ %i.bf, %bb.k ], [ 0, %ZL_getMultiplicativeInverse8.exit.i.i.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.02028.i.i.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !40  ; 2 uses
  %i.bi = zext i8 %i.bh to i32
  %i.bj = mul nuw nsw i32 %.1.i.i.i.i, %i.bi
  %i.bk = lshr i32 %i.bj, %i.ao                   ; 2 uses
  %i.bl = mul nuw nsw i32 %i.bk, %i.am
  %i.bm = trunc i32 %i.bl to i8
  %.not.i.i.i = icmp eq i8 %i.bh, %i.bm
  %i.bn = and i32 %i.bk, 255
  %i.bo = icmp samesign ule i32 %i.bn, %i.al
  %or.cond.not.i.i.i = select i1 %.not.i.i.i, i1 %i.bo, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.k, label %ZL_firstIndexNotDivisibleBy8.exit.i.i

ZL_firstIndexNotDivisibleBy8.exit.i.i:            ; preds = %.lr.ph.i.i.i, %bb.k, %ZL_getMultiplicativeInverse8.exit.i.i.i
  %spec.select.i.i.i = phi i64 [ 0, %ZL_getMultiplicativeInverse8.exit.i.i.i ], [ %.02028.i.i.i, %.lr.ph.i.i.i ], [ %i.aj, %bb.k ]
  %i.bp = add i64 %spec.select.i.i.i, %.1109.i.i  ; 3 uses
  %i.bq = icmp eq i64 %i.bp, %i.f
  br i1 %i.bq, label %getDivisor.exit.thread, label %bb.l

bb.l:                                             ; preds = %ZL_firstIndexNotDivisibleBy8.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bp
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !40  ; 2 uses
  %i.bt = zext i8 %i.bs to i64                    ; 2 uses
  %spec.select.i130.i.i = call i64 @llvm.umax.i64(i64 %i.bt, i64 %.0104.i.i) ; 2 uses
  %spec.select44.i.i.i = call i64 @llvm.umin.i64(i64 %i.bt, i64 %.0104.i.i) ; 4 uses
  %i.bu = icmp eq i8 %i.bs, 0
  br i1 %i.bu, label %ZL_gcdImpl.exit.i.i.backedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = urem i64 %spec.select.i130.i.i, %spec.select44.i.i.i ; 3 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %ZL_gcdImpl.exit.i.i.backedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bv, i1 true) ; 2 uses
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %spec.select44.i.i.i, i1 true) ; 2 uses
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = call i32 @llvm.umin.i32(i32 %i.by, i32 %i.ca)
  %i.cc = lshr exact i64 %i.bv, %i.bx             ; 3 uses
  %i.cd = lshr exact i64 %spec.select44.i.i.i, %i.bz ; 2 uses
  %.not45.i.i.i = icmp eq i64 %i.cc, %i.cd
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i131.i.i

.lr.ph.i131.i.i:                                  ; preds = %bb.n, %.lr.ph.i131.i.i
  %.147.i.i.i = phi i64 [ %i.cg, %.lr.ph.i131.i.i ], [ %i.cd, %bb.n ] ; 2 uses
  %.13846.i.i.i = phi i64 [ %.2.i.i.i, %.lr.ph.i131.i.i ], [ %i.cc, %bb.n ] ; 2 uses
  %i.ce = sub nsw i64 %.13846.i.i.i, %.147.i.i.i  ; 2 uses
  %.2.i.i.i = call i64 @llvm.umin.i64(i64 %.13846.i.i.i, i64 %.147.i.i.i) ; 3 uses
  %.0.i.i.i = call i64 @llvm.abs.i64(i64 %i.ce, i1 true)
  %i.cf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ce, i1 true)
  %i.cg = lshr i64 %.0.i.i.i, %i.cf               ; 2 uses
  %.not.i132.i.i = icmp eq i64 %.2.i.i.i, %i.cg
  br i1 %.not.i132.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i131.i.i, !llvm.loop !24

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i131.i.i, %bb.n
  %.138.lcssa.i.i.i = phi i64 [ %i.cc, %bb.n ], [ %.2.i.i.i, %.lr.ph.i131.i.i ]
  %i.ch = zext nneg i32 %i.cb to i64
  %i.ci = shl nuw nsw i64 %.138.lcssa.i.i.i, %i.ch
  br label %ZL_gcdImpl.exit.i.i.backedge

ZL_gcdImpl.exit.i.i.backedge:                     ; preds = %._crit_edge.i.i.i, %bb.m, %bb.l
  %.0104.i.i.be = phi i64 [ %i.ci, %._crit_edge.i.i.i ], [ %spec.select44.i.i.i, %bb.m ], [ %spec.select.i130.i.i, %bb.l ]
  br label %ZL_gcdImpl.exit.i.i

.preheader231.i.i:                                ; preds = %.split.i.i, %bb.o
  %.2110238.i.i = phi i64 [ %i.cm, %bb.o ], [ 0, %.split.i.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.2110238.i.i
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !43 ; 2 uses
  %i.cl = icmp eq i16 %i.ck, 0
  br i1 %i.cl, label %bb.o, label %.critedge5.i.i

bb.o:                                             ; preds = %.preheader231.i.i
  %i.cm = add nuw i64 %.2110238.i.i, 1            ; 2 uses
  %exitcond244.not.i.i = icmp eq i64 %i.cm, %i.f
  br i1 %exitcond244.not.i.i, label %getDivisor.exit.thread, label %.preheader231.i.i, !llvm.loop !25

.critedge5.i.i:                                   ; preds = %.preheader231.i.i
  %i.cn = zext i16 %i.ck to i64
  br label %ZL_gcdImpl.exit158.i.i

ZL_gcdImpl.exit158.i.i:                           ; preds = %ZL_gcdImpl.exit158.i.i.backedge, %.critedge5.i.i
  %.3111.in.i.i = phi i64 [ %.2110238.i.i, %.critedge5.i.i ], [ %i.dq, %ZL_gcdImpl.exit158.i.i.backedge ]
  %.2106.i.i = phi i64 [ %i.cn, %.critedge5.i.i ], [ %.2106.i.i.be, %ZL_gcdImpl.exit158.i.i.backedge ] ; 5 uses
  %.3111.i.i = add i64 %.3111.in.i.i, 1           ; 3 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.3111.i.i
  %i.cp = sub i64 %i.f, %.3111.i.i                ; 3 uses
  %i.cq = udiv i64 65535, %.2106.i.i
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = trunc nuw nsw i64 %.2106.i.i to i32     ; 3 uses
  %i.ct = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.cs, i1 true) ; 2 uses
  %i.cu = lshr exact i32 %i.cs, %i.ct             ; 4 uses
  %i.cv = icmp eq i32 %i.cu, 1
  br i1 %i.cv, label %ZL_getMultiplicativeInverse32.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %ZL_gcdImpl.exit158.i.i
  %i.cw = udiv i32 -1, %i.cu                      ; 2 uses
  %i.cx = mul i32 %i.cw, %i.cu                    ; 2 uses
  %.not41.i.i.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not41.i.i.i.i, label %ZL_getMultiplicativeInverse32.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.p
  %i.cy = sub i32 0, %i.cx
  br label %.lr.ph.i.i133.i.i

.lr.ph.i.i133.i.i:                                ; preds = %.lr.ph.i.i133.i.i, %.lr.ph.preheader.i.i.i.i
  %.046.i.i.i.i = phi i32 [ %i.dc, %.lr.ph.i.i133.i.i ], [ %i.cw, %.lr.ph.preheader.i.i.i.i ] ; 4 uses
  %.03545.i.i.i.i = phi i32 [ %.046.i.i.i.i, %.lr.ph.i.i133.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i ]
  %.03644.i.i.i.i = phi i32 [ %i.dd, %.lr.ph.i.i133.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.03743.i.i.i.i = phi i32 [ %.03842.i.i.i.i, %.lr.ph.i.i133.i.i ], [ %i.cu, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.03842.i.i.i.i = phi i32 [ %.recomposed, %.lr.ph.i.i133.i.i ], [ %i.cy, %.lr.ph.preheader.i.i.i.i ] ; 4 uses
  %i.cz = udiv i32 %.03743.i.i.i.i, %.03842.i.i.i.i ; 2 uses
  %i.da = mul nuw i32 %i.cz, %.03842.i.i.i.i      ; 0 uses
  %.recomposed = urem i32 %.03743.i.i.i.i, %.03842.i.i.i.i ; 2 uses
  %i.db = mul i32 %i.cz, %.046.i.i.i.i
  %i.dc = add i32 %i.db, %.03545.i.i.i.i
  %i.dd = xor i32 %.03644.i.i.i.i, 1
  %.not.i.i134.i.i = icmp eq i32 %.recomposed, 0
  br i1 %.not.i.i134.i.i, label %._crit_edge.i.i135.i.i, label %.lr.ph.i.i133.i.i, !llvm.loop !26

._crit_edge.i.i135.i.i:                           ; preds = %.lr.ph.i.i133.i.i
  %i.de = icmp eq i32 %.03644.i.i.i.i, 1
  %i.df = sub i32 0, %.046.i.i.i.i
  %spec.select.i.i136.i.i = select i1 %i.de, i32 %i.df, i32 %.046.i.i.i.i
  br label %ZL_getMultiplicativeInverse32.exit.i.i.i

ZL_getMultiplicativeInverse32.exit.i.i.i:         ; preds = %._crit_edge.i.i135.i.i, %bb.p, %ZL_gcdImpl.exit158.i.i
  %.1.i.i137.i.i = phi i32 [ 1, %ZL_gcdImpl.exit158.i.i ], [ 1, %bb.p ], [ %spec.select.i.i136.i.i, %._crit_edge.i.i135.i.i ]
  %.not2326.not.i138.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not2326.not.i138.i.i, label %ZL_firstIndexNotDivisibleBy16.exit.i.i, label %.lr.ph.i139.i.i

bb.q:                                             ; preds = %.lr.ph.i139.i.i
  %i.dg = add nuw i64 %.02028.i140.i.i, 1         ; 2 uses
  %exitcond.not.i145.i.i = icmp eq i64 %i.dg, %i.cp
  br i1 %exitcond.not.i145.i.i, label %ZL_firstIndexNotDivisibleBy16.exit.i.i, label %.lr.ph.i139.i.i, !llvm.loop !27

.lr.ph.i139.i.i:                                  ; preds = %ZL_getMultiplicativeInverse32.exit.i.i.i, %bb.q
  %.02028.i140.i.i = phi i64 [ %i.dg, %bb.q ], [ 0, %ZL_getMultiplicativeInverse32.exit.i.i.i ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %.02028.i140.i.i
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !43 ; 2 uses
  %i.dj = zext i16 %i.di to i32
  %i.dk = mul i32 %.1.i.i137.i.i, %i.dj
  %i.dl = lshr i32 %i.dk, %i.ct                   ; 2 uses
  %i.dm = mul i32 %i.dl, %i.cs
  %i.dn = trunc i32 %i.dm to i16
  %.not.i141.i.i = icmp eq i16 %i.di, %i.dn
  %i.do = and i32 %i.dl, 65535
  %i.dp = icmp samesign ule i32 %i.do, %i.cr
  %or.cond.not.i142.i.i = select i1 %.not.i141.i.i, i1 %i.dp, i1 false
  br i1 %or.cond.not.i142.i.i, label %bb.q, label %ZL_firstIndexNotDivisibleBy16.exit.i.i

ZL_firstIndexNotDivisibleBy16.exit.i.i:           ; preds = %.lr.ph.i139.i.i, %bb.q, %ZL_getMultiplicativeInverse32.exit.i.i.i
  %spec.select.i144.i.i = phi i64 [ 0, %ZL_getMultiplicativeInverse32.exit.i.i.i ], [ %.02028.i140.i.i, %.lr.ph.i139.i.i ], [ %i.cp, %bb.q ]
  %i.dq = add i64 %spec.select.i144.i.i, %.3111.i.i ; 3 uses
  %i.dr = icmp eq i64 %i.dq, %i.f
  br i1 %i.dr, label %getDivisor.exit.thread, label %bb.r

bb.r:                                             ; preds = %ZL_firstIndexNotDivisibleBy16.exit.i.i
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.dq
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !43 ; 2 uses
  %i.du = zext i16 %i.dt to i64                   ; 2 uses
  %spec.select.i146.i.i = call i64 @llvm.umax.i64(i64 %i.du, i64 %.2106.i.i) ; 2 uses
  %spec.select44.i147.i.i = call i64 @llvm.umin.i64(i64 %i.du, i64 %.2106.i.i) ; 4 uses
  %i.dv = icmp eq i16 %i.dt, 0
  br i1 %i.dv, label %ZL_gcdImpl.exit158.i.i.backedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dw = urem i64 %spec.select.i146.i.i, %spec.select44.i147.i.i ; 3 uses
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %ZL_gcdImpl.exit158.i.i.backedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dw, i1 true) ; 2 uses
  %i.dz = trunc nuw nsw i64 %i.dy to i32
  %i.ea = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %spec.select44.i147.i.i, i1 true) ; 2 uses
  %i.eb = trunc nuw nsw i64 %i.ea to i32
  %i.ec = call i32 @llvm.umin.i32(i32 %i.dz, i32 %i.eb)
  %i.ed = lshr exact i64 %i.dw, %i.dy             ; 3 uses
  %i.ee = lshr exact i64 %spec.select44.i147.i.i, %i.ea ; 2 uses
  %.not45.i148.i.i = icmp eq i64 %i.ed, %i.ee
  br i1 %.not45.i148.i.i, label %._crit_edge.i155.i.i, label %.lr.ph.i149.i.i

.lr.ph.i149.i.i:                                  ; preds = %bb.t, %.lr.ph.i149.i.i
  %.147.i150.i.i = phi i64 [ %i.eh, %.lr.ph.i149.i.i ], [ %i.ee, %bb.t ] ; 2 uses
  %.13846.i151.i.i = phi i64 [ %.2.i152.i.i, %.lr.ph.i149.i.i ], [ %i.ed, %bb.t ] ; 2 uses
  %i.ef = sub nsw i64 %.13846.i151.i.i, %.147.i150.i.i ; 2 uses
  %.2.i152.i.i = call i64 @llvm.umin.i64(i64 %.13846.i151.i.i, i64 %.147.i150.i.i) ; 3 uses
  %.0.i153.i.i = call i64 @llvm.abs.i64(i64 %i.ef, i1 true)
  %i.eg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ef, i1 true)
  %i.eh = lshr i64 %.0.i153.i.i, %i.eg            ; 2 uses
  %.not.i154.i.i = icmp eq i64 %.2.i152.i.i, %i.eh
  br i1 %.not.i154.i.i, label %._crit_edge.i155.i.i, label %.lr.ph.i149.i.i, !llvm.loop !24

._crit_edge.i155.i.i:                             ; preds = %.lr.ph.i149.i.i, %bb.t
  %.138.lcssa.i156.i.i = phi i64 [ %i.ed, %bb.t ], [ %.2.i152.i.i, %.lr.ph.i149.i.i ]
  %i.ei = zext nneg i32 %i.ec to i64
  %i.ej = shl nuw nsw i64 %.138.lcssa.i156.i.i, %i.ei
  br label %ZL_gcdImpl.exit158.i.i.backedge

ZL_gcdImpl.exit158.i.i.backedge:                  ; preds = %._crit_edge.i155.i.i, %bb.s, %bb.r
  %.2106.i.i.be = phi i64 [ %i.ej, %._crit_edge.i155.i.i ], [ %spec.select44.i147.i.i, %bb.s ], [ %spec.select.i146.i.i, %bb.r ]
  br label %ZL_gcdImpl.exit158.i.i

.preheader233.i.i:                                ; preds = %.split.i.i, %bb.u
  %.4112237.i.i = phi i64 [ %i.en, %bb.u ], [ 0, %.split.i.i ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.4112237.i.i
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !44 ; 2 uses
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.u, label %.critedge7.i.i

bb.u:                                             ; preds = %.preheader233.i.i
  %i.en = add nuw i64 %.4112237.i.i, 1            ; 2 uses
  %exitcond243.not.i.i = icmp eq i64 %i.en, %i.f
  br i1 %exitcond243.not.i.i, label %getDivisor.exit.thread, label %.preheader233.i.i, !llvm.loop !28

.critedge7.i.i:                                   ; preds = %.preheader233.i.i
  %i.eo = zext i32 %i.el to i64
  br label %ZL_gcdImpl.exit190.i.i

ZL_gcdImpl.exit190.i.i:                           ; preds = %ZL_gcdImpl.exit190.i.i.backedge, %.critedge7.i.i
  %.5113.in.i.i = phi i64 [ %.4112237.i.i, %.critedge7.i.i ], [ %i.fo, %ZL_gcdImpl.exit190.i.i.backedge ]
  %.4.i.i = phi i64 [ %i.eo, %.critedge7.i.i ], [ %.4.i.i.be, %ZL_gcdImpl.exit190.i.i.backedge ] ; 5 uses
  %.5113.i.i = add i64 %.5113.in.i.i, 1           ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.5113.i.i
  %i.eq = sub i64 %i.f, %.5113.i.i                ; 3 uses
  %i.er = udiv i64 4294967295, %.4.i.i
  %i.es = trunc nuw i64 %i.er to i32
  %i.et = trunc i64 %.4.i.i to i32                ; 3 uses
  %i.eu = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.et, i1 true) ; 2 uses
  %i.ev = lshr exact i32 %i.et, %i.eu             ; 4 uses
  %i.ew = icmp eq i32 %i.ev, 1
  br i1 %i.ew, label %ZL_getMultiplicativeInverse32.exit.i170.i.i, label %bb.v

bb.v:                                             ; preds = %ZL_gcdImpl.exit190.i.i
  %i.ex = udiv i32 -1, %i.ev                      ; 2 uses
  %i.ey = mul i32 %i.ex, %i.ev                    ; 2 uses
  %.not41.i.i159.i.i = icmp eq i32 %i.ey, 0
  br i1 %.not41.i.i159.i.i, label %ZL_getMultiplicativeInverse32.exit.i170.i.i, label %.lr.ph.preheader.i.i160.i.i

.lr.ph.preheader.i.i160.i.i:                      ; preds = %bb.v
  %i.ez = sub i32 0, %i.ey
  br label %.lr.ph.i.i161.i.i

.lr.ph.i.i161.i.i:                                ; preds = %.lr.ph.i.i161.i.i, %.lr.ph.preheader.i.i160.i.i
  %.046.i.i162.i.i = phi i32 [ %i.fd, %.lr.ph.i.i161.i.i ], [ %i.ex, %.lr.ph.preheader.i.i160.i.i ] ; 4 uses
  %.03545.i.i163.i.i = phi i32 [ %.046.i.i162.i.i, %.lr.ph.i.i161.i.i ], [ 1, %.lr.ph.preheader.i.i160.i.i ]
  %.03644.i.i164.i.i = phi i32 [ %i.fe, %.lr.ph.i.i161.i.i ], [ 1, %.lr.ph.preheader.i.i160.i.i ] ; 2 uses
  %.03743.i.i165.i.i = phi i32 [ %.03842.i.i166.i.i, %.lr.ph.i.i161.i.i ], [ %i.ev, %.lr.ph.preheader.i.i160.i.i ] ; 2 uses
  %.03842.i.i166.i.i = phi i32 [ %.recomposed301, %.lr.ph.i.i161.i.i ], [ %i.ez, %.lr.ph.preheader.i.i160.i.i ] ; 4 uses
  %i.fa = udiv i32 %.03743.i.i165.i.i, %.03842.i.i166.i.i ; 2 uses
  %i.fb = mul nuw i32 %i.fa, %.03842.i.i166.i.i   ; 0 uses
  %.recomposed301 = urem i32 %.03743.i.i165.i.i, %.03842.i.i166.i.i ; 2 uses
  %i.fc = mul i32 %i.fa, %.046.i.i162.i.i
  %i.fd = add i32 %i.fc, %.03545.i.i163.i.i
  %i.fe = xor i32 %.03644.i.i164.i.i, 1
  %.not.i.i167.i.i = icmp eq i32 %.recomposed301, 0
  br i1 %.not.i.i167.i.i, label %._crit_edge.i.i168.i.i, label %.lr.ph.i.i161.i.i, !llvm.loop !26

._crit_edge.i.i168.i.i:                           ; preds = %.lr.ph.i.i161.i.i
  %i.ff = icmp eq i32 %.03644.i.i164.i.i, 1
  %i.fg = sub i32 0, %.046.i.i162.i.i
  %spec.select.i.i169.i.i = select i1 %i.ff, i32 %i.fg, i32 %.046.i.i162.i.i
  br label %ZL_getMultiplicativeInverse32.exit.i170.i.i

ZL_getMultiplicativeInverse32.exit.i170.i.i:      ; preds = %._crit_edge.i.i168.i.i, %bb.v, %ZL_gcdImpl.exit190.i.i
  %.1.i.i171.i.i = phi i32 [ 1, %ZL_gcdImpl.exit190.i.i ], [ 1, %bb.v ], [ %spec.select.i.i169.i.i, %._crit_edge.i.i168.i.i ]
  %.not2325.not.i.i.i = icmp eq i64 %i.eq, 0
  br i1 %.not2325.not.i.i.i, label %ZL_firstIndexNotDivisibleBy32.exit.i.i, label %.lr.ph.i172.i.i

bb.w:                                             ; preds = %.lr.ph.i172.i.i
  %i.fh = add nuw i64 %.02027.i.i.i, 1            ; 2 uses
  %exitcond.not.i177.i.i = icmp eq i64 %i.fh, %i.eq
  br i1 %exitcond.not.i177.i.i, label %ZL_firstIndexNotDivisibleBy32.exit.i.i, label %.lr.ph.i172.i.i, !llvm.loop !29

.lr.ph.i172.i.i:                                  ; preds = %ZL_getMultiplicativeInverse32.exit.i170.i.i, %bb.w
  %.02027.i.i.i = phi i64 [ %i.fh, %bb.w ], [ 0, %ZL_getMultiplicativeInverse32.exit.i170.i.i ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %.02027.i.i.i
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !44 ; 2 uses
  %i.fk = mul i32 %i.fj, %.1.i.i171.i.i
  %i.fl = lshr i32 %i.fk, %i.eu                   ; 2 uses
  %i.fm = mul i32 %i.fl, %i.et
  %.not.i173.i.i = icmp eq i32 %i.fm, %i.fj
  %i.fn = icmp ule i32 %i.fl, %i.es
  %or.cond.not.i174.i.i = select i1 %.not.i173.i.i, i1 %i.fn, i1 false
  br i1 %or.cond.not.i174.i.i, label %bb.w, label %ZL_firstIndexNotDivisibleBy32.exit.i.i

ZL_firstIndexNotDivisibleBy32.exit.i.i:           ; preds = %.lr.ph.i172.i.i, %bb.w, %ZL_getMultiplicativeInverse32.exit.i170.i.i
  %spec.select.i176.i.i = phi i64 [ 0, %ZL_getMultiplicativeInverse32.exit.i170.i.i ], [ %.02027.i.i.i, %.lr.ph.i172.i.i ], [ %i.eq, %bb.w ]
  %i.fo = add i64 %spec.select.i176.i.i, %.5113.i.i ; 3 uses
  %i.fp = icmp eq i64 %i.fo, %i.f
  br i1 %i.fp, label %getDivisor.exit.thread, label %bb.x

bb.x:                                             ; preds = %ZL_firstIndexNotDivisibleBy32.exit.i.i
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.fo
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !44 ; 2 uses
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %spec.select.i178.i.i = call i64 @llvm.umax.i64(i64 %i.fs, i64 %.4.i.i) ; 2 uses
  %spec.select44.i179.i.i = call i64 @llvm.umin.i64(i64 %i.fs, i64 %.4.i.i) ; 4 uses
  %i.ft = icmp eq i32 %i.fr, 0
  br i1 %i.ft, label %ZL_gcdImpl.exit190.i.i.backedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fu = urem i64 %spec.select.i178.i.i, %spec.select44.i179.i.i ; 3 uses
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %ZL_gcdImpl.exit190.i.i.backedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fu, i1 true) ; 2 uses
  %i.fx = trunc nuw nsw i64 %i.fw to i32
  %i.fy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %spec.select44.i179.i.i, i1 true) ; 2 uses
  %i.fz = trunc nuw nsw i64 %i.fy to i32
  %i.ga = call i32 @llvm.umin.i32(i32 %i.fx, i32 %i.fz)
  %i.gb = lshr exact i64 %i.fu, %i.fw             ; 3 uses
  %i.gc = lshr exact i64 %spec.select44.i179.i.i, %i.fy ; 2 uses
  %.not45.i180.i.i = icmp eq i64 %i.gb, %i.gc
  br i1 %.not45.i180.i.i, label %._crit_edge.i187.i.i, label %.lr.ph.i181.i.i

.lr.ph.i181.i.i:                                  ; preds = %bb.z, %.lr.ph.i181.i.i
  %.147.i182.i.i = phi i64 [ %i.gf, %.lr.ph.i181.i.i ], [ %i.gc, %bb.z ] ; 2 uses
  %.13846.i183.i.i = phi i64 [ %.2.i184.i.i, %.lr.ph.i181.i.i ], [ %i.gb, %bb.z ] ; 2 uses
  %i.gd = sub nsw i64 %.13846.i183.i.i, %.147.i182.i.i ; 2 uses
  %.2.i184.i.i = call i64 @llvm.umin.i64(i64 %.13846.i183.i.i, i64 %.147.i182.i.i) ; 3 uses
  %.0.i185.i.i = call i64 @llvm.abs.i64(i64 %i.gd, i1 true)
  %i.ge = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gd, i1 true)
  %i.gf = lshr i64 %.0.i185.i.i, %i.ge            ; 2 uses
  %.not.i186.i.i = icmp eq i64 %.2.i184.i.i, %i.gf
  br i1 %.not.i186.i.i, label %._crit_edge.i187.i.i, label %.lr.ph.i181.i.i, !llvm.loop !24

._crit_edge.i187.i.i:                             ; preds = %.lr.ph.i181.i.i, %bb.z
  %.138.lcssa.i188.i.i = phi i64 [ %i.gb, %bb.z ], [ %.2.i184.i.i, %.lr.ph.i181.i.i ]
  %i.gg = zext nneg i32 %i.ga to i64
  %i.gh = shl nuw nsw i64 %.138.lcssa.i188.i.i, %i.gg
  br label %ZL_gcdImpl.exit190.i.i.backedge

ZL_gcdImpl.exit190.i.i.backedge:                  ; preds = %._crit_edge.i187.i.i, %bb.y, %bb.x
  %.4.i.i.be = phi i64 [ %i.gh, %._crit_edge.i187.i.i ], [ %spec.select44.i179.i.i, %bb.y ], [ %spec.select.i178.i.i, %bb.x ]
  br label %ZL_gcdImpl.exit190.i.i

.preheader235.i.i:                                ; preds = %.split.i.i, %bb.aa
  %.6114236.i.i = phi i64 [ %i.gl, %bb.aa ], [ 0, %.split.i.i ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.6114236.i.i
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !20 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %bb.aa, label %.preheader.i

bb.aa:                                            ; preds = %.preheader235.i.i
  %i.gl = add nuw i64 %.6114236.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gl, %i.f
  br i1 %exitcond.not.i.i, label %getDivisor.exit.thread, label %.preheader235.i.i, !llvm.loop !30

.preheader.i:                                     ; preds = %.preheader235.i.i, %.preheader.i.backedge
  %.7115.in.i.i = phi i64 [ %i.hh, %.preheader.i.backedge ], [ %.6114236.i.i, %.preheader235.i.i ]
  %.6.i.i = phi i64 [ %.6.i.i.be, %.preheader.i.backedge ], [ %i.gj, %.preheader235.i.i ] ; 7 uses
  %.7115.i.i = add i64 %.7115.in.i.i, 1           ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.7115.i.i
  %i.gn = sub i64 %i.f, %.7115.i.i                ; 3 uses
  %i.go = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.6.i.i, i1 true) ; 2 uses
  %i.gp = lshr exact i64 %.6.i.i, %i.go           ; 4 uses
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %ZL_getMultiplicativeInverse64.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i
  %i.gr = udiv i64 -1, %i.gp                      ; 2 uses
  %i.gs = mul i64 %i.gr, %i.gp                    ; 2 uses
  %.not41.i.i191.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not41.i.i191.i.i, label %ZL_getMultiplicativeInverse64.exit.i.i.i, label %.lr.ph.preheader.i.i192.i.i

.lr.ph.preheader.i.i192.i.i:                      ; preds = %bb.ab
  %i.gt = sub i64 0, %i.gs
  br label %.lr.ph.i.i193.i.i

.lr.ph.i.i193.i.i:                                ; preds = %.lr.ph.i.i193.i.i, %.lr.ph.preheader.i.i192.i.i
  %.046.i.i194.i.i = phi i64 [ %i.gx, %.lr.ph.i.i193.i.i ], [ %i.gr, %.lr.ph.preheader.i.i192.i.i ] ; 4 uses
  %.03545.i.i195.i.i = phi i64 [ %.046.i.i194.i.i, %.lr.ph.i.i193.i.i ], [ 1, %.lr.ph.preheader.i.i192.i.i ]
  %.03644.i.i196.i.i = phi i64 [ %i.gy, %.lr.ph.i.i193.i.i ], [ 1, %.lr.ph.preheader.i.i192.i.i ] ; 2 uses
  %.03743.i.i197.i.i = phi i64 [ %.03842.i.i198.i.i, %.lr.ph.i.i193.i.i ], [ %i.gp, %.lr.ph.preheader.i.i192.i.i ] ; 2 uses
  %.03842.i.i198.i.i = phi i64 [ %.recomposed302, %.lr.ph.i.i193.i.i ], [ %i.gt, %.lr.ph.preheader.i.i192.i.i ] ; 4 uses
  %i.gu = udiv i64 %.03743.i.i197.i.i, %.03842.i.i198.i.i ; 2 uses
  %i.gv = mul nuw i64 %i.gu, %.03842.i.i198.i.i   ; 0 uses
  %.recomposed302 = urem i64 %.03743.i.i197.i.i, %.03842.i.i198.i.i ; 2 uses
  %i.gw = mul i64 %i.gu, %.046.i.i194.i.i
  %i.gx = add i64 %i.gw, %.03545.i.i195.i.i
  %i.gy = xor i64 %.03644.i.i196.i.i, 1
  %.not.i.i199.i.i = icmp eq i64 %.recomposed302, 0
  br i1 %.not.i.i199.i.i, label %._crit_edge.i.i200.i.i, label %.lr.ph.i.i193.i.i, !llvm.loop !31

._crit_edge.i.i200.i.i:                           ; preds = %.lr.ph.i.i193.i.i
  %i.gz = icmp eq i64 %.03644.i.i196.i.i, 1
  %i.ha = sub i64 0, %.046.i.i194.i.i
  %spec.select.i.i201.i.i = select i1 %i.gz, i64 %i.ha, i64 %.046.i.i194.i.i
  br label %ZL_getMultiplicativeInverse64.exit.i.i.i

ZL_getMultiplicativeInverse64.exit.i.i.i:         ; preds = %._crit_edge.i.i200.i.i, %bb.ab, %.preheader.i
  %.1.i.i202.i.i = phi i64 [ 1, %.preheader.i ], [ 1, %bb.ab ], [ %spec.select.i.i201.i.i, %._crit_edge.i.i200.i.i ]
  %.not2326.not.i203.i.i = icmp eq i64 %i.gn, 0
  br i1 %.not2326.not.i203.i.i, label %ZL_firstIndexNotDivisibleBy64.exit.i.i, label %.lr.ph.i204.i.i

bb.ac:                                            ; preds = %.lr.ph.i204.i.i
  %i.hb = add nuw i64 %.02028.i205.i.i, 1         ; 2 uses
  %exitcond.not.i207.i.i = icmp eq i64 %i.hb, %i.gn
  br i1 %exitcond.not.i207.i.i, label %ZL_firstIndexNotDivisibleBy64.exit.i.i, label %.lr.ph.i204.i.i, !llvm.loop !32

.lr.ph.i204.i.i:                                  ; preds = %ZL_getMultiplicativeInverse64.exit.i.i.i, %bb.ac
  %.02028.i205.i.i = phi i64 [ %i.hb, %bb.ac ], [ 0, %ZL_getMultiplicativeInverse64.exit.i.i.i ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.02028.i205.i.i
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !20 ; 2 uses
  %i.he = mul i64 %i.hd, %.1.i.i202.i.i
  %i.hf = lshr i64 %i.he, %i.go                   ; 2 uses
  %i.hg = mul i64 %i.hf, %.6.i.i
  %.not.i206.i.i = icmp ne i64 %i.hg, %i.hd
  %mul.i.i.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.6.i.i, i64 %i.hf)
  %mul.ov.i.i.i = extractvalue { i64, i1 } %mul.i.i.i, 1
  %.not34.i.i.i = or i1 %.not.i206.i.i, %mul.ov.i.i.i
  br i1 %.not34.i.i.i, label %ZL_firstIndexNotDivisibleBy64.exit.i.i, label %bb.ac

ZL_firstIndexNotDivisibleBy64.exit.i.i:           ; preds = %.lr.ph.i204.i.i, %bb.ac, %ZL_getMultiplicativeInverse64.exit.i.i.i
  %spec.select.i209.i.i = phi i64 [ 0, %ZL_getMultiplicativeInverse64.exit.i.i.i ], [ %.02028.i205.i.i, %.lr.ph.i204.i.i ], [ %i.gn, %bb.ac ]
  %i.hh = add i64 %spec.select.i209.i.i, %.7115.i.i ; 3 uses
  %i.hi = icmp eq i64 %i.hh, %i.f
  br i1 %i.hi, label %getDivisor.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %ZL_firstIndexNotDivisibleBy64.exit.i.i
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.hh
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !20 ; 2 uses
  %spec.select.i210.i.i = call i64 @llvm.umax.i64(i64 %i.hk, i64 %.6.i.i) ; 2 uses
  %spec.select44.i211.i.i = call i64 @llvm.umin.i64(i64 %i.hk, i64 %.6.i.i) ; 5 uses
  %i.hl = icmp eq i64 %spec.select44.i211.i.i, 0
  br i1 %i.hl, label %.preheader.i.backedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hm = urem i64 %spec.select.i210.i.i, %spec.select44.i211.i.i ; 3 uses
  %i.hn = icmp eq i64 %i.hm, 0
  br i1 %i.hn, label %.preheader.i.backedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ho = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.hm, i1 true) ; 2 uses
  %i.hp = trunc nuw nsw i64 %i.ho to i32
  %i.hq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %spec.select44.i211.i.i, i1 true) ; 2 uses
  %i.hr = trunc nuw nsw i64 %i.hq to i32
  %i.hs = call i32 @llvm.umin.i32(i32 %i.hp, i32 %i.hr)
  %i.ht = lshr exact i64 %i.hm, %i.ho             ; 3 uses
  %i.hu = lshr exact i64 %spec.select44.i211.i.i, %i.hq ; 2 uses
  %.not45.i212.i.i = icmp eq i64 %i.ht, %i.hu
  br i1 %.not45.i212.i.i, label %._crit_edge.i219.i.i, label %.lr.ph.i213.i.i

.lr.ph.i213.i.i:                                  ; preds = %bb.af, %.lr.ph.i213.i.i
  %.147.i214.i.i = phi i64 [ %i.hx, %.lr.ph.i213.i.i ], [ %i.hu, %bb.af ] ; 2 uses
  %.13846.i215.i.i = phi i64 [ %.2.i216.i.i, %.lr.ph.i213.i.i ], [ %i.ht, %bb.af ] ; 2 uses
  %i.hv = sub nsw i64 %.13846.i215.i.i, %.147.i214.i.i ; 2 uses
  %.2.i216.i.i = call i64 @llvm.umin.i64(i64 %.13846.i215.i.i, i64 %.147.i214.i.i) ; 3 uses
  %.0.i217.i.i = call i64 @llvm.abs.i64(i64 %i.hv, i1 true)
  %i.hw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.hv, i1 true)
  %i.hx = lshr i64 %.0.i217.i.i, %i.hw            ; 2 uses
  %.not.i218.i.i = icmp eq i64 %.2.i216.i.i, %i.hx
  br i1 %.not.i218.i.i, label %._crit_edge.i219.i.i, label %.lr.ph.i213.i.i, !llvm.loop !24

._crit_edge.i219.i.i:                             ; preds = %.lr.ph.i213.i.i, %bb.af
  %.138.lcssa.i220.i.i = phi i64 [ %i.ht, %bb.af ], [ %.2.i216.i.i, %.lr.ph.i213.i.i ]
  %i.hy = zext nneg i32 %i.hs to i64
  %i.hz = shl i64 %.138.lcssa.i220.i.i, %i.hy
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %._crit_edge.i219.i.i, %bb.ae, %bb.ad
  %.6.i.i.be = phi i64 [ %spec.select.i210.i.i, %bb.ad ], [ %i.hz, %._crit_edge.i219.i.i ], [ %spec.select44.i211.i.i, %bb.ae ]
  br label %.preheader.i

bb.ag:                                            ; preds = %bb.f
  %i.ia = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.e)
  %i.ib = icmp eq i64 %i.ia, 1
  br i1 %i.ib, label %.split.i, label %getDivisor.exit.thread

.split.i:                                         ; preds = %bb.ag
  %i.ic = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.e, i1 true)
  switch i64 %i.ic, label %getDivisor.exit.thread [
    i64 0, label %bb.ah
    i64 1, label %bb.an
    i64 2, label %bb.at
    i64 3, label %bb.az
  ]

bb.ah:                                            ; preds = %.split.i
  %i.id = icmp ult i64 %.057, 256
  br i1 %i.id, label %bb.aj, label %bb.ai, !prof !39

bb.ai:                                            ; preds = %bb.ah
  %i.ie = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @getDivisor.__zl_static_error_info, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef 35, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i64 noundef %.057, i64 noundef 255) #7 ; 2 uses
  %i.if = extractvalue { i32, ptr } %i.ie, 0      ; 2 uses
  %i.ig = extractvalue { i32, ptr } %i.ie, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.if, ptr %i.ig, ptr noundef nonnull @.str.24) #7
  br label %getDivisor.exit

bb.aj:                                            ; preds = %bb.ah
  %.rhs.trunc.i = trunc nuw i64 %.057 to i8
  %i.ih = udiv i8 -1, %.rhs.trunc.i
  %i.ii = zext i8 %i.ih to i32
  %i.ij = trunc nuw nsw i64 %.057 to i32          ; 3 uses
  %i.ik = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.ij, i1 true) ; 2 uses
  %i.il = lshr exact i32 %i.ij, %i.ik             ; 4 uses
  %i.im = icmp eq i32 %i.il, 1
  br i1 %i.im, label %ZL_getMultiplicativeInverse8.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.rhs.trunc.i.i.i = trunc nuw i32 %i.il to i8
  %i.in = udiv i8 -1, %.rhs.trunc.i.i.i
  %.zext.i.i.i = zext i8 %i.in to i32             ; 2 uses
  %i.io = mul nuw nsw i32 %i.il, %.zext.i.i.i
  %i.ip = sub nsw i32 0, %i.io
  %i.iq = and i32 %i.ip, 255                      ; 2 uses
  %.not42.i.i.i = icmp eq i32 %i.iq, 0
  br i1 %.not42.i.i.i, label %ZL_getMultiplicativeInverse8.exit.i.i, label %.lr.ph.i.i92.i

.lr.ph.i.i92.i:                                   ; preds = %bb.ak, %.lr.ph.i.i92.i
  %.0.in47.i.i.i = phi i32 [ %i.iw, %.lr.ph.i.i92.i ], [ %.zext.i.i.i, %bb.ak ] ; 4 uses
  %.03546.i.i.i = phi i32 [ %.0.in47.i.i.i, %.lr.ph.i.i92.i ], [ 1, %bb.ak ]
  %.03645.i.i.i = phi i32 [ %i.ix, %.lr.ph.i.i92.i ], [ 1, %bb.ak ] ; 2 uses
  %.037.in44.i.i.i = phi i32 [ %.03843.i.i.i, %.lr.ph.i.i92.i ], [ %i.il, %bb.ak ] ; 2 uses
  %.03843.i.i.i = phi i32 [ %i.iu, %.lr.ph.i.i92.i ], [ %i.iq, %bb.ak ] ; 3 uses
  %.lhs.trunc.i.i.i = trunc nuw i32 %.037.in44.i.i.i to i8
  %.rhs.trunc54.i.i.i = trunc nuw i32 %.03843.i.i.i to i8
  %i.ir = udiv i8 %.lhs.trunc.i.i.i, %.rhs.trunc54.i.i.i
  %.zext55.i.i.i = zext i8 %i.ir to i32           ; 2 uses
  %i.is = mul nuw nsw i32 %.03843.i.i.i, %.zext55.i.i.i
  %i.it = sub nsw i32 %.037.in44.i.i.i, %i.is
  %i.iu = and i32 %i.it, 255                      ; 2 uses
  %i.iv = mul i32 %.0.in47.i.i.i, %.zext55.i.i.i
  %i.iw = add i32 %i.iv, %.03546.i.i.i
  %i.ix = xor i32 %.03645.i.i.i, 1
  %.not.i.i93.i = icmp eq i32 %i.iu, 0
  br i1 %.not.i.i93.i, label %._crit_edge.i.i94.i, label %.lr.ph.i.i92.i, !llvm.loop !22

._crit_edge.i.i94.i:                              ; preds = %.lr.ph.i.i92.i
  %i.iy = icmp eq i32 %.03645.i.i.i, 1
  %i.iz = sub i32 0, %.0.in47.i.i.i
  %spec.select.i.i95.i = select i1 %i.iy, i32 %i.iz, i32 %.0.in47.i.i.i
  %i.ja = and i32 %spec.select.i.i95.i, 255
  br label %ZL_getMultiplicativeInverse8.exit.i.i

ZL_getMultiplicativeInverse8.exit.i.i:            ; preds = %._crit_edge.i.i94.i, %bb.ak, %bb.aj
  %.1.i.i.i = phi i32 [ 1, %bb.aj ], [ 1, %bb.ak ], [ %i.ja, %._crit_edge.i.i94.i ]
  %.not2326.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not2326.not.i.i, label %ZL_firstIndexNotDivisibleBy8.exit.i, label %.lr.ph.i.i

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.jb = add nuw i64 %.02028.i.i, 1              ; 2 uses
  %exitcond.not.i97.i = icmp eq i64 %i.jb, %i.f
  br i1 %exitcond.not.i97.i, label %getDivisor.exit.thread, label %.lr.ph.i.i, !llvm.loop !23

.lr.ph.i.i:                                       ; preds = %ZL_getMultiplicativeInverse8.exit.i.i, %bb.al
  %.02028.i.i = phi i64 [ %i.jb, %bb.al ], [ 0, %ZL_getMultiplicativeInverse8.exit.i.i ] ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.l, i64 %.02028.i.i
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !40  ; 2 uses
  %i.je = zext i8 %i.jd to i32
  %i.jf = mul nuw nsw i32 %.1.i.i.i, %i.je
  %i.jg = lshr i32 %i.jf, %i.ik                   ; 2 uses
  %i.jh = mul nuw nsw i32 %i.jg, %i.ij
  %i.ji = trunc i32 %i.jh to i8
  %.not.i96.i = icmp eq i8 %i.jd, %i.ji
  %i.jj = and i32 %i.jg, 255
  %i.jk = icmp samesign ule i32 %i.jj, %i.ii
  %or.cond.not.i.i = select i1 %.not.i96.i, i1 %i.jk, i1 false
  br i1 %or.cond.not.i.i, label %bb.al, label %ZL_firstIndexNotDivisibleBy8.exit.i

ZL_firstIndexNotDivisibleBy8.exit.i:              ; preds = %.lr.ph.i.i, %ZL_getMultiplicativeInverse8.exit.i.i
  %spec.select.i.i = phi i64 [ 0, %ZL_getMultiplicativeInverse8.exit.i.i ], [ %.02028.i.i, %.lr.ph.i.i ] ; 2 uses
  %.not91.i = icmp eq i64 %spec.select.i.i, %i.f
  br i1 %.not91.i, label %getDivisor.exit.thread, label %bb.am, !prof !45

bb.am:                                            ; preds = %ZL_firstIndexNotDivisibleBy8.exit.i
  %i.jl = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @getDivisor.__zl_static_error_info.25, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef 39, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.28, i64 noundef %spec.select.i.i, i64 noundef %i.f) #7 ; 2 uses
  %i.jm = extractvalue { i32, ptr } %i.jl, 0      ; 2 uses
  %i.jn = extractvalue { i32, ptr } %i.jl, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.jm, ptr %i.jn, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  br label %getDivisor.exit

bb.an:                                            ; preds = %.split.i
  %i.jo = icmp ult i64 %.057, 65536
  br i1 %i.jo, label %bb.ap, label %bb.ao, !prof !39

bb.ao:                                            ; preds = %bb.an
  %i.jp = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @getDivisor.__zl_static_error_info.29, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef 46, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.31, i64 noundef %.057, i64 noundef 65535) #7 ; 2 uses
  %i.jq = extractvalue { i32, ptr } %i.jp, 0      ; 2 uses
  %i.jr = extractvalue { i32, ptr } %i.jp, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.jq, ptr %i.jr, ptr noundef nonnull @.str.24) #7
  br label %getDivisor.exit

bb.ap:                                            ; preds = %bb.an
  %.rhs.trunc190.i = trunc nuw i64 %.057 to i16
  %i.js = udiv i16 -1, %.rhs.trunc190.i
  %i.jt = zext i16 %i.js to i32
  %i.ju = trunc nuw nsw i64 %.057 to i32          ; 3 uses
  %i.jv = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.ju, i1 true) ; 2 uses
  %i.jw = lshr exact i32 %i.ju, %i.jv             ; 4 uses
  %i.jx = icmp eq i32 %i.jw, 1
  br i1 %i.jx, label %ZL_getMultiplicativeInverse32.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jy = udiv i32 -1, %i.jw                      ; 2 uses
  %i.jz = mul i32 %i.jy, %i.jw                    ; 2 uses
  %.not41.i.i.i = icmp eq i32 %i.jz, 0
  br i1 %.not41.i.i.i, label %ZL_getMultiplicativeInverse32.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.aq
  %i.ka = sub i32 0, %i.jz
  br label %.lr.ph.i.i98.i

.lr.ph.i.i98.i:                                   ; preds = %.lr.ph.i.i98.i, %.lr.ph.preheader.i.i.i
  %.046.i.i.i = phi i32 [ %i.ke, %.lr.ph.i.i98.i ], [ %i.jy, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.03545.i.i.i = phi i32 [ %.046.i.i.i, %.lr.ph.i.i98.i ], [ 1, %.lr.ph.preheader.i.i.i ]
  %.03644.i.i.i = phi i32 [ %i.kf, %.lr.ph.i.i98.i ], [ 1, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.03743.i.i.i = phi i32 [ %.03842.i.i.i, %.lr.ph.i.i98.i ], [ %i.jw, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.03842.i.i.i = phi i32 [ %.recomposed303, %.lr.ph.i.i98.i ], [ %i.ka, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %i.kb = udiv i32 %.03743.i.i.i, %.03842.i.i.i   ; 2 uses
  %i.kc = mul nuw i32 %i.kb, %.03842.i.i.i        ; 0 uses
  %.recomposed303 = urem i32 %.03743.i.i.i, %.03842.i.i.i ; 2 uses
  %i.kd = mul i32 %i.kb, %.046.i.i.i
  %i.ke = add i32 %i.kd, %.03545.i.i.i
  %i.kf = xor i32 %.03644.i.i.i, 1
  %.not.i.i99.i = icmp eq i32 %.recomposed303, 0
  br i1 %.not.i.i99.i, label %._crit_edge.i.i100.i, label %.lr.ph.i.i98.i, !llvm.loop !26

._crit_edge.i.i100.i:                             ; preds = %.lr.ph.i.i98.i
  %i.kg = icmp eq i32 %.03644.i.i.i, 1
  %i.kh = sub i32 0, %.046.i.i.i
  %spec.select.i.i101.i = select i1 %i.kg, i32 %i.kh, i32 %.046.i.i.i
  br label %ZL_getMultiplicativeInverse32.exit.i.i

ZL_getMultiplicativeInverse32.exit.i.i:           ; preds = %._crit_edge.i.i100.i, %bb.aq, %bb.ap
  %.1.i.i102.i = phi i32 [ 1, %bb.ap ], [ 1, %bb.aq ], [ %spec.select.i.i101.i, %._crit_edge.i.i100.i ]
  %.not2326.not.i103.i = icmp eq i64 %i.f, 0
  br i1 %.not2326.not.i103.i, label %ZL_firstIndexNotDivisibleBy16.exit.i, label %.lr.ph.i104.i

bb.ar:                                            ; preds = %.lr.ph.i104.i
  %i.ki = add nuw i64 %.02028.i105.i, 1           ; 2 uses
  %exitcond.not.i109.i = icmp eq i64 %i.ki, %i.f
  br i1 %exitcond.not.i109.i, label %getDivisor.exit.thread, label %.lr.ph.i104.i, !llvm.loop !27

.lr.ph.i104.i:                                    ; preds = %ZL_getMultiplicativeInverse32.exit.i.i, %bb.ar
  %.02028.i105.i = phi i64 [ %i.ki, %bb.ar ], [ 0, %ZL_getMultiplicativeInverse32.exit.i.i ] ; 3 uses
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.02028.i105.i
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !43 ; 2 uses
  %i.kl = zext i16 %i.kk to i32
  %i.km = mul i32 %.1.i.i102.i, %i.kl
  %i.kn = lshr i32 %i.km, %i.jv                   ; 2 uses
  %i.ko = mul i32 %i.kn, %i.ju
  %i.kp = trunc i32 %i.ko to i16
  %.not.i106.i = icmp eq i16 %i.kk, %i.kp
  %i.kq = and i32 %i.kn, 65535
  %i.kr = icmp samesign ule i32 %i.kq, %i.jt
  %or.cond.not.i107.i = select i1 %.not.i106.i, i1 %i.kr, i1 false
  br i1 %or.cond.not.i107.i, label %bb.ar, label %ZL_firstIndexNotDivisibleBy16.exit.i

ZL_firstIndexNotDivisibleBy16.exit.i:             ; preds = %.lr.ph.i104.i, %ZL_getMultiplicativeInverse32.exit.i.i
  %spec.select.i108.i = phi i64 [ 0, %ZL_getMultiplicativeInverse32.exit.i.i ], [ %.02028.i105.i, %.lr.ph.i104.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@EI_divide_by_int:bb.a
  %mul.i.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.057, i64 %i.mm)
  %mul.ov.i.i = extractvalue { i64, i1 } %mul.i.i, 1
  %.not34.i.i = or i1 %.not.i143.i, %mul.ov.i.i
  br i1 %.not34.i.i, label %ZL_firstIndexNotDivisibleBy64.exit.i, label %bb.bb

ZL_firstIndexNotDivisibleBy64.exit.i:             ; preds = %.lr.ph.i141.i, %ZL_getMultiplicativeInverse64.exit.i.i
  %spec.select.i145.i = phi i64 [ 0, %ZL_getMultiplicativeInverse64.exit.i.i ], [ %.02028.i142.i, %.lr.ph.i141.i ] ; 2 uses
  %.not.i = icmp eq i64 %spec.select.i145.i, %i.f
  br i1 %.not.i, label %getDivisor.exit.thread, label %bb.bc, !prof !46

bb.bc:                                            ; preds = %ZL_firstIndexNotDivisibleBy64.exit.i
  %i.mo = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @getDivisor.__zl_static_error_info.41, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef 64, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.28, i64 noundef %spec.select.i145.i, i64 noundef %i.f) #7 ; 2 uses
  %i.mp = extractvalue { i32, ptr } %i.mo, 0      ; 2 uses
  %i.mq = extractvalue { i32, ptr } %i.mo, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.mp, ptr %i.mq, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  br label %getDivisor.exit

getDivisor.exit.thread:                           ; preds = %bb.bb, %bb.ax, %bb.ar, %bb.al, %bb.aa, %ZL_firstIndexNotDivisibleBy64.exit.i.i, %bb.u, %ZL_firstIndexNotDivisibleBy32.exit.i.i, %bb.o, %ZL_firstIndexNotDivisibleBy16.exit.i.i, %bb.i, %ZL_firstIndexNotDivisibleBy8.exit.i.i, %bb.g, %bb.h, %.split.i.i, %ZL_firstIndexNotDivisibleBy8.exit.i, %ZL_firstIndexNotDivisibleBy16.exit.i, %ZL_firstIndexNotDivisibleBy32.exit.i, %ZL_firstIndexNotDivisibleBy64.exit.i, %bb.ag, %.split.i
  %.sroa.19.7.i.ph = phi i64 [ 1, %bb.i ], [ %.057, %.split.i ], [ %.057, %bb.ag ], [ 1, %bb.o ], [ %.4.i.i, %ZL_firstIndexNotDivisibleBy32.exit.i.i ], [ 1, %bb.u ], [ 1, %bb.aa ], [ %.2106.i.i, %ZL_firstIndexNotDivisibleBy16.exit.i.i ], [ %.057, %bb.ax ], [ %.057, %ZL_firstIndexNotDivisibleBy64.exit.i ], [ %.0104.i.i, %ZL_firstIndexNotDivisibleBy8.exit.i.i ], [ %.057, %bb.al ], [ %.057, %ZL_firstIndexNotDivisibleBy32.exit.i ], [ %.057, %bb.ar ], [ %.6.i.i, %ZL_firstIndexNotDivisibleBy64.exit.i.i ], [ %.057, %ZL_firstIndexNotDivisibleBy16.exit.i ], [ %.057, %ZL_firstIndexNotDivisibleBy8.exit.i ], [ 0, %.split.i.i ], [ 0, %bb.h ], [ 1, %bb.g ], [ %.057, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.be

getDivisor.exit:                                  ; preds = %bb.ai, %bb.am, %bb.ao, %bb.as, %bb.au, %bb.ay, %bb.bc
  %.sroa.079.7.i = phi i32 [ %i.mp, %bb.bc ], [ %i.kx, %bb.au ], [ %i.jm, %bb.am ], [ %i.if, %bb.ai ], [ %i.kt, %bb.as ], [ %i.jq, %bb.ao ], [ %i.lt, %bb.ay ] ; 2 uses
  %.sroa.19.7.i.in = phi ptr [ %i.mq, %bb.bc ], [ %i.ky, %bb.au ], [ %i.jn, %bb.am ], [ %i.ig, %bb.ai ], [ %i.ku, %bb.as ], [ %i.jr, %bb.ao ], [ %i.lu, %bb.ay ] ; 2 uses
  %.sroa.19.7.i = ptrtoint ptr %.sroa.19.7.i.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %.not65 = icmp eq i32 %.sroa.079.7.i, 0
  br i1 %.not65, label %bb.be, label %bb.bd, !prof !47

bb.bd:                                            ; preds = %getDivisor.exit
  %i.mr = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %.sroa.079.7.i, ptr %.sroa.19.7.i.in, ptr nonnull @EI_divide_by_int.__zl_static_error_info.15, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 101, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.8) #7 ; 2 uses
  %i.ms = extractvalue { i32, ptr } %i.mr, 0
  %i.mt = extractvalue { i32, ptr } %i.mr, 1
  %i.mu = ptrtoint ptr %i.mt to i64
  br label %bb.bg

bb.be:                                            ; preds = %getDivisor.exit, %getDivisor.exit.thread
  %.0.ph = phi i64 [ %.sroa.19.7.i.ph, %getDivisor.exit.thread ], [ %.sroa.19.7.i, %getDivisor.exit ] ; 4 uses
  call void @ZS_divideByEncode(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %i.f, i64 noundef %.0.ph, i64 noundef %i.e) #7
  %i.mv = icmp ugt i64 %.0.ph, 127
  br i1 %i.mv, label %.lr.ph.i, label %ZL_varintEncode.exit

.lr.ph.i:                                         ; preds = %bb.be, %.lr.ph.i
  %.010.i = phi ptr [ %i.my, %.lr.ph.i ], [ %i.a, %bb.be ] ; 2 uses
  %.089.i = phi i64 [ %i.mz, %.lr.ph.i ], [ %.0.ph, %bb.be ] ; 3 uses
  %i.mw = trunc i64 %.089.i to i8
  %i.mx = or i8 %i.mw, -128
  %i.my = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  store i8 %i.mx, ptr %.010.i, align 1, !tbaa !40
  %i.mz = lshr i64 %.089.i, 7                     ; 2 uses
  %i.na = icmp ugt i64 %.089.i, 16383
  br i1 %i.na, label %.lr.ph.i, label %ZL_varintEncode.exit, !llvm.loop !33

ZL_varintEncode.exit:                             ; preds = %.lr.ph.i, %bb.be
  %.08.lcssa.i = phi i64 [ %.0.ph, %bb.be ], [ %i.mz, %.lr.ph.i ]
  %.0.lcssa.i = phi ptr [ %i.a, %bb.be ], [ %i.my, %.lr.ph.i ] ; 2 uses
  %i.nb = trunc nuw nsw i64 %.08.lcssa.i to i8
  %i.nc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1
  store i8 %i.nb, ptr %.0.lcssa.i, align 1, !tbaa !40
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = ptrtoint ptr %i.a to i64
  %i.nf = sub i64 %i.nd, %i.ne
  call void @ZL_Encoder_sendCodecHeader(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.nf) #7
  %i.ng = call { i32, i64 } @ZL_Data_commit(ptr noundef nonnull %i.g, i64 noundef %i.f) #7 ; 2 uses
  %i.nh = extractvalue { i32, i64 } %i.ng, 0      ; 2 uses
  %.not66 = icmp eq i32 %i.nh, 0
  br i1 %.not66, label %bb.bg, label %bb.bf, !prof !39

bb.bf:                                            ; preds = %ZL_varintEncode.exit
  %i.ni = extractvalue { i32, i64 } %i.ng, 1
  %i.nj = inttoptr i64 %i.ni to ptr
  %i.nk = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.nh, ptr %i.nj, ptr nonnull @EI_divide_by_int.__zl_static_error_info.18, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 105, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.8) #7 ; 2 uses
  %i.nl = extractvalue { i32, ptr } %i.nk, 0
  %i.nm = extractvalue { i32, ptr } %i.nk, 1
  %i.nn = ptrtoint ptr %i.nm to i64
  br label %bb.bg

bb.bg:                                            ; preds = %ZL_varintEncode.exit, %bb.bd, %bb.d, %bb.bf
  %.sroa.050.5 = phi i32 [ %i.s, %bb.d ], [ %i.ms, %bb.bd ], [ %i.nl, %bb.bf ], [ 0, %ZL_varintEncode.exit ]
  %.sroa.18.5 = phi i64 [ %i.u, %bb.d ], [ %i.mu, %bb.bd ], [ %i.nn, %bb.bf ], [ 0, %ZL_varintEncode.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.bh

bb.bh:                                            ; preds = %.thread, %bb.bg
  %.sroa.050.6 = phi i32 [ %.sroa.050.5, %bb.bg ], [ %i.i, %.thread ]
  %.sroa.18.6 = phi i64 [ %.sroa.18.5, %bb.bg ], [ %i.k, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.050.6, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.18.6, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_Encoder_getOperationContext(ptr noundef) local_unnamed_addr #3

declare ptr @ZL_Encoder_createTypedStream(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @ZL_Encoder_getLocalParam(ptr dead_on_unwind writable sret(%struct.ZL_RefParam) align 8, ptr noundef, i32 noundef) local_unnamed_addr #4

declare { i32, ptr } @ZL_E_addFrame(ptr noundef, i32, ptr, ptr, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZS_divideByEncode(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @ZL_Encoder_sendCodecHeader(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @ZL_Compressor_registerDivideByNode(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %2 = alloca %struct.ZL_CopyParam, align 8       ; 7 uses
  %3 = alloca %struct.ZL_LocalParams, align 8     ; 7 uses
  %4 = alloca %struct.ZL_ParameterizedNodeDesc, align 8 ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i32 112, ptr %2, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 8, ptr %i.d, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !49
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 0, i64 104, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 31, ptr %i.g, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %i.h, align 8, !tbaa !55
  %i.i = call i32 @ZL_Compressor_registerParameterizedNode(ptr noundef %0, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %i.i
}

declare i32 @ZL_Compressor_registerParameterizedNode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define { i32, i64 } @EI_divide_by_int_as_typedTransform(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !15
  %i.b = call { i32, i64 } @EI_divide_by_int(ptr noundef %0, ptr noundef nonnull %i.a, i64 poison)
  ret { i32, i64 } %i.b
}

declare i64 @ZL_Data_eltWidth(ptr noundef) local_unnamed_addr #4

declare i64 @ZL_Data_numElts(ptr noundef) local_unnamed_addr #4

declare ptr @ZL_Data_rPtr(ptr noundef) local_unnamed_addr #4

declare ptr @ZL_Data_wPtr(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_NULL_getOperationContext(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

declare { i32, i64 } @ZL_Data_commit(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"", !8, i64 0}
!13 = !{!"p1 omnipotent char", !11, i64 0}
!14 = !{!"p1 _ZTS10ZL_Input_s", !11, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!"", !8, i64 0, !11, i64 8, !16, i64 16}
!18 = !{!17, !11, i64 8}
!19 = !{!17, !16, i64 16}
!20 = !{!16, !16, i64 0}
!21 = distinct !{!21, !41}
!22 = distinct !{!22, !41}
!23 = distinct !{!23, !41}
!24 = distinct !{!24, !41}
!25 = distinct !{!25, !41}
!26 = distinct !{!26, !41}
!27 = distinct !{!27, !41}
!28 = distinct !{!28, !41}
!29 = distinct !{!29, !41}
!30 = distinct !{!30, !41}
!31 = distinct !{!31, !41}
!32 = distinct !{!32, !41}
!33 = distinct !{!33, !41}
!34 = !{!"p1 _ZTS21ZL_OperationContext_s", !11, i64 0}
!35 = !{!"", !12, i64 0, !12, i64 4, !8, i64 8, !13, i64 16}
!36 = !{!"", !34, i64 0, !35, i64 8}
!37 = !{!36, !34, i64 0}
!38 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!39 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!40 = !{!7, !7, i64 0}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"short", !7, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!8, !8, i64 0}
!45 = !{!"branch_weights", !"expected", i32 2145933804, i32 1549844}
!46 = !{!"branch_weights", !"expected", i32 2145933805, i32 1549843}
!47 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!48 = !{!17, !8, i64 0}
!49 = !{!11, !11, i64 0}
!50 = !{!12, !8, i64 0}
!51 = !{!"", !7, i64 0}
!52 = !{!"", !51, i64 0}
!53 = !{!"", !11, i64 0, !16, i64 8, !52, i64 16}
!54 = !{!"", !13, i64 0, !12, i64 8, !11, i64 16, !52, i64 24, !53, i64 56}
!55 = !{!54, !11, i64 16}
end_hunk_1
