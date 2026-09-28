Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/forward?download=true
inline.NumInlined: 58
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@kissat_forward_subsume_during_elimination:bb.a
  %i.vt = sub i64 %i.vr, %i.vs
  %i.vu = ashr exact i64 %i.vt, 2
  call void @kissat_dealloc(ptr noundef %0, ptr noundef %i.vp, i64 noundef %i.vu, i64 noundef 4) #7
  %i.vv = load i8, ptr %i.ae, align 1, !tbaa !103, !range !104, !noundef !105
  %i.vw = trunc nuw i8 %i.vv to i1
  %.not86.i = icmp eq i32 %.4.lcssa.i, 0
  %.0.i = select i1 %i.vw, i1 true, i1 %.not86.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %bb.ch

bb.ch:                                            ; preds = %forward_subsume_all_clauses.exit, %remove_all_duplicated_binary_clauses.exit
  %.0 = phi i1 [ true, %remove_all_duplicated_binary_clauses.exit ], [ %.0.i, %forward_subsume_all_clauses.exit ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_duplicated_binaries_with_literal(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.i = getelementptr i8, ptr %0, i64 840        ; 2 uses
  %.val68 = load ptr, ptr %i.i, align 8, !tbaa !74
  %.val69 = load i32, ptr %i.d, align 4, !tbaa !75
  %i.j = zext i32 %.val69 to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.val68, i64 %i.j ; 6 uses
  %i.l = getelementptr i8, ptr %i.d, i64 4
  %.val72 = load i32, ptr %i.l, align 4, !tbaa !73 ; 2 uses
  %i.m = zext i32 %.val72 to i64
  %.idx = shl nuw nsw i64 %i.m, 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx ; 2 uses
  %.not73 = icmp eq i32 %.val72, 0
  br i1 %.not73, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 512
  br label %bb.b

.preheader:                                       ; preds = %bb.k
  %.not6276 = icmp eq ptr %i.k, %.2
  br i1 %.not6276, label %._crit_edge, label %.lr.ph78

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.05775 = phi ptr [ %i.k, %.lr.ph ], [ %i.s, %bb.k ] ; 2 uses
  %.05874 = phi ptr [ %i.k, %.lr.ph ], [ %.2, %bb.k ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05874, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05775, i64 4 ; 2 uses
  %i.t = load i32, ptr %.05775, align 4, !tbaa !63 ; 2 uses
  store i32 %i.t, ptr %.05874, align 4, !tbaa !63
  %i.u = and i32 %i.t, 2147483647                 ; 5 uses
  %i.v = lshr i32 %i.u, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.w
  %i.y = load i16, ptr %i.x, align 4
  %i.z = and i16 %i.y, 257
  %or.cond.not = icmp eq i16 %i.z, 257
  br i1 %or.cond.not, label %bb.c, label %bb.k, !llvm.loop !122

bb.c:                                             ; preds = %bb.b
  %i.aa = zext nneg i32 %i.u to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !63
  %.not64 = icmp eq i8 %i.ac, 0
  br i1 %.not64, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp ult i32 %1, %i.u
  br i1 %i.ad, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  tail call void @kissat_delete_binary(ptr noundef %0, i32 noundef %1, i32 noundef %i.u) #7
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.ae = xor i32 %i.u, 1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !63
  %.not65 = icmp eq i8 %i.ah, 0
  br i1 %.not65, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !59  ; 2 uses
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !124
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %0, ptr noundef nonnull %i.q, i64 noundef 4) #7
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !59
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.al = phi ptr [ %.pre, %bb.h ], [ %i.ai, %bb.g ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store ptr %i.am, ptr %i.o, align 8, !tbaa !59
  store i32 %1, ptr %i.al, align 4, !tbaa !62
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  store i8 1, ptr %i.ab, align 1, !tbaa !63
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e, %bb.d, %bb.b
  %.2 = phi ptr [ %i.r, %bb.j ], [ %i.r, %bb.b ], [ %.05874, %bb.e ], [ %.05874, %bb.d ] ; 5 uses
  %.not = icmp eq ptr %i.s, %i.n
  br i1 %.not, label %.preheader, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph78, %bb.a, %.preheader
  %.058.lcssa87 = phi ptr [ %i.k, %bb.a ], [ %.2, %.preheader ], [ %.2, %.lr.ph78 ] ; 2 uses
  %i.an = icmp eq ptr %.058.lcssa87, %i.n
  br i1 %i.an, label %bb.m, label %bb.l

.lr.ph78:                                         ; preds = %.preheader, %.lr.ph78
  %.05677 = phi ptr [ %i.as, %.lr.ph78 ], [ %i.k, %.preheader ] ; 2 uses
  %i.ao = load i32, ptr %.05677, align 4
  %i.ap = and i32 %i.ao, 2147483647
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.aq
  store i8 0, ptr %i.ar, align 1, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %.05677, i64 4 ; 2 uses
  %.not62 = icmp eq ptr %i.as, %.2
  br i1 %.not62, label %._crit_edge, label %.lr.ph78, !llvm.loop !123

bb.l:                                             ; preds = %._crit_edge
  %i.at = ptrtoint ptr %.058.lcssa87 to i64
  %.val = load ptr, ptr %i.i, align 8, !tbaa !74
  %.val67 = load i32, ptr %i.d, align 4, !tbaa !75
  %i.au = zext i32 %.val67 to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.au
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.at, %i.aw
  %i.ay = ashr exact i64 %i.ax, 2
  tail call void @kissat_resize_vector(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef %i.ay) #7
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.l
  ret void
}

declare void @kissat_learned_unit(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @kissat_flush_units_while_connected(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @kissat_delete_binary(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @kissat_stack_enlarge(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @kissat_resize_vector(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @kissat_dealloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @kissat_mark_clause_as_garbage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @kissat_malloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @kissat_free(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i1 @forward_literal(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val141 = load i32, ptr %i.e, align 4, !tbaa !73 ; 2 uses
  %i.f = add i32 %.val141, -1001
  %or.cond = icmp ult i32 %i.f, -1000
  br i1 %or.cond, label %bb.r, label %.lr.ph188.preheader

.lr.ph188.preheader:                              ; preds = %bb.a
  %i.g = zext nneg i32 %.val141 to i64            ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 840        ; 2 uses
  %.val136 = load ptr, ptr %i.h, align 8, !tbaa !74 ; 2 uses
  %.val137 = load i32, ptr %i.d, align 4, !tbaa !75
  %i.i = zext i32 %.val137 to i64                 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val136, i64 %i.i ; 3 uses
  %.idx = shl nuw nsw i64 %i.g, 2                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 4 uses
  %4 = add nuw nsw i64 %i.g, 31
  %5 = lshr i64 %4, 5
  %6 = add nuw nsw i64 %5, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !69   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !64
  br label %.lr.ph188

.lr.ph188:                                        ; preds = %.lr.ph188.preheader, %.thread151
  %.095187 = phi i64 [ %.398, %.thread151 ], [ 0, %.lr.ph188.preheader ] ; 6 uses
  %.0100186 = phi i64 [ %.2102, %.thread151 ], [ %6, %.lr.ph188.preheader ] ; 5 uses
  %.0104185 = phi ptr [ %i.s, %.thread151 ], [ %i.j, %.lr.ph188.preheader ] ; 2 uses
  %.0107184 = phi ptr [ %.4111, %.thread151 ], [ %i.j, %.lr.ph188.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0107184, i64 4 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0104185, i64 4 ; 6 uses
  %i.t = load i32, ptr %.0104185, align 4, !tbaa !63 ; 4 uses
  store i32 %i.t, ptr %.0107184, align 4, !tbaa !63
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph188
  br i1 %2, label %bb.c, label %.thread151, !llvm.loop !125

bb.c:                                             ; preds = %bb.b
  %i.v = and i32 %i.t, 2147483647                 ; 2 uses
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !63
  %.not131 = icmp eq i8 %i.y, 0
  br i1 %.not131, label %bb.d, label %.thread157.loopexit

bb.d:                                             ; preds = %bb.c
  %i.z = xor i32 %i.v, 1                          ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !63
  %.not132 = icmp eq i8 %i.ac, 0
  br i1 %.not132, label %.thread151, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.z, ptr %3, align 4, !tbaa !62
  br label %.thread157

bb.f:                                             ; preds = %.lr.ph188
  %i.ad = zext nneg i32 %i.t to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ad ; 5 uses
  %i.af = add i64 %.0100186, 1                    ; 5 uses
  %i.ag = load i32, ptr %i.ae, align 4            ; 5 uses
  %i.ah = and i32 %i.ag, 524288
  %.not124 = icmp eq i32 %i.ah, 0
  br i1 %.not124, label %bb.g, label %.thread151, !llvm.loop !125

bb.g:                                             ; preds = %bb.f
  %i.ai = add i64 %.095187, 1                     ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !65 ; 2 uses
  %i.am = zext i32 %i.al to i64
  %.idx216 = shl nuw nsw i64 %i.am, 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx216
  %.not125172 = icmp eq i32 %i.al, 0
  br i1 %.not125172, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.m
  %.088175 = phi ptr [ %i.ba, %bb.m ], [ %i.aj, %bb.g ] ; 2 uses
  %.089174 = phi i32 [ %.3, %bb.m ], [ -1, %bb.g ] ; 3 uses
  %.292173 = phi i8 [ %.494, %bb.m ], [ 1, %bb.g ] ; 3 uses
  %i.ao = load i32, ptr %.088175, align 4, !tbaa !62 ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !63
  %.not126 = icmp eq i8 %i.ar, 0
  br i1 %.not126, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ap
  %i.at = load i8, ptr %i.as, align 1, !tbaa !63  ; 2 uses
  %i.au = icmp slt i8 %i.at, 0
  br i1 %i.au, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not127 = icmp eq i8 %i.at, 0
  br i1 %.not127, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @kissat_mark_clause_as_garbage(ptr noundef %0, ptr noundef nonnull %i.ae) #7
  %.pre = load i32, ptr %i.ae, align 4
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.av = trunc nuw i8 %.292173 to i1
  br i1 %i.av, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.aw = xor i32 %i.ao, 1                        ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !63
  %.not128 = icmp eq i8 %i.az, 0
  br i1 %.not128, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l, %.lr.ph
  %.494 = phi i8 [ %.292173, %.lr.ph ], [ %.292173, %bb.h ], [ 0, %bb.l ] ; 2 uses
  %.3 = phi i32 [ %.089174, %.lr.ph ], [ %.089174, %bb.h ], [ %i.aw, %bb.l ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.088175, i64 4 ; 2 uses
  %.not125 = icmp eq ptr %i.ba, %i.an
  br i1 %.not125, label %.critedge, label %.lr.ph, !llvm.loop !126

.critedge:                                        ; preds = %bb.m, %bb.k, %bb.l, %bb.g, %bb.j
  %i.bb = phi i32 [ %.pre, %bb.j ], [ %i.ag, %bb.g ], [ %i.ag, %bb.l ], [ %i.ag, %bb.k ], [ %i.ag, %bb.m ]
  %.5 = phi i8 [ 0, %bb.j ], [ 1, %bb.g ], [ %.494, %bb.m ], [ 0, %bb.k ], [ 0, %bb.l ] ; 2 uses
  %.4 = phi i32 [ -1, %bb.j ], [ -1, %bb.g ], [ %.3, %bb.m ], [ -1, %bb.k ], [ %.089174, %bb.l ] ; 2 uses
  %i.bc = and i32 %i.bb, 524288
  %.not129 = icmp eq i32 %i.bc, 0
  br i1 %.not129, label %bb.n, label %.thread157.loopexit

bb.n:                                             ; preds = %.critedge
  %i.bd = trunc nuw i8 %.5 to i1
  br i1 %i.bd, label %.thread157.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not130 = icmp eq i32 %.4, -1
  br i1 %.not130, label %.thread151, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.4, ptr %3, align 4, !tbaa !62
  br label %.thread151

.thread151:                                       ; preds = %bb.f, %bb.d, %bb.p, %bb.o, %bb.b
  %.4111 = phi ptr [ %i.r, %bb.b ], [ %i.r, %bb.p ], [ %i.r, %bb.o ], [ %i.r, %bb.d ], [ %.0107184, %bb.f ] ; 2 uses
  %.2102 = phi i64 [ %.0100186, %bb.b ], [ %i.af, %bb.p ], [ %i.af, %bb.o ], [ %.0100186, %bb.d ], [ %i.af, %bb.f ] ; 2 uses
  %.398 = phi i64 [ %.095187, %bb.b ], [ %i.ai, %bb.p ], [ %i.ai, %bb.o ], [ %.095187, %bb.d ], [ %.095187, %bb.f ] ; 2 uses
  %.not123 = icmp eq ptr %i.s, %i.k
  br i1 %.not123, label %.thread157.loopexit, label %.lr.ph188

.thread157.loopexit:                              ; preds = %bb.n, %.critedge, %bb.c, %.thread151
  %.lcssa218 = phi ptr [ %i.s, %bb.n ], [ %i.s, %.critedge ], [ %i.s, %bb.c ], [ %i.k, %.thread151 ]
  %.5112.ph = phi ptr [ %i.r, %bb.n ], [ %.0107184, %.critedge ], [ %i.r, %bb.c ], [ %.4111, %.thread151 ]
  %.3103.ph = phi i64 [ %i.af, %bb.n ], [ %i.af, %.critedge ], [ %.0100186, %bb.c ], [ %.2102, %.thread151 ]
  %.499.ph = phi i64 [ %i.ai, %bb.n ], [ %i.ai, %.critedge ], [ %.095187, %bb.c ], [ %.398, %.thread151 ]
  %.9.ph = phi i8 [ 1, %bb.n ], [ %.5, %.critedge ], [ 1, %bb.c ], [ 0, %.thread151 ]
  %i.be = trunc nuw i8 %.9.ph to i1
  br label %.thread157

.thread157:                                       ; preds = %.thread157.loopexit, %bb.e
  %.5112 = phi ptr [ %i.r, %bb.e ], [ %.5112.ph, %.thread157.loopexit ] ; 6 uses
  %.1105 = phi ptr [ %i.s, %bb.e ], [ %.lcssa218, %.thread157.loopexit ] ; 6 uses
  %.3103 = phi i64 [ %.0100186, %bb.e ], [ %.3103.ph, %.thread157.loopexit ]
  %.499 = phi i64 [ %.095187, %bb.e ], [ %.499.ph, %.thread157.loopexit ] ; 2 uses
  %.9 = phi i1 [ false, %bb.e ], [ %i.be, %.thread157.loopexit ]
  %.51128 = ptrtoaddr ptr %.5112 to i64
  %.11059 = ptrtoaddr ptr %.1105 to i64           ; 2 uses
  %.not133 = icmp eq ptr %.1105, %.5112
  br i1 %.not133, label %bb.q, label %.preheader

.preheader:                                       ; preds = %.thread157
  %.not134211 = icmp eq ptr %.1105, %i.k
  br i1 %.not134211, label %._crit_edge, label %.lr.ph214.preheader

.lr.ph214.preheader:                              ; preds = %.preheader
  %i.bf = ptrtoaddr ptr %.val136 to i64
  %i.bg = shl nuw nsw i64 %i.i, 2
  %i.bh = add i64 %i.bg, %i.bf
  %i.bi = add i64 %i.bh, %.idx
  %i.bj = add i64 %i.bi, -4
  %i.bk = sub i64 %i.bj, %.11059                  ; 2 uses
  %i.bl = lshr i64 %i.bk, 2
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bk, 44
  %i.bn = sub i64 %.11059, %.51128
  %diff.check = icmp ugt i64 %i.bn, -32
  %or.cond13 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond13, label %.lr.ph214.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph214.preheader
  %n.vec = and i64 %i.bm, 9223372036854775800     ; 3 uses
  %i.bo = shl i64 %n.vec, 2                       ; 2 uses
  %i.bp = getelementptr i8, ptr %.1105, i64 %i.bo
  %i.bq = getelementptr i8, ptr %.5112, i64 %i.bo ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.1105, i64 %i.br ; 2 uses
  %next.gep10 = getelementptr i8, ptr %.5112, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !63
  %wide.load11 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !63
  %i.bt = getelementptr i8, ptr %next.gep10, i64 16
  store <4 x i32> %wide.load, ptr %next.gep10, align 4, !tbaa !63
  store <4 x i32> %wide.load11, ptr %i.bt, align 4, !tbaa !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph214.preheader14

.lr.ph214.preheader14:                            ; preds = %.lr.ph214.preheader, %middle.block
  %.2106213.ph = phi ptr [ %.1105, %.lr.ph214.preheader ], [ %i.bp, %middle.block ]
  %.6113212.ph = phi ptr [ %.5112, %.lr.ph214.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph214

.lr.ph214:                                        ; preds = %.lr.ph214.preheader14, %.lr.ph214
end_hunk_0
