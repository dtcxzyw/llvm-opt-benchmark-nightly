Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lcode?download=true
inline.NumInlined: 205
inline.NumDeleted: 60
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@patchlistaux:bb.a
  store i32 %i.ap, ptr %i.e, align 4, !tbaa !57
  %.not27 = icmp eq i32 %i.k, -1
  %.not = select i1 %i.i, i1 true, i1 %.not27
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %fixjump.exit17, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_patchtohere(ptr nofree noundef captures(none) initializes((44, 48)) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.b, ptr %i.c, align 4, !tbaa !46
  tail call fastcc void @patchlistaux(ptr noundef readonly %0, i32 noundef %1, i32 noundef %i.b, i32 noundef 255, i32 noundef %i.b)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = tail call ptr @luaM_growaux_(ptr noundef %i.e, ptr noundef %i.g, i32 noundef %i.i, ptr noundef nonnull %i.j, i32 noundef 4, i32 noundef 2147483647, ptr noundef nonnull @.str.1) #11 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !56
  %i.l = load i32, ptr %i.h, align 8, !tbaa !45   ; 2 uses
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.h, align 8, !tbaa !45
  %i.n = sext i32 %i.l to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.n
  store i32 %1, ptr %i.o, align 4, !tbaa !57
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !35   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !20   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !58
  %i.u = sub nsw i32 %i.r, %i.t                   ; 2 uses
  %i.v = load i32, ptr %i.h, align 8, !tbaa !45
  %i.w = add nsw i32 %i.v, -1                     ; 3 uses
  %i.x = add i32 %i.u, -128
  %i.y = icmp ult i32 %i.x, -255
  br i1 %i.y, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 78 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !59   ; 2 uses
  %i.ab = add i8 %i.aa, 1
  store i8 %i.ab, ptr %i.z, align 2, !tbaa !59
  %i.ac = icmp slt i8 %i.aa, 0
  br i1 %i.ac, label %bb.c, label %savelineinfo.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !61
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = tail call ptr @luaM_growaux_(ptr noundef %i.ae, ptr noundef %i.ag, i32 noundef %i.ai, ptr noundef nonnull %i.aj, i32 noundef 8, i32 noundef 2147483647, ptr noundef nonnull @.str.5) #11 ; 2 uses
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !60
  %i.al = load i32, ptr %i.ah, align 4, !tbaa !61 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.am ; 2 uses
  store i32 %i.w, ptr %i.an, align 4, !tbaa !63
  %i.ao = add nsw i32 %i.al, 1
  store i32 %i.ao, ptr %i.ah, align 4, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.r, ptr %i.ap, align 4, !tbaa !64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 1, ptr %i.aq, align 2, !tbaa !59
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !35
  br label %savelineinfo.exit

savelineinfo.exit:                                ; preds = %bb.b, %bb.c
  %i.ar = phi ptr [ %.pre, %bb.c ], [ %i.p, %bb.b ]
  %.0.i = phi i32 [ -128, %bb.c ], [ %i.u, %bb.b ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !65
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ax = tail call ptr @luaM_growaux_(ptr noundef %i.at, ptr noundef %i.av, i32 noundef %i.w, ptr noundef nonnull %i.aw, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.1) #11 ; 2 uses
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !65
  %i.ay = trunc nsw i32 %.0.i to i8
  %i.az = sext i32 %i.w to i64
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 %i.az
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !25
  store i32 %i.r, ptr %i.s, align 8, !tbaa !58
  %i.bb = load i32, ptr %i.h, align 8, !tbaa !45
  %i.bc = add nsw i32 %i.bb, -1
  ret i32 %i.bc
}

declare hidden ptr @luaM_growaux_(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483648, 2147483647) i32 @luaK_codevABCk(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = shl i32 %2, 7
  %i.b = or i32 %i.a, %1
  %i.c = shl i32 %3, 16
  %i.d = or i32 %i.b, %i.c
  %i.e = shl i32 %4, 22
  %i.f = or i32 %i.d, %i.e
  %i.g = shl i32 %5, 15
  %i.h = or i32 %i.f, %i.g
  %i.i = tail call i32 @luaK_code(ptr noundef %0, i32 noundef %i.h)
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483648, 2147483647) i32 @luaK_codeABx(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = shl i32 %2, 7
  %i.b = or i32 %i.a, %1
  %i.c = shl i32 %3, 15
  %i.d = or i32 %i.b, %i.c
  %i.e = tail call i32 @luaK_code(ptr noundef %0, i32 noundef %i.d)
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_checkstack(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.b = load i8, ptr %i.a, align 1, !tbaa !66
  %i.c = zext i8 %i.b to i32
  %i.d = add nsw i32 %1, %i.c                     ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !67
  %i.h = zext i8 %i.g to i32
  %i.i = icmp sgt i32 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @luaY_checklimit(ptr noundef nonnull %0, i32 noundef %i.d, i32 noundef 255, ptr noundef nonnull @.str.2) #11
  %i.j = trunc i32 %i.d to i8
  %i.k = load ptr, ptr %0, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i8 %i.j, ptr %i.l, align 4, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_reserveregs(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !66    ; 2 uses
  %i.c = zext i8 %i.b to i32
  %i.d = add nsw i32 %1, %i.c                     ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !67
  %i.h = zext i8 %i.g to i32
  %i.i = icmp sgt i32 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %luaK_checkstack.exit

bb.b:                                             ; preds = %bb.a
  tail call void @luaY_checklimit(ptr noundef nonnull %0, i32 noundef %i.d, i32 noundef 255, ptr noundef nonnull @.str.2) #11
  %i.j = trunc i32 %i.d to i8
  %i.k = load ptr, ptr %0, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i8 %i.j, ptr %i.l, align 4, !tbaa !67
  %.pre = load i8, ptr %i.a, align 1, !tbaa !66
  br label %luaK_checkstack.exit

luaK_checkstack.exit:                             ; preds = %bb.a, %bb.b
  %i.m = phi i8 [ %i.b, %bb.a ], [ %.pre, %bb.b ]
  %i.n = trunc i32 %1 to i8
  %i.o = add i8 %i.m, %i.n
  store i8 %i.o, ptr %i.a, align 1, !tbaa !66
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_int(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %3 = alloca %struct.TValue, align 8             ; 6 uses
  %i.a = add i64 %2, -65537
  %i.b = icmp ult i64 %i.a, -131072
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nsw i64 %2 to i32
  %i.d = shl i32 %1, 7
  %4 = or disjoint i32 %i.d, 1
  %5 = shl i32 %i.c, 15
  %6 = add i32 %5, 2147450880
  %i.e = or i32 %6, %4
  %i.f = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.e) ; 0 uses
  br label %luaK_codek.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i64 %2, ptr %3, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 3, ptr %i.g, align 8, !tbaa !44
  %i.h = call fastcc i32 @k2proto(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %3) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.i = icmp slt i32 %i.h, 131072
  %i.j = shl i32 %1, 7                            ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = shl i32 %i.h, 15
  %i.l = or i32 %i.j, %i.k
  %i.m = or disjoint i32 %i.l, 3
  %i.n = call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.m) ; 0 uses
  br label %luaK_codek.exit

bb.e:                                             ; preds = %bb.c
  %i.o = or disjoint i32 %i.j, 4
  %i.p = call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.o) ; 0 uses
  %i.q = shl i32 %i.h, 7
  %i.r = or disjoint i32 %i.q, 84
  %i.s = call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.r) ; 0 uses
  br label %luaK_codek.exit

luaK_codek.exit:                                  ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_codecheckglobal(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %1) ; 0 uses
  tail call void @luaK_fixline(ptr noundef %0, i32 noundef %3)
  %i.b = icmp sgt i32 %2, 131070
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25
  %i.e = shl i32 %i.d, 7
  %i.f = shl i32 %2, 15
  %i.g = add i32 %i.f, 32850
  %i.h = select i1 %i.b, i32 82, i32 %i.g
  %i.i = or i32 %i.h, %i.e
  %i.j = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.i) ; 0 uses
  tail call void @luaK_fixline(ptr noundef %0, i32 noundef %3)
  %i.k = load i32, ptr %1, align 8, !tbaa !24
  %i.l = icmp eq i32 %i.k, 8
  br i1 %i.l, label %bb.b, label %freeexp.exit

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.c, align 8, !tbaa !25
  %i.n = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.o = zext i8 %i.n to i32
  %.not.i.i = icmp slt i32 %i.m, %i.o
  br i1 %.not.i.i, label %freeexp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !66
  %i.r = add i8 %i.q, -1
  store i8 %i.r, ptr %i.p, align 1, !tbaa !66
  br label %freeexp.exit

freeexp.exit:                                     ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_exp2anyreg(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %1)
  %i.a = load i32, ptr %1, align 8, !tbaa !24
  %i.b = icmp eq i32 %i.a, 8
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !23
  %.not = icmp eq i32 %i.d, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.g, align 8, !tbaa !25
  %i.i = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.j = zext i8 %i.i to i32
  %.not15 = icmp slt i32 %i.h, %i.j
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.g, align 8, !tbaa !25
  tail call fastcc void @exp2reg(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.k)
  br label %bb.i

bb.e:                                             ; preds = %bb.c, %bb.a
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef nonnull %1)
  %i.l = load i32, ptr %1, align 8, !tbaa !24
  %i.m = icmp eq i32 %i.l, 8
  br i1 %i.m, label %bb.f, label %freeexp.exit.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !25
  %i.p = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.q = zext i8 %i.p to i32
  %.not.i.i.i = icmp slt i32 %i.o, %i.q
  br i1 %.not.i.i.i, label %freeexp.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !66
  %i.t = add i8 %i.s, -1
  store i8 %i.t, ptr %i.r, align 1, !tbaa !66
  br label %freeexp.exit.i

freeexp.exit.i:                                   ; preds = %bb.g, %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !66    ; 3 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load i8, ptr %i.x, align 4, !tbaa !67
  %.not.i = icmp ult i8 %i.v, %i.y
  br i1 %.not.i, label %luaK_exp2nextreg.exit, label %bb.h

bb.h:                                             ; preds = %freeexp.exit.i
  %i.z = zext i8 %i.v to i32
  %i.aa = add nuw nsw i32 %i.z, 1                 ; 2 uses
  tail call void @luaY_checklimit(ptr noundef nonnull %0, i32 noundef %i.aa, i32 noundef 255, ptr noundef nonnull @.str.2) #11
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = load ptr, ptr %0, align 8, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i8 %i.ab, ptr %i.ad, align 4, !tbaa !67
  %.pre.i.i = load i8, ptr %i.u, align 1, !tbaa !66
  br label %luaK_exp2nextreg.exit

luaK_exp2nextreg.exit:                            ; preds = %freeexp.exit.i, %bb.h
  %i.ae = phi i8 [ %i.v, %freeexp.exit.i ], [ %.pre.i.i, %bb.h ]
  %i.af = add i8 %i.ae, 1                         ; 2 uses
  store i8 %i.af, ptr %i.u, align 1, !tbaa !66
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -1
  tail call fastcc void @exp2reg(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %luaK_exp2nextreg.exit, %bb.d
  %.0.in = phi ptr [ %i.g, %bb.d ], [ %i.ai, %luaK_exp2nextreg.exit ], [ %i.g, %bb.b ]
  %.0 = load i32, ptr %.0.in, align 8, !tbaa !25
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_fixline(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr i8, ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !25    ; 2 uses
  %.not.i = icmp eq i8 %i.i, -128
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !58
  %i.m = sub nsw i32 %i.l, %i.j                   ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 78 ; 2 uses
  %i.o = load i8, ptr %i.n, align 2, !tbaa !59
  %i.p = add i8 %i.o, -1                          ; 2 uses
  store i8 %i.p, ptr %i.n, align 2, !tbaa !59
  br label %removelastlineinfo.exit

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !61
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 -127, ptr %i.t, align 2, !tbaa !59
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !58
  br label %removelastlineinfo.exit

removelastlineinfo.exit:                          ; preds = %bb.b, %bb.c
  %i.u = phi i8 [ %i.p, %bb.b ], [ -127, %bb.c ]  ; 2 uses
  %i.v = phi i32 [ %i.m, %bb.b ], [ %.pre, %bb.c ]
  %i.w = sub nsw i32 %1, %i.v                     ; 2 uses
  %i.x = add nsw i32 %i.c, -1                     ; 3 uses
  %i.y = add i32 %i.w, -128
end_hunk_0
begin_hunk_1_@exp2reg:bb.a
  br i1 %.not.i.i53, label %bb.n, label %getjumpcontrol.exit.i47

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre.i46 = load i32, ptr %i.az, align 4, !tbaa !57
  br label %getjumpcontrol.exit.i47

getjumpcontrol.exit.i47:                          ; preds = %bb.n, %bb.m
  %i.bi = phi i32 [ %.pre.i46, %bb.n ], [ %i.bc, %bb.m ]
  %i.bj = and i32 %i.bi, 127
  %.not9.not.i48 = icmp eq i32 %i.bj, 67
  br i1 %.not9.not.i48, label %select.unfold.i50, label %need_value.exit

select.unfold.i50:                                ; preds = %getjumpcontrol.exit.i47
  %i.bk = load i32, ptr %i.az, align 4, !tbaa !57
  %i.bl = lshr i32 %i.bk, 7
  %i.bm = add nsw i32 %i.bl, -16777215            ; 2 uses
  %i.bn = icmp eq i32 %i.bm, -1
  %i.bo = add nuw nsw i32 %.0713.i45, 1
  %i.bp = add nsw i32 %i.bo, %i.bm                ; 2 uses
  %.not15.i51 = icmp eq i32 %i.bp, -1
  %.not.i52 = select i1 %i.bn, i1 true, i1 %.not15.i51
  br i1 %.not.i52, label %need_value.exit54.thread, label %bb.l

need_value.exit:                                  ; preds = %getjumpcontrol.exit.i, %getjumpcontrol.exit.i47
  %i.bq = load i32, ptr %1, align 8, !tbaa !24
  %i.br = icmp eq i32 %i.bq, 19
  br i1 %i.br, label %bb.p, label %bb.o

bb.o:                                             ; preds = %need_value.exit
  %i.bs = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef 2147483448)
  br label %bb.p

bb.p:                                             ; preds = %need_value.exit, %bb.o
  %i.bt = phi i32 [ %i.bs, %bb.o ], [ -1, %need_value.exit ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !45
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !46
  %i.bx = shl i32 %2, 7                           ; 2 uses
  %i.by = or disjoint i32 %i.bx, 6
  %i.bz = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.by)
  %i.ca = load i32, ptr %i.bu, align 8, !tbaa !45
  store i32 %i.ca, ptr %i.bw, align 4, !tbaa !46
  %i.cb = or disjoint i32 %i.bx, 7
  %i.cc = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.cb)
  %i.cd = load i32, ptr %i.bu, align 8, !tbaa !45 ; 3 uses
  store i32 %i.cd, ptr %i.bw, align 4, !tbaa !46
  tail call fastcc void @patchlistaux(ptr noundef readonly %0, i32 noundef %i.bt, i32 noundef %i.cd, i32 noundef 255, i32 noundef %i.cd)
  %.pre = load i32, ptr %i.ac, align 4, !tbaa !23
  br label %need_value.exit54.thread

need_value.exit54.thread:                         ; preds = %select.unfold.i50, %.loopexit, %bb.p
  %i.ce = phi i32 [ %.pre, %bb.p ], [ -1, %.loopexit ], [ %i.ad, %select.unfold.i50 ]
  %.036 = phi i32 [ %i.bz, %bb.p ], [ -1, %.loopexit ], [ -1, %select.unfold.i50 ]
  %.0 = phi i32 [ %i.cc, %bb.p ], [ -1, %.loopexit ], [ -1, %select.unfold.i50 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !45 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !46
  tail call fastcc void @patchlistaux(ptr noundef %0, i32 noundef %i.ce, i32 noundef %i.cg, i32 noundef %2, i32 noundef %.036)
  %i.ci = load i32, ptr %i.aa, align 8, !tbaa !22
  tail call fastcc void @patchlistaux(ptr noundef %0, i32 noundef %i.ci, i32 noundef %i.cg, i32 noundef %2, i32 noundef %.0)
  br label %bb.q

bb.q:                                             ; preds = %need_value.exit54.thread, %luaK_concat.exit
  store i32 -1, ptr %i.aa, align 8, !tbaa !22
  store i32 -1, ptr %i.ac, align 4, !tbaa !23
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %2, ptr %i.cj, align 8, !tbaa !25
  store i32 8, ptr %1, align 8, !tbaa !24
  ret void
}

declare hidden zeroext i8 @luaY_nvarstack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @luaK_exp2anyregup(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !24
  switch i32 %i.a, label %bb.c [
    i32 12, label %bb.b
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !23
  %.not7 = icmp eq i32 %i.c, %i.e
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_exp2val(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !24
  %i.b = icmp eq i32 %i.a, 19
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !23
  %.not = icmp eq i32 %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_storevar(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !24
  switch i32 %i.a, label %bb.o [
    i32 9, label %bb.b
    i32 12, label %bb.e
    i32 16, label %bb.f
    i32 17, label %bb.h
    i32 18, label %bb.j
    i32 15, label %bb.l
    i32 14, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 8, !tbaa !24
  %i.c = icmp eq i32 %i.b, 8
  br i1 %i.c, label %bb.c, label %freeexp.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !25
  %i.f = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.g = zext i8 %i.f to i32
  %.not.i.i = icmp slt i32 %i.e, %i.g
  br i1 %.not.i.i, label %freeexp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !66
  %i.j = add i8 %i.i, -1
  store i8 %i.j, ptr %i.h, align 1, !tbaa !66
  br label %freeexp.exit

freeexp.exit:                                     ; preds = %bb.b, %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !25
  %i.m = zext i8 %i.l to i32
  tail call fastcc void @exp2reg(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %i.m)
  br label %freeexp.exit40

bb.e:                                             ; preds = %bb.a
  %i.n = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %2)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !25
  %i.q = shl i32 %i.n, 7
  %i.r = shl i32 %i.p, 16
  %i.s = or i32 %i.q, %i.r
  %i.t = or disjoint i32 %i.s, 10
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.w = load i8, ptr %i.v, align 2, !tbaa !25
  %i.x = zext i8 %i.w to i32
  %i.y = load i16, ptr %i.u, align 8, !tbaa !25
  %i.z = sext i16 %i.y to i32
  %i.aa = tail call fastcc i32 @luaK_exp2K(ptr noundef %0, ptr noundef %2)
  %.not.i.i29 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i29, label %bb.g, label %codeABRK.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %2) ; 0 uses
  br label %codeABRK.exit

codeABRK.exit:                                    ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ 0, %bb.g ], [ 32768, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !25
  %i.ae = shl nuw nsw i32 %i.x, 7
  %i.af = shl nsw i32 %i.z, 16
  %i.ag = or disjoint i32 %i.af, %i.ae
  %3 = or disjoint i32 %i.ag, 15
  %4 = shl i32 %i.ad, 24
  %i.ah = or disjoint i32 %.0.i.i, %3
  %i.ai = or i32 %4, %i.ah
  br label %.sink.split

bb.h:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !25
  %i.am = zext i8 %i.al to i32
  %i.an = load i16, ptr %i.aj, align 8, !tbaa !25
  %i.ao = sext i16 %i.an to i32
  %i.ap = tail call fastcc i32 @luaK_exp2K(ptr noundef %0, ptr noundef %2)
  %.not.i.i30 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i30, label %bb.i, label %codeABRK.exit32

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %2) ; 0 uses
  br label %codeABRK.exit32

codeABRK.exit32:                                  ; preds = %bb.h, %bb.i
  %.0.i.i31 = phi i32 [ 0, %bb.i ], [ 32768, %bb.h ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !25
  %i.at = shl nuw nsw i32 %i.am, 7
  %i.au = shl nsw i32 %i.ao, 16
  %i.av = or disjoint i32 %i.au, %i.at
  %5 = or disjoint i32 %i.av, 17
  %6 = shl i32 %i.as, 24
  %i.aw = or disjoint i32 %.0.i.i31, %5
  %i.ax = or i32 %6, %i.aw
  br label %.sink.split

bb.j:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !25
  %i.bb = zext i8 %i.ba to i32
  %i.bc = load i16, ptr %i.ay, align 8, !tbaa !25
  %i.bd = sext i16 %i.bc to i32
  %i.be = tail call fastcc i32 @luaK_exp2K(ptr noundef %0, ptr noundef %2)
  %.not.i.i33 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i33, label %bb.k, label %codeABRK.exit35

bb.k:                                             ; preds = %bb.j
  %i.bf = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %2) ; 0 uses
  br label %codeABRK.exit35

codeABRK.exit35:                                  ; preds = %bb.j, %bb.k
  %.0.i.i34 = phi i32 [ 0, %bb.k ], [ 32768, %bb.j ]
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !25
  %i.bi = shl nuw nsw i32 %i.bb, 7
  %i.bj = shl nsw i32 %i.bd, 16
  %i.bk = or disjoint i32 %i.bj, %i.bi
  %7 = or disjoint i32 %i.bk, 18
  %8 = shl i32 %i.bh, 24
  %i.bl = or disjoint i32 %.0.i.i34, %7
  %i.bm = or i32 %8, %i.bl
  br label %.sink.split

bb.l:                                             ; preds = %bb.a
  %i.bn = load ptr, ptr %0, align 8, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 11 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !68
  %i.bq = or i8 %i.bp, 2
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !68
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bt = load i8, ptr %i.bs, align 2, !tbaa !25
  %i.bu = zext i8 %i.bt to i32
  %i.bv = load i16, ptr %i.br, align 8, !tbaa !25
  %i.bw = sext i16 %i.bv to i32
  %i.bx = tail call fastcc i32 @luaK_exp2K(ptr noundef %0, ptr noundef %2)
  %.not.i.i36 = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i36, label %bb.n, label %codeABRK.exit38

bb.n:                                             ; preds = %bb.m
  %i.by = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %2) ; 0 uses
  br label %codeABRK.exit38

codeABRK.exit38:                                  ; preds = %bb.m, %bb.n
  %.0.i.i37 = phi i32 [ 0, %bb.n ], [ 32768, %bb.m ]
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !25
  %i.cb = shl nuw nsw i32 %i.bu, 7
  %i.cc = shl nsw i32 %i.bw, 16
  %i.cd = or disjoint i32 %i.cc, %i.cb
  %9 = or disjoint i32 %i.cd, 16
  %10 = shl i32 %i.ca, 24
  %i.ce = or disjoint i32 %.0.i.i37, %9
  %i.cf = or i32 %10, %i.ce
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %codeABRK.exit, %codeABRK.exit32, %codeABRK.exit35, %codeABRK.exit38
  %.sink = phi i32 [ %i.cf, %codeABRK.exit38 ], [ %i.bm, %codeABRK.exit35 ], [ %i.ax, %codeABRK.exit32 ], [ %i.ai, %codeABRK.exit ], [ %i.t, %bb.e ]
  %i.cg = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %.sink) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.a
  %i.ch = load i32, ptr %2, align 8, !tbaa !24
  %i.ci = icmp eq i32 %i.ch, 8
  br i1 %i.ci, label %bb.p, label %freeexp.exit40

bb.p:                                             ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !25
  %i.cl = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.cm = zext i8 %i.cl to i32
  %.not.i.i39 = icmp slt i32 %i.ck, %i.cm
  br i1 %.not.i.i39, label %freeexp.exit40, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !66
  %i.cp = add i8 %i.co, -1
  store i8 %i.cp, ptr %i.cn, align 1, !tbaa !66
  br label %freeexp.exit40

freeexp.exit40:                                   ; preds = %bb.q, %bb.p, %bb.o, %freeexp.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_goiftrue(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %1)
  %i.a = load i32, ptr %1, align 8, !tbaa !24
  switch i32 %i.a, label %bb.e [
    i32 19, label %bb.b
    i32 4, label %luaK_concat.exit
    i32 5, label %luaK_concat.exit
    i32 6, label %luaK_concat.exit
    i32 7, label %luaK_concat.exit
    i32 2, label %luaK_concat.exit
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val13 = load i32, ptr %i.b, align 8, !tbaa !25 ; 2 uses
  %i.c = getelementptr i8, ptr %.val, i64 64
  %.val.val = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.d = sext i32 %.val13 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %.val.val, i64 %i.d ; 3 uses
  %i.f = icmp sgt i32 %.val13, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !57   ; 2 uses
  %i.i = and i32 %i.h, 127
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !25
  %i.m = and i8 %i.l, 16
  %.not.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i, label %bb.d, label %negatecondition.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !57
  br label %negatecondition.exit

negatecondition.exit:                             ; preds = %bb.c, %bb.d
  %i.n = phi i32 [ %.pre.i, %bb.d ], [ %i.h, %bb.c ]
  %.0.i.i = phi ptr [ %i.e, %bb.d ], [ %i.g, %bb.c ]
  %i.o = xor i32 %i.n, 32768
  store i32 %i.o, ptr %.0.i.i, align 4, !tbaa !57
  %i.p = load i32, ptr %i.b, align 8, !tbaa !25
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.q = tail call fastcc i32 @jumponcond(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %negatecondition.exit
  %.0 = phi i32 [ %i.q, %bb.e ], [ %i.p, %negatecondition.exit ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.s = icmp eq i32 %.0, -1
  br i1 %i.s, label %luaK_concat.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.r, align 4, !tbaa !57   ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %.val.i = load ptr, ptr %0, align 8, !tbaa !47
  %i.v = getelementptr i8, ptr %.val.i, i64 64
  %.val.val.i = load ptr, ptr %i.v, align 8, !tbaa !56 ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %.0, ptr %i.r, align 4, !tbaa !57
  br label %luaK_concat.exit

bb.i:                                             ; preds = %bb.i, %.preheader.i
  %.0.i = phi i32 [ %i.ad, %bb.i ], [ %i.t, %.preheader.i ] ; 3 uses
  %i.w = sext i32 %.0.i to i64                    ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !57   ; 2 uses
  %i.z = lshr i32 %i.y, 7
  %i.aa = add nsw i32 %i.z, -16777215             ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  %i.ac = add nuw nsw i32 %.0.i, 1
  %i.ad = add nsw i32 %i.ac, %i.aa                ; 2 uses
  %.not13.i = icmp eq i32 %i.ad, -1
  %.not.i = select i1 %i.ab, i1 true, i1 %.not13.i
  br i1 %.not.i, label %bb.j, label %bb.i

bb.j:                                             ; preds = %bb.i
  %.neg.i.i = xor i32 %.0.i, -1
  %i.ae = add i32 %.0, %.neg.i.i                  ; 2 uses
  %i.af = add i32 %i.ae, 16777215
  %or.cond.i.i = icmp ult i32 %i.af, 33554432
  br i1 %or.cond.i.i, label %fixjump.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35
  tail call void @luaX_syntaxerror(ptr noundef %i.ah, ptr noundef nonnull @.str.4) #12
  unreachable

fixjump.exit.i:                                   ; preds = %bb.j
  %i.ai = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.w
  %i.aj = and i32 %i.y, 127
  %i.ak = shl i32 %i.ae, 7
  %i.al = add i32 %i.ak, 2147483520
  %i.am = or disjoint i32 %i.al, %i.aj
  store i32 %i.am, ptr %i.ai, align 4, !tbaa !57
  br label %luaK_concat.exit

luaK_concat.exit:                                 ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.f, %bb.h, %fixjump.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !45 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !46
  tail call fastcc void @patchlistaux(ptr noundef readonly %0, i32 noundef %i.ao, i32 noundef %i.aq, i32 noundef 255, i32 noundef %i.aq)
  store i32 -1, ptr %i.an, align 8, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @jumponcond(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !24
  switch i32 %i.a, label %.thread.thread [
    i32 20, label %bb.b
    i32 8, label %discharge2anyreg.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !25
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !57   ; 2 uses
  %i.j = and i32 %i.i, 127
  %i.k = icmp eq i32 %i.j, 51
  br i1 %i.k, label %bb.c, label %.thread.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !45   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !25    ; 2 uses
  %.not.i.i = icmp eq i8 %i.s, -128
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = sext i8 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !58
  %i.w = sub nsw i32 %i.v, %i.t
  store i32 %i.w, ptr %i.u, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 78 ; 2 uses
  %i.y = load i8, ptr %i.x, align 2, !tbaa !59
  %i.z = add i8 %i.y, -1
  store i8 %i.z, ptr %i.x, align 2, !tbaa !59
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !61
  %i.ac = add nsw i32 %i.ab, -1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 -127, ptr %i.ad, align 2, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = add nsw i32 %i.m, -1
  store i32 %i.ae, ptr %i.l, align 8, !tbaa !45
  %i.af = lshr i32 %i.i, 9
  %i.ag = and i32 %i.af, 32640
  %i.ah = shl nuw nsw i32 %2, 15
  %i.ai = or disjoint i32 %i.ag, %i.ah
  %i.aj = xor i32 %i.ai, 32834
  br label %bb.i

.thread.thread:                                   ; preds = %bb.a, %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !66  ; 3 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !67
  %.not5.i = icmp ult i8 %i.al, %i.ao
  br i1 %.not5.i, label %discharge2anyreg.exit, label %bb.g

bb.g:                                             ; preds = %.thread.thread
  %i.ap = zext i8 %i.al to i32
  %i.aq = add nuw nsw i32 %i.ap, 1                ; 2 uses
  tail call void @luaY_checklimit(ptr noundef nonnull %0, i32 noundef %i.aq, i32 noundef 255, ptr noundef nonnull @.str.2) #11
  %i.ar = trunc i32 %i.aq to i8
  %i.as = load ptr, ptr %0, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i8 %i.ar, ptr %i.at, align 4, !tbaa !67
  %.pre.i.i = load i8, ptr %i.ak, align 1, !tbaa !66
  br label %discharge2anyreg.exit

discharge2anyreg.exit:                            ; preds = %.thread.thread, %bb.g
  %i.au = phi i8 [ %i.al, %.thread.thread ], [ %.pre.i.i, %bb.g ]
  %i.av = add i8 %i.au, 1                         ; 2 uses
  store i8 %i.av, ptr %i.ak, align 1, !tbaa !66
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nsw i32 %i.aw, -1
  tail call fastcc void @discharge2reg(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.ax)
  %.pre = load i32, ptr %1, align 8, !tbaa !24
  %i.ay = icmp eq i32 %.pre, 8
  br i1 %i.ay, label %discharge2anyreg.exit.thread, label %freeexp.exit

discharge2anyreg.exit.thread:                     ; preds = %bb.a, %discharge2anyreg.exit
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !25
  %i.bb = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.bc = zext i8 %i.bb to i32
  %.not.i.i17 = icmp slt i32 %i.ba, %i.bc
  br i1 %.not.i.i17, label %freeexp.exit, label %bb.h

bb.h:                                             ; preds = %discharge2anyreg.exit.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !66
  %i.bf = add i8 %i.be, -1
  store i8 %i.bf, ptr %i.bd, align 1, !tbaa !66
  br label %freeexp.exit

freeexp.exit:                                     ; preds = %discharge2anyreg.exit, %discharge2anyreg.exit.thread, %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !25
  %i.bi = shl i32 %i.bh, 16
  %i.bj = shl nuw nsw i32 %2, 15
  %i.bk = or disjoint i32 %i.bi, %i.bj
  %i.bl = or disjoint i32 %i.bk, 32707
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %freeexp.exit
  %.sink = phi i32 [ %i.aj, %bb.f ], [ %i.bl, %freeexp.exit ]
  %i.bm = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %.sink) ; 0 uses
  %i.bn = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef 2147483448)
  ret i32 %i.bn
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_self(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !25   ; 3 uses
  %i.d = load i32, ptr %1, align 8, !tbaa !24
  %i.e = icmp eq i32 %i.d, 8
  br i1 %i.e, label %bb.b, label %freeexp.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.g = zext i8 %i.f to i32
  %.not.i.i = icmp slt i32 %i.c, %i.g
  br i1 %.not.i.i, label %freeexp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !66
  %i.j = add i8 %i.i, -1
  store i8 %i.j, ptr %i.h, align 1, !tbaa !66
  br label %freeexp.exit

freeexp.exit:                                     ; preds = %bb.a, %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 6 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !66
  %i.m = zext i8 %i.l to i32                      ; 3 uses
  store i32 %i.m, ptr %i.b, align 8, !tbaa !25
  store i32 8, ptr %1, align 8, !tbaa !24
  %i.n = load i8, ptr %i.k, align 1, !tbaa !66    ; 2 uses
  %i.o = zext i8 %i.n to i32
  %i.p = add nuw nsw i32 %i.o, 2                  ; 3 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i8, ptr %i.r, align 4, !tbaa !67
  %i.t = zext i8 %i.s to i32
  %i.u = icmp samesign ugt i32 %i.p, %i.t
  br i1 %i.u, label %bb.d, label %luaK_reserveregs.exit

bb.d:                                             ; preds = %freeexp.exit
  tail call void @luaY_checklimit(ptr noundef nonnull %0, i32 noundef %i.p, i32 noundef 255, ptr noundef nonnull @.str.2) #11
  %i.v = trunc i32 %i.p to i8
  %i.w = load ptr, ptr %0, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i8 %i.v, ptr %i.x, align 4, !tbaa !67
  %.pre.i = load i8, ptr %i.k, align 1, !tbaa !66
  br label %luaK_reserveregs.exit

luaK_reserveregs.exit:                            ; preds = %freeexp.exit, %bb.d
  %i.y = phi i8 [ %i.n, %freeexp.exit ], [ %.pre.i, %bb.d ]
  %i.z = add i8 %i.y, 2
  store i8 %i.z, ptr %i.k, align 1, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 11
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !82
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.e, label %bb.g

bb.e:                                             ; preds = %luaK_reserveregs.exit
  %i.af = tail call fastcc i32 @luaK_exp2K(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !25
  %i.ah = shl nuw nsw i32 %i.m, 7
  %i.ai = shl i32 %i.c, 16
  %i.aj = shl i32 %i.ag, 24
  %i.ak = or disjoint i32 %i.ai, %i.ah
  %i.al = or disjoint i32 %i.ak, 20
  %i.am = or i32 %i.aj, %i.al
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %luaK_reserveregs.exit
  %i.an = tail call i32 @luaK_exp2anyreg(ptr noundef nonnull %0, ptr noundef nonnull %2) ; 0 uses
  %i.ao = shl nuw nsw i32 %i.m, 7                 ; 2 uses
  %i.ap = add nuw nsw i32 %i.ao, 128
  %i.aq = shl i32 %i.c, 16                        ; 2 uses
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef nonnull %0, i32 noundef %i.ar) ; 0 uses
  %i.at = load i32, ptr %i.aa, align 8, !tbaa !25
  %i.au = shl i32 %i.at, 24
  %i.av = or disjoint i32 %i.ao, %i.au
  %i.aw = or i32 %i.av, %i.aq
  %i.ax = or disjoint i32 %i.aw, 12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi i32 [ %i.ax, %bb.g ], [ %i.am, %bb.f ]
  %i.ay = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef nonnull %0, i32 noundef %.sink) ; 0 uses
  %i.az = load i32, ptr %2, align 8, !tbaa !24
  %i.ba = icmp eq i32 %i.az, 8
  br i1 %i.ba, label %bb.i, label %freeexp.exit27

bb.i:                                             ; preds = %bb.h
  %i.bb = load i32, ptr %i.aa, align 8, !tbaa !25
  %i.bc = tail call zeroext i8 @luaY_nvarstack(ptr noundef nonnull %0) #11
  %i.bd = zext i8 %i.bc to i32
  %.not.i.i26 = icmp slt i32 %i.bb, %i.bd
  br i1 %.not.i.i26, label %freeexp.exit27, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = load i8, ptr %i.k, align 1, !tbaa !66
  %i.bf = add i8 %i.be, -1
  store i8 %i.bf, ptr %i.k, align 1, !tbaa !66
  br label %freeexp.exit27

freeexp.exit27:                                   ; preds = %bb.h, %bb.i, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @luaK_exp2K(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.TValue, align 8             ; 6 uses
  %3 = alloca %struct.TValue, align 8             ; 6 uses
  %4 = alloca %struct.TValue, align 8             ; 5 uses
  %5 = alloca %struct.TValue, align 8             ; 5 uses
  %6 = alloca %struct.TValue, align 8             ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !24
  switch i32 %i.e, label %.thread [
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 1, label %bb.e
    i32 6, label %bb.f
    i32 5, label %bb.g
    i32 7, label %bb.h
    i32 4, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 17, ptr %i.f, align 8, !tbaa !44
  %i.g = call fastcc i32 @k2proto(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 1, ptr %i.h, align 8, !tbaa !44
  %i.i = call fastcc i32 @k2proto(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !69
  store ptr %i.o, ptr %4, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 69, ptr %i.p, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !91
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = call fastcc i32 @k2proto(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i64 %i.v, ptr %3, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 3, ptr %i.w, align 8, !tbaa !44
  %i.x = call fastcc i32 @k2proto(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !25
  %i.aa = tail call fastcc i32 @luaK_numberK(ptr noundef %0, double noundef %i.z)
  br label %bb.j

bb.h:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr %i.ac, ptr %2, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !29
  %i.af = or i8 %i.ae, 64
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.af, ptr %i.ag, align 8, !tbaa !44
  %i.ah = call fastcc i32 @k2proto(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.018 = phi i32 [ %i.g, %bb.c ], [ %i.i, %bb.d ], [ %i.t, %bb.e ], [ %i.x, %bb.f ], [ %i.aa, %bb.g ], [ %i.ah, %bb.h ], [ %i.aj, %bb.i ] ; 2 uses
  %i.ak = icmp slt i32 %.018, 256
  br i1 %i.ak, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  store i32 4, ptr %1, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.018, ptr %i.al, align 8, !tbaa !25
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.b, %bb.a, %bb.j
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.j ], [ 1, %bb.k ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_indexed(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %3 = alloca %struct.TValue, align 8             ; 6 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.b = icmp eq i32 %i.a, 7
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.d = icmp eq i32 %i.c, 12
  br i1 %i.d, label %bb.c, label %thread-pre-split

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.f, ptr %3, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !29
  %i.i = or i8 %i.h, 64
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %i.i, ptr %i.j, align 8, !tbaa !44
  %i.k = call fastcc i32 @k2proto(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %3) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  store i32 %i.k, ptr %i.e, align 8, !tbaa !25
  store i32 4, ptr %2, align 8, !tbaa !24
  %i.l = load i32, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.m = icmp eq i32 %i.l, 12
  br i1 %i.m, label %.thread58, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %i.a, 4
  br i1 %i.n, label %.thread58, label %isKstr.exit.thread

.thread58:                                        ; preds = %.thread, %bb.c
  %.05762 = phi i32 [ -1, %bb.c ], [ %i.k, %.thread ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !23
  %.not.i = icmp eq i32 %i.p, %i.r
  br i1 %.not.i, label %bb.d, label %isKstr.exit.thread

bb.d:                                             ; preds = %.thread58
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !25   ; 2 uses
end_hunk_1
begin_hunk_2_@k2proto:bb.a
  store i32 %i.ay, ptr %i.o, align 4, !tbaa !75
  %i.az = and i8 %i.av, 64
  %.not.i = icmp eq i8 %i.az, 0
  br i1 %.not.i, label %addk.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !77
  %i.bc = and i8 %i.bb, 32
  %.not26.i = icmp eq i8 %i.bc, 0
  br i1 %.not26.i, label %addk.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 9
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !79
  %i.bg = and i8 %i.bf, 24
  %.not27.i = icmp eq i8 %i.bg, 0
  br i1 %.not27.i, label %addk.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @luaC_barrier_(ptr noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bd) #11
  br label %addk.exit

addk.exit:                                        ; preds = %._crit_edge.i, %bb.d, %bb.e, %bb.f
  store i64 %i.ar, ptr %3, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 3, ptr %i.bh, align 8, !tbaa !44
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !69
  call void @luaH_set(ptr noundef %i.bk, ptr noundef %i.bl, ptr noundef nonnull %1, ptr noundef nonnull %3) #11
  br label %bb.g

bb.g:                                             ; preds = %addk.exit, %bb.b
  %.0 = phi i32 [ %i.p, %addk.exit ], [ %i.h, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i32 %.0
}

declare hidden zeroext i8 @luaH_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @luaH_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @luaC_barrier_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @discharge2reg(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.TValue, align 8             ; 6 uses
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %1)
  %i.b = load i32, ptr %1, align 8, !tbaa !24
  switch i32 %i.b, label %bb.w [
    i32 1, label %bb.b
    i32 3, label %bb.g
    i32 2, label %bb.h
    i32 7, label %bb.i
    i32 4, label %._crit_edge
    i32 5, label %bb.m
    i32 6, label %bb.s
    i32 20, label %bb.t
    i32 8, label %bb.u
  ]

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %2, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !45   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !46
  %i.h = icmp sgt i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %previousinstruction.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56
  %i.l = sext i32 %i.e to i64
  %i.m = getelementptr [4 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -4
  br label %previousinstruction.exit.i

previousinstruction.exit.i:                       ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.n, %bb.c ], [ @previousinstruction.invalidinstruction, %bb.b ] ; 2 uses
  %i.o = load i32, ptr %.0.i.i, align 4, !tbaa !57 ; 4 uses
  %i.p = and i32 %i.o, 127
  %i.q = icmp eq i32 %i.p, 8
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %previousinstruction.exit.i
  %i.r = lshr i32 %i.o, 7
  %i.s = and i32 %i.r, 255                        ; 5 uses
  %i.t = lshr i32 %i.o, 16
  %i.u = and i32 %i.t, 255
  %i.v = add nuw nsw i32 %i.s, %i.u               ; 2 uses
  %.not.i = icmp sgt i32 %i.s, %2
  %i.w = add nuw nsw i32 %i.v, 1
  %.not39.i = icmp sgt i32 %2, %i.w
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not39.i
  br i1 %or.cond.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %.not40.i = icmp sgt i32 %2, %i.s
  %.not41.i = icmp sgt i32 %i.s, %i.c
  %or.cond43.i = select i1 %.not40.i, i1 true, i1 %.not41.i
  br i1 %or.cond43.i, label %bb.f, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %bb.d
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %2) ; 2 uses
  %.031.i = tail call i32 @llvm.smax.i32(i32 %i.v, i32 %2)
  %i.x = and i32 %i.o, -16744440
  %i.y = shl nsw i32 %spec.select.i, 7
  %i.z = and i32 %i.y, 32640
  %i.aa = or disjoint i32 %i.z, %i.x
  %i.ab = sub nsw i32 %.031.i, %spec.select.i
  %i.ac = shl nsw i32 %i.ab, 16
  %i.ad = and i32 %i.ac, 16711680
  %i.ae = or disjoint i32 %i.aa, %i.ad
  store i32 %i.ae, ptr %.0.i.i, align 4, !tbaa !57
  br label %luaK_nil.exit

bb.f:                                             ; preds = %bb.e, %previousinstruction.exit.i
  %i.af = shl i32 %2, 7
  %i.ag = or disjoint i32 %i.af, 8
  %i.ah = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef nonnull %0, i32 noundef %i.ag) ; 0 uses
  br label %luaK_nil.exit

bb.g:                                             ; preds = %bb.a
  %i.ai = shl i32 %2, 7
  %i.aj = or disjoint i32 %i.ai, 5
  %i.ak = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.aj) ; 0 uses
  br label %luaK_nil.exit

bb.h:                                             ; preds = %bb.a
  %i.al = shl i32 %2, 7
  %i.am = or disjoint i32 %i.al, 7
  %i.an = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.am) ; 0 uses
  br label %luaK_nil.exit

bb.i:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.ap, ptr %3, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !29
  %i.as = or i8 %i.ar, 64
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %i.as, ptr %i.at, align 8, !tbaa !44
  %i.au = call fastcc i32 @k2proto(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  store i32 %i.au, ptr %i.ao, align 8, !tbaa !25
  store i32 4, ptr %1, align 8, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.av = phi i32 [ %.pre, %._crit_edge ], [ %i.au, %bb.i ] ; 3 uses
  %i.aw = icmp slt i32 %i.av, 131072
  %i.ax = shl i32 %2, 7                           ; 2 uses
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = shl i32 %i.av, 15
  %i.az = or i32 %i.ax, %i.ay
  %i.ba = or disjoint i32 %i.az, 3
  %i.bb = call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.ba) ; 0 uses
  br label %luaK_nil.exit

bb.l:                                             ; preds = %bb.j
  %i.bc = or disjoint i32 %i.ax, 4
  %i.bd = call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.bc) ; 0 uses
  %i.be = shl i32 %i.av, 7
  %i.bf = or disjoint i32 %i.be, 84
  %i.bg = call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.bf) ; 0 uses
  br label %luaK_nil.exit

bb.m:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.bj = call i32 @luaV_flttointeger(double noundef %i.bi, ptr noundef nonnull %i.a, i32 noundef 0) #11
  %.not.i33 = icmp eq i32 %i.bj, 0
  br i1 %.not.i33, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %i.bl = add i64 %i.bk, -65537
  %i.bm = icmp ult i64 %i.bl, -131072
  br i1 %i.bm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = trunc nsw i64 %i.bk to i32
  %i.bo = shl i32 %2, 7
  %4 = or disjoint i32 %i.bo, 2
  %5 = shl i32 %i.bn, 15
  %6 = add i32 %5, 2147450880
  %i.bp = or i32 %6, %4
  br label %luaK_float.exit

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bq = call fastcc i32 @luaK_numberK(ptr noundef %0, double noundef %i.bi) ; 3 uses
  %i.br = icmp slt i32 %i.bq, 131072
  %i.bs = shl i32 %2, 7                           ; 2 uses
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bt = shl i32 %i.bq, 15
  %i.bu = or i32 %i.bs, %i.bt
  %i.bv = or disjoint i32 %i.bu, 3
  br label %luaK_float.exit

bb.r:                                             ; preds = %bb.p
  %i.bw = or disjoint i32 %i.bs, 4
  %i.bx = call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.bw) ; 0 uses
  %i.by = shl i32 %i.bq, 7
  %i.bz = or disjoint i32 %i.by, 84
  br label %luaK_float.exit

luaK_float.exit:                                  ; preds = %bb.o, %bb.q, %bb.r
  %.sink.i = phi i32 [ %i.bz, %bb.r ], [ %i.bv, %bb.q ], [ %i.bp, %bb.o ]
  %i.ca = call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %.sink.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %luaK_nil.exit

bb.s:                                             ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !25
  tail call void @luaK_int(ptr noundef %0, i32 noundef %2, i64 noundef %i.cc)
  br label %luaK_nil.exit

bb.t:                                             ; preds = %bb.a
  %i.cd = load ptr, ptr %0, align 8, !tbaa !47
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !56
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !25
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !57
  %i.cl = and i32 %i.ck, -32641
  %i.cm = shl i32 %2, 7
  %i.cn = and i32 %i.cm, 32640
  %i.co = or disjoint i32 %i.cl, %i.cn
  store i32 %i.co, ptr %i.cj, align 4, !tbaa !57
  br label %luaK_nil.exit

bb.u:                                             ; preds = %bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !25 ; 2 uses
  %.not = icmp eq i32 %2, %i.cq
  br i1 %.not, label %luaK_nil.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = shl i32 %2, 7
  %i.cs = shl i32 %i.cq, 16
  %i.ct = or i32 %i.cs, %i.cr
  %i.cu = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.ct) ; 0 uses
  br label %luaK_nil.exit

luaK_nil.exit:                                    ; preds = %bb.l, %bb.k, %bb.f, %.critedge.i, %bb.u, %bb.v, %bb.t, %bb.s, %luaK_float.exit, %bb.h, %bb.g
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %2, ptr %i.cv, align 8, !tbaa !25
  store i32 8, ptr %1, align 8, !tbaa !24
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %luaK_nil.exit
  ret void
}

declare hidden i32 @luaV_flttointeger(double noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @luaK_numberK(ptr noundef %0, double noundef %1) unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.TValue, align 8             ; 9 uses
  %3 = alloca %struct.TValue, align 8             ; 8 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store double %1, ptr %2, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i8 19, ptr %i.b, align 8, !tbaa !44
  %i.c = fcmp oeq double %1, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %3, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 2, ptr %i.d, align 8, !tbaa !44
  %i.e = call fastcc i32 @k2proto(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %2)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef -52) #11
  %i.g = fadd double %i.f, 1.000000e+00
  %i.h = fmul double %1, %i.g                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store double %i.h, ptr %3, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 19, ptr %i.i, align 8, !tbaa !44
  %i.j = call i32 @luaV_flttointeger(double noundef %i.h, ptr noundef nonnull %i.a, i32 noundef 0) #11
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = call fastcc i32 @k2proto(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %2) ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.o
  %i.q = call i32 @luaV_equalobj(ptr noundef null, ptr noundef %i.p, ptr noundef nonnull %2) #11
  %.not22 = icmp eq i32 %i.q, 0
  br i1 %.not22, label %bb.e, label %addk.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = load ptr, ptr %0, align 8, !tbaa !47     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 20 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !74   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !75   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !70
  %i.ac = call ptr @luaM_growaux_(ptr noundef %i.v, ptr noundef %i.ab, i32 noundef %i.z, ptr noundef nonnull %i.w, i32 noundef 16, i32 noundef 33554431, ptr noundef nonnull @.str.6) #11 ; 11 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !70
  %i.ad = load i32, ptr %i.w, align 4, !tbaa !74  ; 2 uses
  %i.ae = icmp slt i32 %i.x, %i.ad
  br i1 %i.ae, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.af = sext i32 %i.x to i64                    ; 4 uses
  %wide.trip.count.i = sext i32 %i.ad to i64      ; 3 uses
  %i.ag = sub nsw i64 %wide.trip.count.i, %i.af
  %xtraiter = and i64 %i.ag, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.ac, i64 %indvars.iv.i.prol
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i8 0, ptr %i.ai, align 8, !tbaa !44
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !95

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.af, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.aj = sub nsw i64 %i.af, %wide.trip.count.i
  %i.ak = icmp ugt i64 %i.aj, -8
  br i1 %i.ak, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.al = getelementptr inbounds [16 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i8 0, ptr %i.am, align 8, !tbaa !44
  %i.an = getelementptr [16 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.ao = getelementptr i8, ptr %i.an, i64 24
  store i8 0, ptr %i.ao, align 8, !tbaa !44
  %i.ap = getelementptr [16 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 40
  store i8 0, ptr %i.aq, align 8, !tbaa !44
  %i.ar = getelementptr [16 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.as = getelementptr i8, ptr %i.ar, i64 56
  store i8 0, ptr %i.as, align 8, !tbaa !44
  %i.at = getelementptr [16 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.au = getelementptr i8, ptr %i.at, i64 72
  store i8 0, ptr %i.au, align 8, !tbaa !44
  %i.av = getelementptr [16 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.aw = getelementptr i8, ptr %i.av, i64 88
  store i8 0, ptr %i.aw, align 8, !tbaa !44
  %i.ax = getelementptr [16 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 104
  store i8 0, ptr %i.ay, align 8, !tbaa !44
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %i.az = getelementptr [16 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.ba = getelementptr i8, ptr %i.az, i64 120
  store i8 0, ptr %i.ba, align 8, !tbaa !44
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.e
  %i.bb = sext i32 %i.z to i64
  %i.bc = getelementptr inbounds [16 x i8], ptr %i.ac, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %2, align 8, !tbaa !25
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !25
  %i.be = load i8, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i8 %i.be, ptr %i.bf, align 8, !tbaa !44
  %i.bg = load i32, ptr %i.y, align 4, !tbaa !75
end_hunk_2
