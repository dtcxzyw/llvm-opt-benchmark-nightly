inline.NumInlined: 1
begin_hunk_0_@set_fderives:bb.a
  %i.bl = mul nsw i32 %i.bh, %i.be
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bm
  br label %.lr.ph39.split

.lr.ph39.split:                                   ; preds = %.lr.ph39.split.preheader, %._crit_edge
  %.pre44 = phi i32 [ %.pre45, %._crit_edge ], [ %i.bf, %.lr.ph39.split.preheader ] ; 2 uses
  %i.bo = phi i32 [ %i.ct, %._crit_edge ], [ %i.bf, %.lr.ph39.split.preheader ] ; 2 uses
  %.038 = phi i32 [ %i.cv, %._crit_edge ], [ %i.be, %.lr.ph39.split.preheader ] ; 2 uses
  %.01837 = phi ptr [ %i.cu, %._crit_edge ], [ %i.bn, %.lr.ph39.split.preheader ] ; 2 uses
  %i.bp = load i32, ptr @ntokens, align 4, !tbaa !4 ; 3 uses
  %i.bq = icmp slt i32 %i.bp, %i.bo
  br i1 %i.bq, label %.lr.ph36, label %._crit_edge

.lr.ph36:                                         ; preds = %.lr.ph39.split
  %i.br = sub nsw i32 %.038, %i.bp
  %i.bs = mul nsw i32 %i.br, %i.bi
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %.pre43, i64 %i.bt
  %i.bv = load ptr, ptr @derives, align 8
  %i.bw = sext i32 %i.bp to i64
  br label %.outer

.outer:                                           ; preds = %bb.g, %.lr.ph36
  %.pre46.ph = phi i32 [ %.pre, %bb.g ], [ %.pre44, %.lr.ph36 ]
  %indvars.iv.ph = phi i64 [ %i.cq, %bb.g ], [ %i.bw, %.lr.ph36 ]
  %.02035.ph.in = phi ptr [ %.02432.ph, %bb.g ], [ %i.bu, %.lr.ph36 ] ; 2 uses
  %.02432.ph = getelementptr inbounds nuw i8, ptr %.02035.ph.in, i64 4
  %.02035.ph = load i32, ptr %.02035.ph.in, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %.outer, %.loopexit._crit_edge
  %.pre46 = phi i32 [ %.pre, %.loopexit._crit_edge ], [ %.pre46.ph, %.outer ] ; 2 uses
  %indvars.iv = phi i64 [ %i.cq, %.loopexit._crit_edge ], [ %indvars.iv.ph, %.outer ] ; 2 uses
  %.02134 = phi i32 [ %i.co, %.loopexit._crit_edge ], [ 1, %.outer ] ; 2 uses
  %i.bx = and i32 %.02035.ph, %.02134
  %.not30 = icmp eq i32 %i.bx, 0
  br i1 %.not30, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %indvars.iv
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !8  ; 2 uses
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !16 ; 2 uses
  %i.cb = icmp sgt i16 %i.ca, 0
  br i1 %i.cb, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %i.cc = phi i16 [ %i.cm, %.lr.ph ], [ %i.ca, %bb.f ]
  %.01931 = phi ptr [ %i.ce, %.lr.ph ], [ %i.bz, %bb.f ]
  %i.cd = zext nneg i16 %i.cc to i32              ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.01931, i64 2 ; 2 uses
  %i.cf = and i32 %i.cd, 31
  %i.cg = shl nuw i32 1, %i.cf
  %i.ch = lshr i32 %i.cd, 5
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.01837, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = or i32 %i.ck, %i.cg
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !4
  %i.cm = load i16, ptr %i.ce, align 2, !tbaa !16 ; 2 uses
  %i.cn = icmp sgt i16 %i.cm, 0
  br i1 %i.cn, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !21

.loopexit.loopexit:                               ; preds = %.lr.ph
  %.pre.pre = load i32, ptr @nsyms, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.f, %bb.e
  %.pre = phi i32 [ %.pre.pre, %.loopexit.loopexit ], [ %.pre46, %bb.f ], [ %.pre46, %bb.e ] ; 7 uses
  %i.co = shl i32 %.02134, 1                      ; 2 uses
  %i.cp = icmp eq i32 %i.co, 0
  %i.cq = add nsw i64 %indvars.iv, 1              ; 3 uses
  %i.cr = sext i32 %.pre to i64
  %i.cs = icmp slt i64 %i.cq, %i.cr               ; 2 uses
  br i1 %i.cp, label %bb.g, label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit
  br i1 %i.cs, label %bb.e, label %._crit_edge, !llvm.loop !22

bb.g:                                             ; preds = %.loopexit
  br i1 %i.cs, label %.outer, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.g, %.loopexit._crit_edge, %.lr.ph39.split
  %.pre45 = phi i32 [ %.pre44, %.lr.ph39.split ], [ %.pre, %.loopexit._crit_edge ], [ %.pre, %bb.g ]
  %i.ct = phi i32 [ %i.bo, %.lr.ph39.split ], [ %.pre, %.loopexit._crit_edge ], [ %.pre, %bb.g ] ; 2 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %.01837, i64 %i.bj
  %i.cv = add nsw i32 %.038, 1                    ; 2 uses
  %i.cw = icmp slt i32 %i.cv, %i.ct
  br i1 %i.cw, label %.lr.ph39.split, label %._crit_edge40, !llvm.loop !23

._crit_edge40:                                    ; preds = %._crit_edge, %set_firsts.exit
  %.not = icmp eq ptr %.pre43, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge40
  tail call void @free(ptr noundef nonnull %.pre43) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge40
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @set_firsts() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @nvars, align 4, !tbaa !4  ; 2 uses
  %i.b = add nsw i32 %i.a, 31
  %i.c = sdiv i32 %i.b, 32                        ; 3 uses
  store i32 %i.c, ptr @varsetsize, align 4, !tbaa !4
  %i.d = shl i32 %i.a, 2
  %i.e = mul i32 %i.d, %i.c
  %i.f = tail call ptr (i32, ...) @mallocate(i32 noundef %i.e) #7 ; 3 uses
  store ptr %i.f, ptr @firsts, align 8, !tbaa !11
  %i.g = load i32, ptr @ntokens, align 4, !tbaa !4 ; 3 uses
  %i.h = load i32, ptr @nsyms, align 4, !tbaa !4  ; 2 uses
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %.lr.ph20, label %._crit_edge21

.lr.ph20:                                         ; preds = %bb.a
  %i.j = load ptr, ptr @derives, align 8, !tbaa !13
  %i.k = load ptr, ptr @ritem, align 8
  %i.l = load ptr, ptr @rrhs, align 8
  %i.m = sext i32 %i.c to i64
  %i.n = sext i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph20, %._crit_edge
  %.pre23 = phi i32 [ %i.g, %.lr.ph20 ], [ %.pre2326, %._crit_edge ] ; 3 uses
  %i.o = phi i32 [ %i.h, %.lr.ph20 ], [ %i.ao, %._crit_edge ]
  %indvars.iv = phi i64 [ %i.n, %.lr.ph20 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.01217 = phi ptr [ %i.f, %.lr.ph20 ], [ %i.ap, %._crit_edge ] ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8    ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !16   ; 2 uses
  %i.s = icmp sgt i16 %i.r, -1
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.pre2327 = phi i32 [ %.pre2328, %bb.d ], [ %.pre23, %bb.b ]
  %i.t = phi i32 [ %i.al, %bb.d ], [ %.pre23, %bb.b ] ; 3 uses
  %i.u = phi i16 [ %i.am, %bb.d ], [ %i.r, %bb.b ]
  %.01316 = phi ptr [ %i.v, %bb.d ], [ %i.q, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %.01316, i64 2 ; 2 uses
  %i.w = zext nneg i16 %i.u to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !16
  %i.z = sext i16 %i.y to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !16
  %i.ac = sext i16 %i.ab to i32                   ; 2 uses
  %.not = icmp sgt i32 %i.t, %i.ac
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ad = sub nsw i32 %i.ac, %i.t                 ; 2 uses
  %i.ae = and i32 %i.ad, 31
  %i.af = shl nuw i32 1, %i.ae
  %i.ag = lshr i32 %i.ad, 5
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.01217, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = or i32 %i.aj, %i.af
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !4
  %.pre = load i32, ptr @ntokens, align 4, !tbaa !4 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %.pre2328 = phi i32 [ %.pre, %bb.c ], [ %.pre2327, %.lr.ph ] ; 2 uses
  %i.al = phi i32 [ %.pre, %bb.c ], [ %i.t, %.lr.ph ]
  %i.am = load i16, ptr %i.v, align 2, !tbaa !16  ; 2 uses
  %i.an = icmp sgt i16 %i.am, -1
  br i1 %i.an, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !18

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre24 = load i32, ptr @nsyms, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.pre2326 = phi i32 [ %.pre2328, %._crit_edge.loopexit ], [ %.pre23, %bb.b ]
  %i.ao = phi i32 [ %.pre24, %._crit_edge.loopexit ], [ %i.o, %bb.b ] ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %.01217, i64 %i.m
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aq = sext i32 %i.ao to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %bb.b, label %._crit_edge21, !llvm.loop !20

._crit_edge21:                                    ; preds = %._crit_edge, %bb.a
  %i.as = load i32, ptr @nvars, align 4, !tbaa !4
  tail call void @RTC(ptr noundef %i.f, i32 noundef %i.as) #7
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

declare void @RTC(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @closure(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = ptrtoaddr ptr %0 to i64
  %i.a = load ptr, ptr @ruleset, align 8, !tbaa !11 ; 14 uses
  %3 = ptrtoaddr ptr %i.a to i64                  ; 13 uses
  %i.b = load i32, ptr @rulesetsize, align 4, !tbaa !4
  %.fr86 = freeze i32 %i.b                        ; 4 uses
  %i.c = sext i32 %.fr86 to i64
  %.idx = shl nsw i64 %i.c, 2                     ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx ; 3 uses
  %i.e = sext i32 %1 to i64
  %.idx85 = shl nsw i64 %i.e, 1                   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %0, i64 %.idx85 ; 5 uses
  %i.g = icmp eq i32 %1, 0
  %i.h = icmp sgt i32 %.fr86, 0                   ; 2 uses
  br i1 %i.g, label %bb.b, label %.preheader60

.preheader60:                                     ; preds = %bb.a
  br i1 %i.h, label %.preheader58, label %.loopexit56.thread

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %.lr.ph69.preheader, label %.loopexit56.thread

.lr.ph69.preheader:                               ; preds = %bb.b
  %i.i = load ptr, ptr @fderives, align 8, !tbaa !11 ; 2 uses
  %i.j = load i32, ptr @start_symbol, align 4, !tbaa !4
  %i.k = mul i32 %i.j, %.fr86
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.l ; 4 uses
  %i.n = add i64 %.idx, %3
  %i.o = add i64 %3, 4
  %umax112 = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.o)
  %i.p = xor i64 %3, -1
  %i.q = add i64 %umax112, %i.p                   ; 2 uses
  %i.r = lshr i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check114 = icmp ult i64 %i.q, 76
  br i1 %min.iters.check114, label %.lr.ph69.preheader163, label %vector.memcheck111

vector.memcheck111:                               ; preds = %.lr.ph69.preheader
  %i.t = ptrtoaddr ptr %i.i to i64
  %i.u = shl nsw i64 %i.l, 2
  %i.v = add i64 %i.u, %i.t
  %i.w = sub i64 %i.v, %3
  %diff.check = icmp ugt i64 %i.w, -32
  br i1 %diff.check, label %.lr.ph69.preheader163, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck111
  %n.vec117 = and i64 %i.s, 9223372036854775800   ; 3 uses
  %i.x = shl i64 %n.vec117, 2                     ; 2 uses
  %i.y = getelementptr i8, ptr %i.m, i64 %i.x
  %i.z = getelementptr i8, ptr %i.a, i64 %i.x
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph115
  %index119 = phi i64 [ 0, %vector.ph115 ], [ %index.next124, %vector.body118 ] ; 2 uses
  %i.aa = shl i64 %index119, 2                    ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.m, i64 %i.aa ; 2 uses
  %next.gep121 = getelementptr i8, ptr %i.a, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep120, i64 16
  %wide.load122 = load <4 x i32>, ptr %next.gep120, align 4, !tbaa !4
  %wide.load123 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !4
  %i.ac = getelementptr i8, ptr %next.gep121, i64 16
  store <4 x i32> %wide.load122, ptr %next.gep121, align 4, !tbaa !4
  store <4 x i32> %wide.load123, ptr %i.ac, align 4, !tbaa !4
  %index.next124 = add nuw i64 %index119, 8       ; 2 uses
  %i.ad = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.ad, label %middle.block125, label %vector.body118, !llvm.loop !25

middle.block125:                                  ; preds = %vector.body118
  %cmp.n126 = icmp eq i64 %i.s, %n.vec117
  br i1 %cmp.n126, label %.lr.ph80.preheader, label %.lr.ph69.preheader163

.lr.ph69.preheader163:                            ; preds = %vector.memcheck111, %.lr.ph69.preheader, %middle.block125
  %.04468.ph = phi ptr [ %i.m, %vector.memcheck111 ], [ %i.m, %.lr.ph69.preheader ], [ %i.y, %middle.block125 ]
  %.04667.ph = phi ptr [ %i.a, %vector.memcheck111 ], [ %i.a, %.lr.ph69.preheader ], [ %i.z, %middle.block125 ]
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader163, %.lr.ph69
  %.04468 = phi ptr [ %i.ae, %.lr.ph69 ], [ %.04468.ph, %.lr.ph69.preheader163 ] ; 2 uses
  %.04667 = phi ptr [ %i.ag, %.lr.ph69 ], [ %.04667.ph, %.lr.ph69.preheader163 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.04468, i64 4
  %i.af = load i32, ptr %.04468, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %.04667, i64 4 ; 2 uses
  store i32 %i.af, ptr %.04667, align 4, !tbaa !4
  %i.ah = icmp ult ptr %i.ag, %i.d
  br i1 %i.ah, label %.lr.ph69, label %.lr.ph80.preheader, !llvm.loop !28

.preheader58:                                     ; preds = %.preheader60
  %i.ai = add i64 %.idx, %3
  %i.aj = add i64 %3, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.aj)
  %i.ak = xor i64 %3, -1
  %i.al = add i64 %umax, %i.ak
  %i.am = and i64 %i.al, -4
  %i.an = add i64 %i.am, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.a, i8 0, i64 %i.an, i1 false), !tbaa !4
  %i.ao = icmp sgt i32 %1, 0
  br i1 %i.ao, label %.lr.ph66.split.us.preheader, label %.lr.ph80.preheader

.lr.ph66.split.us.preheader:                      ; preds = %.preheader58
  %i.ap = load ptr, ptr @ritem, align 8, !tbaa !8
  %i.aq = load ptr, ptr @fderives, align 8        ; 2 uses
  %i.ar = add i64 %.idx, %3
  %i.as = add i64 %3, 4
  %umax102 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.as)
  %i.at = xor i64 %3, -1
  %i.au = add i64 %umax102, %i.at
  %i.av = and i64 %i.au, -4
  %i.aw = add i64 %i.av, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.aw
  %scevgep103 = getelementptr i8, ptr %i.aq, i64 %i.aw
  %i.ax = add i64 %.idx, %3
  %i.ay = add i64 %3, 4
  %umax105 = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.ay)
  %i.az = xor i64 %3, -1
  %i.ba = add i64 %umax105, %i.az                 ; 2 uses
  %i.bb = lshr i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 28
  %n.vec = and i64 %i.bc, 9223372036854775800     ; 3 uses
  %i.bd = shl i64 %n.vec, 2                       ; 2 uses
  %i.be = getelementptr i8, ptr %i.a, i64 %i.bd
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br label %.lr.ph66.split.us

.lr.ph66.split.us:                                ; preds = %.lr.ph66.split.us.preheader, %..loopexit57_crit_edge.us
  %.04165.us = phi ptr [ %i.bf, %..loopexit57_crit_edge.us ], [ %0, %.lr.ph66.split.us.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.04165.us, i64 2 ; 2 uses
  %i.bg = load i16, ptr %.04165.us, align 2, !tbaa !16
  %i.bh = sext i16 %i.bg to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !16
  %i.bk = sext i16 %i.bj to i32                   ; 2 uses
  %i.bl = load i32, ptr @ntokens, align 4, !tbaa !4
  %.not.us = icmp sgt i32 %i.bl, %i.bk
  br i1 %.not.us, label %..loopexit57_crit_edge.us, label %.lr.ph64.us

.lr.ph64.us:                                      ; preds = %.lr.ph66.split.us
  %i.bm = mul i32 %.fr86, %i.bk
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr [4 x i8], ptr %i.aq, i64 %i.bn ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph64.us
  %i.bp = shl nsw i64 %i.bn, 2
  %scevgep104 = getelementptr i8, ptr %scevgep103, i64 %i.bp
  %bound0 = icmp ult ptr %i.a, %scevgep104
  %bound1 = icmp ult ptr %i.bo, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bq = getelementptr i8, ptr %i.bo, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bo, i64 %i.br ; 2 uses
  %next.gep106 = getelementptr i8, ptr %i.a, i64 %i.br ; 3 uses
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4, !alias.scope !29
  %wide.load107 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !4, !alias.scope !29
  %i.bt = getelementptr i8, ptr %next.gep106, i64 16 ; 2 uses
  %wide.load108 = load <4 x i32>, ptr %next.gep106, align 4, !tbaa !4, !alias.scope !32, !noalias !29
  %wide.load109 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !4, !alias.scope !32, !noalias !29
  %i.bu = or <4 x i32> %wide.load108, %wide.load
  %i.bv = or <4 x i32> %wide.load109, %wide.load107
  store <4 x i32> %i.bu, ptr %next.gep106, align 4, !tbaa !4, !alias.scope !32, !noalias !29
  store <4 x i32> %i.bv, ptr %i.bt, align 4, !tbaa !4, !alias.scope !32, !noalias !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit57_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph64.us, %middle.block
  %.14563.us.ph = phi ptr [ %i.bo, %vector.memcheck ], [ %i.bo, %.lr.ph64.us ], [ %i.bq, %middle.block ]
  %.24862.us.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph64.us ], [ %i.be, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.14563.us = phi ptr [ %i.bx, %scalar.ph ], [ %.14563.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.24862.us = phi ptr [ %i.bz, %scalar.ph ], [ %.24862.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.14563.us, i64 4
  %i.by = load i32, ptr %.14563.us, align 4, !tbaa !4
  %i.bz = getelementptr inbounds nuw i8, ptr %.24862.us, i64 4 ; 2 uses
  %i.ca = load i32, ptr %.24862.us, align 4, !tbaa !4
  %i.cb = or i32 %i.ca, %i.by
  store i32 %i.cb, ptr %.24862.us, align 4, !tbaa !4
  %i.cc = icmp ult ptr %i.bz, %i.d
  br i1 %i.cc, label %scalar.ph, label %..loopexit57_crit_edge.us, !llvm.loop !35

..loopexit57_crit_edge.us:                        ; preds = %scalar.ph, %middle.block, %.lr.ph66.split.us
  %i.cd = icmp ult ptr %i.bf, %i.f
  br i1 %i.cd, label %.lr.ph66.split.us, label %.lr.ph80.preheader, !llvm.loop !36

.loopexit56.thread:                               ; preds = %.preheader60, %bb.b
  %i.ce = load ptr, ptr @itemset, align 8, !tbaa !8 ; 2 uses
  store ptr %i.ce, ptr @itemsetend, align 8, !tbaa !8
  br label %.preheader

.lr.ph80.preheader:                               ; preds = %..loopexit57_crit_edge.us, %.lr.ph69, %.preheader58, %middle.block125
  %storemerge = load ptr, ptr @itemset, align 8, !tbaa !8
  store ptr %storemerge, ptr @itemsetend, align 8, !tbaa !8
  br label %.lr.ph80

.preheader.loopexit:                              ; preds = %.loopexit
  %itemsetend.promoted82.pre = load ptr, ptr @itemsetend, align 8
  br label %.preheader

.preheader:                                       ; preds = %.loopexit56.thread, %.preheader.loopexit
  %itemsetend.promoted82 = phi ptr [ %i.ce, %.loopexit56.thread ], [ %itemsetend.promoted82.pre, %.preheader.loopexit ] ; 6 uses
  %.142.lcssa = phi ptr [ %0, %.loopexit56.thread ], [ %.5, %.preheader.loopexit ] ; 7 uses
  %i.cf = icmp ult ptr %.142.lcssa, %i.f
  br i1 %i.cf, label %iter.check, label %bb.h

iter.check:                                       ; preds = %.preheader
  %.142.lcssa131 = ptrtoaddr ptr %.142.lcssa to i64 ; 3 uses
  %itemsetend.promoted82130 = ptrtoaddr ptr %itemsetend.promoted82 to i64
  %i.cg = add i64 %.idx85, %2
  %i.ch = add i64 %.142.lcssa131, 2
  %umax134 = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 %i.ch)
  %i.ci = xor i64 %.142.lcssa131, -1
  %i.cj = add i64 %umax134, %i.ci                 ; 3 uses
  %i.ck = lshr i64 %i.cj, 1
  %i.cl = add nuw i64 %i.ck, 1                    ; 5 uses
  %min.iters.check136.a = icmp ult i64 %i.cj, 6
  %i.cm = sub i64 %.142.lcssa131, %itemsetend.promoted82130
  %diff.check132 = icmp ugt i64 %i.cm, -32
  %or.cond = select i1 %min.iters.check136.a, i1 true, i1 %diff.check132
  br i1 %or.cond, label %.lr.ph84.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check137 = icmp ult i64 %i.cj, 30
  br i1 %min.iters.check137, label %vec.epilog.ph, label %vector.ph138

vector.ph138:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf139 = and i64 %i.cl, 12
  %n.vec140 = and i64 %i.cl, -16                  ; 4 uses
  %i.cn = shl i64 %n.vec140, 1                    ; 2 uses
  %i.co = getelementptr i8, ptr %.142.lcssa, i64 %i.cn
  %i.cp = getelementptr i8, ptr %itemsetend.promoted82, i64 %i.cn ; 2 uses
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph138
  %index142 = phi i64 [ 0, %vector.ph138 ], [ %index.next147, %vector.body141 ] ; 2 uses
  %i.cq = shl i64 %index142, 1                    ; 2 uses
  %next.gep143.a = getelementptr i8, ptr %.142.lcssa, i64 %i.cq ; 2 uses
  %next.gep144 = getelementptr i8, ptr %itemsetend.promoted82, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep143.a, i64 16
  %wide.load145.a = load <8 x i16>, ptr %next.gep143.a, align 2, !tbaa !16
  %wide.load146 = load <8 x i16>, ptr %i.cr, align 2, !tbaa !16
  %i.cs = getelementptr i8, ptr %next.gep144, i64 16
  store <8 x i16> %wide.load145.a, ptr %next.gep144, align 2, !tbaa !16
  store <8 x i16> %wide.load146, ptr %i.cs, align 2, !tbaa !16
  %index.next147 = add nuw i64 %index142, 16      ; 2 uses
  %i.ct = icmp eq i64 %index.next147, %n.vec140
  br i1 %i.ct, label %middle.block148, label %vector.body141, !llvm.loop !37

middle.block148:                                  ; preds = %vector.body141
  %cmp.n149 = icmp eq i64 %i.cl, %n.vec140
  br i1 %cmp.n149, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block148
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf139, 0
  br i1 %min.epilog.iters.check, label %.lr.ph84.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec140, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec153 = and i64 %i.cl, -4                   ; 3 uses
  %i.cu = shl i64 %n.vec153, 1                    ; 2 uses
  %i.cv = getelementptr i8, ptr %.142.lcssa, i64 %i.cu
  %i.cw = getelementptr i8, ptr %itemsetend.promoted82, i64 %i.cu ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index154 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next158, %vec.epilog.vector.body ] ; 2 uses
  %i.cx = shl i64 %index154, 1                    ; 2 uses
  %next.gep155.a = getelementptr i8, ptr %.142.lcssa, i64 %i.cx
  %next.gep156 = getelementptr i8, ptr %itemsetend.promoted82, i64 %i.cx
  %wide.load157 = load <4 x i16>, ptr %next.gep155.a, align 2, !tbaa !16
  store <4 x i16> %wide.load157, ptr %next.gep156, align 2, !tbaa !16
  %index.next158 = add nuw i64 %index154, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.cy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n159 = icmp eq i64 %i.cl, %n.vec153
  br i1 %cmp.n159, label %._crit_edge, label %.lr.ph84.preheader

.lr.ph84.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.683.ph = phi ptr [ %.142.lcssa, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.cv, %vec.epilog.middle.block ]
  %.ph = phi ptr [ %itemsetend.promoted82, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.cw, %vec.epilog.middle.block ]
  br label %.lr.ph84

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %.loopexit
  %.079 = phi i32 [ %.2, %.loopexit ], [ 0, %.lr.ph80.preheader ] ; 2 uses
  %.14278 = phi ptr [ %.5, %.loopexit ], [ %0, %.lr.ph80.preheader ] ; 2 uses
  %.34977 = phi ptr [ %i.cz, %.loopexit ], [ %i.a, %.lr.ph80.preheader ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.34977, i64 4 ; 2 uses
  %i.da = load i32, ptr %.34977, align 4, !tbaa !4 ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.c, label %.preheader55

.preheader55:                                     ; preds = %.lr.ph80
  %i.dc = load ptr, ptr @rrhs, align 8
  %i.dd = sext i32 %.079 to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph80
  %i.de = add nsw i32 %.079, 32
  br label %.loopexit

bb.d:                                             ; preds = %.preheader55, %bb.g
  %indvars.iv = phi i64 [ %i.dd, %.preheader55 ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.04075 = phi i32 [ 1, %.preheader55 ], [ %i.dr, %bb.g ] ; 2 uses
  %.24374 = phi ptr [ %.14278, %.preheader55 ], [ %.4, %bb.g ] ; 4 uses
  %i.df = and i32 %.04075, %i.da
  %.not54 = icmp eq i32 %i.df, 0
  br i1 %.not54, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dg = getelementptr inbounds [2 x i8], ptr %i.dc, i64 %indvars.iv
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !16 ; 2 uses
  %itemsetend.promoted = load ptr, ptr @itemsetend, align 8 ; 2 uses
  %i.di = icmp ult ptr %.24374, %i.f
  br i1 %i.di, label %.lr.ph71, label %.critedge

.lr.ph71:                                         ; preds = %bb.e, %bb.f
  %.370 = phi ptr [ %i.dm, %bb.f ], [ %.24374, %bb.e ] ; 3 uses
  %i.dj = phi ptr [ %i.dn, %bb.f ], [ %itemsetend.promoted, %bb.e ] ; 2 uses
  %i.dk = load i16, ptr %.370, align 2, !tbaa !16 ; 2 uses
  %i.dl = icmp slt i16 %i.dk, %i.dh
  br i1 %i.dl, label %bb.f, label %.critedge.loopexit

bb.f:                                             ; preds = %.lr.ph71
  %i.dm = getelementptr inbounds nuw i8, ptr %.370, i64 2 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 2 ; 2 uses
  store ptr %i.dn, ptr @itemsetend, align 8, !tbaa !8
  store i16 %i.dk, ptr %i.dj, align 2, !tbaa !16
  %i.do = icmp ult ptr %i.dm, %i.f
  br i1 %i.do, label %.lr.ph71, label %.critedge.loopexit, !llvm.loop !40

.critedge.loopexit:                               ; preds = %bb.f, %.lr.ph71
  %.3.lcssa.ph = phi ptr [ %.370, %.lr.ph71 ], [ %i.dm, %bb.f ]
  %.pre = load ptr, ptr @itemsetend, align 8, !tbaa !8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.e
  %i.dp = phi ptr [ %itemsetend.promoted, %bb.e ], [ %.pre, %.critedge.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %.24374, %bb.e ], [ %.3.lcssa.ph, %.critedge.loopexit ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  store ptr %i.dq, ptr @itemsetend, align 8, !tbaa !8
  store i16 %i.dh, ptr %i.dp, align 2, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.d
  %.4 = phi ptr [ %.3.lcssa, %.critedge ], [ %.24374, %bb.d ] ; 2 uses
  %i.dr = shl i32 %.04075, 1                      ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not53 = icmp eq i32 %i.dr, 0
  br i1 %.not53, label %.loopexit.loopexit, label %bb.d, !llvm.loop !41

.loopexit.loopexit:                               ; preds = %bb.g
  %i.ds = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %.5 = phi ptr [ %.14278, %bb.c ], [ %.4, %.loopexit.loopexit ] ; 2 uses
  %.2 = phi i32 [ %i.de, %bb.c ], [ %i.ds, %.loopexit.loopexit ]
  %i.dt = icmp ult ptr %i.cz, %i.d
  br i1 %i.dt, label %.lr.ph80, label %.preheader.loopexit, !llvm.loop !42

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %.lr.ph84
  %.683 = phi ptr [ %i.dv, %.lr.ph84 ], [ %.683.ph, %.lr.ph84.preheader ] ; 2 uses
  %i.du = phi ptr [ %i.dx, %.lr.ph84 ], [ %.ph, %.lr.ph84.preheader ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.683, i64 2 ; 2 uses
  %i.dw = load i16, ptr %.683, align 2, !tbaa !16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 2 ; 2 uses
  store i16 %i.dw, ptr %i.du, align 2, !tbaa !16
  %i.dy = icmp ult ptr %i.dv, %i.f
  br i1 %i.dy, label %.lr.ph84, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph84, %vec.epilog.middle.block, %middle.block148
  %.lcssa = phi ptr [ %i.cw, %vec.epilog.middle.block ], [ %i.cp, %middle.block148 ], [ %i.dx, %.lr.ph84 ]
  store ptr %.lcssa, ptr @itemsetend, align 8, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @finalize_closure() local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @itemset, align 8, !tbaa !8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr @ruleset, align 8, !tbaa !11 ; 2 uses
  %.not3 = icmp eq ptr %i.b, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = load ptr, ptr @fderives, align 8, !tbaa !11 ; 2 uses
  %.not4 = icmp eq ptr %i.c, null
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = load i32, ptr @ntokens, align 4, !tbaa !4
  %i.e = load i32, ptr @rulesetsize, align 4, !tbaa !4
  %i.f = mul nsw i32 %i.e, %i.d
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.g
end_hunk_0
