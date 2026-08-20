inline.NumInlined: 89
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ZSTD_XXH32_update:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %i.b)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.d = trunc i64 %2 to i32                      ; 2 uses
  %i.e = load i32, ptr %0, align 4, !tbaa !17
  %i.f = add i32 %i.e, %i.d                       ; 2 uses
  store i32 %i.f, ptr %0, align 4, !tbaa !17
  %i.g = icmp ugt i64 %2, 15
  %i.h = icmp ugt i32 %i.f, 15
  %i.i = or i1 %i.g, %i.h
  %i.j = zext i1 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19
  %i.m = or i32 %i.l, %i.j
  store i32 %i.m, ptr %i.k, align 4, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !20   ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 3 uses
  %i.q = add i64 %2, %i.p
  %i.r = icmp ult i64 %i.q, 16
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %i.u = load i32, ptr %i.n, align 4, !tbaa !20
  %i.v = add i32 %i.u, %i.d
  store i32 %i.v, ptr %i.n, align 4, !tbaa !20
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.p
  %i.y = sub i32 16, %i.o
  %i.z = zext i32 %i.y to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull readonly align 1 %1, i64 %i.z, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8
  %.val = load i32, ptr %i.w, align 4, !tbaa !8
  %i.ac = mul i32 %.val, -2048144777
  %i.ad = add i32 %i.ac, %i.ab                    ; 2 uses
  %i.ae = tail call i32 @llvm.fshl.i32(i32 %i.ad, i32 %i.ad, i32 13)
  %i.af = mul i32 %i.ae, -1640531535
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !8
  %.val82 = load i32, ptr %i.ag, align 4, !tbaa !8
  %i.aj = mul i32 %.val82, -2048144777
  %i.ak = add i32 %i.aj, %i.ai                    ; 2 uses
  %i.al = tail call i32 @llvm.fshl.i32(i32 %i.ak, i32 %i.ak, i32 13)
  %i.am = mul i32 %i.al, -1640531535
  store i32 %i.am, ptr %i.ah, align 4, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !8
  %.val83 = load i32, ptr %i.an, align 4, !tbaa !8
  %i.aq = mul i32 %.val83, -2048144777
  %i.ar = add i32 %i.aq, %i.ap                    ; 2 uses
  %i.as = tail call i32 @llvm.fshl.i32(i32 %i.ar, i32 %i.ar, i32 13)
  %i.at = mul i32 %i.as, -1640531535
  store i32 %i.at, ptr %i.ao, align 4, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8
  %.val84 = load i32, ptr %i.au, align 4, !tbaa !8
  %i.ax = mul i32 %.val84, -2048144777
  %i.ay = add i32 %i.ax, %i.aw                    ; 2 uses
  %i.az = tail call i32 @llvm.fshl.i32(i32 %i.ay, i32 %i.ay, i32 13)
  %i.ba = mul i32 %i.az, -1640531535
  store i32 %i.ba, ptr %i.av, align 4, !tbaa !8
  %i.bb = load i32, ptr %i.n, align 4, !tbaa !20
  %i.bc = sub i32 16, %i.bb
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %i.bd
  store i32 0, ptr %i.n, align 4, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.074 = phi ptr [ %i.be, %bb.f ], [ %1, %bb.e ] ; 3 uses
  %i.bf = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 2 uses
  %.not80 = icmp ugt ptr %.074, %i.bf
  br i1 %.not80, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.promoted = load i32, ptr %i.bg, align 4, !tbaa !8
  %.promoted88 = load i32, ptr %i.bh, align 4, !tbaa !8
  %.promoted89 = load i32, ptr %i.bi, align 4, !tbaa !8
  %.promoted90 = load i32, ptr %i.bj, align 4, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.h
  %i.bk = phi i32 [ %i.cg, %bb.h ], [ %.promoted90, %.preheader ]
  %i.bl = phi i32 [ %i.cb, %bb.h ], [ %.promoted89, %.preheader ]
  %i.bm = phi i32 [ %i.bw, %bb.h ], [ %.promoted88, %.preheader ]
  %i.bn = phi i32 [ %i.br, %bb.h ], [ %.promoted, %.preheader ]
  %.175 = phi ptr [ %i.ch, %bb.h ], [ %.074, %.preheader ] ; 5 uses
  %.175.val = load i32, ptr %.175, align 1, !tbaa !8
  %i.bo = mul i32 %.175.val, -2048144777
  %i.bp = add i32 %i.bo, %i.bn                    ; 2 uses
  %i.bq = tail call i32 @llvm.fshl.i32(i32 %i.bp, i32 %i.bp, i32 13)
  %i.br = mul i32 %i.bq, -1640531535              ; 2 uses
  store i32 %i.br, ptr %i.bg, align 4, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %.175, i64 4
  %.val85 = load i32, ptr %i.bs, align 1, !tbaa !8
  %i.bt = mul i32 %.val85, -2048144777
  %i.bu = add i32 %i.bt, %i.bm                    ; 2 uses
  %i.bv = tail call i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 13)
  %i.bw = mul i32 %i.bv, -1640531535              ; 2 uses
  store i32 %i.bw, ptr %i.bh, align 4, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %.175, i64 8
  %.val86 = load i32, ptr %i.bx, align 1, !tbaa !8
  %i.by = mul i32 %.val86, -2048144777
  %i.bz = add i32 %i.by, %i.bl                    ; 2 uses
  %i.ca = tail call i32 @llvm.fshl.i32(i32 %i.bz, i32 %i.bz, i32 13)
  %i.cb = mul i32 %i.ca, -1640531535              ; 2 uses
  store i32 %i.cb, ptr %i.bi, align 4, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %.175, i64 12
  %.val87 = load i32, ptr %i.cc, align 1, !tbaa !8
  %i.cd = mul i32 %.val87, -2048144777
  %i.ce = add i32 %i.cd, %i.bk                    ; 2 uses
  %i.cf = tail call i32 @llvm.fshl.i32(i32 %i.ce, i32 %i.ce, i32 13)
  %i.cg = mul i32 %i.cf, -1640531535              ; 2 uses
  store i32 %i.cg, ptr %i.bj, align 4, !tbaa !8
  %i.ch = getelementptr inbounds nuw i8, ptr %.175, i64 16 ; 3 uses
  %.not81 = icmp ugt ptr %i.ch, %i.bf
  br i1 %.not81, label %.loopexit, label %bb.h, !llvm.loop !21

.loopexit:                                        ; preds = %bb.h, %bb.g
  %.2 = phi ptr [ %.074, %bb.g ], [ %i.ch, %bb.h ] ; 3 uses
  %i.ci = icmp ult ptr %.2, %i.c
  br i1 %i.ci, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = ptrtoint ptr %i.c to i64
  %i.cl = ptrtoint ptr %.2 to i64
  %i.cm = sub i64 %i.ck, %i.cl                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr nonnull readonly align 1 %.2, i64 %i.cm, i1 false)
  %i.cn = trunc i64 %i.cm to i32
  store i32 %i.cn, ptr %i.n, align 4, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i, %.loopexit, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ZSTD_XXH32_digest(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8    ; 2 uses
  %i.e = tail call i32 @llvm.fshl.i32(i32 %i.d, i32 %i.d, i32 1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8    ; 2 uses
  %i.h = tail call i32 @llvm.fshl.i32(i32 %i.g, i32 %i.g, i32 7)
  %i.i = add i32 %i.h, %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8    ; 2 uses
  %i.l = tail call i32 @llvm.fshl.i32(i32 %i.k, i32 %i.k, i32 12)
  %i.m = add i32 %i.i, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !8    ; 2 uses
  %i.p = tail call i32 @llvm.fshl.i32(i32 %i.o, i32 %i.o, i32 18)
  %i.q = add i32 %i.m, %i.p
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8
  %i.t = add i32 %i.s, 374761393
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.q, %bb.b ], [ %i.t, %bb.c ]
  %i.u = load i32, ptr %0, align 4, !tbaa !17
  %i.v = add i32 %i.u, %.0                        ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i32, ptr %i.x, align 4, !tbaa !20
  %i.z = and i32 %i.y, 15                         ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64               ; 4 uses
  %i.ab = icmp samesign ugt i32 %i.z, 3
  br i1 %i.ab, label %XXH_readLE32_align.exit.i.preheader, label %.preheader.i

XXH_readLE32_align.exit.i.preheader:              ; preds = %bb.d
  %i.ac = add nsw i64 %i.aa, -4                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 1
  %xtraiter = and i64 %i.ae, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %XXH_readLE32_align.exit.i.prol.loopexit, label %XXH_readLE32_align.exit.i.prol

XXH_readLE32_align.exit.i.prol:                   ; preds = %XXH_readLE32_align.exit.i.preheader, %XXH_readLE32_align.exit.i.prol
  %.021.i.prol = phi i32 [ %i.aj, %XXH_readLE32_align.exit.i.prol ], [ %i.v, %XXH_readLE32_align.exit.i.preheader ]
  %.01520.i.prol = phi i64 [ %i.ak, %XXH_readLE32_align.exit.i.prol ], [ %i.aa, %XXH_readLE32_align.exit.i.preheader ]
  %.01719.i.prol = phi ptr [ %i.ah, %XXH_readLE32_align.exit.i.prol ], [ %i.w, %XXH_readLE32_align.exit.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %XXH_readLE32_align.exit.i.prol ], [ 0, %XXH_readLE32_align.exit.i.preheader ]
  %.0.i.i.prol = load i32, ptr %.01719.i.prol, align 1, !tbaa !8
  %i.af = mul i32 %.0.i.i.prol, -1028477379
  %i.ag = add i32 %i.af, %.021.i.prol             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01719.i.prol, i64 4 ; 3 uses
  %i.ai = tail call i32 @llvm.fshl.i32(i32 %i.ag, i32 %i.ag, i32 17)
  %i.aj = mul i32 %i.ai, 668265263                ; 3 uses
  %i.ak = add nsw i64 %.01520.i.prol, -4          ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %XXH_readLE32_align.exit.i.prol.loopexit, label %XXH_readLE32_align.exit.i.prol, !llvm.loop !22

XXH_readLE32_align.exit.i.prol.loopexit:          ; preds = %XXH_readLE32_align.exit.i.prol, %XXH_readLE32_align.exit.i.preheader
  %.021.i.unr = phi i32 [ %i.v, %XXH_readLE32_align.exit.i.preheader ], [ %i.aj, %XXH_readLE32_align.exit.i.prol ]
  %.01520.i.unr = phi i64 [ %i.aa, %XXH_readLE32_align.exit.i.preheader ], [ %i.ak, %XXH_readLE32_align.exit.i.prol ]
  %.01719.i.unr = phi ptr [ %i.w, %XXH_readLE32_align.exit.i.preheader ], [ %i.ah, %XXH_readLE32_align.exit.i.prol ]
  %.lcssa25.unr = phi ptr [ poison, %XXH_readLE32_align.exit.i.preheader ], [ %i.ah, %XXH_readLE32_align.exit.i.prol ]
  %.lcssa24.unr = phi i32 [ poison, %XXH_readLE32_align.exit.i.preheader ], [ %i.aj, %XXH_readLE32_align.exit.i.prol ]
  %.lcssa23.unr = phi i64 [ poison, %XXH_readLE32_align.exit.i.preheader ], [ %i.ak, %XXH_readLE32_align.exit.i.prol ]
  %i.al = icmp ult i64 %i.ac, 12
  br i1 %i.al, label %.preheader.i, label %XXH_readLE32_align.exit.i

.preheader.i:                                     ; preds = %XXH_readLE32_align.exit.i.prol.loopexit, %XXH_readLE32_align.exit.i, %bb.d
  %.017.lcssa.i = phi ptr [ %i.w, %bb.d ], [ %.lcssa25.unr, %XXH_readLE32_align.exit.i.prol.loopexit ], [ %i.bm, %XXH_readLE32_align.exit.i ] ; 2 uses
  %.015.lcssa.i = phi i64 [ %i.aa, %bb.d ], [ %.lcssa23.unr, %XXH_readLE32_align.exit.i.prol.loopexit ], [ %1, %XXH_readLE32_align.exit.i ] ; 5 uses
  %.0.lcssa.i = phi i32 [ %i.v, %bb.d ], [ %.lcssa24.unr, %XXH_readLE32_align.exit.i.prol.loopexit ], [ %i.bo, %XXH_readLE32_align.exit.i ] ; 3 uses
  %.not24.i = icmp eq i64 %.015.lcssa.i, 0
  br i1 %.not24.i, label %XXH32_finalize.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %xtraiter26 = and i64 %.015.lcssa.i, 3          ; 2 uses
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.127.i.prol = phi i32 [ %i.as, %.lr.ph.i.prol ], [ %.0.lcssa.i, %.lr.ph.i.preheader ]
  %.11626.i.prol = phi i64 [ %i.at, %.lr.ph.i.prol ], [ %.015.lcssa.i, %.lr.ph.i.preheader ]
  %.11825.i.prol = phi ptr [ %i.am, %.lr.ph.i.prol ], [ %.017.lcssa.i, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter28 = phi i64 [ %prol.iter28.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %.11825.i.prol, i64 1 ; 2 uses
  %i.an = load i8, ptr %.11825.i.prol, align 1, !tbaa !13
  %i.ao = zext i8 %i.an to i32
  %i.ap = mul i32 %i.ao, 374761393
  %i.aq = add i32 %i.ap, %.127.i.prol             ; 2 uses
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %i.aq, i32 %i.aq, i32 11)
  %i.as = mul i32 %i.ar, -1640531535              ; 3 uses
  %i.at = add nsw i64 %.11626.i.prol, -1          ; 2 uses
  %prol.iter28.next = add i64 %prol.iter28, 1     ; 2 uses
  %prol.iter28.cmp.not = icmp eq i64 %prol.iter28.next, %xtraiter26
  br i1 %prol.iter28.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !23

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.as, %.lr.ph.i.prol ]
  %.127.i.unr = phi i32 [ %.0.lcssa.i, %.lr.ph.i.preheader ], [ %i.as, %.lr.ph.i.prol ]
  %.11626.i.unr = phi i64 [ %.015.lcssa.i, %.lr.ph.i.preheader ], [ %i.at, %.lr.ph.i.prol ]
  %.11825.i.unr = phi ptr [ %.017.lcssa.i, %.lr.ph.i.preheader ], [ %i.am, %.lr.ph.i.prol ]
  %i.au = icmp ult i64 %.015.lcssa.i, 4
  br i1 %i.au, label %XXH32_finalize.exit, label %.lr.ph.i

XXH_readLE32_align.exit.i:                        ; preds = %XXH_readLE32_align.exit.i.prol.loopexit, %XXH_readLE32_align.exit.i
  %.021.i = phi i32 [ %i.bo, %XXH_readLE32_align.exit.i ], [ %.021.i.unr, %XXH_readLE32_align.exit.i.prol.loopexit ]
  %.01520.i = phi i64 [ %1, %XXH_readLE32_align.exit.i ], [ %.01520.i.unr, %XXH_readLE32_align.exit.i.prol.loopexit ]
  %.01719.i = phi ptr [ %i.bm, %XXH_readLE32_align.exit.i ], [ %.01719.i.unr, %XXH_readLE32_align.exit.i.prol.loopexit ] ; 5 uses
  %.0.i.i = load i32, ptr %.01719.i, align 1, !tbaa !8
  %i.av = mul i32 %.0.i.i, -1028477379
  %i.aw = add i32 %i.av, %.021.i                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01719.i, i64 4
  %i.ay = tail call i32 @llvm.fshl.i32(i32 %i.aw, i32 %i.aw, i32 17)
  %i.az = mul i32 %i.ay, 668265263
  %.0.i.i.1 = load i32, ptr %i.ax, align 1, !tbaa !8
  %i.ba = mul i32 %.0.i.i.1, -1028477379
  %i.bb = add i32 %i.ba, %i.az                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01719.i, i64 8
  %i.bd = tail call i32 @llvm.fshl.i32(i32 %i.bb, i32 %i.bb, i32 17)
  %i.be = mul i32 %i.bd, 668265263
  %.0.i.i.2 = load i32, ptr %i.bc, align 1, !tbaa !8
  %i.bf = mul i32 %.0.i.i.2, -1028477379
  %i.bg = add i32 %i.bf, %i.be                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.01719.i, i64 12
  %i.bi = tail call i32 @llvm.fshl.i32(i32 %i.bg, i32 %i.bg, i32 17)
  %i.bj = mul i32 %i.bi, 668265263
  %.0.i.i.3 = load i32, ptr %i.bh, align 1, !tbaa !8
  %i.bk = mul i32 %.0.i.i.3, -1028477379
  %i.bl = add i32 %i.bk, %i.bj                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01719.i, i64 16 ; 2 uses
  %i.bn = tail call i32 @llvm.fshl.i32(i32 %i.bl, i32 %i.bl, i32 17)
  %i.bo = mul i32 %i.bn, 668265263                ; 2 uses
  %1 = add nsw i64 %.01520.i, -16                 ; 3 uses
  %2 = icmp ugt i64 %1, 3
  br i1 %2, label %XXH_readLE32_align.exit.i, label %.preheader.i, !llvm.loop !15

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.127.i = phi i32 [ %i.cq, %.lr.ph.i ], [ %.127.i.unr, %.lr.ph.i.prol.loopexit ]
  %.11626.i = phi i64 [ %i.cr, %.lr.ph.i ], [ %.11626.i.unr, %.lr.ph.i.prol.loopexit ]
  %.11825.i = phi ptr [ %i.ck, %.lr.ph.i ], [ %.11825.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.11825.i, i64 1
  %i.bq = load i8, ptr %.11825.i, align 1, !tbaa !13
  %i.br = zext i8 %i.bq to i32
  %i.bs = mul i32 %i.br, 374761393
  %i.bt = add i32 %i.bs, %.127.i                  ; 2 uses
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %i.bt, i32 %i.bt, i32 11)
  %i.bv = mul i32 %i.bu, -1640531535
  %i.bw = getelementptr inbounds nuw i8, ptr %.11825.i, i64 2
  %i.bx = load i8, ptr %i.bp, align 1, !tbaa !13
  %i.by = zext i8 %i.bx to i32
  %i.bz = mul i32 %i.by, 374761393
  %i.ca = add i32 %i.bz, %i.bv                    ; 2 uses
  %i.cb = tail call i32 @llvm.fshl.i32(i32 %i.ca, i32 %i.ca, i32 11)
  %i.cc = mul i32 %i.cb, -1640531535
  %i.cd = getelementptr inbounds nuw i8, ptr %.11825.i, i64 3
  %i.ce = load i8, ptr %i.bw, align 1, !tbaa !13
  %i.cf = zext i8 %i.ce to i32
  %i.cg = mul i32 %i.cf, 374761393
  %i.ch = add i32 %i.cg, %i.cc                    ; 2 uses
  %i.ci = tail call i32 @llvm.fshl.i32(i32 %i.ch, i32 %i.ch, i32 11)
  %i.cj = mul i32 %i.ci, -1640531535
  %i.ck = getelementptr inbounds nuw i8, ptr %.11825.i, i64 4
  %i.cl = load i8, ptr %i.cd, align 1, !tbaa !13
  %i.cm = zext i8 %i.cl to i32
  %i.cn = mul i32 %i.cm, 374761393
  %i.co = add i32 %i.cn, %i.cj                    ; 2 uses
  %i.cp = tail call i32 @llvm.fshl.i32(i32 %i.co, i32 %i.co, i32 11)
  %i.cq = mul i32 %i.cp, -1640531535              ; 2 uses
  %i.cr = add nsw i64 %.11626.i, -4               ; 2 uses
  %.not.i.3 = icmp eq i64 %i.cr, 0
  br i1 %.not.i.3, label %XXH32_finalize.exit, label %.lr.ph.i, !llvm.loop !16

XXH32_finalize.exit:                              ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.preheader.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.cq, %.lr.ph.i ] ; 2 uses
  %i.cs = lshr i32 %.1.lcssa.i, 15
  %i.ct = xor i32 %i.cs, %.1.lcssa.i
  %i.cu = mul i32 %i.ct, -2048144777              ; 2 uses
  %i.cv = lshr i32 %i.cu, 13
  %i.cw = xor i32 %i.cv, %i.cu
  %i.cx = mul i32 %i.cw, -1028477379              ; 2 uses
  %i.cy = lshr i32 %i.cx, 16
  %i.cz = xor i32 %i.cy, %i.cx
  ret i32 %i.cz
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ZSTD_XXH32_canonicalFromHash(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %i.a, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @ZSTD_XXH32_hashFromCanonical(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %.val = load i32, ptr %0, align 1, !tbaa !8
  %i.a = tail call noundef i32 @llvm.bswap.i32(i32 %.val)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ZSTD_XXH64(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread52.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 31
  br i1 %i.b, label %bb.c, label %XXH64_endian_align.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -31
  %i.e = add i64 %2, 6983438078262162902
  %i.f = add i64 %2, -4417276706812531889
  %i.g = add i64 %2, 7046029288634856825
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.050.i = phi ptr [ %0, %bb.c ], [ %i.aa, %bb.d ] ; 5 uses
  %.048.i = phi i64 [ %i.e, %bb.c ], [ %i.k, %bb.d ]
  %.047.i = phi i64 [ %i.f, %bb.c ], [ %i.p, %bb.d ]
  %.046.i = phi i64 [ %2, %bb.c ], [ %i.u, %bb.d ]
  %.0.i = phi i64 [ %i.g, %bb.c ], [ %i.z, %bb.d ]
  %.050.i.val = load i64, ptr %.050.i, align 1, !tbaa !24
  %i.h = mul i64 %.050.i.val, -4417276706812531889
  %i.i = add i64 %i.h, %.048.i                    ; 2 uses
  %i.j = tail call i64 @llvm.fshl.i64(i64 %i.i, i64 %i.i, i64 31) ; 2 uses
  %i.k = mul i64 %i.j, -7046029288634856825       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.050.i, i64 8
  %.val = load i64, ptr %i.l, align 1, !tbaa !24
  %i.m = mul i64 %.val, -4417276706812531889
  %i.n = add i64 %i.m, %.047.i                    ; 2 uses
  %i.o = tail call i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 31) ; 2 uses
  %i.p = mul i64 %i.o, -7046029288634856825       ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.050.i, i64 16
  %.val6 = load i64, ptr %i.q, align 1, !tbaa !24
  %i.r = mul i64 %.val6, -4417276706812531889
  %i.s = add i64 %i.r, %.046.i                    ; 2 uses
  %i.t = tail call i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 31) ; 2 uses
  %i.u = mul i64 %i.t, -7046029288634856825       ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.050.i, i64 24
  %.val7 = load i64, ptr %i.v, align 1, !tbaa !24
  %i.w = mul i64 %.val7, -4417276706812531889
  %i.x = add i64 %i.w, %.0.i                      ; 2 uses
  %i.y = tail call i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 31) ; 2 uses
  %i.z = mul i64 %i.y, -7046029288634856825       ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.050.i, i64 32 ; 3 uses
  %i.ab = icmp ult ptr %i.aa, %i.d
  br i1 %i.ab, label %bb.d, label %XXH64_endian_align.exit.thread, !llvm.loop !26

XXH64_endian_align.exit.thread:                   ; preds = %bb.d
  %i.ac = tail call i64 @llvm.fshl.i64(i64 %i.k, i64 %i.k, i64 1)
  %i.ad = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 7)
  %i.ae = add i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 12)
  %i.ag = add i64 %i.ae, %i.af
  %i.ah = tail call i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 18)
  %i.ai = add i64 %i.ag, %i.ah
  %i.aj = mul i64 %i.j, -2381459717836149591      ; 2 uses
  %i.ak = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 31)
  %i.al = mul i64 %i.ak, -7046029288634856825
  %i.am = xor i64 %i.ai, %i.al
  %i.an = mul i64 %i.am, -7046029288634856825
  %i.ao = add i64 %i.an, -8796714831421723037
  %i.ap = mul i64 %i.o, -2381459717836149591      ; 2 uses
  %i.aq = tail call i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 31)
  %i.ar = mul i64 %i.aq, -7046029288634856825
  %i.as = xor i64 %i.ao, %i.ar
  %i.at = mul i64 %i.as, -7046029288634856825
  %i.au = add i64 %i.at, -8796714831421723037
  %i.av = mul i64 %i.t, -2381459717836149591      ; 2 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 31)
  %i.ax = mul i64 %i.aw, -7046029288634856825
  %i.ay = xor i64 %i.au, %i.ax
  %i.az = mul i64 %i.ay, -7046029288634856825
  %i.ba = add i64 %i.az, -8796714831421723037
  %i.bb = mul i64 %i.y, -2381459717836149591      ; 2 uses
  %i.bc = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 31)
  %i.bd = mul i64 %i.bc, -7046029288634856825
  %i.be = xor i64 %i.ba, %i.bd
  %i.bf = mul i64 %i.be, -7046029288634856825
  %i.bg = add i64 %i.bf, -8796714831421723037
  br label %bb.e

XXH64_endian_align.exit:                          ; preds = %bb.b
  %i.bh = add i64 %2, 2870177450012600261
  br label %bb.e

.thread52.i:                                      ; preds = %bb.a
  %i.bi = add i64 %2, 2870177450012600261
  %i.bj = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %i.bj)
  br label %XXH64_finalize.exit

bb.e:                                             ; preds = %XXH64_endian_align.exit, %XXH64_endian_align.exit.thread
  %.pn = phi i64 [ %i.bg, %XXH64_endian_align.exit.thread ], [ %i.bh, %XXH64_endian_align.exit ]
  %.1.i11 = phi ptr [ %i.aa, %XXH64_endian_align.exit.thread ], [ %0, %XXH64_endian_align.exit ] ; 4 uses
  %i.bk = add i64 %.pn, %1                        ; 3 uses
  %i.bl = and i64 %1, 31                          ; 5 uses
  %i.bm = icmp samesign ugt i64 %i.bl, 7
  br i1 %i.bm, label %XXH_readLE64_align.exit.i.preheader, label %._crit_edge.i

XXH_readLE64_align.exit.i.preheader:              ; preds = %bb.e
  %i.bn = add nsw i64 %i.bl, -8                   ; 2 uses
  %i.bo = and i64 %i.bn, 8
  %lcmp.mod.not.not = icmp eq i64 %i.bo, 0
  br i1 %lcmp.mod.not.not, label %XXH_readLE64_align.exit.i.prol, label %XXH_readLE64_align.exit.i.prol.loopexit

XXH_readLE64_align.exit.i.prol:                   ; preds = %XXH_readLE64_align.exit.i.preheader
  %.0.i30.i.prol = load i64, ptr %.1.i11, align 1, !tbaa !24
  %i.bp = mul i64 %.0.i30.i.prol, -4417276706812531889 ; 2 uses
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 31)
  %i.br = mul i64 %i.bq, -7046029288634856825
  %i.bs = getelementptr inbounds nuw i8, ptr %.1.i11, i64 8 ; 2 uses
  %i.bt = xor i64 %i.br, %i.bk                    ; 2 uses
  %i.bu = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 27)
  %i.bv = mul i64 %i.bu, -7046029288634856825
  %i.bw = add i64 %i.bv, -8796714831421723037     ; 2 uses
  %i.bx = add nsw i64 %i.bl, -8                   ; 2 uses
  br label %XXH_readLE64_align.exit.i.prol.loopexit

XXH_readLE64_align.exit.i.prol.loopexit:          ; preds = %XXH_readLE64_align.exit.i.prol, %XXH_readLE64_align.exit.i.preheader
  %.034.i.unr = phi i64 [ %i.bk, %XXH_readLE64_align.exit.i.preheader ], [ %i.bw, %XXH_readLE64_align.exit.i.prol ]
  %.02333.i.unr = phi ptr [ %.1.i11, %XXH_readLE64_align.exit.i.preheader ], [ %i.bs, %XXH_readLE64_align.exit.i.prol ]
  %.02632.i.unr = phi i64 [ %i.bl, %XXH_readLE64_align.exit.i.preheader ], [ %i.bx, %XXH_readLE64_align.exit.i.prol ]
  %.lcssa67.unr = phi ptr [ poison, %XXH_readLE64_align.exit.i.preheader ], [ %i.bs, %XXH_readLE64_align.exit.i.prol ]
  %.lcssa66.unr = phi i64 [ poison, %XXH_readLE64_align.exit.i.preheader ], [ %i.bw, %XXH_readLE64_align.exit.i.prol ]
  %.lcssa65.unr = phi i64 [ poison, %XXH_readLE64_align.exit.i.preheader ], [ %i.bx, %XXH_readLE64_align.exit.i.prol ]
  %i.by = icmp ult i64 %i.bn, 8
  br i1 %i.by, label %._crit_edge.i, label %XXH_readLE64_align.exit.i
end_hunk_0
