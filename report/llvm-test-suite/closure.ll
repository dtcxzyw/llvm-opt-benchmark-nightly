Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/closure?download=true
inline.NumInlined: 1
begin_hunk_0_@set_firsts:bb.a
  %i.b = add nsw i32 %i.a, 31
  %i.c = sdiv i32 %i.b, 32                        ; 3 uses
  store i32 %i.c, ptr @varsetsize, align 4, !tbaa !9
  %i.d = shl i32 %i.a, 2
  %i.e = mul i32 %i.d, %i.c
  %i.f = tail call ptr (i32, ...) @mallocate(i32 noundef %i.e) #7 ; 3 uses
  store ptr %i.f, ptr @firsts, align 8, !tbaa !14
  %i.g = load i32, ptr @ntokens, align 4, !tbaa !9 ; 3 uses
  %i.h = load i32, ptr @nsyms, align 4, !tbaa !9  ; 2 uses
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %.lr.ph20, label %._crit_edge21

.lr.ph20:                                         ; preds = %bb.a
  %i.j = load ptr, ptr @derives, align 8, !tbaa !17
  %i.k = load ptr, ptr @ritem, align 8
  %i.l = load ptr, ptr @rrhs, align 8
  %i.m = sext i32 %i.c to i64
  %i.n = sext i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph20, %._crit_edge
  %.pre23 = phi i32 [ %i.g, %.lr.ph20 ], [ %.pre2326, %._crit_edge ] ; 3 uses
  %i.o = phi i32 [ %i.h, %.lr.ph20 ], [ %i.ao, %._crit_edge ]
  %indvars.iv = phi i64 [ %i.n, %.lr.ph20 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.01317 = phi ptr [ %i.f, %.lr.ph20 ], [ %i.ap, %._crit_edge ] ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12   ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !19   ; 2 uses
  %i.s = icmp sgt i16 %i.r, -1
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.pre2327 = phi i32 [ %.pre2328, %bb.d ], [ %.pre23, %bb.b ]
  %i.t = phi i32 [ %i.al, %bb.d ], [ %.pre23, %bb.b ] ; 3 uses
  %i.u = phi i16 [ %i.am, %bb.d ], [ %i.r, %bb.b ]
  %.01216 = phi ptr [ %i.v, %bb.d ], [ %i.q, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %.01216, i64 2 ; 2 uses
  %i.w = zext nneg i16 %i.u to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !19
  %i.z = sext i16 %i.y to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !19
  %i.ac = sext i16 %i.ab to i32                   ; 2 uses
  %.not = icmp sgt i32 %i.t, %i.ac
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ad = sub nsw i32 %i.ac, %i.t                 ; 2 uses
  %i.ae = and i32 %i.ad, 31
  %i.af = shl nuw i32 1, %i.ae
  %i.ag = lshr i32 %i.ad, 5
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.01317, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !9
  %i.ak = or i32 %i.aj, %i.af
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !9
  %.pre = load i32, ptr @ntokens, align 4, !tbaa !9 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %.pre2328 = phi i32 [ %.pre, %bb.c ], [ %.pre2327, %.lr.ph ] ; 2 uses
  %i.al = phi i32 [ %.pre, %bb.c ], [ %i.t, %.lr.ph ]
  %i.am = load i16, ptr %i.v, align 2, !tbaa !19  ; 2 uses
  %i.an = icmp sgt i16 %i.am, -1
  br i1 %i.an, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !0

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre24 = load i32, ptr @nsyms, align 4, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.pre2326 = phi i32 [ %.pre2328, %._crit_edge.loopexit ], [ %.pre23, %bb.b ]
  %i.ao = phi i32 [ %.pre24, %._crit_edge.loopexit ], [ %i.o, %bb.b ] ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %.01317, i64 %i.m
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aq = sext i32 %i.ao to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %bb.b, label %._crit_edge21, !llvm.loop !1

._crit_edge21:                                    ; preds = %._crit_edge, %bb.a
  %i.as = load i32, ptr @nvars, align 4, !tbaa !9
  tail call void @RTC(ptr noundef %i.f, i32 noundef %i.as) #7
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

declare void @RTC(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @closure(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = load ptr, ptr @ruleset, align 8, !tbaa !14 ; 14 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 13 uses
  %i.d = load i32, ptr @rulesetsize, align 4, !tbaa !9
  %.fr85 = freeze i32 %i.d                        ; 4 uses
  %i.e = sext i32 %.fr85 to i64
  %.idx = shl nsw i64 %i.e, 2                     ; 5 uses
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %.idx ; 3 uses
  %i.g = sext i32 %1 to i64
  %.idx84 = shl nsw i64 %i.g, 1                   ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 %.idx84 ; 5 uses
  %i.i = icmp eq i32 %1, 0
  %i.j = icmp sgt i32 %.fr85, 0                   ; 2 uses
  br i1 %i.i, label %bb.b, label %.preheader60

.preheader60:                                     ; preds = %bb.a
  br i1 %i.j, label %.preheader58, label %.loopexit56.thread

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %.lr.ph69.preheader, label %.loopexit56.thread

.lr.ph69.preheader:                               ; preds = %bb.b
  %i.k = load ptr, ptr @fderives, align 8, !tbaa !14 ; 2 uses
  %i.l = load i32, ptr @start_symbol, align 4, !tbaa !9
  %i.m = mul i32 %i.l, %.fr85
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.n ; 4 uses
  %i.p = add i64 %.idx, %i.c
  %i.q = add i64 %i.c, 4
  %i.r = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.q)
  %i.s = xor i64 %i.c, -1
  %i.t = add i64 %i.r, %i.s                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check115 = icmp ult i64 %i.t, 76
  br i1 %min.iters.check115, label %.lr.ph69.preheader165, label %vector.memcheck116

vector.memcheck116:                               ; preds = %.lr.ph69.preheader
  %i.w = ptrtoaddr ptr %i.k to i64
  %i.x = shl nsw i64 %i.n, 2
  %i.y = add i64 %i.x, %i.w
  %i.z = sub i64 %i.y, %i.c
  %diff.check = icmp ugt i64 %i.z, -32
  br i1 %diff.check, label %.lr.ph69.preheader165, label %vector.ph117

vector.ph117:                                     ; preds = %vector.memcheck116
  %n.vec118 = and i64 %i.v, 9223372036854775800   ; 3 uses
  %i.aa = shl i64 %n.vec118, 2                    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.o, i64 %i.aa
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next125, %vector.body119 ] ; 2 uses
  %i.ad = shl i64 %index120, 2                    ; 2 uses
  %next.gep121 = getelementptr i8, ptr %i.b, i64 %i.ad ; 2 uses
  %next.gep122 = getelementptr i8, ptr %i.o, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep122, i64 16
  %wide.load123 = load <4 x i32>, ptr %next.gep122, align 4, !tbaa !9
  %wide.load124 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !9
  %i.af = getelementptr i8, ptr %next.gep121, i64 16
  store <4 x i32> %wide.load123, ptr %next.gep121, align 4, !tbaa !9
  store <4 x i32> %wide.load124, ptr %i.af, align 4, !tbaa !9
  %index.next125 = add nuw i64 %index120, 8       ; 2 uses
  %i.ag = icmp eq i64 %index.next125, %n.vec118
  br i1 %i.ag, label %middle.block126, label %vector.body119, !llvm.loop !25

middle.block126:                                  ; preds = %vector.body119
  %cmp.n127 = icmp eq i64 %i.v, %n.vec118
  br i1 %cmp.n127, label %.lr.ph80.preheader, label %.lr.ph69.preheader165

.lr.ph69.preheader165:                            ; preds = %vector.memcheck116, %.lr.ph69.preheader, %middle.block126
  %.068.ph = phi ptr [ %i.b, %vector.memcheck116 ], [ %i.b, %.lr.ph69.preheader ], [ %i.ab, %middle.block126 ]
  %.04067.ph = phi ptr [ %i.o, %vector.memcheck116 ], [ %i.o, %.lr.ph69.preheader ], [ %i.ac, %middle.block126 ]
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader165, %.lr.ph69
  %.068 = phi ptr [ %i.aj, %.lr.ph69 ], [ %.068.ph, %.lr.ph69.preheader165 ] ; 2 uses
  %.04067 = phi ptr [ %i.ah, %.lr.ph69 ], [ %.04067.ph, %.lr.ph69.preheader165 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.04067, i64 4
  %i.ai = load i32, ptr %.04067, align 4, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %.068, i64 4 ; 2 uses
  store i32 %i.ai, ptr %.068, align 4, !tbaa !9
  %i.ak = icmp ult ptr %i.aj, %i.f
  br i1 %i.ak, label %.lr.ph69, label %.lr.ph80.preheader, !llvm.loop !26

.preheader58:                                     ; preds = %.preheader60
  %i.al = add i64 %.idx, %i.c
  %i.am = add i64 %i.c, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %i.am)
  %i.an = xor i64 %i.c, -1
  %i.ao = add i64 %umax, %i.an
  %i.ap = and i64 %i.ao, -4
  %i.aq = add i64 %i.ap, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.aq, i1 false), !tbaa !9
  %i.ar = icmp sgt i32 %1, 0
  br i1 %i.ar, label %.lr.ph66.split.us.preheader, label %.lr.ph80.preheader

.lr.ph66.split.us.preheader:                      ; preds = %.preheader58
  %i.as = load ptr, ptr @ritem, align 8, !tbaa !12
  %i.at = load ptr, ptr @fderives, align 8        ; 2 uses
  %i.au = add i64 %.idx, %i.c
  %i.av = add i64 %i.c, 4
  %umax105 = tail call i64 @llvm.umax.i64(i64 %i.au, i64 %i.av)
  %i.aw = xor i64 %i.c, -1
  %i.ax = add i64 %umax105, %i.aw
  %i.ay = and i64 %i.ax, -4                       ; 2 uses
  %scevgep.a = getelementptr i8, ptr %i.b, i64 %i.ay
  %scevgep106 = getelementptr i8, ptr %scevgep.a, i64 4
  %i.az = add i64 %.idx, %i.c
  %i.ba = add i64 %i.c, 4
  %i.bb = tail call i64 @llvm.umax.i64(i64 %i.az, i64 %i.ba)
  %i.bc = xor i64 %i.c, -1
  %i.bd = add i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = lshr i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 28
  %2 = getelementptr i8, ptr %i.at, i64 %i.ay
  %n.vec = and i64 %i.bf, 9223372036854775800     ; 3 uses
  %i.bg = shl i64 %n.vec, 2                       ; 2 uses
  %i.bh = getelementptr i8, ptr %i.b, i64 %i.bg
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br label %.lr.ph66.split.us

.lr.ph66.split.us:                                ; preds = %.lr.ph66.split.us.preheader, %..loopexit57_crit_edge.us
  %.04265.us = phi ptr [ %i.bi, %..loopexit57_crit_edge.us ], [ %0, %.lr.ph66.split.us.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.04265.us, i64 2 ; 2 uses
  %i.bj = load i16, ptr %.04265.us, align 2, !tbaa !19
  %i.bk = sext i16 %i.bj to i64
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.as, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !19
  %i.bn = sext i16 %i.bm to i32                   ; 2 uses
  %i.bo = load i32, ptr @ntokens, align 4, !tbaa !9
  %.not.us = icmp sgt i32 %i.bo, %i.bn
  br i1 %.not.us, label %..loopexit57_crit_edge.us, label %.lr.ph64.us

.lr.ph64.us:                                      ; preds = %.lr.ph66.split.us
  %i.bp = mul i32 %.fr85, %i.bn
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr [4 x i8], ptr %i.at, i64 %i.bq ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph64.us
  %i.bs = shl nsw i64 %i.bq, 2
  %3 = getelementptr i8, ptr %2, i64 %i.bs
  %scevgep107 = getelementptr i8, ptr %3, i64 4
  %bound0 = icmp ult ptr %i.b, %scevgep107
  %bound1 = icmp ult ptr %i.br, %scevgep106
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bt = getelementptr i8, ptr %i.br, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.bu ; 3 uses
  %next.gep108 = getelementptr i8, ptr %i.br, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep108, align 4, !tbaa !9, !alias.scope !41
  %wide.load109 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !9, !alias.scope !41
  %i.bw = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load110 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !9, !alias.scope !42, !noalias !41
  %wide.load111 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !9, !alias.scope !42, !noalias !41
  %i.bx = or <4 x i32> %wide.load110, %wide.load
  %i.by = or <4 x i32> %wide.load111, %wide.load109
  store <4 x i32> %i.bx, ptr %next.gep, align 4, !tbaa !9, !alias.scope !42, !noalias !41
  store <4 x i32> %i.by, ptr %i.bw, align 4, !tbaa !9, !alias.scope !42, !noalias !41
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit57_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph64.us, %middle.block
  %.263.us.ph = phi ptr [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph64.us ], [ %i.bh, %middle.block ]
  %.14162.us.ph = phi ptr [ %i.br, %vector.memcheck ], [ %i.br, %.lr.ph64.us ], [ %i.bt, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.263.us = phi ptr [ %i.cc, %scalar.ph ], [ %.263.us.ph, %scalar.ph.preheader ] ; 3 uses
  %.14162.us = phi ptr [ %i.ca, %scalar.ph ], [ %.14162.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.14162.us, i64 4
  %i.cb = load i32, ptr %.14162.us, align 4, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %.263.us, i64 4 ; 2 uses
  %i.cd = load i32, ptr %.263.us, align 4, !tbaa !9
  %i.ce = or i32 %i.cd, %i.cb
  store i32 %i.ce, ptr %.263.us, align 4, !tbaa !9
  %i.cf = icmp ult ptr %i.cc, %i.f
  br i1 %i.cf, label %scalar.ph, label %..loopexit57_crit_edge.us, !llvm.loop !31

..loopexit57_crit_edge.us:                        ; preds = %scalar.ph, %middle.block, %.lr.ph66.split.us
  %i.cg = icmp ult ptr %i.bi, %i.h
  br i1 %i.cg, label %.lr.ph66.split.us, label %.lr.ph80.preheader, !llvm.loop !32

.loopexit56.thread:                               ; preds = %.preheader60, %bb.b
  %i.ch = load ptr, ptr @itemset, align 8, !tbaa !12 ; 2 uses
  store ptr %i.ch, ptr @itemsetend, align 8, !tbaa !12
  br label %.preheader

.lr.ph80.preheader:                               ; preds = %..loopexit57_crit_edge.us, %.lr.ph69, %.preheader58, %middle.block126
  %storemerge = load ptr, ptr @itemset, align 8, !tbaa !12 ; 2 uses
  store ptr %storemerge, ptr @itemsetend, align 8, !tbaa !12
  br label %.lr.ph80

.preheader:                                       ; preds = %.loopexit, %.loopexit56.thread
  %itemsetend.promoted = phi ptr [ %i.ch, %.loopexit56.thread ], [ %i.dz, %.loopexit ] ; 6 uses
  %.143.lcssa = phi ptr [ %0, %.loopexit56.thread ], [ %.5, %.loopexit ] ; 7 uses
  %i.ci = icmp ult ptr %.143.lcssa, %i.h
  br i1 %i.ci, label %iter.check, label %bb.h

iter.check:                                       ; preds = %.preheader
  %itemsetend.promoted135 = ptrtoaddr ptr %itemsetend.promoted to i64
  %.143.lcssa134 = ptrtoaddr ptr %.143.lcssa to i64 ; 2 uses
  %i.cj = add i64 %.idx84, %i.a
  %i.ck = xor i64 %.143.lcssa134, -1
  %i.cl = add i64 %i.cj, %i.ck                    ; 3 uses
  %i.cm = lshr i64 %i.cl, 1
  %i.cn = add nuw i64 %i.cm, 1                    ; 5 uses
  %min.iters.check137 = icmp ult i64 %i.cl, 6
  %i.co = sub i64 %.143.lcssa134, %itemsetend.promoted135
  %diff.check139 = icmp ugt i64 %i.co, -32
  %or.cond = select i1 %min.iters.check137, i1 true, i1 %diff.check139
  br i1 %or.cond, label %.lr.ph83.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check140 = icmp ult i64 %i.cl, 30
  br i1 %min.iters.check140, label %vec.epilog.ph, label %vector.ph141

vector.ph141:                                     ; preds = %vector.main.loop.iter.check
  %i.cp = and i64 %i.cn, 12
  %n.vec142 = and i64 %i.cn, -16                  ; 4 uses
  %i.cq = shl i64 %n.vec142, 1                    ; 2 uses
  %i.cr = getelementptr i8, ptr %itemsetend.promoted, i64 %i.cq ; 2 uses
  %i.cs = getelementptr i8, ptr %.143.lcssa, i64 %i.cq
  br label %vector.body143

vector.body143:                                   ; preds = %vector.ph141, %vector.body143
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body143 ] ; 2 uses
  %i.ct = shl i64 %index144, 1                    ; 2 uses
  %next.gep145 = getelementptr i8, ptr %itemsetend.promoted, i64 %i.ct ; 2 uses
  %next.gep146 = getelementptr i8, ptr %.143.lcssa, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep146, i64 16
  %wide.load147 = load <8 x i16>, ptr %next.gep146, align 2, !tbaa !19
  %wide.load148 = load <8 x i16>, ptr %i.cu, align 2, !tbaa !19
  %i.cv = getelementptr i8, ptr %next.gep145, i64 16
  store <8 x i16> %wide.load147, ptr %next.gep145, align 2, !tbaa !19
  store <8 x i16> %wide.load148, ptr %i.cv, align 2, !tbaa !19
  %index.next149 = add nuw i64 %index144, 16      ; 2 uses
  %i.cw = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.cw, label %middle.block150, label %vector.body143, !llvm.loop !33

middle.block150:                                  ; preds = %vector.body143
  %cmp.n151 = icmp eq i64 %i.cn, %n.vec142
  br i1 %cmp.n151, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block150
  %min.epilog.iters.check = icmp eq i64 %i.cp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph83.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec142, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec152 = and i64 %i.cn, -4                   ; 3 uses
  %i.cx = shl i64 %n.vec152, 1                    ; 2 uses
  %i.cy = getelementptr i8, ptr %itemsetend.promoted, i64 %i.cx ; 2 uses
  %i.cz = getelementptr i8, ptr %.143.lcssa, i64 %i.cx
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index153 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next157, %vec.epilog.vector.body ] ; 2 uses
  %i.da = shl i64 %index153, 1                    ; 2 uses
  %next.gep154 = getelementptr i8, ptr %itemsetend.promoted, i64 %i.da
  %next.gep155 = getelementptr i8, ptr %.143.lcssa, i64 %i.da
  %wide.load156 = load <4 x i16>, ptr %next.gep155, align 2, !tbaa !19
  store <4 x i16> %wide.load156, ptr %next.gep154, align 2, !tbaa !19
  %index.next157 = add nuw i64 %index153, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next157, %n.vec152
  br i1 %i.db, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n158 = icmp eq i64 %i.cn, %n.vec152
  br i1 %cmp.n158, label %._crit_edge, label %.lr.ph83.preheader

.lr.ph83.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %itemsetend.promoted, %iter.check ], [ %i.cr, %vec.epilog.iter.check ], [ %i.cy, %vec.epilog.middle.block ]
  %.682.ph = phi ptr [ %.143.lcssa, %iter.check ], [ %i.cs, %vec.epilog.iter.check ], [ %i.cz, %vec.epilog.middle.block ]
  br label %.lr.ph83

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %.loopexit
  %i.dc = phi ptr [ %i.dz, %.loopexit ], [ %storemerge, %.lr.ph80.preheader ] ; 2 uses
  %.379 = phi ptr [ %i.dd, %.loopexit ], [ %i.b, %.lr.ph80.preheader ] ; 2 uses
  %.14378 = phi ptr [ %.5, %.loopexit ], [ %0, %.lr.ph80.preheader ] ; 2 uses
  %.04777 = phi i32 [ %.249, %.loopexit ], [ 0, %.lr.ph80.preheader ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.379, i64 4 ; 2 uses
  %i.de = load i32, ptr %.379, align 4, !tbaa !9  ; 2 uses
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.c, label %.preheader55

.preheader55:                                     ; preds = %.lr.ph80
  %i.dg = load ptr, ptr @rrhs, align 8
  %i.dh = sext i32 %.04777 to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph80
  %i.di = add nsw i32 %.04777, 32
  br label %.loopexit

bb.d:                                             ; preds = %.preheader55, %bb.g
  %i.dj = phi ptr [ %i.dc, %.preheader55 ], [ %i.dw, %bb.g ] ; 3 uses
  %indvars.iv = phi i64 [ %i.dh, %.preheader55 ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.24476 = phi ptr [ %.14378, %.preheader55 ], [ %.4, %bb.g ] ; 4 uses
  %.04675 = phi i32 [ 1, %.preheader55 ], [ %i.dx, %bb.g ] ; 2 uses
  %i.dk = and i32 %.04675, %i.de
  %.not54 = icmp eq i32 %i.dk, 0
  br i1 %.not54, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dl = getelementptr inbounds [2 x i8], ptr %i.dg, i64 %indvars.iv
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !19 ; 2 uses
  %i.dn = icmp ult ptr %.24476, %i.h
  br i1 %i.dn, label %.lr.ph71, label %.critedge

.lr.ph71:                                         ; preds = %bb.e, %bb.f
  %i.do = phi ptr [ %i.ds, %bb.f ], [ %i.dj, %bb.e ] ; 3 uses
  %.34570 = phi ptr [ %i.dr, %bb.f ], [ %.24476, %bb.e ] ; 3 uses
  %i.dp = load i16, ptr %.34570, align 2, !tbaa !19 ; 2 uses
  %i.dq = icmp slt i16 %i.dp, %i.dm
  br i1 %i.dq, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph71
  %i.dr = getelementptr inbounds nuw i8, ptr %.34570, i64 2 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 2 ; 2 uses
  store i16 %i.dp, ptr %i.do, align 2, !tbaa !19
  %i.dt = icmp ult ptr %i.dr, %i.h
  br i1 %i.dt, label %.lr.ph71, label %.critedge, !llvm.loop !35

.critedge:                                        ; preds = %.lr.ph71, %bb.f, %bb.e
  %i.du = phi ptr [ %i.dj, %bb.e ], [ %i.ds, %bb.f ], [ %i.do, %.lr.ph71 ] ; 2 uses
  %.345.lcssa = phi ptr [ %.24476, %bb.e ], [ %i.dr, %bb.f ], [ %.34570, %.lr.ph71 ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2 ; 2 uses
  store ptr %i.dv, ptr @itemsetend, align 8, !tbaa !12
  store i16 %i.dm, ptr %i.du, align 2, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.d
end_hunk_0
