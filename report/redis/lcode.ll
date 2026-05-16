inline.NumInlined: 107
inline.NumDeleted: 19
begin_hunk_0_@luaK_codeABC:bb.a
  %i.a = shl i32 %2, 6
  %i.b = or i32 %i.a, %1
  %i.c = shl i32 %3, 23
  %i.d = or i32 %i.b, %i.c
  %i.e = shl i32 %4, 14
  %i.f = or i32 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !32
  %i.k = tail call fastcc i32 @luaK_code(ptr noundef %0, i32 noundef %i.f, i32 noundef %i.j)
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_jump(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  store i32 -1, ptr %i.a, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !32
  %i.g = tail call fastcc i32 @luaK_code(ptr noundef %0, i32 noundef 2147450902, i32 noundef %i.f) ; 4 uses
  %i.h = icmp eq i32 %i.b, -1
  br i1 %i.h, label %luaK_concat.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %i.g, -1
  br i1 %i.i, label %luaK_concat.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.j = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.j, align 8, !tbaa !21 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.i
  %.0.i = phi i32 [ %i.r, %bb.c ], [ %i.g, %.preheader.i ] ; 3 uses
  %i.k = sext i32 %.0.i to i64                    ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4    ; 2 uses
  %i.n = lshr i32 %i.m, 14
  %i.o = add nsw i32 %i.n, -131071                ; 2 uses
  %i.p = icmp eq i32 %i.o, -1
  %i.q = add nuw nsw i32 %.0.i, 1
  %i.r = add nsw i32 %i.q, %i.o                   ; 2 uses
  %.not13.i = icmp eq i32 %i.r, -1
  %.not.i = select i1 %i.p, i1 true, i1 %.not13.i
  br i1 %.not.i, label %bb.d, label %bb.c, !llvm.loop !38

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.k ; 2 uses
  %.neg.i.i = xor i32 %.0.i, -1
  %i.t = add i32 %i.b, %.neg.i.i                  ; 2 uses
  %i.u = add i32 %i.t, -131072
  %i.v = icmp ult i32 %i.u, -262143
  br i1 %i.v, label %bb.e, label %fixjump.exit.i

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.w, ptr noundef nonnull @.str.1) #7
  %.pre.i = load i32, ptr %i.s, align 4, !tbaa !4
  br label %fixjump.exit.i

fixjump.exit.i:                                   ; preds = %bb.e, %bb.d
  %i.x = phi i32 [ %i.m, %bb.d ], [ %.pre.i, %bb.e ]
  %i.y = and i32 %i.x, 16383
  %i.z = shl i32 %i.t, 14
  %i.aa = add i32 %i.z, 2147467264
  %i.ab = or disjoint i32 %i.y, %i.aa
  store i32 %i.ab, ptr %i.s, align 4, !tbaa !4
  br label %luaK_concat.exit

luaK_concat.exit:                                 ; preds = %bb.b, %bb.a, %fixjump.exit.i
  %.0 = phi i32 [ %i.g, %bb.a ], [ %i.g, %fixjump.exit.i ], [ %i.b, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_codeABx(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %2, 6
  %i.b = or i32 %i.a, %1
  %i.c = shl i32 %3, 14
  %i.d = or i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !32
  %i.i = tail call fastcc i32 @luaK_code(ptr noundef %0, i32 noundef %i.d, i32 noundef %i.h)
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_concat(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, -1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !4      ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.val = load ptr, ptr %0, align 8, !tbaa !20
  %i.d = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.d, align 8, !tbaa !21 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %2, ptr %1, align 4, !tbaa !4
  br label %bb.g

bb.d:                                             ; preds = %.preheader, %bb.d
  %.0 = phi i32 [ %i.l, %bb.d ], [ %i.b, %.preheader ] ; 3 uses
  %i.e = sext i32 %.0 to i64                      ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %.val.val, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = lshr i32 %i.g, 14
  %i.i = add nsw i32 %i.h, -131071                ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %i.k = add nuw nsw i32 %.0, 1
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %.not13 = icmp eq i32 %i.l, -1
  %.not = select i1 %i.j, i1 true, i1 %.not13
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !38

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds [4 x i8], ptr %.val.val, i64 %i.e ; 2 uses
  %.neg.i = xor i32 %.0, -1
  %i.n = add i32 %2, %.neg.i                      ; 2 uses
  %i.o = add i32 %i.n, -131072
  %i.p = icmp ult i32 %i.o, -262143
  br i1 %i.p, label %bb.f, label %fixjump.exit

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.r, ptr noundef nonnull @.str.1) #7
  %.pre = load i32, ptr %i.m, align 4, !tbaa !4
  br label %fixjump.exit

fixjump.exit:                                     ; preds = %bb.e, %bb.f
  %i.s = phi i32 [ %i.g, %bb.e ], [ %.pre, %bb.f ]
  %i.t = and i32 %i.s, 16383
  %i.u = shl i32 %i.n, 14
  %i.v = add i32 %i.u, 2147467264
  %i.w = or disjoint i32 %i.t, %i.v
  store i32 %i.w, ptr %i.m, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %fixjump.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_ret(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %1, 6
  %i.b = shl i32 %2, 23
  %i.c = add i32 %i.b, 8388608
  %i.d = or i32 %i.a, %i.c
  %i.e = or disjoint i32 %i.d, 30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !32
  %i.j = tail call fastcc i32 @luaK_code(ptr noundef %0, i32 noundef %i.e, i32 noundef %i.i) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden i32 @luaK_getlabel(ptr noundef captures(none) initializes((52, 56)) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.b, ptr %i.c, align 4, !tbaa !18
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_patchlist(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp eq i32 %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %2, ptr %i.d, align 4, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = icmp eq i32 %1, -1
  br i1 %i.f, label %luaK_patchtohere.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 8, !tbaa !4    ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.i = getelementptr i8, ptr %.val.i.i, i64 24
  %.val.val.i.i = load ptr, ptr %i.i, align 8, !tbaa !21 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %1, ptr %i.e, align 8, !tbaa !4
  br label %luaK_patchtohere.exit

bb.e:                                             ; preds = %bb.e, %.preheader.i.i
  %.0.i.i = phi i32 [ %i.q, %bb.e ], [ %i.g, %.preheader.i.i ] ; 3 uses
  %i.j = sext i32 %.0.i.i to i64                  ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 2 uses
  %i.m = lshr i32 %i.l, 14
  %i.n = add nsw i32 %i.m, -131071                ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  %i.p = add nuw nsw i32 %.0.i.i, 1
  %i.q = add nsw i32 %i.p, %i.n                   ; 2 uses
  %.not13.i.i = icmp eq i32 %i.q, -1
  %.not.i.i = select i1 %i.o, i1 true, i1 %.not13.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.e, !llvm.loop !38

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.j ; 2 uses
  %.neg.i.i.i = xor i32 %.0.i.i, -1
  %i.s = add i32 %1, %.neg.i.i.i                  ; 2 uses
  %i.t = add i32 %i.s, -131072
  %i.u = icmp ult i32 %i.t, -262143
  br i1 %i.u, label %bb.g, label %fixjump.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.w, ptr noundef nonnull @.str.1) #7
  %.pre.i.i = load i32, ptr %i.r, align 4, !tbaa !4
  br label %fixjump.exit.i.i

fixjump.exit.i.i:                                 ; preds = %bb.g, %bb.f
  %i.x = phi i32 [ %i.l, %bb.f ], [ %.pre.i.i, %bb.g ]
  %i.y = and i32 %i.x, 16383
  %i.z = shl i32 %i.s, 14
  %i.aa = add i32 %i.z, 2147467264
  %i.ab = or disjoint i32 %i.y, %i.aa
  store i32 %i.ab, ptr %i.r, align 4, !tbaa !4
  br label %luaK_patchtohere.exit

bb.h:                                             ; preds = %bb.a
  %.not19.i = icmp eq i32 %1, -1
  br i1 %.not19.i, label %luaK_patchtohere.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.i

bb.i:                                             ; preds = %fixjump.exit16.i, %.lr.ph.i
  %.020.i = phi i32 [ %1, %.lr.ph.i ], [ %i.al, %fixjump.exit16.i ] ; 5 uses
  %.val.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.ad = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.ae = sext i32 %.020.i to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.ae ; 5 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4  ; 3 uses
  %i.ah = lshr i32 %i.ag, 14
  %i.ai = add nsw i32 %i.ah, -131071              ; 2 uses
  %i.aj = icmp eq i32 %i.ai, -1
  %i.ak = add nuw nsw i32 %.020.i, 1
  %i.al = add nsw i32 %i.ak, %i.ai                ; 2 uses
  %i.am = icmp sgt i32 %.020.i, 0
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4  ; 2 uses
  %i.ap = and i32 %i.ao, 63
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !40
  %.not.i.i.i = icmp sgt i8 %i.as, -1
  br i1 %.not.i.i.i, label %bb.k, label %getjumpcontrol.exit.i.i

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %getjumpcontrol.exit.i.i

getjumpcontrol.exit.i.i:                          ; preds = %bb.k, %bb.j
  %i.at = phi i32 [ %i.ag, %bb.k ], [ %i.ao, %bb.j ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.af, %bb.k ], [ %i.an, %bb.j ]
  %i.au = and i32 %i.at, 63
  %.not.i.i7 = icmp eq i32 %i.au, 27
  br i1 %.not.i.i7, label %bb.l, label %bb.m

bb.l:                                             ; preds = %getjumpcontrol.exit.i.i
  %i.av = lshr i32 %i.at, 17
  %i.aw = and i32 %i.av, 32704
  %i.ax = and i32 %i.at, 8372250
  %i.ay = or i32 %i.aw, %i.ax
  store i32 %i.ay, ptr %.0.i.i.i, align 4, !tbaa !4
  %.neg.i.i = xor i32 %.020.i, -1
  %i.az = add i32 %2, %.neg.i.i                   ; 3 uses
  %i.ba = add i32 %i.az, -131072
  %i.bb = icmp ult i32 %i.ba, -262143
  br i1 %i.bb, label %fixjump.exit16.sink.split.sink.split.i, label %fixjump.exit16.sink.split.i

bb.m:                                             ; preds = %getjumpcontrol.exit.i.i
  %.neg.i15.i = xor i32 %.020.i, -1
  %i.bc = add i32 %2, %.neg.i15.i                 ; 3 uses
  %i.bd = add i32 %i.bc, -131072
  %i.be = icmp ult i32 %i.bd, -262143
  br i1 %i.be, label %fixjump.exit16.sink.split.sink.split.i, label %fixjump.exit16.i

fixjump.exit16.sink.split.sink.split.i:           ; preds = %bb.m, %bb.l
  %.sink23.ph.ph.i = phi i32 [ %i.az, %bb.l ], [ %i.bc, %bb.m ]
  %i.bf = load ptr, ptr %i.ac, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.bf, ptr noundef nonnull @.str.1) #7
  br label %fixjump.exit16.sink.split.i

fixjump.exit16.sink.split.i:                      ; preds = %fixjump.exit16.sink.split.sink.split.i, %bb.l
  %.sink23.ph.i = phi i32 [ %i.az, %bb.l ], [ %.sink23.ph.ph.i, %fixjump.exit16.sink.split.sink.split.i ]
  %.pre.i = load i32, ptr %i.af, align 4, !tbaa !4
  br label %fixjump.exit16.i

fixjump.exit16.i:                                 ; preds = %fixjump.exit16.sink.split.i, %bb.m
  %.sink24.i = phi i32 [ %i.ag, %bb.m ], [ %.pre.i, %fixjump.exit16.sink.split.i ]
  %.sink23.i = phi i32 [ %i.bc, %bb.m ], [ %.sink23.ph.i, %fixjump.exit16.sink.split.i ]
  %i.bg = and i32 %.sink24.i, 16383
  %i.bh = shl i32 %.sink23.i, 14
  %i.bi = add i32 %i.bh, 2147467264
  %i.bj = or disjoint i32 %i.bi, %i.bg
  store i32 %i.bj, ptr %i.af, align 4, !tbaa !4
  %.not25.i = icmp eq i32 %i.al, -1
  %.not.i = select i1 %i.aj, i1 true, i1 %.not25.i
  br i1 %.not.i, label %luaK_patchtohere.exit, label %bb.i, !llvm.loop !41

luaK_patchtohere.exit:                            ; preds = %fixjump.exit16.i, %bb.h, %fixjump.exit.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_patchtohere(ptr noundef captures(none) initializes((52, 56)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.b, ptr %i.c, align 4, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = icmp eq i32 %1, -1
  br i1 %i.e, label %luaK_concat.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 8, !tbaa !4    ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.h = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.h, align 8, !tbaa !21 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %1, ptr %i.d, align 8, !tbaa !4
  br label %luaK_concat.exit

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.0.i = phi i32 [ %i.p, %bb.d ], [ %i.f, %.preheader.i ] ; 3 uses
  %i.i = sext i32 %.0.i to i64                    ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = lshr i32 %i.k, 14
  %i.m = add nsw i32 %i.l, -131071                ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  %i.o = add nuw nsw i32 %.0.i, 1
  %i.p = add nsw i32 %i.o, %i.m                   ; 2 uses
  %.not13.i = icmp eq i32 %i.p, -1
  %.not.i = select i1 %i.n, i1 true, i1 %.not13.i
  br i1 %.not.i, label %bb.e, label %bb.d, !llvm.loop !38

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.i ; 2 uses
  %.neg.i.i = xor i32 %.0.i, -1
  %i.r = add i32 %1, %.neg.i.i                    ; 2 uses
  %i.s = add i32 %i.r, -131072
  %i.t = icmp ult i32 %i.s, -262143
  br i1 %i.t, label %bb.f, label %fixjump.exit.i

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.v, ptr noundef nonnull @.str.1) #7
  %.pre.i = load i32, ptr %i.q, align 4, !tbaa !4
  br label %fixjump.exit.i

fixjump.exit.i:                                   ; preds = %bb.f, %bb.e
  %i.w = phi i32 [ %i.k, %bb.e ], [ %.pre.i, %bb.f ]
  %i.x = and i32 %i.w, 16383
  %i.y = shl i32 %i.r, 14
  %i.z = add i32 %i.y, 2147467264
  %i.aa = or disjoint i32 %i.x, %i.z
  store i32 %i.aa, ptr %i.q, align 4, !tbaa !4
  br label %luaK_concat.exit

luaK_concat.exit:                                 ; preds = %bb.a, %bb.c, %fixjump.exit.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @patchlistaux(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %.not19 = icmp eq i32 %1, -1
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not13.i = icmp eq i32 %3, 255
  %i.b = shl i32 %3, 6
  %i.c = and i32 %i.b, 16320
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %fixjump.exit16
  %.020 = phi i32 [ %1, %.lr.ph ], [ %i.l, %fixjump.exit16 ] ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !20
  %i.d = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.e = sext i32 %.020 to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %.val.val, i64 %i.e ; 5 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 3 uses
  %i.h = lshr i32 %i.g, 14
  %i.i = add nsw i32 %i.h, -131071                ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %i.k = add nuw nsw i32 %.020, 1
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %i.m = icmp sgt i32 %.020, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4    ; 2 uses
  %i.p = and i32 %i.o, 63
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !40
  %.not.i.i = icmp sgt i8 %i.s, -1
  br i1 %.not.i.i, label %bb.d, label %getjumpcontrol.exit.i

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %getjumpcontrol.exit.i

getjumpcontrol.exit.i:                            ; preds = %bb.d, %bb.c
  %i.t = phi i32 [ %i.g, %bb.d ], [ %i.o, %bb.c ] ; 5 uses
  %.0.i.i = phi ptr [ %i.f, %bb.d ], [ %i.n, %bb.c ]
  %i.u = and i32 %i.t, 63
  %.not.i = icmp eq i32 %i.u, 27
  br i1 %.not.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %getjumpcontrol.exit.i
  %i.v = lshr i32 %i.t, 23
  %.not14.i = icmp eq i32 %3, %i.v
  %or.cond.i = or i1 %.not13.i, %.not14.i
  br i1 %or.cond.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = and i32 %i.t, -16357
  %i.x = or disjoint i32 %i.w, %i.c
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.y = lshr i32 %i.t, 17
  %i.z = and i32 %i.y, 32704
  %i.aa = and i32 %i.t, 8372250
  %i.ab = or i32 %i.z, %i.aa
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge.i = phi i32 [ %i.ab, %bb.g ], [ %i.x, %bb.f ]
  store i32 %storemerge.i, ptr %.0.i.i, align 4, !tbaa !4
  %.neg.i = xor i32 %.020, -1
  %i.ac = add i32 %2, %.neg.i                     ; 3 uses
  %i.ad = add i32 %i.ac, -131072
  %i.ae = icmp ult i32 %i.ad, -262143
  br i1 %i.ae, label %fixjump.exit16.sink.split.sink.split, label %fixjump.exit16.sink.split

bb.i:                                             ; preds = %getjumpcontrol.exit.i
  %.neg.i15 = xor i32 %.020, -1
  %i.af = add i32 %4, %.neg.i15                   ; 3 uses
  %i.ag = add i32 %i.af, -131072
  %i.ah = icmp ult i32 %i.ag, -262143
  br i1 %i.ah, label %fixjump.exit16.sink.split.sink.split, label %fixjump.exit16

fixjump.exit16.sink.split.sink.split:             ; preds = %bb.i, %bb.h
  %.sink23.ph.ph = phi i32 [ %i.ac, %bb.h ], [ %i.af, %bb.i ]
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.ai, ptr noundef nonnull @.str.1) #7
  br label %fixjump.exit16.sink.split

fixjump.exit16.sink.split:                        ; preds = %fixjump.exit16.sink.split.sink.split, %bb.h
  %.sink23.ph = phi i32 [ %i.ac, %bb.h ], [ %.sink23.ph.ph, %fixjump.exit16.sink.split.sink.split ]
  %.pre = load i32, ptr %i.f, align 4, !tbaa !4
  br label %fixjump.exit16

fixjump.exit16:                                   ; preds = %fixjump.exit16.sink.split, %bb.i
  %.sink24 = phi i32 [ %i.g, %bb.i ], [ %.pre, %fixjump.exit16.sink.split ]
  %.sink23 = phi i32 [ %i.af, %bb.i ], [ %.sink23.ph, %fixjump.exit16.sink.split ]
  %i.aj = and i32 %.sink24, 16383
  %i.ak = shl i32 %.sink23, 14
  %i.al = add i32 %i.ak, 2147467264
  %i.am = or disjoint i32 %i.aj, %i.al
  store i32 %i.am, ptr %i.f, align 4, !tbaa !4
  %.not25 = icmp eq i32 %i.l, -1
  %.not = select i1 %i.j, i1 true, i1 %.not25
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !41

._crit_edge:                                      ; preds = %fixjump.exit16, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_checkstack(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
  %i.c = add nsw i32 %i.b, %1                     ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 115
  %i.f = load i8, ptr %i.e, align 1, !tbaa !43
  %i.g = zext i8 %i.f to i32
  %i.h = icmp sgt i32 %i.c, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ugt i32 %i.c, 249
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.k, ptr noundef nonnull @.str) #7
  %.pre = load ptr, ptr %0, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %.pre, %bb.c ], [ %i.d, %bb.b ]
  %i.m = trunc i32 %i.c to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 115
  store i8 %i.m, ptr %i.n, align 1, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

declare hidden void @luaX_syntaxerror(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @luaK_reserveregs(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
  %i.c = add nsw i32 %i.b, %1                     ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 115
  %i.f = load i8, ptr %i.e, align 1, !tbaa !43
end_hunk_0
begin_hunk_1_@luaK_dischargevars:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !32
  %i.j = tail call fastcc i32 @luaK_code(ptr noundef %0, i32 noundef %i.e, i32 noundef %i.i)
  store i32 %i.j, ptr %i.b, align 8, !tbaa !40
  store i32 11, ptr %1, align 8, !tbaa !54
  br label %luaK_setoneret.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !40
  %i.m = shl i32 %i.l, 14
  %i.n = or disjoint i32 %i.m, 5
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !32
  %i.s = tail call fastcc i32 @luaK_code(ptr noundef %0, i32 noundef %i.n, i32 noundef %i.r)
  store i32 %i.s, ptr %i.k, align 8, !tbaa !40
  store i32 11, ptr %1, align 8, !tbaa !54
  br label %luaK_setoneret.exit

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !40   ; 2 uses
  %i.w = and i32 %i.v, 256
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.f, label %freereg.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.y = load i8, ptr %i.x, align 2, !tbaa !19
  %i.z = zext i8 %i.y to i32
  %.not3.i = icmp slt i32 %i.v, %i.z
  br i1 %.not3.i, label %freereg.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !42
  %i.ac = add nsw i32 %i.ab, -1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !42
  br label %freereg.exit

freereg.exit:                                     ; preds = %bb.e, %bb.f, %bb.g
  %i.ad = load i32, ptr %i.t, align 8, !tbaa !40  ; 4 uses
  %i.ae = and i32 %i.ad, 256
  %.not.i21 = icmp eq i32 %i.ae, 0
  br i1 %.not.i21, label %bb.h, label %freereg.exit23

bb.h:                                             ; preds = %freereg.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !19
  %i.ah = zext i8 %i.ag to i32
  %.not3.i22 = icmp slt i32 %i.ad, %i.ah
  br i1 %.not3.i22, label %freereg.exit23, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !42
  %i.ak = add nsw i32 %i.aj, -1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !42
  %.pre = load i32, ptr %i.t, align 8, !tbaa !40
  br label %freereg.exit23

freereg.exit23:                                   ; preds = %freereg.exit, %bb.h, %bb.i
  %i.al = phi i32 [ %i.ad, %freereg.exit ], [ %i.ad, %bb.h ], [ %.pre, %bb.i ]
  %i.am = load i32, ptr %i.u, align 4, !tbaa !40
  %i.an = shl i32 %i.al, 23
  %i.ao = shl i32 %i.am, 14
  %i.ap = or i32 %i.an, %i.ao
  %i.aq = or disjoint i32 %i.ap, 6
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !32
  %i.av = tail call fastcc i32 @luaK_code(ptr noundef %0, i32 noundef %i.aq, i32 noundef %i.au)
  store i32 %i.av, ptr %i.t, align 8, !tbaa !40
  store i32 11, ptr %1, align 8, !tbaa !54
  br label %luaK_setoneret.exit

bb.j:                                             ; preds = %bb.a
  store i32 12, ptr %1, align 8, !tbaa !54
  %i.aw = load ptr, ptr %0, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !40
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = lshr i32 %i.bd, 6
  %i.bf = and i32 %i.be, 255
  store i32 %i.bf, ptr %i.az, align 8, !tbaa !40
  br label %luaK_setoneret.exit

bb.k:                                             ; preds = %bb.a
  %i.bg = load ptr, ptr %0, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !40
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bo = and i32 %i.bn, 8388607
  %i.bp = or disjoint i32 %i.bo, 16777216
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !4
  store i32 11, ptr %1, align 8, !tbaa !54
  br label %luaK_setoneret.exit

luaK_setoneret.exit:                              ; preds = %bb.a, %bb.k, %bb.j, %freereg.exit23, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_exp2nextreg(ptr noundef captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %1)
  %i.a = load i32, ptr %1, align 8, !tbaa !54
  %i.b = icmp eq i32 %i.a, 12
  br i1 %i.b, label %bb.b, label %freeexp.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.e = and i32 %i.d, 256
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %freeexp.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.g = load i8, ptr %i.f, align 2, !tbaa !19
  %i.h = zext i8 %i.g to i32
  %.not3.i.i = icmp slt i32 %i.d, %i.h
  br i1 %.not3.i.i, label %freeexp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !42
  %i.k = add nsw i32 %i.j, -1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !42
  br label %freeexp.exit

freeexp.exit:                                     ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !42   ; 3 uses
  %i.n = add nsw i32 %i.m, 1                      ; 3 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 115
  %i.q = load i8, ptr %i.p, align 1, !tbaa !43
  %i.r = zext i8 %i.q to i32
  %.not = icmp slt i32 %i.m, %i.r
  br i1 %.not, label %luaK_reserveregs.exit, label %bb.e

bb.e:                                             ; preds = %freeexp.exit
  %i.s = icmp samesign ugt i32 %i.m, 248
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.u, ptr noundef nonnull @.str) #7
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !20
  %.pre.pre.i = load i32, ptr %i.l, align 4, !tbaa !42
  %.pre5.i = add nsw i32 %.pre.pre.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre4.pre-phi.i = phi i32 [ %.pre5.i, %bb.f ], [ %i.n, %bb.e ]
  %i.v = phi ptr [ %.pre.i.i, %bb.f ], [ %i.o, %bb.e ]
  %i.w = trunc i32 %i.n to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 115
  store i8 %i.w, ptr %i.x, align 1, !tbaa !43
  br label %luaK_reserveregs.exit

luaK_reserveregs.exit:                            ; preds = %freeexp.exit, %bb.g
  %.pre-phi.i = phi i32 [ %i.n, %freeexp.exit ], [ %.pre4.pre-phi.i, %bb.g ] ; 2 uses
  store i32 %.pre-phi.i, ptr %i.l, align 4, !tbaa !42
  %i.y = add nsw i32 %.pre-phi.i, -1
  tail call fastcc void @exp2reg(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.y)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @exp2reg(ptr noundef captures(none) %0, ptr noundef captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  tail call fastcc void @discharge2reg(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %i.a = load i32, ptr %1, align 8, !tbaa !54
  %i.b = icmp eq i32 %i.a, 10
  br i1 %i.b, label %bb.b, label %luaK_concat.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !40   ; 3 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %luaK_concat.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.c, align 8, !tbaa !4    ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %.val.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.i = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.i, align 8, !tbaa !21 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.e, ptr %i.c, align 8, !tbaa !4
  br label %luaK_concat.exit

bb.e:                                             ; preds = %bb.e, %.preheader.i
  %.0.i = phi i32 [ %i.q, %bb.e ], [ %i.g, %.preheader.i ] ; 3 uses
  %i.j = sext i32 %.0.i to i64                    ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 2 uses
  %i.m = lshr i32 %i.l, 14
  %i.n = add nsw i32 %i.m, -131071                ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  %i.p = add nuw nsw i32 %.0.i, 1
  %i.q = add nsw i32 %i.p, %i.n                   ; 2 uses
  %.not13.i = icmp eq i32 %i.q, -1
  %.not.i = select i1 %i.o, i1 true, i1 %.not13.i
  br i1 %.not.i, label %bb.f, label %bb.e, !llvm.loop !38

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.j ; 2 uses
  %.neg.i.i = xor i32 %.0.i, -1
  %i.s = add i32 %i.e, %.neg.i.i                  ; 2 uses
  %i.t = add i32 %i.s, -131072
  %i.u = icmp ult i32 %i.t, -262143
  br i1 %i.u, label %bb.g, label %fixjump.exit.i

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.w, ptr noundef nonnull @.str.1) #7
  %.pre.i = load i32, ptr %i.r, align 4, !tbaa !4
  br label %fixjump.exit.i

fixjump.exit.i:                                   ; preds = %bb.g, %bb.f
  %i.x = phi i32 [ %i.l, %bb.f ], [ %.pre.i, %bb.g ]
  %i.y = and i32 %i.x, 16383
  %i.z = shl i32 %i.s, 14
  %i.aa = add i32 %i.z, 2147467264
  %i.ab = or disjoint i32 %i.y, %i.aa
  store i32 %i.ab, ptr %i.r, align 4, !tbaa !4
  br label %luaK_concat.exit

luaK_concat.exit:                                 ; preds = %fixjump.exit.i, %bb.d, %bb.b, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !56 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !57 ; 3 uses
  %.not = icmp eq i32 %i.ad, %i.af
  br i1 %.not, label %bb.y, label %bb.h

bb.h:                                             ; preds = %luaK_concat.exit
  %.not12.i = icmp eq i32 %i.ad, -1
  br i1 %.not12.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %.val10.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.ag = getelementptr i8, ptr %.val10.i, i64 24
  %.val10.val.i = load ptr, ptr %i.ag, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %select.unfold.i, %.lr.ph.i
  %.0813.i = phi i32 [ %i.ad, %.lr.ph.i ], [ %i.ax, %select.unfold.i ] ; 3 uses
  %i.ah = sext i32 %.0813.i to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %.val10.val.i, i64 %i.ah ; 3 uses
  %i.aj = icmp sgt i32 %.0813.i, 0
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4  ; 2 uses
  %i.am = and i32 %i.al, 63
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !40
  %.not.i.i = icmp sgt i8 %i.ap, -1
  br i1 %.not.i.i, label %bb.k, label %getjumpcontrol.exit.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre.i40 = load i32, ptr %i.ai, align 4, !tbaa !4
  br label %getjumpcontrol.exit.i

getjumpcontrol.exit.i:                            ; preds = %bb.k, %bb.j
  %i.aq = phi i32 [ %.pre.i40, %bb.k ], [ %i.al, %bb.j ]
  %i.ar = and i32 %i.aq, 63
  %.not9.not.i = icmp eq i32 %i.ar, 27
  br i1 %.not9.not.i, label %select.unfold.i, label %need_value.exit

select.unfold.i:                                  ; preds = %getjumpcontrol.exit.i
  %i.as = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.at = lshr i32 %i.as, 14
  %i.au = add nsw i32 %i.at, -131071              ; 2 uses
  %i.av = icmp eq i32 %i.au, -1
  %i.aw = add nuw nsw i32 %.0813.i, 1
  %i.ax = add nsw i32 %i.aw, %i.au                ; 2 uses
  %.not15.i = icmp eq i32 %i.ax, -1
  %.not.i41 = select i1 %i.av, i1 true, i1 %.not15.i
  br i1 %.not.i41, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %select.unfold.i, %bb.h
  %.not12.i42 = icmp eq i32 %i.af, -1
  br i1 %.not12.i42, label %luaK_patchtohere.exit, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.loopexit
  %.val10.i44 = load ptr, ptr %0, align 8, !tbaa !20
  %i.ay = getelementptr i8, ptr %.val10.i44, i64 24
  %.val10.val.i45 = load ptr, ptr %i.ay, align 8, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %select.unfold.i51, %.lr.ph.i43
  %.0813.i46 = phi i32 [ %i.af, %.lr.ph.i43 ], [ %i.bp, %select.unfold.i51 ] ; 3 uses
  %i.az = sext i32 %.0813.i46 to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %.val10.val.i45, i64 %i.az ; 3 uses
  %i.bb = icmp sgt i32 %.0813.i46, 0
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4  ; 2 uses
  %i.be = and i32 %i.bd, 63
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !40
  %.not.i.i54 = icmp sgt i8 %i.bh, -1
  br i1 %.not.i.i54, label %bb.n, label %getjumpcontrol.exit.i48

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre.i47 = load i32, ptr %i.ba, align 4, !tbaa !4
  br label %getjumpcontrol.exit.i48

getjumpcontrol.exit.i48:                          ; preds = %bb.n, %bb.m
  %i.bi = phi i32 [ %.pre.i47, %bb.n ], [ %i.bd, %bb.m ]
  %i.bj = and i32 %i.bi, 63
  %.not9.not.i49 = icmp eq i32 %i.bj, 27
  br i1 %.not9.not.i49, label %select.unfold.i51, label %need_value.exit

select.unfold.i51:                                ; preds = %getjumpcontrol.exit.i48
  %i.bk = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bl = lshr i32 %i.bk, 14
  %i.bm = add nsw i32 %i.bl, -131071              ; 2 uses
  %i.bn = icmp eq i32 %i.bm, -1
  %i.bo = add nuw nsw i32 %.0813.i46, 1
  %i.bp = add nsw i32 %i.bo, %i.bm                ; 2 uses
  %.not15.i52 = icmp eq i32 %i.bp, -1
  %.not.i53 = select i1 %i.bn, i1 true, i1 %.not15.i52
  br i1 %.not.i53, label %luaK_patchtohere.exit, label %bb.l

need_value.exit:                                  ; preds = %getjumpcontrol.exit.i, %getjumpcontrol.exit.i48
  %i.bq = load i32, ptr %1, align 8, !tbaa !54
  %i.br = icmp eq i32 %i.bq, 10
  br i1 %i.br, label %luaK_jump.exit, label %bb.o

bb.o:                                             ; preds = %need_value.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !37 ; 3 uses
  store i32 -1, ptr %i.bs, align 8, !tbaa !37
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !31
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !32
  %i.by = tail call fastcc i32 @luaK_code(ptr noundef %0, i32 noundef 2147450902, i32 noundef %i.bx) ; 4 uses
  %i.bz = icmp eq i32 %i.bt, -1
  br i1 %i.bz, label %luaK_jump.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = icmp eq i32 %i.by, -1
  br i1 %i.ca, label %luaK_jump.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.p
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.cb = getelementptr i8, ptr %.val.i.i, i64 24
  %.val.val.i.i = load ptr, ptr %i.cb, align 8, !tbaa !21 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader.i.i
  %.0.i.i = phi i32 [ %i.cj, %bb.q ], [ %i.by, %.preheader.i.i ] ; 3 uses
  %i.cc = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4  ; 2 uses
  %i.cf = lshr i32 %i.ce, 14
  %i.cg = add nsw i32 %i.cf, -131071              ; 2 uses
  %i.ch = icmp eq i32 %i.cg, -1
  %i.ci = add nuw nsw i32 %.0.i.i, 1
  %i.cj = add nsw i32 %i.ci, %i.cg                ; 2 uses
  %.not13.i.i = icmp eq i32 %i.cj, -1
  %.not.i.i56 = select i1 %i.ch, i1 true, i1 %.not13.i.i
  br i1 %.not.i.i56, label %bb.r, label %bb.q, !llvm.loop !38

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.cc ; 2 uses
  %.neg.i.i.i = xor i32 %.0.i.i, -1
  %i.cl = add i32 %i.bt, %.neg.i.i.i              ; 2 uses
  %i.cm = add i32 %i.cl, -131072
  %i.cn = icmp ult i32 %i.cm, -262143
  br i1 %i.cn, label %bb.s, label %fixjump.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.co = load ptr, ptr %i.bu, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.co, ptr noundef nonnull @.str.1) #7
  %.pre.i.i = load i32, ptr %i.ck, align 4, !tbaa !4
  br label %fixjump.exit.i.i

fixjump.exit.i.i:                                 ; preds = %bb.s, %bb.r
  %i.cp = phi i32 [ %i.ce, %bb.r ], [ %.pre.i.i, %bb.s ]
  %i.cq = and i32 %i.cp, 16383
  %i.cr = shl i32 %i.cl, 14
  %i.cs = add i32 %i.cr, 2147467264
  %i.ct = or disjoint i32 %i.cq, %i.cs
  store i32 %i.ct, ptr %i.ck, align 4, !tbaa !4
  br label %luaK_jump.exit

luaK_jump.exit:                                   ; preds = %fixjump.exit.i.i, %bb.p, %bb.o, %need_value.exit
  %i.cu = phi i32 [ -1, %need_value.exit ], [ %i.by, %bb.o ], [ %i.by, %fixjump.exit.i.i ], [ %i.bt, %bb.p ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !18
  %i.cy = shl i32 %2, 6                           ; 2 uses
  %i.cz = or i32 %i.cy, 16386
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !31
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !32
  %i.de = tail call fastcc i32 @luaK_code(ptr noundef %0, i32 noundef %i.cz, i32 noundef %i.dd) ; 3 uses
  %i.df = load i32, ptr %i.cv, align 8, !tbaa !8
  store i32 %i.df, ptr %i.cx, align 4, !tbaa !18
  %i.dg = or i32 %i.cy, 8388610
  %i.dh = load ptr, ptr %i.da, align 8, !tbaa !31
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !32
  %i.dk = tail call fastcc i32 @luaK_code(ptr noundef %0, i32 noundef %i.dg, i32 noundef %i.dj) ; 3 uses
  %i.dl = load i32, ptr %i.cv, align 8, !tbaa !8
  store i32 %i.dl, ptr %i.cx, align 4, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dn = icmp eq i32 %i.cu, -1
  br i1 %i.dn, label %luaK_patchtohere.exit, label %bb.t

bb.t:                                             ; preds = %luaK_jump.exit
  %i.do = load i32, ptr %i.dm, align 8, !tbaa !4  ; 2 uses
  %i.dp = icmp eq i32 %i.do, -1
  br i1 %i.dp, label %bb.u, label %.preheader.i.i58

.preheader.i.i58:                                 ; preds = %bb.t
  %.val.i.i59 = load ptr, ptr %0, align 8, !tbaa !20
  %i.dq = getelementptr i8, ptr %.val.i.i59, i64 24
  %.val.val.i.i60 = load ptr, ptr %i.dq, align 8, !tbaa !21 ; 2 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %i.cu, ptr %i.dm, align 8, !tbaa !4
  br label %luaK_patchtohere.exit

bb.v:                                             ; preds = %bb.v, %.preheader.i.i58
  %.0.i.i61 = phi i32 [ %i.dy, %bb.v ], [ %i.do, %.preheader.i.i58 ] ; 3 uses
  %i.dr = sext i32 %.0.i.i61 to i64               ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %.val.val.i.i60, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !4  ; 2 uses
  %i.du = lshr i32 %i.dt, 14
  %i.dv = add nsw i32 %i.du, -131071              ; 2 uses
  %i.dw = icmp eq i32 %i.dv, -1
  %i.dx = add nuw nsw i32 %.0.i.i61, 1
  %i.dy = add nsw i32 %i.dx, %i.dv                ; 2 uses
  %.not13.i.i62 = icmp eq i32 %i.dy, -1
  %.not.i.i63 = select i1 %i.dw, i1 true, i1 %.not13.i.i62
  br i1 %.not.i.i63, label %bb.w, label %bb.v, !llvm.loop !38

bb.w:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds [4 x i8], ptr %.val.val.i.i60, i64 %i.dr ; 2 uses
  %.neg.i.i.i64 = xor i32 %.0.i.i61, -1
  %i.ea = add i32 %i.cu, %.neg.i.i.i64            ; 2 uses
  %i.eb = add i32 %i.ea, -131072
  %i.ec = icmp ult i32 %i.eb, -262143
  br i1 %i.ec, label %bb.x, label %fixjump.exit.i.i65

bb.x:                                             ; preds = %bb.w
  %i.ed = load ptr, ptr %i.da, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.ed, ptr noundef nonnull @.str.1) #7
  %.pre.i.i66 = load i32, ptr %i.dz, align 4, !tbaa !4
  br label %fixjump.exit.i.i65

fixjump.exit.i.i65:                               ; preds = %bb.x, %bb.w
  %i.ee = phi i32 [ %i.dt, %bb.w ], [ %.pre.i.i66, %bb.x ]
  %i.ef = and i32 %i.ee, 16383
  %i.eg = shl i32 %i.ea, 14
  %i.eh = add i32 %i.eg, 2147467264
  %i.ei = or disjoint i32 %i.ef, %i.eh
  store i32 %i.ei, ptr %i.dz, align 4, !tbaa !4
  br label %luaK_patchtohere.exit

luaK_patchtohere.exit:                            ; preds = %select.unfold.i51, %.loopexit, %fixjump.exit.i.i65, %bb.u, %luaK_jump.exit
  %.036 = phi i32 [ %i.dk, %fixjump.exit.i.i65 ], [ %i.dk, %luaK_jump.exit ], [ %i.dk, %bb.u ], [ -1, %.loopexit ], [ -1, %select.unfold.i51 ]
  %.0 = phi i32 [ %i.de, %fixjump.exit.i.i65 ], [ %i.de, %luaK_jump.exit ], [ %i.de, %bb.u ], [ -1, %.loopexit ], [ -1, %select.unfold.i51 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !8  ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !18
  %i.em = load i32, ptr %i.ae, align 4, !tbaa !57
  tail call fastcc void @patchlistaux(ptr noundef %0, i32 noundef %i.em, i32 noundef %i.ek, i32 noundef %2, i32 noundef %.0)
  %i.en = load i32, ptr %i.ac, align 8, !tbaa !56
  tail call fastcc void @patchlistaux(ptr noundef %0, i32 noundef %i.en, i32 noundef %i.ek, i32 noundef %2, i32 noundef %.036)
  br label %bb.y

bb.y:                                             ; preds = %luaK_patchtohere.exit, %luaK_concat.exit
  store i32 -1, ptr %i.ac, align 8, !tbaa !56
  store i32 -1, ptr %i.ae, align 4, !tbaa !57
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %2, ptr %i.eo, align 8, !tbaa !40
  store i32 12, ptr %1, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_exp2anyreg(ptr noundef captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %1)
  %i.a = load i32, ptr %1, align 8, !tbaa !54
  %i.b = icmp eq i32 %i.a, 12
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !57
  %.not = icmp eq i32 %i.d, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.j = load i8, ptr %i.i, align 2, !tbaa !19
  %i.k = zext i8 %i.j to i32
  %.not16 = icmp slt i32 %i.h, %i.k
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @exp2reg(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.h)
  br label %bb.l

bb.e:                                             ; preds = %bb.c, %bb.a
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef nonnull %1)
  %i.l = load i32, ptr %1, align 8, !tbaa !54
  %i.m = icmp eq i32 %i.l, 12
  br i1 %i.m, label %bb.f, label %freeexp.exit.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !40   ; 2 uses
  %i.p = and i32 %i.o, 256
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %bb.g, label %freeexp.exit.i

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.r = load i8, ptr %i.q, align 2, !tbaa !19
  %i.s = zext i8 %i.r to i32
  %.not3.i.i.i = icmp slt i32 %i.o, %i.s
  br i1 %.not3.i.i.i, label %freeexp.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !42
  br label %freeexp.exit.i

freeexp.exit.i:                                   ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !42   ; 3 uses
  %i.y = add nsw i32 %i.x, 1                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 115
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !43
  %i.ac = zext i8 %i.ab to i32
  %.not.i = icmp slt i32 %i.x, %i.ac
  br i1 %.not.i, label %luaK_exp2nextreg.exit, label %bb.i

bb.i:                                             ; preds = %freeexp.exit.i
  %i.ad = icmp samesign ugt i32 %i.x, 248
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.af, ptr noundef nonnull @.str) #7
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !20
  %.pre.pre.i.i = load i32, ptr %i.w, align 4, !tbaa !42
  %.pre5.i.i = add nsw i32 %.pre.pre.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre4.pre-phi.i.i = phi i32 [ %.pre5.i.i, %bb.j ], [ %i.y, %bb.i ]
  %i.ag = phi ptr [ %.pre.i.i.i, %bb.j ], [ %i.z, %bb.i ]
  %i.ah = trunc i32 %i.y to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 115
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !43
  br label %luaK_exp2nextreg.exit

luaK_exp2nextreg.exit:                            ; preds = %freeexp.exit.i, %bb.k
  %.pre-phi.i.i = phi i32 [ %i.y, %freeexp.exit.i ], [ %.pre4.pre-phi.i.i, %bb.k ] ; 2 uses
  store i32 %.pre-phi.i.i, ptr %i.w, align 4, !tbaa !42
  %i.aj = add nsw i32 %.pre-phi.i.i, -1
  tail call fastcc void @exp2reg(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %luaK_exp2nextreg.exit, %bb.d
  %.0.in = phi ptr [ %i.g, %bb.d ], [ %i.ak, %luaK_exp2nextreg.exit ], [ %i.g, %bb.b ]
  %.0 = load i32, ptr %.0.in, align 8, !tbaa !40
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_exp2val(ptr noundef captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !57
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_exp2RK(ptr noundef captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lua_TValue, align 8         ; 6 uses
  %3 = alloca %struct.lua_TValue, align 8         ; 6 uses
  %4 = alloca %struct.lua_TValue, align 8         ; 5 uses
  %5 = alloca %struct.lua_TValue, align 8         ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !57
  %.not.i = icmp eq i32 %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@luaK_self:bb.a
  %i.o = add nsw i32 %i.n, 2                      ; 4 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 115
  %i.r = load i8, ptr %i.q, align 1, !tbaa !43
  %i.s = zext i8 %i.r to i32
  %i.t = icmp sgt i32 %i.o, %i.s
  br i1 %i.t, label %bb.e, label %luaK_reserveregs.exit

bb.e:                                             ; preds = %freeexp.exit
  %i.u = icmp sgt i32 %i.n, 247
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.w, ptr noundef nonnull @.str) #7
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !20
  %.pre.pre.i = load i32, ptr %i.m, align 4, !tbaa !42
  %.pre5.i = add nsw i32 %.pre.pre.i, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre4.pre-phi.i = phi i32 [ %.pre5.i, %bb.f ], [ %i.o, %bb.e ]
  %i.x = phi ptr [ %.pre.i.i, %bb.f ], [ %i.p, %bb.e ]
  %i.y = trunc i32 %i.o to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 115
  store i8 %i.y, ptr %i.z, align 1, !tbaa !43
  br label %luaK_reserveregs.exit

luaK_reserveregs.exit:                            ; preds = %freeexp.exit, %bb.g
  %.pre-phi.i = phi i32 [ %i.o, %freeexp.exit ], [ %.pre4.pre-phi.i, %bb.g ]
  store i32 %.pre-phi.i, ptr %i.m, align 4, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !40
  %i.ac = tail call i32 @luaK_exp2RK(ptr noundef nonnull %0, ptr noundef %2)
  %i.ad = shl i32 %i.n, 6
  %i.ae = shl i32 %i.ab, 23
  %i.af = shl i32 %i.ac, 14
  %i.ag = or i32 %i.ad, %i.ae
  %i.ah = or i32 %i.ag, %i.af
  %i.ai = or disjoint i32 %i.ah, 11
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !32
  %i.an = tail call fastcc i32 @luaK_code(ptr noundef nonnull %0, i32 noundef %i.ai, i32 noundef %i.am) ; 0 uses
  %i.ao = load i32, ptr %2, align 8, !tbaa !54
  %i.ap = icmp eq i32 %i.ao, 12
  br i1 %i.ap, label %bb.h, label %freeexp.exit17

bb.h:                                             ; preds = %luaK_reserveregs.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !40 ; 2 uses
  %i.as = and i32 %i.ar, 256
  %.not.i.i15 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i15, label %bb.i, label %freeexp.exit17

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.au = load i8, ptr %i.at, align 2, !tbaa !19
  %i.av = zext i8 %i.au to i32
  %.not3.i.i16 = icmp slt i32 %i.ar, %i.av
  br i1 %.not3.i.i16, label %freeexp.exit17, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load i32, ptr %i.m, align 4, !tbaa !42
  %i.ax = add nsw i32 %i.aw, -1
  store i32 %i.ax, ptr %i.m, align 4, !tbaa !42
  br label %freeexp.exit17

freeexp.exit17:                                   ; preds = %luaK_reserveregs.exit, %bb.h, %bb.i, %bb.j
  store i32 %i.n, ptr %i.aa, align 8, !tbaa !40
  store i32 12, ptr %1, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_goiftrue(ptr noundef captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %1)
  %i.a = load i32, ptr %1, align 8, !tbaa !54
  switch i32 %i.a, label %bb.e [
    i32 4, label %luaK_concat.exit
    i32 5, label %luaK_concat.exit
    i32 2, label %luaK_concat.exit
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val13 = load i32, ptr %i.b, align 8, !tbaa !40 ; 2 uses
  %i.c = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.d = sext i32 %.val13 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %.val.val, i64 %i.d ; 3 uses
  %i.f = icmp sgt i32 %.val13, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4    ; 2 uses
  %i.i = and i32 %i.h, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !40
  %.not.i.i = icmp sgt i8 %i.l, -1
  br i1 %.not.i.i, label %bb.d, label %invertjump.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !4
  br label %invertjump.exit

invertjump.exit:                                  ; preds = %bb.c, %bb.d
  %i.m = phi i32 [ %.pre.i, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %.0.i.i = phi ptr [ %i.e, %bb.d ], [ %i.g, %bb.c ]
  %i.n = and i32 %i.m, -16321
  %i.o = and i32 %i.m, 16320
  %.not.i = icmp eq i32 %i.o, 0
  %i.p = select i1 %.not.i, i32 64, i32 0
  %i.q = or disjoint i32 %i.p, %i.n
  store i32 %i.q, ptr %.0.i.i, align 4, !tbaa !4
  %i.r = load i32, ptr %i.b, align 8, !tbaa !40
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.s = tail call fastcc i32 @jumponcond(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %invertjump.exit
  %.0 = phi i32 [ %i.s, %bb.e ], [ %i.r, %invertjump.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.u = icmp eq i32 %.0, -1
  br i1 %i.u, label %luaK_concat.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.t, align 4, !tbaa !4    ; 2 uses
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %.val.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.x = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.x, align 8, !tbaa !21 ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %.0, ptr %i.t, align 4, !tbaa !4
  br label %luaK_concat.exit

bb.i:                                             ; preds = %bb.i, %.preheader.i
  %.0.i = phi i32 [ %i.af, %bb.i ], [ %i.v, %.preheader.i ] ; 3 uses
  %i.y = sext i32 %.0.i to i64                    ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4   ; 2 uses
  %i.ab = lshr i32 %i.aa, 14
  %i.ac = add nsw i32 %i.ab, -131071              ; 2 uses
  %i.ad = icmp eq i32 %i.ac, -1
  %i.ae = add nuw nsw i32 %.0.i, 1
  %i.af = add nsw i32 %i.ae, %i.ac                ; 2 uses
  %.not13.i = icmp eq i32 %i.af, -1
  %.not.i14 = select i1 %i.ad, i1 true, i1 %.not13.i
  br i1 %.not.i14, label %bb.j, label %bb.i, !llvm.loop !38

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.y ; 2 uses
  %.neg.i.i = xor i32 %.0.i, -1
  %i.ah = add i32 %.0, %.neg.i.i                  ; 2 uses
  %i.ai = add i32 %i.ah, -131072
  %i.aj = icmp ult i32 %i.ai, -262143
  br i1 %i.aj, label %bb.k, label %fixjump.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.al, ptr noundef nonnull @.str.1) #7
  %.pre.i15 = load i32, ptr %i.ag, align 4, !tbaa !4
  br label %fixjump.exit.i

fixjump.exit.i:                                   ; preds = %bb.k, %bb.j
  %i.am = phi i32 [ %i.aa, %bb.j ], [ %.pre.i15, %bb.k ]
  %i.an = and i32 %i.am, 16383
  %i.ao = shl i32 %i.ah, 14
  %i.ap = add i32 %i.ao, 2147467264
  %i.aq = or disjoint i32 %i.an, %i.ap
  store i32 %i.aq, ptr %i.ag, align 4, !tbaa !4
  br label %luaK_concat.exit

luaK_concat.exit:                                 ; preds = %bb.a, %bb.a, %bb.a, %bb.f, %bb.h, %fixjump.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !56 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.au, ptr %i.av, align 4, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ax = icmp eq i32 %i.as, -1
  br i1 %i.ax, label %luaK_patchtohere.exit, label %bb.l

bb.l:                                             ; preds = %luaK_concat.exit
  %i.ay = load i32, ptr %i.aw, align 8, !tbaa !4  ; 2 uses
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %bb.m, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.l
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.ba = getelementptr i8, ptr %.val.i.i, i64 24
  %.val.val.i.i = load ptr, ptr %i.ba, align 8, !tbaa !21 ; 2 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.as, ptr %i.aw, align 8, !tbaa !4
  br label %luaK_patchtohere.exit

bb.n:                                             ; preds = %bb.n, %.preheader.i.i
  %.0.i.i16 = phi i32 [ %i.bi, %bb.n ], [ %i.ay, %.preheader.i.i ] ; 3 uses
  %i.bb = sext i32 %.0.i.i16 to i64               ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4  ; 2 uses
  %i.be = lshr i32 %i.bd, 14
  %i.bf = add nsw i32 %i.be, -131071              ; 2 uses
  %i.bg = icmp eq i32 %i.bf, -1
  %i.bh = add nuw nsw i32 %.0.i.i16, 1
  %i.bi = add nsw i32 %i.bh, %i.bf                ; 2 uses
  %.not13.i.i = icmp eq i32 %i.bi, -1
  %.not.i.i17 = select i1 %i.bg, i1 true, i1 %.not13.i.i
  br i1 %.not.i.i17, label %bb.o, label %bb.n, !llvm.loop !38

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.bb ; 2 uses
  %.neg.i.i.i = xor i32 %.0.i.i16, -1
  %i.bk = add i32 %i.as, %.neg.i.i.i              ; 2 uses
  %i.bl = add i32 %i.bk, -131072
  %i.bm = icmp ult i32 %i.bl, -262143
  br i1 %i.bm, label %bb.p, label %fixjump.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.bo, ptr noundef nonnull @.str.1) #7
  %.pre.i.i = load i32, ptr %i.bj, align 4, !tbaa !4
  br label %fixjump.exit.i.i

fixjump.exit.i.i:                                 ; preds = %bb.p, %bb.o
  %i.bp = phi i32 [ %i.bd, %bb.o ], [ %.pre.i.i, %bb.p ]
  %i.bq = and i32 %i.bp, 16383
  %i.br = shl i32 %i.bk, 14
  %i.bs = add i32 %i.br, 2147467264
  %i.bt = or disjoint i32 %i.bq, %i.bs
  store i32 %i.bt, ptr %i.bj, align 4, !tbaa !4
  br label %luaK_patchtohere.exit

luaK_patchtohere.exit:                            ; preds = %luaK_concat.exit, %bb.m, %fixjump.exit.i.i
  store i32 -1, ptr %i.ar, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @jumponcond(ptr noundef captures(none) %0, ptr noundef captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !54
  switch i32 %i.a, label %.thread.thread [
    i32 11, label %bb.b
    i32 12, label %discharge2anyreg.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !40
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = and i32 %i.i, 63
  %i.k = icmp eq i32 %i.j, 19
  br i1 %i.k, label %bb.c, label %.thread.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !8
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !8
  %i.o = lshr i32 %i.i, 23
  %i.p = xor i32 %2, 1
  %i.q = tail call fastcc i32 @condjump(ptr noundef nonnull %0, i32 noundef 26, i32 noundef %i.o, i32 noundef 0, i32 noundef %i.p)
  br label %bb.i

.thread.thread:                                   ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !42   ; 3 uses
  %i.t = add nsw i32 %i.s, 1                      ; 3 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 115
  %i.w = load i8, ptr %i.v, align 1, !tbaa !43
  %i.x = zext i8 %i.w to i32
  %.not5.i = icmp slt i32 %i.s, %i.x
  br i1 %.not5.i, label %discharge2anyreg.exit, label %bb.d

bb.d:                                             ; preds = %.thread.thread
  %i.y = icmp samesign ugt i32 %i.s, 248
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.aa, ptr noundef nonnull @.str) #7
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !20
  %.pre.pre.i.i = load i32, ptr %i.r, align 4, !tbaa !42
  %.pre5.i.i = add nsw i32 %.pre.pre.i.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre4.pre-phi.i.i = phi i32 [ %.pre5.i.i, %bb.e ], [ %i.t, %bb.d ]
  %i.ab = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.u, %bb.d ]
  %i.ac = trunc i32 %i.t to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 115
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !43
  br label %discharge2anyreg.exit

discharge2anyreg.exit:                            ; preds = %.thread.thread, %bb.f
  %.pre-phi.i.i = phi i32 [ %i.t, %.thread.thread ], [ %.pre4.pre-phi.i.i, %bb.f ] ; 2 uses
  store i32 %.pre-phi.i.i, ptr %i.r, align 4, !tbaa !42
  %i.ae = add nsw i32 %.pre-phi.i.i, -1
  tail call fastcc void @discharge2reg(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.ae)
  %.pre = load i32, ptr %1, align 8, !tbaa !54
  %i.af = icmp eq i32 %.pre, 12
  br i1 %i.af, label %discharge2anyreg.exit.thread, label %freeexp.exit

discharge2anyreg.exit.thread:                     ; preds = %bb.a, %discharge2anyreg.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %i.ai = and i32 %i.ah, 256
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %bb.g, label %freeexp.exit

bb.g:                                             ; preds = %discharge2anyreg.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !19
  %i.al = zext i8 %i.ak to i32
  %.not3.i.i = icmp slt i32 %i.ah, %i.al
  br i1 %.not3.i.i, label %freeexp.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !42
  %i.ao = add nsw i32 %i.an, -1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !42
  br label %freeexp.exit

freeexp.exit:                                     ; preds = %discharge2anyreg.exit, %discharge2anyreg.exit.thread, %bb.g, %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !40
  %i.ar = tail call fastcc i32 @condjump(ptr noundef %0, i32 noundef 27, i32 noundef 255, i32 noundef %i.aq, i32 noundef %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %freeexp.exit
  %.1 = phi i32 [ %i.ar, %freeexp.exit ], [ %i.q, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_indexed(ptr noundef captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 4), (12, 16)) %1, ptr noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @luaK_exp2RK(ptr noundef %0, ptr noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.a, ptr %i.b, align 4, !tbaa !40
  store i32 9, ptr %1, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_prefix(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.expdesc, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 -1, ptr %i.a, align 4, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1, ptr %i.b, align 8, !tbaa !56
  store i32 5, ptr %3, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !40
  switch i32 %1, label %codenot.exit [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %codenot.exit.sink.split.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 8, !tbaa !54
  %i.e = icmp eq i32 %i.d, 5
  br i1 %i.e, label %bb.c, label %codenot.exit.sink.split.sink.split

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !56
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %isnumeral.exit, label %codenot.exit.sink.split.sink.split

isnumeral.exit:                                   ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !57
  %.not = icmp eq i32 %i.j, -1
  br i1 %.not, label %codenot.exit.sink.split, label %codenot.exit.sink.split.sink.split

bb.d:                                             ; preds = %bb.a
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %2)
  %i.k = load i32, ptr %2, align 8, !tbaa !54
  switch i32 %i.k, label %bb.p [
    i32 1, label %bb.e
end_hunk_2
begin_hunk_3_@codearith:bb.a
  %i.y = fdiv double %i.p, %i.r
  %i.z = tail call double @llvm.floor.f64(double %i.y)
  %i.aa = fneg double %i.z
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.r, double %i.p)
  br label %bb.o

bb.m:                                             ; preds = %bb.e
  %i.ac = tail call double @pow(double noundef %i.p, double noundef %i.r) #7, !tbaa !4
  br label %bb.o

bb.n:                                             ; preds = %bb.e
  %i.ad = fneg double %i.p
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.h, %bb.g, %bb.f
  %.0.i = phi double [ %i.ad, %bb.n ], [ %i.s, %bb.f ], [ %i.t, %bb.g ], [ %i.u, %bb.h ], [ %i.w, %bb.j ], [ %i.ab, %bb.l ], [ %i.ac, %bb.m ] ; 2 uses
  %i.ae = fcmp ord double %.0.i, 0.000000e+00
  br i1 %i.ae, label %constfolding.exit, label %bb.p

constfolding.exit:                                ; preds = %bb.e, %bb.o
  %.033.i = phi double [ %.0.i, %bb.o ], [ 0.000000e+00, %bb.e ]
  store double %.033.i, ptr %i.o, align 8, !tbaa !40
  br label %bb.ac

bb.p:                                             ; preds = %isnumeral.exit.i, %isnumeral.exit29.i, %bb.o, %bb.a, %bb.b, %bb.d, %bb.c
  switch i32 %1, label %.thread [
    i32 20, label %.thread36
    i32 18, label %.thread36
  ]

.thread:                                          ; preds = %bb.k, %bb.i, %bb.p
  %i.af = tail call i32 @luaK_exp2RK(ptr noundef %0, ptr noundef %3)
  br label %.thread36

.thread36:                                        ; preds = %bb.e, %bb.p, %bb.p, %.thread
  %i.ag = phi i32 [ %i.af, %.thread ], [ 0, %bb.p ], [ 0, %bb.p ], [ 0, %bb.e ] ; 2 uses
  %i.ah = tail call i32 @luaK_exp2RK(ptr noundef %0, ptr noundef nonnull %2) ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, %i.ag
  br i1 %i.ai, label %bb.q, label %bb.w

bb.q:                                             ; preds = %.thread36
  %i.aj = load i32, ptr %2, align 8, !tbaa !54
  %i.ak = icmp eq i32 %i.aj, 12
  br i1 %i.ak, label %bb.r, label %freeexp.exit

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !40 ; 2 uses
  %i.an = and i32 %i.am, 256
  %.not.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i, label %bb.s, label %freeexp.exit

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !19
  %i.aq = zext i8 %i.ap to i32
  %.not3.i.i = icmp slt i32 %i.am, %i.aq
  br i1 %.not3.i.i, label %freeexp.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !42
  %i.at = add nsw i32 %i.as, -1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !42
  br label %freeexp.exit

freeexp.exit:                                     ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %i.au = load i32, ptr %3, align 8, !tbaa !54
  %i.av = icmp eq i32 %i.au, 12
  br i1 %i.av, label %bb.u, label %freeexp.exit27

bb.u:                                             ; preds = %freeexp.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !40 ; 2 uses
  %i.ay = and i32 %i.ax, 256
  %.not.i.i25 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i25, label %bb.v, label %freeexp.exit27

bb.v:                                             ; preds = %bb.u
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !19
  %i.bb = zext i8 %i.ba to i32
  %.not3.i.i26 = icmp slt i32 %i.ax, %i.bb
  br i1 %.not3.i.i26, label %freeexp.exit27, label %freeexp.exit27.sink.split

bb.w:                                             ; preds = %.thread36
  %i.bc = load i32, ptr %3, align 8, !tbaa !54
  %i.bd = icmp eq i32 %i.bc, 12
  br i1 %i.bd, label %bb.x, label %freeexp.exit30

bb.x:                                             ; preds = %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !40 ; 2 uses
  %i.bg = and i32 %i.bf, 256
  %.not.i.i28 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i28, label %bb.y, label %freeexp.exit30

bb.y:                                             ; preds = %bb.x
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !19
  %i.bj = zext i8 %i.bi to i32
  %.not3.i.i29 = icmp slt i32 %i.bf, %i.bj
  br i1 %.not3.i.i29, label %freeexp.exit30, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !42
  %i.bm = add nsw i32 %i.bl, -1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !42
  br label %freeexp.exit30

freeexp.exit30:                                   ; preds = %bb.w, %bb.x, %bb.y, %bb.z
  %i.bn = load i32, ptr %2, align 8, !tbaa !54
  %i.bo = icmp eq i32 %i.bn, 12
  br i1 %i.bo, label %bb.aa, label %freeexp.exit27

bb.aa:                                            ; preds = %freeexp.exit30
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !40 ; 2 uses
  %i.br = and i32 %i.bq, 256
  %.not.i.i31 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i31, label %bb.ab, label %freeexp.exit27

bb.ab:                                            ; preds = %bb.aa
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.bt = load i8, ptr %i.bs, align 2, !tbaa !19
  %i.bu = zext i8 %i.bt to i32
  %.not3.i.i32 = icmp slt i32 %i.bq, %i.bu
  br i1 %.not3.i.i32, label %freeexp.exit27, label %freeexp.exit27.sink.split

freeexp.exit27.sink.split:                        ; preds = %bb.ab, %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !42
  %i.bx = add nsw i32 %i.bw, -1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !42
  br label %freeexp.exit27

freeexp.exit27:                                   ; preds = %freeexp.exit27.sink.split, %bb.ab, %bb.aa, %freeexp.exit30, %bb.v, %bb.u, %freeexp.exit
  %i.by = shl i32 %i.ah, 23
  %i.bz = shl i32 %i.ag, 14
  %i.ca = or i32 %i.bz, %i.by
  %i.cb = or disjoint i32 %i.ca, %1
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !31
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !32
  %i.cg = tail call fastcc i32 @luaK_code(ptr noundef %0, i32 noundef %i.cb, i32 noundef %i.cf)
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !40
  store i32 11, ptr %2, align 8, !tbaa !54
  br label %bb.ac

bb.ac:                                            ; preds = %constfolding.exit, %freeexp.exit27
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_infix(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.z [
    i32 13, label %bb.b
    i32 14, label %bb.c
    i32 6, label %bb.q
    i32 0, label %bb.x
    i32 1, label %bb.x
    i32 2, label %bb.x
    i32 3, label %bb.x
    i32 4, label %bb.x
    i32 5, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @luaK_goiftrue(ptr noundef %0, ptr noundef %2)
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %2)
  %i.a = load i32, ptr %2, align 8, !tbaa !54
  switch i32 %i.a, label %bb.e [
    i32 1, label %luaK_concat.exit.i
    i32 3, label %luaK_concat.exit.i
    i32 10, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !40
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = tail call fastcc i32 @jumponcond(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %i.d, %bb.e ], [ %i.c, %bb.d ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = icmp eq i32 %.0.i, -1
  br i1 %i.f, label %luaK_concat.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = load i32, ptr %i.e, align 8, !tbaa !4    ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.h, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.i = getelementptr i8, ptr %.val.i.i, i64 24
  %.val.val.i.i = load ptr, ptr %i.i, align 8, !tbaa !21 ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %.0.i, ptr %i.e, align 8, !tbaa !4
  br label %luaK_concat.exit.i

bb.i:                                             ; preds = %bb.i, %.preheader.i.i
  %.0.i.i = phi i32 [ %i.q, %bb.i ], [ %i.g, %.preheader.i.i ] ; 3 uses
  %i.j = sext i32 %.0.i.i to i64                  ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 2 uses
  %i.m = lshr i32 %i.l, 14
  %i.n = add nsw i32 %i.m, -131071                ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  %i.p = add nuw nsw i32 %.0.i.i, 1
  %i.q = add nsw i32 %i.p, %i.n                   ; 2 uses
  %.not13.i.i = icmp eq i32 %i.q, -1
  %.not.i.i = select i1 %i.o, i1 true, i1 %.not13.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.i, !llvm.loop !38

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.j ; 2 uses
  %.neg.i.i.i = xor i32 %.0.i.i, -1
  %i.s = add i32 %.0.i, %.neg.i.i.i               ; 2 uses
  %i.t = add i32 %i.s, -131072
  %i.u = icmp ult i32 %i.t, -262143
  br i1 %i.u, label %bb.k, label %fixjump.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.w, ptr noundef nonnull @.str.1) #7
  %.pre.i.i = load i32, ptr %i.r, align 4, !tbaa !4
  br label %fixjump.exit.i.i

fixjump.exit.i.i:                                 ; preds = %bb.k, %bb.j
  %i.x = phi i32 [ %i.l, %bb.j ], [ %.pre.i.i, %bb.k ]
  %i.y = and i32 %i.x, 16383
  %i.z = shl i32 %i.s, 14
  %i.aa = add i32 %i.z, 2147467264
  %i.ab = or disjoint i32 %i.y, %i.aa
  store i32 %i.ab, ptr %i.r, align 4, !tbaa !4
  br label %luaK_concat.exit.i

luaK_concat.exit.i:                               ; preds = %fixjump.exit.i.i, %bb.h, %bb.f, %bb.c, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !57 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = icmp eq i32 %i.ad, -1
  br i1 %i.ai, label %luaK_goiffalse.exit, label %bb.l

bb.l:                                             ; preds = %luaK_concat.exit.i
  %i.aj = load i32, ptr %i.ah, align 8, !tbaa !4  ; 2 uses
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %bb.m, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.l
  %.val.i.i.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.al = getelementptr i8, ptr %.val.i.i.i, i64 24
  %.val.val.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !21 ; 2 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.ad, ptr %i.ah, align 8, !tbaa !4
  br label %luaK_goiffalse.exit

bb.n:                                             ; preds = %bb.n, %.preheader.i.i.i
  %.0.i.i.i = phi i32 [ %i.at, %bb.n ], [ %i.aj, %.preheader.i.i.i ] ; 3 uses
  %i.am = sext i32 %.0.i.i.i to i64               ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4  ; 2 uses
  %i.ap = lshr i32 %i.ao, 14
  %i.aq = add nsw i32 %i.ap, -131071              ; 2 uses
  %i.ar = icmp eq i32 %i.aq, -1
  %i.as = add nuw nsw i32 %.0.i.i.i, 1
  %i.at = add nsw i32 %i.as, %i.aq                ; 2 uses
  %.not13.i.i.i = icmp eq i32 %i.at, -1
  %.not.i.i.i = select i1 %i.ar, i1 true, i1 %.not13.i.i.i
  br i1 %.not.i.i.i, label %bb.o, label %bb.n, !llvm.loop !38

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i, i64 %i.am ; 2 uses
  %.neg.i.i.i.i = xor i32 %.0.i.i.i, -1
  %i.av = add i32 %i.ad, %.neg.i.i.i.i            ; 2 uses
  %i.aw = add i32 %i.av, -131072
  %i.ax = icmp ult i32 %i.aw, -262143
  br i1 %i.ax, label %bb.p, label %fixjump.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.az, ptr noundef nonnull @.str.1) #7
  %.pre.i.i.i = load i32, ptr %i.au, align 4, !tbaa !4
  br label %fixjump.exit.i.i.i

fixjump.exit.i.i.i:                               ; preds = %bb.p, %bb.o
  %i.ba = phi i32 [ %i.ao, %bb.o ], [ %.pre.i.i.i, %bb.p ]
  %i.bb = and i32 %i.ba, 16383
  %i.bc = shl i32 %i.av, 14
  %i.bd = add i32 %i.bc, 2147467264
  %i.be = or disjoint i32 %i.bb, %i.bd
  store i32 %i.be, ptr %i.au, align 4, !tbaa !4
  br label %luaK_goiffalse.exit

luaK_goiffalse.exit:                              ; preds = %luaK_concat.exit.i, %bb.m, %fixjump.exit.i.i.i
  store i32 -1, ptr %i.ac, align 4, !tbaa !57
  br label %bb.aa

bb.q:                                             ; preds = %bb.a
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %2)
  %i.bf = load i32, ptr %2, align 8, !tbaa !54
  %i.bg = icmp eq i32 %i.bf, 12
  br i1 %i.bg, label %bb.r, label %freeexp.exit.i

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !40 ; 2 uses
  %i.bj = and i32 %i.bi, 256
  %.not.i.i.i12 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i12, label %bb.s, label %freeexp.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !19
  %i.bm = zext i8 %i.bl to i32
  %.not3.i.i.i = icmp slt i32 %i.bi, %i.bm
  br i1 %.not3.i.i.i, label %freeexp.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !42
  %i.bp = add nsw i32 %i.bo, -1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !42
  br label %freeexp.exit.i

freeexp.exit.i:                                   ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !42 ; 3 uses
  %i.bs = add nsw i32 %i.br, 1                    ; 3 uses
  %i.bt = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 115
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !43
  %i.bw = zext i8 %i.bv to i32
  %.not.i = icmp slt i32 %i.br, %i.bw
  br i1 %.not.i, label %luaK_exp2nextreg.exit, label %bb.u

bb.u:                                             ; preds = %freeexp.exit.i
  %i.bx = icmp samesign ugt i32 %i.br, 248
  br i1 %i.bx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.bz, ptr noundef nonnull @.str) #7
  %.pre.i.i.i11 = load ptr, ptr %0, align 8, !tbaa !20
  %.pre.pre.i.i = load i32, ptr %i.bq, align 4, !tbaa !42
  %.pre5.i.i = add nsw i32 %.pre.pre.i.i, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pre4.pre-phi.i.i = phi i32 [ %.pre5.i.i, %bb.v ], [ %i.bs, %bb.u ]
  %i.ca = phi ptr [ %.pre.i.i.i11, %bb.v ], [ %i.bt, %bb.u ]
  %i.cb = trunc i32 %i.bs to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 115
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !43
  br label %luaK_exp2nextreg.exit

luaK_exp2nextreg.exit:                            ; preds = %freeexp.exit.i, %bb.w
  %.pre-phi.i.i = phi i32 [ %i.bs, %freeexp.exit.i ], [ %.pre4.pre-phi.i.i, %bb.w ] ; 2 uses
  store i32 %.pre-phi.i.i, ptr %i.bq, align 4, !tbaa !42
  %i.cd = add nsw i32 %.pre-phi.i.i, -1
  tail call fastcc void @exp2reg(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.cd)
  br label %bb.aa

bb.x:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ce = load i32, ptr %2, align 8, !tbaa !54
  %i.cf = icmp eq i32 %i.ce, 5
  br i1 %i.cf, label %bb.y, label %isnumeral.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !56
  %i.ci = icmp eq i32 %i.ch, -1
  br i1 %i.ci, label %isnumeral.exit, label %isnumeral.exit.thread

isnumeral.exit:                                   ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !57
  %.not = icmp eq i32 %i.ck, -1
  br i1 %.not, label %bb.aa, label %isnumeral.exit.thread

isnumeral.exit.thread:                            ; preds = %bb.x, %bb.y, %isnumeral.exit
  %i.cl = tail call i32 @luaK_exp2RK(ptr noundef %0, ptr noundef nonnull %2) ; 0 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.a
  %i.cm = tail call i32 @luaK_exp2RK(ptr noundef %0, ptr noundef %2) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %isnumeral.exit, %isnumeral.exit.thread, %bb.z, %luaK_exp2nextreg.exit, %luaK_goiffalse.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_posfix(ptr noundef %0, i32 noundef %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.by [
    i32 13, label %bb.b
    i32 14, label %bb.h
    i32 6, label %bb.n
    i32 0, label %bb.ac
    i32 1, label %bb.ad
    i32 2, label %bb.ae
    i32 3, label %bb.af
    i32 4, label %bb.ag
    i32 5, label %bb.ah
    i32 8, label %bb.ai
    i32 7, label %bb.ap
    i32 9, label %bb.aw
    i32 10, label %bb.bd
    i32 11, label %bb.bk
    i32 12, label %bb.br
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !57   ; 3 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %luaK_concat.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %.val.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.g = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.g, align 8, !tbaa !21 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.c, ptr %i.a, align 4, !tbaa !4
  br label %luaK_concat.exit

bb.e:                                             ; preds = %bb.e, %.preheader.i
  %.0.i = phi i32 [ %i.o, %bb.e ], [ %i.e, %.preheader.i ] ; 3 uses
  %i.h = sext i32 %.0.i to i64                    ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4    ; 2 uses
  %i.k = lshr i32 %i.j, 14
  %i.l = add nsw i32 %i.k, -131071                ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  %i.n = add nuw nsw i32 %.0.i, 1
  %i.o = add nsw i32 %i.n, %i.l                   ; 2 uses
  %.not13.i = icmp eq i32 %i.o, -1
  %.not.i = select i1 %i.m, i1 true, i1 %.not13.i
  br i1 %.not.i, label %bb.f, label %bb.e, !llvm.loop !38

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.h ; 2 uses
  %.neg.i.i = xor i32 %.0.i, -1
end_hunk_3
