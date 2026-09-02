Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_ldm?download=true
inline.NumInlined: 59
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ZSTD_ldm_adjustParameters:bb.a

bb.d:                                             ; preds = %bb.c
  %i.i = sub nuw i32 %i.a, %i.g
  store i32 %i.i, ptr %i.c, align 4, !tbaa !11
  br label %.thread

.thread59:                                        ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 4, !tbaa !13
  %i.l = udiv i32 %i.k, 3
  %i.m = sub nsw i32 7, %i.l                      ; 2 uses
  store i32 %i.m, ptr %i.c, align 4, !tbaa !11
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  br i1 %.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %.thread59, %bb.e
  %i.n = phi i32 [ %i.m, %.thread59 ], [ %i.d, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not48 = icmp ugt i32 %i.a, %i.n
  br i1 %.not48, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 6, ptr %i.o, align 4, !tbaa !12
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.p = sub nuw i32 %i.a, %i.n
  %i.q = tail call i32 @llvm.umax.i32(i32 %i.p, i32 6)
  %spec.select52 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 30) ; 2 uses
  store i32 %spec.select52, ptr %i.o, align 4, !tbaa !12
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.g, %bb.h, %bb.e
  %i.r = phi i32 [ 6, %bb.g ], [ %spec.select52, %bb.h ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !14
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i32, ptr %i.v, align 4, !tbaa !13
  %i.x = icmp ugt i32 %i.w, 7
  %spec.store.select = select i1 %i.x, i32 32, i32 64
  store i32 %spec.store.select, ptr %i.s, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !15   ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !13
  %i.ad = tail call i32 @llvm.umax.i32(i32 %i.ac, i32 4)
  %spec.select53 = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 8)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ae = phi i32 [ %spec.select53, %bb.k ], [ %i.z, %bb.j ]
  %. = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 %i.r)
  store i32 %., ptr %i.y, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ZSTD_ldm_getTableSize(ptr nofree noundef readonly byval(%struct.ldmParams_t) align 8 captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12   ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15
  %i.f = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.b)
  %i.g = zext i32 %i.f to i64
  %i.h = sub nsw i64 %i.c, %i.g
  %i.i = shl nuw i64 1, %i.h
  %i.j = shl i64 8, %i.c
  %i.k = add i64 %i.i, %i.j
  %i.l = load i32, ptr %0, align 8, !tbaa !16
  %i.m = icmp eq i32 %i.l, 1
  %i.n = select i1 %i.m, i64 %i.k, i64 0
  ret i64 %i.n
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ZSTD_ldm_getMaxNbSeq(ptr nofree noundef readonly byval(%struct.ldmParams_t) align 8 captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !16
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  %i.e = zext i32 %i.d to i64
  %i.f = udiv i64 %1, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.g
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define void @ZSTD_ldm_fillHashTable(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.ldmRollingHashState_t, align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14
  %.12.val.fr.i = freeze i32 %i.c                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.k = getelementptr i8, ptr %3, i64 16
  %.val39 = load i32, ptr %i.k, align 4, !tbaa !11 ; 3 uses
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %.12.val.fr.i, i32 64) ; 2 uses
  store i64 4294967295, ptr %4, align 8, !tbaa !23
  %i.l = add i32 %.val39, -1
  %or.cond.not.i = icmp ult i32 %i.l, %spec.select.i
  %i.m = zext nneg i32 %.val39 to i64
  %notmask15.i = shl nsw i64 -1, %i.m
  %i.n = xor i64 %notmask15.i, -1
  %i.o = sub nuw nsw i32 %spec.select.i, %.val39
  %narrow.i = select i1 %or.cond.not.i, i32 %i.o, i32 0
  %i.p = zext nneg i32 %narrow.i to i64
  %.sink.i = shl i64 %i.n, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sink.i, ptr %i.q, align 8, !tbaa !24
  %i.r = icmp ult ptr %1, %2
  br i1 %i.r, label %.lr.ph45, label %._crit_edge46

.lr.ph45:                                         ; preds = %bb.a
  %i.s = sub i32 %i.g, %i.e
  %i.t = ptrtoint ptr %2 to i64
  %i.u = zext i32 %.12.val.fr.i to i64            ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.w = sub nsw i64 0, %i.u
  %notmask = shl nsw i32 -1, %i.s
  %i.x = xor i32 %notmask, -1
  %i.y = ptrtoint ptr %i.i to i64
  %i.z = getelementptr i8, ptr %0, i64 40
  %i.aa = getelementptr i8, ptr %0, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph45, %._crit_edge
  %.043 = phi ptr [ %1, %.lr.ph45 ], [ %i.ax, %._crit_edge ] ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !25
  %i.ab = ptrtoint ptr %.043 to i64
  %i.ac = sub i64 %i.t, %i.ab
  %i.ad = call fastcc i64 @ZSTD_ldm_gear_feed(ptr noundef %4, ptr noundef %.043, i64 noundef %i.ac, ptr noundef nonnull %i.j, ptr noundef %i.a)
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !25  ; 2 uses
  %.not47 = icmp eq i32 %i.ae, 0
  br i1 %.not47, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext i32 %i.ae to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %.043, i64 %i.ag ; 2 uses
  %.not = icmp ult ptr %i.ah, %i.v
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.w ; 2 uses
  %i.aj = tail call i64 @ZSTD_XXH64(ptr noundef captures(address) %i.ai, i64 noundef %i.u, i64 noundef 0) #16 ; 2 uses
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, %i.x
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.am, %i.y
  %.sroa.4.0.insert.shift = and i64 %i.aj, -4294967296
  %i.ao = zext nneg i32 %i.al to i64              ; 2 uses
  %i.ap = load i32, ptr %i.d, align 4, !tbaa !15  ; 2 uses
  %.sroa.0.0.insert.ext = and i64 %i.an, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  %.val40 = load ptr, ptr %i.z, align 8, !tbaa !27
  %.val41 = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %.val41, i64 %i.ao ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !29  ; 2 uses
  %5 = zext i8 %i.ar to i32
  %i.as = zext nneg i32 %i.ap to i64
  %i.at = shl i64 %i.ao, %i.as
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.val40, i64 %i.at
  %i.av = zext i8 %i.ar to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  store i64 %.sroa.0.0.insert.insert, ptr %i.aw, align 4
  %6 = add nuw nsw i32 %5, 1
  %notmask.i = shl nsw i32 -1, %i.ap
  %7 = xor i32 %notmask.i, -1
  %8 = and i32 %6, %7
  %9 = trunc i32 %8 to i8
  store i8 %9, ptr %i.aq, align 1, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %.043, i64 %i.ad ; 2 uses
  %i.ay = icmp ult ptr %i.ax, %2
  br i1 %i.ay, label %bb.b, label %._crit_edge46, !llvm.loop !45

._crit_edge46:                                    ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @ZSTD_ldm_gear_feed(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24   ; 5 uses
  %i.d = icmp ugt i64 %2, 3
  br i1 %i.d, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.i, %bb.a
  %.063.lcssa = phi i64 [ 0, %bb.a ], [ %i.bf, %bb.i ] ; 3 uses
  %.0.lcssa = phi i64 [ %i.a, %bb.a ], [ %i.be, %bb.i ] ; 2 uses
  %i.e = icmp ult i64 %.063.lcssa, %2
  br i1 %i.e, label %.lr.ph76, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.072 = phi i64 [ %i.be, %bb.i ], [ %i.a, %bb.a ]
  %.06371 = phi i64 [ %i.bf, %bb.i ], [ 0, %bb.a ] ; 5 uses
  %i.f = shl i64 %.072, 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.06371
  %i.h = load i8, ptr %i.g, align 1, !tbaa !29
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_ldm_gearTab, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26
  %i.l = add i64 %i.k, %i.f                       ; 3 uses
  %i.m = or disjoint i64 %.06371, 1               ; 3 uses
  %i.n = and i64 %i.l, %i.c
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.c, !prof !31

bb.b:                                             ; preds = %.lr.ph
  %i.p = load i32, ptr %4, align 4, !tbaa !25     ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.q
  store i64 %i.m, ptr %i.r, align 8, !tbaa !26
  %i.s = add i32 %i.p, 1                          ; 2 uses
  store i32 %i.s, ptr %4, align 4, !tbaa !25
  %i.t = icmp eq i32 %i.s, 64
  br i1 %i.t, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.u = shl i64 %i.l, 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.w = load i8, ptr %i.v, align 1, !tbaa !29
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_ldm_gearTab, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !26
  %i.aa = add i64 %i.z, %i.u                      ; 3 uses
  %i.ab = or disjoint i64 %.06371, 2              ; 3 uses
  %i.ac = and i64 %i.aa, %i.c
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %bb.e, !prof !31

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr %4, align 4, !tbaa !25    ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.af
  store i64 %i.ab, ptr %i.ag, align 8, !tbaa !26
  %i.ah = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.ah, ptr %4, align 4, !tbaa !25
  %i.ai = icmp eq i32 %i.ah, 64
  br i1 %i.ai, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.aj = shl i64 %i.aa, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !29
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_ldm_gearTab, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !26
  %i.ap = add i64 %i.ao, %i.aj                    ; 3 uses
  %i.aq = or disjoint i64 %.06371, 3              ; 3 uses
  %i.ar = and i64 %i.ap, %i.c
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.f, label %bb.g, !prof !31

bb.f:                                             ; preds = %bb.e
  %i.at = load i32, ptr %4, align 4, !tbaa !25    ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.au
  store i64 %i.aq, ptr %i.av, align 8, !tbaa !26
  %i.aw = add i32 %i.at, 1                        ; 2 uses
  store i32 %i.aw, ptr %4, align 4, !tbaa !25
  %i.ax = icmp eq i32 %i.aw, 64
  br i1 %i.ax, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ay = shl i64 %i.ap, 1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !29
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_ldm_gearTab, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !26
  %i.be = add i64 %i.bd, %i.ay                    ; 4 uses
  %i.bf = add i64 %.06371, 4                      ; 5 uses
  %i.bg = and i64 %i.be, %i.c
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.h, label %bb.i, !prof !31

bb.h:                                             ; preds = %bb.g
  %i.bi = load i32, ptr %4, align 4, !tbaa !25    ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bj
  store i64 %i.bf, ptr %i.bk, align 8, !tbaa !26
  %i.bl = add i32 %i.bi, 1                        ; 2 uses
  store i32 %i.bl, ptr %4, align 4, !tbaa !25
  %i.bm = icmp eq i32 %i.bl, 64
  br i1 %i.bm, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bn = or disjoint i64 %i.bf, 3
  %i.bo = icmp ult i64 %i.bn, %2
  br i1 %i.bo, label %.lr.ph, label %.preheader, !llvm.loop !47

.lr.ph76:                                         ; preds = %.preheader, %.lr.ph76.backedge
  %.175 = phi i64 [ %i.bv, %.lr.ph76.backedge ], [ %.0.lcssa, %.preheader ]
  %.16474 = phi i64 [ %i.bw, %.lr.ph76.backedge ], [ %.063.lcssa, %.preheader ] ; 2 uses
  %i.bp = shl i64 %.175, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %.16474
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !29
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_ldm_gearTab, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !26
  %i.bv = add i64 %i.bu, %i.bp                    ; 4 uses
  %i.bw = add nuw i64 %.16474, 1                  ; 6 uses
  %i.bx = and i64 %i.bv, %i.c
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.j, label %bb.k, !prof !31

bb.j:                                             ; preds = %.lr.ph76
  %i.bz = load i32, ptr %4, align 4, !tbaa !25    ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ca
  store i64 %i.bw, ptr %i.cb, align 8, !tbaa !26
  %i.cc = add i32 %i.bz, 1                        ; 2 uses
  store i32 %i.cc, ptr %4, align 4, !tbaa !25
  %i.cd = icmp ne i32 %i.cc, 64
  %i.ce = icmp ult i64 %i.bw, %2
  %or.cond = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond, label %.lr.ph76.backedge, label %.loopexit

bb.k:                                             ; preds = %.lr.ph76
  %.old = icmp ult i64 %i.bw, %2
  br i1 %.old, label %.lr.ph76.backedge, label %.loopexit

.lr.ph76.backedge:                                ; preds = %bb.k, %bb.j
  br label %.lr.ph76, !llvm.loop !48

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.d, %bb.b, %bb.j, %bb.k, %.preheader
  %.265 = phi i64 [ %.063.lcssa, %.preheader ], [ %i.bw, %bb.j ], [ %i.bw, %bb.k ], [ %i.bf, %bb.h ], [ %i.aq, %bb.f ], [ %i.ab, %bb.d ], [ %i.m, %bb.b ]
  %.2 = phi i64 [ %.0.lcssa, %.preheader ], [ %i.bv, %bb.j ], [ %i.bv, %bb.k ], [ %i.be, %bb.h ], [ %i.ap, %bb.f ], [ %i.aa, %bb.d ], [ %i.l, %bb.b ]
  store i64 %.2, ptr %0, align 8, !tbaa !23
  ret i64 %.265
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64(ptr noundef captures(address), i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(readwrite, target_mem: read) uwtable
define range(i64 -119, 1) i64 @ZSTD_ldm_generateSequences(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #6 {
bb.a:
  %5 = alloca %struct.ldmRollingHashState_t, align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10
  %i.d = shl nuw i32 1, %i.c                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.f = lshr i64 %4, 20
  %i.g = and i64 %4, 1048575
  %i.h = icmp ne i64 %i.g, 0
  %i.i = zext i1 %i.h to i64
  %i.j = add nuw nsw i64 %i.f, %i.i
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
end_hunk_0
begin_hunk_1_@ZSTD_ldm_generateSequences:bb.a
  %.0216308.i = phi i64 [ %.2218.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ], [ 0, %.lr.ph312.i ] ; 4 uses
  %.0219307.i = phi i64 [ %.2221.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ], [ 0, %.lr.ph312.i ] ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.0212310.i, i64 4
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !69
  %.not250.i = icmp eq i32 %i.ip, %i.eh
  br i1 %.not250.i, label %bb.as, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i

bb.as:                                            ; preds = %.lr.ph312.split.i
  %i.iq = load i32, ptr %.0212310.i, align 4, !tbaa !61 ; 3 uses
  %.not251.i = icmp ugt i32 %i.iq, %i.cg
  br i1 %.not251.i, label %bb.at, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i

bb.at:                                            ; preds = %bb.as
  %i.ir = zext i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ir ; 4 uses
  br i1 %i.er, label %bb.au, label %.loopexit.i.i

bb.au:                                            ; preds = %bb.at
  %.val60.i.i = load i64, ptr %i.is, align 1, !tbaa !26 ; 2 uses
  %.val.i.i = load i64, ptr %i.ef, align 1, !tbaa !26 ; 2 uses
  %.not.i269.i = icmp eq i64 %.val60.i.i, %.val.i.i
  br i1 %.not.i269.i, label %.preheader.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.it = xor i64 %.val.i.i, %.val60.i.i
  %i.iu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.it, i1 true)
  %i.iv = lshr i64 %i.iu, 3
  br label %ZSTD_count.exit.i

.preheader.i.i:                                   ; preds = %bb.au, %bb.aw
  %.pn.i.i = phi ptr [ %.049.i.i, %bb.aw ], [ %i.ef, %bb.au ]
  %.pn67.i.i = phi ptr [ %.045.i.i, %bb.aw ], [ %i.is, %bb.au ]
  %.045.i.i = getelementptr inbounds nuw i8, ptr %.pn67.i.i, i64 8 ; 3 uses
  %.049.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8 ; 5 uses
  %i.iw = icmp ult ptr %.049.i.i, %i.df
  br i1 %i.iw, label %bb.aw, label %.loopexit.i.i

bb.aw:                                            ; preds = %.preheader.i.i
  %.045.val.i.i = load i64, ptr %.045.i.i, align 1, !tbaa !26 ; 2 uses
  %.049.val.i.i = load i64, ptr %.049.i.i, align 1, !tbaa !26 ; 2 uses
  %.not59.i.i = icmp eq i64 %.045.val.i.i, %.049.val.i.i
  br i1 %.not59.i.i, label %.preheader.i.i, label %.thread63.i.i

.thread63.i.i:                                    ; preds = %bb.aw
  %i.ix = xor i64 %.049.val.i.i, %.045.val.i.i
  %i.iy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ix, i1 true)
  %i.iz = lshr i64 %i.iy, 3
  %i.ja = getelementptr inbounds nuw i8, ptr %.049.i.i, i64 %i.iz
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = sub i64 %i.jb, %i.ek
  br label %ZSTD_count.exit.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %bb.at
  %.251.i.i = phi ptr [ %i.ef, %bb.at ], [ %.049.i.i, %.preheader.i.i ] ; 5 uses
  %.247.i.i = phi ptr [ %i.is, %bb.at ], [ %.045.i.i, %.preheader.i.i ] ; 4 uses
  %i.jd = icmp ult ptr %.251.i.i, %i.dg
  br i1 %i.jd, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %.loopexit.i.i
  %.247.val.i.i = load i32, ptr %.247.i.i, align 1, !tbaa !25
  %.251.val.i.i = load i32, ptr %.251.i.i, align 1, !tbaa !25
  %i.je = icmp eq i32 %.247.val.i.i, %.251.val.i.i
  br i1 %i.je, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jf = getelementptr inbounds nuw i8, ptr %.251.i.i, i64 4
  %i.jg = getelementptr inbounds nuw i8, ptr %.247.i.i, i64 4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %.loopexit.i.i
  %.352.i.i = phi ptr [ %i.jf, %bb.ay ], [ %.251.i.i, %bb.ax ], [ %.251.i.i, %.loopexit.i.i ] ; 5 uses
  %.348.i.i = phi ptr [ %i.jg, %bb.ay ], [ %.247.i.i, %bb.ax ], [ %.247.i.i, %.loopexit.i.i ] ; 4 uses
  %i.jh = icmp ult ptr %.352.i.i, %i.dh
  br i1 %i.jh, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %.348.val.i.i = load i16, ptr %.348.i.i, align 1, !tbaa !70
  %.352.val.i.i = load i16, ptr %.352.i.i, align 1, !tbaa !70
  %i.ji = icmp eq i16 %.348.val.i.i, %.352.val.i.i
  br i1 %i.ji, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jj = getelementptr inbounds nuw i8, ptr %.352.i.i, i64 2
  %i.jk = getelementptr inbounds nuw i8, ptr %.348.i.i, i64 2
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %.453.i.i = phi ptr [ %i.jj, %bb.bb ], [ %.352.i.i, %bb.ba ], [ %.352.i.i, %bb.az ] ; 4 uses
  %.4.i.i = phi ptr [ %i.jk, %bb.bb ], [ %.348.i.i, %bb.ba ], [ %.348.i.i, %bb.az ]
  %i.jl = icmp ult ptr %.453.i.i, %i.aj
  br i1 %i.jl, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jm = load i8, ptr %.4.i.i, align 1, !tbaa !29
  %i.jn = load i8, ptr %.453.i.i, align 1, !tbaa !29
  %i.jo = icmp eq i8 %i.jm, %i.jn
  %spec.select.idx.i.i = zext i1 %i.jo to i64
  %spec.select.i268.i = getelementptr inbounds nuw i8, ptr %.453.i.i, i64 %spec.select.idx.i.i
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.5.i.i = phi ptr [ %.453.i.i, %bb.bc ], [ %spec.select.i268.i, %bb.bd ]
  %i.jp = ptrtoint ptr %.5.i.i to i64
  %i.jq = sub i64 %i.jp, %i.ek
  br label %ZSTD_count.exit.i

ZSTD_count.exit.i:                                ; preds = %bb.be, %.thread63.i.i, %bb.av
  %.3.i.i = phi i64 [ %i.jc, %.thread63.i.i ], [ %i.jq, %bb.be ], [ %i.iv, %bb.av ] ; 3 uses
  %.not252.i = icmp ult i64 %.3.i.i, %i.cr
  br i1 %.not252.i, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i, label %bb.bf

bb.bf:                                            ; preds = %ZSTD_count.exit.i
  %i.jr = icmp ugt i32 %i.iq, %.val262.i
  %or.cond11.i.i = and i1 %i.es, %i.jr
  br i1 %or.cond11.i.i, label %.lr.ph.i270.i, label %ZSTD_ldm_countBackwardsMatch.exit.thread279.i

.lr.ph.i270.i:                                    ; preds = %bb.bf, %bb.bg
  %.014.i.i = phi i64 [ %i.jx, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  %.0913.i.i = phi ptr [ %i.js, %bb.bg ], [ %i.ef, %bb.bf ]
  %.01012.i.i = phi ptr [ %i.ju, %bb.bg ], [ %i.is, %bb.bf ]
  %i.js = getelementptr inbounds i8, ptr %.0913.i.i, i64 -1 ; 3 uses
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !29
  %i.ju = getelementptr inbounds i8, ptr %.01012.i.i, i64 -1 ; 3 uses
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !29
  %i.jw = icmp eq i8 %i.jt, %i.jv
  br i1 %i.jw, label %bb.bg, label %ZSTD_ldm_countBackwardsMatch.exit.thread279.i

bb.bg:                                            ; preds = %.lr.ph.i270.i
  %i.jx = add i64 %.014.i.i, 1                    ; 2 uses
  %i.jy = icmp ugt ptr %i.js, %.1238318.i
  %i.jz = icmp ugt ptr %i.ju, %i.co
  %or.cond.i271.i = and i1 %i.jy, %i.jz
  br i1 %or.cond.i271.i, label %.lr.ph.i270.i, label %ZSTD_ldm_countBackwardsMatch.exit.thread279.i, !llvm.loop !51

ZSTD_ldm_countBackwardsMatch.exit.thread279.i:    ; preds = %bb.bg, %.lr.ph.i270.i, %bb.bf
  %.2.i = phi i64 [ 0, %bb.bf ], [ %.014.i.i, %.lr.ph.i270.i ], [ %i.jx, %bb.bg ] ; 2 uses
  %i.ka = add i64 %.2.i, %.3.i.i                  ; 2 uses
  %i.kb = icmp ugt i64 %i.ka, %.0213309.i
  br i1 %i.kb, label %bb.bh, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i

bb.bh:                                            ; preds = %ZSTD_ldm_countBackwardsMatch.exit.thread279.i
  br label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i

ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i: ; preds = %bb.bh, %ZSTD_ldm_countBackwardsMatch.exit.thread279.i, %ZSTD_count.exit.i, %bb.as, %.lr.ph312.split.i
  %.2221.i = phi i64 [ %.0219307.i, %ZSTD_count.exit.i ], [ %.0219307.i, %.lr.ph312.split.i ], [ %.0219307.i, %ZSTD_ldm_countBackwardsMatch.exit.thread279.i ], [ %.0219307.i, %bb.as ], [ %.3.i.i, %bb.bh ] ; 2 uses
  %.2218.i = phi i64 [ %.0216308.i, %ZSTD_count.exit.i ], [ %.0216308.i, %.lr.ph312.split.i ], [ %.0216308.i, %ZSTD_ldm_countBackwardsMatch.exit.thread279.i ], [ %.0216308.i, %bb.as ], [ %.2.i, %bb.bh ] ; 2 uses
  %.2215.i = phi i64 [ %.0213309.i, %ZSTD_count.exit.i ], [ %.0213309.i, %.lr.ph312.split.i ], [ %.0213309.i, %ZSTD_ldm_countBackwardsMatch.exit.thread279.i ], [ %.0213309.i, %bb.as ], [ %i.ka, %bb.bh ]
  %.2211.i = phi ptr [ %.0209311.i, %ZSTD_count.exit.i ], [ %.0209311.i, %.lr.ph312.split.i ], [ %.0209311.i, %ZSTD_ldm_countBackwardsMatch.exit.thread279.i ], [ %.0209311.i, %bb.as ], [ %.0212310.i, %bb.bh ] ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.0212310.i, i64 8 ; 2 uses
  %i.kd = icmp ult ptr %i.kc, %i.eq
  br i1 %i.kd, label %.lr.ph312.split.i, label %._crit_edge.i, !llvm.loop !52

._crit_edge.i:                                    ; preds = %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i
  %.0219.lcssa.i = phi i64 [ %.2221.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ %.2221.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ] ; 2 uses
  %.0216.lcssa.i = phi i64 [ %.2218.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ %.2218.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ] ; 2 uses
  %.0209.lcssa.i = phi ptr [ %.2211.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ %.2211.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ] ; 2 uses
  %i.ke = icmp eq ptr %.0209.lcssa.i, null
  br i1 %i.ke, label %.sink.split.i, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge.i
  %i.kf = load i64, ptr %i.k, align 8, !tbaa !33  ; 3 uses
  %i.kg = load i64, ptr %i.l, align 8, !tbaa !56
  %.not249.i = icmp eq i64 %i.kf, %i.kg
  br i1 %.not249.i, label %ZSTD_ldm_generateSequences_internal.exit.thread72, label %bb.bj

ZSTD_ldm_generateSequences_internal.exit.thread72: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.critedge

bb.bj:                                            ; preds = %bb.bi
  %i.kh = load ptr, ptr %1, align 8, !tbaa !37
  %i.ki = getelementptr inbounds nuw [12 x i8], ptr %i.kh, i64 %i.kf ; 3 uses
  %i.kj = add i64 %.0216.lcssa.i, %.0219.lcssa.i
  %i.kk = load i32, ptr %.0209.lcssa.i, align 4, !tbaa !61
  %i.kl = sub i32 %i.em, %i.kk
  %i.km = sub i64 0, %.0216.lcssa.i
  %i.kn = getelementptr inbounds i8, ptr %i.ef, i64 %i.km
  %i.ko = ptrtoint ptr %i.kn to i64
  %i.kp = ptrtoint ptr %.1238318.i to i64
  %i.kq = sub i64 %i.ko, %i.kp
  %i.kr = trunc i64 %i.kq to i32
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !39
  %i.kt = trunc i64 %i.kj to i32
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store i32 %i.kt, ptr %i.ku, align 4, !tbaa !40
  store i32 %i.kl, ptr %i.ki, align 4, !tbaa !71
  %i.kv = add i64 %i.kf, 1
  store i64 %i.kv, ptr %i.k, align 8, !tbaa !33
  %i.kw = zext i32 %i.ej to i64                   ; 2 uses
  %i.kx = load i32, ptr %i.v, align 4, !tbaa !15  ; 2 uses
  %.sroa.6.0.insert.ext34.i = zext i32 %i.eh to i64
  %.sroa.6.0.insert.shift35.i = shl nuw i64 %.sroa.6.0.insert.ext34.i, 32
  %.sroa.0.0.insert.ext25.i = and i64 %i.el, 4294967295
  %.sroa.0.0.insert.insert27.i = or disjoint i64 %.sroa.6.0.insert.shift35.i, %.sroa.0.0.insert.ext25.i
  %.val256.i = load ptr, ptr %i.t, align 8, !tbaa !27
  %.val257.i = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.ky = getelementptr inbounds nuw i8, ptr %.val257.i, i64 %i.kw ; 2 uses
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !29  ; 2 uses
  %6 = zext i8 %i.kz to i32
  %i.la = zext nneg i32 %i.kx to i64
  %i.lb = shl i64 %i.kw, %i.la
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %.val256.i, i64 %i.lb
  %i.ld = zext i8 %i.kz to i64
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.ld
  store i64 %.sroa.0.0.insert.insert27.i, ptr %i.le, align 4
  %7 = add nuw nsw i32 %6, 1
  %notmask.i273.i = shl nsw i32 -1, %i.kx
  %8 = xor i32 %notmask.i273.i, -1
  %9 = and i32 %7, %8
  %10 = trunc i32 %9 to i8
  store i8 %10, ptr %i.ky, align 1, !tbaa !29
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.0219.lcssa.i ; 4 uses
  %i.lg = icmp ugt ptr %i.lf, %i.dp
  br i1 %i.lg, label %.critedge.i, label %bb.bk

.critedge.i:                                      ; preds = %bb.bj
  %i.lh = sub i64 0, %i.dl
  %i.li = getelementptr inbounds i8, ptr %i.lf, i64 %i.lh
  br label %.loopexit.i

.sink.split.i:                                    ; preds = %._crit_edge.i, %bb.n
  %i.lj = zext i32 %i.ej to i64                   ; 2 uses
  %i.lk = load i32, ptr %i.v, align 4, !tbaa !15  ; 2 uses
  %.sroa.6.0.insert.ext.i = zext i32 %i.eh to i64
  %.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.6.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = and i64 %i.el, 4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.6.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.val260.i = load ptr, ptr %i.t, align 8, !tbaa !27
  %.val261.i = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.ll = getelementptr inbounds nuw i8, ptr %.val261.i, i64 %i.lj ; 2 uses
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !29  ; 2 uses
  %11 = zext i8 %i.lm to i32
  %i.ln = zext nneg i32 %i.lk to i64
  %i.lo = shl i64 %i.lj, %i.ln
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %.val260.i, i64 %i.lo
  %i.lq = zext i8 %i.lm to i64
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %i.lq
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.lr, align 4
  %12 = add nuw nsw i32 %11, 1
  %notmask.i.i = shl nsw i32 -1, %i.lk
  %13 = xor i32 %notmask.i.i, -1
  %14 = and i32 %12, %13
  %15 = trunc i32 %14 to i8
  store i8 %15, ptr %i.ll, align 1, !tbaa !29
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split.i, %bb.bj
  %.2239.ph.i = phi ptr [ %i.lf, %bb.bj ], [ %.1238318.i, %.sink.split.i ] ; 2 uses
  %indvars.iv.next338.i = add nuw nsw i64 %indvars.iv337.i, 1 ; 2 uses
  %exitcond341.not.i = icmp eq i64 %indvars.iv.next338.i, %wide.trip.count.i63
  br i1 %exitcond341.not.i, label %.loopexit.i, label %bb.n, !llvm.loop !53

.loopexit.i:                                      ; preds = %bb.bk, %.critedge.i, %bb.l
  %.3240.i = phi ptr [ %i.lf, %.critedge.i ], [ %.0237323.i, %bb.l ], [ %.2239.ph.i, %bb.bk ] ; 2 uses
  %.3235.i = phi ptr [ %i.li, %.critedge.i ], [ %.0232324.i, %bb.l ], [ %.0232324.i, %bb.bk ]
  %i.ls = getelementptr inbounds nuw i8, ptr %.3235.i, i64 %i.dl ; 2 uses
  %i.lt = icmp ult ptr %i.ls, %i.cq
  br i1 %i.lt, label %bb.l, label %ZSTD_ldm_generateSequences_internal.exit.loopexit, !llvm.loop !54

ZSTD_ldm_generateSequences_internal.exit.loopexit: ; preds = %.loopexit.i
  %.pre109 = ptrtoint ptr %.3240.i to i64
  %.pre111 = sub i64 %i.ak, %.pre109
  br label %ZSTD_ldm_generateSequences_internal.exit

ZSTD_ldm_generateSequences_internal.exit:         ; preds = %ZSTD_ldm_generateSequences_internal.exit.loopexit, %ZSTD_ldm_gear_reset.exit.i
  %.pre-phi112 = phi i64 [ %.pre111, %ZSTD_ldm_generateSequences_internal.exit.loopexit ], [ %i.al, %ZSTD_ldm_gear_reset.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.lu = icmp ult i64 %.pre-phi112, -119
  br i1 %i.lu, label %ZSTD_ldm_generateSequences_internal.exit._crit_edge, label %.critedge

ZSTD_ldm_generateSequences_internal.exit._crit_edge: ; preds = %ZSTD_ldm_generateSequences_internal.exit
  %.pre103 = load i64, ptr %i.k, align 8, !tbaa !33
  br label %bb.bl

bb.bl:                                            ; preds = %ZSTD_ldm_generateSequences_internal.exit._crit_edge, %ZSTD_ldm_generateSequences_internal.exit.thread
  %i.lv = phi i64 [ %i.ab, %ZSTD_ldm_generateSequences_internal.exit.thread ], [ %.pre103, %ZSTD_ldm_generateSequences_internal.exit._crit_edge ] ; 2 uses
  %.6.i69 = phi i64 [ %i.al, %ZSTD_ldm_generateSequences_internal.exit.thread ], [ %.pre-phi112, %ZSTD_ldm_generateSequences_internal.exit._crit_edge ]
  %i.lw = icmp ult i64 %i.ab, %i.lv
  br i1 %i.lw, label %bb.bm, label %.split

.split:                                           ; preds = %bb.bl
  %i.lx = add i64 %i.al, %.05588
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ly = trunc i64 %.05588 to i32
  %i.lz = load ptr, ptr %1, align 8, !tbaa !37
  %i.ma = getelementptr inbounds nuw [12 x i8], ptr %i.lz, i64 %i.ab
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 4 ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !39
  %i.md = add i32 %i.mc, %i.ly
  store i32 %i.md, ptr %i.mb, align 4, !tbaa !39
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.split
  %.25778 = phi i64 [ %i.lx, %.split ], [ %.6.i69, %bb.bm ]
  %i.me = add nuw nsw i64 %.05887, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.me, %i.j
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !55

.critedge:                                        ; preds = %bb.bn, %bb.b, %ZSTD_ldm_generateSequences_internal.exit, %bb.a, %ZSTD_ldm_generateSequences_internal.exit.thread72
  %.2 = phi i64 [ -70, %ZSTD_ldm_generateSequences_internal.exit.thread72 ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.bn ], [ %.pre-phi112, %ZSTD_ldm_generateSequences_internal.exit ]
  ret i64 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ZSTD_ldm_skipSequences(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %.not53 = icmp eq i64 %1, 0
  br i1 %.not53, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !33   ; 3 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %i.d = icmp ult i64 %.pre, %i.c
  br i1 %i.d, label %.lr.ph103.preheader, label %.critedge

.lr.ph103.preheader:                              ; preds = %.lr.ph
  %i.e = load ptr, ptr %0, align 8, !tbaa !37
  br label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %bb.h
  %.02754102 = phi i64 [ %i.z, %bb.h ], [ %1, %.lr.ph103.preheader ] ; 3 uses
  %i.f = phi i64 [ %i.aa, %bb.h ], [ %.pre, %.lr.ph103.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39   ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %.not34 = icmp ugt i64 %.02754102, %i.j
  br i1 %.not34, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph103
  %i.k = trunc nuw i64 %.02754102 to i32
  %i.l = sub nuw i32 %i.i, %i.k
  store i32 %i.l, ptr %i.h, align 4, !tbaa !39
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph103
  %i.m = sub nuw i64 %.02754102, %i.j             ; 3 uses
  store i32 0, ptr %i.h, align 4, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !40   ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp ult i64 %i.m, %i.p
  br i1 %i.q, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.r = trunc nuw i64 %i.m to i32
  %i.s = sub nuw i32 %i.o, %i.r                   ; 3 uses
  store i32 %i.s, ptr %i.n, align 4, !tbaa !40
  %i.t = icmp ult i32 %i.s, %2
  br i1 %i.t, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.u = add nuw i64 %i.f, 1                      ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.c
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !39
  %i.y = add i32 %i.x, %i.s
  store i32 %i.y, ptr %i.w, align 4, !tbaa !39
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i64 %i.u, ptr %i.a, align 8, !tbaa !41
  br label %.critedge

bb.h:                                             ; preds = %bb.c
  %i.z = sub nuw i64 %i.m, %i.p                   ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !40
  %i.aa = add nuw i64 %i.f, 1                     ; 3 uses
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !41
  %.not = icmp ne i64 %i.z, 0
  %i.ab = icmp ult i64 %i.aa, %i.c
  %or.cond = select i1 %.not, i1 %i.ab, i1 false
  br i1 %or.cond, label %.lr.ph103, label %.critedge

.critedge:                                        ; preds = %bb.h, %.lr.ph, %bb.a, %bb.d, %bb.g, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ZSTD_ldm_skipRawSeqStoreBytes(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !42
  %i.c = add i64 %i.b, %1
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %.not27 = icmp eq i32 %i.d, 0
  br i1 %.not27, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !33   ; 3 uses
  %.promoted = load i64, ptr %i.e, align 8, !tbaa !41 ; 4 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted, i64 %i.g)
  %exitcond.not42.not = icmp ult i64 %.promoted, %i.g
  br i1 %exitcond.not42.not, label %.lr.ph44.preheader, label %.loopexit

.lr.ph44.preheader:                               ; preds = %.lr.ph
  %i.h = load ptr, ptr %0, align 8, !tbaa !37
  br label %.lr.ph44

bb.b:                                             ; preds = %bb.c
  %exitcond.not = icmp eq i64 %i.n, %umax
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph44

.lr.ph44:                                         ; preds = %.lr.ph44.preheader, %bb.b
  %.0182843 = phi i32 [ %i.m, %bb.b ], [ %i.d, %.lr.ph44.preheader ] ; 3 uses
  %i.i = phi i64 [ %i.n, %bb.b ], [ %.promoted, %.lr.ph44.preheader ] ; 3 uses
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !25
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !25
  %i.k = add i32 %.sroa.5.0.copyload, %.sroa.3.0.copyload ; 2 uses
  %.not21 = icmp ult i32 %.0182843, %i.k
  br i1 %.not21, label %.thread, label %bb.c

.thread:                                          ; preds = %.lr.ph44
  %i.l = zext i32 %.0182843 to i64
  store i64 %i.l, ptr %i.a, align 8, !tbaa !42
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph44
  %i.m = sub nuw i32 %.0182843, %i.k              ; 2 uses
  %i.n = add i64 %i.i, 1                          ; 4 uses
  store i64 %i.n, ptr %i.e, align 8, !tbaa !41
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.critedge, label %bb.b

.loopexit:                                        ; preds = %bb.b, %.lr.ph, %.thread
  %i.o = phi i64 [ %i.i, %.thread ], [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %i.p = icmp eq i64 %i.o, %i.g
  br i1 %i.p, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c, %bb.a, %.loopexit
  store i64 0, ptr %i.a, align 8, !tbaa !42
end_hunk_1
