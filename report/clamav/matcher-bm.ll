Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/matcher-bm?download=true
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cli_bm_initoff:bb.a
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !35
  %.not70 = icmp eq i32 %i.bf, %i.bk
  br i1 %.not70, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge79, %bb.n
  %.pre-phi85 = phi i32 [ %.pre84, %._crit_edge79 ], [ %i.bf, %bb.n ]
  %i.bl = phi ptr [ %.pre80, %._crit_edge79 ], [ %i.bg, %bb.n ] ; 2 uses
  %i.bm = zext i32 %i.bd to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm
  store i32 %.pre-phi85, ptr %i.bn, align 4, !tbaa !35
  %i.bo = load i32, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !35
  %i.bs = zext i32 %i.br to i64
  %.not71 = icmp samesign ugt i64 %i.bc, %i.bs
  br i1 %.not71, label %.sink.split, label %bb.p

.sink.split:                                      ; preds = %bb.o, %bb.h
  %.sink95 = phi i32 [ %i.ac, %bb.h ], [ %i.bo, %bb.o ]
  %.ph = phi ptr [ %i.l, %bb.h ], [ %i.as, %bb.o ]
  %i.bt = add i32 %.sink95, 1
  store i32 %i.bt, ptr %i.c, align 8, !tbaa !55
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.k, %bb.l, %bb.n, %bb.o, %bb.h
  %i.bu = phi ptr [ %i.as, %bb.o ], [ %i.as, %bb.k ], [ %i.as, %bb.l ], [ %i.l, %bb.h ], [ %i.as, %bb.n ], [ %.ph, %.sink.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bv = load i32, ptr %i.a, align 8, !tbaa !50
  %i.bw = zext i32 %i.bv to i64
  %i.bx = icmp samesign ult i64 %indvars.iv.next, %i.bw
  br i1 %i.bx, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p
  %.pre82 = load i32, ptr %i.c, align 8, !tbaa !55
  %.pre81 = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.by = zext i32 %.pre82 to i64
  tail call void @cli_qsort(ptr noundef %.pre81, i64 noundef %i.by, i64 noundef 4, ptr noundef null) #9
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.j, %bb.f, %bb.d, %bb.b
  %.060 = phi i32 [ %i.an, %bb.j ], [ 0, %._crit_edge ], [ 20, %bb.f ], [ 20, %bb.d ], [ 0, %bb.b ]
  ret i32 %.060
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare void @cli_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cli_bm_freeoff(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  tail call void @free(ptr noundef %i.a) #9
  store ptr null, ptr %0, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  tail call void @free(ptr noundef %i.c) #9
  store ptr null, ptr %i.b, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define void @cli_bm_free(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  tail call void @mpool_free(ptr noundef %i.d, ptr noundef nonnull %i.b) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51   ; 2 uses
  %.not31 = icmp eq ptr %i.f, null
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  tail call void @mpool_free(ptr noundef %i.h, ptr noundef nonnull %i.f) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %.not32 = icmp eq ptr %i.j, null
  br i1 %.not32, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43   ; 2 uses
  %.not3336 = icmp eq ptr %i.n, null
  br i1 %.not3336, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.j
  %.02637 = phi ptr [ %i.p, %bb.j ], [ %i.n, %bb.f ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02637, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02637, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44   ; 2 uses
  %.not34 = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !40
  br i1 %.not34, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.t = load ptr, ptr %.02637, align 8, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %.sink = phi ptr [ %i.t, %bb.g ], [ %i.r, %.lr.ph ]
  tail call void @mpool_free(ptr noundef %i.s, ptr noundef %.sink) #9
  %i.u = getelementptr inbounds nuw i8, ptr %.02637, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15   ; 2 uses
  %.not35 = icmp eq ptr %i.v, null
  br i1 %.not35, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !40
  tail call void @mpool_free(ptr noundef %i.w, ptr noundef nonnull %i.v) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !40
  tail call void @mpool_free(ptr noundef %i.x, ptr noundef nonnull %.02637) #9
  %.not33 = icmp eq ptr %i.p, null
  br i1 %.not33, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 63496
  br i1 %exitcond.not, label %bb.k, label %bb.f

bb.k:                                             ; preds = %._crit_edge
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !41
  tail call void @mpool_free(ptr noundef %i.y, ptr noundef %i.z) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cli_bm_scanbuff(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, ptr noundef %6, ptr nofree noundef captures(address_is_null) %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.loopexit293, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %.not245 = icmp eq ptr %i.d, null
  %i.e = icmp ult i32 %1, 3
  %or.cond290 = or i1 %i.e, %.not245
  br i1 %or.cond290, label %.loopexit293, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not246 = icmp eq ptr %7, null                 ; 5 uses
  br i1 %.not246, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !55   ; 4 uses
  %.not247 = icmp eq i32 %i.g, 0
  br i1 %.not247, label %.loopexit293, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !53   ; 2 uses
  %i.j = icmp eq i32 %i.i, %i.g
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.k, ptr %i.h, align 4, !tbaa !53
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pr = phi i32 [ %i.k, %bb.f ], [ %i.i, %bb.e ] ; 4 uses
  %.not248327 = icmp eq i32 %.pr, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !56 ; 4 uses
  br i1 %.not248327, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.l = zext i32 %.pr to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !35
  %i.o = icmp ugt i32 %i.n, %5
  br i1 %i.o, label %bb.h, label %.critedge

9:                                                ; preds = %bb.h
  %10 = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.next
  %11 = load i32, ptr %10, align 4, !tbaa !35
  %12 = icmp ugt i32 %11, %5
  br i1 %12, label %bb.h, label %..critedge.loopexit.split.loop.exit501_crit_edge

bb.h:                                             ; preds = %.lr.ph, %9
  %indvars.iv557 = phi i64 [ %indvars.iv.next, %9 ], [ %i.l, %.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv557, -1 ; 4 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 3 uses
  store i32 %indvars, ptr %i.h, align 4, !tbaa !53
  %.not248 = icmp eq i32 %indvars, 0
  br i1 %.not248, label %.critedge, label %9

..critedge.loopexit.split.loop.exit501_crit_edge: ; preds = %9
  %13 = trunc nuw i64 %indvars.iv.next to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %.lr.ph, %..critedge.loopexit.split.loop.exit501_crit_edge, %bb.g
  %14 = phi i32 [ 0, %bb.g ], [ %.pr, %.lr.ph ], [ %indvars, %..critedge.loopexit.split.loop.exit501_crit_edge ], [ 0, %bb.h ]
  %.lcssa326 = phi i32 [ 0, %bb.g ], [ %.pr, %.lr.ph ], [ %13, %..critedge.loopexit.split.loop.exit501_crit_edge ], [ 0, %bb.h ] ; 2 uses
  %i.p = zext i32 %.lcssa326 to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !35
  %i.s = icmp ult i32 %i.r, %5
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.t = add i32 %.lcssa326, 1                    ; 2 uses
  store i32 %i.t, ptr %i.h, align 4, !tbaa !53
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge
  %i.u = phi i32 [ %i.t, %bb.i ], [ %14, %.critedge ] ; 2 uses
  %.not249 = icmp ult i32 %i.u, %i.g
  br i1 %.not249, label %bb.k, label %.loopexit293

bb.k:                                             ; preds = %bb.j
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !35
  %i.y = sub i32 %i.x, %5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.c
  %.0206 = phi i32 [ %i.y, %bb.k ], [ 0, %bb.c ]  ; 2 uses
  %i.z = add i32 %1, -2                           ; 3 uses
  %i.aa = icmp ult i32 %.0206, %i.z
  br i1 %i.aa, label %.lr.ph337.lr.ph, label %.outer._crit_edge

.lr.ph337.lr.ph:                                  ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.not266 = icmp eq ptr %6, null
  %.not268 = icmp eq ptr %2, null
  %.not269 = icmp eq ptr %8, null                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %.not271 = icmp eq ptr %3, null
  br label %.lr.ph337

.lr.ph337:                                        ; preds = %.lr.ph337.lr.ph, %.outer
  %.0.ph367 = phi i32 [ 0, %.lr.ph337.lr.ph ], [ %.4, %.outer ] ; 5 uses
  %.1207.ph366 = phi i32 [ %.0206, %.lr.ph337.lr.ph ], [ %.3209, %.outer ]
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !46
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph337, %bb.w
  %.1207336 = phi i32 [ %.1207.ph366, %.lr.ph337 ], [ %.2208, %bb.w ] ; 11 uses
  %i.ah = zext i32 %.1207336 to i64               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !42  ; 3 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = mul nuw nsw i64 %i.ak, 211
  %i.am = add nuw i32 %.1207336, 1                ; 2 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !42
  %i.aq = zext i8 %i.ap to i64
  %i.ar = mul nuw nsw i64 %i.aq, 37
  %i.as = add nuw nsw i64 %i.ar, %i.al
  %i.at = add nuw i32 %.1207336, 2
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !42
  %i.ax = zext i8 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.as, %i.ax            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !42  ; 2 uses
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.n, label %.loopexit.loopexit370

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ay
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !43 ; 4 uses
  %.not250 = icmp eq ptr %i.be, null
  br i1 %.not250, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 60
  %i.bg = load i16, ptr %i.bf, align 4, !tbaa !49
  %i.bh = icmp eq i16 %i.bg, 1
  br i1 %i.bh, label %bb.p, label %.lr.ph354

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 62
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !47
  %.not251 = icmp eq i8 %i.bj, %i.aj
  br i1 %.not251, label %.lr.ph354, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not246, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = add i32 %.1207336, %5                   ; 2 uses
  %i.bl = load i32, ptr %i.ae, align 8, !tbaa !55 ; 3 uses
  %.promoted = load i32, ptr %i.ad, align 4, !tbaa !53 ; 3 uses
  %i.bm = icmp ult i32 %.promoted, %i.bl
  br i1 %i.bm, label %.lr.ph330, label %.critedge2

.lr.ph330:                                        ; preds = %bb.r
  %i.bn = load ptr, ptr %i.ac, align 8, !tbaa !56
  %i.bo = zext i32 %.promoted to i64
  %wide.trip.count = zext i32 %i.bl to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph330, %bb.t
  %indvars.iv = phi i64 [ %i.bo, %.lr.ph330 ], [ %indvars.iv.next.a, %bb.t ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !35
  %.not277 = icmp ult i32 %i.bk, %i.bq
  br i1 %.not277, label %.critedge2.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.br = trunc nuw i64 %indvars.iv.next.a to i32
  store i32 %i.br, ptr %i.ad, align 4, !tbaa !53
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2.thread, label %bb.s

.critedge2.loopexit:                              ; preds = %bb.s
  %i.bs = trunc nuw i64 %indvars.iv to i32
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.r
  %.lcssa295 = phi i32 [ %.promoted, %bb.r ], [ %i.bs, %.critedge2.loopexit ] ; 2 uses
  %i.bt = icmp eq i32 %.lcssa295, %i.bl
  br i1 %i.bt, label %.critedge2.thread, label %bb.u

bb.u:                                             ; preds = %.critedge2
  %i.bu = load ptr, ptr %i.ac, align 8, !tbaa !56
  %i.bv = zext i32 %.lcssa295 to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !35 ; 2 uses
  %.not278 = icmp ult i32 %i.bk, %i.bx
  br i1 %.not278, label %bb.v, label %.critedge2.thread

.critedge2.thread:                                ; preds = %bb.u, %.critedge2, %bb.t
  %.not279 = icmp ne i32 %.0.ph367, 0
  %. = zext i1 %.not279 to i32
  br label %.loopexit293

bb.v:                                             ; preds = %bb.u
  %i.by = sub i32 %i.bx, %5
  br label %bb.w

bb.w:                                             ; preds = %bb.q, %bb.v
  %.2208 = phi i32 [ %i.by, %bb.v ], [ %i.am, %bb.q ] ; 2 uses
  %i.bz = icmp ult i32 %.2208, %i.z
  br i1 %i.bz, label %bb.m, label %.outer._crit_edge

.lr.ph354:                                        ; preds = %bb.p, %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 3 uses
  %i.cb = add i32 %.1207336, %5                   ; 3 uses
  %i.cc = sub nuw i32 %1, %.1207336
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph354, %.backedge
  %.1352 = phi i32 [ %.0.ph367, %.lr.ph354 ], [ %.1.be, %.backedge ] ; 15 uses
  %.0199349 = phi ptr [ %i.be, %.lr.ph354 ], [ %.0199.be, %.backedge ] ; 16 uses
  %.not274348 = phi i1 [ true, %.lr.ph354 ], [ %.not253, %.backedge ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0199349, i64 62
  %i.ce = load i8, ptr %i.cd, align 2, !tbaa !47
  %.not253 = icmp ne i8 %i.ce, %i.aj              ; 2 uses
  br i1 %.not253, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  br i1 %.not274348, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %.lr.ph343, %bb.az, %bb.ay, %bb.ar, %bb.an, %.critedge281, %bb.ag, %bb.ah, %bb.ae, %bb.ad, %bb.z, %bb.aa, %bb.y
  %.1.be = phi i32 [ %.1352, %bb.ad ], [ %.1352, %bb.y ], [ %.1352, %bb.z ], [ %.1352, %bb.ae ], [ %.1352, %bb.ag ], [ %.1352, %bb.ar ], [ %.1352, %bb.an ], [ %.1352, %.critedge281 ], [ %.1352, %bb.aa ], [ %.1352, %bb.ah ], [ %.2, %bb.az ], [ %.2, %bb.ay ], [ %.1352, %.lr.ph343 ] ; 2 uses
  %.0199.be.in = getelementptr inbounds nuw i8, ptr %.0199349, i64 48
  %.0199.be = load ptr, ptr %.0199.be.in, align 8, !tbaa !48 ; 2 uses
  %.not252 = icmp eq ptr %.0199.be, null
  br i1 %.not252, label %.loopexit, label %bb.x

bb.z:                                             ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %.0199349, i64 56
  %i.cg = load i16, ptr %i.cf, align 8, !tbaa !14
  %i.ch = zext i16 %i.cg to i32                   ; 3 uses
  %i.ci = add i32 %.1207336, %i.ch
  %i.cj = icmp ugt i32 %i.ci, %1
  br i1 %i.cj, label %.backedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = getelementptr inbounds nuw i8, ptr %.0199349, i64 58 ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !45 ; 3 uses
  %i.cm = zext i16 %i.cl to i32                   ; 6 uses
  %i.cn = icmp ult i32 %.1207336, %i.cm
  br i1 %i.cn, label %.backedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not246, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.co = getelementptr inbounds nuw i8, ptr %.0199349, i64 24
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !35
  %i.cq = icmp eq i32 %i.cp, 1
  br i1 %i.cq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cr = getelementptr inbounds nuw i8, ptr %.0199349, i64 40
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !52
  %i.ct = sub i32 %i.cb, %i.cm
  %.not255 = icmp eq i32 %i.cs, %i.ct
  br i1 %.not255, label %bb.af, label %.backedge

bb.ae:                                            ; preds = %bb.ac
  %i.cu = load ptr, ptr %7, align 8, !tbaa !57
  %i.cv = getelementptr inbounds nuw i8, ptr %.0199349, i64 40
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !52
  %i.cx = zext i32 %i.cw to i64
end_hunk_0
