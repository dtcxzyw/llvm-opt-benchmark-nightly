Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/graph_generator?download=true
inline.NumInlined: 50
inline.NumDeleted: 22
begin_hunk_0_@makeTetrix:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.val2528 = load i64, ptr %i.b, align 8, !tbaa !25 ; 2 uses
  %i.c = icmp ugt i64 %.val2528, 1
  br i1 %i.c, label %.lr.ph31, label %.preheader

.preheader:                                       ; preds = %._crit_edge, %bb.a
  %.val32 = phi i64 [ %.val2528, %bb.a ], [ %.val25, %._crit_edge ]
  %.not36 = icmp eq i64 %.val32, 0
  br i1 %.not36, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.d

.lr.ph31:                                         ; preds = %bb.a, %._crit_edge
  %i.e = phi i64 [ %i.k, %._crit_edge ], [ 1, %bb.a ]
  %.02029 = phi i32 [ %i.j, %._crit_edge ], [ 1, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !26
  %i.g = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.e) #15
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.g ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16       ; 2 uses
  %.val2426 = load i64, ptr %i.i, align 8, !tbaa !25
  %.not = icmp eq i64 %.val2426, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %.lr.ph31
  %i.j = add i32 %.02029, 1                       ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %.val25 = load i64, ptr %i.b, align 8, !tbaa !25 ; 2 uses
  %i.l = icmp ugt i64 %.val25, %i.k
  br i1 %i.l, label %.lr.ph31, label %.preheader, !llvm.loop !65

.lr.ph:                                           ; preds = %.lr.ph31, %bb.c
  %.01927 = phi i64 [ %i.r, %bb.c ], [ 0, %.lr.ph31 ] ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.n = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.h, i64 noundef %.01927) #15
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27   ; 2 uses
  %i.q = icmp ult i32 %.02029, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void %1(i32 noundef %.02029, i32 noundef %i.p) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.r = add nuw i64 %.01927, 1                   ; 2 uses
  %.val24 = load i64, ptr %i.i, align 8, !tbaa !25
  %i.s = icmp ult i64 %i.r, %.val24
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !66

._crit_edge35:                                    ; preds = %bb.g, %.preheader
  call void @gv_list_clear_(ptr noundef nonnull %2, i64 noundef 48) #15
  call void @gv_list_free_(ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.d:                                             ; preds = %.lr.ph34, %bb.g
  %.033 = phi i64 [ 0, %.lr.ph34 ], [ %i.y, %bb.g ] ; 2 uses
  %i.t = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.033) #15
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %magicptr = ptrtoint ptr %i.u to i64
  switch i64 %magicptr, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite = call i64 @fwrite(ptr nonnull @.str.3, i64 66, i64 1, ptr %i.v) #17 ; 0 uses
  call void @abort() #18
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %2, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %i.t
  call void %i.u(ptr noundef byval(%struct.vtx_data) align 8 %i.x) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.y = add nuw i64 %.033, 1                     ; 2 uses
  %.val = load i64, ptr %i.b, align 8, !tbaa !25
  %i.z = icmp ult i64 %i.y, %.val
  br i1 %i.z, label %bb.d, label %._crit_edge35, !llvm.loop !67
}

; Function Attrs: nounwind uwtable
define internal fastcc void @constructTetrix(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %5) unnamed_addr #0 {
bb.a:
  %.not65 = icmp eq i32 %4, 0
  br i1 %.not65, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %.tr6370 = phi i32 [ %i.h, %tailrecurse ], [ %4, %bb.a ]
  %.tr6269 = phi i32 [ %i.g, %tailrecurse ], [ %3, %bb.a ] ; 2 uses
  %.tr6168 = phi i32 [ %i.f, %tailrecurse ], [ %2, %bb.a ]
  %.tr6067 = phi i32 [ %i.e, %tailrecurse ], [ %1, %bb.a ]
  %.tr66 = phi i32 [ %.tr6269, %tailrecurse ], [ %0, %bb.a ]
  %i.a = load i32, ptr @constructTetrix.last_used_node_name, align 4, !tbaa !27 ; 6 uses
  %i.b = add i32 %i.a, 1                          ; 2 uses
  %i.c = add i32 %i.a, 2                          ; 2 uses
  %i.d = add i32 %i.a, 3                          ; 2 uses
  %i.e = add i32 %i.a, 4                          ; 3 uses
  %i.f = add i32 %i.a, 5                          ; 3 uses
  %i.g = add i32 %i.a, 6                          ; 4 uses
  store i32 %i.g, ptr @constructTetrix.last_used_node_name, align 4, !tbaa !27
  %i.h = add i32 %.tr6370, -1                     ; 5 uses
  tail call fastcc void @constructTetrix(i32 noundef %.tr66, i32 noundef %i.b, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.h, ptr noundef %5)
  tail call fastcc void @constructTetrix(i32 noundef %.tr6067, i32 noundef %i.c, i32 noundef %i.d, i32 noundef %i.f, i32 noundef %i.h, ptr noundef %5)
  tail call fastcc void @constructTetrix(i32 noundef %.tr6168, i32 noundef %i.b, i32 noundef %i.d, i32 noundef %i.g, i32 noundef %i.h, ptr noundef %5)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi i32 [ %0, %bb.a ], [ %.tr6269, %tailrecurse ] ; 4 uses
  %.tr60.lcssa = phi i32 [ %1, %bb.a ], [ %i.e, %tailrecurse ] ; 4 uses
  %.tr61.lcssa = phi i32 [ %2, %bb.a ], [ %i.f, %tailrecurse ] ; 4 uses
  %.tr62.lcssa = phi i32 [ %3, %bb.a ], [ %i.g, %tailrecurse ] ; 4 uses
  %i.i = zext i32 %.tr.lcssa to i64               ; 3 uses
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.i, i32 noundef %.tr60.lcssa)
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.i, i32 noundef %.tr61.lcssa)
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.i, i32 noundef %.tr62.lcssa)
  %i.j = zext i32 %.tr60.lcssa to i64             ; 3 uses
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.j, i32 noundef %.tr.lcssa)
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.j, i32 noundef %.tr61.lcssa)
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.j, i32 noundef %.tr62.lcssa)
  %i.k = zext i32 %.tr61.lcssa to i64             ; 3 uses
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.k, i32 noundef %.tr.lcssa)
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.k, i32 noundef %.tr60.lcssa)
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.k, i32 noundef %.tr62.lcssa)
  %i.l = zext i32 %.tr62.lcssa to i64             ; 3 uses
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.l, i32 noundef %.tr.lcssa)
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.l, i32 noundef %.tr60.lcssa)
  tail call fastcc void @append(ptr noundef %5, i64 noundef %i.l, i32 noundef %.tr61.lcssa)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @makeHypercube(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %.split18.us, label %.preheader.us

.preheader.us:                                    ; preds = %bb.a, %._crit_edge.us
  %.01316.us = phi i32 [ %i.a, %._crit_edge.us ], [ 0, %bb.a ] ; 3 uses
  %i.a = add i32 %.01316.us, 1                    ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.d
  %.015.us = phi i32 [ 0, %.preheader.us ], [ %i.f, %bb.d ] ; 2 uses
  %i.b = shl nuw i32 1, %.015.us
  %i.c = xor i32 %i.b, %.01316.us
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = icmp ult i32 %.01316.us, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void %1(i32 noundef %i.a, i32 noundef %i.d) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = add nuw i32 %.015.us, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.f, %0
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !68

._crit_edge.us:                                   ; preds = %bb.d
  %.013.highbits.us = lshr i32 %i.a, %0
  %i.g = icmp eq i32 %.013.highbits.us, 0
  br i1 %i.g, label %.preheader.us, label %.split18.us, !llvm.loop !69

.split18.us:                                      ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @makeTriMesh(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i32 noundef 1, i32 noundef 0) #15
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  tail call void %1(i32 noundef 1, i32 noundef 2) #15
  tail call void %1(i32 noundef 1, i32 noundef 3) #15
  %i.b = icmp ugt i32 %0, 2
  br i1 %i.b, label %.preheader34, label %.preheader

.preheader34:                                     ; preds = %bb.c, %.peel.next
  %indvars.iv = phi i32 [ %indvars.iv.next, %.peel.next ], [ 3, %bb.c ] ; 3 uses
  %.03138 = phi i32 [ %i.f, %.peel.next ], [ 2, %bb.c ] ; 3 uses
  %.03237 = phi i32 [ %.pre44, %.peel.next ], [ 2, %bb.c ]
  %i.c = add i32 %indvars.iv, -2
  br label %bb.d

.preheader:                                       ; preds = %.peel.next, %bb.c
  %.032.lcssa = phi i32 [ 2, %bb.c ], [ %.pre44, %.peel.next ]
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %umax = tail call i32 @llvm.umax.i32(i32 %0, i32 2)
  br label %.lr.ph

.peel.next:                                       ; preds = %bb.d
  %i.d = add i32 %i.i, %.03138                    ; 2 uses
  tail call void %1(i32 noundef %i.i, i32 noundef %i.d) #15
  %i.e = add i32 %i.d, 1
  tail call void %1(i32 noundef %i.i, i32 noundef %i.e) #15
  %.pre44 = add i32 %.135, 2                      ; 2 uses
  %i.f = add nuw i32 %.03138, 1
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond42.not = icmp eq i32 %indvars.iv, %0
  br i1 %exitcond42.not, label %.preheader, label %.preheader34, !llvm.loop !70

bb.d:                                             ; preds = %.preheader34, %bb.d
  %.03036 = phi i32 [ 1, %.preheader34 ], [ %i.j, %bb.d ] ; 2 uses
  %.135 = phi i32 [ %.03237, %.preheader34 ], [ %i.i, %bb.d ] ; 6 uses
  %i.g = add i32 %.135, %.03138                   ; 2 uses
  tail call void %1(i32 noundef %.135, i32 noundef %i.g) #15
  %i.h = add i32 %i.g, 1
  tail call void %1(i32 noundef %.135, i32 noundef %i.h) #15
  %i.i = add i32 %.135, 1                         ; 5 uses
  tail call void %1(i32 noundef %.135, i32 noundef %i.i) #15
  %i.j = add nuw i32 %.03036, 1
  %exitcond.not = icmp eq i32 %.03036, %i.c
  br i1 %exitcond.not, label %.peel.next, label %bb.d, !llvm.loop !71

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.040 = phi i32 [ %i.l, %.lr.ph ], [ 1, %.lr.ph.preheader ]
  %.239 = phi i32 [ %i.k, %.lr.ph ], [ %.032.lcssa, %.lr.ph.preheader ] ; 2 uses
  %i.k = add i32 %.239, 1                         ; 2 uses
  tail call void %1(i32 noundef %.239, i32 noundef %i.k) #15
  %i.l = add nuw i32 %.040, 1                     ; 2 uses
  %exitcond43.not = icmp eq i32 %i.l, %umax
  br i1 %exitcond43.not, label %.loopexit, label %.lr.ph, !llvm.loop !72

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @makeBall(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not39.i = icmp eq i32 %0, 0
  br i1 %.not39.i, label %makeCylinder.exit, label %.preheader37.lr.ph.i

.preheader37.lr.ph.i:                             ; preds = %bb.a
  %i.a = icmp ugt i32 %1, 1
  br i1 %i.a, label %.preheader37.us.i, label %.preheader37.i

.preheader37.us.i:                                ; preds = %.preheader37.lr.ph.i, %._crit_edge.us.i
  %.03141.us.i = phi i32 [ %i.f, %._crit_edge.us.i ], [ 0, %.preheader37.lr.ph.i ] ; 3 uses
  %.03240.us.i = phi i32 [ %i.g, %._crit_edge.us.i ], [ 1, %.preheader37.lr.ph.i ]
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader37.us.i
  %.03038.us.i = phi i32 [ 1, %.preheader37.us.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.b = add i32 %.03038.us.i, %.03141.us.i       ; 2 uses
  %i.c = add i32 %i.b, 1
  tail call void %2(i32 noundef %i.b, i32 noundef %i.c) #15, !inline_history !75
  %i.d = add nuw i32 %.03038.us.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.d, %1
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.b, !llvm.loop !4

._crit_edge.us.i:                                 ; preds = %bb.b
  %i.e = add i32 %.03141.us.i, 1
  %i.f = add i32 %.03141.us.i, %1                 ; 2 uses
  tail call void %2(i32 noundef %i.e, i32 noundef %i.f) #15, !inline_history !75
  %i.g = add i32 %.03240.us.i, 1                  ; 2 uses
  %.not.us.i = icmp ugt i32 %i.g, %0
  br i1 %.not.us.i, label %.preheader.lr.ph.i, label %.preheader37.us.i, !llvm.loop !5

.preheader37.i:                                   ; preds = %.preheader37.lr.ph.i, %.preheader37.i
  %.03141.i = phi i32 [ %i.i, %.preheader37.i ], [ 0, %.preheader37.lr.ph.i ] ; 2 uses
  %.03240.i = phi i32 [ %i.j, %.preheader37.i ], [ 1, %.preheader37.lr.ph.i ]
  %i.h = add i32 %.03141.i, 1
  %i.i = add i32 %.03141.i, %1                    ; 2 uses
  tail call void %2(i32 noundef %i.h, i32 noundef %i.i) #15, !inline_history !75
  %i.j = add i32 %.03240.i, 1                     ; 2 uses
  %.not.i = icmp ugt i32 %i.j, %0
  br i1 %.not.i, label %.preheader36.i, label %.preheader37.i, !llvm.loop !5

.preheader36.i:                                   ; preds = %.preheader37.i
  %.not3543.i = icmp ne i32 %1, 0
  %i.k = icmp ne i32 %0, 1
  %or.cond.i = and i1 %i.k, %.not3543.i
  br i1 %or.cond.i, label %.preheader.us.i.preheader, label %makeCylinder.exit

.preheader.lr.ph.i:                               ; preds = %._crit_edge.us.i
  %.old.not.i = icmp eq i32 %0, 1
  br i1 %.old.not.i, label %.lr.ph.preheader, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.i, %.preheader36.i
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.us46.i
  %.02944.us.i = phi i32 [ %i.r, %._crit_edge.us46.i ], [ 1, %.preheader.us.i.preheader ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.us.i
  %.042.us.i = phi i32 [ 1, %.preheader.us.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.l = add i32 %.042.us.i, -1
  %i.m = mul i32 %i.l, %1
  %i.n = add i32 %i.m, %.02944.us.i
  %i.o = mul i32 %.042.us.i, %1
  %i.p = add i32 %i.o, %.02944.us.i
  tail call void %2(i32 noundef %i.n, i32 noundef %i.p) #15, !inline_history !75
  %i.q = add nuw i32 %.042.us.i, 1                ; 2 uses
  %exitcond49.not.i = icmp eq i32 %i.q, %0
  br i1 %exitcond49.not.i, label %._crit_edge.us46.i, label %bb.c, !llvm.loop !6

._crit_edge.us46.i:                               ; preds = %bb.c
  %i.r = add i32 %.02944.us.i, 1                  ; 2 uses
  %.not35.us.i = icmp ugt i32 %i.r, %1
  br i1 %.not35.us.i, label %makeCylinder.exit, label %.preheader.us.i, !llvm.loop !7

makeCylinder.exit:                                ; preds = %._crit_edge.us46.i, %bb.a, %.preheader36.i
  %.not23 = icmp eq i32 %1, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.lr.ph.i, %makeCylinder.exit
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %makeCylinder.exit
  %i.s = mul i32 %1, %0                           ; 3 uses
  %i.t = add i32 %i.s, 1
  %i.u = add i32 %0, -1
  %i.v = mul i32 %i.u, %1
  %.025 = add i32 %i.v, 1                         ; 2 uses
  %.not2026 = icmp ugt i32 %.025, %i.s
  br i1 %.not2026, label %._crit_edge30, label %.lr.ph29

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01824 = phi i32 [ %i.w, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  tail call void %2(i32 noundef 0, i32 noundef %.01824) #15
  %i.w = add i32 %.01824, 1                       ; 2 uses
  %.not = icmp ugt i32 %i.w, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !73

._crit_edge30:                                    ; preds = %.lr.ph29, %._crit_edge
  ret void

.lr.ph29:                                         ; preds = %._crit_edge, %.lr.ph29
  %.027 = phi i32 [ %.0, %.lr.ph29 ], [ %.025, %._crit_edge ] ; 2 uses
  tail call void %2(i32 noundef %.027, i32 noundef %i.t) #15
  %.0 = add i32 %.027, 1                          ; 2 uses
  %.not20 = icmp ugt i32 %.0, %i.s
  br i1 %.not20, label %._crit_edge30, label %.lr.ph29, !llvm.loop !74
}

; Function Attrs: nounwind uwtable
define dso_local void @makeRandom(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rand() #15
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.03755 = phi i32 [ 0, %bb.a ], [ %i.d, %bb.b ] ; 4 uses
  %.03854 = phi i32 [ 0, %bb.a ], [ %i.c, %bb.b ]
  %i.b = shl nuw i32 1, %.03755
  %i.c = add i32 %i.b, %.03854                    ; 3 uses
  %i.d = add i32 %.03755, 1
  %.not = icmp ugt i32 %i.c, %0
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !76

bb.c:                                             ; preds = %bb.b
  %.neg = shl nsw i32 -1, %.03755
  %i.e = add i32 %.neg, %i.c                      ; 6 uses
  %i.f = add i32 %.03755, -1                      ; 2 uses
  %i.g = and i32 %i.a, 1
  %.not42 = icmp eq i32 %i.g, 0
  br i1 %.not42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %makeBinaryTree.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.011.i = phi i32 [ %i.j, %.lr.ph.i ], [ 1, %bb.d ] ; 4 uses
  %i.h = shl i32 %.011.i, 1                       ; 2 uses
  tail call void %2(i32 noundef %.011.i, i32 noundef %i.h) #15, !inline_history !79
  %i.i = or disjoint i32 %i.h, 1
  tail call void %2(i32 noundef %.011.i, i32 noundef %i.i) #15, !inline_history !79
  %i.j = add i32 %.011.i, 1                       ; 2 uses
  %.0.highbits.i = lshr i32 %i.j, %i.f
  %.not.not.i = icmp eq i32 %.0.highbits.i, 0
  br i1 %.not.not.i, label %.lr.ph.i, label %makeBinaryTree.exit, !llvm.loop !8

bb.e:                                             ; preds = %bb.c
  switch i32 %i.e, label %.lr.ph.i48 [
    i32 1, label %bb.f
    i32 0, label %._crit_edge60
  ]

bb.f:                                             ; preds = %bb.e
  tail call void %2(i32 noundef 1, i32 noundef 0) #15, !inline_history !31
  br label %._crit_edge60

.lr.ph.i48:                                       ; preds = %bb.e, %.lr.ph.i48
  %.09.i = phi i32 [ %i.l, %.lr.ph.i48 ], [ 2, %bb.e ] ; 3 uses
  %i.k = add i32 %.09.i, -1
  tail call void %2(i32 noundef %i.k, i32 noundef %.09.i) #15, !inline_history !31
  %i.l = add i32 %.09.i, 1                        ; 2 uses
  %.not.i49 = icmp ugt i32 %i.l, %i.e
  br i1 %.not.i49, label %makeBinaryTree.exit, label %.lr.ph.i48, !llvm.loop !0

makeBinaryTree.exit:                              ; preds = %.lr.ph.i, %.lr.ph.i48, %bb.d
  %.not4357 = icmp ult i32 %i.e, 3
  br i1 %.not4357, label %._crit_edge60, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %makeBinaryTree.exit
  %i.m = mul i32 %i.e, %i.e                       ; 2 uses
  %i.n = mul i32 %1, %1                           ; 2 uses
  %invariant.umax = tail call i32 @llvm.umax.i32(i32 %i.n, i32 %1)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.03658 = phi i32 [ 3, %.preheader.lr.ph ], [ %i.w, %._crit_edge ] ; 8 uses
  %i.o = icmp ugt i32 %.03658, 2
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = icmp ult i32 %.03658, 5
  %i.q = add i32 %.03658, 4
  %i.r = icmp ule i32 %i.q, %0
  br i1 %i.p, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %i.s = phi i32 [ %i.v, %bb.h ], [ 2, %.lr.ph ]  ; 2 uses
  %.056.us = phi i32 [ %i.s, %bb.h ], [ 1, %.lr.ph ]
  %i.t = tail call i32 @rand() #15
  %i.u = urem i32 %i.t, %i.m
  %or.cond = icmp ugt i32 %i.u, %invariant.umax
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us
  tail call void %2(i32 noundef %.056.us, i32 noundef %.03658) #15
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us, %bb.g
  %i.v = add nuw i32 %i.s, 1                      ; 2 uses
  %exitcond63.not = icmp eq i32 %i.v, %.03658
  br i1 %exitcond63.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !77

._crit_edge60:                                    ; preds = %._crit_edge, %bb.e, %bb.f, %makeBinaryTree.exit
  ret void

._crit_edge:                                      ; preds = %bb.l, %bb.h, %.preheader
  %i.w = add i32 %.03658, 1                       ; 2 uses
  %.not43 = icmp ugt i32 %i.w, %i.e
  br i1 %.not43, label %._crit_edge60, label %.preheader, !llvm.loop !78

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %i.x = phi i32 [ %i.ac, %bb.l ], [ 2, %.lr.ph ] ; 2 uses
  %.056 = phi i32 [ %i.x, %bb.l ], [ 1, %.lr.ph ] ; 2 uses
  %i.y = tail call i32 @rand() #15
  %i.z = urem i32 %i.y, %i.m                      ; 3 uses
  %.not44 = icmp ugt i32 %i.z, %i.n
  br i1 %.not44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.aa = add i32 %.056, 4
  %i.ab = icmp ule i32 %i.aa, %0
  %or.cond.not52 = or i1 %i.r, %i.ab
  %.not45 = icmp ugt i32 %i.z, %1
  %or.cond47 = and i1 %or.cond.not52, %.not45
  br i1 %or.cond47, label %bb.l, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split
  %.not45.old = icmp ugt i32 %i.z, %1
  br i1 %.not45.old, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  tail call void %2(i32 noundef %.056, i32 noundef %.03658) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %i.ac = add nuw i32 %i.x, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.ac, %.03658
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !77
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @makeMobius(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.4, i32 noundef %0) #16 ; 0 uses
  switch i32 %0, label %.lr.ph.i [
    i32 1, label %makePath.exit.sink.split
    i32 0, label %makePath.exit
  ]

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.09.i = phi i32 [ %i.e, %.lr.ph.i ], [ 2, %bb.b ] ; 3 uses
  %i.d = add i32 %.09.i, -1
  tail call void %2(i32 noundef %i.d, i32 noundef %.09.i) #15, !inline_history !31
  %i.e = add i32 %.09.i, 1                        ; 2 uses
  %.not.i = icmp ugt i32 %i.e, %0
  br i1 %.not.i, label %makePath.exit, label %.lr.ph.i, !llvm.loop !0

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %0, 1
  br i1 %i.f, label %bb.d, label %.preheader67

.preheader67:                                     ; preds = %bb.c
  %i.g = icmp ne i32 %0, 0
  %i.h = icmp ne i32 %1, 0
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %.preheader66, label %.preheader65

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.4, i32 noundef %1) #16 ; 0 uses
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %makePath.exit, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.d, %.lr.ph.i60
  %.09.i61 = phi i32 [ %i.l, %.lr.ph.i60 ], [ 2, %bb.d ] ; 3 uses
  %i.k = add i32 %.09.i61, -1
  tail call void %2(i32 noundef %i.k, i32 noundef %.09.i61) #15, !inline_history !31
  %i.l = add i32 %.09.i61, 1                      ; 2 uses
  %.not.i62 = icmp ugt i32 %i.l, %1
  br i1 %.not.i62, label %makePath.exit, label %.lr.ph.i60, !llvm.loop !0

..loopexit_crit_edge:                             ; preds = %bb.e
  %i.m = add nuw i32 %i.n, 1                      ; 2 uses
  %exitcond75.not = icmp eq i32 %i.m, %0
  br i1 %exitcond75.not, label %.lr.ph, label %.preheader66, !llvm.loop !80

.preheader66:                                     ; preds = %.preheader67, %..loopexit_crit_edge
  %i.n = phi i32 [ %i.m, %..loopexit_crit_edge ], [ 1, %.preheader67 ] ; 3 uses
  %.05669 = phi i32 [ %i.n, %..loopexit_crit_edge ], [ 0, %.preheader67 ]
  %i.o = mul i32 %.05669, %1                      ; 2 uses
  %i.p = mul i32 %i.n, %1
  br label %bb.e

.preheader65:                                     ; preds = %.preheader67
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %..loopexit_crit_edge, %.preheader65
  %i.q = add i32 %0, -1
  %i.r = mul i32 %i.q, %1                         ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %1, i32 2)
  br label %bb.f

bb.e:                                             ; preds = %.preheader66, %bb.e
  %.05568 = phi i32 [ 1, %.preheader66 ], [ %i.u, %bb.e ] ; 3 uses
  %i.s = add i32 %.05568, %i.o                    ; 2 uses
  %i.t = add i32 %.05568, %i.p
  tail call void %2(i32 noundef %i.s, i32 noundef %i.t) #15
  %i.u = add nuw i32 %.05568, 1                   ; 3 uses
  %i.v = add i32 %i.u, %i.o
  tail call void %2(i32 noundef %i.s, i32 noundef %i.v) #15
  %exitcond.not = icmp eq i32 %i.u, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.e, !llvm.loop !81

.preheader:                                       ; preds = %bb.f, %.preheader65
  %.not73 = icmp eq i32 %0, 0
  br i1 %.not73, label %._crit_edge, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %.preheader
  %umax77 = tail call i32 @llvm.umax.i32(i32 %0, i32 2)
  br label %.lr.ph72

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.05470 = phi i32 [ 1, %.lr.ph ], [ %i.x, %bb.f ] ; 2 uses
  %i.w = add i32 %.05470, %i.r
  %i.x = add nuw i32 %.05470, 1                   ; 3 uses
  %i.y = add i32 %i.x, %i.r
  tail call void %2(i32 noundef %i.w, i32 noundef %i.y) #15
  %exitcond76.not = icmp eq i32 %i.x, %umax
  br i1 %exitcond76.not, label %.preheader, label %bb.f, !llvm.loop !82

._crit_edge:                                      ; preds = %.lr.ph72, %.preheader
  %i.z = mul i32 %1, %0
  br label %makePath.exit.sink.split

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %.lr.ph72
  %.071 = phi i32 [ %i.ab, %.lr.ph72 ], [ 1, %.lr.ph72.preheader ] ; 3 uses
  %i.aa = mul i32 %.071, %1                       ; 2 uses
  %i.ab = add nuw i32 %.071, 1                    ; 3 uses
  %i.ac = mul i32 %i.ab, %1
  tail call void %2(i32 noundef %i.aa, i32 noundef %i.ac) #15
  %i.ad = sub nuw i32 %0, %.071
  %i.ae = mul i32 %i.ad, %1
  %i.af = add i32 %i.ae, 1
  tail call void %2(i32 noundef %i.aa, i32 noundef %i.af) #15
  %exitcond78.not = icmp eq i32 %i.ab, %umax77
  br i1 %exitcond78.not, label %._crit_edge, label %.lr.ph72, !llvm.loop !83

makePath.exit.sink.split:                         ; preds = %bb.b, %._crit_edge
  %.sink = phi i32 [ %i.z, %._crit_edge ], [ 0, %bb.b ]
  tail call void %2(i32 noundef 1, i32 noundef %.sink) #15
  br label %makePath.exit

makePath.exit:                                    ; preds = %.lr.ph.i60, %.lr.ph.i, %makePath.exit.sink.split, %bb.d, %bb.b
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @makeTreeGen(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef range(i64 4, 73) 72) #19 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %gv_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.6, i64 noundef 72) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_alloc.exit:                                    ; preds = %bb.a
  store i32 %0, ptr %i.a, align 8, !tbaa !34
  %i.e = add i32 %0, 1                            ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 4 uses
  %i.g = icmp ne i32 %i.e, 0                      ; 2 uses
  %i.h = tail call noalias ptr @calloc(i64 noundef range(i64 0, 4294967296) %i.f, i64 noundef 8) #19 ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  %or.cond3.i.i = and i1 %i.g, %i.i
  br i1 %or.cond3.i.i, label %bb.c, label %gv_calloc.exit.i

bb.c:                                             ; preds = %gv_alloc.exit
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.k = shl nuw nsw i64 %i.f, 3
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.6, i64 noundef %i.k) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit.i:                                 ; preds = %gv_alloc.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.m, align 8, !tbaa !35
  %i.n = icmp ugt i32 %0, 1
  br i1 %i.n, label %.preheader.preheader.i, label %genCnt.exit

.preheader.preheader.i:                           ; preds = %gv_calloc.exit.i
  %wide.trip.count85.i = zext i32 %0 to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.preheader.i
  %indvars.iv80.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next81.i, %bb.d ] ; 3 uses
  %indvars.iv78.i = phi i64 [ 2, %.preheader.preheader.i ], [ %indvars.iv.next79.i, %bb.d ] ; 2 uses
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 4 uses
  %i.o = trunc nuw i64 %indvars.iv.next81.i to i32
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.p = udiv i64 %i.am, %indvars.iv80.i
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next81.i
  store i64 %i.p, ptr %i.q, align 8, !tbaa !35
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1
  %exitcond86.not.i = icmp eq i64 %indvars.iv.next81.i, %wide.trip.count85.i
  br i1 %exitcond86.not.i, label %genCnt.exit, label %.preheader.i, !llvm.loop !84

bb.e:                                             ; preds = %._crit_edge.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 6 uses
  %.02953.i = phi i64 [ 0, %.preheader.i ], [ %i.am, %._crit_edge.i ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35   ; 2 uses
  %i.t = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.s, i64 %indvars.iv.i) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.u, label %bb.f, label %.lr.ph.preheader.i

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.7, i64 noundef %i.s, i64 noundef %indvars.iv.i) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.x = extractvalue { i64, i1 } %i.t, 0         ; 2 uses
  %i.y = trunc nuw i64 %indvars.iv.i to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %uadd.exit.i, %.lr.ph.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %uadd.exit.i ], [ 1, %.lr.ph.preheader.i ] ; 2 uses
  %.02751.i = phi i32 [ %i.z, %uadd.exit.i ], [ %i.o, %.lr.ph.preheader.i ]
  %.150.i = phi i64 [ %i.am, %uadd.exit.i ], [ %.02953.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.z = sub nuw i32 %.02751.i, %i.y              ; 2 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !35 ; 2 uses
  %i.ad = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ac, i64 %i.x) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.g, label %umul.exit33.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.7, i64 noundef %i.ac, i64 noundef %i.x) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

umul.exit33.i:                                    ; preds = %.lr.ph.i
  %i.ah = extractvalue { i64, i1 } %i.ad, 0       ; 2 uses
  %i.ai = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.150.i, i64 %i.ah) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.aj, label %bb.h, label %uadd.exit.i

bb.h:                                             ; preds = %umul.exit33.i
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.8, i64 noundef %.150.i, i64 noundef %i.ah) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

uadd.exit.i:                                      ; preds = %umul.exit33.i
  %i.am = extractvalue { i64, i1 } %i.ai, 0       ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not31.i = icmp samesign ugt i64 %indvars.iv80.i, %indvars.iv
  %.not32.i = icmp samesign ult i64 %indvars.iv.i, %i.aa
  %or.cond.i = and i1 %.not31.i, %.not32.i
  br i1 %or.cond.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !85

._crit_edge.i:                                    ; preds = %uadd.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv78.i
  br i1 %exitcond.i, label %bb.d, label %bb.e, !llvm.loop !86

genCnt.exit:                                      ; preds = %bb.d, %gv_calloc.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.an, align 8, !tbaa !36
  %i.ao = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef range(i64 4, 73) 16) #19 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.i, label %gv_alloc.exit.i

bb.i:                                             ; preds = %genCnt.exit
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.6, i64 noundef 16) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_alloc.exit.i:                                  ; preds = %genCnt.exit
  %i.as = tail call noalias ptr @calloc(i64 noundef range(i64 0, 4294967296) %i.f, i64 noundef 4) #19 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  %or.cond3.i.i7 = and i1 %i.g, %i.at
  br i1 %or.cond3.i.i7, label %bb.j, label %mkTree.exit

bb.j:                                             ; preds = %gv_alloc.exit.i
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.av = shl nuw nsw i64 %i.f, 2
  %i.aw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.6, i64 noundef %i.av) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

mkTree.exit:                                      ; preds = %gv_alloc.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.ao, ptr %i.ay, align 8, !tbaa !40
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local void @makeRandomTree(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  %i.b = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val50 = load i64, ptr %i.b, align 8, !tbaa !25
  %.not = icmp eq i64 %.val50, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.m

._crit_edge:                                      ; preds = %bb.p, %bb.a
  tail call void @gv_list_clear_(ptr noundef nonnull %i.a, i64 noundef 4) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 6 uses
  store i32 0, ptr %i.f, align 4, !tbaa !93
  store i32 0, ptr %i.e, align 8, !tbaa !94
  %i.g = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 16 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge98.i, %._crit_edge
  %.046.i = phi i32 [ %i.g, %._crit_edge ], [ %.lcssa85.i, %._crit_edge98.i ] ; 3 uses
  %i.m = icmp ugt i32 %.046.i, 2
  br i1 %i.m, label %.lr.ph94.i, label %._crit_edge.i

.lr.ph94.i:                                       ; preds = %bb.b, %.thread.i
end_hunk_0
