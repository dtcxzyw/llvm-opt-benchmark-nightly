Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@tt_cmap2_validate:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.c = load volatile ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = icmp ugt ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !29
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !29
  %i.k = zext i8 %i.j to i32
  %i.l = or disjoint i32 %i.h, %i.k               ; 2 uses
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.o = load volatile ptr, ptr %i.b, align 8, !tbaa !33
  %i.p = icmp ugt ptr %i.n, %i.o
  %i.q = icmp samesign ult i32 %i.l, 518
  %or.cond = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.h
  %.0102 = phi i32 [ 0, %bb.e ], [ %spec.select, %bb.h ] ; 2 uses
  %.077101 = phi i32 [ 0, %bb.e ], [ %i.af, %bb.h ]
  %.079100 = phi ptr [ %i.r, %bb.e ], [ %i.t, %bb.h ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.079100, i64 2
  %i.u = load i8, ptr %.079100, align 1, !tbaa !29
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 8                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.079100, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !29
  %i.z = zext i8 %i.y to i32                      ; 3 uses
  %i.aa = or disjoint i32 %i.w, %i.z
  %i.ab = load volatile i32, ptr %i.s, align 8, !tbaa !34
  %i.ac = icmp ult i32 %i.ab, 2
  %i.ad = and i32 %i.z, 7
  %.not92 = icmp eq i32 %i.ad, 0
  %or.cond93 = select i1 %i.ac, i1 true, i1 %.not92
  br i1 %or.cond93, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = lshr i32 %i.aa, 3
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 %.0102) ; 2 uses
  %i.af = add nuw nsw i32 %.077101, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.af, 256
  br i1 %exitcond.not, label %bb.i, label %bb.f, !llvm.loop !362

bb.i:                                             ; preds = %bb.h
  %scevgep = getelementptr i8, ptr %0, i64 518    ; 2 uses
  %i.ag = shl nuw nsw i32 %spec.select, 3
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %scevgep, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load volatile ptr, ptr %i.b, align 8, !tbaa !33
  %i.al = icmp ugt ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.an = or disjoint i32 %i.w, %i.z
  %i.ao = lshr i32 %i.an, 3
  %umax = tail call i32 @llvm.umax.i32(i32 %.0102, i32 %i.ao)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.178105 = phi i32 [ 0, %bb.k ], [ %i.cv, %.loopexit ] ; 2 uses
  %.180104 = phi ptr [ %scevgep, %bb.k ], [ %.5, %.loopexit ] ; 9 uses
  %i.ap = load i8, ptr %.180104, align 1, !tbaa !29 ; 2 uses
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 8
  %i.as = getelementptr inbounds nuw i8, ptr %.180104, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !29
  %i.au = zext i8 %i.at to i32
  %i.av = or disjoint i32 %i.ar, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.180104, i64 2
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !29
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.180104, i64 3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !29
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.az, %i.bc            ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.180104, i64 4
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !29
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.180104, i64 5
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !29
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bh, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.180104, i64 8 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.180104, i64 6 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !29
  %i.bp = zext i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 8
  %i.br = getelementptr inbounds nuw i8, ptr %.180104, i64 7
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !29
  %i.bt = zext i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.bq, %i.bt            ; 2 uses
  %i.bv = icmp eq i32 %i.bd, 0
  br i1 %i.bv, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = load volatile i32, ptr %i.s, align 8, !tbaa !34
  %i.bx = icmp ugt i32 %i.bw, 1
  br i1 %i.bx, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.not87 = icmp ne i8 %i.ap, 0
  %i.by = sub nuw nsw i32 256, %i.av
  %i.bz = icmp samesign ugt i32 %i.bd, %i.by
  %or.cond95 = select i1 %.not87, i1 true, i1 %i.bz
  br i1 %or.cond95, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #27
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.not88 = icmp eq i32 %i.bu, 0
  br i1 %.not88, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = zext nneg i32 %i.bu to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ca ; 2 uses
  %i.cc = icmp ult ptr %i.cb, %i.aj
  %i.cd = shl nuw nsw i32 %i.bd, 1
  %i.ce = zext nneg i32 %i.cd to i64              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ce
  %i.cg = icmp ugt ptr %i.cf, %i.n
  %or.cond99 = select i1 %i.cc, i1 true, i1 %i.cg
  br i1 %or.cond99, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 9) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.ch = load volatile i32, ptr %i.s, align 8, !tbaa !34
  %.not89 = icmp eq i32 %i.ch, 0
  br i1 %.not89, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ce
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %.2103 = phi ptr [ %i.cj, %bb.v ], [ %i.bm, %.lr.ph.preheader ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.2103, i64 2 ; 3 uses
  %i.ck = load i8, ptr %.2103, align 1, !tbaa !29
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.2103, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !29
  %i.cp = zext i8 %i.co to i32
  %i.cq = or disjoint i32 %i.cm, %i.cp            ; 2 uses
  %.not90 = icmp eq i32 %i.cq, 0
  br i1 %.not90, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.cr = add nuw nsw i32 %i.cq, %i.bl
  %i.cs = and i32 %i.cr, 65535
  %i.ct = load i32, ptr %i.am, align 8, !tbaa !36
  %.not91 = icmp ult i32 %i.cs, %i.ct
  br i1 %.not91, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 16) #27
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %.lr.ph
  %i.cu = icmp ult ptr %i.cj, %i.ci
  br i1 %i.cu, label %.lr.ph, label %.loopexit, !llvm.loop !363

.loopexit:                                        ; preds = %bb.v, %bb.p, %bb.s, %bb.l
  %.5 = phi ptr [ %i.bm, %bb.l ], [ %i.bm, %bb.p ], [ %i.bm, %bb.s ], [ %i.cj, %bb.v ]
  %i.cv = add nuw nsw i32 %.178105, 1
  %exitcond109.not = icmp eq i32 %.178105, %umax
  br i1 %exitcond109.not, label %bb.w, label %bb.l, !llvm.loop !364

bb.w:                                             ; preds = %.loopexit
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @tt_cmap2_get_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 2, ptr %i.d, align 8, !tbaa !39
  %i.e = load i8, ptr %i.c, align 1, !tbaa !29
  %i.f = zext i8 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29
  %i.j = zext i8 %i.i to i64
  %i.k = or disjoint i64 %i.g, %i.j
  store i64 %i.k, ptr %1, align 8, !tbaa !40
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @tt_cmap4_init(ptr nofree noundef writeonly captures(none) initializes((24, 32), (40, 52)) %0, ptr noundef %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.c = load i8, ptr %i.b, align 1, !tbaa !29
  %i.d = zext i8 %i.c to i32
  %i.e = shl nuw nsw i32 %i.d, 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29
  %i.h = zext i8 %i.g to i32
  %i.i = or disjoint i32 %i.e, %i.h
  %i.j = lshr i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.j, ptr %i.k, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 -1, ptr %i.l, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.m, align 4, !tbaa !45
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @tt_cmap4_char_index(ptr nofree noundef captures(none) %0, i32 noundef %1) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !30
  %i.b = icmp ugt i32 %1, 65535
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %0, align 8, !tbaa !47
  %i.f = getelementptr i8, ptr %0, i64 24
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.g = call fastcc i32 @tt_cmap4_char_map_linear(ptr %.val, ptr %.val4, ptr noundef nonnull %i.a, i8 noundef zeroext 0)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = call fastcc i32 @tt_cmap4_char_map_binary(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i8 noundef zeroext 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.h, %bb.d ], [ %i.g, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @tt_cmap4_char_next(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #6 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !30     ; 2 uses
  %i.b = icmp ugt i32 %i.a, 65534
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %0, align 8, !tbaa !47
  %i.f = getelementptr i8, ptr %0, i64 24
  %.val21 = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.g = tail call fastcc i32 @tt_cmap4_char_map_linear(ptr %.val, ptr %.val21, ptr noundef nonnull %1, i8 noundef zeroext 1)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !44
  %i.j = icmp eq i32 %i.a, %i.i
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @tt_cmap4_next(ptr noundef nonnull %0)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !45   ; 2 uses
  %.not20 = icmp eq i32 %i.l, 0
  br i1 %.not20, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.h, align 8, !tbaa !44
  store i32 %i.m, ptr %1, align 4, !tbaa !30
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.n = tail call fastcc i32 @tt_cmap4_char_map_binary(ptr noundef nonnull %0, ptr noundef nonnull %1, i8 noundef zeroext 1)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %bb.a
  %.016 = phi i32 [ 0, %bb.a ], [ %i.g, %bb.c ], [ %i.l, %bb.f ], [ 0, %bb.e ], [ %i.n, %bb.g ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_cmap4_validate(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 6 uses
  %i.c = load volatile ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = icmp ugt ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !29
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !29
  %i.k = zext i8 %i.j to i32
  %i.l = or disjoint i32 %i.h, %i.k               ; 2 uses
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.o = load volatile ptr, ptr %i.b, align 8, !tbaa !33
  %i.p = icmp ugt ptr %i.n, %i.o
  br i1 %i.p, label %bb.d, label %._crit_edge217

._crit_edge217:                                   ; preds = %bb.c
  %.pre = ptrtoint ptr %0 to i64
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.r = load volatile i32, ptr %i.q, align 8, !tbaa !34
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = load volatile ptr, ptr %i.b, align 8, !tbaa !33
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.v = sub i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge217, %bb.f
  %.pre-phi = phi i64 [ %.pre, %._crit_edge217 ], [ %i.u, %bb.f ] ; 2 uses
  %.0174 = phi i32 [ %i.l, %._crit_edge217 ], [ %i.w, %bb.f ] ; 2 uses
  %i.x = load volatile ptr, ptr %i.b, align 8, !tbaa !33
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %.pre-phi
  %i.aa = trunc i64 %i.z to i32
  %i.ab = icmp ult i32 %.0174, %i.aa
  br i1 %i.ab, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ad = load volatile i32, ptr %i.ac, align 8, !tbaa !34
  %i.ae = icmp ugt i32 %i.ad, 1
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = load volatile ptr, ptr %i.b, align 8, !tbaa !33
end_hunk_0
begin_hunk_1_@tt_cmap12_validate:bb.a

bb.n:                                             ; preds = %bb.m
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cr = load volatile i32, ptr %i.ai, align 8, !tbaa !34
  %.not63 = icmp eq i32 %i.cr, 0
  br i1 %.not63, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = sub i32 %i.bw, %i.bt                    ; 2 uses
  %i.ct = load i32, ptr %i.aj, align 8, !tbaa !36 ; 2 uses
  %i.cu = icmp uge i32 %i.ct, %i.cs
  %i.cv = sub nuw i32 %i.ct, %i.cs
  %i.cw = zext i32 %i.cv to i64
  %.not64 = icmp samesign ult i64 %i.cp, %i.cw
  %or.cond67 = select i1 %i.cu, i1 %.not64, i1 false
  br i1 %or.cond67, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 16) #27
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.cx = add nuw nsw i64 %.05769, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cx, %i.am
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !376

._crit_edge:                                      ; preds = %bb.r, %bb.k, %bb.f
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @tt_cmap12_get_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 12, ptr %i.d, align 8, !tbaa !39
  %i.e = load i8, ptr %i.c, align 1, !tbaa !29
  %i.f = zext i8 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 16
  %i.l = or disjoint i64 %i.k, %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.n = load i8, ptr %i.m, align 1, !tbaa !29
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 8
  %i.q = or disjoint i64 %i.l, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.s = load i8, ptr %i.r, align 1, !tbaa !29
  %i.t = zext i8 %i.s to i64
  %i.u = or disjoint i64 %i.q, %i.t
  store i64 %i.u, ptr %1, align 8, !tbaa !40
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @tt_cmap13_init(ptr nofree noundef writeonly captures(none) initializes((24, 32), (40, 41), (72, 80)) %0, ptr noundef %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i8, ptr %i.b, align 1, !tbaa !29
  %i.d = zext i8 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29
  %i.h = zext i8 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 16
  %i.j = or disjoint i64 %i.i, %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.l = load i8, ptr %i.k, align 1, !tbaa !29
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 8
  %i.o = or disjoint i64 %i.j, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.q = load i8, ptr %i.p, align 1, !tbaa !29
  %i.r = zext i8 %i.q to i64
  %i.s = or disjoint i64 %i.o, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.s, ptr %i.t, align 8, !tbaa !73
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.u, align 8, !tbaa !74
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @tt_cmap13_char_index(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 1              ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %tt_cmap13_char_map_binary.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.e
  %.061.i = phi i32 [ %.162.i, %bb.e ], [ %i.e, %.preheader.i.preheader ] ; 2 uses
  %.060.i = phi i32 [ %.1.i, %bb.e ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.f = add i32 %.060.i, %.061.i
  %i.g = lshr i32 %i.f, 1                         ; 3 uses
  %i.h = mul i32 %i.g, 12
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 1
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.l)
  %i.n = icmp ult i32 %1, %i.m
  br i1 %i.n, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.p = load i32, ptr %i.o, align 1
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)
  %i.r = icmp ugt i32 %1, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = add nuw i32 %i.g, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.u = load i32, ptr %i.t, align 1
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)
  br label %tt_cmap13_char_map_binary.exit

bb.e:                                             ; preds = %bb.c, %.preheader.i
  %.162.i = phi i32 [ %.061.i, %bb.c ], [ %i.g, %.preheader.i ] ; 2 uses
  %.1.i = phi i32 [ %i.s, %bb.c ], [ %.060.i, %.preheader.i ] ; 2 uses
  %i.w = icmp ult i32 %.1.i, %.162.i
  br i1 %i.w, label %.preheader.i, label %tt_cmap13_char_map_binary.exit, !llvm.loop !1

tt_cmap13_char_map_binary.exit:                   ; preds = %bb.e, %bb.d, %bb.a
  %.166.i = phi i32 [ 0, %bb.a ], [ %i.v, %bb.d ], [ 0, %bb.e ]
  ret i32 %.166.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @tt_cmap13_char_next(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #3 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !30     ; 2 uses
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp eq i32 %i.a, -1
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !74
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !75
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !76   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !73   ; 2 uses
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %.lr.ph.i, label %tt_cmap13_next.exit.thread

.lr.ph.i:                                         ; preds = %bb.d
  %i.n = add nuw nsw i64 %i.b, 1
  %i.o = load ptr, ptr %0, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %.044.i = phi i64 [ %i.j, %.lr.ph.i ], [ %i.ai, %bb.g ] ; 3 uses
  %.03843.i = phi i64 [ %i.n, %.lr.ph.i ], [ %spec.select.i, %bb.g ]
  %i.s = mul i64 %.044.i, 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 1
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = zext i32 %i.ab to i64
  %i.ad = load i32, ptr %i.y, align 1             ; 2 uses
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %.03843.i, i64 %i.x) ; 4 uses
  %.not.i = icmp samesign ugt i64 %spec.select.i, %i.ac
  %.not41.i = icmp eq i32 %i.ad, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not41.i
  br i1 %or.cond.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad) ; 3 uses
  %i.af = load i64, ptr %i.r, align 8, !tbaa !63
  %i.ag = trunc i64 %i.af to i32
  %i.ah = icmp ult i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = add i64 %.044.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %i.l
  br i1 %exitcond.not.i, label %tt_cmap13_next.exit.thread, label %bb.e, !llvm.loop !2

tt_cmap13_next.exit.thread:                       ; preds = %bb.g, %bb.d
  store i8 0, ptr %i.d, align 8, !tbaa !74
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  store i64 %spec.select.i, ptr %i.f, align 8, !tbaa !75
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.ae, ptr %i.aj, align 8, !tbaa !77
  store i64 %.044.i, ptr %i.i, align 8, !tbaa !76
  %i.ak = trunc nuw i64 %spec.select.i to i32
  store i32 %i.ak, ptr %1, align 4, !tbaa !30
  br label %bb.j

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.al = tail call fastcc i32 @tt_cmap13_char_map_binary(ptr noundef nonnull %0, ptr noundef nonnull %1, i8 noundef zeroext 1)
  br label %bb.j

bb.j:                                             ; preds = %tt_cmap13_next.exit.thread, %bb.i, %bb.h, %bb.a
  %.013 = phi i32 [ 0, %bb.a ], [ %i.ae, %bb.h ], [ %i.al, %bb.i ], [ 0, %tt_cmap13_next.exit.thread ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tt_cmap13_validate(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.c = load volatile ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = icmp ugt ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 1
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.f)  ; 3 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i8, ptr %i.i, align 1, !tbaa !29
  %i.k = zext i8 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 24                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.n = load i8, ptr %i.m, align 1, !tbaa !29
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 16                 ; 2 uses
  %i.q = or disjoint i64 %i.p, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.s = load i8, ptr %i.r, align 1, !tbaa !29
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8                  ; 2 uses
  %i.v = or disjoint i64 %i.q, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.x = load i8, ptr %i.w, align 1, !tbaa !29
  %i.y = zext i8 %i.x to i64                      ; 2 uses
  %i.z = or disjoint i64 %i.v, %i.y               ; 2 uses
  %i.aa = load volatile ptr, ptr %i.b, align 8, !tbaa !33
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %0 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ult i64 %i.ad, %i.h
  %i.af = icmp ult i32 %i.g, 16
  %or.cond = or i1 %i.ae, %i.af
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.lhs.trunc = add i32 %i.g, -16
  %i.ag = udiv i32 %.lhs.trunc, 12
  %.zext = zext nneg i32 %i.ag to i64
  %i.ah = icmp samesign ugt i64 %i.z, %.zext
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not62 = icmp eq i64 %i.z, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.ak = or disjoint i64 %i.l, %i.p
  %i.al = or disjoint i64 %i.ak, %i.u
  %i.am = or disjoint i64 %i.al, %i.y             ; 2 uses
  %i.an = load i32, ptr %i.a, align 1
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aq = load i32, ptr %i.ap, align 1
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i8, ptr %i.at, align 1, !tbaa !29
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 24
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !29
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 16
  %i.bb = or disjoint i64 %i.ba, %i.aw
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !29
  %i.be = zext i8 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 8
  %i.bg = or disjoint i64 %i.bb, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !29
  %i.bj = zext i8 %i.bi to i64
  %i.bk = or disjoint i64 %i.bg, %i.bj
  %i.bl = icmp ugt i32 %i.ao, %i.ar
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #27
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %i.bm = load volatile i32, ptr %i.ai, align 8, !tbaa !34
  %.not56.peel = icmp eq i32 %i.bm, 0
  br i1 %.not56.peel, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = load i32, ptr %i.aj, align 8, !tbaa !36
  %i.bo = zext i32 %i.bn to i64
  %.not57.peel = icmp samesign ult i64 %i.bk, %i.bo
  br i1 %.not57.peel, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 16) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %exitcond.peel.not = icmp eq i64 %i.am, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.k, %bb.r
  %.061.in = phi i32 [ %i.bt, %bb.r ], [ %i.ar, %bb.k ]
  %.05260 = phi i64 [ %i.cr, %bb.r ], [ 1, %bb.k ]
  %.05359 = phi ptr [ %i.bu, %bb.r ], [ %i.as, %bb.k ] ; 7 uses
  %i.bp = load i32, ptr %.05359, align 1
  %i.bq = tail call i32 @llvm.bswap.i32(i32 %i.bp) ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.05359, i64 4
  %i.bs = load i32, ptr %i.br, align 1
  %i.bt = tail call i32 @llvm.bswap.i32(i32 %i.bs) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.05359, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %.05359, i64 8
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !29
  %i.bx = zext i8 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 24
  %i.bz = getelementptr inbounds nuw i8, ptr %.05359, i64 9
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !29
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 16
  %i.cd = or disjoint i64 %i.cc, %i.by
  %i.ce = getelementptr inbounds nuw i8, ptr %.05359, i64 10
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !29
  %i.cg = zext i8 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 8
  %i.ci = or disjoint i64 %i.cd, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %.05359, i64 11
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !29
  %i.cl = zext i8 %i.ck to i64
  %i.cm = or disjoint i64 %i.ci, %i.cl
  %i.cn = icmp ugt i32 %i.bq, %i.bt
  br i1 %i.cn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.peel.next
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.peel.next
  %.not55 = icmp ugt i32 %i.bq, %.061.in
  br i1 %.not55, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.co = load volatile i32, ptr %i.ai, align 8, !tbaa !34
  %.not56 = icmp eq i32 %i.co, 0
end_hunk_1
begin_hunk_2_@tt_cmap12_next:bb.a
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !29
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 16
  %i.as = or disjoint i64 %i.ar, %i.an
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 26
  %i.au = load i8, ptr %i.at, align 1, !tbaa !29
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 8
  %i.ax = or disjoint i64 %i.as, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 27
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !29
  %i.ba = zext i8 %i.az to i64
  %i.bb = or disjoint i64 %i.ax, %i.ba            ; 2 uses
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.04562, i64 %i.r) ; 3 uses
  %.not58 = icmp ugt i64 %spec.select, %i.ak
  br i1 %.not58, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.bc = or disjoint i64 %i.w, %i.aa
  %i.bd = or disjoint i64 %i.bc, %i.af
  %i.be = or disjoint i64 %i.bd, 1
  %i.bf = add nuw nsw i64 %i.be, %i.aj
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.259 = phi i64 [ %i.bm, %bb.e ], [ %spec.select, %.lr.ph.preheader ] ; 7 uses
  %i.bg = sub nsw i64 %.259, %i.r                 ; 2 uses
  %i.bh = sub nsw i64 4294967295, %i.bg
  %i.bi = icmp ugt i64 %i.bb, %i.bh
  br i1 %i.bi, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.bj = add nsw i64 %i.bg, %i.bb
  %i.bk = trunc i64 %i.bj to i32                  ; 3 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %exitcond = icmp eq i64 %.259, 4294967295
  br i1 %exitcond, label %.loopexit50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = add nuw nsw i64 %.259, 1
  %.not.not = icmp ult i64 %.259, %i.ak
  br i1 %.not.not, label %.lr.ph, label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.bn = load i64, ptr %i.l, align 8, !tbaa !63
  %i.bo = trunc i64 %i.bn to i32
  %.not49 = icmp ult i32 %i.bk, %i.bo
  br i1 %.not49, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  store i64 %.259, ptr %i.a, align 8, !tbaa !68
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.bk, ptr %i.bp, align 8, !tbaa !69
  store i64 %.063, ptr %i.b, align 8, !tbaa !357
  br label %bb.h

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %bb.b, %bb.f
  %.254 = phi i64 [ %.259, %bb.f ], [ %spec.select, %bb.b ], [ %.259, %.lr.ph ], [ %i.bf, %bb.e ]
  %i.bq = add nuw i64 %.063, 1                    ; 2 uses
  %exitcond72.not = icmp eq i64 %i.bq, %i.e
  br i1 %exitcond72.not, label %.loopexit50, label %bb.b, !llvm.loop !834

.loopexit50:                                      ; preds = %.loopexit, %bb.d, %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.br, align 8, !tbaa !67
  br label %bb.h

bb.h:                                             ; preds = %.loopexit50, %bb.g
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @tt_cmap13_char_map_binary(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i8 noundef zeroext range(i8 0, 2) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 1              ; 2 uses
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)  ; 2 uses
  %i.f = load i32, ptr %1, align 4, !tbaa !30
  %i.g = zext nneg i8 %2 to i32
  %i.h = add i32 %i.f, %i.g                       ; 6 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.e
  %.061 = phi i32 [ %.162, %bb.e ], [ %i.e, %bb.a ] ; 2 uses
  %.060 = phi i32 [ %.1, %bb.e ], [ 0, %bb.a ]    ; 2 uses
  %i.i = add i32 %.060, %.061
  %i.j = lshr i32 %i.i, 1                         ; 5 uses
  %i.k = mul i32 %i.j, 12
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.l ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 1
  %i.p = tail call i32 @llvm.bswap.i32(i32 %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.r = load i8, ptr %i.q, align 1, !tbaa !29
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw i32 %i.s, 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 21
  %i.v = load i8, ptr %i.u, align 1, !tbaa !29
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 16
  %i.y = or disjoint i32 %i.x, %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 22
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !29
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = or disjoint i32 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 23
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !29
  %i.ag = zext i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ad, %i.ag            ; 2 uses
  %i.ai = icmp ult i32 %i.h, %i.p
  br i1 %i.ai, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.aj = icmp ugt i32 %i.h, %i.ah
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ak = add nuw i32 %i.j, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.am = load i32, ptr %i.al, align 1
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.am)
  br label %.loopexit

bb.e:                                             ; preds = %.preheader, %bb.c
  %.162 = phi i32 [ %.061, %bb.c ], [ %i.j, %.preheader ] ; 2 uses
  %.1 = phi i32 [ %i.ak, %bb.c ], [ %.060, %.preheader ] ; 2 uses
  %i.ao = icmp ult i32 %.1, %.162
  br i1 %i.ao, label %.preheader, label %.loopexit, !llvm.loop !1

.loopexit:                                        ; preds = %bb.e, %bb.d
  %.063 = phi i32 [ %i.an, %bb.d ], [ 0, %bb.e ]  ; 5 uses
  %.not70 = icmp eq i8 %2, 0
  br i1 %.not70, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !835
  %i.aq = icmp ugt i32 %i.h, %i.ah
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = add nuw i32 %i.j, 1                     ; 2 uses
  %i.as = icmp eq i32 %i.ar, %i.e
  br i1 %i.as, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.059 = phi i32 [ %i.ar, %bb.g ], [ %i.j, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 1, ptr %i.at, align 8, !tbaa !74
  %i.au = zext i32 %i.h to i64                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 %i.au, ptr %i.av, align 8, !tbaa !75
  %i.aw = zext i32 %.059 to i64                   ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !76
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !63
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  %.not71 = icmp uge i32 %.063, %i.ba
  %.not7275 = icmp eq i32 %.063, 0
  %.not72 = or i1 %.not7275, %.not71
  br i1 %.not72, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !73 ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, %i.aw
  br i1 %i.bd, label %.lr.ph.i, label %tt_cmap13_next.exit.thread

.lr.ph.i:                                         ; preds = %bb.i
  %i.be = add nuw nsw i64 %i.au, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i
  %.044.i = phi i64 [ %i.aw, %.lr.ph.i ], [ %i.bu, %bb.k ] ; 3 uses
  %.03843.i = phi i64 [ %i.be, %.lr.ph.i ], [ %spec.select.i, %bb.k ]
  %i.bf = mul i64 %.044.i, 12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bf ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i32, ptr %i.bh, align 1
  %i.bj = tail call i32 @llvm.bswap.i32(i32 %i.bi)
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.bn = load i32, ptr %i.bm, align 1
  %i.bo = tail call i32 @llvm.bswap.i32(i32 %i.bn)
  %i.bp = zext i32 %i.bo to i64
  %i.bq = load i32, ptr %i.bl, align 1            ; 2 uses
  %i.br = tail call i32 @llvm.bswap.i32(i32 %i.bq) ; 3 uses
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %.03843.i, i64 %i.bk) ; 4 uses
  %.not.i = icmp samesign ule i64 %spec.select.i, %i.bp
  %.not41.i = icmp ne i32 %i.bq, 0
  %i.bs = icmp ult i32 %i.br, %i.ba
  %i.bt = and i1 %.not41.i, %i.bs
  %or.cond = select i1 %.not.i, i1 %i.bt, i1 false
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = add i64 %.044.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bu, %i.bc
  br i1 %exitcond.not.i, label %tt_cmap13_next.exit.thread, label %bb.j, !llvm.loop !2

tt_cmap13_next.exit.thread:                       ; preds = %bb.k, %bb.i
  store i8 0, ptr %i.at, align 8, !tbaa !74
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  store i64 %spec.select.i, ptr %i.av, align 8, !tbaa !75
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.br, ptr %i.bv, align 8, !tbaa !77
  store i64 %.044.i, ptr %i.ax, align 8, !tbaa !76
  %i.bw = trunc nuw i64 %spec.select.i to i32
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.063, ptr %i.bx, align 8, !tbaa !77
  br label %bb.n

bb.n:                                             ; preds = %tt_cmap13_next.exit.thread, %bb.l, %bb.m
  %i.by = phi i32 [ %i.h, %bb.m ], [ %i.bw, %bb.l ], [ %i.h, %tt_cmap13_next.exit.thread ]
  %.164 = phi i32 [ %.063, %bb.m ], [ %i.br, %bb.l ], [ 0, %tt_cmap13_next.exit.thread ]
  store i32 %i.by, ptr %1, align 4, !tbaa !30
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.loopexit, %bb.n, %bb.a
  %.166 = phi i32 [ 0, %bb.a ], [ %.063, %.loopexit ], [ %.164, %bb.n ], [ 0, %bb.g ]
  ret i32 %.166
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @tt_cmap14_get_def_chars(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !29      ; 2 uses
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw i32 %i.c, 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !29    ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 16
  %i.i = or disjoint i32 %i.h, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !29    ; 2 uses
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = or disjoint i32 %i.i, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q               ; 4 uses
  %.not13.i = icmp eq i32 %i.r, 0                 ; 2 uses
  br i1 %.not13.i, label %tt_cmap14_def_char_count.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 10 uses
  %i.t = zext i8 %i.b to i64
  %i.u = shl nuw nsw i64 %i.t, 24
  %i.v = zext i8 %i.f to i64
  %i.w = shl nuw nsw i64 %i.v, 16
  %i.x = zext i8 %i.k to i64
  %i.y = shl nuw nsw i64 %i.x, 8
  %i.z = zext i8 %i.p to i64                      ; 2 uses
  %i.aa = or disjoint i64 %i.u, %i.w
  %i.ab = or disjoint i64 %i.aa, %i.y
  %i.ac = or disjoint i64 %i.ab, %i.z             ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ac, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %i.ad = and i64 %i.z, 7                         ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = select i1 %i.ae, i64 8, i64 %i.ad
  %n.vec = sub nsw i64 %i.ac, %i.af               ; 3 uses
  %i.ag = trunc i64 %n.vec to i32
  %i.ah = sub i32 %i.r, %i.ag
  %i.ai = shl nsw i64 %n.vec, 2
  %i.aj = getelementptr i8, ptr %i.s, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bm, %vector.body ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bn, %vector.body ]
  %i.ak = shl i64 %index, 2                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ak
  %i.al = getelementptr i8, ptr %i.s, i64 %i.ak
  %next.gep51 = getelementptr i8, ptr %i.al, i64 4
  %i.am = getelementptr i8, ptr %i.s, i64 %i.ak
  %next.gep52 = getelementptr i8, ptr %i.am, i64 8
  %i.an = getelementptr i8, ptr %i.s, i64 %i.ak
  %next.gep53 = getelementptr i8, ptr %i.an, i64 12
  %i.ao = getelementptr i8, ptr %i.s, i64 %i.ak
  %next.gep54 = getelementptr i8, ptr %i.ao, i64 16
  %i.ap = getelementptr i8, ptr %i.s, i64 %i.ak
  %next.gep55 = getelementptr i8, ptr %i.ap, i64 20
  %i.aq = getelementptr i8, ptr %i.s, i64 %i.ak
  %next.gep56 = getelementptr i8, ptr %i.aq, i64 24
  %i.ar = getelementptr i8, ptr %i.s, i64 %i.ak
  %next.gep57 = getelementptr i8, ptr %i.ar, i64 28
  %i.as = load i8, ptr %next.gep, align 1, !tbaa !29
  %i.at = load i8, ptr %next.gep51, align 1, !tbaa !29
  %i.au = load i8, ptr %next.gep52, align 1, !tbaa !29
  %i.av = load i8, ptr %next.gep53, align 1, !tbaa !29
  %i.aw = insertelement <4 x i8> poison, i8 %i.as, i64 0
  %i.ax = insertelement <4 x i8> %i.aw, i8 %i.at, i64 1
  %i.ay = insertelement <4 x i8> %i.ax, i8 %i.au, i64 2
  %i.az = insertelement <4 x i8> %i.ay, i8 %i.av, i64 3
  %i.ba = load i8, ptr %next.gep54, align 1, !tbaa !29
  %i.bb = load i8, ptr %next.gep55, align 1, !tbaa !29
  %i.bc = load i8, ptr %next.gep56, align 1, !tbaa !29
  %i.bd = load i8, ptr %next.gep57, align 1, !tbaa !29
  %i.be = insertelement <4 x i8> poison, i8 %i.ba, i64 0
  %i.bf = insertelement <4 x i8> %i.be, i8 %i.bb, i64 1
  %i.bg = insertelement <4 x i8> %i.bf, i8 %i.bc, i64 2
  %i.bh = insertelement <4 x i8> %i.bg, i8 %i.bd, i64 3
  %i.bi = zext <4 x i8> %i.az to <4 x i32>
  %i.bj = zext <4 x i8> %i.bh to <4 x i32>
  %i.bk = add <4 x i32> %vec.phi, splat (i32 1)
  %i.bl = add <4 x i32> %vec.phi50, splat (i32 1)
  %i.bm = add <4 x i32> %i.bk, %i.bi              ; 2 uses
  %i.bn = add <4 x i32> %i.bl, %i.bj              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !836

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bn, %i.bm
  %i.bp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.016.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.bp, %middle.block ]
  %.01115.i.ph = phi i32 [ %i.r, %.lr.ph.preheader.i ], [ %i.ah, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.s, %.lr.ph.preheader.i ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.016.i = phi i32 [ %i.bt, %.lr.ph.i ], [ %.016.i.ph, %.lr.ph.i.preheader ]
  %.01115.i = phi i32 [ %i.bv, %.lr.ph.i ], [ %.01115.i.ph, %.lr.ph.i.preheader ]
  %.01214.i = phi ptr [ %i.bu, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bq = load i8, ptr %.01214.i, align 1, !tbaa !29
  %i.br = zext i8 %i.bq to i32
  %i.bs = add i32 %.016.i, 1
  %i.bt = add i32 %i.bs, %i.br                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4
  %i.bv = add i32 %.01115.i, -1                   ; 2 uses
  %.not.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i, label %tt_cmap14_def_char_count.exit.loopexit, label %.lr.ph.i, !llvm.loop !837

tt_cmap14_def_char_count.exit.loopexit:           ; preds = %.lr.ph.i
  %i.bw = add i32 %i.bt, 1
  br label %tt_cmap14_def_char_count.exit

tt_cmap14_def_char_count.exit:                    ; preds = %tt_cmap14_def_char_count.exit.loopexit, %bb.a
  %.0.lcssa.i = phi i32 [ 1, %bb.a ], [ %i.bw, %tt_cmap14_def_char_count.exit.loopexit ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !81 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !30
  %i.bz = icmp ugt i32 %.0.lcssa.i, %i.by
  br i1 %i.bz, label %bb.b, label %tt_cmap14_def_char_count.exit._crit_edge

tt_cmap14_def_char_count.exit._crit_edge:         ; preds = %tt_cmap14_def_char_count.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !82
  br label %bb.d

bb.b:                                             ; preds = %tt_cmap14_def_char_count.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %2, ptr %i.ca, align 8, !tbaa !83
  %i.cb = zext i32 %i.by to i64
  %i.cc = zext i32 %.0.lcssa.i to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !82
  %i.cf = call ptr @ft_mem_qrealloc(ptr noundef %2, i64 noundef 4, i64 noundef %i.cb, i64 noundef %i.cc, ptr noundef %i.ce, ptr noundef nonnull %i.a) #27 ; 2 uses
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !82
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !30
  %.not.i32 = icmp eq i32 %i.cg, 0
  br i1 %.not.i32, label %bb.c, label %tt_cmap14_ensure.exit

bb.c:                                             ; preds = %bb.b
  store i32 %.0.lcssa.i, ptr %i.bx, align 8, !tbaa !81
  br label %bb.d

tt_cmap14_ensure.exit:                            ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.e

bb.d:                                             ; preds = %tt_cmap14_def_char_count.exit._crit_edge, %bb.c
  %i.ch = phi ptr [ %.pre, %tt_cmap14_def_char_count.exit._crit_edge ], [ %i.cf, %bb.c ] ; 3 uses
end_hunk_2
