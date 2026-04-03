begin_hunk_0
bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %i.q = phi ptr [ %i.j, %bb.e ], [ %i.l, %bb.h ], [ %i.l, %bb.g ] ; 7 uses
  %.095 = phi i64 [ 0, %bb.e ], [ %i.p, %bb.h ], [ %i.k, %bb.g ]
  %.074 = phi i8 [ 0, %bb.e ], [ 0, %bb.h ], [ 1, %bb.g ] ; 3 uses
  %.095.fr = freeze i64 %.095                     ; 5 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp ult ptr %i.q, %1
  br i1 %i.s, label %bb.j, label %bb.w
end_hunk_0
begin_hunk_1

bb.w:                                             ; preds = %.loopexit128, %bb.j, %bb.i
  %i.ay = phi ptr [ %i.q, %bb.i ], [ %i.q, %bb.j ], [ %storemerge.lcssa, %.loopexit128 ] ; 4 uses
  %.390 = phi i64 [ 0, %bb.i ], [ 0, %bb.j ], [ %.087.lcssa, %.loopexit128 ] ; 4 uses
  %.382 = phi i64 [ 1, %bb.i ], [ 1, %bb.j ], [ %.079.lcssa, %.loopexit128 ] ; 3 uses
  %.3 = phi i64 [ %2, %bb.i ], [ %2, %bb.j ], [ %.067.lcssa, %.loopexit128 ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 3 uses
end_hunk_1
begin_hunk_2

bb.y:                                             ; preds = %bb.x, %bb.x
  store ptr %i.az, ptr %i.b, align 8, !tbaa !26
  %i.bc = call fastcc i64 @PS_Conv_ToInt(ptr noundef nonnull %i.b, ptr noundef nonnull %1) ; 4 uses
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !26  ; 2 uses
  %.not112 = icmp eq ptr %i.az, %i.bd
  br i1 %.not112, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %3 = icmp slt i64 %i.bc, 1001
  %i.be = icmp sgt i64 %i.bc, -1001
  %.276 = select i1 %3, i8 %.074, i8 1
  %4 = add i64 %i.bc, 1000
  %5 = icmp ult i64 %4, 2001
  %spec.select118.a = select i1 %5, i64 %i.bc, i64 0
  %.5 = add nsw i64 %spec.select118.a, %.3
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.w
  %i.bf = phi ptr [ %i.bd, %bb.z ], [ %i.ay, %bb.x ], [ %i.ay, %bb.w ]
  %.377 = phi i8 [ %.276, %bb.z ], [ %.074, %bb.x ], [ %.074, %bb.w ]
  %.273 = phi i1 [ %i.be, %bb.z ], [ true, %bb.x ], [ true, %bb.w ]
  %.6 = phi i64 [ %.5, %bb.z ], [ %.3, %bb.x ], [ %.3, %bb.w ] ; 4 uses
  store ptr %i.bf, ptr %0, align 8, !tbaa !26
  %i.bg = icmp ne i64 %.095.fr, 0
  %i.bh = icmp ne i64 %.390, 0
  %or.cond8 = select i1 %i.bg, i1 true, i1 %i.bh
  br i1 %or.cond8, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %.not113 = icmp eq i8 %.377, 0
  br i1 %.not113, label %bb.ac, label %.loopexit.a

bb.ac:                                            ; preds = %bb.ab
  br i1 %.273, label %.preheader126, label %.critedge

.preheader126:                                    ; preds = %bb.ac
end_hunk_2
begin_hunk_3
  %i.ca = add nsw i64 %i.bz, %.297.lcssa
  br label %.loopexit.a

.loopexit.a:                                      ; preds = %.lr.ph223, %bb.ae, %bb.ab, %._crit_edge, %bb.am
  %.398 = phi i64 [ %.297.lcssa, %._crit_edge ], [ %i.ca, %bb.am ], [ 2147483647, %bb.ab ], [ 2147483647, %bb.ae ], [ 2147483647, %.lr.ph223 ] ; 2 uses
  %i.cb = sub nsw i64 0, %.398
  %spec.select = select i1 %.078, i64 %.398, i64 %i.cb
  br label %.critedge

.critedge:                                        ; preds = %bb.al, %bb.y, %bb.ac, %bb.c, %bb.a, %bb.aa, %bb.f, %bb.d, %bb.d, %.loopexit.a
  %.1 = phi i64 [ 0, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.d ], [ %spec.select, %.loopexit.a ], [ 0, %bb.c ], [ 0, %bb.ac ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.a ], [ 0, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret i64 %.1
}
end_hunk_3
