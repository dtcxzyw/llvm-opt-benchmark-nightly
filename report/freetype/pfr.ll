Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/pfr?download=true
inline.NumInlined: 33
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@pfr_extra_item_load_bitmap_info:bb.a
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !53
  %i.hd = zext i8 %i.hc to i32
  %i.he = or disjoint i32 %i.ha, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %.08299.us109, i64 24
  store i32 %i.he, ptr %i.hf, align 8, !tbaa !111
  %i.hg = load i8, ptr %i.gs, align 1, !tbaa !53
  %i.hh = zext i8 %i.hg to i32                    ; 2 uses
  br i1 %.not96, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = getelementptr inbounds nuw i8, ptr %.286.us112, i64 9
  %i.hj = shl nuw nsw i32 %i.hh, 8
  %i.hk = getelementptr inbounds nuw i8, ptr %.286.us112, i64 8
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !53
  %i.hm = zext i8 %i.hl to i32
  %i.hn = or disjoint i32 %i.hj, %i.hm
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ho = getelementptr inbounds nuw i8, ptr %.286.us112, i64 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.5.us113 = phi ptr [ %i.hi, %bb.ad ], [ %i.ho, %bb.ae ]
  %i.hp = phi i32 [ %i.hn, %bb.ad ], [ %i.hh, %bb.ae ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.08299.us109, i64 28
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !112
  %i.hr = add nuw nsw i32 %.081100.us108, 1       ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.08299.us109, i64 40
  %exitcond118.not = icmp eq i32 %i.hr, %i.j
  br i1 %exitcond118.not, label %._crit_edge, label %.lr.ph.split.split.split.us, !llvm.loop !268

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %bb.al
  %.081100 = phi i32 [ %i.kd, %bb.al ], [ 0, %.lr.ph.split.split ]
  %.08299 = phi ptr [ %i.ke, %bb.al ], [ %i.ap, %.lr.ph.split.split ] ; 7 uses
  %.08498 = phi ptr [ %.5, %bb.al ], [ %i.c, %.lr.ph.split.split ] ; 6 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.08498, i64 2
  %i.hu = load i8, ptr %.08498, align 1, !tbaa !53
  %i.hv = zext i8 %i.hu to i32
  %i.hw = shl nuw nsw i32 %i.hv, 8
  %i.hx = getelementptr inbounds nuw i8, ptr %.08498, i64 1
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !53
  %i.hz = zext i8 %i.hy to i32
  %i.ia = or disjoint i32 %i.hw, %i.hz
  store i32 %i.ia, ptr %.08299, align 8, !tbaa !82
  %i.ib = load i8, ptr %i.ht, align 1, !tbaa !53
  %i.ic = zext i8 %i.ib to i32                    ; 2 uses
  br i1 %.not93, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.split.split.split
  %i.id = getelementptr inbounds nuw i8, ptr %.08498, i64 4
  %i.ie = shl nuw nsw i32 %i.ic, 8
  %i.if = getelementptr inbounds nuw i8, ptr %.08498, i64 3
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !53
  %i.ih = zext i8 %i.ig to i32
  %i.ii = or disjoint i32 %i.ie, %i.ih
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.split.split.split
  %i.ij = getelementptr inbounds nuw i8, ptr %.08498, i64 3
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.286 = phi ptr [ %i.id, %bb.ag ], [ %i.ij, %bb.ah ] ; 11 uses
  %i.ik = phi i32 [ %i.ii, %bb.ag ], [ %i.ic, %bb.ah ]
  %i.il = getelementptr inbounds nuw i8, ptr %.08299, i64 4
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !81
  %i.im = load i8, ptr %.286, align 1, !tbaa !53
  %i.in = zext i8 %i.im to i32
  %i.io = getelementptr inbounds nuw i8, ptr %.08299, i64 8
  store i32 %i.in, ptr %i.io, align 8, !tbaa !110
  %i.ip = getelementptr inbounds nuw i8, ptr %.286, i64 4
  %i.iq = getelementptr inbounds nuw i8, ptr %.286, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !53
  %i.is = zext i8 %i.ir to i32
  %i.it = shl nuw nsw i32 %i.is, 16
  %i.iu = getelementptr inbounds nuw i8, ptr %.286, i64 2
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !53
  %i.iw = zext i8 %i.iv to i32
  %i.ix = shl nuw nsw i32 %i.iw, 8
  %i.iy = or disjoint i32 %i.ix, %i.it
  %i.iz = getelementptr inbounds nuw i8, ptr %.286, i64 3
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !53
  %i.jb = zext i8 %i.ja to i32
  %i.jc = or disjoint i32 %i.iy, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %.08299, i64 20
  store i32 %i.jc, ptr %i.jd, align 4, !tbaa !270
  %i.je = getelementptr inbounds nuw i8, ptr %.286, i64 7
  %i.jf = load i8, ptr %i.ip, align 1, !tbaa !53
  %i.jg = zext i8 %i.jf to i32
  %i.jh = shl nuw nsw i32 %i.jg, 16
  %i.ji = getelementptr inbounds nuw i8, ptr %.286, i64 5
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !53
  %i.jk = zext i8 %i.jj to i32
  %i.jl = shl nuw nsw i32 %i.jk, 8
  %i.jm = or disjoint i32 %i.jl, %i.jh
  %i.jn = getelementptr inbounds nuw i8, ptr %.286, i64 6
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !53
  %i.jp = zext i8 %i.jo to i32
  %i.jq = or disjoint i32 %i.jm, %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %.08299, i64 24
  store i32 %i.jq, ptr %i.jr, align 8, !tbaa !111
  %i.js = load i8, ptr %i.je, align 1, !tbaa !53
  %i.jt = zext i8 %i.js to i32                    ; 2 uses
  br i1 %.not96, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ju = getelementptr inbounds nuw i8, ptr %.286, i64 9
  %i.jv = shl nuw nsw i32 %i.jt, 8
  %i.jw = getelementptr inbounds nuw i8, ptr %.286, i64 8
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !53
  %i.jy = zext i8 %i.jx to i32
  %i.jz = or disjoint i32 %i.jv, %i.jy
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ka = getelementptr inbounds nuw i8, ptr %.286, i64 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.5 = phi ptr [ %i.ju, %bb.aj ], [ %i.ka, %bb.ak ]
  %i.kb = phi i32 [ %i.jz, %bb.aj ], [ %i.jt, %bb.ak ]
  %i.kc = getelementptr inbounds nuw i8, ptr %.08299, i64 28
  store i32 %i.kb, ptr %i.kc, align 4, !tbaa !112
  %i.kd = add nuw nsw i32 %.081100, 1             ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.08299, i64 40
  %exitcond.not = icmp eq i32 %i.kd, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.split, !llvm.loop !268

._crit_edge:                                      ; preds = %bb.al, %bb.af, %bb.z, %bb.q, %bb.e
  %i.kf = add i32 %i.an, %i.j
  store i32 %i.kf, ptr %i.k, align 8, !tbaa !70
  %.pre = load i32, ptr %i.a, align 4, !tbaa !50
  br label %bb.am

bb.am:                                            ; preds = %bb.a, %bb.d, %bb.c, %._crit_edge
  %i.kg = phi i32 [ %i.x, %bb.c ], [ %.pre, %._crit_edge ], [ 8, %bb.d ], [ 8, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.kg
}

; Function Attrs: nounwind uwtable
define internal i32 @pfr_extra_item_load_font_id(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !50
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !54
  %i.h = add i64 %i.d, 1
  %i.i = and i64 %i.h, 4294967295
  %i.j = call ptr @ft_mem_qalloc(ptr noundef %i.g, i64 noundef %i.i, ptr noundef nonnull %i.a) #12 ; 2 uses
  store ptr %i.j, ptr %i.e, align 8, !tbaa !73
  %i.k = load i32, ptr %i.a, align 4, !tbaa !50   ; 2 uses
  %.not12 = icmp eq i32 %i.k, 0
  br i1 %.not12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = and i64 %i.d, 4294967295                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %0, i64 %i.l, i1 false)
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !53
  %.pre = load i32, ptr %i.a, align 4, !tbaa !50
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.o = phi i32 [ %i.k, %bb.b ], [ 0, %bb.a ], [ %.pre, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.o
}

; Function Attrs: nounwind uwtable
define internal i32 @pfr_extra_item_load_stem_snaps(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef captures(none) %2) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !50
  %i.b = load ptr, ptr %2, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.f = icmp ugt ptr %i.e, %1
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %0, align 1, !tbaa !53
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = and i32 %i.h, 15                         ; 3 uses
  %i.j = lshr i32 %i.h, 4                         ; 2 uses
  %i.k = add nuw nsw i32 %i.i, %i.j               ; 6 uses
  %i.l = shl nuw nsw i32 %i.k, 1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.o = icmp ugt ptr %i.n, %1
  br i1 %i.o, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = zext nneg i32 %i.k to i64
  %i.q = call ptr @ft_mem_qrealloc(ptr noundef %i.b, i64 noundef 4, i64 noundef 0, i64 noundef %i.p, ptr noundef null, ptr noundef nonnull %i.a) #12 ; 5 uses
  %i.r = load i32, ptr %i.a, align 4, !tbaa !50   ; 2 uses
  %.not30 = icmp eq i32 %i.r, 0
  br i1 %.not30, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store ptr %i.q, ptr %i.c, align 8, !tbaa !83
  %i.s = zext nneg i32 %i.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.t, ptr %i.u, align 8, !tbaa !84
  %.not3132 = icmp eq i32 %i.k, 0
  br i1 %.not3132, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %3 = add nuw nsw i32 %i.j, %i.i
  %xtraiter = and i32 %i.k, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.w = load i8, ptr %i.e, align 1, !tbaa !53
  %i.x = zext i8 %i.w to i16
  %i.y = shl nuw i16 %i.x, 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !53
  %i.ab = zext i8 %i.aa to i16
  %i.ac = or disjoint i16 %i.y, %i.ab
  %i.ad = sext i16 %i.ac to i32
  store i32 %i.ad, ptr %i.q, align 4, !tbaa !50
  %i.ae = add nsw i32 %i.k, -1
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.035.unr = phi ptr [ %i.q, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %.02634.unr = phi i32 [ %i.k, %.lr.ph.preheader ], [ %i.ae, %.lr.ph.prol ]
  %.02733.unr = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %i.ag = icmp eq i32 %3, 1
  br i1 %i.ag, label %.loopexit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.035 = phi ptr [ %i.bb, %.lr.ph ], [ %.035.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.02634 = phi i32 [ %i.ba, %.lr.ph ], [ %.02634.unr, %.lr.ph.prol.loopexit ]
  %.02733 = phi ptr [ %i.ar, %.lr.ph ], [ %.02733.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.02733, i64 2
  %i.ai = load i8, ptr %.02733, align 1, !tbaa !53
  %i.aj = zext i8 %i.ai to i16
  %i.ak = shl nuw i16 %i.aj, 8
  %i.al = getelementptr inbounds nuw i8, ptr %.02733, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !53
  %i.an = zext i8 %i.am to i16
  %i.ao = or disjoint i16 %i.ak, %i.an
  %i.ap = sext i16 %i.ao to i32
  store i32 %i.ap, ptr %.035, align 4, !tbaa !50
  %i.aq = getelementptr inbounds nuw i8, ptr %.035, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.02733, i64 4
  %i.as = load i8, ptr %i.ah, align 1, !tbaa !53
  %i.at = zext i8 %i.as to i16
  %i.au = shl nuw i16 %i.at, 8
  %i.av = getelementptr inbounds nuw i8, ptr %.02733, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !53
  %i.ax = zext i8 %i.aw to i16
  %i.ay = or disjoint i16 %i.au, %i.ax
  %i.az = sext i16 %i.ay to i32
  store i32 %i.az, ptr %i.aq, align 4, !tbaa !50
  %i.ba = add nsw i32 %.02634, -2                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.035, i64 8
  %.not31.1 = icmp eq i32 %i.ba, 0
  br i1 %.not31.1, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !271

.loopexit.loopexit:                               ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.pre = load i32, ptr %i.a, align 4, !tbaa !50
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.loopexit.loopexit, %bb.e, %bb.d, %bb.a
  %i.bc = phi i32 [ %.pre, %.loopexit.loopexit ], [ 0, %bb.e ], [ %i.r, %bb.d ], [ 0, %bb.a ], [ 8, %bb.c ], [ 8, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.bc
}

; Function Attrs: nounwind uwtable
define internal i32 @pfr_extra_item_load_kerning_pairs(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef captures(none) %2) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !50
  %i.b = load ptr, ptr %2, align 8, !tbaa !54     ; 3 uses
  %i.c = call ptr @ft_mem_alloc(ptr noundef %i.b, i64 noundef 32, ptr noundef nonnull %i.a) #12 ; 13 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !50   ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.f = icmp ugt ptr %i.e, %1
  br i1 %i.f, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %0, align 1, !tbaa !53      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %i.g, ptr %i.h, align 8, !tbaa !126
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !53
  %i.l = zext i8 %i.k to i16
  %i.m = shl nuw i16 %i.l, 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !53
  %i.p = zext i8 %i.o to i16
  %i.q = or disjoint i16 %i.m, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store i16 %i.q, ptr %i.r, align 2, !tbaa !128
  %i.s = load i8, ptr %i.i, align 1, !tbaa !53    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  store i8 %i.s, ptr %i.t, align 1, !tbaa !127
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !55
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !58
  %i.z = ptrtoint ptr %i.e to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = add i64 %i.w, %i.z
  %i.ac = sub i64 %i.ab, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !125
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.af = and i8 %i.s, 1
  %.not74 = icmp eq i8 %i.af, 0                   ; 2 uses
  %spec.store.select = select i1 %.not74, i32 3, i32 5
  %i.ag = lshr i8 %i.s, 1
  %i.ah = and i8 %i.ag, 1
  %i.ai = zext nneg i8 %i.ah to i32
  %spec.select = add nuw nsw i32 %spec.store.select, %i.ai ; 4 uses
  store i32 %spec.select, ptr %i.ae, align 4
  %i.aj = zext i8 %i.g to i32                     ; 4 uses
  %i.ak = mul nuw nsw i32 %spec.select, %i.aj
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.al
  %i.an = icmp ugt ptr %i.am, %1
  br i1 %i.an, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not76 = icmp eq i8 %i.g, 0
  br i1 %.not76, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not74, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load i32, ptr %i.e, align 1
  %i.ap = call i32 @llvm.bswap.i32(i32 %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !123
  %i.ar = add nsw i32 %i.aj, -1
  %i.as = mul nuw nsw i32 %i.ar, %spec.select
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.at
  %i.av = load i32, ptr %i.au, align 1
  %i.aw = call i32 @llvm.bswap.i32(i32 %i.av)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ay = load i8, ptr %i.e, align 1, !tbaa !53
  %i.az = zext i8 %i.ay to i32
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !53
  %i.bb = shl nuw nsw i32 %i.az, 16
  %i.bc = zext i8 %i.ba to i32
  %i.bd = or disjoint i32 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !123
  %i.bf = add nsw i32 %i.aj, -1
  %i.bg = mul nuw nsw i32 %i.bf, %spec.select
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !53
  %i.bl = zext i8 %i.bk to i32
  %i.bm = load i8, ptr %i.bj, align 1, !tbaa !53
  %i.bn = shl nuw nsw i32 %i.bl, 16
  %i.bo = zext i8 %i.bm to i32
  %i.bp = or disjoint i32 %i.bn, %i.bo
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi i32 [ %i.bp, %bb.g ], [ %i.aw, %bb.f ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %.sink, ptr %i.bq, align 4, !tbaa !124
  store ptr null, ptr %i.c, align 8, !tbaa !86
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !57
  store ptr %i.c, ptr %i.bs, align 8, !tbaa !122
  store ptr %i.c, ptr %i.br, align 8, !tbaa !57
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !71
  %i.bv = add i32 %i.bu, %i.aj
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !71
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  call void @ft_mem_free(ptr noundef %i.b, ptr noundef nonnull %i.c) #12
  %.pre = load i32, ptr %i.a, align 4, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.a, %bb.k
  %i.bw = phi i32 [ 0, %bb.h ], [ %.pre, %bb.i ], [ %i.d, %bb.a ], [ 8, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.bw

bb.k:                                             ; preds = %bb.b, %bb.c
  call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.c) #12
  br label %bb.j
}

declare hidden ptr @ft_mem_realloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare hidden ptr @ft_mem_alloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare hidden void @FT_GlyphLoader_Rewind(ptr noundef) local_unnamed_addr #5

declare void @FT_Outline_Get_CBox(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 9) i32 @pfr_load_bitmap_metrics(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, i64 noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5, ptr nofree noundef nonnull writeonly captures(none) %6, ptr nofree noundef nonnull writeonly captures(none) %7, ptr nofree noundef nonnull writeonly captures(none) %8) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !61     ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 5 uses
  %i.c = icmp ugt ptr %i.b, %1
  br i1 %i.c, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !53    ; 3 uses
end_hunk_0
