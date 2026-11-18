Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/rescaler?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@WebPRescalerImportRowExpand_C:bb.a
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %i.o
  br i1 %exitcond75.not, label %._crit_edge58, label %.lr.ph57.split.us, !llvm.loop !28

.lr.ph.us:                                        ; preds = %.lr.ph57.split.us
  %i.am = zext i8 %i.u to i32
  %i.an = load i32, ptr %i.n, align 8, !tbaa !19
  br label %bb.b

.lr.ph57.split:                                   ; preds = %.lr.ph57, %._crit_edge
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %._crit_edge ], [ 0, %.lr.ph57 ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ %i.o, %.lr.ph57 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv63
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !16
  %i.aq = zext i8 %i.ap to i32                    ; 3 uses
  %i.ar = mul i32 %i.h, %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv63
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !17
  %i.at = trunc i64 %indvars.iv63 to i32
  %i.au = add i32 %i.b, %i.at                     ; 2 uses
  %.not50 = icmp slt i32 %i.au, %i.e
  br i1 %.not50, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph57.split
  %i.av = load i32, ptr %i.n, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv60 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next61, %bb.g ] ; 2 uses
  %.054 = phi i32 [ %i.aq, %.lr.ph ], [ %.1, %bb.g ] ; 2 uses
  %.03853 = phi i32 [ %i.aq, %.lr.ph ], [ %.139, %bb.g ]
  %.04052 = phi i32 [ %i.h, %.lr.ph ], [ %.141, %bb.g ]
  %.04351 = phi i32 [ %i.au, %.lr.ph ], [ %.144, %bb.g ] ; 2 uses
  %i.aw = sub nsw i32 %.04052, %i.av              ; 3 uses
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = add nsw i32 %.04351, %i.b               ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %1, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nsw i32 %i.aw, %i.h
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.144 = phi i32 [ %i.ay, %bb.f ], [ %.04351, %bb.e ]
  %.141 = phi i32 [ %i.bd, %bb.f ], [ %i.aw, %bb.e ] ; 2 uses
  %.139 = phi i32 [ %.054, %bb.f ], [ %.03853, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %i.bc, %bb.f ], [ %.054, %bb.e ] ; 3 uses
  %i.be = mul i32 %.1, %i.h
  %i.bf = sub nsw i32 %.139, %.1
  %i.bg = mul i32 %i.bf, %.141
  %i.bh = add i32 %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv60
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !17
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, %i.o ; 2 uses
  %i.bj = trunc nuw i64 %indvars.iv.next61 to i32
  %.not = icmp sgt i32 %i.e, %i.bj
  br i1 %.not, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %.lr.ph57.split
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next64, %i.o
  br i1 %exitcond.not, label %._crit_edge58, label %.lr.ph57.split, !llvm.loop !28

._crit_edge58:                                    ; preds = %._crit_edge, %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPRescalerImportRowShrink_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  %i.e = mul nsw i32 %i.d, %i.b                   ; 2 uses
  %i.f = icmp sgt i32 %i.b, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge52

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = zext nneg i32 %i.b to i64
  %i.l = zext nneg i32 %i.b to i64                ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge50
  %indvars.iv57 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next58, %._crit_edge50 ] ; 3 uses
  %indvars62 = trunc i64 %indvars.iv57 to i32     ; 2 uses
  %i.m = icmp sgt i32 %i.e, %indvars62
  br i1 %i.m, label %.lr.ph49, label %._crit_edge50

.lr.ph49:                                         ; preds = %.preheader
  %i.n = load i32, ptr %i.g, align 4, !tbaa !14
  %i.o = load i32, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.q = load i32, ptr %i.j, align 4, !tbaa !33
  %i.r = zext i32 %i.q to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph49, %._crit_edge
  %indvars.iv59 = phi i64 [ %indvars.iv57, %.lr.ph49 ], [ %indvars.iv.next60, %._crit_edge ] ; 2 uses
  %.03148 = phi i32 [ 0, %.lr.ph49 ], [ %.1.lcssa, %._crit_edge ]
  %.03247 = phi i32 [ 0, %.lr.ph49 ], [ %i.al, %._crit_edge ] ; 2 uses
  %.03545 = phi i32 [ %indvars62, %.lr.ph49 ], [ %.136.lcssa, %._crit_edge ] ; 2 uses
  %i.s = add nsw i32 %i.n, %.03148                ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.u = sext i32 %.03545 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.141 = phi i32 [ %i.s, %.lr.ph ], [ %i.v, %bb.c ]
  %.13340 = phi i32 [ %.03247, %.lr.ph ], [ %i.z, %bb.c ]
  %i.v = sub nsw i32 %.141, %i.o                  ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %1, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = add i32 %.13340, %i.y                    ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.k ; 2 uses
  %i.aa = icmp sgt i32 %i.v, 0
  br i1 %i.aa, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !30

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.ab = trunc nsw i64 %indvars.iv.next to i32
  %i.ac = mul i32 %i.v, %i.y
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.136.lcssa = phi i32 [ %.03545, %bb.b ], [ %i.ab, %._crit_edge.loopexit ]
  %.133.lcssa = phi i32 [ %.03247, %bb.b ], [ %i.z, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %i.s, %bb.b ], [ %i.v, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %i.ac, %._crit_edge.loopexit ] ; 2 uses
  %i.ad = sub i32 0, %.0.lcssa
  %i.ae = mul i32 %i.o, %.133.lcssa
  %i.af = add i32 %i.ae, %.0.lcssa
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv59
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !17
  %i.ah = zext i32 %i.ad to i64
  %i.ai = mul nuw i64 %i.r, %i.ah
  %i.aj = add nuw i64 %i.ai, 2147483648
  %i.ak = lshr i64 %i.aj, 32
  %i.al = trunc nuw i64 %i.ak to i32
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, %i.l ; 2 uses
  %i.am = trunc nuw i64 %indvars.iv.next60 to i32
  %i.an = icmp sgt i32 %i.e, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge50, !llvm.loop !31

._crit_edge50:                                    ; preds = %._crit_edge, %.preheader
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next58, %i.l
  br i1 %exitcond.not, label %._crit_edge52, label %.preheader, !llvm.loop !32

._crit_edge52:                                    ; preds = %._crit_edge50, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPRescalerExportRowExpand_C(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !12
  %i.i = mul i32 %i.h, %i.f                       ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.o = icmp sgt i32 %i.i, 0
  br i1 %i.o, label %.lr.ph39, label %.loopexit

.lr.ph39:                                         ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %wide.trip.count45 = zext nneg i32 %i.i to i64  ; 7 uses
  %min.iters.check83 = icmp ult i32 %i.i, 8
  br i1 %min.iters.check83, label %scalar.ph82.preheader, label %vector.memcheck84

vector.memcheck84:                                ; preds = %.lr.ph39
  %i.q = getelementptr i8, ptr %i.b, i64 %wide.trip.count45 ; 2 uses
  %i.r = shl nuw nsw i64 %wide.trip.count45, 2
  %i.s = getelementptr i8, ptr %i.k, i64 %i.r
  %1 = getelementptr i8, ptr %0, i64 20
  %bound085.a = icmp ult ptr %i.b, %i.s
  %bound186 = icmp ult ptr %i.k, %i.q
  %found.conflict87 = and i1 %bound085.a, %bound186
  %bound088 = icmp ult ptr %i.b, %1
  %bound189 = icmp ult ptr %i.p, %i.q
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx91 = or i1 %found.conflict87, %found.conflict90
  br i1 %conflict.rdx91, label %scalar.ph82.preheader, label %vector.ph92

vector.ph92:                                      ; preds = %vector.memcheck84
  %n.vec93 = and i64 %wide.trip.count45, 2147483644 ; 3 uses
  %i.t = load i32, ptr %i.p, align 8, !tbaa !23, !alias.scope !47
  %broadcast.splatinsert94 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat95 = shufflevector <4 x i32> %broadcast.splatinsert94, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.u = zext <4 x i32> %broadcast.splat95 to <4 x i64>
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph92
  %index97 = phi i64 [ 0, %vector.ph92 ], [ %index.next99, %vector.body96 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index97
  %wide.load98 = load <4 x i32>, ptr %i.v, align 4, !tbaa !17, !alias.scope !48
  %i.w = zext <4 x i32> %wide.load98 to <4 x i64>
  %i.x = mul nuw <4 x i64> %i.u, %i.w
  %i.y = add nuw <4 x i64> %i.x, splat (i64 2147483648)
  %i.z = lshr <4 x i64> %i.y, splat (i64 32)      ; 2 uses
  %i.aa = trunc nuw <4 x i64> %i.z to <4 x i32>
  %i.ab = icmp sgt <4 x i32> %i.aa, splat (i32 255)
  %i.ac = trunc <4 x i64> %i.z to <4 x i8>
  %i.ad = select <4 x i1> %i.ab, <4 x i8> splat (i8 -1), <4 x i8> %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %index97
  store <4 x i8> %i.ad, ptr %i.ae, align 1, !tbaa !16, !alias.scope !49, !noalias !50
  %index.next99 = add nuw i64 %index97, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next99, %n.vec93
  br i1 %i.af, label %middle.block100, label %vector.body96, !llvm.loop !38

middle.block100:                                  ; preds = %vector.body96
  %cmp.n101 = icmp eq i64 %n.vec93, %wide.trip.count45
  br i1 %cmp.n101, label %.loopexit, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %vector.memcheck84, %.lr.ph39, %middle.block100
  %indvars.iv42.ph = phi i64 [ 0, %vector.memcheck84 ], [ 0, %.lr.ph39 ], [ %n.vec93, %middle.block100 ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count45, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph82.prol.loopexit, label %scalar.ph82.prol

scalar.ph82.prol:                                 ; preds = %scalar.ph82.preheader
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv42.ph
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !17
  %i.ai = zext i32 %i.ah to i64
  %i.aj = load i32, ptr %i.p, align 8, !tbaa !23
  %i.ak = zext i32 %i.aj to i64
  %i.al = mul nuw i64 %i.ak, %i.ai
  %i.am = add nuw i64 %i.al, 2147483648
  %i.an = lshr i64 %i.am, 32                      ; 2 uses
  %i.ao = trunc nuw i64 %i.an to i32
  %i.ap = icmp sgt i32 %i.ao, 255
  %i.aq = trunc i64 %i.an to i8
  %i.ar = select i1 %i.ap, i8 -1, i8 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv42.ph
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !16
  %indvars.iv.next43.prol = or disjoint i64 %indvars.iv42.ph, 1
  br label %scalar.ph82.prol.loopexit

scalar.ph82.prol.loopexit:                        ; preds = %scalar.ph82.prol, %scalar.ph82.preheader
  %indvars.iv42.unr = phi i64 [ %indvars.iv42.ph, %scalar.ph82.preheader ], [ %indvars.iv.next43.prol, %scalar.ph82.prol ]
  %i.at = add nsw i64 %wide.trip.count45, -1
  %i.au = icmp eq i64 %indvars.iv42.ph, %i.at
  br i1 %i.au, label %.loopexit, label %scalar.ph82

scalar.ph82:                                      ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82
  %indvars.iv42 = phi i64 [ %indvars.iv.next43.1, %scalar.ph82 ], [ %indvars.iv42.unr, %scalar.ph82.prol.loopexit ] ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv42
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !17
  %i.ax = zext i32 %i.aw to i64
  %i.ay = load i32, ptr %i.p, align 8, !tbaa !23
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nuw i64 %i.az, %i.ax
  %i.bb = add nuw i64 %i.ba, 2147483648
  %i.bc = lshr i64 %i.bb, 32                      ; 2 uses
  %i.bd = trunc nuw i64 %i.bc to i32
  %i.be = icmp sgt i32 %i.bd, 255
  %i.bf = trunc i64 %i.bc to i8
  %i.bg = select i1 %i.be, i8 -1, i8 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv42
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !16
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next43
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !17
  %i.bk = zext i32 %i.bj to i64
  %i.bl = load i32, ptr %i.p, align 8, !tbaa !23
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul nuw i64 %i.bm, %i.bk
  %i.bo = add nuw i64 %i.bn, 2147483648
  %i.bp = lshr i64 %i.bo, 32                      ; 2 uses
  %i.bq = trunc nuw i64 %i.bp to i32
  %i.br = icmp sgt i32 %i.bq, 255
  %i.bs = trunc i64 %i.bp to i8
  %i.bt = select i1 %i.br, i8 -1, i8 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next43
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !16
  %indvars.iv.next43.1 = add nuw nsw i64 %indvars.iv42, 2 ; 2 uses
  %exitcond46.not.1 = icmp eq i64 %indvars.iv.next43.1, %wide.trip.count45
  br i1 %exitcond46.not.1, label %.loopexit, label %scalar.ph82, !llvm.loop !39

bb.b:                                             ; preds = %bb.a
  %i.bv = sub nsw i32 0, %i.m
  %i.bw = sext i32 %i.bv to i64
  %i.bx = shl nsw i64 %i.bw, 32
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !51
  %i.ca = sext i32 %i.bz to i64
  %i.cb = udiv i64 %i.bx, %i.ca                   ; 2 uses
  %i.cc = and i64 %i.cb, 4294967295               ; 2 uses
  %i.cd = icmp sgt i32 %i.i, 0
  br i1 %i.cd, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.ce = sub i64 0, %i.cb
  %i.cf = and i64 %i.ce, 4294967295               ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.i, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ch = getelementptr i8, ptr %i.b, i64 %wide.trip.count ; 3 uses
  %i.ci = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %2 = getelementptr i8, ptr %i.k, i64 %i.ci
  %i.cj = getelementptr i8, ptr %i.d, i64 %i.ci
  %3 = getelementptr i8, ptr %0, i64 20
  %bound0.a = icmp ult ptr %i.b, %2
  %bound1 = icmp ult ptr %i.k, %i.ch
  %found.conflict = and i1 %bound0.a, %bound1
  %bound060 = icmp ult ptr %i.b, %i.cj
  %bound161 = icmp ult ptr %i.d, %i.ch
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx = or i1 %found.conflict, %found.conflict62
  %bound063 = icmp ult ptr %i.b, %3
  %bound164 = icmp ult ptr %i.cg, %i.ch
  %found.conflict65 = and i1 %bound063, %bound164
  %conflict.rdx66 = or i1 %conflict.rdx, %found.conflict65
  br i1 %conflict.rdx66, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %i.ck = load i32, ptr %i.cg, align 8, !tbaa !23, !alias.scope !52
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ck, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cl = zext <4 x i32> %broadcast.splat to <4 x i64>
  %broadcast.splatinsert67 = insertelement <4 x i64> poison, i64 %i.cf, i64 0
  %broadcast.splat68 = shufflevector <4 x i64> %broadcast.splatinsert67, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert69 = insertelement <4 x i64> poison, i64 %i.cc, i64 0
  %broadcast.splat70 = shufflevector <4 x i64> %broadcast.splatinsert69, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index
  %wide.load = load <4 x i32>, ptr %i.cm, align 4, !tbaa !17, !alias.scope !53
  %i.cn = zext <4 x i32> %wide.load to <4 x i64>
  %i.co = mul nuw <4 x i64> %broadcast.splat68, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index
  %wide.load71 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !17, !alias.scope !54
  %i.cq = zext <4 x i32> %wide.load71 to <4 x i64>
  %i.cr = mul nuw <4 x i64> %broadcast.splat70, %i.cq
  %i.cs = add nuw <4 x i64> %i.co, splat (i64 2147483648)
  %i.ct = add <4 x i64> %i.cs, %i.cr
  %i.cu = lshr <4 x i64> %i.ct, splat (i64 32)
  %i.cv = mul nuw <4 x i64> %i.cu, %i.cl
  %i.cw = add nuw <4 x i64> %i.cv, splat (i64 2147483648)
  %i.cx = lshr <4 x i64> %i.cw, splat (i64 32)    ; 2 uses
  %i.cy = trunc nuw <4 x i64> %i.cx to <4 x i32>
  %i.cz = icmp sgt <4 x i32> %i.cy, splat (i32 255)
  %i.da = trunc <4 x i64> %i.cx to <4 x i8>
  %i.db = select <4 x i1> %i.cz, <4 x i8> splat (i8 -1), <4 x i8> %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  store <4 x i8> %i.db, ptr %i.dc, align 1, !tbaa !16, !alias.scope !55, !noalias !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.df = load i32, ptr %i.de, align 4, !tbaa !17
  %i.dg = zext i32 %i.df to i64
  %i.dh = mul nuw i64 %i.cf, %i.dg
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !17
  %i.dk = zext i32 %i.dj to i64
  %i.dl = mul nuw i64 %i.cc, %i.dk
  %i.dm = add nuw i64 %i.dh, 2147483648
  %i.dn = add i64 %i.dm, %i.dl
  %i.do = lshr i64 %i.dn, 32
  %i.dp = load i32, ptr %i.cg, align 8, !tbaa !23
  %i.dq = zext i32 %i.dp to i64
  %i.dr = mul nuw i64 %i.do, %i.dq
  %i.ds = add nuw i64 %i.dr, 2147483648
  %i.dt = lshr i64 %i.ds, 32                      ; 2 uses
  %i.du = trunc nuw i64 %i.dt to i32
  %i.dv = icmp sgt i32 %i.du, 255
  %i.dw = trunc i64 %i.dt to i8
  %i.dx = select i1 %i.dv, i8 -1, i8 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !46

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph82.prol.loopexit, %scalar.ph82, %middle.block, %middle.block100, %bb.b, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPRescalerExportRowShrink_C(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !12
  %i.i = mul i32 %i.h, %i.f                       ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !22
  %i.p = mul i32 %i.o, %i.m                       ; 2 uses
  %i.q = sub i32 0, %i.p                          ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  %i.r = icmp sgt i32 %i.i, 0                     ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader37

.preheader37:                                     ; preds = %bb.a
  br i1 %i.r, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader37
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.i, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.t = getelementptr i8, ptr %i.b, i64 %wide.trip.count ; 3 uses
  %i.u = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %1 = getelementptr i8, ptr %i.d, i64 %i.u       ; 3 uses
  %i.v = getelementptr i8, ptr %i.k, i64 %i.u     ; 2 uses
  %2 = getelementptr i8, ptr %0, i64 24           ; 2 uses
  %bound0.a = icmp ult ptr %i.b, %1
  %bound1 = icmp ult ptr %i.d, %i.t
  %found.conflict = and i1 %bound0.a, %bound1
  %bound069 = icmp ult ptr %i.b, %i.v
  %bound170 = icmp ult ptr %i.k, %i.t
  %found.conflict71 = and i1 %bound069, %bound170
  %conflict.rdx = or i1 %found.conflict, %found.conflict71
  %bound072 = icmp ult ptr %i.b, %2
  %bound173 = icmp ult ptr %i.s, %i.t
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx75 = or i1 %conflict.rdx, %found.conflict74
  %bound076 = icmp ult ptr %i.d, %i.v
  %bound177 = icmp ult ptr %i.k, %1
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx79 = or i1 %conflict.rdx75, %found.conflict78
  %bound080 = icmp ult ptr %i.d, %2
  %bound181 = icmp ult ptr %i.s, %1
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx83 = or i1 %conflict.rdx79, %found.conflict82
  br i1 %conflict.rdx83, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %i.w = load i32, ptr %i.s, align 4, !tbaa !26, !alias.scope !70
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.x = zext <4 x i32> %broadcast.splat to <4 x i64>
  %broadcast.splatinsert84 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat85 = shufflevector <4 x i32> %broadcast.splatinsert84, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index
  %wide.load = load <4 x i32>, ptr %i.y, align 4, !tbaa !17, !alias.scope !71
  %i.z = tail call <4 x i32> @llvm.umulh.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat85) ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %wide.load86 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !17, !alias.scope !72, !noalias !73
  %i.ab = sub <4 x i32> %wide.load86, %i.z
  %i.ac = zext <4 x i32> %i.ab to <4 x i64>
  %i.ad = mul nuw <4 x i64> %i.ac, %i.x
  %i.ae = add nuw <4 x i64> %i.ad, splat (i64 2147483648)
  %i.af = lshr <4 x i64> %i.ae, splat (i64 32)    ; 2 uses
  %i.ag = trunc nuw <4 x i64> %i.af to <4 x i32>
  %i.ah = icmp sgt <4 x i32> %i.ag, splat (i32 255)
  %i.ai = trunc <4 x i64> %i.af to <4 x i8>
  %i.aj = select <4 x i1> %i.ah, <4 x i8> splat (i8 -1), <4 x i8> %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  store <4 x i8> %i.aj, ptr %i.ak, align 1, !tbaa !16, !alias.scope !74, !noalias !75
  store <4 x i32> %i.z, ptr %i.aa, align 4, !tbaa !17, !alias.scope !72, !noalias !73
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %bb.a
  br i1 %i.r, label %.lr.ph41, label %.loopexit

.lr.ph41:                                         ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %wide.trip.count47 = zext nneg i32 %i.i to i64  ; 7 uses
  %min.iters.check102 = icmp ult i32 %i.i, 12
  br i1 %min.iters.check102, label %scalar.ph101.preheader, label %vector.memcheck103

vector.memcheck103:                               ; preds = %.lr.ph41
  %i.an = getelementptr i8, ptr %i.b, i64 %wide.trip.count47 ; 2 uses
  %i.ao = shl nuw nsw i64 %wide.trip.count47, 2
  %i.ap = getelementptr i8, ptr %i.d, i64 %i.ao   ; 2 uses
  %3 = getelementptr i8, ptr %0, i64 24           ; 2 uses
  %bound0104.a = icmp ult ptr %i.b, %i.ap
  %bound1105 = icmp ult ptr %i.d, %i.an
  %found.conflict106 = and i1 %bound0104.a, %bound1105
  %bound0107 = icmp ult ptr %i.b, %3
  %bound1108 = icmp ult ptr %i.am, %i.an
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx110 = or i1 %found.conflict106, %found.conflict109
  %bound0111 = icmp ult ptr %i.d, %3
  %bound1112 = icmp ult ptr %i.am, %i.ap
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx114 = or i1 %conflict.rdx110, %found.conflict113
  br i1 %conflict.rdx114, label %scalar.ph101.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck103
  %n.vec116 = and i64 %wide.trip.count47, 2147483644 ; 3 uses
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !26, !alias.scope !76
  %broadcast.splatinsert117 = insertelement <4 x i32> poison, i32 %i.aq, i64 0
  %broadcast.splat118 = shufflevector <4 x i32> %broadcast.splatinsert117, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ar = zext <4 x i32> %broadcast.splat118 to <4 x i64>
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph115
  %index120 = phi i64 [ 0, %vector.ph115 ], [ %index.next122, %vector.body119 ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index120 ; 2 uses
  %wide.load121 = load <4 x i32>, ptr %i.as, align 4, !tbaa !17, !alias.scope !77, !noalias !76
  %i.at = zext <4 x i32> %wide.load121 to <4 x i64>
  %i.au = mul nuw <4 x i64> %i.ar, %i.at
  %i.av = add nuw <4 x i64> %i.au, splat (i64 2147483648)
  %i.aw = lshr <4 x i64> %i.av, splat (i64 32)    ; 2 uses
  %i.ax = trunc nuw <4 x i64> %i.aw to <4 x i32>
  %i.ay = icmp sgt <4 x i32> %i.ax, splat (i32 255)
  %i.az = trunc <4 x i64> %i.aw to <4 x i8>
  %i.ba = select <4 x i1> %i.ay, <4 x i8> splat (i8 -1), <4 x i8> %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 %index120
  store <4 x i8> %i.ba, ptr %i.bb, align 1, !tbaa !16, !alias.scope !78, !noalias !79
  store <4 x i32> zeroinitializer, ptr %i.as, align 4, !tbaa !17, !alias.scope !77, !noalias !76
  %index.next122 = add nuw i64 %index120, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bc, label %middle.block123, label %vector.body119, !llvm.loop !67

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %n.vec116, %wide.trip.count47
  br i1 %cmp.n124, label %.loopexit, label %scalar.ph101.preheader

scalar.ph101.preheader:                           ; preds = %vector.memcheck103, %.lr.ph41, %middle.block123
  %indvars.iv44.ph = phi i64 [ 0, %vector.memcheck103 ], [ 0, %.lr.ph41 ], [ %n.vec116, %middle.block123 ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count47, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph101.prol.loopexit, label %scalar.ph101.prol

scalar.ph101.prol:                                ; preds = %scalar.ph101.preheader
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv44.ph ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !17
  %i.bf = zext i32 %i.be to i64
  %i.bg = load i32, ptr %i.am, align 4, !tbaa !26
  %i.bh = zext i32 %i.bg to i64
  %i.bi = mul nuw i64 %i.bh, %i.bf
  %i.bj = add nuw i64 %i.bi, 2147483648
  %i.bk = lshr i64 %i.bj, 32                      ; 2 uses
  %i.bl = trunc nuw i64 %i.bk to i32
  %i.bm = icmp sgt i32 %i.bl, 255
  %i.bn = trunc i64 %i.bk to i8
  %i.bo = select i1 %i.bm, i8 -1, i8 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv44.ph
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !16
  store i32 0, ptr %i.bd, align 4, !tbaa !17
  %indvars.iv.next45.prol = or disjoint i64 %indvars.iv44.ph, 1
  br label %scalar.ph101.prol.loopexit

scalar.ph101.prol.loopexit:                       ; preds = %scalar.ph101.prol, %scalar.ph101.preheader
  %indvars.iv44.unr = phi i64 [ %indvars.iv44.ph, %scalar.ph101.preheader ], [ %indvars.iv.next45.prol, %scalar.ph101.prol ]
  %i.bq = add nsw i64 %wide.trip.count47, -1
  %i.br = icmp eq i64 %indvars.iv44.ph, %i.bq
  br i1 %i.br, label %.loopexit, label %scalar.ph101

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !17
  %i.bu = tail call i32 @llvm.umulh.i32(i32 %i.bt, i32 %i.q) ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !17
  %i.bx = sub i32 %i.bw, %i.bu
  %i.by = zext i32 %i.bx to i64
  %i.bz = load i32, ptr %i.s, align 4, !tbaa !26
  %i.ca = zext i32 %i.bz to i64
  %i.cb = mul nuw i64 %i.by, %i.ca
  %i.cc = add nuw i64 %i.cb, 2147483648
  %i.cd = lshr i64 %i.cc, 32                      ; 2 uses
  %i.ce = trunc nuw i64 %i.cd to i32
  %i.cf = icmp sgt i32 %i.ce, 255
  %i.cg = trunc i64 %i.cd to i8
  %i.ch = select i1 %i.cf, i8 -1, i8 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !16
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !68

scalar.ph101:                                     ; preds = %scalar.ph101.prol.loopexit, %scalar.ph101
  %indvars.iv44 = phi i64 [ %indvars.iv.next45.1, %scalar.ph101 ], [ %indvars.iv44.unr, %scalar.ph101.prol.loopexit ] ; 4 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv44 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !17
  %i.cl = zext i32 %i.ck to i64
  %i.cm = load i32, ptr %i.am, align 4, !tbaa !26
  %i.cn = zext i32 %i.cm to i64
  %i.co = mul nuw i64 %i.cn, %i.cl
  %i.cp = add nuw i64 %i.co, 2147483648
  %i.cq = lshr i64 %i.cp, 32                      ; 2 uses
  %i.cr = trunc nuw i64 %i.cq to i32
  %i.cs = icmp sgt i32 %i.cr, 255
  %i.ct = trunc i64 %i.cq to i8
  %i.cu = select i1 %i.cs, i8 -1, i8 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv44
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !16
  store i32 0, ptr %i.cj, align 4, !tbaa !17
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next45 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !17
  %i.cy = zext i32 %i.cx to i64
  %i.cz = load i32, ptr %i.am, align 4, !tbaa !26
  %i.da = zext i32 %i.cz to i64
  %i.db = mul nuw i64 %i.da, %i.cy
  %i.dc = add nuw i64 %i.db, 2147483648
  %i.dd = lshr i64 %i.dc, 32                      ; 2 uses
  %i.de = trunc nuw i64 %i.dd to i32
  %i.df = icmp sgt i32 %i.de, 255
  %i.dg = trunc i64 %i.dd to i8
  %i.dh = select i1 %i.df, i8 -1, i8 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next45
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !16
  store i32 0, ptr %i.cw, align 4, !tbaa !17
  %indvars.iv.next45.1 = add nuw nsw i64 %indvars.iv44, 2 ; 2 uses
  %exitcond48.not.1 = icmp eq i64 %indvars.iv.next45.1, %wide.trip.count47
  br i1 %exitcond48.not.1, label %.loopexit, label %scalar.ph101, !llvm.loop !69

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph101.prol.loopexit, %scalar.ph101, %middle.block, %middle.block123, %.preheader37, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @WebPRescalerImportRow(ptr noalias noundef %0, ptr noalias noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !80
  %.not = icmp eq i32 %i.a, 0
  %WebPRescalerImportRowShrink.val = load ptr, ptr @WebPRescalerImportRowShrink, align 8
  %WebPRescalerImportRowExpand.val = load ptr, ptr @WebPRescalerImportRowExpand, align 8
  %i.b = select i1 %.not, ptr %WebPRescalerImportRowShrink.val, ptr %WebPRescalerImportRowExpand.val
  tail call void %i.b(ptr noundef nonnull %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @WebPRescalerExportRow(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !82
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %.preheader, label %.loopexit.sink.split

.preheader:                                       ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.j = load i32, ptr %i.h, align 8, !tbaa !12
  %i.k = load i32, ptr %i.i, align 4, !tbaa !13
  %i.l = mul nsw i32 %i.k, %i.j
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.p = phi ptr [ %.pre, %.lr.ph ], [ %i.v, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !17
  %i.s = trunc i32 %i.r to i8
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  store i8 %i.s, ptr %i.u, align 1, !tbaa !16
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store i32 0, ptr %i.w, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = load i32, ptr %i.h, align 8, !tbaa !12
  %i.y = load i32, ptr %i.i, align 4, !tbaa !13
end_hunk_0
