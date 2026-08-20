inline.NumInlined: 482
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 48
begin_hunk_0_@PHP_XXH32Update:bb.a
  br i1 %i.a, label %XXH_INLINE_XXH32_update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.c = trunc i64 %2 to i32                      ; 2 uses
  %i.d = load i32, ptr %0, align 4, !tbaa !14
  %i.e = add i32 %i.d, %i.c                       ; 2 uses
  store i32 %i.e, ptr %0, align 4, !tbaa !14
  %i.f = icmp ugt i64 %2, 15
  %i.g = icmp ugt i32 %i.e, 15
  %i.h = or i1 %i.f, %i.g
  %i.i = zext i1 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %i.l = or i32 %i.k, %i.i
  store i32 %i.l, ptr %i.j, align 4, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !17   ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 3 uses
  %i.p = add i64 %2, %i.o
  %i.q = icmp ult i64 %i.p, 16
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %i.t = load i32, ptr %i.m, align 4, !tbaa !17
  %i.u = add i32 %i.t, %i.c
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.o
  %i.x = sub i32 16, %i.n
  %i.y = zext i32 %i.x to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %1, i64 %i.y, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !18
  %.0.copyload.i.i = load i32, ptr %i.v, align 4
  %i.ab = mul i32 %.0.copyload.i.i, -2048144777
  %i.ac = add i32 %i.ab, %i.aa                    ; 2 uses
  %i.ad = tail call i32 @llvm.fshl.i32(i32 %i.ac, i32 %i.ac, i32 13)
  %i.ae = mul i32 %i.ad, -1640531535
  store i32 %i.ae, ptr %i.z, align 4, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !18
  %.0.copyload.i81.i = load i32, ptr %i.af, align 4
  %i.ai = mul i32 %.0.copyload.i81.i, -2048144777
  %i.aj = add i32 %i.ai, %i.ah                    ; 2 uses
  %i.ak = tail call i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.aj, i32 13)
  %i.al = mul i32 %i.ak, -1640531535
  store i32 %i.al, ptr %i.ag, align 4, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !18
  %.0.copyload.i82.i = load i32, ptr %i.am, align 4
  %i.ap = mul i32 %.0.copyload.i82.i, -2048144777
  %i.aq = add i32 %i.ap, %i.ao                    ; 2 uses
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %i.aq, i32 %i.aq, i32 13)
  %i.as = mul i32 %i.ar, -1640531535
  store i32 %i.as, ptr %i.an, align 4, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !18
  %.0.copyload.i83.i = load i32, ptr %i.at, align 4
  %i.aw = mul i32 %.0.copyload.i83.i, -2048144777
  %i.ax = add i32 %i.aw, %i.av                    ; 2 uses
  %i.ay = tail call i32 @llvm.fshl.i32(i32 %i.ax, i32 %i.ax, i32 13)
  %i.az = mul i32 %i.ay, -1640531535
  store i32 %i.az, ptr %i.au, align 4, !tbaa !18
  %i.ba = load i32, ptr %i.m, align 4, !tbaa !17
  %i.bb = sub i32 16, %i.ba
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc
  store i32 0, ptr %i.m, align 4, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.073.i = phi ptr [ %i.bd, %bb.e ], [ %1, %bb.d ] ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  %.not79.i = icmp ugt ptr %.073.i, %i.be
  br i1 %.not79.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.promoted.i = load i32, ptr %i.bf, align 4, !tbaa !18
  %.promoted88.i = load i32, ptr %i.bg, align 4, !tbaa !18
  %.promoted89.i = load i32, ptr %i.bh, align 4, !tbaa !18
  %.promoted90.i = load i32, ptr %i.bi, align 4, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i
  %i.bj = phi i32 [ %i.cf, %bb.g ], [ %.promoted90.i, %.preheader.i ]
  %i.bk = phi i32 [ %i.ca, %bb.g ], [ %.promoted89.i, %.preheader.i ]
  %i.bl = phi i32 [ %i.bv, %bb.g ], [ %.promoted88.i, %.preheader.i ]
  %i.bm = phi i32 [ %i.bq, %bb.g ], [ %.promoted.i, %.preheader.i ]
  %.174.i = phi ptr [ %i.cg, %bb.g ], [ %.073.i, %.preheader.i ] ; 5 uses
  %.0.copyload.i84.i = load i32, ptr %.174.i, align 1
  %i.bn = mul i32 %.0.copyload.i84.i, -2048144777
  %i.bo = add i32 %i.bn, %i.bm                    ; 2 uses
  %i.bp = tail call i32 @llvm.fshl.i32(i32 %i.bo, i32 %i.bo, i32 13)
  %i.bq = mul i32 %i.bp, -1640531535              ; 2 uses
  store i32 %i.bq, ptr %i.bf, align 4, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.174.i, i64 4
  %.0.copyload.i85.i = load i32, ptr %i.br, align 1
  %i.bs = mul i32 %.0.copyload.i85.i, -2048144777
  %i.bt = add i32 %i.bs, %i.bl                    ; 2 uses
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %i.bt, i32 %i.bt, i32 13)
  %i.bv = mul i32 %i.bu, -1640531535              ; 2 uses
  store i32 %i.bv, ptr %i.bg, align 4, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.174.i, i64 8
  %.0.copyload.i86.i = load i32, ptr %i.bw, align 1
  %i.bx = mul i32 %.0.copyload.i86.i, -2048144777
  %i.by = add i32 %i.bx, %i.bk                    ; 2 uses
  %i.bz = tail call i32 @llvm.fshl.i32(i32 %i.by, i32 %i.by, i32 13)
  %i.ca = mul i32 %i.bz, -1640531535              ; 2 uses
  store i32 %i.ca, ptr %i.bh, align 4, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.174.i, i64 12
  %.0.copyload.i87.i = load i32, ptr %i.cb, align 1
  %i.cc = mul i32 %.0.copyload.i87.i, -2048144777
  %i.cd = add i32 %i.cc, %i.bj                    ; 2 uses
  %i.ce = tail call i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 13)
  %i.cf = mul i32 %i.ce, -1640531535              ; 2 uses
  store i32 %i.cf, ptr %i.bi, align 4, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.174.i, i64 16 ; 3 uses
  %.not80.i = icmp ugt ptr %i.cg, %i.be
  br i1 %.not80.i, label %.loopexit.i, label %bb.g, !llvm.loop !19

.loopexit.i:                                      ; preds = %bb.g, %bb.f
  %.2.i = phi ptr [ %.073.i, %bb.f ], [ %i.cg, %bb.g ] ; 3 uses
  %i.ch = icmp ult ptr %.2.i, %i.b
  br i1 %i.ch, label %bb.h, label %XXH_INLINE_XXH32_update.exit

bb.h:                                             ; preds = %.loopexit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = ptrtoint ptr %i.b to i64
  %i.ck = ptrtoint ptr %.2.i to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr nonnull readonly align 1 %.2.i, i64 %i.cl, i1 false)
  %i.cm = trunc i64 %i.cl to i32
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.c
  %.sink.i = phi i32 [ %i.u, %bb.c ], [ %i.cm, %bb.h ]
  store i32 %.sink.i, ptr %i.m, align 4, !tbaa !17
  br label %XXH_INLINE_XXH32_update.exit

XXH_INLINE_XXH32_update.exit:                     ; preds = %bb.a, %.loopexit.i, %.sink.split.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @PHP_XXH32Final(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18   ; 2 uses
  %i.e = tail call i32 @llvm.fshl.i32(i32 %i.d, i32 %i.d, i32 1)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !18   ; 2 uses
  %i.h = tail call i32 @llvm.fshl.i32(i32 %i.g, i32 %i.g, i32 7)
  %i.i = add i32 %i.h, %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !18   ; 2 uses
  %i.l = tail call i32 @llvm.fshl.i32(i32 %i.k, i32 %i.k, i32 12)
  %i.m = add i32 %i.i, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !18   ; 2 uses
  %i.p = tail call i32 @llvm.fshl.i32(i32 %i.o, i32 %i.o, i32 18)
  %i.q = add i32 %i.m, %i.p
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i32, ptr %i.r, align 4, !tbaa !18
  %i.t = add i32 %i.s, 374761393
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ %i.q, %bb.b ], [ %i.t, %bb.c ]
  %i.u = load i32, ptr %1, align 4, !tbaa !14
  %i.v = add i32 %i.u, %.0.i                      ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i32, ptr %i.x, align 4, !tbaa !17
  %i.z = and i32 %i.y, 15                         ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64               ; 3 uses
  %i.ab = icmp samesign ugt i32 %i.z, 3
  br i1 %i.ab, label %.lr.ph.i.i.preheader, label %.preheader.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.ac = add nsw i64 %i.aa, -4                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 1
  %xtraiter = and i64 %i.ae, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.020.i.i.prol = phi i32 [ %i.ak, %.lr.ph.i.i.prol ], [ %i.v, %.lr.ph.i.i.preheader ]
  %.01419.i.i.prol = phi i64 [ %i.al, %.lr.ph.i.i.prol ], [ %i.aa, %.lr.ph.i.i.preheader ]
  %.01618.i.i.prol = phi ptr [ %i.ai, %.lr.ph.i.i.prol ], [ %i.w, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.af = load i32, ptr %.01618.i.i.prol, align 4, !tbaa !18
  %i.ag = mul i32 %i.af, -1028477379
  %i.ah = add i32 %i.ag, %.020.i.i.prol           ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01618.i.i.prol, i64 4 ; 3 uses
  %i.aj = tail call i32 @llvm.fshl.i32(i32 %i.ah, i32 %i.ah, i32 17)
  %i.ak = mul i32 %i.aj, 668265263                ; 3 uses
  %i.al = add nsw i64 %.01419.i.i.prol, -4        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !21

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.020.i.i.unr = phi i32 [ %i.v, %.lr.ph.i.i.preheader ], [ %i.ak, %.lr.ph.i.i.prol ]
  %.01618.i.i.unr = phi ptr [ %i.w, %.lr.ph.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.prol ]
  %.lcssa16.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.prol ]
  %.lcssa15.unr = phi i32 [ poison, %.lr.ph.i.i.preheader ], [ %i.ak, %.lr.ph.i.i.prol ]
  %.lcssa14.unr = phi i64 [ poison, %.lr.ph.i.i.preheader ], [ %i.al, %.lr.ph.i.i.prol ]
  %i.am = icmp ult i64 %i.ac, 12
  br i1 %i.am, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i.prol.loopexit, %bb.d
  %.016.lcssa.i.i = phi ptr [ %i.w, %bb.d ], [ %.lcssa16.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.014.lcssa.i.i = phi i64 [ %i.aa, %bb.d ], [ %.lcssa14.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.0.lcssa.i.i = phi i32 [ %i.v, %bb.d ], [ %.lcssa15.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.not23.i.i = icmp eq i64 %.014.lcssa.i.i, 0
  br i1 %.not23.i.i, label %XXH_INLINE_XXH32_digest.exit, label %.lr.ph27.i.i.preheader

.lr.ph27.i.i.preheader:                           ; preds = %.preheader.i.i
  %xtraiter17 = and i64 %.014.lcssa.i.i, 3        ; 2 uses
  %lcmp.mod18.not = icmp eq i64 %xtraiter17, 0
  br i1 %lcmp.mod18.not, label %.lr.ph27.i.i.prol.loopexit, label %.lr.ph27.i.i.prol

.lr.ph27.i.i.prol:                                ; preds = %.lr.ph27.i.i.preheader, %.lr.ph27.i.i.prol
  %.126.i.i.prol = phi i32 [ %i.at, %.lr.ph27.i.i.prol ], [ %.0.lcssa.i.i, %.lr.ph27.i.i.preheader ]
  %.11525.i.i.prol = phi i64 [ %i.au, %.lr.ph27.i.i.prol ], [ %.014.lcssa.i.i, %.lr.ph27.i.i.preheader ]
  %.11724.i.i.prol = phi ptr [ %i.an, %.lr.ph27.i.i.prol ], [ %.016.lcssa.i.i, %.lr.ph27.i.i.preheader ] ; 2 uses
  %prol.iter19 = phi i64 [ %prol.iter19.next, %.lr.ph27.i.i.prol ], [ 0, %.lr.ph27.i.i.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %.11724.i.i.prol, i64 1 ; 2 uses
  %i.ao = load i8, ptr %.11724.i.i.prol, align 1, !tbaa !12
  %i.ap = zext i8 %i.ao to i32
  %i.aq = mul i32 %i.ap, 374761393
  %i.ar = add i32 %i.aq, %.126.i.i.prol           ; 2 uses
  %i.as = tail call i32 @llvm.fshl.i32(i32 %i.ar, i32 %i.ar, i32 11)
  %i.at = mul i32 %i.as, -1640531535              ; 3 uses
  %i.au = add nsw i64 %.11525.i.i.prol, -1        ; 2 uses
  %prol.iter19.next = add i64 %prol.iter19, 1     ; 2 uses
  %prol.iter19.cmp.not = icmp eq i64 %prol.iter19.next, %xtraiter17
  br i1 %prol.iter19.cmp.not, label %.lr.ph27.i.i.prol.loopexit, label %.lr.ph27.i.i.prol, !llvm.loop !23

.lr.ph27.i.i.prol.loopexit:                       ; preds = %.lr.ph27.i.i.prol, %.lr.ph27.i.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph27.i.i.preheader ], [ %i.at, %.lr.ph27.i.i.prol ]
  %.126.i.i.unr = phi i32 [ %.0.lcssa.i.i, %.lr.ph27.i.i.preheader ], [ %i.at, %.lr.ph27.i.i.prol ]
  %.11525.i.i.unr = phi i64 [ %.014.lcssa.i.i, %.lr.ph27.i.i.preheader ], [ %i.au, %.lr.ph27.i.i.prol ]
  %.11724.i.i.unr = phi ptr [ %.016.lcssa.i.i, %.lr.ph27.i.i.preheader ], [ %i.an, %.lr.ph27.i.i.prol ]
  %i.av = icmp ult i64 %.014.lcssa.i.i, 4
  br i1 %i.av, label %XXH_INLINE_XXH32_digest.exit, label %.lr.ph27.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.020.i.i = phi i32 [ %i.bt, %.lr.ph.i.i ], [ %.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01618.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %.01618.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.aw = load i32, ptr %.01618.i.i, align 4, !tbaa !18
  %i.ax = mul i32 %i.aw, -1028477379
  %i.ay = add i32 %i.ax, %.020.i.i                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.ba = tail call i32 @llvm.fshl.i32(i32 %i.ay, i32 %i.ay, i32 17)
  %i.bb = mul i32 %i.ba, 668265263
  %i.bc = load i32, ptr %i.az, align 4, !tbaa !18
  %i.bd = mul i32 %i.bc, -1028477379
  %i.be = add i32 %i.bd, %i.bb                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %i.bg = tail call i32 @llvm.fshl.i32(i32 %i.be, i32 %i.be, i32 17)
  %i.bh = mul i32 %i.bg, 668265263
  %i.bi = load i32, ptr %i.bf, align 4, !tbaa !18
  %i.bj = mul i32 %i.bi, -1028477379
  %i.bk = add i32 %i.bj, %i.bh                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.bm = tail call i32 @llvm.fshl.i32(i32 %i.bk, i32 %i.bk, i32 17)
  %i.bn = mul i32 %i.bm, 668265263
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !18
  %i.bp = mul i32 %i.bo, -1028477379
  %i.bq = add i32 %i.bp, %i.bn                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %i.bs = tail call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.bq, i32 17)
  %i.bt = mul i32 %i.bs, 668265263
  br label %.lr.ph.i.i, !llvm.loop !24

.lr.ph27.i.i:                                     ; preds = %.lr.ph27.i.i.prol.loopexit, %.lr.ph27.i.i
  %.126.i.i = phi i32 [ %i.cv, %.lr.ph27.i.i ], [ %.126.i.i.unr, %.lr.ph27.i.i.prol.loopexit ]
  %.11525.i.i = phi i64 [ %i.cw, %.lr.ph27.i.i ], [ %.11525.i.i.unr, %.lr.ph27.i.i.prol.loopexit ]
  %.11724.i.i = phi ptr [ %i.cp, %.lr.ph27.i.i ], [ %.11724.i.i.unr, %.lr.ph27.i.i.prol.loopexit ] ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.11724.i.i, i64 1
  %i.bv = load i8, ptr %.11724.i.i, align 1, !tbaa !12
  %i.bw = zext i8 %i.bv to i32
  %i.bx = mul i32 %i.bw, 374761393
  %i.by = add i32 %i.bx, %.126.i.i                ; 2 uses
  %i.bz = tail call i32 @llvm.fshl.i32(i32 %i.by, i32 %i.by, i32 11)
  %i.ca = mul i32 %i.bz, -1640531535
  %i.cb = getelementptr inbounds nuw i8, ptr %.11724.i.i, i64 2
  %i.cc = load i8, ptr %i.bu, align 1, !tbaa !12
  %i.cd = zext i8 %i.cc to i32
  %i.ce = mul i32 %i.cd, 374761393
  %i.cf = add i32 %i.ce, %i.ca                    ; 2 uses
  %i.cg = tail call i32 @llvm.fshl.i32(i32 %i.cf, i32 %i.cf, i32 11)
  %i.ch = mul i32 %i.cg, -1640531535
  %i.ci = getelementptr inbounds nuw i8, ptr %.11724.i.i, i64 3
  %i.cj = load i8, ptr %i.cb, align 1, !tbaa !12
  %i.ck = zext i8 %i.cj to i32
  %i.cl = mul i32 %i.ck, 374761393
  %i.cm = add i32 %i.cl, %i.ch                    ; 2 uses
  %i.cn = tail call i32 @llvm.fshl.i32(i32 %i.cm, i32 %i.cm, i32 11)
  %i.co = mul i32 %i.cn, -1640531535
  %i.cp = getelementptr inbounds nuw i8, ptr %.11724.i.i, i64 4
  %i.cq = load i8, ptr %i.ci, align 1, !tbaa !12
  %i.cr = zext i8 %i.cq to i32
  %i.cs = mul i32 %i.cr, 374761393
  %i.ct = add i32 %i.cs, %i.co                    ; 2 uses
  %i.cu = tail call i32 @llvm.fshl.i32(i32 %i.ct, i32 %i.ct, i32 11)
  %i.cv = mul i32 %i.cu, -1640531535              ; 2 uses
  %i.cw = add nsw i64 %.11525.i.i, -4             ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.3, label %XXH_INLINE_XXH32_digest.exit, label %.lr.ph27.i.i, !llvm.loop !25

XXH_INLINE_XXH32_digest.exit:                     ; preds = %.lr.ph27.i.i.prol.loopexit, %.lr.ph27.i.i, %.preheader.i.i
  %.1.lcssa.i.i = phi i32 [ %.0.lcssa.i.i, %.preheader.i.i ], [ %.lcssa.unr, %.lr.ph27.i.i.prol.loopexit ], [ %i.cv, %.lr.ph27.i.i ] ; 2 uses
  %i.cx = lshr i32 %.1.lcssa.i.i, 15
  %i.cy = xor i32 %i.cx, %.1.lcssa.i.i
  %i.cz = mul i32 %i.cy, -2048144777              ; 2 uses
  %i.da = lshr i32 %i.cz, 13
  %i.db = xor i32 %i.da, %i.cz
  %i.dc = mul i32 %i.db, -1028477379              ; 2 uses
  %i.dd = lshr i32 %i.dc, 16
  %i.de = xor i32 %i.dd, %i.dc
  %i.df = tail call noundef i32 @llvm.bswap.i32(i32 %i.de)
  store i32 %i.df, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @PHP_XXH32Copy(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 48)) %2) #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !26
  ret i32 0
}

declare i32 @php_hash_serialize(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @php_hash_xxh32_unserialize(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = icmp eq i64 %1, 2
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @php_hash_unserialize_spec(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.1) #14 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load i32, ptr %i.f, align 4, !tbaa !38
  %i.h = icmp ult i32 %i.g, 16
  %spec.select = select i1 %i.h, i32 0, i32 -2000
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.b
  %.07 = phi i32 [ %spec.select, %bb.c ], [ %i.d, %bb.b ], [ -1, %bb.a ]
  ret i32 %.07
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare void @php_error_docref(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local void @PHP_XXH64Init(ptr nofree noundef writeonly captures(none) initializes((0, 88)) %0, ptr noundef %1) #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @zend_hash_str_find(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, i64 noundef 4) #14 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !12    ; 2 uses
  %i.d = icmp eq i8 %i.c, 10
  br i1 %i.d, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi i8 [ %i.c, %bb.c ], [ %.pre, %bb.d ]
  %.0.i.ph = phi ptr [ %i.a, %bb.c ], [ %i.f, %bb.d ]
  %i.h = icmp eq i8 %i.g, 4
  br i1 %i.h, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e, %bb.b
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 8192, ptr noundef nonnull @.str.3) #14
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load i64, ptr %.0.i.ph, align 8, !tbaa !12 ; 3 uses
  %i.j = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %i.k = shufflevector <2 x i64> %i.j, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.l = add <2 x i64> %i.k, <i64 6983438078262162902, i64 -4417276706812531889>
  %i.m = add i64 %i.i, 7046029288634856825
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %.thread, %bb.f
  %.sink22 = phi i64 [ %i.i, %bb.f ], [ 0, %.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ %i.m, %bb.f ], [ 7046029288634856825, %.thread ], [ 7046029288634856825, %bb.a ]
  %i.n = phi <2 x i64> [ %i.l, %bb.f ], [ <i64 6983438078262162902, i64 -4417276706812531889>, %.thread ], [ <i64 6983438078262162902, i64 -4417276706812531889>, %bb.a ]
  store i64 0, ptr %0, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.n, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink22, ptr %.sroa.6.0..sroa_idx.i, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink, ptr %.sroa.7.0..sroa_idx.i, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %.sroa.8.0..sroa_idx.i, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @PHP_XXH64Update(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %XXH_INLINE_XXH64_update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !40
  %i.d = add i64 %i.c, %2
  store i64 %i.d, ptr %0, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !42   ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = add i64 %2, %i.g
  %i.i = icmp ult i64 %i.h, 32
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %i.l = trunc i64 %2 to i32
  %i.m = load i32, ptr %i.e, align 8, !tbaa !42
  %i.n = add i32 %i.m, %i.l
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.g
  %i.q = sub i32 32, %i.f
  %i.r = zext i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %1, i64 %i.r, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !43
  %.0.copyload.i.i = load i64, ptr %i.o, align 8
  %i.u = mul i64 %.0.copyload.i.i, -4417276706812531889
end_hunk_0
