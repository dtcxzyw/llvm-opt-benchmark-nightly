Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaResub?download=true
inline.NumInlined: 1135
inline.NumDeleted: 151
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 60
begin_hunk_0_@Gia_ManFindOneUnateInt:bb.a

bb.q:                                             ; preds = %bb.o
  %i.av = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i25

bb.r:                                             ; preds = %bb.n
  %i.aw = icmp samesign ult i32 %i.ap, 1073741823
  %i.ax = shl nuw nsw i32 %i.ap, 1
  %spec.select.i22 = select i1 %i.aw, i32 %i.ax, i32 2147483647 ; 4 uses
  %.not.i9.i23 = icmp samesign ult i32 %i.ap, %spec.select.i22
  %.pre48 = load ptr, ptr %i.h, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i9.i23, label %bb.s, label %Vec_IntPush.exit29

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i24 = icmp eq ptr %.pre48, null
  %i.ay = zext nneg i32 %spec.select.i22 to i64
  %i.az = shl nuw nsw i64 %i.ay, 2                ; 2 uses
  br i1 %.not9.i10.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = tail call ptr @realloc(ptr noundef nonnull %.pre48, i64 noundef %i.az) #32
  br label %Vec_IntGrow.exit11.sink.split.i25

bb.u:                                             ; preds = %bb.s
  %i.bb = tail call noalias ptr @malloc(i64 noundef %i.az) #33
  br label %Vec_IntGrow.exit11.sink.split.i25

Vec_IntGrow.exit11.sink.split.i25:                ; preds = %bb.t, %bb.u, %bb.p, %bb.q
  %i.bc = phi ptr [ %i.av, %bb.q ], [ %i.au, %bb.p ], [ %i.ba, %bb.t ], [ %i.bb, %bb.u ] ; 2 uses
  %spec.select.sink.i26 = phi i32 [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i22, %bb.t ], [ %spec.select.i22, %bb.u ]
  store ptr %i.bc, ptr %i.h, align 8, !tbaa !49
  store i32 %spec.select.sink.i26, ptr %4, align 8, !tbaa !48
  %.pre49 = load i32, ptr %i.a, align 4, !tbaa !47
  br label %Vec_IntPush.exit29

Vec_IntPush.exit29:                               ; preds = %.Vec_IntPush.exit29_crit_edge, %bb.r, %Vec_IntGrow.exit11.sink.split.i25
  %i.bd = phi i32 [ %i.ap, %.Vec_IntPush.exit29_crit_edge ], [ %i.ap, %bb.r ], [ %.pre49, %Vec_IntGrow.exit11.sink.split.i25 ] ; 2 uses
  %i.be = phi ptr [ %.pre47, %.Vec_IntPush.exit29_crit_edge ], [ %.pre48, %bb.r ], [ %i.bc, %Vec_IntGrow.exit11.sink.split.i25 ]
  %i.bf = add nsw i32 %i.bd, 1
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !47
  %i.bg = sext i32 %i.bd to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bg
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.bi = shl i32 %indvars.iv.tr, 1
  %i.bj = or disjoint i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !50
  br label %bb.ad

Abc_TtIntersectOne.exit21:                        ; preds = %.lr.ph.i
  %i.bk = load i32, ptr %i.b, align 4, !tbaa !47  ; 7 uses
  %i.bl = load i32, ptr %5, align 8, !tbaa !48
  %i.bm = icmp eq i32 %i.bk, %i.bl
  br i1 %i.bm, label %bb.v, label %Abc_TtIntersectOne.exit21.Vec_IntPush.exit37_crit_edge

Abc_TtIntersectOne.exit21.Vec_IntPush.exit37_crit_edge: ; preds = %Abc_TtIntersectOne.exit21
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !49
  br label %Vec_IntPush.exit37

bb.v:                                             ; preds = %Abc_TtIntersectOne.exit21
  %i.bn = icmp slt i32 %i.bk, 16
  br i1 %i.bn, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !49  ; 2 uses
  %.not9.i.i35 = icmp eq ptr %i.bo, null
  br i1 %.not9.i.i35, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bo, i64 noundef 64) #32
  br label %Vec_IntGrow.exit11.sink.split.i33

bb.y:                                             ; preds = %bb.w
  %i.bq = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i33

bb.z:                                             ; preds = %bb.v
  %i.br = icmp samesign ult i32 %i.bk, 1073741823
  %i.bs = shl nuw nsw i32 %i.bk, 1
  %spec.select.i30 = select i1 %i.br, i32 %i.bs, i32 2147483647 ; 4 uses
  %.not.i9.i31 = icmp samesign ult i32 %i.bk, %spec.select.i30
  %.pre45 = load ptr, ptr %i.g, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i9.i31, label %bb.aa, label %Vec_IntPush.exit37

bb.aa:                                            ; preds = %bb.z
  %.not9.i10.i32 = icmp eq ptr %.pre45, null
  %i.bt = zext nneg i32 %spec.select.i30 to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2                ; 2 uses
  br i1 %.not9.i10.i32, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = tail call ptr @realloc(ptr noundef nonnull %.pre45, i64 noundef %i.bu) #32
  br label %Vec_IntGrow.exit11.sink.split.i33

bb.ac:                                            ; preds = %bb.aa
  %i.bw = tail call noalias ptr @malloc(i64 noundef %i.bu) #33
  br label %Vec_IntGrow.exit11.sink.split.i33

Vec_IntGrow.exit11.sink.split.i33:                ; preds = %bb.ab, %bb.ac, %bb.x, %bb.y
  %i.bx = phi ptr [ %i.bq, %bb.y ], [ %i.bp, %bb.x ], [ %i.bv, %bb.ab ], [ %i.bw, %bb.ac ] ; 2 uses
  %spec.select.sink.i34 = phi i32 [ 16, %bb.y ], [ 16, %bb.x ], [ %spec.select.i30, %bb.ab ], [ %spec.select.i30, %bb.ac ]
  store ptr %i.bx, ptr %i.g, align 8, !tbaa !49
  store i32 %spec.select.sink.i34, ptr %5, align 8, !tbaa !48
  %.pre46 = load i32, ptr %i.b, align 4, !tbaa !47
  br label %Vec_IntPush.exit37

Vec_IntPush.exit37:                               ; preds = %Abc_TtIntersectOne.exit21.Vec_IntPush.exit37_crit_edge, %bb.z, %Vec_IntGrow.exit11.sink.split.i33
  %i.by = phi i32 [ %i.bk, %Abc_TtIntersectOne.exit21.Vec_IntPush.exit37_crit_edge ], [ %i.bk, %bb.z ], [ %.pre46, %Vec_IntGrow.exit11.sink.split.i33 ] ; 2 uses
  %i.bz = phi ptr [ %.pre, %Abc_TtIntersectOne.exit21.Vec_IntPush.exit37_crit_edge ], [ %.pre45, %bb.z ], [ %i.bx, %Vec_IntGrow.exit11.sink.split.i33 ]
  %i.ca = add nsw i32 %i.by, 1
  store i32 %i.ca, ptr %i.b, align 4, !tbaa !47
  %i.cb = sext i32 %i.by to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !50
  br label %bb.ad

bb.ad:                                            ; preds = %Vec_IntPush.exit, %Vec_IntPush.exit37, %Vec_IntPush.exit29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val19 = load i32, ptr %i.c, align 4, !tbaa !77
  %i.ce = sext i32 %.val19 to i64
  %i.cf = icmp slt i64 %indvars.iv.next, %i.ce
  br i1 %i.cf, label %bb.b, label %.critedge, !llvm.loop !183

.critedge:                                        ; preds = %bb.ad, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Gia_ManFindOneUnate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %3, align 8, !tbaa !71
  %i.d = load ptr, ptr %4, align 8, !tbaa !71
  tail call void @Gia_ManFindOneUnateInt(ptr noundef %i.a, ptr poison, ptr noundef %1, i32 noundef %2, ptr noundef %i.c, ptr noundef %i.d)
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  tail call void @Gia_ManFindOneUnateInt(ptr noundef %i.e, ptr poison, ptr noundef %1, i32 noundef %2, ptr noundef %i.g, ptr noundef %i.i)
  br label %.split25.us

.split:                                           ; preds = %bb.a
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19) ; 0 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %3, align 8, !tbaa !71
  %i.n = load ptr, ptr %4, align 8, !tbaa !71
  tail call void @Gia_ManFindOneUnateInt(ptr noundef %i.k, ptr poison, ptr noundef %1, i32 noundef %2, ptr noundef %i.m, ptr noundef %i.n)
  %i.o = load ptr, ptr %3, align 8, !tbaa !71
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %.val = load i32, ptr %i.p, align 4, !tbaa !47
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 0, i32 noundef %.val) ; 0 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !71
  tail call void @Gia_ManFindOneUnateInt(ptr noundef %i.r, ptr poison, ptr noundef %1, i32 noundef %2, ptr noundef %i.t, ptr noundef %i.v)
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !71
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val.1 = load i32, ptr %i.x, align 4, !tbaa !47
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 1, i32 noundef %.val.1) ; 0 uses
  br label %.split25.us

.split25.us:                                      ; preds = %.split, %.split.us.preheader
  %i.z = load ptr, ptr %3, align 8, !tbaa !71     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !71 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49 ; 7 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !49 ; 7 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !47 ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %.idx.i = shl nsw i64 %i.ak, 2                  ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !47 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %.idx76.i = shl nsw i64 %i.ao, 2                ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ag, i64 %.idx76.i ; 3 uses
  %i.aq = icmp sgt i32 %i.aj, 0
  %i.ar = icmp sgt i32 %i.an, 0
  %i.as = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %i.as, label %.lr.ph.i, label %.preheader55.i

.preheader55.i:                                   ; preds = %bb.g, %.split25.us
  %.048.lcssa.i = phi ptr [ %i.ad, %.split25.us ], [ %.149.i, %bb.g ] ; 5 uses
  %.045.lcssa.i = phi ptr [ %i.ag, %.split25.us ], [ %.146.i, %bb.g ] ; 5 uses
  %.042.lcssa.i = phi ptr [ %i.ad, %.split25.us ], [ %.143.i, %bb.g ] ; 5 uses
  %.040.lcssa.i = phi ptr [ %i.ag, %.split25.us ], [ %.141.i, %bb.g ] ; 5 uses
  %.045.lcssa.i52 = ptrtoaddr ptr %.045.lcssa.i to i64 ; 2 uses
  %.040.lcssa.i53 = ptrtoaddr ptr %.040.lcssa.i to i64
  %i.at = icmp ult ptr %.048.lcssa.i, %i.al
  br i1 %i.at, label %.lr.ph70.i.preheader, label %.preheader.i

.lr.ph70.i.preheader:                             ; preds = %.preheader55.i
  %.042.lcssa.i44 = ptrtoaddr ptr %.042.lcssa.i to i64
  %.048.lcssa.i43 = ptrtoaddr ptr %.048.lcssa.i to i64 ; 2 uses
  %i.au = add i64 %.idx.i, %i.ae
  %i.av = xor i64 %.048.lcssa.i43, -1
  %i.aw = add i64 %i.au, %i.av                    ; 2 uses
  %i.ax = lshr i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aw, 44
  %i.az = sub i64 %.048.lcssa.i43, %.042.lcssa.i44
  %diff.check = icmp ugt i64 %i.az, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph70.i.preheader73, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph70.i.preheader
  %n.vec = and i64 %i.ay, 9223372036854775800     ; 3 uses
  %i.ba = shl i64 %n.vec, 2                       ; 2 uses
  %i.bb = getelementptr i8, ptr %.042.lcssa.i, i64 %i.ba ; 2 uses
  %i.bc = getelementptr i8, ptr %.048.lcssa.i, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.042.lcssa.i, i64 %i.bd ; 2 uses
  %next.gep45 = getelementptr i8, ptr %.048.lcssa.i, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep45, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep45, align 4, !tbaa !50
  %wide.load46 = load <4 x i32>, ptr %i.be, align 4, !tbaa !50
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !50
  store <4 x i32> %wide.load46, ptr %i.bf, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph70.i.preheader73

.lr.ph70.i.preheader73:                           ; preds = %.lr.ph70.i.preheader, %middle.block
  %.24469.i.ph = phi ptr [ %.042.lcssa.i, %.lr.ph70.i.preheader ], [ %i.bb, %middle.block ]
  %.25068.i.ph = phi ptr [ %.048.lcssa.i, %.lr.ph70.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph70.i

.lr.ph.i:                                         ; preds = %.split25.us, %bb.g
  %.04063.i = phi ptr [ %.141.i, %bb.g ], [ %i.ag, %.split25.us ] ; 4 uses
  %.04262.i = phi ptr [ %.143.i, %bb.g ], [ %i.ad, %.split25.us ] ; 4 uses
  %.04561.i = phi ptr [ %.146.i, %bb.g ], [ %i.ag, %.split25.us ] ; 4 uses
  %.04860.i = phi ptr [ %.149.i, %bb.g ], [ %i.ad, %.split25.us ] ; 4 uses
  %i.bh = load i32, ptr %.04860.i, align 4, !tbaa !50 ; 5 uses
  %i.bi = load i32, ptr %.04561.i, align 4, !tbaa !50 ; 4 uses
  %.unshifted.i = xor i32 %i.bi, %i.bh
  %i.bj = icmp ult i32 %.unshifted.i, 2
  br i1 %i.bj, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i32 %i.bh, %i.bi
  br i1 %.not.i, label %bb.c, label %Gia_ManFindFirstCommonLit.exit

bb.c:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %.04860.i, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.04561.i, i64 4
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.bm = icmp slt i32 %i.bh, %i.bi
  br i1 %i.bm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %.04860.i, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.04262.i, i64 4
  store i32 %i.bh, ptr %.04262.i, align 4, !tbaa !50
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %.04561.i, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %.04063.i, i64 4
  store i32 %i.bi, ptr %.04063.i, align 4, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.149.i = phi ptr [ %i.bk, %bb.c ], [ %i.bn, %bb.e ], [ %.04860.i, %bb.f ] ; 3 uses
  %.146.i = phi ptr [ %i.bl, %bb.c ], [ %.04561.i, %bb.e ], [ %i.bp, %bb.f ] ; 3 uses
  %.143.i = phi ptr [ %.04262.i, %bb.c ], [ %i.bo, %bb.e ], [ %.04262.i, %bb.f ] ; 2 uses
  %.141.i = phi ptr [ %.04063.i, %bb.c ], [ %.04063.i, %bb.e ], [ %i.bq, %bb.f ] ; 2 uses
  %i.br = icmp ult ptr %.149.i, %i.al
  %i.bs = icmp ult ptr %.146.i, %i.ap
  %i.bt = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %i.bt, label %.lr.ph.i, label %.preheader55.i, !llvm.loop !7

.preheader.i:                                     ; preds = %.lr.ph70.i, %middle.block, %.preheader55.i
  %.244.lcssa.i = phi ptr [ %.042.lcssa.i, %.preheader55.i ], [ %i.bb, %middle.block ], [ %i.ck, %.lr.ph70.i ]
  %i.bu = icmp ult ptr %.045.lcssa.i, %i.ap
  br i1 %i.bu, label %.lr.ph74.i.preheader, label %._crit_edge.i

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %i.bv = add i64 %.idx76.i, %i.ah
  %i.bw = xor i64 %.045.lcssa.i52, -1
  %i.bx = add i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check55 = icmp ult i64 %i.bx, 44
  %i.ca = sub i64 %.045.lcssa.i52, %.040.lcssa.i53
  %diff.check57 = icmp ugt i64 %i.ca, -32
  %or.cond71 = select i1 %min.iters.check55, i1 true, i1 %diff.check57
  br i1 %or.cond71, label %.lr.ph74.i.preheader72, label %vector.ph58

vector.ph58:                                      ; preds = %.lr.ph74.i.preheader
  %n.vec59 = and i64 %i.bz, 9223372036854775800   ; 3 uses
  %i.cb = shl i64 %n.vec59, 2                     ; 2 uses
  %i.cc = getelementptr i8, ptr %.040.lcssa.i, i64 %i.cb ; 2 uses
  %i.cd = getelementptr i8, ptr %.045.lcssa.i, i64 %i.cb
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph58
  %index61 = phi i64 [ 0, %vector.ph58 ], [ %index.next66, %vector.body60 ] ; 2 uses
  %i.ce = shl i64 %index61, 2                     ; 2 uses
  %next.gep62 = getelementptr i8, ptr %.040.lcssa.i, i64 %i.ce ; 2 uses
  %next.gep63 = getelementptr i8, ptr %.045.lcssa.i, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep63, i64 16
  %wide.load64 = load <4 x i32>, ptr %next.gep63, align 4, !tbaa !50
  %wide.load65 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !50
  %i.cg = getelementptr i8, ptr %next.gep62, i64 16
  store <4 x i32> %wide.load64, ptr %next.gep62, align 4, !tbaa !50
  store <4 x i32> %wide.load65, ptr %i.cg, align 4, !tbaa !50
  %index.next66 = add nuw i64 %index61, 8         ; 2 uses
  %i.ch = icmp eq i64 %index.next66, %n.vec59
  br i1 %i.ch, label %middle.block67, label %vector.body60, !llvm.loop !185

middle.block67:                                   ; preds = %vector.body60
  %cmp.n68 = icmp eq i64 %i.bz, %n.vec59
  br i1 %cmp.n68, label %._crit_edge.i, label %.lr.ph74.i.preheader72

.lr.ph74.i.preheader72:                           ; preds = %.lr.ph74.i.preheader, %middle.block67
  %.273.i.ph = phi ptr [ %.040.lcssa.i, %.lr.ph74.i.preheader ], [ %i.cc, %middle.block67 ]
  %.24772.i.ph = phi ptr [ %.045.lcssa.i, %.lr.ph74.i.preheader ], [ %i.cd, %middle.block67 ]
  br label %.lr.ph74.i

.lr.ph70.i:                                       ; preds = %.lr.ph70.i.preheader73, %.lr.ph70.i
  %.24469.i = phi ptr [ %i.ck, %.lr.ph70.i ], [ %.24469.i.ph, %.lr.ph70.i.preheader73 ] ; 2 uses
  %.25068.i = phi ptr [ %i.ci, %.lr.ph70.i ], [ %.25068.i.ph, %.lr.ph70.i.preheader73 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.25068.i, i64 4 ; 2 uses
  %i.cj = load i32, ptr %.25068.i, align 4, !tbaa !50
  %i.ck = getelementptr inbounds nuw i8, ptr %.24469.i, i64 4 ; 2 uses
  store i32 %i.cj, ptr %.24469.i, align 4, !tbaa !50
  %i.cl = icmp ult ptr %i.ci, %i.al
  br i1 %i.cl, label %.lr.ph70.i, label %.preheader.i, !llvm.loop !186

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader72, %.lr.ph74.i
  %.273.i = phi ptr [ %i.co, %.lr.ph74.i ], [ %.273.i.ph, %.lr.ph74.i.preheader72 ] ; 2 uses
  %.24772.i = phi ptr [ %i.cm, %.lr.ph74.i ], [ %.24772.i.ph, %.lr.ph74.i.preheader72 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.24772.i, i64 4 ; 2 uses
  %i.cn = load i32, ptr %.24772.i, align 4, !tbaa !50
  %i.co = getelementptr inbounds nuw i8, ptr %.273.i, i64 4 ; 2 uses
  store i32 %i.cn, ptr %.273.i, align 4, !tbaa !50
  %i.cp = icmp ult ptr %i.cm, %i.ap
  br i1 %i.cp, label %.lr.ph74.i, label %._crit_edge.i, !llvm.loop !187

._crit_edge.i:                                    ; preds = %.lr.ph74.i, %middle.block67, %.preheader.i
  %.2.lcssa.i = phi ptr [ %.040.lcssa.i, %.preheader.i ], [ %i.cc, %middle.block67 ], [ %i.co, %.lr.ph74.i ]
  %i.cq = ptrtoint ptr %.244.lcssa.i to i64
  %i.cr = ptrtoint ptr %i.ad to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = lshr exact i64 %i.cs, 2
  %i.cu = trunc i64 %i.ct to i32
  store i32 %i.cu, ptr %i.ai, align 4, !tbaa !47
  %i.cv = ptrtoint ptr %.2.lcssa.i to i64
  %i.cw = ptrtoint ptr %i.ag to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = lshr exact i64 %i.cx, 2
  %i.cz = trunc i64 %i.cy to i32
  store i32 %i.cz, ptr %i.am, align 4, !tbaa !47
  br label %Gia_ManFindFirstCommonLit.exit

Gia_ManFindFirstCommonLit.exit:                   ; preds = %bb.b, %._crit_edge.i
  %.051.i = phi i32 [ -1, %._crit_edge.i ], [ %i.bh, %bb.b ]
  ret i32 %.051.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2147483647, -2147483648) i32 @Gia_ManFindTwoUnateInt(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp sgt i32 %3, 0                       ; 5 uses
  br i1 %i.a, label %.lr.ph.preheader.i, label %Abc_TtCountOnesVec.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %Abc_TtCountOnes2.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %Abc_TtCountOnes2.exit.i ] ; 2 uses
  %.08.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.g, %Abc_TtCountOnes2.exit.i ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.c = load i64, ptr %i.b, align 8, !tbaa !93   ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %Abc_TtCountOnes2.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %i.c)
  %i.e = trunc nuw nsw i64 %i.d to i32
  br label %Abc_TtCountOnes2.exit.i

Abc_TtCountOnes2.exit.i:                          ; preds = %bb.b, %.lr.ph.i
  %i.f = phi i32 [ %i.e, %bb.b ], [ 0, %.lr.ph.i ]
  %i.g = add nuw nsw i32 %i.f, %.08.i             ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtCountOnesVec.exit, label %.lr.ph.i, !llvm.loop !8

Abc_TtCountOnesVec.exit:                          ; preds = %Abc_TtCountOnes2.exit.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.g, %Abc_TtCountOnes2.exit.i ] ; 3 uses
  store i32 0, ptr %6, align 4, !tbaa !50
  %i.h = getelementptr i8, ptr %4, i64 4          ; 2 uses
  %.val4886 = load i32, ptr %i.h, align 4, !tbaa !47 ; 2 uses
  %i.i = icmp sgt i32 %.val4886, 0
  br i1 %i.i, label %.critedge.lr.ph, label %.loopexit73

.critedge.lr.ph:                                  ; preds = %Abc_TtCountOnesVec.exit
  %i.j = getelementptr i8, ptr %4, i64 8
  %.val52 = load ptr, ptr %i.j, align 8, !tbaa !49 ; 3 uses
  %i.k = getelementptr i8, ptr %5, i64 8
  %.val51 = load ptr, ptr %i.k, align 8, !tbaa !49 ; 3 uses
  %i.l = getelementptr i8, ptr %2, i64 8
  %wide.trip.count.i.i = zext nneg i32 %3 to i64  ; 4 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %Gia_ManDivCover.exit
  %.val48116 = phi i32 [ %.val4886, %.critedge.lr.ph ], [ %.val48114, %Gia_ManDivCover.exit ] ; 2 uses
  %i.m = phi i32 [ 0, %.critedge.lr.ph ], [ %i.cm, %Gia_ManDivCover.exit ] ; 2 uses
  %indvars.iv109 = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next110, %Gia_ManDivCover.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.critedge.lr.ph ], [ %indvars.iv.next, %Gia_ManDivCover.exit ] ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val52, i64 %indvars.iv109
  %i.o = load i32, ptr %i.n, align 4, !tbaa !50   ; 4 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %indvars.iv109
  %i.q = load i32, ptr %i.p, align 4, !tbaa !50   ; 3 uses
  %i.r = shl nsw i32 %i.q, 1
  %i.s = icmp slt i32 %i.r, %.0.lcssa.i
  br i1 %i.s, label %.loopexit73, label %bb.c

bb.c:                                             ; preds = %.critedge
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 3 uses
  %i.t = sext i32 %.val48116 to i64
  %i.u = icmp slt i64 %indvars.iv.next110, %i.t
  br i1 %i.u, label %.critedge2.lr.ph, label %.loopexit73

.critedge2.lr.ph:                                 ; preds = %bb.c
  %.val54 = load ptr, ptr %i.l, align 8, !tbaa !79 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !50
  %i.x = add nsw i32 %i.w, %i.q
  %i.y = icmp slt i32 %i.x, %.0.lcssa.i
  br i1 %i.y, label %Gia_ManDivCover.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge2.lr.ph
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val52, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !50  ; 2 uses
  %i.ab = tail call noundef i32 @llvm.smax.i32(i32 %i.o, i32 %i.aa)
  %i.ac = tail call noundef i32 @llvm.smin.i32(i32 %i.o, i32 %i.aa)
  br label %bb.d

.critedge2:                                       ; preds = %.loopexit
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val52, i64 %indvars.iv.next107
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !50 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %indvars.iv.next107
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !50
  %i.ah = tail call noundef i32 @llvm.smin.i32(i32 %i.o, i32 %i.ae)
  %i.ai = tail call noundef i32 @llvm.smax.i32(i32 %i.o, i32 %i.ae)
  %i.aj = add nsw i32 %i.ag, %i.q
  %i.ak = icmp slt i32 %i.aj, %.0.lcssa.i
  br i1 %i.ak, label %Gia_ManDivCover.exit, label %bb.d, !llvm.loop !188

bb.d:                                             ; preds = %.lr.ph, %.critedge2
  %i.al = phi i32 [ %i.ab, %.lr.ph ], [ %i.ai, %.critedge2 ] ; 3 uses
  %i.am = phi i32 [ %i.ac, %.lr.ph ], [ %i.ah, %.critedge2 ] ; 3 uses
  %indvars.iv106158 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next107, %.critedge2 ]
  %i.an = phi i32 [ %i.m, %.lr.ph ], [ %i.aq, %.critedge2 ]
  %.pn163.in = ashr i32 %i.am, 1
  %.pn163 = sext i32 %.pn163.in to i64
  %.in162 = getelementptr inbounds [8 x i8], ptr %.val54, i64 %.pn163
  %i.ao = load ptr, ptr %.in162, align 8, !tbaa !92 ; 4 uses
  %.pn.in = ashr i32 %i.al, 1
  %.pn = sext i32 %.pn.in to i64
  %.in = getelementptr inbounds [8 x i8], ptr %.val54, i64 %.pn
  %i.ap = load ptr, ptr %.in, align 8, !tbaa !92  ; 4 uses
  %i.aq = add nsw i32 %i.an, 1                    ; 4 uses
  store i32 %i.aq, ptr %6, align 4, !tbaa !50
  %i.ar = and i32 %i.al, 1                        ; 2 uses
  %i.as = and i32 %i.am, 1                        ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  %i.au = or i32 %i.as, %i.ar
  %or.cond.i.i = icmp eq i32 %i.au, 0
  br i1 %or.cond.i.i, label %.preheader.i.i, label %bb.f

.preheader.i.i:                                   ; preds = %bb.d
  br i1 %i.a, label %.lr.ph108.i.i, label %Gia_ManDivCover.exit.thread63

bb.e:                                             ; preds = %.lr.ph108.i.i
  %indvars.iv.next130.i.i = add nuw nsw i64 %indvars.iv129.i.i, 1 ; 2 uses
  %exitcond133.not.i.i = icmp eq i64 %indvars.iv.next130.i.i, %wide.trip.count.i.i
  br i1 %exitcond133.not.i.i, label %Gia_ManDivCover.exit.thread63, label %.lr.ph108.i.i, !llvm.loop !9

.lr.ph108.i.i:                                    ; preds = %.preheader.i.i, %bb.e
  %indvars.iv129.i.i = phi i64 [ %indvars.iv.next130.i.i, %bb.e ], [ 0, %.preheader.i.i ] ; 4 uses
end_hunk_0
begin_hunk_1_@Gia_ManFindXorInt:bb.a
  %i.an = zext nneg i32 %spec.select.i to i64
  %i.ao = shl nuw nsw i64 %i.an, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call ptr @realloc(ptr noundef nonnull %.pre66, i64 noundef %i.ao) #32
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ao) #33
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %bb.k, %bb.f, %bb.g
  %i.ar = phi ptr [ %i.ak, %bb.g ], [ %i.aj, %bb.f ], [ %i.ap, %bb.j ], [ %i.aq, %bb.k ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ]
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !49
  store i32 %spec.select.sink.i, ptr %5, align 8, !tbaa !48
  %.pre67 = load i32, ptr %i.f, align 4, !tbaa !47
  br label %Abc_TtIntersectXor.exit41.sink.split

bb.l:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count59.i
  br i1 %exitcond.not.i, label %bb.m, label %.lr.ph.i, !llvm.loop !191

.lr.ph.i:                                         ; preds = %.lr.ph49.i, %bb.l
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 0, %.lr.ph49.i ] ; 4 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.at = load i64, ptr %i.as, align 8, !tbaa !93
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.av = load i64, ptr %i.au, align 8, !tbaa !93
  %i.aw = xor i64 %i.at, %i.av
  %i.ax = xor i64 %i.aw, -1
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !93
  %i.ba = and i64 %i.az, %i.ax
  %.not41.i = icmp eq i64 %i.ba, 0
  br i1 %.not41.i, label %bb.l, label %Abc_TtIntersectXor.exit41

bb.m:                                             ; preds = %bb.l
  %i.bb = shl i32 %i.l, 17
  %i.bc = shl i32 %i.m, 2
  %i.bd = or i32 %i.bc, %i.bb
  %i.be = or disjoint i32 %i.bd, 1                ; 3 uses
  %i.bf = load i32, ptr %i.f, align 4, !tbaa !47  ; 7 uses
  %i.bg = load i32, ptr %5, align 8, !tbaa !48
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.n, label %.Vec_IntPush.exit49_crit_edge

.Vec_IntPush.exit49_crit_edge:                    ; preds = %bb.m
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !49
  br label %Abc_TtIntersectXor.exit41.sink.split

bb.n:                                             ; preds = %bb.m
  %i.bi = icmp slt i32 %i.bf, 16
  br i1 %i.bi, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !49  ; 2 uses
  %.not9.i.i47 = icmp eq ptr %i.bj, null
  br i1 %.not9.i.i47, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bj, i64 noundef 64) #32
  br label %Vec_IntGrow.exit11.sink.split.i45

bb.q:                                             ; preds = %bb.o
  %i.bl = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i45

bb.r:                                             ; preds = %bb.n
  %i.bm = icmp samesign ult i32 %i.bf, 1073741823
  %i.bn = shl nuw nsw i32 %i.bf, 1
  %spec.select.i42 = select i1 %i.bm, i32 %i.bn, i32 2147483647 ; 4 uses
  %.not.i9.i43 = icmp samesign ult i32 %i.bf, %spec.select.i42
  %.pre63 = load ptr, ptr %i.g, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i9.i43, label %bb.s, label %Abc_TtIntersectXor.exit41.sink.split

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i44 = icmp eq ptr %.pre63, null
  %i.bo = zext nneg i32 %spec.select.i42 to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2                ; 2 uses
  br i1 %.not9.i10.i44, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = tail call ptr @realloc(ptr noundef nonnull %.pre63, i64 noundef %i.bp) #32
  br label %Vec_IntGrow.exit11.sink.split.i45

bb.u:                                             ; preds = %bb.s
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bp) #33
  br label %Vec_IntGrow.exit11.sink.split.i45

Vec_IntGrow.exit11.sink.split.i45:                ; preds = %bb.t, %bb.u, %bb.p, %bb.q
  %i.bs = phi ptr [ %i.bl, %bb.q ], [ %i.bk, %bb.p ], [ %i.bq, %bb.t ], [ %i.br, %bb.u ] ; 2 uses
  %spec.select.sink.i46 = phi i32 [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i42, %bb.t ], [ %spec.select.i42, %bb.u ]
  store ptr %i.bs, ptr %i.g, align 8, !tbaa !49
  store i32 %spec.select.sink.i46, ptr %5, align 8, !tbaa !48
  %.pre64 = load i32, ptr %i.f, align 4, !tbaa !47
  br label %Abc_TtIntersectXor.exit41.sink.split

Abc_TtIntersectXor.exit41.sink.split:             ; preds = %Vec_IntGrow.exit11.sink.split.i45, %bb.r, %.Vec_IntPush.exit49_crit_edge, %Vec_IntGrow.exit11.sink.split.i, %bb.h, %.loopexit.Vec_IntPush.exit_crit_edge
  %.sink77 = phi i32 [ %.pre67, %Vec_IntGrow.exit11.sink.split.i ], [ %i.ae, %.loopexit.Vec_IntPush.exit_crit_edge ], [ %i.ae, %bb.h ], [ %i.bf, %.Vec_IntPush.exit49_crit_edge ], [ %i.bf, %bb.r ], [ %.pre64, %Vec_IntGrow.exit11.sink.split.i45 ] ; 2 uses
  %.sink73 = phi ptr [ %i.ar, %Vec_IntGrow.exit11.sink.split.i ], [ %.pre65, %.loopexit.Vec_IntPush.exit_crit_edge ], [ %.pre66, %bb.h ], [ %.pre, %.Vec_IntPush.exit49_crit_edge ], [ %.pre63, %bb.r ], [ %i.bs, %Vec_IntGrow.exit11.sink.split.i45 ]
  %.sink = phi i32 [ %i.ad, %Vec_IntGrow.exit11.sink.split.i ], [ %i.ad, %.loopexit.Vec_IntPush.exit_crit_edge ], [ %i.ad, %bb.h ], [ %i.be, %.Vec_IntPush.exit49_crit_edge ], [ %i.be, %bb.r ], [ %i.be, %Vec_IntGrow.exit11.sink.split.i45 ]
  %i.bt = add nsw i32 %.sink77, 1
  store i32 %i.bt, ptr %i.f, align 4, !tbaa !47
  %i.bu = sext i32 %.sink77 to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %.sink73, i64 %i.bu
  store i32 %.sink, ptr %i.bv, align 4, !tbaa !50
  br label %Abc_TtIntersectXor.exit41

Abc_TtIntersectXor.exit41:                        ; preds = %.lr.ph.i, %Abc_TtIntersectXor.exit41.sink.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv58
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph, !llvm.loop !192

.critedge2:                                       ; preds = %Abc_TtIntersectXor.exit41, %bb.b
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %.critedge, label %bb.b, !llvm.loop !193

.critedge:                                        ; preds = %.critedge2, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Gia_ManFindXor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !71     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !47
  %i.c = load ptr, ptr %0, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @Gia_ManFindXorInt(ptr noundef %i.c, ptr poison, ptr noundef %3, ptr noundef %1, i32 noundef %2, ptr noundef %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !47
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !81
  tail call void @Gia_ManFindXorInt(ptr noundef %i.h, ptr poison, ptr noundef %3, ptr noundef %1, i32 noundef %2, ptr noundef %i.f)
  br label %.split26.us

.split:                                           ; preds = %bb.a
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19) ; 0 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !71     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !47
  %i.l = load ptr, ptr %0, align 8, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @Gia_ManFindXorInt(ptr noundef %i.l, ptr poison, ptr noundef %3, ptr noundef %1, i32 noundef %2, ptr noundef %i.j)
  %i.n = load ptr, ptr %4, align 8, !tbaa !71
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %.val = load i32, ptr %i.o, align 4, !tbaa !47
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef 0, i32 noundef %.val) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !71   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !47
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !81
  tail call void @Gia_ManFindXorInt(ptr noundef %i.t, ptr poison, ptr noundef %3, ptr noundef %1, i32 noundef %2, ptr noundef %i.r)
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !71
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.val.1 = load i32, ptr %i.v, align 4, !tbaa !47
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef 1, i32 noundef %.val.1) ; 0 uses
  br label %.split26.us

.split26.us:                                      ; preds = %.split, %.split.us.preheader
  %i.x = load ptr, ptr %4, align 8, !tbaa !71     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !71   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !49 ; 7 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !49 ; 7 uses
  %i.af = ptrtoaddr ptr %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !47 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %.idx.i = shl nsw i64 %i.ai, 2                  ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 %.idx.i ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !47 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %.idx76.i = shl nsw i64 %i.am, 2                ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.ae, i64 %.idx76.i ; 3 uses
  %i.ao = icmp sgt i32 %i.ah, 0
  %i.ap = icmp sgt i32 %i.al, 0
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %i.aq, label %.lr.ph.i, label %.preheader55.i

.preheader55.i:                                   ; preds = %bb.g, %.split26.us
  %.048.lcssa.i = phi ptr [ %i.ab, %.split26.us ], [ %.149.i, %bb.g ] ; 5 uses
  %.045.lcssa.i = phi ptr [ %i.ae, %.split26.us ], [ %.146.i, %bb.g ] ; 5 uses
  %.042.lcssa.i = phi ptr [ %i.ab, %.split26.us ], [ %.143.i, %bb.g ] ; 5 uses
  %.040.lcssa.i = phi ptr [ %i.ae, %.split26.us ], [ %.141.i, %bb.g ] ; 5 uses
  %.045.lcssa.i53 = ptrtoaddr ptr %.045.lcssa.i to i64 ; 2 uses
  %.040.lcssa.i54 = ptrtoaddr ptr %.040.lcssa.i to i64
  %i.ar = icmp ult ptr %.048.lcssa.i, %i.aj
  br i1 %i.ar, label %.lr.ph70.i.preheader, label %.preheader.i

.lr.ph70.i.preheader:                             ; preds = %.preheader55.i
  %.042.lcssa.i45 = ptrtoaddr ptr %.042.lcssa.i to i64
  %.048.lcssa.i44 = ptrtoaddr ptr %.048.lcssa.i to i64 ; 2 uses
  %i.as = add i64 %.idx.i, %i.ac
  %i.at = xor i64 %.048.lcssa.i44, -1
  %i.au = add i64 %i.as, %i.at                    ; 2 uses
  %i.av = lshr i64 %i.au, 2
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.au, 44
  %i.ax = sub i64 %.048.lcssa.i44, %.042.lcssa.i45
  %diff.check = icmp ugt i64 %i.ax, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph70.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph70.i.preheader
  %n.vec = and i64 %i.aw, 9223372036854775800     ; 3 uses
  %i.ay = shl i64 %n.vec, 2                       ; 2 uses
  %i.az = getelementptr i8, ptr %.042.lcssa.i, i64 %i.ay ; 2 uses
  %i.ba = getelementptr i8, ptr %.048.lcssa.i, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.042.lcssa.i, i64 %i.bb ; 2 uses
  %next.gep46 = getelementptr i8, ptr %.048.lcssa.i, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep46, align 4, !tbaa !50
  %wide.load47 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !50
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !50
  store <4 x i32> %wide.load47, ptr %i.bd, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !194

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph70.i.preheader74

.lr.ph70.i.preheader74:                           ; preds = %.lr.ph70.i.preheader, %middle.block
  %.24469.i.ph = phi ptr [ %.042.lcssa.i, %.lr.ph70.i.preheader ], [ %i.az, %middle.block ]
  %.25068.i.ph = phi ptr [ %.048.lcssa.i, %.lr.ph70.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph70.i

.lr.ph.i:                                         ; preds = %.split26.us, %bb.g
  %.04063.i = phi ptr [ %.141.i, %bb.g ], [ %i.ae, %.split26.us ] ; 4 uses
  %.04262.i = phi ptr [ %.143.i, %bb.g ], [ %i.ab, %.split26.us ] ; 4 uses
  %.04561.i = phi ptr [ %.146.i, %bb.g ], [ %i.ae, %.split26.us ] ; 4 uses
  %.04860.i = phi ptr [ %.149.i, %bb.g ], [ %i.ab, %.split26.us ] ; 4 uses
  %i.bf = load i32, ptr %.04860.i, align 4, !tbaa !50 ; 5 uses
  %i.bg = load i32, ptr %.04561.i, align 4, !tbaa !50 ; 4 uses
  %.unshifted.i = xor i32 %i.bg, %i.bf
  %i.bh = icmp ult i32 %.unshifted.i, 2
  br i1 %i.bh, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i32 %i.bf, %i.bg
  br i1 %.not.i, label %bb.c, label %Gia_ManFindFirstCommonLit.exit

bb.c:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %.04860.i, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.04561.i, i64 4
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.bk = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %.04860.i, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.04262.i, i64 4
  store i32 %i.bf, ptr %.04262.i, align 4, !tbaa !50
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %.04561.i, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.04063.i, i64 4
  store i32 %i.bg, ptr %.04063.i, align 4, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.149.i = phi ptr [ %i.bi, %bb.c ], [ %i.bl, %bb.e ], [ %.04860.i, %bb.f ] ; 3 uses
  %.146.i = phi ptr [ %i.bj, %bb.c ], [ %.04561.i, %bb.e ], [ %i.bn, %bb.f ] ; 3 uses
  %.143.i = phi ptr [ %.04262.i, %bb.c ], [ %i.bm, %bb.e ], [ %.04262.i, %bb.f ] ; 2 uses
  %.141.i = phi ptr [ %.04063.i, %bb.c ], [ %.04063.i, %bb.e ], [ %i.bo, %bb.f ] ; 2 uses
  %i.bp = icmp ult ptr %.149.i, %i.aj
  %i.bq = icmp ult ptr %.146.i, %i.an
  %i.br = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %i.br, label %.lr.ph.i, label %.preheader55.i, !llvm.loop !7

.preheader.i:                                     ; preds = %.lr.ph70.i, %middle.block, %.preheader55.i
  %.244.lcssa.i = phi ptr [ %.042.lcssa.i, %.preheader55.i ], [ %i.az, %middle.block ], [ %i.ci, %.lr.ph70.i ]
  %i.bs = icmp ult ptr %.045.lcssa.i, %i.an
  br i1 %i.bs, label %.lr.ph74.i.preheader, label %._crit_edge.i

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %i.bt = add i64 %.idx76.i, %i.af
  %i.bu = xor i64 %.045.lcssa.i53, -1
  %i.bv = add i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = lshr i64 %i.bv, 2
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check56 = icmp ult i64 %i.bv, 44
  %i.by = sub i64 %.045.lcssa.i53, %.040.lcssa.i54
  %diff.check58 = icmp ugt i64 %i.by, -32
  %or.cond72 = select i1 %min.iters.check56, i1 true, i1 %diff.check58
  br i1 %or.cond72, label %.lr.ph74.i.preheader73, label %vector.ph59

vector.ph59:                                      ; preds = %.lr.ph74.i.preheader
  %n.vec60 = and i64 %i.bx, 9223372036854775800   ; 3 uses
  %i.bz = shl i64 %n.vec60, 2                     ; 2 uses
  %i.ca = getelementptr i8, ptr %.040.lcssa.i, i64 %i.bz ; 2 uses
  %i.cb = getelementptr i8, ptr %.045.lcssa.i, i64 %i.bz
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %vector.ph59
  %index62 = phi i64 [ 0, %vector.ph59 ], [ %index.next67, %vector.body61 ] ; 2 uses
  %i.cc = shl i64 %index62, 2                     ; 2 uses
  %next.gep63 = getelementptr i8, ptr %.040.lcssa.i, i64 %i.cc ; 2 uses
  %next.gep64 = getelementptr i8, ptr %.045.lcssa.i, i64 %i.cc ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep64, i64 16
  %wide.load65 = load <4 x i32>, ptr %next.gep64, align 4, !tbaa !50
  %wide.load66 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !50
  %i.ce = getelementptr i8, ptr %next.gep63, i64 16
  store <4 x i32> %wide.load65, ptr %next.gep63, align 4, !tbaa !50
  store <4 x i32> %wide.load66, ptr %i.ce, align 4, !tbaa !50
  %index.next67 = add nuw i64 %index62, 8         ; 2 uses
  %i.cf = icmp eq i64 %index.next67, %n.vec60
  br i1 %i.cf, label %middle.block68, label %vector.body61, !llvm.loop !195

middle.block68:                                   ; preds = %vector.body61
  %cmp.n69 = icmp eq i64 %i.bx, %n.vec60
  br i1 %cmp.n69, label %._crit_edge.i, label %.lr.ph74.i.preheader73

.lr.ph74.i.preheader73:                           ; preds = %.lr.ph74.i.preheader, %middle.block68
  %.273.i.ph = phi ptr [ %.040.lcssa.i, %.lr.ph74.i.preheader ], [ %i.ca, %middle.block68 ]
  %.24772.i.ph = phi ptr [ %.045.lcssa.i, %.lr.ph74.i.preheader ], [ %i.cb, %middle.block68 ]
  br label %.lr.ph74.i

.lr.ph70.i:                                       ; preds = %.lr.ph70.i.preheader74, %.lr.ph70.i
  %.24469.i = phi ptr [ %i.ci, %.lr.ph70.i ], [ %.24469.i.ph, %.lr.ph70.i.preheader74 ] ; 2 uses
  %.25068.i = phi ptr [ %i.cg, %.lr.ph70.i ], [ %.25068.i.ph, %.lr.ph70.i.preheader74 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.25068.i, i64 4 ; 2 uses
  %i.ch = load i32, ptr %.25068.i, align 4, !tbaa !50
  %i.ci = getelementptr inbounds nuw i8, ptr %.24469.i, i64 4 ; 2 uses
  store i32 %i.ch, ptr %.24469.i, align 4, !tbaa !50
  %i.cj = icmp ult ptr %i.cg, %i.aj
  br i1 %i.cj, label %.lr.ph70.i, label %.preheader.i, !llvm.loop !196

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader73, %.lr.ph74.i
  %.273.i = phi ptr [ %i.cm, %.lr.ph74.i ], [ %.273.i.ph, %.lr.ph74.i.preheader73 ] ; 2 uses
  %.24772.i = phi ptr [ %i.ck, %.lr.ph74.i ], [ %.24772.i.ph, %.lr.ph74.i.preheader73 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.24772.i, i64 4 ; 2 uses
  %i.cl = load i32, ptr %.24772.i, align 4, !tbaa !50
  %i.cm = getelementptr inbounds nuw i8, ptr %.273.i, i64 4 ; 2 uses
  store i32 %i.cl, ptr %.273.i, align 4, !tbaa !50
  %i.cn = icmp ult ptr %i.ck, %i.an
  br i1 %i.cn, label %.lr.ph74.i, label %._crit_edge.i, !llvm.loop !197

._crit_edge.i:                                    ; preds = %.lr.ph74.i, %middle.block68, %.preheader.i
  %.2.lcssa.i = phi ptr [ %.040.lcssa.i, %.preheader.i ], [ %i.ca, %middle.block68 ], [ %i.cm, %.lr.ph74.i ]
  %i.co = ptrtoint ptr %.244.lcssa.i to i64
  %i.cp = ptrtoint ptr %i.ab to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = lshr exact i64 %i.cq, 2
  %i.cs = trunc i64 %i.cr to i32
  store i32 %i.cs, ptr %i.ag, align 4, !tbaa !47
  %i.ct = ptrtoint ptr %.2.lcssa.i to i64
  %i.cu = ptrtoint ptr %i.ae to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = lshr exact i64 %i.cv, 2
  %i.cx = trunc i64 %i.cw to i32
  store i32 %i.cx, ptr %i.ak, align 4, !tbaa !47
  br label %Gia_ManFindFirstCommonLit.exit

Gia_ManFindFirstCommonLit.exit:                   ; preds = %bb.b, %._crit_edge.i
  %.051.i = phi i32 [ -1, %._crit_edge.i ], [ %i.bf, %bb.b ]
  ret i32 %.051.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_ManFindUnatePairsInt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 4
  %.val = load i32, ptr %i.a, align 4, !tbaa !47  ; 2 uses
  %i.b = icmp sgt i32 %.val, 0
  br i1 %i.b, label %.lr.ph107, label %.critedge

.lr.ph107:                                        ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.d = getelementptr i8, ptr %3, i64 8
  %i.e = icmp sgt i32 %4, 0                       ; 8 uses
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %wide.trip.count126 = zext nneg i32 %.val to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph107, %.critedge2
  %indvars.iv123 = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next124, %.critedge2 ] ; 4 uses
  %.val45 = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val45, i64 %indvars.iv123
  %i.i = load i32, ptr %i.h, align 4, !tbaa !50   ; 2 uses
  %.not = icmp eq i64 %indvars.iv123, 0
  br i1 %.not, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.x
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ 0, %bb.b ] ; 2 uses
  %.val44 = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val44, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !50   ; 2 uses
  %i.l = tail call noundef i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 2 uses
  %i.m = tail call noundef i32 @llvm.smax.i32(i32 %i.k, i32 %i.i) ; 2 uses
  %.val47 = load ptr, ptr %i.d, align 8, !tbaa !79 ; 2 uses
  %i.n = sext i32 %i.l to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %.val47, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !92   ; 8 uses
  %i.q = sext i32 %i.m to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %.val47, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !92   ; 8 uses
  %i.t = shl nsw i32 %i.l, 1
  %i.u = shl i32 %i.m, 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Abc_TtIntersectTwo.exit
  %.042104 = phi i32 [ 0, %.lr.ph ], [ %i.dn, %Abc_TtIntersectTwo.exit ] ; 4 uses
  %i.v = and i32 %.042104, 1
  %i.w = or disjoint i32 %i.v, %i.t
  %i.x = lshr i32 %.042104, 1                     ; 2 uses
  %i.y = icmp ne i32 %i.x, 0                      ; 3 uses
  %i.z = trunc i32 %.042104 to i1                 ; 3 uses
  %or.cond.i = and i1 %i.y, %i.z                  ; 2 uses
  br i1 %or.cond.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.c
  br i1 %i.e, label %.lr.ph108.i, label %Abc_TtIntersectTwo.exit

bb.d:                                             ; preds = %.lr.ph108.i
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %exitcond133.not.i = icmp eq i64 %indvars.iv.next130.i, %wide.trip.count.i
  br i1 %exitcond133.not.i, label %.loopexit, label %.lr.ph108.i, !llvm.loop !9

.lr.ph108.i:                                      ; preds = %.preheader.i, %bb.d
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i, %bb.d ], [ 0, %.preheader.i ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv129.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !93
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv129.i
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !93
  %.demorgan.i = or i64 %i.ad, %i.ab
  %i.ae = xor i64 %.demorgan.i, -1
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv129.i
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !93
  %i.ah = and i64 %i.ag, %i.ae
  %.not84.i = icmp eq i64 %i.ah, 0
  br i1 %.not84.i, label %bb.d, label %Abc_TtIntersectTwo.exit

bb.e:                                             ; preds = %bb.c
  br i1 %i.y, label %.preheader85.i, label %bb.g

.preheader85.i:                                   ; preds = %bb.e
  br i1 %i.e, label %.lr.ph103.i, label %Abc_TtIntersectTwo.exit

bb.f:                                             ; preds = %.lr.ph103.i
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1 ; 2 uses
  %exitcond128.not.i = icmp eq i64 %indvars.iv.next125.i, %wide.trip.count.i
  br i1 %exitcond128.not.i, label %.loopexit, label %.lr.ph103.i, !llvm.loop !10

.lr.ph103.i:                                      ; preds = %.preheader85.i, %bb.f
  %indvars.iv124.i = phi i64 [ %indvars.iv.next125.i, %bb.f ], [ 0, %.preheader85.i ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv124.i
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !93
  %i.ak = xor i64 %i.aj, -1
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv124.i
  %i.am = load i64, ptr %i.al, align 8, !tbaa !93
  %i.an = and i64 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv124.i
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !93
  %i.aq = and i64 %i.an, %i.ap
  %.not83.i = icmp eq i64 %i.aq, 0
  br i1 %.not83.i, label %bb.f, label %Abc_TtIntersectTwo.exit

bb.g:                                             ; preds = %bb.e
  br i1 %i.z, label %.preheader88.i, label %.preheader91.i

.preheader91.i:                                   ; preds = %bb.g
  br i1 %i.e, label %.lr.ph.i, label %Abc_TtIntersectTwo.exit

.preheader88.i:                                   ; preds = %bb.g
  br i1 %i.e, label %.lr.ph98.i, label %Abc_TtIntersectTwo.exit

bb.h:                                             ; preds = %.lr.ph98.i
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1 ; 2 uses
  %exitcond123.not.i = icmp eq i64 %indvars.iv.next120.i, %wide.trip.count.i
  br i1 %exitcond123.not.i, label %.loopexit, label %.lr.ph98.i, !llvm.loop !11

.lr.ph98.i:                                       ; preds = %.preheader88.i, %bb.h
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i, %bb.h ], [ 0, %.preheader88.i ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv119.i
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !93
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv119.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !93
  %i.av = xor i64 %i.au, -1
  %i.aw = and i64 %i.as, %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv119.i
end_hunk_1
begin_hunk_2_@Gia_ManFindUnatePairsInt:bb.a

.lr.ph98.i61:                                     ; preds = %.preheader88.i58, %bb.n
  %indvars.iv119.i62 = phi i64 [ %indvars.iv.next120.i64, %bb.n ], [ 0, %.preheader88.i58 ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv119.i62
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !93
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv119.i62
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !93
  %i.cd = xor i64 %i.cc, -1
  %i.ce = and i64 %i.ca, %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv119.i62
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !93
  %i.ch = and i64 %i.ce, %i.cg
  %.not82.i63 = icmp eq i64 %i.ch, 0
  br i1 %.not82.i63, label %bb.n, label %Abc_TtIntersectTwo.exit83

bb.o:                                             ; preds = %.lr.ph.i53
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %indvars.iv.next.i56, %wide.trip.count.i
  br i1 %exitcond.not.i57, label %Abc_TtIntersectTwo.exit, label %.lr.ph.i53, !llvm.loop !12

.lr.ph.i53:                                       ; preds = %.preheader91.i49, %bb.o
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i56, %bb.o ], [ 0, %.preheader91.i49 ] ; 4 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i54
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !93
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i54
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !93
  %i.cm = and i64 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i54
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !93
  %i.cp = and i64 %i.cm, %i.co
  %.not.i55 = icmp eq i64 %i.cp, 0
  br i1 %.not.i55, label %bb.o, label %Abc_TtIntersectTwo.exit83

Abc_TtIntersectTwo.exit83:                        ; preds = %.lr.ph.i53, %.lr.ph98.i61, %.lr.ph103.i69, %.lr.ph108.i77
  %i.cq = shl nuw nsw i32 %i.x, 15
  %i.cr = add nuw nsw i32 %i.cq, %i.u
  %i.cs = or i32 %i.cr, %i.w
  %i.ct = shl nsw i32 %i.cs, 1
  %i.cu = load i32, ptr %i.f, align 4, !tbaa !47  ; 7 uses
  %i.cv = load i32, ptr %5, align 8, !tbaa !48
  %i.cw = icmp eq i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.p, label %Abc_TtIntersectTwo.exit83.Vec_IntPush.exit_crit_edge

Abc_TtIntersectTwo.exit83.Vec_IntPush.exit_crit_edge: ; preds = %Abc_TtIntersectTwo.exit83
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !49
  br label %Vec_IntPush.exit

bb.p:                                             ; preds = %Abc_TtIntersectTwo.exit83
  %i.cx = icmp slt i32 %i.cu, 16
  br i1 %i.cx, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cy = load ptr, ptr %i.g, align 8, !tbaa !49  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.cy, null
  br i1 %.not9.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cy, i64 noundef 64) #32
  br label %Vec_IntGrow.exit11.sink.split.i

bb.s:                                             ; preds = %bb.q
  %i.da = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i

bb.t:                                             ; preds = %bb.p
  %i.db = icmp samesign ult i32 %i.cu, 1073741823
  %i.dc = shl nuw nsw i32 %i.cu, 1
  %spec.select.i = select i1 %i.db, i32 %i.dc, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.cu, %spec.select.i
  %.pre128 = load ptr, ptr %i.g, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i9.i, label %bb.u, label %Vec_IntPush.exit

bb.u:                                             ; preds = %bb.t
  %.not9.i10.i = icmp eq ptr %.pre128, null
  %i.dd = zext nneg i32 %spec.select.i to i64
  %i.de = shl nuw nsw i64 %i.dd, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = tail call ptr @realloc(ptr noundef nonnull %.pre128, i64 noundef %i.de) #32
  br label %Vec_IntGrow.exit11.sink.split.i

bb.w:                                             ; preds = %bb.u
  %i.dg = tail call noalias ptr @malloc(i64 noundef %i.de) #33
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %bb.w, %bb.r, %bb.s
  %i.dh = phi ptr [ %i.da, %bb.s ], [ %i.cz, %bb.r ], [ %i.df, %bb.v ], [ %i.dg, %bb.w ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.s ], [ 16, %bb.r ], [ %spec.select.i, %bb.v ], [ %spec.select.i, %bb.w ]
  store ptr %i.dh, ptr %i.g, align 8, !tbaa !49
  store i32 %spec.select.sink.i, ptr %5, align 8, !tbaa !48
  %.pre129 = load i32, ptr %i.f, align 4, !tbaa !47
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Abc_TtIntersectTwo.exit83.Vec_IntPush.exit_crit_edge, %bb.t, %Vec_IntGrow.exit11.sink.split.i
  %i.di = phi i32 [ %i.cu, %Abc_TtIntersectTwo.exit83.Vec_IntPush.exit_crit_edge ], [ %i.cu, %bb.t ], [ %.pre129, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.dj = phi ptr [ %.pre, %Abc_TtIntersectTwo.exit83.Vec_IntPush.exit_crit_edge ], [ %.pre128, %bb.t ], [ %i.dh, %Vec_IntGrow.exit11.sink.split.i ]
  %i.dk = add nsw i32 %i.di, 1
  store i32 %i.dk, ptr %i.f, align 4, !tbaa !47
  %i.dl = sext i32 %i.di to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.dl
  store i32 %i.ct, ptr %i.dm, align 4, !tbaa !50
  br label %Abc_TtIntersectTwo.exit

Abc_TtIntersectTwo.exit:                          ; preds = %.lr.ph.i, %.lr.ph98.i, %.lr.ph103.i, %.lr.ph108.i, %bb.o, %bb.n, %bb.l, %bb.j, %.preheader91.i, %.preheader88.i, %.preheader85.i, %.preheader.i, %.preheader85.i66, %.preheader.i74, %.preheader91.i49, %.preheader88.i58, %Vec_IntPush.exit
  %i.dn = add nuw nsw i32 %.042104, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.dn, 4
  br i1 %exitcond.not, label %bb.x, label %bb.c, !llvm.loop !198

bb.x:                                             ; preds = %Abc_TtIntersectTwo.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next, %indvars.iv123
  br i1 %exitcond122.not, label %.critedge2, label %.lr.ph, !llvm.loop !199

.critedge2:                                       ; preds = %bb.x, %bb.b
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %.critedge, label %bb.b, !llvm.loop !200

.critedge:                                        ; preds = %.critedge2, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_ManFindUnatePairs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !71
  %i.b = load ptr, ptr %0, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  tail call void @Gia_ManFindUnatePairsInt(ptr noundef %i.b, ptr noundef %i.d, ptr noundef %3, ptr noundef %1, i32 noundef %2, ptr noundef %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.h = load ptr, ptr %0, align 8, !tbaa !81
  tail call void @Gia_ManFindUnatePairsInt(ptr noundef %i.g, ptr noundef %i.h, ptr noundef %3, ptr noundef %1, i32 noundef %2, ptr noundef %i.f)
  br label %.split26.us

.split:                                           ; preds = %bb.a
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19) ; 0 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !71     ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %.val22 = load i32, ptr %i.k, align 4, !tbaa !47
  %i.l = load ptr, ptr %0, align 8, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81
  tail call void @Gia_ManFindUnatePairsInt(ptr noundef %i.l, ptr noundef %i.n, ptr noundef %3, ptr noundef %1, i32 noundef %2, ptr noundef %i.j)
  %i.o = load ptr, ptr %4, align 8, !tbaa !71
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %.val = load i32, ptr %i.p, align 4, !tbaa !47
  %i.q = sub nsw i32 %.val, %.val22
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef 0, i32 noundef %i.q) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !71   ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %.val22.1 = load i32, ptr %i.u, align 4, !tbaa !47
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !81
  %i.w = load ptr, ptr %0, align 8, !tbaa !81
  tail call void @Gia_ManFindUnatePairsInt(ptr noundef %i.v, ptr noundef %i.w, ptr noundef %3, ptr noundef %1, i32 noundef %2, ptr noundef %i.t)
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !71
  %i.y = getelementptr i8, ptr %i.x, i64 4
  %.val.1 = load i32, ptr %i.y, align 4, !tbaa !47
  %i.z = sub nsw i32 %.val.1, %.val22.1
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef 1, i32 noundef %i.z) ; 0 uses
  br label %.split26.us

.split26.us:                                      ; preds = %.split, %.split.us.preheader
  %i.ab = load ptr, ptr %4, align 8, !tbaa !71    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !71 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !49 ; 7 uses
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !49 ; 7 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !47 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %.idx.i = shl nsw i64 %i.am, 2                  ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.af, i64 %.idx.i ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !47 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %.idx76.i = shl nsw i64 %i.aq, 2                ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %.idx76.i ; 3 uses
  %i.as = icmp sgt i32 %i.al, 0
  %i.at = icmp sgt i32 %i.ap, 0
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  br i1 %i.au, label %.lr.ph.i, label %.preheader55.i

.preheader55.i:                                   ; preds = %bb.g, %.split26.us
  %.048.lcssa.i = phi ptr [ %i.af, %.split26.us ], [ %.149.i, %bb.g ] ; 5 uses
  %.045.lcssa.i = phi ptr [ %i.ai, %.split26.us ], [ %.146.i, %bb.g ] ; 5 uses
  %.042.lcssa.i = phi ptr [ %i.af, %.split26.us ], [ %.143.i, %bb.g ] ; 5 uses
  %.040.lcssa.i = phi ptr [ %i.ai, %.split26.us ], [ %.141.i, %bb.g ] ; 5 uses
  %.045.lcssa.i47 = ptrtoaddr ptr %.045.lcssa.i to i64 ; 2 uses
  %.040.lcssa.i48 = ptrtoaddr ptr %.040.lcssa.i to i64
  %i.av = icmp ult ptr %.048.lcssa.i, %i.an
  br i1 %i.av, label %.lr.ph70.i.preheader, label %.preheader.i

.lr.ph70.i.preheader:                             ; preds = %.preheader55.i
  %.042.lcssa.i39 = ptrtoaddr ptr %.042.lcssa.i to i64
  %.048.lcssa.i38 = ptrtoaddr ptr %.048.lcssa.i to i64 ; 2 uses
  %i.aw = add i64 %.idx.i, %i.ag
  %i.ax = xor i64 %.048.lcssa.i38, -1
  %i.ay = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = lshr i64 %i.ay, 2
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 44
  %i.bb = sub i64 %.048.lcssa.i38, %.042.lcssa.i39
  %diff.check = icmp ugt i64 %i.bb, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph70.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph70.i.preheader
  %n.vec = and i64 %i.ba, 9223372036854775800     ; 3 uses
  %i.bc = shl i64 %n.vec, 2                       ; 2 uses
  %i.bd = getelementptr i8, ptr %.042.lcssa.i, i64 %i.bc ; 2 uses
  %i.be = getelementptr i8, ptr %.048.lcssa.i, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.042.lcssa.i, i64 %i.bf ; 2 uses
  %next.gep40 = getelementptr i8, ptr %.048.lcssa.i, i64 %i.bf ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep40, align 4, !tbaa !50
  %wide.load41 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !50
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !50
  store <4 x i32> %wide.load41, ptr %i.bh, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !201

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph70.i.preheader68

.lr.ph70.i.preheader68:                           ; preds = %.lr.ph70.i.preheader, %middle.block
  %.24469.i.ph = phi ptr [ %.042.lcssa.i, %.lr.ph70.i.preheader ], [ %i.bd, %middle.block ]
  %.25068.i.ph = phi ptr [ %.048.lcssa.i, %.lr.ph70.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph70.i

.lr.ph.i:                                         ; preds = %.split26.us, %bb.g
  %.04063.i = phi ptr [ %.141.i, %bb.g ], [ %i.ai, %.split26.us ] ; 4 uses
  %.04262.i = phi ptr [ %.143.i, %bb.g ], [ %i.af, %.split26.us ] ; 4 uses
  %.04561.i = phi ptr [ %.146.i, %bb.g ], [ %i.ai, %.split26.us ] ; 4 uses
  %.04860.i = phi ptr [ %.149.i, %bb.g ], [ %i.af, %.split26.us ] ; 4 uses
  %i.bj = load i32, ptr %.04860.i, align 4, !tbaa !50 ; 4 uses
  %i.bk = load i32, ptr %.04561.i, align 4, !tbaa !50 ; 4 uses
  %.unshifted.i = xor i32 %i.bk, %i.bj
  %i.bl = icmp ult i32 %.unshifted.i, 2
  br i1 %i.bl, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i32 %i.bj, %i.bk
  br i1 %.not.i, label %bb.c, label %Gia_ManFindFirstCommonLit.exit

bb.c:                                             ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %.04860.i, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.04561.i, i64 4
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.bo = icmp slt i32 %i.bj, %i.bk
  br i1 %i.bo, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %.04860.i, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %.04262.i, i64 4
  store i32 %i.bj, ptr %.04262.i, align 4, !tbaa !50
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %.04561.i, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.04063.i, i64 4
  store i32 %i.bk, ptr %.04063.i, align 4, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.149.i = phi ptr [ %i.bm, %bb.c ], [ %i.bp, %bb.e ], [ %.04860.i, %bb.f ] ; 3 uses
  %.146.i = phi ptr [ %i.bn, %bb.c ], [ %.04561.i, %bb.e ], [ %i.br, %bb.f ] ; 3 uses
  %.143.i = phi ptr [ %.04262.i, %bb.c ], [ %i.bq, %bb.e ], [ %.04262.i, %bb.f ] ; 2 uses
  %.141.i = phi ptr [ %.04063.i, %bb.c ], [ %.04063.i, %bb.e ], [ %i.bs, %bb.f ] ; 2 uses
  %i.bt = icmp ult ptr %.149.i, %i.an
  %i.bu = icmp ult ptr %.146.i, %i.ar
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %i.bv, label %.lr.ph.i, label %.preheader55.i, !llvm.loop !7

.preheader.i:                                     ; preds = %.lr.ph70.i, %middle.block, %.preheader55.i
  %.244.lcssa.i = phi ptr [ %.042.lcssa.i, %.preheader55.i ], [ %i.bd, %middle.block ], [ %i.cm, %.lr.ph70.i ]
  %i.bw = icmp ult ptr %.045.lcssa.i, %i.ar
  br i1 %i.bw, label %.lr.ph74.i.preheader, label %._crit_edge.i

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %i.bx = add i64 %.idx76.i, %i.aj
  %i.by = xor i64 %.045.lcssa.i47, -1
  %i.bz = add i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 2
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check50 = icmp ult i64 %i.bz, 44
  %i.cc = sub i64 %.045.lcssa.i47, %.040.lcssa.i48
  %diff.check52 = icmp ugt i64 %i.cc, -32
  %or.cond66 = select i1 %min.iters.check50, i1 true, i1 %diff.check52
  br i1 %or.cond66, label %.lr.ph74.i.preheader67, label %vector.ph53

vector.ph53:                                      ; preds = %.lr.ph74.i.preheader
  %n.vec54 = and i64 %i.cb, 9223372036854775800   ; 3 uses
  %i.cd = shl i64 %n.vec54, 2                     ; 2 uses
  %i.ce = getelementptr i8, ptr %.040.lcssa.i, i64 %i.cd ; 2 uses
  %i.cf = getelementptr i8, ptr %.045.lcssa.i, i64 %i.cd
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph53
  %index56 = phi i64 [ 0, %vector.ph53 ], [ %index.next61, %vector.body55 ] ; 2 uses
  %i.cg = shl i64 %index56, 2                     ; 2 uses
  %next.gep57 = getelementptr i8, ptr %.040.lcssa.i, i64 %i.cg ; 2 uses
  %next.gep58 = getelementptr i8, ptr %.045.lcssa.i, i64 %i.cg ; 2 uses
  %i.ch = getelementptr i8, ptr %next.gep58, i64 16
  %wide.load59 = load <4 x i32>, ptr %next.gep58, align 4, !tbaa !50
  %wide.load60 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !50
  %i.ci = getelementptr i8, ptr %next.gep57, i64 16
  store <4 x i32> %wide.load59, ptr %next.gep57, align 4, !tbaa !50
  store <4 x i32> %wide.load60, ptr %i.ci, align 4, !tbaa !50
  %index.next61 = add nuw i64 %index56, 8         ; 2 uses
  %i.cj = icmp eq i64 %index.next61, %n.vec54
  br i1 %i.cj, label %middle.block62, label %vector.body55, !llvm.loop !202

middle.block62:                                   ; preds = %vector.body55
  %cmp.n63 = icmp eq i64 %i.cb, %n.vec54
  br i1 %cmp.n63, label %._crit_edge.i, label %.lr.ph74.i.preheader67

.lr.ph74.i.preheader67:                           ; preds = %.lr.ph74.i.preheader, %middle.block62
  %.273.i.ph = phi ptr [ %.040.lcssa.i, %.lr.ph74.i.preheader ], [ %i.ce, %middle.block62 ]
  %.24772.i.ph = phi ptr [ %.045.lcssa.i, %.lr.ph74.i.preheader ], [ %i.cf, %middle.block62 ]
  br label %.lr.ph74.i

.lr.ph70.i:                                       ; preds = %.lr.ph70.i.preheader68, %.lr.ph70.i
  %.24469.i = phi ptr [ %i.cm, %.lr.ph70.i ], [ %.24469.i.ph, %.lr.ph70.i.preheader68 ] ; 2 uses
  %.25068.i = phi ptr [ %i.ck, %.lr.ph70.i ], [ %.25068.i.ph, %.lr.ph70.i.preheader68 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.25068.i, i64 4 ; 2 uses
  %i.cl = load i32, ptr %.25068.i, align 4, !tbaa !50
  %i.cm = getelementptr inbounds nuw i8, ptr %.24469.i, i64 4 ; 2 uses
  store i32 %i.cl, ptr %.24469.i, align 4, !tbaa !50
  %i.cn = icmp ult ptr %i.ck, %i.an
  br i1 %i.cn, label %.lr.ph70.i, label %.preheader.i, !llvm.loop !203

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader67, %.lr.ph74.i
  %.273.i = phi ptr [ %i.cq, %.lr.ph74.i ], [ %.273.i.ph, %.lr.ph74.i.preheader67 ] ; 2 uses
  %.24772.i = phi ptr [ %i.co, %.lr.ph74.i ], [ %.24772.i.ph, %.lr.ph74.i.preheader67 ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.24772.i, i64 4 ; 2 uses
  %i.cp = load i32, ptr %.24772.i, align 4, !tbaa !50
  %i.cq = getelementptr inbounds nuw i8, ptr %.273.i, i64 4 ; 2 uses
  store i32 %i.cp, ptr %.273.i, align 4, !tbaa !50
  %i.cr = icmp ult ptr %i.co, %i.ar
  br i1 %i.cr, label %.lr.ph74.i, label %._crit_edge.i, !llvm.loop !204

._crit_edge.i:                                    ; preds = %.lr.ph74.i, %middle.block62, %.preheader.i
  %.2.lcssa.i = phi ptr [ %.040.lcssa.i, %.preheader.i ], [ %i.ce, %middle.block62 ], [ %i.cq, %.lr.ph74.i ]
  %i.cs = ptrtoint ptr %.244.lcssa.i to i64
  %i.ct = ptrtoint ptr %i.af to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = lshr exact i64 %i.cu, 2
  %i.cw = trunc i64 %i.cv to i32
  store i32 %i.cw, ptr %i.ak, align 4, !tbaa !47
  %i.cx = ptrtoint ptr %.2.lcssa.i to i64
  %i.cy = ptrtoint ptr %i.ai to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = lshr exact i64 %i.cz, 2
  %i.db = trunc i64 %i.da to i32
  store i32 %i.db, ptr %i.ao, align 4, !tbaa !47
  br label %Gia_ManFindFirstCommonLit.exit

Gia_ManFindFirstCommonLit.exit:                   ; preds = %bb.b, %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gia_ManDeriveDivPair(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64                  ; 10 uses
  %i.b = lshr i32 %0, 1
  %i.c = and i32 %i.b, 32767                      ; 2 uses
  %i.d = ashr i32 %0, 16
  %i.e = lshr i32 %i.c, 1
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val19 = load ptr, ptr %i.f, align 8, !tbaa !79 ; 2 uses
  %i.g = zext nneg i32 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val19, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92   ; 25 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 5 uses
  %i.k = ashr i32 %0, 17
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %.val19, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !92   ; 25 uses
  %i.o = ptrtoaddr ptr %i.n to i64                ; 5 uses
  %i.p = icmp slt i32 %i.c, %i.d
  br i1 %i.p, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.q = and i32 %0, 2
  %.not.i = icmp eq i32 %i.q, 0
  %i.r = and i32 %0, 65536
  %.not38.i = icmp eq i32 %i.r, 0                 ; 2 uses
  %i.s = icmp sgt i32 %2, 0                       ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not38.i, label %.preheader42.i, label %.preheader44.i

.preheader44.i:                                   ; preds = %bb.c
  br i1 %i.s, label %.lr.ph.preheader.i, label %Abc_TtAndCompl.exit

.lr.ph.preheader.i:                               ; preds = %.preheader44.i
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 5 uses
  %min.iters.check52 = icmp ult i32 %2, 10
  br i1 %min.iters.check52, label %.lr.ph.i.preheader, label %vector.memcheck53

vector.memcheck53:                                ; preds = %.lr.ph.preheader.i
  %i.t = sub i64 %i.j, %i.a
  %diff.check54 = icmp ugt i64 %i.t, -32
  %i.u = sub i64 %i.o, %i.a
  %diff.check55 = icmp ugt i64 %i.u, -32
  %conflict.rdx56 = or i1 %diff.check54, %diff.check55
  br i1 %conflict.rdx56, label %.lr.ph.i.preheader, label %vector.ph57

vector.ph57:                                      ; preds = %vector.memcheck53
  %n.vec58 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next65, %vector.body59 ] ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index60 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load61 = load <2 x i64>, ptr %i.v, align 8, !tbaa !93
  %wide.load62 = load <2 x i64>, ptr %i.w, align 8, !tbaa !93
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index60 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load63 = load <2 x i64>, ptr %i.x, align 8, !tbaa !93
  %wide.load64 = load <2 x i64>, ptr %i.y, align 8, !tbaa !93
  %i.z = or <2 x i64> %wide.load63, %wide.load61
  %i.aa = or <2 x i64> %wide.load64, %wide.load62
  %i.ab = xor <2 x i64> %i.z, splat (i64 -1)
  %i.ac = xor <2 x i64> %i.aa, splat (i64 -1)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index60 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x i64> %i.ab, ptr %i.ad, align 8, !tbaa !93
  store <2 x i64> %i.ac, ptr %i.ae, align 8, !tbaa !93
  %index.next65 = add nuw i64 %index60, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.af, label %middle.block66, label %vector.body59, !llvm.loop !205

middle.block66:                                   ; preds = %vector.body59
  %cmp.n67 = icmp eq i64 %n.vec58, %wide.trip.count.i
  br i1 %cmp.n67, label %Abc_TtAndCompl.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck53, %.lr.ph.preheader.i, %middle.block66
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck53 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec58, %middle.block66 ] ; 6 uses
  %xtraiter139 = and i64 %wide.trip.count.i, 1
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.ph
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !93
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.ph
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !93
  %.demorgan.i.prol = or i64 %i.aj, %i.ah
  %i.ak = xor i64 %.demorgan.i.prol, -1
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.ph
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !93
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.am = add nsw i64 %wide.trip.count.i, -1
  %i.an = icmp eq i64 %indvars.iv.i.ph, %i.am
  br i1 %i.an, label %Abc_TtAndCompl.exit, label %.lr.ph.i

.preheader42.i:                                   ; preds = %bb.c
  br i1 %i.s, label %.lr.ph48.preheader.i, label %Abc_TtAndCompl.exit

.lr.ph48.preheader.i:                             ; preds = %.preheader42.i
  %wide.trip.count60.i = zext nneg i32 %2 to i64  ; 5 uses
  %min.iters.check74 = icmp ult i32 %2, 10
  br i1 %min.iters.check74, label %.lr.ph48.i.preheader, label %vector.memcheck75

vector.memcheck75:                                ; preds = %.lr.ph48.preheader.i
  %i.ao = sub i64 %i.j, %i.a
  %diff.check76 = icmp ugt i64 %i.ao, -32
  %i.ap = sub i64 %i.o, %i.a
  %diff.check77 = icmp ugt i64 %i.ap, -32
  %conflict.rdx78 = or i1 %diff.check76, %diff.check77
  br i1 %conflict.rdx78, label %.lr.ph48.i.preheader, label %vector.ph79

vector.ph79:                                      ; preds = %vector.memcheck75
  %n.vec80 = and i64 %wide.trip.count60.i, 2147483644 ; 3 uses
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next87, %vector.body81 ] ; 4 uses
end_hunk_2
