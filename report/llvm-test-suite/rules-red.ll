Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/rules-red?download=true
inline.NumInlined: 1556
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@red_BackReduction:bb.a
  br label %.lr.ph.i89

.lr.ph.i89:                                       ; preds = %.lr.ph.i89.preheader, %.lr.ph.i89
  %.07.i90 = phi ptr [ %.0.val.i91, %.lr.ph.i89 ], [ %.07.i90.ph, %.lr.ph.i89.preheader ] ; 3 uses
  %.0.val.i91 = load ptr, ptr %.07.i90, align 8   ; 2 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = sext i32 %i.ad to i64
  %i.af = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ag = add i64 %i.af, %i.ae
  store i64 %i.ag, ptr @memory_FREEDBYTES, align 8
  %i.ah = load ptr, ptr %i.ab, align 8
  store ptr %i.ah, ptr %.07.i90, align 8
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i90, ptr %i.ai, align 8
  %.not.i92 = icmp eq ptr %.0.val.i91, null
  br i1 %.not.i92, label %list_Delete.exit93, label %.lr.ph.i89, !llvm.loop !1

list_Delete.exit93:                               ; preds = %.lr.ph.i89, %list_Nconc.exit87, %list_Delete.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 320
  %i.ak = load i32, ptr %i.aj, align 4
  %.not66 = icmp eq i32 %i.ak, 0
  br i1 %.not66, label %list_Delete.exit107, label %bb.n

bb.n:                                             ; preds = %list_Delete.exit93
  %i.al = and i32 %2, -2
  %.not126 = icmp eq i32 %i.al, 2
  br i1 %.not126, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr i8, ptr %0, i64 32
  %.val73 = load ptr, ptr %i.am, align 8
  %i.an = call fastcc ptr @red_BackRewriting(ptr noundef %1, ptr noundef %.val73, ptr noundef nonnull %.val, ptr noundef %.val72, ptr noundef %i.a)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.4 = phi ptr [ %i.an, %bb.o ], [ null, %bb.n ] ; 5 uses
  %i.ao = and i32 %2, -3
  %.not127 = icmp eq i32 %i.ao, 1
  br i1 %.not127, label %bb.q, label %list_Nconc.exit101

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr i8, ptr %0, i64 48
  %.val76 = load ptr, ptr %i.ap, align 8
  %i.aq = call fastcc ptr @red_BackRewriting(ptr noundef %1, ptr noundef %.val76, ptr noundef nonnull %.val, ptr noundef %.val72, ptr noundef %i.a) ; 3 uses
  %.not.i94 = icmp eq ptr %.4, null
  br i1 %.not.i94, label %list_Nconc.exit101, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not16.i95 = icmp eq ptr %i.aq, null
  br i1 %.not16.i95, label %list_Nconc.exit101.thread, label %.preheader.i96

.preheader.i96:                                   ; preds = %bb.r, %.preheader.i96
  %.012.i97 = phi ptr [ %.012.val15.i98, %.preheader.i96 ], [ %.4, %bb.r ] ; 2 uses
  %.012.val15.i98 = load ptr, ptr %.012.i97, align 8 ; 2 uses
  %.not17.i99 = icmp eq ptr %.012.val15.i98, null
  br i1 %.not17.i99, label %bb.s, label %.preheader.i96, !llvm.loop !2

bb.s:                                             ; preds = %.preheader.i96
  store ptr %i.aq, ptr %.012.i97, align 8
  br label %list_Nconc.exit101.thread

list_Nconc.exit101.thread:                        ; preds = %bb.s, %bb.r
  tail call fastcc void @red_HandleRedundantIndexedClauses(ptr noundef nonnull %0, ptr noundef nonnull %.4, ptr noundef %1)
  br label %.lr.ph.i103.preheader

list_Nconc.exit101:                               ; preds = %bb.q, %bb.p
  %.5 = phi ptr [ %.4, %bb.p ], [ %i.aq, %bb.q ]  ; 3 uses
  tail call fastcc void @red_HandleRedundantIndexedClauses(ptr noundef nonnull %0, ptr noundef %.5, ptr noundef %1)
  %.not6.i102 = icmp eq ptr %.5, null
  br i1 %.not6.i102, label %list_Delete.exit107, label %.lr.ph.i103.preheader

.lr.ph.i103.preheader:                            ; preds = %list_Nconc.exit101.thread, %list_Nconc.exit101
  %.07.i104.ph = phi ptr [ %.5, %list_Nconc.exit101 ], [ %.4, %list_Nconc.exit101.thread ]
  br label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %.lr.ph.i103.preheader, %.lr.ph.i103
  %.07.i104 = phi ptr [ %.0.val.i105, %.lr.ph.i103 ], [ %.07.i104.ph, %.lr.ph.i103.preheader ] ; 3 uses
  %.0.val.i105 = load ptr, ptr %.07.i104, align 8 ; 2 uses
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i32, ptr %i.as, align 8
  %i.au = sext i32 %i.at to i64
  %i.av = load i64, ptr @memory_FREEDBYTES, align 8
  %i.aw = add i64 %i.av, %i.au
  store i64 %i.aw, ptr @memory_FREEDBYTES, align 8
  %i.ax = load ptr, ptr %i.ar, align 8
  store ptr %i.ax, ptr %.07.i104, align 8
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i104, ptr %i.ay, align 8
  %.not.i106 = icmp eq ptr %.0.val.i105, null
  br i1 %.not.i106, label %list_Delete.exit107, label %.lr.ph.i103, !llvm.loop !1

list_Delete.exit107:                              ; preds = %.lr.ph.i103, %list_Nconc.exit101, %list_Delete.exit93
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 328
  %i.ba = load i32, ptr %i.az, align 4
  %.not69 = icmp eq i32 %i.ba, 0
  br i1 %.not69, label %list_Delete.exit121, label %bb.t

bb.t:                                             ; preds = %list_Delete.exit107
  %i.bb = and i32 %2, -2
  %.not128 = icmp eq i32 %i.bb, 2
  br i1 %.not128, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bc = call fastcc ptr @red_BackContextualRewriting(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, ptr noundef %i.a)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.6 = phi ptr [ %i.bc, %bb.u ], [ null, %bb.t ] ; 5 uses
  %i.bd = and i32 %2, -3
  %.not129 = icmp eq i32 %i.bd, 1
  br i1 %.not129, label %bb.w, label %list_Nconc.exit115

bb.w:                                             ; preds = %bb.v
  %i.be = call fastcc ptr @red_BackContextualRewriting(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef %i.a) ; 3 uses
  %.not.i108 = icmp eq ptr %.6, null
  br i1 %.not.i108, label %list_Nconc.exit115, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not16.i109 = icmp eq ptr %i.be, null
  br i1 %.not16.i109, label %list_Nconc.exit115.thread, label %.preheader.i110

.preheader.i110:                                  ; preds = %bb.x, %.preheader.i110
  %.012.i111 = phi ptr [ %.012.val15.i112, %.preheader.i110 ], [ %.6, %bb.x ] ; 2 uses
  %.012.val15.i112 = load ptr, ptr %.012.i111, align 8 ; 2 uses
  %.not17.i113 = icmp eq ptr %.012.val15.i112, null
  br i1 %.not17.i113, label %bb.y, label %.preheader.i110, !llvm.loop !2

bb.y:                                             ; preds = %.preheader.i110
  store ptr %i.be, ptr %.012.i111, align 8
  br label %list_Nconc.exit115.thread

list_Nconc.exit115.thread:                        ; preds = %bb.y, %bb.x
  tail call fastcc void @red_HandleRedundantIndexedClauses(ptr noundef nonnull %0, ptr noundef nonnull %.6, ptr noundef %1)
  br label %.lr.ph.i117.preheader

list_Nconc.exit115:                               ; preds = %bb.w, %bb.v
  %.7 = phi ptr [ %.6, %bb.v ], [ %i.be, %bb.w ]  ; 3 uses
  tail call fastcc void @red_HandleRedundantIndexedClauses(ptr noundef nonnull %0, ptr noundef %.7, ptr noundef %1)
  %.not6.i116 = icmp eq ptr %.7, null
  br i1 %.not6.i116, label %list_Delete.exit121, label %.lr.ph.i117.preheader

.lr.ph.i117.preheader:                            ; preds = %list_Nconc.exit115.thread, %list_Nconc.exit115
  %.07.i118.ph = phi ptr [ %.7, %list_Nconc.exit115 ], [ %.6, %list_Nconc.exit115.thread ]
  br label %.lr.ph.i117

.lr.ph.i117:                                      ; preds = %.lr.ph.i117.preheader, %.lr.ph.i117
  %.07.i118 = phi ptr [ %.0.val.i119, %.lr.ph.i117 ], [ %.07.i118.ph, %.lr.ph.i117.preheader ] ; 3 uses
  %.0.val.i119 = load ptr, ptr %.07.i118, align 8 ; 2 uses
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = sext i32 %i.bh to i64
  %i.bj = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bk = add i64 %i.bj, %i.bi
  store i64 %i.bk, ptr @memory_FREEDBYTES, align 8
  %i.bl = load ptr, ptr %i.bf, align 8
  store ptr %i.bl, ptr %.07.i118, align 8
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i118, ptr %i.bm, align 8
  %.not.i120 = icmp eq ptr %.0.val.i119, null
  br i1 %.not.i120, label %list_Delete.exit121, label %.lr.ph.i117, !llvm.loop !1

list_Delete.exit121:                              ; preds = %.lr.ph.i117, %list_Nconc.exit115, %list_Delete.exit107
  %i.bn = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %i.bn
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @red_BackSubsumption(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %.clause_IsEmptyClause.exit.thread_crit_edge, label %bb.b

.clause_IsEmptyClause.exit.thread_crit_edge:      ; preds = %bb.a
  %.val138.pre = load i32, ptr inttoptr (i64 68 to ptr), align 4
  br label %clause_IsEmptyClause.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 68
  %.val.i = load i32, ptr %i.a, align 4           ; 2 uses
  %.not8.i = icmp eq i32 %.val.i, 0
  br i1 %.not8.i, label %bb.c, label %clause_IsEmptyClause.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %0, i64 72
  %.val6.i = load i32, ptr %i.b, align 8
  %.not9.i = icmp eq i32 %.val6.i, 0
  br i1 %.not9.i, label %clause_IsEmptyClause.exit, label %clause_IsEmptyClause.exit.thread

clause_IsEmptyClause.exit:                        ; preds = %bb.c
  %i.c = getelementptr i8, ptr %0, i64 64
  %.val7.i = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %.val7.i, 0
  br i1 %.not, label %.loopexit, label %clause_IsEmptyClause.exit.thread

clause_IsEmptyClause.exit.thread:                 ; preds = %.clause_IsEmptyClause.exit.thread_crit_edge, %bb.b, %bb.c, %clause_IsEmptyClause.exit
  %.val138 = phi i32 [ %.val138.pre, %.clause_IsEmptyClause.exit.thread_crit_edge ], [ %.val.i, %bb.b ], [ 0, %bb.c ], [ 0, %clause_IsEmptyClause.exit ] ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 64
  %.val151 = load i32, ptr %i.d, align 8          ; 4 uses
  %i.e = add i32 %.val151, -1                     ; 3 uses
  %i.f = add i32 %i.e, %.val138                   ; 3 uses
  %i.g = add i32 %.val138, %.val151               ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 72
  %.val4.i.i = load i32, ptr %i.h, align 8        ; 2 uses
  %i.i = add i32 %i.f, %.val4.i.i
  %.not10622 = icmp slt i32 %i.i, 1
  %.phi.trans.insert60 = getelementptr i8, ptr %0, i64 56
  %.val149.pre = load ptr, ptr %.phi.trans.insert60, align 8 ; 5 uses
  br i1 %.not10622, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %clause_IsEmptyClause.exit.thread
  %i.j = add i32 %i.g, %.val4.i.i                 ; 2 uses
  %wide.trip.count = zext i32 %i.j to i64
  %.pre = load ptr, ptr %.val149.pre, align 8
  %.phi.trans.insert58 = getelementptr i8, ptr %.pre, i64 4
  %.val159.pre = load i32, ptr %.phi.trans.insert58, align 4 ; 2 uses
  %i.k = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.l = icmp eq i32 %i.j, 2
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.k, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.val159 = phi i32 [ %.val159.pre, %.lr.ph.new ], [ %i.x, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 4 uses
  %.09323 = phi i32 [ 0, %.lr.ph.new ], [ %spec.select.1, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val149.pre, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %.val160 = load i32, ptr %i.o, align 4          ; 2 uses
  %i.p = icmp ugt i32 %.val160, %.val159
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.p, i32 %i.q, i32 %.09323
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = tail call i32 @llvm.umax.i32(i32 %.val160, i32 %.val159) ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.val149.pre, i64 %indvars.iv.next
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %.val160.1 = load i32, ptr %i.u, align 4        ; 2 uses
  %i.v = icmp ugt i32 %.val160.1, %i.r
  %i.w = trunc nuw nsw i64 %indvars.iv.next to i32
  %spec.select.1 = select i1 %i.v, i32 %i.w, i32 %spec.select ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.x = tail call i32 @llvm.umax.i32(i32 %.val160.1, i32 %i.r) ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !16

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.val159.epil.init = phi i32 [ %.val159.pre, %.lr.ph ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.09323.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod70 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod70)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.val149.pre, i64 %indvars.iv.epil.init
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %.val160.epil = load i32, ptr %i.aa, align 4
  %i.ab = icmp ugt i32 %.val160.epil, %.val159.epil.init
  %i.ac = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %spec.select.epil = select i1 %i.ab, i32 %i.ac, i32 %.09323.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %clause_IsEmptyClause.exit.thread
  %.093.lcssa = phi i32 [ 0, %clause_IsEmptyClause.exit.thread ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.epil.preheader ] ; 11 uses
  %i.ad = getelementptr i8, ptr %0, i64 56
  %i.ae = zext nneg i32 %.093.lcssa to i64        ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val149.pre, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 24
  %.val1.i = load ptr, ptr %i.ah, align 8         ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val1.i, align 8
  %i.ai = load i32, ptr @fol_NOT, align 4
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.ai
  br i1 %.not.i.i, label %bb.e, label %clause_GetLiteralAtom.exit

bb.e:                                             ; preds = %._crit_edge
  %i.aj = getelementptr i8, ptr %.val1.i, i64 16
  %.val6.i.i = load ptr, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.ak, align 8
  br label %clause_GetLiteralAtom.exit

clause_GetLiteralAtom.exit:                       ; preds = %._crit_edge, %bb.e
  %.0.i.i = phi ptr [ %.val6.val.i.i, %bb.e ], [ %.val1.i, %._crit_edge ] ; 3 uses
  %i.al = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val153 = load ptr, ptr %1, align 8
  %i.am = tail call ptr @st_ExistInstance(ptr noundef %i.al, ptr noundef %.val153, ptr noundef %.0.i.i) #14 ; 2 uses
  %.not10732 = icmp eq ptr %i.am, null
  br i1 %.not10732, label %._crit_edge36, label %.lr.ph35

.lr.ph35:                                         ; preds = %clause_GetLiteralAtom.exit
  %.not126 = icmp sgt i32 %.093.lcssa, %i.e
  %.not128 = icmp slt i32 %.093.lcssa, %.val151
  %.not129 = icmp sgt i32 %.093.lcssa, %i.f
  %or.cond = or i1 %.not128, %.not129
  %.not131 = icmp slt i32 %.093.lcssa, %i.g
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph35, %._crit_edge30
  %.09434 = phi ptr [ null, %.lr.ph35 ], [ %.195.lcssa, %._crit_edge30 ] ; 2 uses
  %.09933 = phi ptr [ %i.am, %.lr.ph35 ], [ %i.bv, %._crit_edge30 ]
  %i.an = tail call ptr @sharing_NAtomDataList(ptr noundef nonnull %.09933) #14 ; 2 uses
  %.not625 = icmp eq ptr %i.an, null
  br i1 %.not625, label %._crit_edge30, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.f, %list_PointerMember.exit
  %.19527 = phi ptr [ %.2, %list_PointerMember.exit ], [ %.09434, %bb.f ] ; 8 uses
  %.09626 = phi ptr [ %.096.val147, %list_PointerMember.exit ], [ %i.an, %bb.f ] ; 2 uses
  %i.ao = getelementptr i8, ptr %.09626, i64 8
  %.096.val = load ptr, ptr %i.ao, align 8        ; 5 uses
  %i.ap = getelementptr i8, ptr %.096.val, i64 16
  %.val155 = load ptr, ptr %i.ap, align 8         ; 11 uses
  %i.aq = getelementptr i8, ptr %.val155, i64 56
  %.val.i161 = load ptr, ptr %i.aq, align 8       ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph29
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %.lr.ph29 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.val.i161, i64 %indvars.iv.i
  %i.as = load ptr, ptr %i.ar, align 8
  %.not.i162 = icmp eq ptr %i.as, %.096.val
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i162, label %clause_LiteralGetIndex.exit, label %bb.g, !llvm.loop !3

clause_LiteralGetIndex.exit:                      ; preds = %bb.g
  %i.at = trunc nuw nsw i64 %indvars.iv.i to i32
  %.not125 = icmp eq ptr %0, %.val155
  br i1 %.not125, label %list_PointerMember.exit, label %bb.h

bb.h:                                             ; preds = %clause_LiteralGetIndex.exit
  br i1 %.not126, label %bb.i, label %.preheader21

.preheader21:                                     ; preds = %bb.h, %.preheader21
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader21 ], [ 0, %bb.h ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.val.i161, i64 %indvars.iv.i.i
  %i.av = load ptr, ptr %i.au, align 8
  %.not.i.i165 = icmp eq ptr %i.av, %.096.val
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %.not.i.i165, label %clause_LiteralIsFromConstraint.exit, label %.preheader21, !llvm.loop !3

clause_LiteralIsFromConstraint.exit:              ; preds = %.preheader21
  %i.aw = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.ax = getelementptr i8, ptr %.val155, i64 64
  %.val.i166 = load i32, ptr %i.ax, align 8
  %.not.not.i.not = icmp sgt i32 %.val.i166, %i.aw
  br i1 %.not.not.i.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %clause_LiteralIsFromConstraint.exit, %bb.h
  br i1 %or.cond, label %bb.j, label %.preheader20

.preheader20:                                     ; preds = %bb.i, %.preheader20
  %indvars.iv.i.i169 = phi i64 [ %indvars.iv.next.i.i171, %.preheader20 ], [ 0, %bb.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.val.i161, i64 %indvars.iv.i.i169
  %i.az = load ptr, ptr %i.ay, align 8
  %.not.i.i170 = icmp eq ptr %i.az, %.096.val
  %indvars.iv.next.i.i171 = add nuw nsw i64 %indvars.iv.i.i169, 1
  br i1 %.not.i.i170, label %clause_LiteralIsFromAntecedent.exit, label %.preheader20, !llvm.loop !3

clause_LiteralIsFromAntecedent.exit:              ; preds = %.preheader20
  %i.ba = trunc nuw nsw i64 %indvars.iv.i.i169 to i32 ; 2 uses
  %i.bb = getelementptr i8, ptr %.val155, i64 64
  %.val.i172 = load i32, ptr %i.bb, align 8       ; 2 uses
  %i.bc = getelementptr i8, ptr %.val155, i64 68
  %.val5.i = load i32, ptr %i.bc, align 4
  %i.bd = add i32 %.val.i172, -1
  %i.be = add i32 %i.bd, %.val5.i
  %.not.i173 = icmp slt i32 %i.be, %i.ba
  %i.bf = icmp sgt i32 %.val.i172, %i.ba
  %narrow.i.not = or i1 %i.bf, %.not.i173
  br i1 %narrow.i.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %clause_LiteralIsFromAntecedent.exit, %bb.i
  br i1 %.not131, label %list_PointerMember.exit, label %.preheader19

.preheader19:                                     ; preds = %bb.j, %.preheader19
  %indvars.iv.i.i176 = phi i64 [ %indvars.iv.next.i.i178, %.preheader19 ], [ 0, %bb.j ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.val.i161, i64 %indvars.iv.i.i176
  %i.bh = load ptr, ptr %i.bg, align 8
  %.not.i.i177 = icmp eq ptr %i.bh, %.096.val
  %indvars.iv.next.i.i178 = add nuw nsw i64 %indvars.iv.i.i176, 1
  br i1 %.not.i.i177, label %clause_LiteralIsFromSuccedent.exit, label %.preheader19, !llvm.loop !3

clause_LiteralIsFromSuccedent.exit:               ; preds = %.preheader19
  %i.bi = trunc nuw nsw i64 %indvars.iv.i.i176 to i32 ; 2 uses
  %i.bj = getelementptr i8, ptr %.val155, i64 64
  %.val3.i.i.i = load i32, ptr %i.bj, align 8
  %i.bk = getelementptr i8, ptr %.val155, i64 68
  %.val.i.i.i = load i32, ptr %i.bk, align 4
  %i.bl = getelementptr i8, ptr %.val155, i64 72
  %.val4.i.i.i = load i32, ptr %i.bl, align 8
  %i.bm = add i32 %.val.i.i.i, %.val3.i.i.i       ; 2 uses
  %i.bn = add i32 %i.bm, -1
  %i.bo = add i32 %i.bn, %.val4.i.i.i
  %.not.i179 = icmp slt i32 %i.bo, %i.bi
  %i.bp = icmp sgt i32 %i.bm, %i.bi
  %narrow.i180.not = or i1 %i.bp, %.not.i179
  br i1 %narrow.i180.not, label %list_PointerMember.exit, label %bb.k

bb.k:                                             ; preds = %clause_LiteralIsFromSuccedent.exit, %clause_LiteralIsFromAntecedent.exit, %clause_LiteralIsFromConstraint.exit
  %.not6.i = icmp eq ptr %.19527, null
  br i1 %.not6.i, label %.loopexit18, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.l
end_hunk_0
begin_hunk_1_@red_SatUnit:bb.a
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.06488, ptr %i.r, align 8
  %i.s = call ptr @red_ReductionOnDerivedClause(ptr noundef %0, ptr noundef %i.i, i32 noundef 1) ; 8 uses
  %.not40 = icmp eq ptr %i.s, null
  br i1 %.not40, label %list_Nconc.exit57, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.s, i64 68
  %.val.i = load i32, ptr %i.t, align 4
  %.not8.i = icmp eq i32 %.val.i, 0
  br i1 %.not8.i, label %bb.d, label %clause_IsEmptyClause.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.s, i64 72
  %.val6.i = load i32, ptr %i.u, align 8
  %.not9.i = icmp eq i32 %.val6.i, 0
  br i1 %.not9.i, label %clause_IsEmptyClause.exit, label %clause_IsEmptyClause.exit.thread

clause_IsEmptyClause.exit:                        ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.s, i64 64
  %.val7.i = load i32, ptr %i.v, align 8
  %.not79 = icmp eq i32 %.val7.i, 0
  br i1 %.not79, label %bb.e, label %clause_IsEmptyClause.exit.thread

bb.e:                                             ; preds = %clause_IsEmptyClause.exit
  %i.w = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.s, ptr %i.x, align 8
  store ptr null, ptr %i.w, align 8
  store ptr %i.w, ptr %i.a, align 8
  br label %list_Nconc.exit57

clause_IsEmptyClause.exit.thread:                 ; preds = %bb.c, %bb.d, %clause_IsEmptyClause.exit
  %i.y = call ptr @red_BackReduction(ptr noundef %0, ptr noundef nonnull %i.s, i32 noundef 1) ; 5 uses
  %.not42 = icmp eq i32 %.089, 0
  br i1 %.not42, label %list_Nconc.exit, label %bb.f

bb.f:                                             ; preds = %clause_IsEmptyClause.exit.thread
  %.val46 = load ptr, ptr %i.g, align 8
  %i.z = call ptr @inf_BoundedDepthUnitResolution(ptr noundef nonnull %i.s, ptr noundef %.val46, i32 noundef 0, ptr noundef %.val, ptr noundef %.val45) #14 ; 4 uses
  %i.aa = call i32 @list_Length(ptr noundef %i.z) #14
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %.089, i32 %i.aa) ; 3 uses
  %.not.i49 = icmp eq ptr %i.y, null
  br i1 %.not.i49, label %list_Nconc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not16.i = icmp eq ptr %i.z, null
  br i1 %.not16.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %i.y, %bb.g ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.h, label %.preheader.i, !llvm.loop !2

bb.h:                                             ; preds = %.preheader.i
  store ptr %i.z, ptr %.012.i, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %clause_IsEmptyClause.exit.thread, %bb.f, %bb.g, %bb.h
  %.172 = phi i32 [ %spec.select, %bb.h ], [ %spec.select, %bb.f ], [ %spec.select, %bb.g ], [ 0, %clause_IsEmptyClause.exit.thread ] ; 3 uses
  %.0.i = phi ptr [ %i.y, %bb.h ], [ %i.z, %bb.f ], [ %i.y, %bb.g ], [ %i.y, %clause_IsEmptyClause.exit.thread ]
  %i.ab = call ptr @split_ExtractEmptyClauses(ptr noundef %.0.i, ptr noundef nonnull %i.a) #14 ; 5 uses
  call void @prfs_InsertUsableClause(ptr noundef %0, ptr noundef nonnull %i.s) #14
  %.not8082 = icmp eq ptr %i.ab, null
  br i1 %.not8082, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %list_Nconc.exit, %.lr.ph
  %.03583 = phi ptr [ %.035.val48, %.lr.ph ], [ %i.ab, %list_Nconc.exit ] ; 2 uses
  %i.ac = getelementptr i8, ptr %.03583, i64 8
  %.035.val = load ptr, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.035.val, i64 8
  store i32 0, ptr %i.ad, align 8
  %.035.val48 = load ptr, ptr %.03583, align 8    ; 2 uses
  %.not80 = icmp eq ptr %.035.val48, null
  br i1 %.not80, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !50

._crit_edge:                                      ; preds = %list_Nconc.exit
  %.not.i50 = icmp eq ptr %i.j, null
  %spec.select111 = select i1 %.not.i50, ptr %i.ab, ptr %i.j
  br label %list_Nconc.exit57

._crit_edge.thread:                               ; preds = %.lr.ph
  %.not.i50108 = icmp eq ptr %i.j, null
  br i1 %.not.i50108, label %list_Nconc.exit57, label %.preheader.i52

.preheader.i52:                                   ; preds = %._crit_edge.thread, %.preheader.i52
  %.012.i53 = phi ptr [ %.012.val15.i54, %.preheader.i52 ], [ %i.j, %._crit_edge.thread ] ; 2 uses
  %.012.val15.i54 = load ptr, ptr %.012.i53, align 8 ; 2 uses
  %.not17.i55 = icmp eq ptr %.012.val15.i54, null
  br i1 %.not17.i55, label %bb.i, label %.preheader.i52, !llvm.loop !2

bb.i:                                             ; preds = %.preheader.i52
  store ptr %i.ab, ptr %.012.i53, align 8
  br label %list_Nconc.exit57

list_Nconc.exit57:                                ; preds = %._crit_edge, %._crit_edge.thread, %bb.i, %bb.e, %bb.b
  %.165 = phi ptr [ %i.j, %bb.b ], [ %i.j, %bb.e ], [ %i.j, %bb.i ], [ %spec.select111, %._crit_edge ], [ %i.ab, %._crit_edge.thread ] ; 5 uses
  %.2 = phi i32 [ %.089, %bb.b ], [ %.089, %bb.e ], [ %.172, %bb.i ], [ %.172, %._crit_edge ], [ %.172, %._crit_edge.thread ]
  %.not = icmp eq ptr %.165, null                 ; 2 uses
  %i.ae = load ptr, ptr %i.a, align 8
  %.not78 = icmp ne ptr %i.ae, null
  %or.cond.not = select i1 %.not, i1 true, i1 %.not78
  br i1 %or.cond.not, label %.critedge.preheader, label %bb.b, !llvm.loop !51

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
  %.13694 = phi ptr [ %.136.val47, %.critedge ], [ %.165, %.critedge.preheader ] ; 2 uses
  %i.af = getelementptr i8, ptr %.13694, i64 8
  %.136.val = load ptr, ptr %i.af, align 8
  call void @prfs_InsertUsableClause(ptr noundef %0, ptr noundef %.136.val) #14
  %.136.val47 = load ptr, ptr %.13694, align 8    ; 2 uses
  %.not81 = icmp eq ptr %.136.val47, null
  br i1 %.not81, label %.critedge._crit_edge, label %.critedge, !llvm.loop !52

.critedge._crit_edge:                             ; preds = %.critedge, %.critedge.preheader
  %.064.lcssa106 = phi ptr [ null, %.critedge.preheader ], [ %.165, %.critedge ]
  br i1 %.not, label %list_Delete.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge._crit_edge, %.lr.ph.i
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %.064.lcssa106, %.critedge._crit_edge ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = sext i32 %i.ai to i64
  %i.ak = load i64, ptr @memory_FREEDBYTES, align 8
  %i.al = add i64 %i.ak, %i.aj
  store i64 %i.al, ptr @memory_FREEDBYTES, align 8
  %i.am = load ptr, ptr %i.ag, align 8
  store ptr %i.am, ptr %.07.i, align 8
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.an, align 8
  %.not.i58 = icmp eq ptr %.0.val.i, null
  br i1 %.not.i58, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !1

list_Delete.exit:                                 ; preds = %.lr.ph.i, %bb.a, %.critedge._crit_edge
  %i.ao = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %i.ao
}

declare ptr @inf_BoundedDepthUnitResolution(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @red_ReduceInput(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 104
  %.val33 = load ptr, ptr %i.c, align 8
  store ptr null, ptr %i.a, align 8
  %i.d = tail call ptr @list_Copy(ptr noundef %1) #14
  %i.e = tail call ptr @clause_ListSortWeighed(ptr noundef %i.d) #14
  %i.f = call ptr @split_ExtractEmptyClauses(ptr noundef %i.e, ptr noundef nonnull %i.a) #14 ; 3 uses
  %.not48 = icmp eq ptr %i.f, null                ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8
  %.not4550 = icmp ne ptr %i.g, null
  %or.cond51.not = select i1 %.not48, i1 true, i1 %.not4550
  br i1 %or.cond51.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.04352 = phi ptr [ %i.f, %.lr.ph ], [ %.1, %bb.o ] ; 5 uses
  %i.k = load i32, ptr %i.h, align 4              ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sitofp i32 %i.k to float
  %i.n = call float @clock_GetSeconds(i32 noundef 1) #14
  %i.o = fcmp olt float %i.n, %i.m
  br i1 %i.o, label %.critedge2, label %.lr.ph60.preheader

.critedge2:                                       ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.04352, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 7 uses
  %i.r = load ptr, ptr %.04352, align 8           ; 3 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load i32, ptr %i.t, align 8
  %i.v = sext i32 %i.u to i64
  %i.w = load i64, ptr @memory_FREEDBYTES, align 8
  %i.x = add i64 %i.w, %i.v
  store i64 %i.x, ptr @memory_FREEDBYTES, align 8
  %i.y = load ptr, ptr %i.s, align 8
  store ptr %i.y, ptr %.04352, align 8
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.04352, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %i.q, i64 64      ; 2 uses
  %.val31.i = load i32, ptr %i.aa, align 8        ; 2 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 68      ; 2 uses
  %.val32.i = load i32, ptr %i.ab, align 4        ; 2 uses
  %i.ac = add i32 %.val32.i, %.val31.i            ; 3 uses
  %i.ad = add i32 %i.ac, -1
  %.not48.i = icmp slt i32 %i.ad, 0
  br i1 %.not48.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2
  %i.ae = getelementptr i8, ptr %i.q, i64 56
  %wide.trip.count.i = zext i32 %i.ac to i64
  %.pre63.i = load i32, ptr @fol_NOT, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i
  %i.af = phi i32 [ %.pre63.i, %.lr.ph.i ], [ %i.ap, %bb.g ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %.050.i = phi ptr [ null, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 2 uses
  %.val34.i = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val34.i, i64 %indvars.iv.i
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %.val36.i = load ptr, ptr %i.ai, align 8        ; 2 uses
  %.val5.val.i.i = load i32, ptr %.val36.i, align 8 ; 2 uses
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.af
  br i1 %.not.i.i, label %bb.e, label %clause_LiteralAtom.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr i8, ptr %.val36.i, i64 16
  %.val6.i.i = load ptr, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.ak, align 8
  %.val37.pre.i = load i32, ptr %.val6.val.i.i, align 8
  br label %clause_LiteralAtom.exit.i

clause_LiteralAtom.exit.i:                        ; preds = %bb.e, %bb.d
  %.val37.i = phi i32 [ %.val37.pre.i, %bb.e ], [ %.val5.val.i.i, %bb.d ]
  %i.al = load i32, ptr @fol_TRUE, align 4
  %.not46.i = icmp eq i32 %i.al, %.val37.i
  br i1 %.not46.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %clause_LiteralAtom.exit.i
  %i.am = inttoptr i64 %indvars.iv.i to ptr
  %i.an = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8
  store ptr %.050.i, ptr %i.an, align 8
  %.pre.i = load i32, ptr @fol_NOT, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %clause_LiteralAtom.exit.i
  %i.ap = phi i32 [ %.pre.i, %bb.f ], [ %i.af, %clause_LiteralAtom.exit.i ]
  %.1.i = phi ptr [ %i.an, %bb.f ], [ %.050.i, %clause_LiteralAtom.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.d, !llvm.loop !53

._crit_edge.loopexit.i:                           ; preds = %bb.g
  %.val3.i.i.pre.i = load i32, ptr %i.aa, align 8 ; 2 uses
  %.val.i.i.pre.i = load i32, ptr %i.ab, align 4  ; 2 uses
  %.pre.a = add i32 %.val3.i.i.pre.i, %.val.i.i.pre.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.critedge2
  %.pre-phi = phi i32 [ %.pre.a, %._crit_edge.loopexit.i ], [ %i.ac, %.critedge2 ] ; 2 uses
  %.val.i.i.i = phi i32 [ %.val.i.i.pre.i, %._crit_edge.loopexit.i ], [ %.val32.i, %.critedge2 ]
  %.val3.i.i.i = phi i32 [ %.val3.i.i.pre.i, %._crit_edge.loopexit.i ], [ %.val31.i, %.critedge2 ]
  %.0.lcssa.i = phi ptr [ %.1.i, %._crit_edge.loopexit.i ], [ null, %.critedge2 ] ; 2 uses
  %i.aq = getelementptr i8, ptr %i.q, i64 72
  %.val4.i.i.i = load i32, ptr %i.aq, align 8
  %2 = add i32 %.val4.i.i.i, %.pre-phi            ; 2 uses
  %i.ar = add i32 %2, -1
  %.not2751.i = icmp sgt i32 %.pre-phi, %i.ar
  br i1 %.not2751.i, label %._crit_edge56.i, label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %._crit_edge.i
  %i.as = getelementptr i8, ptr %i.q, i64 56
  %i.at = sext i32 %.val3.i.i.i to i64
  %i.au = sext i32 %.val.i.i.i to i64
  %i.av = add nsw i64 %i.at, %i.au
  %.pre68.i = load i32, ptr @fol_NOT, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %.lr.ph55.i
  %i.aw = phi i32 [ %.pre68.i, %.lr.ph55.i ], [ %i.bg, %bb.k ] ; 2 uses
  %indvars.iv59.i = phi i64 [ %i.av, %.lr.ph55.i ], [ %indvars.iv.next60.i, %bb.k ] ; 3 uses
  %.253.i = phi ptr [ %.0.lcssa.i, %.lr.ph55.i ], [ %.3.i, %bb.k ] ; 2 uses
  %.val33.i = load ptr, ptr %i.as, align 8
  %i.ax = getelementptr inbounds [8 x i8], ptr %.val33.i, i64 %indvars.iv59.i
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr i8, ptr %i.ay, i64 24
  %.val35.i = load ptr, ptr %i.az, align 8        ; 2 uses
  %.val5.val.i39.i = load i32, ptr %.val35.i, align 8 ; 2 uses
  %.not.i40.i = icmp eq i32 %.val5.val.i39.i, %i.aw
  br i1 %.not.i40.i, label %bb.i, label %clause_LiteralAtom.exit44.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr i8, ptr %.val35.i, i64 16
  %.val6.i42.i = load ptr, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %.val6.i42.i, i64 8
  %.val6.val.i43.i = load ptr, ptr %i.bb, align 8
  %.val38.pre.i = load i32, ptr %.val6.val.i43.i, align 8
  br label %clause_LiteralAtom.exit44.i

clause_LiteralAtom.exit44.i:                      ; preds = %bb.i, %bb.h
  %.val38.i = phi i32 [ %.val38.pre.i, %bb.i ], [ %.val5.val.i39.i, %bb.h ]
  %i.bc = load i32, ptr @fol_FALSE, align 4
  %.not47.i = icmp eq i32 %i.bc, %.val38.i
  br i1 %.not47.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %clause_LiteralAtom.exit44.i
  %i.bd = inttoptr i64 %indvars.iv59.i to ptr
  %i.be = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bd, ptr %i.bf, align 8
  store ptr %.253.i, ptr %i.be, align 8
  %.pre67.i = load i32, ptr @fol_NOT, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %clause_LiteralAtom.exit44.i
  %i.bg = phi i32 [ %.pre67.i, %bb.j ], [ %i.aw, %clause_LiteralAtom.exit44.i ]
  %.3.i = phi ptr [ %i.be, %bb.j ], [ %.253.i, %clause_LiteralAtom.exit44.i ] ; 2 uses
  %indvars.iv.next60.i = add nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next60.i to i32
  %exitcond62.not.i = icmp eq i32 %2, %lftr.wideiv.i
  br i1 %exitcond62.not.i, label %._crit_edge56.i, label %bb.h, !llvm.loop !54

._crit_edge56.i:                                  ; preds = %bb.k, %._crit_edge.i
  %.2.lcssa.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i ], [ %.3.i, %bb.k ] ; 3 uses
  call void @clause_DeleteLiterals(ptr noundef nonnull %i.q, ptr noundef %.2.lcssa.i, ptr noundef %.val, ptr noundef %.val33) #14
  %.not6.i.i = icmp eq ptr %.2.lcssa.i, null
  br i1 %.not6.i.i, label %red_SpecialInputReductions.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge56.i, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %.0.val.i.i, %.lr.ph.i.i ], [ %.2.lcssa.i, %._crit_edge56.i ] ; 3 uses
  %.0.val.i.i = load ptr, ptr %.07.i.i, align 8   ; 2 uses
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = sext i32 %i.bj to i64
  %i.bl = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bm = add i64 %i.bl, %i.bk
  store i64 %i.bm, ptr @memory_FREEDBYTES, align 8
  %i.bn = load ptr, ptr %i.bh, align 8
  store ptr %i.bn, ptr %.07.i.i, align 8
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i.i, ptr %i.bo, align 8
  %.not.i45.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i45.i, label %red_SpecialInputReductions.exit, label %.lr.ph.i.i, !llvm.loop !1

red_SpecialInputReductions.exit:                  ; preds = %.lr.ph.i.i, %._crit_edge56.i
  %i.bp = call ptr @red_ReductionOnDerivedClause(ptr noundef %0, ptr noundef nonnull %i.q, i32 noundef 1) ; 7 uses
  %.not30 = icmp eq ptr %i.bp, null
  br i1 %.not30, label %bb.o, label %bb.l

bb.l:                                             ; preds = %red_SpecialInputReductions.exit
  %i.bq = load i32, ptr %i.i, align 4
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.i, align 4
  %i.bs = getelementptr i8, ptr %i.bp, i64 68
  %.val.i = load i32, ptr %i.bs, align 4
  %.not8.i = icmp eq i32 %.val.i, 0
  br i1 %.not8.i, label %bb.m, label %clause_IsEmptyClause.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr i8, ptr %i.bp, i64 72
  %.val6.i = load i32, ptr %i.bt, align 8
  %.not9.i = icmp eq i32 %.val6.i, 0
  br i1 %.not9.i, label %clause_IsEmptyClause.exit, label %clause_IsEmptyClause.exit.thread

clause_IsEmptyClause.exit:                        ; preds = %bb.m
  %i.bu = getelementptr i8, ptr %i.bp, i64 64
  %.val7.i = load i32, ptr %i.bu, align 8
  %.not46 = icmp eq i32 %.val7.i, 0
  br i1 %.not46, label %bb.n, label %clause_IsEmptyClause.exit.thread

bb.n:                                             ; preds = %clause_IsEmptyClause.exit
  %i.bv = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bp, ptr %i.bw, align 8
  store ptr null, ptr %i.bv, align 8
  store ptr %i.bv, ptr %i.a, align 8
  br label %bb.o

clause_IsEmptyClause.exit.thread:                 ; preds = %bb.l, %bb.m, %clause_IsEmptyClause.exit
  %i.bx = call ptr @red_BackReduction(ptr noundef nonnull %0, ptr noundef nonnull %i.bp, i32 noundef 1) ; 2 uses
  %i.by = call i32 @list_Length(ptr noundef %i.bx) #14
  %i.bz = load i32, ptr %i.j, align 8
  %i.ca = add nsw i32 %i.bz, %i.by
  store i32 %i.ca, ptr %i.j, align 8
  %i.cb = call ptr @split_ExtractEmptyClauses(ptr noundef %i.bx, ptr noundef nonnull %i.a) #14
  call void @prfs_InsertUsableClause(ptr noundef nonnull %0, ptr noundef nonnull %i.bp) #14
  %i.cc = call ptr @clause_ListSortWeighed(ptr noundef %i.cb) #14
  %i.cd = call ptr @list_NNumberMerge(ptr noundef %i.r, ptr noundef %i.cc, ptr noundef nonnull @clause_Weight) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %clause_IsEmptyClause.exit.thread, %red_SpecialInputReductions.exit
  %.1 = phi ptr [ %i.r, %red_SpecialInputReductions.exit ], [ %i.cd, %clause_IsEmptyClause.exit.thread ], [ %i.r, %bb.n ] ; 3 uses
  %.not = icmp eq ptr %.1, null                   ; 2 uses
  %i.ce = load ptr, ptr %i.a, align 8
  %.not45 = icmp ne ptr %i.ce, null
  %or.cond.not = select i1 %.not, i1 true, i1 %.not45
  br i1 %or.cond.not, label %.critedge, label %bb.b, !llvm.loop !55

.critedge:                                        ; preds = %bb.o, %bb.a
  %.043.lcssa = phi ptr [ %i.f, %bb.a ], [ %.1, %bb.o ] ; 2 uses
  %.not.lcssa = phi i1 [ %.not48, %bb.a ], [ %.not, %bb.o ] ; 2 uses
  %.not4758 = icmp eq ptr %.043.lcssa, null
  br i1 %.not4758, label %._crit_edge, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %bb.c, %.critedge
  %.not.lcssa68 = phi i1 [ %.not.lcssa, %.critedge ], [ false, %bb.c ]
  %.043.lcssa66 = phi ptr [ %.043.lcssa, %.critedge ], [ %.04352, %bb.c ] ; 2 uses
  br label %.lr.ph60

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %.059 = phi ptr [ %.0.val34, %.lr.ph60 ], [ %.043.lcssa66, %.lr.ph60.preheader ] ; 2 uses
  %i.cf = getelementptr i8, ptr %.059, i64 8
  %.0.val = load ptr, ptr %i.cf, align 8
  call void @prfs_InsertUsableClause(ptr noundef %0, ptr noundef %.0.val) #14
  %.0.val34 = load ptr, ptr %.059, align 8        ; 2 uses
  %.not47 = icmp eq ptr %.0.val34, null
  br i1 %.not47, label %._crit_edge, label %.lr.ph60, !llvm.loop !56

._crit_edge:                                      ; preds = %.lr.ph60, %.critedge
  %.not.lcssa69 = phi i1 [ %.not.lcssa, %.critedge ], [ %.not.lcssa68, %.lr.ph60 ]
  %.043.lcssa67 = phi ptr [ null, %.critedge ], [ %.043.lcssa66, %.lr.ph60 ]
  br i1 %.not.lcssa69, label %list_Delete.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %._crit_edge, %.lr.ph.i35
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i35 ], [ %.043.lcssa67, %._crit_edge ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = sext i32 %i.ci to i64
  %i.ck = load i64, ptr @memory_FREEDBYTES, align 8
  %i.cl = add i64 %i.ck, %i.cj
  store i64 %i.cl, ptr @memory_FREEDBYTES, align 8
  %i.cm = load ptr, ptr %i.cg, align 8
  store ptr %i.cm, ptr %.07.i, align 8
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.cn, align 8
  %.not.i36 = icmp eq ptr %.0.val.i, null
  br i1 %.not.i36, label %list_Delete.exit, label %.lr.ph.i35, !llvm.loop !1

list_Delete.exit:                                 ; preds = %.lr.ph.i35, %._crit_edge
  %i.co = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %i.co
}

declare ptr @list_Copy(ptr noundef) local_unnamed_addr #1

declare float @clock_GetSeconds(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @red_SatInput(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 104
  %.val66 = load ptr, ptr %i.b, align 8           ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %.val75 = load ptr, ptr %i.c, align 8           ; 3 uses
  %i.d = tail call i32 @list_Length(ptr noundef %.val75) #14 ; 3 uses
  %i.e = icmp ne ptr %.val75, null
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond92 = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond92, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 28
  %i.h = getelementptr i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %list_Nconc.exit
  %.095 = phi i32 [ %i.d, %.lr.ph ], [ %.1, %list_Nconc.exit ] ; 3 uses
  %.05794 = phi ptr [ null, %.lr.ph ], [ %.158, %list_Nconc.exit ] ; 5 uses
  %.06193 = phi ptr [ %.val75, %.lr.ph ], [ %.061.val70, %list_Nconc.exit ] ; 2 uses
end_hunk_1
begin_hunk_2_@red_SatInput:bb.a
  %i.ae = load i64, ptr @memory_FREEDBYTES, align 8
  %i.af = add i64 %i.ae, %i.ad
  store i64 %i.af, ptr @memory_FREEDBYTES, align 8
  %i.ag = load ptr, ptr %i.aa, align 8
  store ptr %i.ag, ptr %.07.i, align 8
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.ah, align 8
  %.not.i76 = icmp eq ptr %.0.val.i, null
  br i1 %.not.i76, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !1

list_Delete.exit:                                 ; preds = %.lr.ph.i, %.critedge
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %.preheader, label %list_Delete.exit90

.preheader:                                       ; preds = %list_Delete.exit
  %.162100 = load ptr, ptr %i.c, align 8          ; 2 uses
  %i.ai = icmp ne ptr %.162100, null
  %i.aj = icmp sgt i32 %.0.lcssa, 0
  %or.cond5101 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond5101, label %.lr.ph105, label %.critedge7

.lr.ph105:                                        ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 28
  %i.al = getelementptr i8, ptr %0, i64 48
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph105, %list_Nconc.exit84
  %.162104 = phi ptr [ %.162100, %.lr.ph105 ], [ %.162, %list_Nconc.exit84 ] ; 2 uses
  %.2103 = phi i32 [ %.0.lcssa, %.lr.ph105 ], [ %.3, %list_Nconc.exit84 ] ; 3 uses
  %.259102 = phi ptr [ null, %.lr.ph105 ], [ %.360, %list_Nconc.exit84 ] ; 6 uses
  %i.am = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %.critedge9, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = sitofp i32 %i.am to float
  %i.ap = tail call float @clock_GetSeconds(i32 noundef 1) #14
  %i.aq = fcmp olt float %i.ap, %i.ao
  br i1 %i.aq, label %.critedge9, label %.critedge7

.critedge9:                                       ; preds = %bb.g, %bb.h
  %i.ar = getelementptr i8, ptr %.162104, i64 8
  %.162.val = load ptr, ptr %i.ar, align 8        ; 3 uses
  %i.as = getelementptr i8, ptr %.162.val, i64 48
  %.val71 = load i32, ptr %i.as, align 8
  %i.at = and i32 %.val71, 8
  %.not63 = icmp eq i32 %i.at, 0
  br i1 %.not63, label %list_Nconc.exit84, label %bb.i

bb.i:                                             ; preds = %.critedge9
  %i.au = getelementptr i8, ptr %.162.val, i64 76
  %.val73 = load i32, ptr %i.au, align 4
  %.not91 = icmp eq i32 %.val73, 16
  br i1 %.not91, label %bb.j, label %list_Nconc.exit84

bb.j:                                             ; preds = %bb.i
  %.val67 = load ptr, ptr %i.al, align 8
  %i.av = tail call ptr @inf_BoundedDepthUnitResolution(ptr noundef nonnull %.162.val, ptr noundef %.val67, i32 noundef 1, ptr noundef nonnull %.val, ptr noundef %.val66) #14 ; 5 uses
  %i.aw = tail call i32 @list_Length(ptr noundef %i.av) #14
  %i.ax = sub i32 %.2103, %i.aw                   ; 3 uses
  %.not.i77 = icmp eq ptr %i.av, null
  br i1 %.not.i77, label %list_Nconc.exit84, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not16.i78 = icmp eq ptr %.259102, null
  br i1 %.not16.i78, label %list_Nconc.exit84, label %.preheader.i79

.preheader.i79:                                   ; preds = %bb.k, %.preheader.i79
  %.012.i80 = phi ptr [ %.012.val15.i81, %.preheader.i79 ], [ %i.av, %bb.k ] ; 2 uses
  %.012.val15.i81 = load ptr, ptr %.012.i80, align 8 ; 2 uses
  %.not17.i82 = icmp eq ptr %.012.val15.i81, null
  br i1 %.not17.i82, label %bb.l, label %.preheader.i79, !llvm.loop !2

bb.l:                                             ; preds = %.preheader.i79
  store ptr %.259102, ptr %.012.i80, align 8
  br label %list_Nconc.exit84

list_Nconc.exit84:                                ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %.critedge9
  %.360 = phi ptr [ %.259102, %.critedge9 ], [ %.259102, %bb.i ], [ %i.av, %bb.l ], [ %.259102, %bb.j ], [ %i.av, %bb.k ] ; 2 uses
  %.3 = phi i32 [ %.2103, %.critedge9 ], [ %.2103, %bb.i ], [ %i.ax, %bb.l ], [ %i.ax, %bb.j ], [ %i.ax, %bb.k ] ; 2 uses
  %.162 = load ptr, ptr %.162104, align 8         ; 2 uses
  %i.ay = icmp ne ptr %.162, null
  %i.az = icmp sgt i32 %.3, 0
  %or.cond5 = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond5, label %bb.g, label %.critedge7, !llvm.loop !58

.critedge7:                                       ; preds = %bb.h, %list_Nconc.exit84, %.preheader
  %.259.lcssa = phi ptr [ null, %.preheader ], [ %.360, %list_Nconc.exit84 ], [ %.259102, %bb.h ] ; 4 uses
  %i.ba = tail call i32 @list_Length(ptr noundef %.259.lcssa) #14
  %i.bb = load i32, ptr %i.w, align 8
  %i.bc = add nsw i32 %i.bb, %i.ba
  store i32 %i.bc, ptr %i.w, align 8
  %i.bd = tail call ptr @red_ReduceInput(ptr noundef %0, ptr noundef %.259.lcssa) ; 2 uses
  %.not6.i85 = icmp eq ptr %.259.lcssa, null
  br i1 %.not6.i85, label %list_Delete.exit90, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %.critedge7, %.lr.ph.i86
  %.07.i87 = phi ptr [ %.0.val.i88, %.lr.ph.i86 ], [ %.259.lcssa, %.critedge7 ] ; 3 uses
  %.0.val.i88 = load ptr, ptr %.07.i87, align 8   ; 2 uses
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = sext i32 %i.bg to i64
  %i.bi = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bj = add i64 %i.bi, %i.bh
  store i64 %i.bj, ptr @memory_FREEDBYTES, align 8
  %i.bk = load ptr, ptr %i.be, align 8
  store ptr %i.bk, ptr %.07.i87, align 8
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i87, ptr %i.bl, align 8
  %.not.i89 = icmp eq ptr %.0.val.i88, null
  br i1 %.not.i89, label %list_Delete.exit90, label %.lr.ph.i86, !llvm.loop !1

list_Delete.exit90:                               ; preds = %.lr.ph.i86, %.critedge7, %list_Delete.exit
  %.056 = phi ptr [ %i.z, %list_Delete.exit ], [ %i.bd, %.critedge7 ], [ %i.bd, %.lr.ph.i86 ]
  ret ptr %.056
}

; Function Attrs: nounwind uwtable
define dso_local void @red_CheckSplitSubsumptionCondition(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 104
  %.val28 = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 120
  %.02341 = load ptr, ptr %i.c, align 8           ; 2 uses
  %.not42 = icmp eq ptr %.02341, null
  br i1 %.not42, label %._crit_edge, label %.lr.ph44

.lr.ph44:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = getelementptr i8, ptr %0, i64 48
  %i.f = getelementptr i8, ptr %0, i64 64
  br label %bb.b

.loopexit:                                        ; preds = %bb.f, %bb.b
  %.023 = load ptr, ptr %.02343, align 8          ; 2 uses
  %.not = icmp eq ptr %.023, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !59

bb.b:                                             ; preds = %.lr.ph44, %.loopexit
  %.02343 = phi ptr [ %.02341, %.lr.ph44 ], [ %.023, %.loopexit ] ; 3 uses
  %i.g = getelementptr i8, ptr %.02343, i64 8
  %.023.val31 = load ptr, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %.023.val31, i64 16
  %.038 = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not3739 = icmp eq ptr %.038, null
  br i1 %.not3739, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %.040 = phi ptr [ %.0, %bb.f ], [ %.038, %bb.b ] ; 2 uses
  %i.i = getelementptr i8, ptr %.040, i64 8
  %.0.val = load ptr, ptr %i.i, align 8           ; 4 uses
  %.val29 = load ptr, ptr %i.d, align 8
  %i.j = tail call fastcc ptr @red_ForwardSubsumer(ptr noundef %.0.val, ptr noundef %.val29)
  %.not25 = icmp eq ptr %i.j, null
  br i1 %.not25, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %.val30 = load ptr, ptr %i.e, align 8
  %i.k = tail call fastcc ptr @red_ForwardSubsumer(ptr noundef %.0.val, ptr noundef %.val30)
  %.not26 = icmp eq ptr %i.k, null
  br i1 %.not26, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.val34 = load ptr, ptr %i.f, align 8
  %i.l = tail call i32 @red_ClauseDeletion(ptr noundef %.val34, ptr noundef %.0.val, ptr noundef %.val, ptr noundef %.val28)
  %.not27 = icmp eq i32 %i.l, 0
  br i1 %.not27, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.02343, i64 8
  %i.n = load ptr, ptr @stdout, align 8
  %i.o = tail call i32 @fflush(ptr noundef %i.n)  ; 0 uses
  %i.p = load ptr, ptr @stderr, align 8
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 4500) #16 ; 0 uses
  tail call void (ptr, ...) @misc_ErrorReport(ptr noundef nonnull @.str.17) #14
  tail call void @clause_Print(ptr noundef %.0.val) #14
  tail call void (ptr, ...) @misc_ErrorReport(ptr noundef nonnull @.str.18) #14
  %.023.val = load ptr, ptr %i.m, align 8
  tail call void @prfs_PrintSplit(ptr noundef %.023.val) #14
  %i.r = load ptr, ptr @stderr, align 8
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.19, i64 132, i64 1, ptr %i.r) #17 ; 0 uses
  tail call fastcc void @misc_DumpCore()
  unreachable

bb.f:                                             ; preds = %.lr.ph, %bb.c, %bb.d
  %.0 = load ptr, ptr %.040, align 8              ; 2 uses
  %.not37 = icmp eq ptr %.0, null
  br i1 %.not37, label %.loopexit, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @red_ForwardSubsumer(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val122 = load i32, ptr %i.a, align 8          ; 3 uses
  %i.b = add i32 %.val122, -1                     ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 68
  %.val113 = load i32, ptr %i.c, align 4          ; 2 uses
  %i.d = add i32 %i.b, %.val113                   ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 72
  %.val4.i.i = load i32, ptr %i.e, align 8        ; 2 uses
  %i.f = add i32 %i.d, %.val4.i.i
  %.not35 = icmp slt i32 %i.f, 0
  br i1 %.not35, label %.loopexit14, label %.lr.ph39

.lr.ph39:                                         ; preds = %bb.a
  %i.g = add i32 %.val113, %.val122               ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.i = sext i32 %i.d to i64                     ; 2 uses
  %i.j = sext i32 %i.b to i64                     ; 2 uses
  %i.k = sext i32 %.val122 to i64                 ; 2 uses
  %i.l = sext i32 %i.g to i64                     ; 2 uses
  %i.m = add i32 %i.g, %.val4.i.i
  %wide.trip.count = zext i32 %i.m to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph39, %bb.ag
  %indvars.iv = phi i64 [ 0, %.lr.ph39 ], [ %indvars.iv.next, %bb.ag ] ; 15 uses
  %.val121 = load ptr, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val121, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %.val1.i = load ptr, ptr %i.p, align 8          ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val1.i, align 8
  %i.q = load i32, ptr @fol_NOT, align 4
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.q
  br i1 %.not.i.i, label %bb.c, label %clause_GetLiteralAtom.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %.val1.i, i64 16
  %.val6.i.i = load ptr, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.s, align 8
  br label %clause_GetLiteralAtom.exit

clause_GetLiteralAtom.exit:                       ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %.val6.val.i.i, %bb.c ], [ %.val1.i, %bb.b ] ; 3 uses
  %i.t = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val124 = load ptr, ptr %1, align 8
  %i.u = tail call ptr @st_ExistGen(ptr noundef %i.t, ptr noundef %.val124, ptr noundef %.0.i.i) #14 ; 3 uses
  %.not8417 = icmp eq ptr %i.u, null
  br i1 %.not8417, label %._crit_edge, label %.lr.ph19

.lr.ph19:                                         ; preds = %clause_GetLiteralAtom.exit
  %.not102 = icmp sgt i64 %indvars.iv, %i.j
  %.not102.fr = freeze i1 %.not102                ; 3 uses
  %.not104 = icmp slt i64 %indvars.iv, %i.k
  %.not105 = icmp sgt i64 %indvars.iv, %i.i
  %or.cond = or i1 %.not104, %.not105
  %or.cond.fr = freeze i1 %or.cond                ; 2 uses
  %.not107 = icmp slt i64 %indvars.iv, %i.l
  %.not107.fr = freeze i1 %.not107
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  br i1 %.not107.fr, label %.lr.ph19.split.us, label %.lr.ph19.split

.lr.ph19.split.us:                                ; preds = %.lr.ph19
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.d

bb.d:                                             ; preds = %.loopexit13.us, %.lr.ph19.split.us
  %.07518.us = phi ptr [ %i.u, %.lr.ph19.split.us ], [ %i.bb, %.loopexit13.us ] ; 2 uses
  %.075.val.us = load i32, ptr %.07518.us, align 8
  %i.x = icmp slt i32 %.075.val.us, 1
  br i1 %i.x, label %bb.e, label %.loopexit13.us

bb.e:                                             ; preds = %bb.d
  %i.y = tail call ptr @sharing_NAtomDataList(ptr noundef nonnull %.07518.us) #14 ; 3 uses
  %.not115.us = icmp eq ptr %i.y, null
  br i1 %.not115.us, label %.loopexit13.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.e
  br i1 %or.cond.fr, label %.lr.ph.split.us.us.split.us, label %.lr.ph.split.us.us.split

.lr.ph.split.us.us.split.us:                      ; preds = %.lr.ph.us
  br i1 %.not102.fr, label %.loopexit13.us, label %.lr.ph.split.us.us.split.us.split

.lr.ph.split.us.us.split.us.split:                ; preds = %.lr.ph.split.us.us.split.us, %bb.h
  %.07416.us.us.us = phi ptr [ %.074.val119.us.us.us, %bb.h ], [ %i.y, %.lr.ph.split.us.us.split.us ] ; 2 uses
  %i.z = getelementptr i8, ptr %.07416.us.us.us, i64 8
  %.074.val.us.us.us = load ptr, ptr %i.z, align 8 ; 3 uses
  %i.aa = getelementptr i8, ptr %.074.val.us.us.us, i64 16
  %.val126.us.us.us = load ptr, ptr %i.aa, align 8 ; 5 uses
  %.not101.us.us.us = icmp eq ptr %.val126.us.us.us, %0
  br i1 %.not101.us.us.us, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.us.split.us.split
  %i.ab = getelementptr i8, ptr %.val126.us.us.us, i64 56
  %.val116.us.us.us = load ptr, ptr %i.ab, align 8 ; 2 uses
  %i.ac = load ptr, ptr %.val116.us.us.us, align 8
  %i.ad = icmp eq ptr %i.ac, %.074.val.us.us.us
  br i1 %i.ad, label %.preheader12.us.us.us, label %bb.h

.preheader12.us.us.us:                            ; preds = %bb.f, %.preheader12.us.us.us
  %indvars.iv.i.i.us.us.us = phi i64 [ %indvars.iv.next.i.i.us.us.us, %.preheader12.us.us.us ], [ 0, %bb.f ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.val116.us.us.us, i64 %indvars.iv.i.i.us.us.us
  %i.af = load ptr, ptr %i.ae, align 8
  %.not.i.i133.us.us.us = icmp eq ptr %i.af, %.074.val.us.us.us
  %indvars.iv.next.i.i.us.us.us = add nuw nsw i64 %indvars.iv.i.i.us.us.us, 1
  br i1 %.not.i.i133.us.us.us, label %clause_LiteralIsFromConstraint.exit.us.us.us, label %.preheader12.us.us.us, !llvm.loop !3

clause_LiteralIsFromConstraint.exit.us.us.us:     ; preds = %.preheader12.us.us.us
  %i.ag = trunc nuw nsw i64 %indvars.iv.i.i.us.us.us to i32
  %i.ah = getelementptr i8, ptr %.val126.us.us.us, i64 64
  %.val.i.us.us.us = load i32, ptr %i.ah, align 8
  %.not.not.i.not.us.us.us = icmp sgt i32 %.val.i.us.us.us, %i.ag
  br i1 %.not.not.i.not.us.us.us, label %bb.g, label %bb.h

bb.g:                                             ; preds = %clause_LiteralIsFromConstraint.exit.us.us.us
  %i.ai = tail call i32 @subs_SubsumesBasic(ptr noundef nonnull %.val126.us.us.us, ptr noundef %0, i32 noundef 0, i32 noundef %i.w) #14
  %.not109.us.us.us = icmp eq i32 %i.ai, 0
  br i1 %.not109.us.us.us, label %bb.h, label %.split.us

bb.h:                                             ; preds = %clause_LiteralIsFromConstraint.exit.us.us.us, %bb.g, %bb.f, %.lr.ph.split.us.us.split.us.split
  %.074.val119.us.us.us = load ptr, ptr %.07416.us.us.us, align 8 ; 2 uses
  %.not1.us.us.us = icmp eq ptr %.074.val119.us.us.us, null
  br i1 %.not1.us.us.us, label %.loopexit13.us, label %.lr.ph.split.us.us.split.us.split, !llvm.loop !61

.lr.ph.split.us.us.split:                         ; preds = %.lr.ph.us, %bb.l
  %.07416.us.us = phi ptr [ %.074.val119.us.us, %bb.l ], [ %i.y, %.lr.ph.us ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.07416.us.us, i64 8
  %.074.val.us.us = load ptr, ptr %i.aj, align 8  ; 4 uses
  %i.ak = getelementptr i8, ptr %.074.val.us.us, i64 16
  %.val126.us.us = load ptr, ptr %i.ak, align 8   ; 7 uses
  %.not101.us.us = icmp eq ptr %.val126.us.us, %0
  br i1 %.not101.us.us, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us.us.split
  %i.al = getelementptr i8, ptr %.val126.us.us, i64 56
  %.val116.us.us = load ptr, ptr %i.al, align 8   ; 3 uses
  %i.am = load ptr, ptr %.val116.us.us, align 8
  %i.an = icmp eq ptr %i.am, %.074.val.us.us
  br i1 %i.an, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  br i1 %.not102.fr, label %.preheader11.us.us.preheader, label %.preheader12.us.us

.preheader12.us.us:                               ; preds = %bb.j, %.preheader12.us.us
  %indvars.iv.i.i.us.us = phi i64 [ %indvars.iv.next.i.i.us.us, %.preheader12.us.us ], [ 0, %bb.j ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val116.us.us, i64 %indvars.iv.i.i.us.us
  %i.ap = load ptr, ptr %i.ao, align 8
  %.not.i.i133.us.us = icmp eq ptr %i.ap, %.074.val.us.us
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.i.i.us.us, 1
  br i1 %.not.i.i133.us.us, label %clause_LiteralIsFromConstraint.exit.us.us, label %.preheader12.us.us, !llvm.loop !3

clause_LiteralIsFromConstraint.exit.us.us:        ; preds = %.preheader12.us.us
  %i.aq = trunc nuw nsw i64 %indvars.iv.i.i.us.us to i32
  %i.ar = getelementptr i8, ptr %.val126.us.us, i64 64
  %.val.i.us.us = load i32, ptr %i.ar, align 8
  %.not.not.i.not.us.us = icmp sgt i32 %.val.i.us.us, %i.aq
  br i1 %.not.not.i.not.us.us, label %bb.k, label %.preheader11.us.us.preheader

.preheader11.us.us.preheader:                     ; preds = %clause_LiteralIsFromConstraint.exit.us.us, %bb.j
  br label %.preheader11.us.us

.preheader11.us.us:                               ; preds = %.preheader11.us.us.preheader, %.preheader11.us.us
  %indvars.iv.i.i136.us.us = phi i64 [ %indvars.iv.next.i.i138.us.us, %.preheader11.us.us ], [ 0, %.preheader11.us.us.preheader ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val116.us.us, i64 %indvars.iv.i.i136.us.us
  %i.at = load ptr, ptr %i.as, align 8
  %.not.i.i137.us.us = icmp eq ptr %i.at, %.074.val.us.us
  %indvars.iv.next.i.i138.us.us = add nuw nsw i64 %indvars.iv.i.i136.us.us, 1
  br i1 %.not.i.i137.us.us, label %clause_LiteralIsFromAntecedent.exit.us.us, label %.preheader11.us.us, !llvm.loop !3

clause_LiteralIsFromAntecedent.exit.us.us:        ; preds = %.preheader11.us.us
  %i.au = trunc nuw nsw i64 %indvars.iv.i.i136.us.us to i32 ; 2 uses
  %i.av = getelementptr i8, ptr %.val126.us.us, i64 64
  %.val.i139.us.us = load i32, ptr %i.av, align 8 ; 2 uses
  %i.aw = getelementptr i8, ptr %.val126.us.us, i64 68
  %.val5.i.us.us = load i32, ptr %i.aw, align 4
  %i.ax = add i32 %.val.i139.us.us, -1
  %i.ay = add i32 %i.ax, %.val5.i.us.us
  %.not.i.us.us = icmp slt i32 %i.ay, %i.au
  %i.az = icmp sgt i32 %.val.i139.us.us, %i.au
  %narrow.i.not.us.us = or i1 %i.az, %.not.i.us.us
  br i1 %narrow.i.not.us.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %clause_LiteralIsFromAntecedent.exit.us.us, %clause_LiteralIsFromConstraint.exit.us.us
  %i.ba = tail call i32 @subs_SubsumesBasic(ptr noundef nonnull %.val126.us.us, ptr noundef %0, i32 noundef 0, i32 noundef %i.v) #14
  %.not109.us.us = icmp eq i32 %i.ba, 0
  br i1 %.not109.us.us, label %bb.l, label %.split.us

bb.l:                                             ; preds = %clause_LiteralIsFromAntecedent.exit.us.us, %bb.k, %bb.i, %.lr.ph.split.us.us.split
  %.074.val119.us.us = load ptr, ptr %.07416.us.us, align 8 ; 2 uses
  %.not1.us.us = icmp eq ptr %.074.val119.us.us, null
  br i1 %.not1.us.us, label %.loopexit13.us, label %.lr.ph.split.us.us.split, !llvm.loop !61

.loopexit13.us:                                   ; preds = %bb.l, %bb.h, %.lr.ph.split.us.us.split.us, %bb.e, %bb.d
  %i.bb = tail call ptr @st_NextCandidate() #14   ; 2 uses
  %.not84.us = icmp eq ptr %i.bb, null
  br i1 %.not84.us, label %._crit_edge, label %bb.d, !llvm.loop !62

.lr.ph19.split:                                   ; preds = %.lr.ph19, %.loopexit13
  %.07518 = phi ptr [ %i.cg, %.loopexit13 ], [ %i.u, %.lr.ph19 ] ; 2 uses
  %.075.val = load i32, ptr %.07518, align 8
  %i.bc = icmp slt i32 %.075.val, 1
  br i1 %i.bc, label %bb.m, label %.loopexit13

bb.m:                                             ; preds = %.lr.ph19.split
  %i.bd = tail call ptr @sharing_NAtomDataList(ptr noundef nonnull %.07518) #14 ; 2 uses
  %.not115 = icmp eq ptr %i.bd, null
  br i1 %.not115, label %.loopexit13, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.r
  %.07416 = phi ptr [ %.074.val119, %bb.r ], [ %i.bd, %bb.m ] ; 2 uses
  %i.be = getelementptr i8, ptr %.07416, i64 8
  %.074.val = load ptr, ptr %i.be, align 8        ; 5 uses
  %i.bf = getelementptr i8, ptr %.074.val, i64 16
  %.val126 = load ptr, ptr %i.bf, align 8         ; 10 uses
  %.not101 = icmp eq ptr %.val126, %0
  br i1 %.not101, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.bg = getelementptr i8, ptr %.val126, i64 56
  %.val116 = load ptr, ptr %i.bg, align 8         ; 4 uses
end_hunk_2
begin_hunk_3_@red_AssignmentEquationDeletion:bb.a
  br i1 %i.aw, label %bb.n, label %bb.m

bb.m:                                             ; preds = %clause_GetLiteralAtom.exit137
  %i.ax = tail call i32 @clause_NumberOfSymbolOccurrences(ptr noundef nonnull %0, i32 noundef %.val102) #14
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m, %clause_GetLiteralAtom.exit137
  %.val101 = load i32, ptr %.val92.val.val, align 8 ; 2 uses
  %i.az = icmp slt i32 %.val101, 1
  br i1 %i.az, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = tail call i32 @clause_NumberOfSymbolOccurrences(ptr noundef nonnull %0, i32 noundef %.val101) #14
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.bc = zext i32 %.1172 to i64
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bd, ptr %i.bf, align 8
  store ptr %.2171, ptr %i.be, align 8
  br label %bb.q

bb.q:                                             ; preds = %clause_LiteralIsEquality.exit123.thread, %clause_LiteralIsEquality.exit123, %bb.p, %bb.o, %bb.n
  %.3 = phi ptr [ %i.be, %bb.p ], [ %.2171, %bb.o ], [ %.2171, %bb.n ], [ %.2171, %clause_LiteralIsEquality.exit123 ], [ %.2171, %clause_LiteralIsEquality.exit123.thread ] ; 2 uses
  %i.bg = add i32 %.1172, 1                       ; 2 uses
  %.val3.i.i = load i32, ptr %i.ae, align 8
  %.val.i.i = load i32, ptr %i.af, align 4
  %.val4.i.i = load i32, ptr %i.ah, align 8
  %i.bh = add i32 %.val3.i.i, -1
  %i.bi = add i32 %i.bh, %.val.i.i
  %i.bj = add i32 %i.bi, %.val4.i.i
  %.not67 = icmp ugt i32 %i.bg, %i.bj
  br i1 %.not67, label %.loopexit, label %bb.l, !llvm.loop !69

.loopexit:                                        ; preds = %bb.h, %bb.q
  %.4 = phi ptr [ %.3, %bb.q ], [ %.163, %bb.h ]  ; 5 uses
  %.not160 = icmp eq ptr %.4, null
  br i1 %.not160, label %.thread153, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %.not73 = icmp eq i32 %i.bl, 0
  br i1 %.not73, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr @stdout, align 8
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.24, i64 6, i64 1, ptr %i.bm) ; 0 uses
  tail call void @clause_Print(ptr noundef nonnull %0) #14
  %i.bn = load ptr, ptr @stdout, align 8
  %fwrite74 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 5, i64 1, ptr %i.bn) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bp = load i32, ptr %i.bo, align 4
  %.not75 = icmp eq i32 %i.bp, 0
  br i1 %.not75, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = tail call ptr @clause_Copy(ptr noundef nonnull %0) #14 ; 8 uses
  tail call void @clause_DeleteLiterals(ptr noundef %i.bq, ptr noundef nonnull %.4, ptr noundef nonnull %1, ptr noundef %2) #14
  %i.br = getelementptr i8, ptr %i.bq, i64 32     ; 5 uses
  %.val.i = load ptr, ptr %i.br, align 8          ; 2 uses
  %.not6.i.i = icmp eq ptr %.val.i, null
  br i1 %.not6.i.i, label %list_Delete.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %.0.val.i.i, %.lr.ph.i.i ], [ %.val.i, %bb.u ] ; 3 uses
  %.0.val.i.i = load ptr, ptr %.07.i.i, align 8   ; 2 uses
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = sext i32 %i.bu to i64
  %i.bw = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bx = add i64 %i.bw, %i.bv
  store i64 %i.bx, ptr @memory_FREEDBYTES, align 8
  %i.by = load ptr, ptr %i.bs, align 8
  store ptr %i.by, ptr %.07.i.i, align 8
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i.i, ptr %i.bz, align 8
  %.not.i.i138 = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i.i138, label %list_Delete.exit.i, label %.lr.ph.i.i, !llvm.loop !1

list_Delete.exit.i:                               ; preds = %.lr.ph.i.i, %bb.u
  %i.ca = getelementptr i8, ptr %i.bq, i64 40     ; 4 uses
  %.val12.i = load ptr, ptr %i.ca, align 8        ; 2 uses
  %.not6.i14.i = icmp eq ptr %.val12.i, null
  br i1 %.not6.i14.i, label %list_Delete.exit19.i, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %list_Delete.exit.i, %.lr.ph.i15.i
  %.07.i16.i = phi ptr [ %.0.val.i17.i, %.lr.ph.i15.i ], [ %.val12.i, %list_Delete.exit.i ] ; 3 uses
  %.0.val.i17.i = load ptr, ptr %.07.i16.i, align 8 ; 2 uses
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = sext i32 %i.cd to i64
  %i.cf = load i64, ptr @memory_FREEDBYTES, align 8
  %i.cg = add i64 %i.cf, %i.ce
  store i64 %i.cg, ptr @memory_FREEDBYTES, align 8
  %i.ch = load ptr, ptr %i.cb, align 8
  store ptr %i.ch, ptr %.07.i16.i, align 8
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i16.i, ptr %i.ci, align 8
  %.not.i18.i = icmp eq ptr %.0.val.i17.i, null
  br i1 %.not.i18.i, label %list_Delete.exit19.i, label %.lr.ph.i15.i, !llvm.loop !1

list_Delete.exit19.i:                             ; preds = %.lr.ph.i15.i, %list_Delete.exit.i
  store ptr null, ptr %i.br, align 8
  store ptr %.4, ptr %i.ca, align 8
  %.val13.i = load i32, ptr %i.bq, align 8
  %i.cj = sext i32 %.val13.i to i64
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.ck, ptr %i.cm, align 8
  store ptr null, ptr %i.cl, align 8
  store ptr %i.cl, ptr %i.br, align 8
  %i.cn = load i32, ptr @clause_CLAUSECOUNTER, align 4 ; 2 uses
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr @clause_CLAUSECOUNTER, align 4
  store i32 %i.cn, ptr %i.bq, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bq, i64 76
  store i32 18, ptr %i.cp, align 4
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %red_DocumentAssignmentEquationDeletion.exit, label %bb.v

bb.v:                                             ; preds = %list_Delete.exit19.i
  %i.cq = sext i32 %4 to i64
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = load ptr, ptr %i.br, align 8
  %i.ct = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cr, ptr %i.cu, align 8
  store ptr %i.cs, ptr %i.ct, align 8
  store ptr %i.ct, ptr %i.br, align 8
  %i.cv = load ptr, ptr %i.ca, align 8
  %i.cw = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr null, ptr %i.cx, align 8
  store ptr %i.cv, ptr %i.cw, align 8
  store ptr %i.cw, ptr %i.ca, align 8
  br label %red_DocumentAssignmentEquationDeletion.exit

red_DocumentAssignmentEquationDeletion.exit:      ; preds = %list_Delete.exit19.i, %bb.v
  %i.cy = load i32, ptr %i.bk, align 4
  %.not77 = icmp eq i32 %i.cy, 0
  br i1 %.not77, label %bb.x, label %bb.w

bb.w:                                             ; preds = %red_DocumentAssignmentEquationDeletion.exit
  tail call void @clause_Print(ptr noundef nonnull %i.bq) #14
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %red_DocumentAssignmentEquationDeletion.exit
  store ptr %i.bq, ptr %3, align 8
  br label %.thread153

bb.y:                                             ; preds = %bb.t
  tail call void @clause_DeleteLiterals(ptr noundef nonnull %0, ptr noundef nonnull %.4, ptr noundef nonnull %1, ptr noundef %2) #14
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y, %.lr.ph.i
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %.4, %bb.y ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = sext i32 %i.db to i64
  %i.dd = load i64, ptr @memory_FREEDBYTES, align 8
  %i.de = add i64 %i.dd, %i.dc
  store i64 %i.de, ptr @memory_FREEDBYTES, align 8
  %i.df = load ptr, ptr %i.cz, align 8
  store ptr %i.df, ptr %.07.i, align 8
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.dg, align 8
  %.not.i139 = icmp eq ptr %.0.val.i, null
  br i1 %.not.i139, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !1

list_Delete.exit:                                 ; preds = %.lr.ph.i
  %i.dh = load i32, ptr %i.bk, align 4
  %.not76 = icmp eq i32 %i.dh, 0
  br i1 %.not76, label %.thread153, label %bb.z

bb.z:                                             ; preds = %list_Delete.exit
  tail call void @clause_Print(ptr noundef nonnull %0) #14
  br label %.thread153

.thread153:                                       ; preds = %bb.b, %bb.k, %bb.i, %bb.j, %.loopexit, %bb.x, %bb.z, %list_Delete.exit
  %.064 = phi i32 [ 1, %bb.x ], [ 1, %list_Delete.exit ], [ 1, %bb.z ], [ 0, %.loopexit ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.b ]
  ret i32 %.064
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @red_RewriteRedClause(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val3.i = load i32, ptr %i.a, align 8          ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 68
  %.val.i = load i32, ptr %i.b, align 4           ; 2 uses
  %i.c = add nsw i32 %.val.i, %.val3.i
  %i.d = getelementptr i8, ptr %0, i64 72
  %.val4.i = load i32, ptr %i.d, align 8          ; 2 uses
  %i.e = add nsw i32 %i.c, %.val4.i               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp eq i32 %i.e, 1
  br i1 %i.h, label %bb.b, label %.preheader252

.preheader252:                                    ; preds = %bb.a
  %i.i = icmp slt i32 %.val3.i, %i.e
  br i1 %i.i, label %.lr.ph300, label %red_RewriteRedUnitClause.exit

.lr.ph300:                                        ; preds = %.preheader252
  %.not151 = icmp eq i32 %i.g, 0                  ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.l = load i32, ptr @memory_ALIGN, align 4     ; 2 uses
  %i.m = sext i32 %.val3.i to i64
  %6 = add i32 %.val.i, %.val4.i
  %7 = add i32 %6, %.val3.i
  br label %bb.az

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %.val183.i = load ptr, ptr %i.n, align 8
  %i.o = load ptr, ptr %.val183.i, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %.val1.i.i = load ptr, ptr %i.p, align 8        ; 3 uses
  %.val5.val.i.i.i = load i32, ptr %.val1.i.i, align 8
  %i.q = load i32, ptr @fol_NOT, align 4
  %.not.i.i.i = icmp eq i32 %.val5.val.i.i.i, %i.q
  br i1 %.not.i.i.i, label %bb.c, label %clause_GetLiteralAtom.exit.i

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %.val1.i.i, i64 16
  %.val6.i.i.i = load ptr, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %.val6.i.i.i, i64 8
  %.val6.val.i.i.i = load ptr, ptr %i.s, align 8
  br label %clause_GetLiteralAtom.exit.i

clause_GetLiteralAtom.exit.i:                     ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %.val6.val.i.i.i, %bb.c ], [ %.val1.i.i, %bb.b ] ; 3 uses
  %i.t = icmp sgt i32 %.val3.i, 0
  br i1 %i.t, label %red_RewriteRedUnitClause.exit, label %bb.d

bb.d:                                             ; preds = %clause_GetLiteralAtom.exit.i
  %i.u = getelementptr i8, ptr %.0.i.i.i, i64 16
  %.val188.i = load ptr, ptr %i.u, align 8
  %.not.i = icmp eq ptr %.val188.i, null
  br i1 %.not.i, label %red_RewriteRedUnitClause.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr @red_STAMPID, align 4
  %i.w = tail call i32 @term_StampOverflow(i32 noundef %i.v) #14
  %.not141.i = icmp eq i32 %i.w, 0
  br i1 %.not141.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i178 = load ptr, ptr %i.n, align 8
  %i.x = load ptr, ptr %.val.i178, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %.val172.i = load ptr, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.val172.i, i64 24
  store i32 0, ptr %i.z, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = load i32, ptr @term_STAMP, align 4
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr @term_STAMP, align 4
  %.not160.i = icmp eq i32 %i.g, 0                ; 3 uses
  %i.ac = getelementptr i8, ptr %0, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 3 uses
  %i.ae = load i32, ptr @memory_ALIGN, align 4    ; 2 uses
  %.pre.i = load i32, ptr @stack_POINTER, align 4 ; 5 uses
  %i.af = getelementptr i8, ptr %.0.i.i.i, i64 16
  %.0130.val.i445 = load ptr, ptr %i.af, align 8
  tail call void @sharing_PushListOnStackNoStamps(ptr noundef %.0130.val.i445) #14
  %i.ag = load i32, ptr @stack_POINTER, align 4   ; 2 uses
  %.not227272.i446 = icmp eq i32 %i.ag, %.pre.i
  br i1 %.not227272.i446, label %.loopexit.thread.i, label %.lr.ph278.i.outer

.loopexit.i:                                      ; preds = %.loopexit405
  %i.ah = getelementptr i8, ptr %.2132.lcssa385.i, i64 16
  %.0130.val.i = load ptr, ptr %i.ah, align 8
  tail call void @sharing_PushListOnStackNoStamps(ptr noundef %.0130.val.i) #14
  %i.ai = load i32, ptr @stack_POINTER, align 4   ; 2 uses
  %.not227272.i = icmp eq i32 %i.ai, %.pre.i
  br i1 %.not227272.i, label %.loopexit.thread.i, label %.lr.ph278.i.outer.backedge

.lr.ph278.i.outer:                                ; preds = %bb.g, %.lr.ph278.i.outer.backedge
  %.ph = phi i32 [ %.ph.be, %.lr.ph278.i.outer.backedge ], [ %i.ag, %bb.g ]
  %.1277.i.ph = phi ptr [ %.2.lcssa389.i, %.lr.ph278.i.outer.backedge ], [ %0, %bb.g ] ; 6 uses
  %.1108276.i.ph = phi i32 [ %.2109.lcssa388.i, %.lr.ph278.i.outer.backedge ], [ 0, %bb.g ]
  %.1117275.i.ph = phi i32 [ %.2118.lcssa387.i, %.lr.ph278.i.outer.backedge ], [ 0, %bb.g ] ; 4 uses
  %i.aj = phi i1 [ %.not227.i, %.lr.ph278.i.outer.backedge ], [ true, %bb.g ]
  %.1131273.i.ph = phi ptr [ %.2132.lcssa385.i, %.lr.ph278.i.outer.backedge ], [ %.0.i.i.i, %bb.g ] ; 5 uses
  br label %.lr.ph278.i

.lr.ph278.i:                                      ; preds = %.lr.ph278.i.outer, %.thread343
  %i.ak = phi i32 [ %i.hz, %.thread343 ], [ %.ph, %.lr.ph278.i.outer ]
  %.1108276.i = phi i32 [ %.2109.lcssa.i214, %.thread343 ], [ %.1108276.i.ph, %.lr.ph278.i.outer ] ; 3 uses
  %.1124274.i = phi i1 [ true, %.thread343 ], [ %i.aj, %.lr.ph278.i.outer ] ; 2 uses
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr @stack_POINTER, align 4
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.ap = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val186.i = load ptr, ptr %1, align 8
  %i.aq = tail call ptr @st_ExistGen(ptr noundef %i.ap, ptr noundef %.val186.i, ptr noundef %i.ao) #14 ; 2 uses
  %.not148257.i = icmp ne ptr %i.aq, null
  %or.cond259.i = and i1 %.not148257.i, %.1124274.i
  br i1 %or.cond259.i, label %.lr.ph265.i, label %.critedge.i

.lr.ph265.i:                                      ; preds = %.lr.ph278.i, %.critedge2.thread.i
  %.0105263.i = phi ptr [ %i.hv, %.critedge2.thread.i ], [ %i.aq, %.lr.ph278.i ] ; 4 uses
  %.2109262.i = phi i32 [ %.3110.lcssa353.i, %.critedge2.thread.i ], [ %.1108276.i, %.lr.ph278.i ] ; 2 uses
  %i.ar = getelementptr i8, ptr %.0105263.i, i64 8
  %.0104244.i = load ptr, ptr %i.ar, align 8      ; 2 uses
  %.not288.i = icmp eq ptr %.0104244.i, null
  br i1 %.not288.i, label %.critedge2.thread.i, label %.lr.ph250.i

.lr.ph250.i:                                      ; preds = %.lr.ph265.i, %.critedge4.i
  %.0104249.i = phi ptr [ %.0104.i, %.critedge4.i ], [ %.0104244.i, %.lr.ph265.i ] ; 2 uses
  %.3110247.i = phi i32 [ %.7114.i, %.critedge4.i ], [ %.2109262.i, %.lr.ph265.i ] ; 3 uses
  %i.as = getelementptr i8, ptr %.0104249.i, i64 8
  %.0104.val.i = load ptr, ptr %i.as, align 8     ; 3 uses
  %.val176.i = load i32, ptr %.0104.val.i, align 8
  %i.at = load i32, ptr @fol_EQUALITY, align 4
  %.not228.i = icmp eq i32 %.val176.i, %i.at
  br i1 %.not228.i, label %bb.h, label %.critedge4.i

bb.h:                                             ; preds = %.lr.ph250.i
  %i.au = getelementptr i8, ptr %.0104.val.i, i64 16 ; 2 uses
  %.val175.i = load ptr, ptr %i.au, align 8       ; 2 uses
  %i.av = getelementptr i8, ptr %.val175.i, i64 8
  %.val175.val.i = load ptr, ptr %i.av, align 8   ; 2 uses
  %i.aw = icmp eq ptr %.0105263.i, %.val175.val.i
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.val181.val.i = load ptr, ptr %.val175.i, align 8
  %i.ax = getelementptr i8, ptr %.val181.val.i, i64 8
  %.val181.val.val.i = load ptr, ptr %i.ax, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i = phi ptr [ %.val181.val.val.i, %bb.i ], [ %.val175.val.i, %bb.h ] ; 2 uses
  %i.ay = tail call ptr @sharing_NAtomDataList(ptr noundef nonnull %.0104.val.i) #14 ; 2 uses
  %.not289.i = icmp eq ptr %i.ay, null
  br i1 %.not289.i, label %.critedge4.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %.pre312 = load i32, ptr @fol_NOT, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.aq
  %i.az = phi i32 [ %i.hu, %bb.aq ], [ %.pre312, %.lr.ph.i.preheader ] ; 4 uses
  %.0103238.i = phi ptr [ %.0103.val180.i, %bb.aq ], [ %i.ay, %.lr.ph.i.preheader ] ; 2 uses
  %.4111237.i = phi i32 [ %.6113.i, %bb.aq ], [ %.3110247.i, %.lr.ph.i.preheader ] ; 4 uses
  %i.ba = getelementptr i8, ptr %.0103238.i, i64 8
  %.0103.val.i = load ptr, ptr %i.ba, align 8     ; 3 uses
  %i.bb = getelementptr i8, ptr %.0103.val.i, i64 16
  %.val187.i = load ptr, ptr %i.bb, align 8       ; 12 uses
  %i.bc = getelementptr i8, ptr %.0103.val.i, i64 24
  %.val191.i = load ptr, ptr %i.bc, align 8
  %.val191.val.i = load i32, ptr %.val191.i, align 8
  %.not229.i = icmp eq i32 %.val191.val.i, %i.az
  br i1 %.not229.i, label %bb.aq, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.bd = getelementptr i8, ptr %.val187.i, i64 64
  %.val3.i.i = load i32, ptr %i.bd, align 8
  %i.be = getelementptr i8, ptr %.val187.i, i64 68
  %.val.i.i = load i32, ptr %i.be, align 4
  %i.bf = add nsw i32 %.val.i.i, %.val3.i.i
  %i.bg = getelementptr i8, ptr %.val187.i, i64 72
  %.val4.i.i = load i32, ptr %i.bg, align 8
  %i.bh = add nsw i32 %i.bf, %.val4.i.i
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.l, label %bb.aq

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr i8, ptr %.0103.val.i, i64 8
  %.val178.i = load i32, ptr %i.bj, align 8
  %.not157.i = icmp eq i32 %.val178.i, 0
  br i1 %.not157.i, label %.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val173.i = load ptr, ptr %i.au, align 8
  %i.bk = getelementptr i8, ptr %.val173.i, i64 8
  %.val173.val.i = load ptr, ptr %i.bk, align 8
  %.not230.i = icmp eq ptr %.0105263.i, %.val173.val.i
  br i1 %.not230.i, label %bb.n, label %bb.aq

.split.i:                                         ; preds = %bb.l
  %i.bl = getelementptr i8, ptr %.val187.i, i64 52
  %.val192.i = load i32, ptr %i.bl, align 4
  tail call void @term_StartMaxRenaming(i32 noundef %.val192.i) #14
  %i.bm = tail call ptr @term_Rename(ptr noundef %.1131273.i.ph) #14 ; 0 uses
  %i.bn = load ptr, ptr @cont_LEFTCONTEXT, align 8 ; 2 uses
  %i.bo = tail call i32 @ord_ContGreater(ptr noundef %i.bn, ptr noundef nonnull %.0105263.i, ptr noundef %i.bn, ptr noundef %.0.i, ptr noundef %2, ptr noundef %3) #14
  %i.bp = icmp eq i32 %i.bo, 0
  %.pre = load i32, ptr @fol_NOT, align 4
  br i1 %i.bp, label %bb.aq, label %bb.n

bb.n:                                             ; preds = %.split.i, %bb.m
  %.5112208.i = phi i32 [ 1, %.split.i ], [ %.4111237.i, %bb.m ]
  %i.bq = icmp eq ptr %0, %.1277.i.ph
  br i1 %i.bq, label %bb.o, label %clause_GetLiteralAtom.exit199.i

bb.o:                                             ; preds = %bb.n
  br i1 %.not160.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr i8, ptr %.val187.i, i64 12
  %.val190.i = load i32, ptr %i.br, align 4       ; 2 uses
  %.val189.i = load i32, ptr %i.ac, align 4
  %i.bs = icmp ule i32 %.val190.i, %.val189.i
end_hunk_3
begin_hunk_4_@red_RewriteRedClause:bb.a

.lr.ph.i.i.i205:                                  ; preds = %bb.bx
  %i.nr = getelementptr inbounds nuw i8, ptr %.6238, i64 16
  br label %bb.by

.preheader.i.i.i:                                 ; preds = %bb.by, %bb.bx
  %.lcssa.i.i.i = phi i32 [ 0, %bb.bx ], [ %i.oe, %bb.by ] ; 3 uses
  %i.ns = icmp ult i32 %.lcssa.i.i.i, %i.nm
  br i1 %i.ns, label %.lr.ph27.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph27.preheader.i.i.i:                         ; preds = %.preheader.i.i.i
  %i.nt = zext i32 %.lcssa.i.i.i to i64
  %i.nu = shl nuw nsw i64 %i.nt, 3
  %scevgep.i.i.i = getelementptr i8, ptr %i.np, i64 %i.nu
  %i.nv = xor i32 %.lcssa.i.i.i, -1
  %i.nw = add i32 %i.nm, %i.nv
  %i.nx = zext i32 %i.nw to i64
  %i.ny = shl nuw nsw i64 %i.nx, 3
  %i.nz = add nuw nsw i64 %i.ny, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.nz, i1 false)
  br label %._crit_edge.i.i.i

bb.by:                                            ; preds = %bb.by, %.lr.ph.i.i.i205
  %indvars.iv.i.i.i206 = phi i64 [ 0, %.lr.ph.i.i.i205 ], [ %indvars.iv.next.i.i.i207, %bb.by ] ; 3 uses
  %i.oa = load ptr, ptr %i.nr, align 8
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %indvars.iv.i.i.i206
  %i.oc = load i64, ptr %i.ob, align 8
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %indvars.iv.i.i.i206
  store i64 %i.oc, ptr %i.od, align 8
  %indvars.iv.next.i.i.i207 = add nuw nsw i64 %indvars.iv.i.i.i206, 1 ; 2 uses
  %i.oe = load i32, ptr %i.nj, align 8            ; 2 uses
  %i.of = zext i32 %i.oe to i64
  %i.og = icmp samesign ult i64 %indvars.iv.next.i.i.i207, %i.of
  br i1 %i.og, label %bb.by, label %.preheader.i.i.i, !llvm.loop !5

._crit_edge.i.i.i:                                ; preds = %.lr.ph27.preheader.i.i.i, %.preheader.i.i.i
  %i.oh = getelementptr inbounds nuw i8, ptr %.6238, i64 16 ; 2 uses
  %i.oi = load ptr, ptr %i.oh, align 8            ; 5 uses
  %.not.i.i.i208 = icmp eq ptr %i.oi, null
  br i1 %.not.i.i.i208, label %clause_ExpandSplitField.exit.i.i, label %bb.bz

bb.bz:                                            ; preds = %._crit_edge.i.i.i
  %i.oj = load i32, ptr %i.nj, align 8
  %i.ok = shl i32 %i.oj, 3                        ; 4 uses
  %i.ol = icmp ult i32 %i.ok, 1024
  br i1 %i.ol, label %bb.ci, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.om = urem i32 %i.ok, %i.l                    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.om, 0
  %i.on = sub nuw i32 %i.l, %i.om
  %i.oo = select i1 %.not.i.i.i.i.i.i, i32 0, i32 %i.on
  %.1.i.i.i.i.i.i = add i32 %i.oo, %i.ok
  %i.op = load i32, ptr @memory_OFFSET, align 4
  %i.oq = zext i32 %i.op to i64
  %i.or = sub nsw i64 0, %i.oq
  %i.os = getelementptr inbounds i8, ptr %i.oi, i64 %i.or ; 2 uses
  %i.ot = getelementptr inbounds i8, ptr %i.os, i64 -16 ; 2 uses
  %i.ou = load ptr, ptr %i.ot, align 8            ; 2 uses
  %.not.i.i.i.i209 = icmp eq ptr %i.ou, null
  %i.ov = getelementptr inbounds i8, ptr %i.os, i64 -8
  %i.ow = load ptr, ptr %i.ov, align 8            ; 4 uses
  br i1 %.not.i.i.i.i209, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  store ptr %i.ow, ptr %i.ox, align 8
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  store ptr %i.ow, ptr @memory_BIGBLOCKS, align 8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.not20.i.i.i.i = icmp eq ptr %i.ow, null
  br i1 %.not20.i.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.oy = load ptr, ptr %i.ot, align 8
  store ptr %i.oy, ptr %i.ow, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.oz = load i32, ptr @memory_MARKSIZE, align 4
  %i.pa = add i32 %.1.i.i.i.i.i.i, %i.oz
  %i.pb = zext i32 %i.pa to i64
  %i.pc = add nuw nsw i64 %i.pb, 16               ; 2 uses
  %i.pd = load i64, ptr @memory_FREEDBYTES, align 8
  %i.pe = add i64 %i.pc, %i.pd
  store i64 %i.pe, ptr @memory_FREEDBYTES, align 8
  %i.pf = load i64, ptr @memory_MAXMEM, align 8   ; 2 uses
  %i.pg = icmp sgt i64 %i.pf, -1
  br i1 %i.pg, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ph = add nuw i64 %i.pf, %i.pc
  store i64 %i.ph, ptr @memory_MAXMEM, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.pi = getelementptr inbounds i8, ptr %i.oi, i64 -16
  tail call void @free(ptr noundef nonnull %i.pi) #14
  br label %clause_ExpandSplitField.exit.i.i

bb.ci:                                            ; preds = %bb.bz
  %i.pj = zext nneg i32 %i.ok to i64
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr @memory_ARRAY, i64 %i.pj ; 2 uses
  %i.pl = load ptr, ptr %i.pk, align 8            ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 32
  %i.pn = load i32, ptr %i.pm, align 8
  %i.po = sext i32 %i.pn to i64
  %i.pp = load i64, ptr @memory_FREEDBYTES, align 8
  %i.pq = add i64 %i.pp, %i.po
  store i64 %i.pq, ptr @memory_FREEDBYTES, align 8
  %i.pr = load ptr, ptr %i.pl, align 8
  store ptr %i.pr, ptr %i.oi, align 8
  %i.ps = load ptr, ptr %i.pk, align 8
  store ptr %i.oi, ptr %i.ps, align 8
  br label %clause_ExpandSplitField.exit.i.i

clause_ExpandSplitField.exit.i.i:                 ; preds = %bb.ci, %bb.ch, %._crit_edge.i.i.i
  store ptr %i.np, ptr %i.oh, align 8
  store i32 %i.nm, ptr %i.nj, align 8
  %.pre.i.i = load i32, ptr %i.nl, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %clause_ExpandSplitField.exit.i.i, %bb.bw
  %i.pt = phi i32 [ %.pre.i.i, %clause_ExpandSplitField.exit.i.i ], [ %i.nm, %bb.bw ]
  %.not.i.i203 = icmp eq i32 %i.pt, 0
  br i1 %.not.i.i203, label %clause_UpdateSplitDataFromPartner.exit, label %.lr.ph.i.i204

.lr.ph.i.i204:                                    ; preds = %bb.cj
  %i.pu = getelementptr inbounds nuw i8, ptr %.6238, i64 16
  %i.pv = getelementptr inbounds nuw i8, ptr %.val171, i64 16
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.lr.ph.i.i204
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i204 ], [ %indvars.iv.next.i.i, %bb.ck ] ; 3 uses
  %i.pw = load ptr, ptr %i.pu, align 8
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv.i.i ; 2 uses
  %i.py = load i64, ptr %i.px, align 8
  %i.pz = load ptr, ptr %i.pv, align 8
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pz, i64 %indvars.iv.i.i
  %i.qb = load i64, ptr %i.qa, align 8
  %i.qc = or i64 %i.qb, %i.py
  store i64 %i.qc, ptr %i.px, align 8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.qd = load i32, ptr %i.nl, align 8
  %i.qe = zext i32 %i.qd to i64
  %i.qf = icmp samesign ult i64 %indvars.iv.next.i.i, %i.qe
  br i1 %i.qf, label %bb.ck, label %clause_UpdateSplitDataFromPartner.exit, !llvm.loop !6

clause_UpdateSplitDataFromPartner.exit:           ; preds = %bb.ck, %bb.bv, %bb.cj
  tail call void @term_Delete(ptr noundef %i.mz) #14
  store i32 %i.ja, ptr @stack_POINTER, align 4
  %i.qg = load i32, ptr %i.k, align 4
  %.not158 = icmp eq i32 %i.qg, 0
  br i1 %.not158, label %.thread390, label %bb.cl

bb.cl:                                            ; preds = %clause_UpdateSplitDataFromPartner.exit
  %.val169 = load i32, ptr %.val171, align 8
  %i.qh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %.val169, i32 noundef %i.jx) ; 0 uses
  br label %.thread390

bb.cm:                                            ; preds = %clause_LiteralGetIndex.exit, %bb.bj, %bb.bk
  %.0103.val165 = load ptr, ptr %.0103261, align 8 ; 2 uses
  %.not = icmp eq ptr %.0103.val165, null
  br i1 %.not, label %.critedge4, label %.lr.ph, !llvm.loop !76

.critedge4:                                       ; preds = %bb.cm, %bb.bh, %.lr.ph271, %bb.bg
  %.0104 = load ptr, ptr %.0104270, align 8       ; 2 uses
  %.not427 = icmp eq ptr %.0104, null
  br i1 %.not427, label %.critedge2.thread385, label %.lr.ph271, !llvm.loop !77

.thread390:                                       ; preds = %bb.cl, %clause_UpdateSplitDataFromPartner.exit
  %i.qi = tail call i32 @clause_ComputeWeight(ptr noundef %.6238, ptr noundef nonnull %2) #14
  %i.qj = getelementptr inbounds nuw i8, ptr %.6238, i64 4
  store i32 %i.qi, ptr %i.qj, align 4
  br label %.critedge

.critedge2.thread385:                             ; preds = %.critedge4, %bb.bf, %.lr.ph283
  %i.qk = tail call ptr @st_NextCandidate() #14   ; 2 uses
  %.not140.not = icmp eq ptr %i.qk, null
  br i1 %.not140.not, label %.critedge, label %.lr.ph283, !llvm.loop !78

.critedge:                                        ; preds = %.critedge2.thread385, %.thread390, %bb.be
  %.1126.lcssa = phi ptr [ %.0125289, %bb.be ], [ %.4129234, %.thread390 ], [ %.0125289, %.critedge2.thread385 ]
  %.1118.lcssa = phi i32 [ %.0117290, %bb.be ], [ 1, %.thread390 ], [ 0, %.critedge2.thread385 ] ; 2 uses
  %.3110.lcssa = phi i32 [ %.2109291, %bb.be ], [ 1, %.thread390 ], [ %.2109291, %.critedge2.thread385 ] ; 3 uses
  %.3.lcssa = phi ptr [ %.2292, %bb.be ], [ %.6238, %.thread390 ], [ %.2292, %.critedge2.thread385 ] ; 3 uses
  tail call void @st_CancelExistRetrieval() #14
  %i.ql = load i32, ptr @stack_POINTER, align 4   ; 2 uses
  %.not246 = icmp eq i32 %i.ql, %i.ja
  br i1 %.not246, label %bb.bb, label %bb.be, !llvm.loop !79

.loopexit:                                        ; preds = %bb.bb, %clause_GetLiteralAtom.exit186, %clause_GetLiteralAtom.exit
  %.9116 = phi i32 [ %.0107298, %clause_GetLiteralAtom.exit ], [ %.1108, %clause_GetLiteralAtom.exit186 ], [ %.3110.lcssa, %bb.bb ] ; 2 uses
  %.10 = phi ptr [ %.0299, %clause_GetLiteralAtom.exit ], [ %.1, %clause_GetLiteralAtom.exit186 ], [ %.3.lcssa, %bb.bb ] ; 10 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %7, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge301, label %bb.az, !llvm.loop !80

._crit_edge301:                                   ; preds = %.loopexit
  %i.qm = icmp eq i32 %.9116, 0
  br i1 %i.qm, label %red_RewriteRedUnitClause.exit, label %bb.cn

bb.cn:                                            ; preds = %._crit_edge301
  tail call void @clause_OrientEqualities(ptr noundef %.10, ptr noundef %2, ptr noundef %3) #14
  tail call void @clause_Normalize(ptr noundef %.10) #14
  tail call void @clause_SetMaxLitFlags(ptr noundef %.10, ptr noundef %2, ptr noundef %3) #14
  %i.qn = tail call i32 @clause_ComputeWeight(ptr noundef %.10, ptr noundef %2) #14
  %i.qo = getelementptr inbounds nuw i8, ptr %.10, i64 4
  store i32 %i.qn, ptr %i.qo, align 4
  tail call void @clause_UpdateMaxVar(ptr noundef %.10) #14
  %i.qp = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.qq = load i32, ptr %i.qp, align 4
  %.not137 = icmp eq i32 %i.qq, 0
  br i1 %.not137, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.qr = load ptr, ptr @stdout, align 8
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %i.qr) ; 0 uses
  tail call void @clause_Print(ptr noundef nonnull %.10) #14
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.not138 = icmp eq ptr %.10, %0
  br i1 %.not138, label %red_RewriteRedUnitClause.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @clause_OrientEqualities(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3) #14
  tail call void @clause_Normalize(ptr noundef %0) #14
  tail call void @clause_SetMaxLitFlags(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3) #14
  %i.qs = tail call i32 @clause_ComputeWeight(ptr noundef %0, ptr noundef nonnull %2) #14
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.qs, ptr %i.qt, align 4
  tail call void @clause_UpdateMaxVar(ptr noundef %0) #14
  store ptr %.10, ptr %4, align 8
  br label %red_RewriteRedUnitClause.exit

red_RewriteRedUnitClause.exit:                    ; preds = %.preheader252, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.d, %clause_GetLiteralAtom.exit.i, %._crit_edge301, %bb.cq, %bb.cp
  %.0133 = phi i32 [ 0, %._crit_edge301 ], [ 1, %bb.cp ], [ 1, %bb.cq ], [ 0, %clause_GetLiteralAtom.exit.i ], [ 0, %bb.d ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 1, %bb.av ], [ 1, %bb.aw ], [ 0, %.preheader252 ]
  ret i32 %.0133
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @red_ContextualRewriting(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.b, align 8             ; 13 uses
  %i.c = getelementptr i8, ptr %0, i64 104
  %.val188 = load ptr, ptr %i.c, align 8          ; 7 uses
  %i.d = and i32 %2, -2
  %.not = icmp eq i32 %i.d, 2
  %.0118.in.v = select i1 %.not, i64 32, i64 48
  %.0118.in = getelementptr i8, ptr %0, i64 %.0118.in.v
  %.0118 = load ptr, ptr %.0118.in, align 8
  %i.e = getelementptr i8, ptr %1, i64 64
  %.val3.i.i = load i32, ptr %i.e, align 8        ; 4 uses
  %i.f = getelementptr i8, ptr %1, i64 68
  %.val.i.i = load i32, ptr %i.f, align 4         ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 72
  %.val4.i.i = load i32, ptr %i.g, align 8        ; 2 uses
  %i.h = add i32 %.val3.i.i, -1
  %i.i = add i32 %i.h, %.val.i.i
  %i.j = add i32 %i.i, %.val4.i.i
  %.not155362 = icmp sgt i32 %.val3.i.i, %i.j
  br i1 %.not155362, label %._crit_edge.thread, label %.lr.ph366

.lr.ph366:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 36
  %i.l = load i32, ptr %i.k, align 4
  %.not175 = icmp eq i32 %i.l, 0                  ; 2 uses
  %i.m = getelementptr i8, ptr %1, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 2 uses
  %i.o = load i32, ptr @memory_ALIGN, align 4     ; 4 uses
  %i.p = sext i32 %.val3.i.i to i64
  %i.q = add i32 %.val.i.i, %.val4.i.i
  %i.r = add i32 %i.q, %.val3.i.i
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph366, %.loopexit317
  %indvars.iv = phi i64 [ %i.p, %.lr.ph366 ], [ %indvars.iv.next, %.loopexit317 ] ; 6 uses
  %.0119365 = phi ptr [ %1, %.lr.ph366 ], [ %.10, %.loopexit317 ] ; 3 uses
  %.0123364 = phi i32 [ 0, %.lr.ph366 ], [ %.9132, %.loopexit317 ] ; 2 uses
  %i.s = getelementptr i8, ptr %.0119365, i64 56
  %.0119.val = load ptr, ptr %i.s, align 8
  %i.t = getelementptr inbounds [8 x i8], ptr %.0119.val, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %.val1.i = load ptr, ptr %i.v, align 8          ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val1.i, align 8
  %i.w = load i32, ptr @fol_NOT, align 4
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.w
  br i1 %.not.i.i, label %bb.c, label %clause_GetLiteralAtom.exit

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr i8, ptr %.val1.i, i64 16
  %.val6.i.i = load ptr, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.y, align 8
  br label %clause_GetLiteralAtom.exit

clause_GetLiteralAtom.exit:                       ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %.val6.val.i.i, %bb.c ], [ %.val1.i, %bb.b ]
  %i.z = getelementptr i8, ptr %.0.i.i, i64 16
  %.val205 = load ptr, ptr %i.z, align 8
  %.not307 = icmp eq ptr %.val205, null
  br i1 %.not307, label %.loopexit317, label %.preheader

.preheader:                                       ; preds = %clause_GetLiteralAtom.exit
  %i.aa = inttoptr i64 %indvars.iv to ptr         ; 2 uses
  %i.ab = trunc nsw i64 %indvars.iv to i32
  br label %bb.d

.loopexit:                                        ; preds = %list_Delete.exit
  %i.ac = icmp eq i32 %.2135.lcssa, 0
  br i1 %i.ac, label %.loopexit317, label %bb.d, !llvm.loop !81

bb.d:                                             ; preds = %.preheader, %.loopexit
  %.1361 = phi ptr [ %.0119365, %.preheader ], [ %.3.lcssa, %.loopexit ] ; 3 uses
  %.1124360 = phi i32 [ %.0123364, %.preheader ], [ %.3126.lcssa, %.loopexit ] ; 2 uses
  %i.ad = getelementptr i8, ptr %.1361, i64 56
  %.1.val = load ptr, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds [8 x i8], ptr %.1.val, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  %.val1.i213 = load ptr, ptr %i.ag, align 8      ; 3 uses
  %.val5.val.i.i214 = load i32, ptr %.val1.i213, align 8
  %i.ah = load i32, ptr @fol_NOT, align 4
  %.not.i.i215 = icmp eq i32 %.val5.val.i.i214, %i.ah
  br i1 %.not.i.i215, label %bb.e, label %clause_GetLiteralAtom.exit219

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr i8, ptr %.val1.i213, i64 16
  %.val6.i.i217 = load ptr, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %.val6.i.i217, i64 8
  %.val6.val.i.i218 = load ptr, ptr %i.aj, align 8
  br label %clause_GetLiteralAtom.exit219

clause_GetLiteralAtom.exit219:                    ; preds = %bb.d, %bb.e
  %.0.i.i216 = phi ptr [ %.val6.val.i.i218, %bb.e ], [ %.val1.i213, %bb.d ] ; 2 uses
  %i.ak = load i32, ptr @stack_POINTER, align 4   ; 3 uses
  %i.al = getelementptr i8, ptr %.0.i.i216, i64 16
  %.val204 = load ptr, ptr %i.al, align 8
  tail call void @sharing_PushListReverseOnStack(ptr noundef %.val204) #14
  %i.am = load i32, ptr @stack_POINTER, align 4   ; 2 uses
  %.not308351 = icmp eq i32 %i.am, %i.ak
  br i1 %.not308351, label %.loopexit317, label %.lr.ph356

.lr.ph356:                                        ; preds = %clause_GetLiteralAtom.exit219, %list_Delete.exit
  %i.an = phi i32 [ %i.oq, %list_Delete.exit ], [ %i.am, %clause_GetLiteralAtom.exit219 ]
  %.2355 = phi ptr [ %.3.lcssa, %list_Delete.exit ], [ %.1361, %clause_GetLiteralAtom.exit219 ] ; 2 uses
  %.2125354 = phi i32 [ %.3126.lcssa, %list_Delete.exit ], [ %.1124360, %clause_GetLiteralAtom.exit219 ] ; 2 uses
  %.1134353 = phi i32 [ %.2135.lcssa, %list_Delete.exit ], [ 0, %clause_GetLiteralAtom.exit219 ] ; 2 uses
  %.0142352 = phi ptr [ %.1143.lcssa, %list_Delete.exit ], [ %.0.i.i216, %clause_GetLiteralAtom.exit219 ] ; 2 uses
  %i.ao = add i32 %i.an, -1                       ; 2 uses
  store i32 %i.ao, ptr @stack_POINTER, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8            ; 4 uses
  %i.as = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.0118.val = load ptr, ptr %.0118, align 8
  %i.at = tail call ptr @st_GetGen(ptr noundef %i.as, ptr noundef %.0118.val, ptr noundef %i.ar) #14 ; 3 uses
  %i.au = icmp ne ptr %i.at, null                 ; 2 uses
  %.not163338 = icmp eq i32 %.1134353, 0
  %or.cond339 = select i1 %i.au, i1 %.not163338, i1 false
  br i1 %or.cond339, label %.lr.ph344, label %.critedge

.lr.ph344:                                        ; preds = %.lr.ph356, %.critedge2
  %.3343 = phi ptr [ %.9, %.critedge2 ], [ %.2355, %.lr.ph356 ] ; 3 uses
  %.0122342 = phi ptr [ %.val.i280, %.critedge2 ], [ %i.at, %.lr.ph356 ] ; 4 uses
  %.3126341 = phi i32 [ %.8131, %.critedge2 ], [ %.2125354, %.lr.ph356 ] ; 3 uses
  %.1143340 = phi ptr [ %.7149, %.critedge2 ], [ %.0142352, %.lr.ph356 ] ; 3 uses
  %i.av = getelementptr i8, ptr %.0122342, i64 8
  %.0122.val = load ptr, ptr %i.av, align 8       ; 4 uses
  %.val202 = load i32, ptr %.0122.val, align 8
  %i.aw = icmp slt i32 %.val202, 1
  br i1 %i.aw, label %bb.f, label %.critedge2

bb.f:                                             ; preds = %.lr.ph344
  %i.ax = getelementptr i8, ptr %.0122.val, i64 8
  %.0121328 = load ptr, ptr %i.ax, align 8        ; 2 uses
  %.not369 = icmp eq ptr %.0121328, null
  br i1 %.not369, label %.critedge2, label %.lr.ph333

.lr.ph333:                                        ; preds = %bb.f, %bb.by
  %.0121332 = phi ptr [ %.0121, %bb.by ], [ %.0121328, %bb.f ] ; 2 uses
  %.4331 = phi ptr [ %.8, %bb.by ], [ %.3343, %bb.f ] ; 8 uses
  %.4127330 = phi i32 [ %.7130, %bb.by ], [ %.3126341, %bb.f ] ; 5 uses
  %.2144329 = phi ptr [ %.6148, %bb.by ], [ %.1143340, %bb.f ] ; 6 uses
  %i.ay = getelementptr i8, ptr %.0121332, i64 8
  %.0121.val = load ptr, ptr %i.ay, align 8       ; 3 uses
  %.val192 = load i32, ptr %.0121.val, align 8
  %i.az = load i32, ptr @fol_EQUALITY, align 4
  %.not309 = icmp eq i32 %.val192, %i.az
  br i1 %.not309, label %bb.g, label %bb.by

bb.g:                                             ; preds = %.lr.ph333
  %i.ba = getelementptr i8, ptr %.0121.val, i64 16 ; 2 uses
  %.val191 = load ptr, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %.val191, i64 8
  %.val191.val = load ptr, ptr %i.bb, align 8
  %i.bc = icmp eq ptr %.val191.val, %.0122.val
  br i1 %i.bc, label %bb.h, label %bb.by

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.bd = tail call ptr @sharing_NAtomDataList(ptr noundef nonnull %.0121.val) #14 ; 2 uses
  %.not370 = icmp eq ptr %i.bd, null
  br i1 %.not370, label %.critedge4, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %red_LeftTermOfEquationIsStrictlyMaximalTerm.exit.thread
  %.0120323 = phi ptr [ %.0120.val195, %red_LeftTermOfEquationIsStrictlyMaximalTerm.exit.thread ], [ %i.bd, %bb.h ] ; 2 uses
  %i.be = getelementptr i8, ptr %.0120323, i64 8
  %.0120.val = load ptr, ptr %i.be, align 8       ; 6 uses
  %i.bf = getelementptr i8, ptr %.0120.val, i64 16
  %.val203 = load ptr, ptr %i.bf, align 8         ; 13 uses
  %i.bg = getelementptr i8, ptr %.val203, i64 56  ; 2 uses
  %.val.i = load ptr, ptr %i.bg, align 8          ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ 0, %.lr.ph ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv.i
  %i.bi = load ptr, ptr %i.bh, align 8
  %.not.i = icmp eq ptr %i.bi, %.0120.val
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i, label %clause_LiteralGetIndex.exit, label %bb.i, !llvm.loop !3

clause_LiteralGetIndex.exit:                      ; preds = %bb.i
  %i.bj = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.bk = getelementptr i8, ptr %.0120.val, i64 24
  %.val211 = load ptr, ptr %i.bk, align 8         ; 2 uses
  %.val211.val = load i32, ptr %.val211, align 8
  %i.bl = load i32, ptr @fol_NOT, align 4
  %.not310 = icmp eq i32 %.val211.val, %i.bl
  br i1 %.not310, label %red_LeftTermOfEquationIsStrictlyMaximalTerm.exit.thread, label %bb.j

bb.j:                                             ; preds = %clause_LiteralGetIndex.exit
  %.val212 = load i32, ptr %.0120.val, align 8
  %i.bm = and i32 %.val212, 2
  %.not171 = icmp eq i32 %i.bm, 0
  br i1 %.not171, label %red_LeftTermOfEquationIsStrictlyMaximalTerm.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr i8, ptr %.0120.val, i64 8
  %.val193 = load i32, ptr %i.bn, align 8
  %.not172 = icmp eq i32 %.val193, 0
  br i1 %.not172, label %red_LeftTermOfEquationIsStrictlyMaximalTerm.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr i8, ptr %.val211, i64 16
  %.val34.i = load ptr, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %.val34.i, i64 8
  %.val34.val.i = load ptr, ptr %i.bp, align 8    ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv.i.i
  %i.br = load ptr, ptr %i.bq, align 8
  %.not.i.i222 = icmp eq ptr %i.br, %.0120.val
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %.not.i.i222, label %clause_LiteralGetIndex.exit.i, label %bb.m, !llvm.loop !3

clause_LiteralGetIndex.exit.i:                    ; preds = %bb.m
  %i.bs = getelementptr i8, ptr %.val203, i64 64
  %.val3.i.i.i = load i32, ptr %i.bs, align 8
  %i.bt = getelementptr i8, ptr %.val203, i64 68
  %.val.i.i.i = load i32, ptr %i.bt, align 4
  %i.bu = getelementptr i8, ptr %.val203, i64 72
  %.val4.i.i.i = load i32, ptr %i.bu, align 8     ; 2 uses
  %i.bv = add i32 %.val.i.i.i, %.val3.i.i.i       ; 2 uses
  %i.bw = add i32 %i.bv, -1
  %i.bx = add i32 %i.bw, %.val4.i.i.i
  %.not41.i = icmp slt i32 %i.bx, 0
  br i1 %.not41.i, label %red_LeftTermOfEquationIsStrictlyMaximalTerm.exit, label %.lr.ph.i
end_hunk_4
begin_hunk_5_@red_UnitConflict:bb.a
  %.4.lcssa = phi ptr [ null, %clause_LiteralAtom.exit117 ], [ %.263.val, %.thread214 ], [ null, %._crit_edge177.thread ] ; 2 uses
  %i.bb = getelementptr i8, ptr %i.al, i64 16
  %.val96 = load ptr, ptr %i.bb, align 8          ; 2 uses
  %.not6.i = icmp eq ptr %.val96, null
  br i1 %.not6.i, label %.loopexit165, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge181, %.lr.ph.i
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %.val96, %._crit_edge181 ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = sext i32 %i.be to i64
  %i.bg = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bh = add i64 %i.bg, %i.bf
  store i64 %i.bh, ptr @memory_FREEDBYTES, align 8
  %i.bi = load ptr, ptr %i.bc, align 8
  store ptr %i.bi, ptr %.07.i, align 8
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.bj, align 8
  %.not.i128 = icmp eq ptr %.0.val.i, null
  br i1 %.not.i128, label %.loopexit165, label %.lr.ph.i, !llvm.loop !1

.loopexit165:                                     ; preds = %.lr.ph.i, %._crit_edge181
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 256), align 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = sext i32 %i.bm to i64
  %i.bo = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bp = add i64 %i.bo, %i.bn
  store i64 %i.bp, ptr @memory_FREEDBYTES, align 8
  %i.bq = load ptr, ptr %i.bk, align 8
  store ptr %i.bq, ptr %i.al, align 8
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 256), align 8
  store ptr %i.al, ptr %i.br, align 8
  %.not159 = icmp eq ptr %.4.lcssa, null
  br i1 %.not159, label %.thread151, label %.thread154

.thread154:                                       ; preds = %.thread202, %.loopexit165
  %.8157 = phi ptr [ %.4.lcssa, %.loopexit165 ], [ %.061.val, %.thread202 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4
  %.not72 = icmp eq i32 %i.bt, 0
  br i1 %.not72, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread154
  %i.bu = load ptr, ptr @stdout, align 8
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.38, i64 15, i64 1, ptr %i.bu) ; 0 uses
  tail call void @clause_Print(ptr noundef %0) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread154
  %i.bv = getelementptr i8, ptr %.8157, i64 16
  %.8.val = load ptr, ptr %i.bv, align 8          ; 4 uses
  %.not73 = icmp eq i32 %i.h, 0                   ; 2 uses
  br i1 %.not73, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr i8, ptr %.8.val, i64 12
  %.val99 = load i32, ptr %i.bw, align 4          ; 2 uses
  %i.bx = getelementptr i8, ptr %0, i64 12
  %.val98 = load i32, ptr %i.bx, align 4
  %i.by = icmp ule i32 %.val99, %.val98
  %i.bz = icmp ule i32 %.val99, %5
  %.not162 = and i1 %i.bz, %i.by
  br i1 %.not162, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ca = tail call ptr @clause_Copy(ptr noundef %0) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.069 = phi ptr [ %i.ca, %bb.k ], [ %0, %bb.j ] ; 10 uses
  tail call fastcc void @clause_UpdateSplitDataFromPartner(ptr noundef %.069, ptr noundef %.8.val)
  tail call void @clause_DeleteLiteral(ptr noundef %.069, i32 noundef 0, ptr noundef nonnull %2, ptr noundef %3) #14
  br i1 %.not73, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false)
  %.val91 = load i32, ptr %.8.val, align 8
  %i.cc = sext i32 %.val91 to i64
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cd, ptr %i.cf, align 8
  store ptr null, ptr %i.ce, align 8
  %i.cg = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 2 uses
  %i.ch = getelementptr i8, ptr %.069, i64 32     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  %.val.i129 = load ptr, ptr %i.ch, align 8       ; 2 uses
  %.not6.i.i = icmp eq ptr %.val.i129, null
  br i1 %.not6.i.i, label %list_Delete.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %.0.val.i.i, %.lr.ph.i.i ], [ %.val.i129, %bb.m ] ; 3 uses
  %.0.val.i.i = load ptr, ptr %.07.i.i, align 8   ; 2 uses
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = sext i32 %i.ck to i64
  %i.cm = load i64, ptr @memory_FREEDBYTES, align 8
  %i.cn = add i64 %i.cm, %i.cl
  store i64 %i.cn, ptr @memory_FREEDBYTES, align 8
  %i.co = load ptr, ptr %i.ci, align 8
  store ptr %i.co, ptr %.07.i.i, align 8
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i.i, ptr %i.cp, align 8
  %.not.i.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i.i, label %list_Delete.exit.i, label %.lr.ph.i.i, !llvm.loop !1

list_Delete.exit.i:                               ; preds = %.lr.ph.i.i, %bb.m
  %i.cq = getelementptr i8, ptr %.069, i64 40     ; 2 uses
  %.val10.i = load ptr, ptr %i.cq, align 8        ; 2 uses
  %.not6.i12.i = icmp eq ptr %.val10.i, null
  br i1 %.not6.i12.i, label %.loopexit, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %list_Delete.exit.i, %.lr.ph.i13.i
  %.07.i14.i = phi ptr [ %.0.val.i15.i, %.lr.ph.i13.i ], [ %.val10.i, %list_Delete.exit.i ] ; 3 uses
  %.0.val.i15.i = load ptr, ptr %.07.i14.i, align 8 ; 2 uses
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load i32, ptr %i.cs, align 8
  %i.cu = sext i32 %i.ct to i64
  %i.cv = load i64, ptr @memory_FREEDBYTES, align 8
  %i.cw = add i64 %i.cv, %i.cu
  store i64 %i.cw, ptr @memory_FREEDBYTES, align 8
  %i.cx = load ptr, ptr %i.cr, align 8
  store ptr %i.cx, ptr %.07.i14.i, align 8
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i14.i, ptr %i.cy, align 8
  %.not.i16.i = icmp eq ptr %.0.val.i15.i, null
  br i1 %.not.i16.i, label %.loopexit, label %.lr.ph.i13.i, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i13.i, %list_Delete.exit.i
  %.val11.i = load i32, ptr %.069, align 8
  %i.cz = sext i32 %.val11.i to i64
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.da, ptr %i.dc, align 8
  store ptr %i.ce, ptr %i.db, align 8
  store ptr %i.db, ptr %i.ch, align 8
  br label %.preheader.i21.i

.preheader.i21.i:                                 ; preds = %.loopexit, %.preheader.i21.i
  %.012.i22.i = phi ptr [ %.012.val15.i23.i, %.preheader.i21.i ], [ %i.cb, %.loopexit ] ; 2 uses
  %.012.val15.i23.i = load ptr, ptr %.012.i22.i, align 8 ; 2 uses
  %.not17.i24.i = icmp eq ptr %.012.val15.i23.i, null
  br i1 %.not17.i24.i, label %red_DocumentUnitConflict.exit, label %.preheader.i21.i, !llvm.loop !2

red_DocumentUnitConflict.exit:                    ; preds = %.preheader.i21.i
  store ptr %i.cg, ptr %.012.i22.i, align 8
  store ptr %i.cb, ptr %i.cq, align 8
  %i.dd = load i32, ptr @clause_CLAUSECOUNTER, align 4 ; 2 uses
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr @clause_CLAUSECOUNTER, align 4
  store i32 %i.dd, ptr %.069, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %.069, i64 76
  store i32 24, ptr %i.df, align 4
  br label %bb.n

bb.n:                                             ; preds = %red_DocumentUnitConflict.exit, %bb.l
  %i.dg = load i32, ptr %i.bs, align 4
  %.not76 = icmp eq i32 %i.dg, 0
  br i1 %.not76, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val90 = load i32, ptr %.8.val, align 8
  %i.dh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %.val90, i32 noundef 0) ; 0 uses
  tail call void @clause_Print(ptr noundef %.069) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not77 = icmp eq ptr %.069, %0
  br i1 %.not77, label %.thread151, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %.069, ptr %4, align 8
  br label %.thread151

.thread151:                                       ; preds = %clause_LiteralAtom.exit111.thread, %clause_LiteralAtom.exit111, %bb.a, %.loopexit165, %bb.p, %bb.q
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @red_ObviousReductions(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 5 uses
  %.val125 = load i32, ptr %i.a, align 8          ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 68         ; 3 uses
  %.val126 = load i32, ptr %i.b, align 4          ; 3 uses
  %i.c = add i32 %.val125, -1
  %i.d = add i32 %i.c, %.val126                   ; 3 uses
  %.not225 = icmp slt i32 %i.d, 0
  br i1 %.not225, label %._crit_edge, label %.lr.ph229

.lr.ph229:                                        ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.f = zext nneg i32 %i.d to i64
  %i.g = add i32 %.val125, %.val126
  %wide.trip.count = zext i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph229, %.loopexit220
  %indvars.iv = phi i64 [ 0, %.lr.ph229 ], [ %indvars.iv.next, %.loopexit220 ] ; 5 uses
  %.0228 = phi ptr [ null, %.lr.ph229 ], [ %.3, %.loopexit220 ] ; 3 uses
  %.val133 = load ptr, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val133, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %.val145 = load ptr, ptr %i.j, align 8          ; 3 uses
  %.val5.val.i = load i32, ptr %.val145, align 8  ; 2 uses
  %i.k = load i32, ptr @fol_NOT, align 4
  %.not.i = icmp eq i32 %.val5.val.i, %i.k
  br i1 %.not.i, label %bb.c, label %clause_LiteralAtom.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %.val145, i64 16
  %.val6.i = load ptr, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %.val6.i, i64 8
  %.val6.val.i = load ptr, ptr %i.m, align 8      ; 2 uses
  %.val151.pre = load i32, ptr %.val6.val.i, align 8
  br label %clause_LiteralAtom.exit

clause_LiteralAtom.exit:                          ; preds = %bb.b, %bb.c
  %.val151 = phi i32 [ %.val151.pre, %bb.c ], [ %.val5.val.i, %bb.b ]
  %.0.i = phi ptr [ %.val6.val.i, %bb.c ], [ %.val145, %bb.b ] ; 4 uses
  %i.n = load i32, ptr @fol_EQUALITY, align 4
  %.not212 = icmp eq i32 %.val151, %i.n
  br i1 %.not212, label %bb.d, label %bb.f

bb.d:                                             ; preds = %clause_LiteralAtom.exit
  %i.o = getelementptr i8, ptr %i.i, i64 8
  %.val152 = load i32, ptr %i.o, align 8
  %.not115 = icmp eq i32 %.val152, 0
  br i1 %.not115, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %.0.i, i64 16
  %.val139 = load ptr, ptr %i.p, align 8          ; 2 uses
  %i.q = getelementptr i8, ptr %.val139, i64 8
  %.val139.val = load ptr, ptr %i.q, align 8
  %.val158.val = load ptr, ptr %.val139, align 8
  %i.r = getelementptr i8, ptr %.val158.val, i64 8
  %.val158.val.val = load ptr, ptr %i.r, align 8
  %i.s = tail call i32 @term_Equal(ptr noundef %.val139.val, ptr noundef %.val158.val.val) #14
  %.not116 = icmp eq i32 %i.s, 0
  br i1 %.not116, label %bb.f, label %.loopexit220.sink.split

bb.f:                                             ; preds = %bb.e, %bb.d, %clause_LiteralAtom.exit
  %.not117.not222 = icmp samesign ult i64 %indvars.iv, %i.f
  br i1 %.not117.not222, label %.lr.ph, label %.loopexit220

.lr.ph:                                           ; preds = %bb.f
  %i.t = getelementptr i8, ptr %.0.i, i64 16      ; 2 uses
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.m
  %.089224.in = phi i32 [ %i.u, %.lr.ph ], [ %.089224, %bb.m ]
  %.089224 = add nuw nsw i32 %.089224.in, 1       ; 3 uses
  %.val131 = load ptr, ptr %i.e, align 8
  %i.v = zext nneg i32 %.089224 to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.val131, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %.val144 = load ptr, ptr %i.y, align 8          ; 3 uses
  %.val5.val.i165 = load i32, ptr %.val144, align 8
  %i.z = load i32, ptr @fol_NOT, align 4
  %.not.i166 = icmp eq i32 %.val5.val.i165, %i.z
  br i1 %.not.i166, label %bb.h, label %clause_LiteralAtom.exit170

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %.val144, i64 16
  %.val6.i168 = load ptr, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %.val6.i168, i64 8
  %.val6.val.i169 = load ptr, ptr %i.ab, align 8
  br label %clause_LiteralAtom.exit170

clause_LiteralAtom.exit170:                       ; preds = %bb.g, %bb.h
  %.0.i167 = phi ptr [ %.val6.val.i169, %bb.h ], [ %.val144, %bb.g ] ; 3 uses
  %i.ac = tail call i32 @term_Equal(ptr noundef %.0.i167, ptr noundef nonnull %.0.i) #14
  %.not118 = icmp eq i32 %i.ac, 0
  br i1 %.not118, label %bb.i, label %.loopexit220.sink.split

bb.i:                                             ; preds = %clause_LiteralAtom.exit170
  %.val150 = load i32, ptr %.0.i, align 8         ; 2 uses
  %i.ad = load i32, ptr @fol_EQUALITY, align 4
  %.not213 = icmp eq i32 %.val150, %i.ad
  br i1 %.not213, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.val149 = load i32, ptr %.0.i167, align 8
  %.not214 = icmp eq i32 %.val149, %.val150
  br i1 %.not214, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.val138 = load ptr, ptr %i.t, align 8
  %i.ae = getelementptr i8, ptr %.val138, i64 8
  %.val138.val = load ptr, ptr %i.ae, align 8
  %i.af = getelementptr i8, ptr %.0.i167, i64 16  ; 2 uses
  %.val157 = load ptr, ptr %i.af, align 8
  %.val157.val = load ptr, ptr %.val157, align 8
  %i.ag = getelementptr i8, ptr %.val157.val, i64 8
  %.val157.val.val = load ptr, ptr %i.ag, align 8
  %i.ah = tail call i32 @term_Equal(ptr noundef %.val138.val, ptr noundef %.val157.val.val) #14
  %.not121 = icmp eq i32 %i.ah, 0
  br i1 %.not121, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val137 = load ptr, ptr %i.af, align 8
  %i.ai = getelementptr i8, ptr %.val137, i64 8
  %.val137.val = load ptr, ptr %i.ai, align 8
  %.val156 = load ptr, ptr %i.t, align 8
  %.val156.val = load ptr, ptr %.val156, align 8
  %i.aj = getelementptr i8, ptr %.val156.val, i64 8
  %.val156.val.val = load ptr, ptr %i.aj, align 8
  %i.ak = tail call i32 @term_Equal(ptr noundef %.val137.val, ptr noundef %.val156.val.val) #14
  %.not122 = icmp eq i32 %i.ak, 0
  br i1 %.not122, label %bb.m, label %.loopexit220.sink.split

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %.not117.not = icmp slt i32 %.089224, %i.d
  br i1 %.not117.not, label %bb.g, label %.loopexit220, !llvm.loop !100

.loopexit220.sink.split:                          ; preds = %bb.l, %clause_LiteralAtom.exit170, %bb.e
  %.sink267 = inttoptr i64 %indvars.iv to ptr
  %i.al = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %.sink267, ptr %i.am, align 8
  store ptr %.0228, ptr %i.al, align 8
  br label %.loopexit220

.loopexit220:                                     ; preds = %bb.m, %.loopexit220.sink.split, %bb.f
  %.3 = phi ptr [ %i.al, %.loopexit220.sink.split ], [ %.0228, %bb.f ], [ %.0228, %bb.m ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !101

._crit_edge.loopexit:                             ; preds = %.loopexit220
  %.val3.i.i.pre = load i32, ptr %i.a, align 8
  %.val.i.i.pre = load i32, ptr %i.b, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.val.i.i = phi i32 [ %.val126, %bb.a ], [ %.val.i.i.pre, %._crit_edge.loopexit ] ; 3 uses
  %.val3.i.i = phi i32 [ %.val125, %bb.a ], [ %.val3.i.i.pre, %._crit_edge.loopexit ] ; 3 uses
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %.3, %._crit_edge.loopexit ] ; 2 uses
  %i.an = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %.val4.i.i = load i32, ptr %i.an, align 8       ; 3 uses
  %i.ao = add i32 %.val.i.i, %.val3.i.i           ; 4 uses
  %i.ap = add i32 %i.ao, -1
  %i.aq = add i32 %i.ap, %.val4.i.i               ; 3 uses
  %.not98236 = icmp sgt i32 %i.ao, %i.aq
  br i1 %.not98236, label %._crit_edge241, label %.lr.ph240

.lr.ph240:                                        ; preds = %._crit_edge
  %i.ar = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.as = sext i32 %.val3.i.i to i64
  %i.at = sext i32 %.val.i.i to i64
  %i.au = add nsw i64 %i.as, %i.at
  %i.av = sext i32 %i.aq to i64
  %i.aw = add i32 %i.ao, %.val4.i.i
  br label %bb.n

.loopexit219:                                     ; preds = %bb.v, %.thread263, %clause_LiteralAtom.exit176..loopexit219_crit_edge
  %lftr.wideiv.pre-phi = phi i32 [ %.pre255, %clause_LiteralAtom.exit176..loopexit219_crit_edge ], [ %i.bf, %.thread263 ], [ %i.bf, %bb.v ]
  %.5.lcssa = phi ptr [ %.4238, %clause_LiteralAtom.exit176..loopexit219_crit_edge ], [ %i.bw, %.thread263 ], [ %.4238, %bb.v ] ; 2 uses
  %exitcond247.not = icmp eq i32 %lftr.wideiv.pre-phi, %i.aw
  br i1 %exitcond247.not, label %._crit_edge241.loopexit, label %bb.n, !llvm.loop !102

bb.n:                                             ; preds = %.lr.ph240, %.loopexit219
  %indvars.iv244 = phi i64 [ %i.au, %.lr.ph240 ], [ %indvars.iv.next245, %.loopexit219 ] ; 4 uses
  %.4238 = phi ptr [ %.0.lcssa, %.lr.ph240 ], [ %.5.lcssa, %.loopexit219 ] ; 3 uses
  %.val130 = load ptr, ptr %i.ar, align 8
  %i.ax = getelementptr inbounds [8 x i8], ptr %.val130, i64 %indvars.iv244
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr i8, ptr %i.ay, i64 24
  %.val143 = load ptr, ptr %i.az, align 8         ; 3 uses
  %.val5.val.i171 = load i32, ptr %.val143, align 8
  %i.ba = load i32, ptr @fol_NOT, align 4
  %.not.i172 = icmp eq i32 %.val5.val.i171, %i.ba
  br i1 %.not.i172, label %bb.o, label %clause_LiteralAtom.exit176

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr i8, ptr %.val143, i64 16
  %.val6.i174 = load ptr, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %.val6.i174, i64 8
  %.val6.val.i175 = load ptr, ptr %i.bc, align 8
  br label %clause_LiteralAtom.exit176

clause_LiteralAtom.exit176:                       ; preds = %bb.n, %bb.o
  %.0.i173 = phi ptr [ %.val6.val.i175, %bb.o ], [ %.val143, %bb.n ] ; 3 uses
  %indvars.iv.next245 = add nsw i64 %indvars.iv244, 1 ; 3 uses
  %.not108231.not = icmp slt i64 %indvars.iv244, %i.av
  br i1 %.not108231.not, label %.lr.ph234, label %clause_LiteralAtom.exit176..loopexit219_crit_edge

clause_LiteralAtom.exit176..loopexit219_crit_edge: ; preds = %clause_LiteralAtom.exit176
  %.pre255 = trunc i64 %indvars.iv.next245 to i32
  br label %.loopexit219

.lr.ph234:                                        ; preds = %clause_LiteralAtom.exit176
  %i.bd = getelementptr i8, ptr %.0.i173, i64 16  ; 2 uses
  %i.be = inttoptr i64 %indvars.iv244 to ptr
  %i.bf = trunc i64 %indvars.iv.next245 to i32    ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph234, %bb.v
  %.291232 = phi i32 [ %i.bf, %.lr.ph234 ], [ %i.by, %bb.v ] ; 3 uses
  %.val129 = load ptr, ptr %i.ar, align 8
  %i.bg = sext i32 %.291232 to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %.val129, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr i8, ptr %i.bi, i64 24
  %.val142 = load ptr, ptr %i.bj, align 8         ; 3 uses
  %.val5.val.i177 = load i32, ptr %.val142, align 8
  %i.bk = load i32, ptr @fol_NOT, align 4
  %.not.i178 = icmp eq i32 %.val5.val.i177, %i.bk
  br i1 %.not.i178, label %bb.q, label %clause_LiteralAtom.exit182

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr i8, ptr %.val142, i64 16
  %.val6.i180 = load ptr, ptr %i.bl, align 8
  %i.bm = getelementptr i8, ptr %.val6.i180, i64 8
  %.val6.val.i181 = load ptr, ptr %i.bm, align 8
  br label %clause_LiteralAtom.exit182

clause_LiteralAtom.exit182:                       ; preds = %bb.p, %bb.q
  %.0.i179 = phi ptr [ %.val6.val.i181, %bb.q ], [ %.val142, %bb.p ] ; 3 uses
  %i.bn = tail call i32 @term_Equal(ptr noundef %.0.i179, ptr noundef %.0.i173) #14
  %.not109 = icmp eq i32 %i.bn, 0
  br i1 %.not109, label %bb.r, label %.thread263

bb.r:                                             ; preds = %clause_LiteralAtom.exit182
  %.val148 = load i32, ptr %.0.i173, align 8      ; 2 uses
  %i.bo = load i32, ptr @fol_EQUALITY, align 4
  %.not215 = icmp eq i32 %.val148, %i.bo
  br i1 %.not215, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.val147 = load i32, ptr %.0.i179, align 8
  %.not216 = icmp eq i32 %.val147, %.val148
  br i1 %.not216, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.val136 = load ptr, ptr %i.bd, align 8
  %i.bp = getelementptr i8, ptr %.val136, i64 8
  %.val136.val = load ptr, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %.0.i179, i64 16  ; 2 uses
  %.val155 = load ptr, ptr %i.bq, align 8
  %.val155.val = load ptr, ptr %.val155, align 8
  %i.br = getelementptr i8, ptr %.val155.val, i64 8
  %.val155.val.val = load ptr, ptr %i.br, align 8
  %i.bs = tail call i32 @term_Equal(ptr noundef %.val136.val, ptr noundef %.val155.val.val) #14
  %.not112 = icmp eq i32 %i.bs, 0
  br i1 %.not112, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val135 = load ptr, ptr %i.bq, align 8
  %i.bt = getelementptr i8, ptr %.val135, i64 8
  %.val135.val = load ptr, ptr %i.bt, align 8
  %.val154 = load ptr, ptr %i.bd, align 8
  %.val154.val = load ptr, ptr %.val154, align 8
  %i.bu = getelementptr i8, ptr %.val154.val, i64 8
  %.val154.val.val = load ptr, ptr %i.bu, align 8
  %i.bv = tail call i32 @term_Equal(ptr noundef %.val135.val, ptr noundef %.val154.val.val) #14
  %.not113 = icmp eq i32 %i.bv, 0
  br i1 %.not113, label %bb.v, label %.thread263

.thread263:                                       ; preds = %clause_LiteralAtom.exit182, %bb.u
  %i.bw = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.be, ptr %i.bx, align 8
  store ptr %.4238, ptr %i.bw, align 8
  br label %.loopexit219

bb.v:                                             ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  %i.by = add nsw i32 %.291232, 1
  %.not108.not = icmp slt i32 %.291232, %i.aq
  br i1 %.not108.not, label %bb.p, label %.loopexit219, !llvm.loop !103

._crit_edge241.loopexit:                          ; preds = %.loopexit219
  %.val3.i.pre = load i32, ptr %i.a, align 8      ; 2 uses
  %.val.i.pre = load i32, ptr %i.b, align 4       ; 2 uses
  %.val4.i.pre = load i32, ptr %i.an, align 8
  %.pre = add nsw i32 %.val.i.pre, %.val3.i.pre
  br label %._crit_edge241

._crit_edge241:                                   ; preds = %._crit_edge241.loopexit, %._crit_edge
  %.pre-phi = phi i32 [ %.pre, %._crit_edge241.loopexit ], [ %i.ao, %._crit_edge ]
  %.val4.i = phi i32 [ %.val4.i.pre, %._crit_edge241.loopexit ], [ %.val4.i.i, %._crit_edge ]
  %.val.i = phi i32 [ %.val.i.pre, %._crit_edge241.loopexit ], [ %.val.i.i, %._crit_edge ]
  %.val3.i = phi i32 [ %.val3.i.pre, %._crit_edge241.loopexit ], [ %.val3.i.i, %._crit_edge ]
  %.4.lcssa = phi ptr [ %.5.lcssa, %._crit_edge241.loopexit ], [ %.0.lcssa, %._crit_edge ] ; 7 uses
  %i.bz = add nsw i32 %.pre-phi, %.val4.i
  %i.ca = icmp eq i32 %i.bz, 1
  %i.cb = icmp eq i32 %.val.i, 1
  %or.cond = and i1 %i.cb, %i.ca
  br i1 %or.cond, label %bb.w, label %list_PointerMember.exit

bb.w:                                             ; preds = %._crit_edge241
  %i.cc = sext i32 %.val3.i to i64                ; 2 uses
  %i.cd = inttoptr i64 %i.cc to ptr
  %.not6.i = icmp eq ptr %.4.lcssa, null
  br i1 %.not6.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %bb.x
  %.047.i = phi ptr [ %.04.val5.i, %bb.x ], [ %.4.lcssa, %bb.w ] ; 2 uses
  %i.ce = getelementptr i8, ptr %.047.i, i64 8
  %.04.val.i = load ptr, ptr %i.ce, align 8
  %i.cf = icmp eq ptr %.04.val.i, %i.cd
  br i1 %i.cf, label %list_PointerMember.exit, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i
  %.04.val5.i = load ptr, ptr %.047.i, align 8    ; 2 uses
  %.not.i183 = icmp eq ptr %.04.val5.i, null
  br i1 %.not.i183, label %.loopexit, label %.lr.ph.i, !llvm.loop !4

.loopexit:                                        ; preds = %bb.x, %bb.w
  %i.cg = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %.val164 = load ptr, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds [8 x i8], ptr %.val164, i64 %i.cc
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr i8, ptr %i.ci, i64 24
  %.val1.i = load ptr, ptr %i.cj, align 8         ; 2 uses
  %.val5.val.i.i = load i32, ptr %.val1.i, align 8 ; 2 uses
  %i.ck = load i32, ptr @fol_NOT, align 4         ; 2 uses
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.ck
  br i1 %.not.i.i, label %bb.y, label %clause_GetLiteralAtom.exit

bb.y:                                             ; preds = %.loopexit
  %i.cl = getelementptr i8, ptr %.val1.i, i64 16
  %.val6.i.i = load ptr, ptr %i.cl, align 8
  %i.cm = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.cm, align 8
  %.val146.pre = load i32, ptr %.val6.val.i.i, align 8
  br label %clause_GetLiteralAtom.exit

clause_GetLiteralAtom.exit:                       ; preds = %.loopexit, %bb.y
  %.val146 = phi i32 [ %.val146.pre, %bb.y ], [ %.val5.val.i.i, %.loopexit ]
  %i.cn = load i32, ptr @fol_EQUALITY, align 4
  %.not217 = icmp eq i32 %.val146, %i.cn
  br i1 %.not217, label %bb.z, label %list_PointerMember.exit

bb.z:                                             ; preds = %clause_GetLiteralAtom.exit
  %i.co = load i32, ptr @cont_BINDINGS, align 4
  %i.cp = load i32, ptr @cont_STACKPOINTER, align 4 ; 2 uses
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr @cont_STACKPOINTER, align 4
  %i.cr = sext i32 %i.cp to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr @cont_STACK, i64 %i.cr
  store i32 %i.co, ptr %i.cs, align 4
  store i32 0, ptr @cont_BINDINGS, align 4
  %i.ct = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val161 = load i32, ptr %i.a, align 8
  %.val128 = load ptr, ptr %i.cg, align 8
  %i.cu = sext i32 %.val161 to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %.val128, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr i8, ptr %i.cw, i64 24
  %.val141 = load ptr, ptr %i.cx, align 8         ; 3 uses
  %.val5.val.i185 = load i32, ptr %.val141, align 8
  %.not.i186 = icmp eq i32 %.val5.val.i185, %i.ck
end_hunk_5
