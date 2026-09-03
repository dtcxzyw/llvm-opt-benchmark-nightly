Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/acecRe?download=true
inline.NumInlined: 241
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Vec_BitSetEntry:bb.a
  %i.ax = select i1 %.not65.i, i32 -1, i32 %i.aw
  %i.ay = and i32 %i.a, 31
  %i.az = shl nsw i32 -1, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !48 ; 5 uses
  %i.bc = sext i32 %i.ag to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !12
  %i.bf = and i32 %i.be, %i.ax
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !12
  %i.bg = sext i32 %i.ah to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !12
  %i.bj = and i32 %i.bi, %i.az
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !12
  %.169.i = add nsw i32 %i.ag, 1
  %i.bk = icmp slt i32 %.169.i, %i.ah
  br i1 %i.bk, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %i.bl = shl nsw i64 %i.bc, 2
  %i.bm = getelementptr i8, ptr %i.bb, i64 %i.bl
  %scevgep.i = getelementptr i8, ptr %i.bm, i64 4
  %i.bn = add nsw i32 %i.ah, -2
  %i.bo = sub nsw i32 %i.bn, %i.ag
  %i.bp = zext i32 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2
  %i.br = add nuw nsw i64 %i.bq, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.br, i1 false), !tbaa !12
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.preheader.i, %bb.o, %bb.n
  %.val5 = phi ptr [ %i.bb, %.lr.ph.preheader.i ], [ %i.bb, %bb.o ], [ %i.ap, %bb.n ]
  store i32 %i.a, ptr %i.b, align 4, !tbaa !49
  br label %Vec_BitFillExtra.exit

Vec_BitFillExtra.exit:                            ; preds = %.Vec_BitFillExtra.exit_crit_edge, %.loopexit.i
  %.val = phi ptr [ %.val.pre, %.Vec_BitFillExtra.exit_crit_edge ], [ %.val5, %.loopexit.i ]
  %i.bs = and i32 %1, 31
  %i.bt = shl nuw i32 1, %i.bs
  %i.bu = ashr i32 %1, 5
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !12
  %i.by = or i32 %i.bx, %i.bt
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !12
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @Ree_CollectInsiders(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val40 = load i32, ptr %i.a, align 8, !tbaa !46 ; 2 uses
  %i.b = ashr i32 %.val40, 5
  %i.c = and i32 %.val40, 31
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  %i.f = add nsw i32 %i.b, %i.e                   ; 4 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 6 uses
  %i.h = shl nsw i32 %i.f, 5                      ; 4 uses
  store i32 %i.h, ptr %i.g, align 8, !tbaa !50
  %.not.i.i = icmp eq i32 %i.f, 0                 ; 2 uses
  br i1 %.not.i.i, label %Vec_BitStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %i.f to i64
  %i.j = shl nsw i64 %i.i, 2                      ; 2 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #24
  br label %Vec_BitStart.exit

Vec_BitStart.exit:                                ; preds = %bb.a, %bb.b
  %.pre-phi8.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.l = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.l, ptr %i.n, align 8, !tbaa !48
  store i32 %i.h, ptr %i.m, align 4, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.pre-phi8.i, i1 false)
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 6 uses
  store i32 %i.h, ptr %i.o, align 8, !tbaa !50
  br i1 %.not.i.i, label %Vec_BitStart.exit46, label %bb.c

bb.c:                                             ; preds = %Vec_BitStart.exit
  %i.p = sext i32 %i.f to i64
  %i.q = shl nsw i64 %i.p, 2                      ; 2 uses
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #24
  br label %Vec_BitStart.exit46

Vec_BitStart.exit46:                              ; preds = %Vec_BitStart.exit, %bb.c
  %.pre-phi8.i45 = phi i64 [ %i.q, %bb.c ], [ 0, %Vec_BitStart.exit ]
  %i.s = phi ptr [ %i.r, %bb.c ], [ null, %Vec_BitStart.exit ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.s, ptr %i.u, align 8, !tbaa !48
  store i32 %i.h, ptr %i.t, align 4, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.s, i8 0, i64 %.pre-phi8.i45, i1 false)
  %i.v = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val47 = load i32, ptr %i.v, align 4, !tbaa !18 ; 2 uses
  %i.w = icmp sgt i32 %.val47, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_BitStart.exit46
  %i.x = getelementptr i8, ptr %1, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.val50 = phi i32 [ %.val47, %.lr.ph ], [ %.val, %bb.f ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ]
  %i.y = phi i64 [ 0, %.lr.ph ], [ %i.bf, %bb.f ]
  %.val38 = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val38, i64 %i.y ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !12 ; 3 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.z, align 4, !tbaa !12  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12 ; 2 uses
  %.val43 = load ptr, ptr %i.n, align 8, !tbaa !48 ; 3 uses
  %i.ag = and i32 %i.ad, 31
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = ashr i32 %i.ad, 5
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %.val43, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !12
  %i.am = or i32 %i.al, %i.ah
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !12
  %i.an = and i32 %i.af, 31
  %i.ao = shl nuw i32 1, %i.an
  %i.ap = ashr i32 %i.af, 5
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %.val43, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !12
  %i.at = or i32 %i.as, %i.ao
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !12
  %i.au = and i32 %i.ab, 31
  %i.av = shl nuw i32 1, %i.au
  %i.aw = ashr i32 %i.ab, 5
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %.val43, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !12
  %i.ba = or i32 %i.az, %i.av
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !12
  tail call void @Ree_CollectInsiders_rec(ptr noundef %0, i32 noundef %i.bc, ptr noundef nonnull %i.g, ptr noundef nonnull %i.o)
  tail call void @Ree_CollectInsiders_rec(ptr noundef %0, i32 noundef %i.be, ptr noundef nonnull %i.g, ptr noundef nonnull %i.o)
  %.val.pre = load i32, ptr %i.v, align 4, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.val = phi i32 [ %.val50, %bb.d ], [ %.val.pre, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = mul nuw nsw i64 %indvars.iv.next, 6     ; 2 uses
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = icmp sgt i32 %.val, %i.bg
  br i1 %i.bh, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !87

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !48
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %Vec_BitStart.exit46
  %i.bi = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.l, %Vec_BitStart.exit46 ] ; 2 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %Vec_BitFree.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.bi) #22
  br label %Vec_BitFree.exit

Vec_BitFree.exit:                                 ; preds = %._crit_edge, %bb.g
  tail call void @free(ptr noundef nonnull %i.g) #22
  ret ptr %i.o
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

declare void @Gia_ManCreateRefs(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Ree_ManCountFadds(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.a, align 4, !tbaa !18  ; 3 uses
  %i.b = icmp sgt i32 %.val, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.c, align 8, !tbaa !17 ; 9 uses
  %1 = add nsw i32 %.val, -1
  %2 = udiv i32 %1, 6
  %3 = add nuw nsw i32 %2, 1
  %wide.trip.count = zext nneg i32 %3 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %.val, 49
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.d = and i64 %wide.trip.count, 7              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 8, i64 %i.d
  %n.vec = sub nsw i64 %wide.trip.count, %i.f     ; 3 uses
  %i.g = mul nsw i64 %n.vec, 6
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %i.h = mul nuw i64 %index, 6                    ; 8 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %i.h
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %i.h
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %i.h
  %i.l = getelementptr [4 x i8], ptr %.val8, i64 %i.h
  %i.m = getelementptr [4 x i8], ptr %.val8, i64 %i.h
  %i.n = getelementptr [4 x i8], ptr %.val8, i64 %i.h
  %i.o = getelementptr [4 x i8], ptr %.val8, i64 %i.h
  %i.p = getelementptr [4 x i8], ptr %.val8, i64 %i.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.t = getelementptr i8, ptr %i.l, i64 80
  %i.u = getelementptr i8, ptr %i.m, i64 104
  %i.v = getelementptr i8, ptr %i.n, i64 128
  %i.w = getelementptr i8, ptr %i.o, i64 152
  %i.x = getelementptr i8, ptr %i.p, i64 176
  %i.y = load i32, ptr %i.q, align 4, !tbaa !12
  %i.z = load i32, ptr %i.r, align 4, !tbaa !12
  %i.aa = load i32, ptr %i.s, align 4, !tbaa !12
  %i.ab = load i32, ptr %i.t, align 4, !tbaa !12
  %i.ac = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %i.ad = insertelement <4 x i32> %i.ac, i32 %i.z, i64 1
  %i.ae = insertelement <4 x i32> %i.ad, i32 %i.aa, i64 2
  %i.af = insertelement <4 x i32> %i.ae, i32 %i.ab, i64 3
  %i.ag = load i32, ptr %i.u, align 4, !tbaa !12
  %i.ah = load i32, ptr %i.v, align 4, !tbaa !12
  %i.ai = load i32, ptr %i.w, align 4, !tbaa !12
  %i.aj = load i32, ptr %i.x, align 4, !tbaa !12
  %i.ak = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 1
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 2
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 3
  %i.ao = icmp ne <4 x i32> %i.af, zeroinitializer
  %i.ap = icmp ne <4 x i32> %i.an, zeroinitializer
  %i.aq = zext <4 x i1> %i.ao to <4 x i32>
  %i.ar = zext <4 x i1> %i.ap to <4 x i32>
  %i.as = add <4 x i32> %vec.phi, %i.aq           ; 2 uses
  %i.at = add <4 x i32> %vec.phi16, %i.ar         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.at, %i.as
  %i.av = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv11.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %i.g, %middle.block ]
  %.010.ph = phi i32 [ 0, %.lr.ph ], [ %i.av, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %scalar.ph ], [ %indvars.iv11.ph, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.010 = phi i32 [ %spec.select, %scalar.ph ], [ %.010.ph, %scalar.ph.preheader ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !12
  %.not = icmp ne i32 %i.ay, 0
  %i.az = zext i1 %.not to i32
  %spec.select = add nuw nsw i32 %.010, %i.az     ; 2 uses
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 6
  %exitcond.not = icmp eq i64 %indvars.iv.next12, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !89

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %scalar.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree nounwind uwtable
define void @Ree_ManPrintAdders(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val23 = load i32, ptr %i.a, align 4, !tbaa !18
  %i.b = icmp sgt i32 %.val23, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  %i.c = getelementptr i8, ptr %0, i64 8          ; 6 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %i.d = phi i64 [ %i.ae, %.lr.ph.split ], [ 0, %.lr.ph ] ; 6 uses
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.e) ; 0 uses
  %.val22 = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val22, i64 %i.d
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.h) ; 0 uses
  %.val21 = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val21, i64 %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.l) ; 0 uses
  %.val20 = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val20, i64 %i.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.p) ; 0 uses
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %.val19 = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val19, i64 %i.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !12
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.u) ; 0 uses
  %.val18 = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.val18, i64 %i.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i32, ptr %i.x, align 4, !tbaa !12
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.y) ; 0 uses
  %.val17 = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val17, i64 %i.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.ac) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = mul nuw nsw i64 %indvars.iv.next, 6     ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !18
  %i.af = trunc nuw i64 %i.ae to i32
  %i.ag = icmp sgt i32 %.val, %i.af
  br i1 %i.ag, label %.lr.ph.split, label %._crit_edge, !llvm.loop !90

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ree_ManComputeCutsTest(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #22
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8, !tbaa !94
  %.neg10 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !95
  %.neg = sdiv i64 %i.e, -1000
  %.neg11 = add i64 %.neg, %.neg10
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg11, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.f = call ptr @Ree_ManComputeCuts(ptr noundef %0, ptr noundef null, i32 noundef 1) ; 5 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val.i = load i32, ptr %i.g, align 4, !tbaa !18 ; 4 uses
  %i.h = icmp sgt i32 %.val.i, 0
  br i1 %i.h, label %.lr.ph.i, label %Ree_ManCountFadds.exit

.lr.ph.i:                                         ; preds = %Abc_Clock.exit
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val8.i = load ptr, ptr %i.i, align 8, !tbaa !17 ; 9 uses
  %3 = add nsw i32 %.val.i, -1
  %4 = udiv i32 %3, 6
  %5 = add nuw nsw i32 %4, 1
  %wide.trip.count.i = zext nneg i32 %5 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %.val.i, 49
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %i.j = and i64 %wide.trip.count.i, 7            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 8, i64 %i.j
  %n.vec = sub nsw i64 %wide.trip.count.i, %i.l   ; 3 uses
  %i.m = mul nsw i64 %n.vec, 6
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi12 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %i.n = mul nuw i64 %index, 6                    ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val8.i, i64 %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val8.i, i64 %i.n
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val8.i, i64 %i.n
  %i.r = getelementptr [4 x i8], ptr %.val8.i, i64 %i.n
  %i.s = getelementptr [4 x i8], ptr %.val8.i, i64 %i.n
  %i.t = getelementptr [4 x i8], ptr %.val8.i, i64 %i.n
  %i.u = getelementptr [4 x i8], ptr %.val8.i, i64 %i.n
  %i.v = getelementptr [4 x i8], ptr %.val8.i, i64 %i.n
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.z = getelementptr i8, ptr %i.r, i64 80
  %i.aa = getelementptr i8, ptr %i.s, i64 104
  %i.ab = getelementptr i8, ptr %i.t, i64 128
  %i.ac = getelementptr i8, ptr %i.u, i64 152
  %i.ad = getelementptr i8, ptr %i.v, i64 176
  %i.ae = load i32, ptr %i.w, align 4, !tbaa !12
  %i.af = load i32, ptr %i.x, align 4, !tbaa !12
  %i.ag = load i32, ptr %i.y, align 4, !tbaa !12
  %i.ah = load i32, ptr %i.z, align 4, !tbaa !12
  %i.ai = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.af, i64 1
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 2
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 3
  %i.am = load i32, ptr %i.aa, align 4, !tbaa !12
  %i.an = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.ao = load i32, ptr %i.ac, align 4, !tbaa !12
  %i.ap = load i32, ptr %i.ad, align 4, !tbaa !12
  %i.aq = insertelement <4 x i32> poison, i32 %i.am, i64 0
  %i.ar = insertelement <4 x i32> %i.aq, i32 %i.an, i64 1
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 2
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 3
  %i.au = icmp ne <4 x i32> %i.al, zeroinitializer
  %i.av = icmp ne <4 x i32> %i.at, zeroinitializer
  %i.aw = zext <4 x i1> %i.au to <4 x i32>
  %i.ax = zext <4 x i1> %i.av to <4 x i32>
  %i.ay = add <4 x i32> %vec.phi, %i.aw           ; 2 uses
  %i.az = add <4 x i32> %vec.phi12, %i.ax         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.az, %i.ay
  %i.bb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv11.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.m, %middle.block ]
  %.010.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.bb, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv11.i = phi i64 [ %indvars.iv.next12.i, %scalar.ph ], [ %indvars.iv11.i.ph, %scalar.ph.preheader ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.010.i = phi i32 [ %spec.select.i, %scalar.ph ], [ %.010.i.ph, %scalar.ph.preheader ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.val8.i, i64 %indvars.iv.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !12
  %.not.i = icmp ne i32 %i.be, 0
  %i.bf = zext i1 %.not.i to i32
  %spec.select.i = add nuw nsw i32 %.010.i, %i.bf ; 2 uses
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 6
  %exitcond.not.i = icmp eq i64 %indvars.iv.next12.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Ree_ManCountFadds.exit, label %scalar.ph, !llvm.loop !92

Ree_ManCountFadds.exit:                           ; preds = %scalar.ph, %Abc_Clock.exit
  %.0.lcssa.i = phi i32 [ 0, %Abc_Clock.exit ], [ %spec.select.i, %scalar.ph ] ; 2 uses
  call void @Ree_ManPrintAdders(ptr noundef nonnull %i.f, i32 noundef 1)
  %i.bg = sdiv i32 %.val.i, 6
  %i.bh = sub nsw i32 %i.bg, %.0.lcssa.i
  %i.bi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %.0.lcssa.i, i32 noundef %i.bh) ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !17 ; 2 uses
  %.not.i7 = icmp eq ptr %i.bk, null
  br i1 %.not.i7, label %Vec_IntFree.exit, label %bb.c

bb.c:                                             ; preds = %Ree_ManCountFadds.exit
  call void @free(ptr noundef nonnull %i.bk) #22
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Ree_ManCountFadds.exit, %bb.c
  call void @free(ptr noundef nonnull %i.f) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.bl = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #22
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %Abc_Clock.exit9, label %bb.d

bb.d:                                             ; preds = %Vec_IntFree.exit
  %i.bn = load i64, ptr %1, align 8, !tbaa !94
  %i.bo = mul nsw i64 %i.bn, 1000000
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !95
  %i.br = sdiv i64 %i.bq, 1000
  %i.bs = add nsw i64 %i.br, %i.bo
  br label %Abc_Clock.exit9

Abc_Clock.exit9:                                  ; preds = %Vec_IntFree.exit, %bb.d
  %.0.i8 = phi i64 [ %i.bs, %bb.d ], [ -1, %Vec_IntFree.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.bt = add i64 %.0.i8, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.14)
  %i.bu = sitofp i64 %i.bt to double
  %i.bv = fdiv double %i.bu, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, double noundef %i.bv)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #17 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !12
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #22 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #22
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #22 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #26
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #22 ; 0 uses
  call void @free(ptr noundef %i.d) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !11, !noalias !99
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #22, !inline_history !98 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #8

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #18

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #18

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #21

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(1) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind allocsize(0,1) }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !13}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"p1 int", !9, i64 0}
!15 = !{!"Vec_Int_t_", !6, i64 0, !6, i64 4, !14, i64 8}
!16 = !{!15, !6, i64 0}
!17 = !{!15, !14, i64 8}
!18 = !{!15, !6, i64 4}
!19 = !{!"p1 omnipotent char", !9, i64 0}
!20 = !{!"p1 _ZTS10Gia_Obj_t_", !9, i64 0}
!21 = !{!"p1 _ZTS10Vec_Int_t_", !9, i64 0}
!22 = !{!"p1 _ZTS10Gia_Rpr_t_", !9, i64 0}
!23 = !{!"p1 _ZTS10Vec_Wec_t_", !9, i64 0}
!24 = !{!"p1 _ZTS10Vec_Str_t_", !9, i64 0}
!25 = !{!"p1 _ZTS10Abc_Cex_t_", !9, i64 0}
!26 = !{!"p1 _ZTS10Vec_Ptr_t_", !9, i64 0}
!27 = !{!"p1 _ZTS10Gia_Plc_t_", !9, i64 0}
!28 = !{!"p1 _ZTS10Gia_Man_t_", !9, i64 0}
!29 = !{!"p1 _ZTS10Vec_Flt_t_", !9, i64 0}
!30 = !{!"float", !5, i64 0}
!31 = !{!"p1 _ZTS10Vec_Vec_t_", !9, i64 0}
!32 = !{!"long", !5, i64 0}
!33 = !{!"p1 _ZTS10Vec_Wrd_t_", !9, i64 0}
!34 = !{!"p1 _ZTS10Vec_Bit_t_", !9, i64 0}
!35 = !{!"p1 _ZTS10Gia_Dat_t_", !9, i64 0}
!36 = !{!"Gia_Man_t_", !19, i64 0, !19, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !20, i64 32, !14, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !21, i64 64, !21, i64 72, !15, i64 80, !15, i64 96, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 128, !14, i64 144, !14, i64 152, !21, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !14, i64 184, !22, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !6, i64 224, !6, i64 228, !14, i64 232, !6, i64 240, !21, i64 248, !21, i64 256, !21, i64 264, !23, i64 272, !23, i64 280, !21, i64 288, !9, i64 296, !21, i64 304, !21, i64 312, !24, i64 320, !19, i64 328, !21, i64 336, !21, i64 344, !21, i64 352, !21, i64 360, !21, i64 368, !25, i64 376, !25, i64 384, !26, i64 392, !15, i64 400, !15, i64 416, !21, i64 432, !21, i64 440, !21, i64 448, !21, i64 456, !21, i64 464, !21, i64 472, !21, i64 480, !21, i64 488, !21, i64 496, !21, i64 504, !21, i64 512, !19, i64 520, !27, i64 528, !28, i64 536, !29, i64 544, !29, i64 552, !21, i64 560, !21, i64 568, !21, i64 576, !21, i64 584, !21, i64 592, !6, i64 600, !30, i64 604, !30, i64 608, !21, i64 616, !14, i64 624, !6, i64 632, !26, i64 640, !26, i64 648, !26, i64 656, !21, i64 664, !21, i64 672, !21, i64 680, !21, i64 688, !21, i64 696, !21, i64 704, !21, i64 712, !21, i64 720, !21, i64 728, !31, i64 736, !29, i64 744, !9, i64 752, !9, i64 760, !9, i64 768, !32, i64 776, !32, i64 784, !9, i64 792, !14, i64 800, !6, i64 808, !6, i64 812, !6, i64 816, !6, i64 820, !6, i64 824, !6, i64 828, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !33, i64 856, !33, i64 864, !33, i64 872, !33, i64 880, !21, i64 888, !21, i64 896, !21, i64 904, !34, i64 912, !6, i64 920, !6, i64 924, !6, i64 928, !21, i64 936, !6, i64 944, !6, i64 948, !21, i64 952, !21, i64 960, !26, i64 968, !33, i64 976, !21, i64 984, !21, i64 992, !6, i64 1000, !6, i64 1004, !33, i64 1008, !15, i64 1016, !15, i64 1032, !15, i64 1048, !35, i64 1064, !24, i64 1072, !24, i64 1080, !6, i64 1088, !6, i64 1092, !6, i64 1096, !6, i64 1100, !24, i64 1104, !21, i64 1112, !21, i64 1120, !21, i64 1128, !26, i64 1136}
!37 = !{!36, !20, i64 32}
end_hunk_0
