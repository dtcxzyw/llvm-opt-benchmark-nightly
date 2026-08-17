inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@match:bb.a
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !54
  %.not226 = icmp eq i32 %i.dk, 0
  br i1 %.not226, label %.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dl = icmp eq i8 %i.dh, 3
  br i1 %i.dl, label %.outer.backedge, label %bb.ah

.sink.split:                                      ; preds = %bb.af, %.critedge241.thread
  %.sink = phi i32 [ 0, %.critedge241.thread ], [ 1, %bb.af ]
  store i32 %.sink, ptr %i.dj, align 4, !tbaa !54
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %bb.ag
  %i.dm = load i32, ptr %12, align 4, !tbaa !12
  %i.dn = call fastcc i32 @handle_annotation(ptr noundef nonnull %0, ptr noundef nonnull %i.bn, i32 noundef %i.dm) ; 2 uses
  %.not227 = icmp eq i32 %i.dn, 0
  br i1 %.not227, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 1, ptr %spec.store.select3, align 4, !tbaa !12
  store i32 1, ptr %11, align 4, !tbaa !12
  store i32 1, ptr %10, align 4, !tbaa !12
  store i32 1, ptr %spec.store.select, align 4, !tbaa !12
  br label %.critedge.thread

bb.aj:                                            ; preds = %bb.ah
  %i.do = getelementptr inbounds nuw i8, ptr %i.bn, i64 160 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !35
  %.not228 = icmp eq i8 %i.dp, 0
  br i1 %.not228, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i32 1, ptr %spec.store.select3, align 4, !tbaa !12
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br i1 %i.f, label %bb.am, label %bb.at

bb.am:                                            ; preds = %bb.al
  %i.dq = load i8, ptr %i.do, align 8, !tbaa !35
  %.not229 = icmp eq i8 %i.dq, 0
  br i1 %.not229, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 1, ptr %spec.store.select, align 4, !tbaa !12
  %i.dr = load i32, ptr %10, align 4, !tbaa !12
  %.not230 = icmp eq i32 %i.dr, 0
  br i1 %.not230, label %bb.ao, label %print_sep.exit250.thread

bb.ao:                                            ; preds = %bb.an
  store i32 1, ptr %10, align 4, !tbaa !12
  %i.ds = load i32, ptr %12, align 4, !tbaa !12
  %.not.i248 = icmp eq i32 %i.ds, 0
  br i1 %.not.i248, label %print_sep.exit250, label %print_sep.exit250.thread

print_sep.exit250:                                ; preds = %bb.ao
  %i.dt = call i32 @file_separator(ptr noundef nonnull %0) #20
  %i.du = icmp eq i32 %i.dt, -1
  br i1 %i.du, label %.critedge.thread, label %print_sep.exit250.thread

print_sep.exit250.thread:                         ; preds = %bb.ao, %print_sep.exit250, %bb.an
  %i.dv = load i32, ptr %11, align 4, !tbaa !12
  %.not231 = icmp eq i32 %i.dv, 0
  br i1 %.not231, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %print_sep.exit250.thread
  %i.dw = load i8, ptr %i.bw, align 2, !tbaa !36
  %i.dx = and i8 %i.dw, 16
  %i.dy = icmp eq i8 %i.dx, 0
  br i1 %i.dy, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dz = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #20
  %i.ea = icmp eq i32 %i.dz, -1
  br i1 %i.ea, label %.critedge.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %print_sep.exit250.thread
  %i.eb = call fastcc i32 @mprint(ptr noundef nonnull %0, ptr noundef nonnull %i.bn)
  %i.ec = icmp eq i32 %i.eb, -1
  br i1 %i.ec, label %.critedge.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 1, ptr %11, align 4, !tbaa !12
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.am, %bb.al
  %i.ed = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %i.dd
  %.val = load i64, ptr %i.m, align 8, !tbaa !45
  %i.ef = call fastcc i32 @moffset(ptr noundef nonnull %0, ptr noundef nonnull %i.bn, i64 %.val, i64 noundef %4, ptr noundef nonnull %i.ee)
  %switch243 = icmp slt i32 %i.ef, 1
  %i.eg = sext i1 %switch243 to i32
  %spec.select244 = add nuw nsw i32 %i.bs, 1
  %i.eh = add nsw i32 %spec.select244, %i.eg      ; 2 uses
  %i.ei = call i32 @file_check_mem(ptr noundef nonnull %0, i32 noundef %i.eh) #20
  %i.ej = icmp eq i32 %i.ei, -1
  br i1 %i.ej, label %.critedge.thread, label %.outer.backedge

.critedge2:                                       ; preds = %bb.s, %bb.t
  %i.ek = load i32, ptr %10, align 4, !tbaa !12
  %.not221 = icmp eq i32 %i.ek, 0
  br i1 %.not221, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.critedge2
  store i32 0, ptr %12, align 4, !tbaa !12
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.critedge2
  %i.el = load i32, ptr %spec.store.select3, align 4, !tbaa !12
  %.not222 = icmp eq i32 %i.el, 0
  br i1 %.not222, label %.critedge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.em = load i32, ptr %i.c, align 4, !tbaa !24
  %i.en = and i32 %i.em, 32
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ep = load i32, ptr %spec.store.select, align 4, !tbaa !12
  br label %.critedge.thread

bb.ay:                                            ; preds = %bb.aw
  store i32 0, ptr %10, align 4, !tbaa !12
  store i32 0, ptr %12, align 4, !tbaa !12
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.critedge239, %bb.ay, %bb.av
  %.pre-phi284 = phi i64 [ %i.bl, %bb.av ], [ %i.bl, %bb.ay ], [ %i.ag, %.critedge239 ], [ %i.ag, %bb.f ] ; 2 uses
  %.pre-phi = phi i32 [ %i.bk, %bb.av ], [ %i.bk, %bb.ay ], [ %i.af, %.critedge239 ], [ %i.af, %bb.f ]
  %i.eq = icmp ugt i64 %2, %.pre-phi284
  br i1 %i.eq, label %bb.b, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %.critedge, %.preheader257
  %i.er = load i32, ptr %spec.store.select, align 4, !tbaa !12
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.h, %bb.r, %print_sep.exit.thread, %print_sep.exit, %bb.l, %bb.at, %bb.aa, %.critedge241, %bb.ar, %bb.aq, %print_sep.exit250, %bb.ax, %bb.ai, %bb.m, %bb.a, %._crit_edge
  %.2 = phi i32 [ %i.er, %._crit_edge ], [ -1, %bb.a ], [ -1, %bb.at ], [ %i.dn, %bb.ai ], [ %i.ep, %bb.ax ], [ %i.ax, %bb.m ], [ %i.cr, %bb.aa ], [ %i.cx, %.critedge241 ], [ -1, %bb.ar ], [ -1, %bb.aq ], [ -1, %print_sep.exit250 ], [ -1, %bb.r ], [ -1, %print_sep.exit.thread ], [ -1, %print_sep.exit ], [ %i.av, %bb.l ], [ %i.aq, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare hidden i32 @file_check_mem(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @msetoffset(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i8, ptr %i.a, align 2, !tbaa !36    ; 2 uses
  %.not = icmp sgt i8 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !56   ; 4 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub nsw i32 0, %i.d                      ; 2 uses
  %.not42 = icmp eq i32 %5, 0
  %i.f = and i8 %i.b, 6
  %.not43 = icmp eq i8 %i.f, 0
  %or.cond = or i1 %.not42, %.not43
  br i1 %or.cond, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @buffer_fill(ptr noundef %3) #20
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not44 = icmp eq i64 %4, 0
  br i1 %.not44, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @file_magerror(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %4, i32 noundef %5) #20
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.i = load i32, ptr %i.c, align 4, !tbaa !56
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !57   ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58
  tail call void @buffer_init(ptr noundef nonnull %2, i32 noundef -1, ptr noundef null, ptr noundef %i.o, i64 noundef %i.l) #20
  %i.p = load i64, ptr %i.k, align 8, !tbaa !57
  %i.q = load i32, ptr %i.c, align 4, !tbaa !56
  %i.r = trunc i64 %i.p to i32
  %i.s = sub i32 %i.r, %i.q                       ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.s, ptr %i.t, align 8, !tbaa !51
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.s, ptr %6, align 4, !tbaa !59
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.u = icmp eq i32 %5, 0
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.b, %bb.h
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.d, %bb.h ]  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.y = load i64, ptr %i.x, align 8, !tbaa !45
  tail call void @buffer_init(ptr noundef nonnull %2, i32 noundef -1, ptr noundef null, ptr noundef %i.w, i64 noundef %i.y) #20
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.0, ptr %i.z, align 8, !tbaa !51
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %7, align 4, !tbaa !59
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !59
  %i.ac = add i32 %i.ab, %i.d                     ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.ac, ptr %8, align 8, !tbaa !51
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %i.ad = phi i32 [ %.0, %bb.i ], [ %i.s, %bb.g ], [ %i.ac, %bb.j ]
  %.1 = phi i32 [ %.0, %bb.i ], [ %i.e, %bb.g ], [ %i.d, %bb.j ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !24
  %i.ag = and i32 %i.af, 1
  %.not45 = icmp eq i32 %i.ag, 0
  br i1 %.not45, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.an = load i64, ptr %i.am, align 8, !tbaa !57
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.at = load i64, ptr %i.as, align 8, !tbaa !57
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.3, ptr noundef %i.aj, i64 noundef %i.al, i64 noundef %i.an, i32 noundef %i.ad, ptr noundef %i.ap, i64 noundef %i.ar, i64 noundef %i.at, i32 noundef %.1, i32 noundef %5) #21 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.f, %bb.c, %bb.e
  %.039 = phi i32 [ -1, %bb.f ], [ -1, %bb.c ], [ -1, %bb.e ], [ 0, %bb.l ], [ 0, %bb.k ]
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mget(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef range(i32 0, 2) %9, ptr nofree noundef nonnull captures(none) %10, ptr nofree noundef nonnull captures(none) %11, ptr nofree noundef nonnull captures(none) %12, ptr nofree noundef nonnull captures(none) %13, ptr nofree noundef nonnull captures(none) %14, ptr nofree noundef captures(address_is_null) %15, ptr nofree noundef captures(none) %16) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 17 uses
  %17 = alloca %struct.buffer, align 8            ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %18 = alloca %struct.mlist, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51   ; 18 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 85 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.f = load i16, ptr %10, align 2, !tbaa !13    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.h = load i16, ptr %i.g, align 8, !tbaa !62
  %.not = icmp ult i16 %i.f, %i.h
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = zext i16 %i.f to i32
  tail call void (ptr, i32, ptr, ...) @file_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %i.i) #20
  br label %.critedge574

bb.c:                                             ; preds = %bb.a
  %i.j = load i16, ptr %11, align 2, !tbaa !13    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 266
  %i.l = load i16, ptr %i.k, align 2, !tbaa !63
  %.not477 = icmp ult i16 %i.j, %i.l
  br i1 %.not477, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = zext i16 %i.j to i32
  tail call void (ptr, i32, ptr, ...) @file_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef %i.m) #20
  br label %.critedge574

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 4 uses
  %i.o = load i8, ptr %i.n, align 2, !tbaa !33
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 5 uses
  %i.r = load i8, ptr %i.q, align 2, !tbaa !36
  %i.s = and i8 %i.r, 1
  %i.t = zext nneg i8 %i.s to i32
  %i.u = trunc i64 %5 to i32                      ; 2 uses
  %i.v = add i32 %i.d, %i.u
  %i.w = and i64 %4, 4294967295
  tail call fastcc void @mcopy(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i32 noundef %i.p, i32 noundef %i.t, ptr noundef %3, i32 noundef %i.v, i64 noundef %i.w, ptr noundef %1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 12 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !24
  %i.z = and i32 %i.y, 1
  %.not478 = icmp eq i32 %i.z, 0
  br i1 %.not478, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.ab = load i8, ptr %i.n, align 2, !tbaa !33
  %i.ac = zext i8 %i.ab to i32
  %i.ad = load i8, ptr %i.q, align 2, !tbaa !36
  %i.ae = zext i8 %i.ad to i32
  %i.af = load i16, ptr %10, align 2, !tbaa !13
  %i.ag = zext i16 %i.af to i32
  %i.ah = load i16, ptr %11, align 2, !tbaa !13
  %i.ai = zext i16 %i.ah to i32
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.6, i32 noundef %i.ac, i32 noundef %i.ae, i32 noundef %i.d, i64 noundef %5, i64 noundef %4, i32 noundef %i.ag, i32 noundef %i.ai) #21 ; 0 uses
  tail call fastcc void @mdebug(i32 noundef %i.d, ptr noundef nonnull %i.e)
  tail call void @file_mdump(ptr noundef nonnull %1) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = load i8, ptr %i.q, align 2, !tbaa !36
  %i.al = and i8 %i.ak, 1
  %.not479 = icmp eq i8 %i.al, 0
  br i1 %.not479, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !64
  %i.ao = sext i32 %i.an to i64                   ; 12 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !65  ; 2 uses
  %i.ar = and i8 %i.aq, 32                        ; 16 uses
  %.not480 = icmp sgt i8 %i.aq, -1
  br i1 %.not480, label %bb.bd, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = zext i32 %i.d to i64                    ; 13 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %i.as
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.ao ; 23 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !66  ; 3 uses
  %i.ax = zext i8 %i.aw to i32
  %i.ay = icmp eq i32 %9, 0
  br i1 %i.ay, label %cvt_flip.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i8 %i.aw, label %cvt_flip.exit.thread.fold.split [
    i8 7, label %cvt_flip.exit.thread603
    i8 8, label %cvt_flip.exit.thread609
    i8 9, label %cvt_flip.exit.thread
    i8 15, label %bb.k
    i8 26, label %cvt_flip.exit.thread615
    i8 29, label %bb.l
    i8 32, label %bb.m
    i8 44, label %bb.n
    i8 10, label %cvt_flip.exit.thread600
    i8 11, label %cvt_flip.exit.thread606
    i8 12, label %bb.o
    i8 16, label %bb.p
    i8 25, label %cvt_flip.exit.thread612
    i8 28, label %bb.q
    i8 31, label %bb.r
    i8 43, label %bb.s
    i8 34, label %bb.t
    i8 35, label %bb.u
    i8 37, label %bb.v
    i8 38, label %bb.w
    i8 1, label %bb.x
    i8 2, label %bb.ab
    i8 4, label %bb.aj
    i8 39, label %cvt_flip.exit.thread606
    i8 40, label %cvt_flip.exit.thread609
    i8 23, label %bb.ar
    i8 59, label %bb.ax
  ]

bb.k:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.l:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.m:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.n:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.o:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.p:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.q:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.r:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.s:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.t:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.u:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.v:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.w:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

cvt_flip.exit:                                    ; preds = %bb.i
  switch i8 %i.aw, label %cvt_flip.exit.thread.fold.split [
    i8 1, label %bb.x
    i8 2, label %bb.ab
    i8 7, label %cvt_flip.exit.thread600
end_hunk_0
