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
  %i.a = load ptr, ptr @ruleset, align 8, !tbaa !11 ; 16 uses
  %3 = ptrtoaddr ptr %i.a to i64                  ; 7 uses
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
  %4 = ptrtoaddr ptr %i.a to i64                  ; 3 uses
  %i.n = add i64 %.idx, %4
  %i.o = add i64 %4, 4
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.o)
  %i.q = xor i64 %4, -1
  %i.r = add i64 %i.p, %i.q                       ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.r, 76
  br i1 %min.iters.check112, label %.lr.ph69.preheader161, label %vector.memcheck110

vector.memcheck110:                               ; preds = %.lr.ph69.preheader
  %i.u = ptrtoaddr ptr %i.i to i64
  %i.v = shl nsw i64 %i.l, 2
  %i.w = add i64 %i.v, %i.u
  %i.x = sub i64 %i.w, %3
  %diff.check = icmp ugt i64 %i.x, -32
  br i1 %diff.check, label %.lr.ph69.preheader161, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck110
  %n.vec115 = and i64 %i.t, 9223372036854775800   ; 3 uses
  %i.y = shl i64 %n.vec115, 2                     ; 2 uses
  %i.z = getelementptr i8, ptr %i.m, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.a, i64 %i.y
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph113
  %index117 = phi i64 [ 0, %vector.ph113 ], [ %index.next122, %vector.body116 ] ; 2 uses
  %i.ab = shl i64 %index117, 2                    ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.m, i64 %i.ab ; 2 uses
  %next.gep119 = getelementptr i8, ptr %i.a, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load120 = load <4 x i32>, ptr %next.gep118, align 4, !tbaa !4
  %wide.load121 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !4
  %i.ad = getelementptr i8, ptr %next.gep119, i64 16
  store <4 x i32> %wide.load120, ptr %next.gep119, align 4, !tbaa !4
  store <4 x i32> %wide.load121, ptr %i.ad, align 4, !tbaa !4
  %index.next122 = add nuw i64 %index117, 8       ; 2 uses
  %i.ae = icmp eq i64 %index.next122, %n.vec115
  br i1 %i.ae, label %middle.block123, label %vector.body116, !llvm.loop !25

middle.block123:                                  ; preds = %vector.body116
  %cmp.n124 = icmp eq i64 %i.t, %n.vec115
  br i1 %cmp.n124, label %.lr.ph80.preheader, label %.lr.ph69.preheader161

.lr.ph69.preheader161:                            ; preds = %vector.memcheck110, %.lr.ph69.preheader, %middle.block123
  %.04468.ph = phi ptr [ %i.m, %vector.memcheck110 ], [ %i.m, %.lr.ph69.preheader ], [ %i.z, %middle.block123 ]
  %.04667.ph = phi ptr [ %i.a, %vector.memcheck110 ], [ %i.a, %.lr.ph69.preheader ], [ %i.aa, %middle.block123 ]
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader161, %.lr.ph69
  %.04468 = phi ptr [ %i.af, %.lr.ph69 ], [ %.04468.ph, %.lr.ph69.preheader161 ] ; 2 uses
  %.04667 = phi ptr [ %i.ah, %.lr.ph69 ], [ %.04667.ph, %.lr.ph69.preheader161 ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.04468, i64 4
  %i.ag = load i32, ptr %.04468, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw i8, ptr %.04667, i64 4 ; 2 uses
  store i32 %i.ag, ptr %.04667, align 4, !tbaa !4
  %i.ai = icmp ult ptr %i.ah, %i.d
  br i1 %i.ai, label %.lr.ph69, label %.lr.ph80.preheader, !llvm.loop !28

.preheader58:                                     ; preds = %.preheader60
  %i.aj = add i64 %.idx, %3
  %i.ak = add i64 %3, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ak)
  %i.al = xor i64 %3, -1
  %i.am = add i64 %umax, %i.al
  %i.an = and i64 %i.am, -4
  %i.ao = add i64 %i.an, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.a, i8 0, i64 %i.ao, i1 false), !tbaa !4
  %i.ap = icmp sgt i32 %1, 0
  br i1 %i.ap, label %.lr.ph66.split.us.preheader, label %.lr.ph80.preheader

.lr.ph66.split.us.preheader:                      ; preds = %.preheader58
  %i.aq = load ptr, ptr @ritem, align 8, !tbaa !8
  %i.ar = load ptr, ptr @fderives, align 8        ; 2 uses
  %i.as = add i64 %.idx, %3
  %i.at = add i64 %3, 4
  %umax102 = tail call i64 @llvm.umax.i64(i64 %i.as, i64 %i.at)
  %i.au = xor i64 %3, -1
  %i.av = add i64 %umax102, %i.au
  %i.aw = and i64 %i.av, -4
  %i.ax = add i64 %i.aw, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.ax
  %scevgep103 = getelementptr i8, ptr %i.ar, i64 %i.ax
  %5 = ptrtoaddr ptr %i.a to i64                  ; 3 uses
  %i.ay = add i64 %.idx, %5
  %i.az = add i64 %5, 4
  %i.ba = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 %i.az)
  %i.bb = xor i64 %5, -1
  %i.bc = add i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = lshr i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 28
  %n.vec = and i64 %i.be, 9223372036854775800     ; 3 uses
  %i.bf = shl i64 %n.vec, 2                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.a, i64 %i.bf
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br label %.lr.ph66.split.us

.lr.ph66.split.us:                                ; preds = %.lr.ph66.split.us.preheader, %..loopexit57_crit_edge.us
  %.04165.us = phi ptr [ %i.bh, %..loopexit57_crit_edge.us ], [ %0, %.lr.ph66.split.us.preheader ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.04165.us, i64 2 ; 2 uses
  %i.bi = load i16, ptr %.04165.us, align 2, !tbaa !16
  %i.bj = sext i16 %i.bi to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !16
  %i.bm = sext i16 %i.bl to i32                   ; 2 uses
  %i.bn = load i32, ptr @ntokens, align 4, !tbaa !4
  %.not.us = icmp sgt i32 %i.bn, %i.bm
  br i1 %.not.us, label %..loopexit57_crit_edge.us, label %.lr.ph64.us

.lr.ph64.us:                                      ; preds = %.lr.ph66.split.us
  %i.bo = mul i32 %.fr86, %i.bm
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr [4 x i8], ptr %i.ar, i64 %i.bp ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph64.us
  %i.br = shl nsw i64 %i.bp, 2
  %scevgep104 = getelementptr i8, ptr %scevgep103, i64 %i.br
  %bound0 = icmp ult ptr %i.a, %scevgep104
  %bound1 = icmp ult ptr %i.bq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %i.bq, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bt ; 2 uses
  %next.gep105 = getelementptr i8, ptr %i.a, i64 %i.bt ; 3 uses
  %i.bu = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4, !alias.scope !29
  %wide.load106 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !4, !alias.scope !29
  %i.bv = getelementptr i8, ptr %next.gep105, i64 16 ; 2 uses
  %wide.load107 = load <4 x i32>, ptr %next.gep105, align 4, !tbaa !4, !alias.scope !32, !noalias !29
  %wide.load108 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !4, !alias.scope !32, !noalias !29
  %i.bw = or <4 x i32> %wide.load107, %wide.load
  %i.bx = or <4 x i32> %wide.load108, %wide.load106
  store <4 x i32> %i.bw, ptr %next.gep105, align 4, !tbaa !4, !alias.scope !32, !noalias !29
  store <4 x i32> %i.bx, ptr %i.bv, align 4, !tbaa !4, !alias.scope !32, !noalias !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit57_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph64.us, %middle.block
  %.14563.us.ph = phi ptr [ %i.bq, %vector.memcheck ], [ %i.bq, %.lr.ph64.us ], [ %i.bs, %middle.block ]
  %.24862.us.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph64.us ], [ %i.bg, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.14563.us = phi ptr [ %i.bz, %scalar.ph ], [ %.14563.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.24862.us = phi ptr [ %i.cb, %scalar.ph ], [ %.24862.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.14563.us, i64 4
  %i.ca = load i32, ptr %.14563.us, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw i8, ptr %.24862.us, i64 4 ; 2 uses
  %i.cc = load i32, ptr %.24862.us, align 4, !tbaa !4
  %i.cd = or i32 %i.cc, %i.ca
  store i32 %i.cd, ptr %.24862.us, align 4, !tbaa !4
  %i.ce = icmp ult ptr %i.cb, %i.d
  br i1 %i.ce, label %scalar.ph, label %..loopexit57_crit_edge.us, !llvm.loop !35

..loopexit57_crit_edge.us:                        ; preds = %scalar.ph, %middle.block, %.lr.ph66.split.us
  %i.cf = icmp ult ptr %i.bh, %i.f
  br i1 %i.cf, label %.lr.ph66.split.us, label %.lr.ph80.preheader, !llvm.loop !36

.loopexit56.thread:                               ; preds = %.preheader60, %bb.b
  %i.cg = load ptr, ptr @itemset, align 8, !tbaa !8 ; 2 uses
  store ptr %i.cg, ptr @itemsetend, align 8, !tbaa !8
  br label %.preheader

.lr.ph80.preheader:                               ; preds = %..loopexit57_crit_edge.us, %.lr.ph69, %.preheader58, %middle.block123
  %storemerge = load ptr, ptr @itemset, align 8, !tbaa !8
  store ptr %storemerge, ptr @itemsetend, align 8, !tbaa !8
  br label %.lr.ph80

.preheader.loopexit:                              ; preds = %.loopexit
  %itemsetend.promoted82.pre = load ptr, ptr @itemsetend, align 8
  br label %.preheader

.preheader:                                       ; preds = %.loopexit56.thread, %.preheader.loopexit
  %itemsetend.promoted82 = phi ptr [ %i.cg, %.loopexit56.thread ], [ %itemsetend.promoted82.pre, %.preheader.loopexit ] ; 6 uses
  %.142.lcssa = phi ptr [ %0, %.loopexit56.thread ], [ %.5, %.preheader.loopexit ] ; 7 uses
  %i.ch = icmp ult ptr %.142.lcssa, %i.f
  br i1 %i.ch, label %iter.check, label %bb.h

iter.check:                                       ; preds = %.preheader
  %.142.lcssa129 = ptrtoaddr ptr %.142.lcssa to i64 ; 3 uses
  %itemsetend.promoted82128 = ptrtoaddr ptr %itemsetend.promoted82 to i64
  %i.ci = add i64 %.idx85, %2
  %i.cj = add i64 %.142.lcssa129, 2
  %umax132 = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 %i.cj)
  %i.ck = xor i64 %.142.lcssa129, -1
  %i.cl = add i64 %umax132, %i.ck                 ; 3 uses
  %i.cm = lshr i64 %i.cl, 1
  %i.cn = add nuw i64 %i.cm, 1                    ; 5 uses
  %min.iters.check134.a = icmp ult i64 %i.cl, 6
  %i.co = sub i64 %.142.lcssa129, %itemsetend.promoted82128
  %diff.check130 = icmp ugt i64 %i.co, -32
  %or.cond = select i1 %min.iters.check134.a, i1 true, i1 %diff.check130
  br i1 %or.cond, label %.lr.ph84.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check135 = icmp ult i64 %i.cl, 30
  br i1 %min.iters.check135, label %vec.epilog.ph, label %vector.ph136

vector.ph136:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf137 = and i64 %i.cn, 12
  %n.vec138 = and i64 %i.cn, -16                  ; 4 uses
  %i.cp = shl i64 %n.vec138, 1                    ; 2 uses
  %i.cq = getelementptr i8, ptr %.142.lcssa, i64 %i.cp
  %i.cr = getelementptr i8, ptr %itemsetend.promoted82, i64 %i.cp ; 2 uses
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next145, %vector.body139 ] ; 2 uses
  %i.cs = shl i64 %index140, 1                    ; 2 uses
  %next.gep141.a = getelementptr i8, ptr %.142.lcssa, i64 %i.cs ; 2 uses
  %next.gep142 = getelementptr i8, ptr %itemsetend.promoted82, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep141.a, i64 16
  %wide.load143.a = load <8 x i16>, ptr %next.gep141.a, align 2, !tbaa !16
  %wide.load144 = load <8 x i16>, ptr %i.ct, align 2, !tbaa !16
  %i.cu = getelementptr i8, ptr %next.gep142, i64 16
  store <8 x i16> %wide.load143.a, ptr %next.gep142, align 2, !tbaa !16
  store <8 x i16> %wide.load144, ptr %i.cu, align 2, !tbaa !16
  %index.next145 = add nuw i64 %index140, 16      ; 2 uses
  %i.cv = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.cv, label %middle.block146, label %vector.body139, !llvm.loop !37

middle.block146:                                  ; preds = %vector.body139
  %cmp.n147 = icmp eq i64 %i.cn, %n.vec138
  br i1 %cmp.n147, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block146
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf137, 0
  br i1 %min.epilog.iters.check, label %.lr.ph84.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec138, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec151 = and i64 %i.cn, -4                   ; 3 uses
  %i.cw = shl i64 %n.vec151, 1                    ; 2 uses
  %i.cx = getelementptr i8, ptr %.142.lcssa, i64 %i.cw
  %i.cy = getelementptr i8, ptr %itemsetend.promoted82, i64 %i.cw ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index152 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next156, %vec.epilog.vector.body ] ; 2 uses
  %i.cz = shl i64 %index152, 1                    ; 2 uses
  %next.gep153.a = getelementptr i8, ptr %.142.lcssa, i64 %i.cz
  %next.gep154 = getelementptr i8, ptr %itemsetend.promoted82, i64 %i.cz
  %wide.load155 = load <4 x i16>, ptr %next.gep153.a, align 2, !tbaa !16
  store <4 x i16> %wide.load155, ptr %next.gep154, align 2, !tbaa !16
  %index.next156 = add nuw i64 %index152, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next156, %n.vec151
  br i1 %i.da, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n157 = icmp eq i64 %i.cn, %n.vec151
  br i1 %cmp.n157, label %._crit_edge, label %.lr.ph84.preheader

.lr.ph84.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.683.ph = phi ptr [ %.142.lcssa, %iter.check ], [ %i.cq, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ]
  %.ph = phi ptr [ %itemsetend.promoted82, %iter.check ], [ %i.cr, %vec.epilog.iter.check ], [ %i.cy, %vec.epilog.middle.block ]
  br label %.lr.ph84

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %.loopexit
  %.079 = phi i32 [ %.2, %.loopexit ], [ 0, %.lr.ph80.preheader ] ; 2 uses
  %.14278 = phi ptr [ %.5, %.loopexit ], [ %0, %.lr.ph80.preheader ] ; 2 uses
  %.34977 = phi ptr [ %i.db, %.loopexit ], [ %i.a, %.lr.ph80.preheader ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.34977, i64 4 ; 2 uses
  %i.dc = load i32, ptr %.34977, align 4, !tbaa !4 ; 2 uses
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.c, label %.preheader55

.preheader55:                                     ; preds = %.lr.ph80
  %i.de = load ptr, ptr @rrhs, align 8
  %i.df = sext i32 %.079 to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph80
  %i.dg = add nsw i32 %.079, 32
  br label %.loopexit

bb.d:                                             ; preds = %.preheader55, %bb.g
  %indvars.iv = phi i64 [ %i.df, %.preheader55 ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.04075 = phi i32 [ 1, %.preheader55 ], [ %i.dt, %bb.g ] ; 2 uses
  %.24374 = phi ptr [ %.14278, %.preheader55 ], [ %.4, %bb.g ] ; 4 uses
  %i.dh = and i32 %.04075, %i.dc
  %.not54 = icmp eq i32 %i.dh, 0
  br i1 %.not54, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.di = getelementptr inbounds [2 x i8], ptr %i.de, i64 %indvars.iv
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !16 ; 2 uses
  %itemsetend.promoted = load ptr, ptr @itemsetend, align 8 ; 2 uses
  %i.dk = icmp ult ptr %.24374, %i.f
  br i1 %i.dk, label %.lr.ph71, label %.critedge

.lr.ph71:                                         ; preds = %bb.e, %bb.f
  %.370 = phi ptr [ %i.do, %bb.f ], [ %.24374, %bb.e ] ; 3 uses
  %i.dl = phi ptr [ %i.dp, %bb.f ], [ %itemsetend.promoted, %bb.e ] ; 2 uses
  %i.dm = load i16, ptr %.370, align 2, !tbaa !16 ; 2 uses
  %i.dn = icmp slt i16 %i.dm, %i.dj
  br i1 %i.dn, label %bb.f, label %.critedge.loopexit

bb.f:                                             ; preds = %.lr.ph71
  %i.do = getelementptr inbounds nuw i8, ptr %.370, i64 2 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 2 ; 2 uses
  store ptr %i.dp, ptr @itemsetend, align 8, !tbaa !8
  store i16 %i.dm, ptr %i.dl, align 2, !tbaa !16
  %i.dq = icmp ult ptr %i.do, %i.f
  br i1 %i.dq, label %.lr.ph71, label %.critedge.loopexit, !llvm.loop !40

.critedge.loopexit:                               ; preds = %bb.f, %.lr.ph71
  %.3.lcssa.ph = phi ptr [ %.370, %.lr.ph71 ], [ %i.do, %bb.f ]
  %.pre = load ptr, ptr @itemsetend, align 8, !tbaa !8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.e
  %i.dr = phi ptr [ %itemsetend.promoted, %bb.e ], [ %.pre, %.critedge.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %.24374, %bb.e ], [ %.3.lcssa.ph, %.critedge.loopexit ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  store ptr %i.ds, ptr @itemsetend, align 8, !tbaa !8
  store i16 %i.dj, ptr %i.dr, align 2, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.d
  %.4 = phi ptr [ %.3.lcssa, %.critedge ], [ %.24374, %bb.d ] ; 2 uses
  %i.dt = shl i32 %.04075, 1                      ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not53 = icmp eq i32 %i.dt, 0
  br i1 %.not53, label %.loopexit.loopexit, label %bb.d, !llvm.loop !41

.loopexit.loopexit:                               ; preds = %bb.g
  %i.du = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %.5 = phi ptr [ %.14278, %bb.c ], [ %.4, %.loopexit.loopexit ] ; 2 uses
  %.2 = phi i32 [ %i.dg, %bb.c ], [ %i.du, %.loopexit.loopexit ]
  %i.dv = icmp ult ptr %i.db, %i.d
  br i1 %i.dv, label %.lr.ph80, label %.preheader.loopexit, !llvm.loop !42

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %.lr.ph84
  %.683 = phi ptr [ %i.dx, %.lr.ph84 ], [ %.683.ph, %.lr.ph84.preheader ] ; 2 uses
  %i.dw = phi ptr [ %i.dz, %.lr.ph84 ], [ %.ph, %.lr.ph84.preheader ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.683, i64 2 ; 2 uses
  %i.dy = load i16, ptr %.683, align 2, !tbaa !16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 2 ; 2 uses
  store i16 %i.dy, ptr %i.dw, align 2, !tbaa !16
  %i.ea = icmp ult ptr %i.dx, %i.f
  br i1 %i.ea, label %.lr.ph84, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph84, %vec.epilog.middle.block, %middle.block146
  %.lcssa = phi ptr [ %i.cy, %vec.epilog.middle.block ], [ %i.cr, %middle.block146 ], [ %i.dz, %.lr.ph84 ]
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
