inline.NumInlined: 294
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@set_file_identifier:bb.a
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 232
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = and i8 %i.ag, 2
  %.not.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i, label %bb.m, label %bb.g

bb.m:                                             ; preds = %get_path_component.exit.i, %get_path_component.exit.thread18.i, %bb.l, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %4, i32 noundef -1, ptr noundef nonnull @.str.88, ptr noundef %7, ptr noundef %spec.select) #23
  br label %bb.w

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !328
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 180
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !329
  %i.am = add nsw i32 %i.al, %i.aj
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !275
  %i.aq = icmp eq i32 %i.ap, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !191 ; 2 uses
  br i1 %i.aq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %spec.store.select2 = call i64 @llvm.umin.i64(i64 %i.an, i64 255) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 1 %i.as, i64 %spec.store.select2, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.store.select2
  store i8 0, ptr %i.at, align 1, !tbaa !71
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.an, i64 254) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 1 %i.as, i64 %spec.store.select, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.store.select ; 2 uses
  store i8 0, ptr %i.au, align 1, !tbaa !71
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 0, ptr %i.av, align 1, !tbaa !71
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.064 = phi i32 [ 3, %bb.p ], [ %3, %bb.o ]     ; 2 uses
  %i.aw = icmp eq i32 %9, 0
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ax = call fastcc i32 @set_str_a_characters_bp(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.b, i32 noundef %.064)
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.ay = call fastcc i32 @set_str_d_characters_bp(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.b, i32 noundef %.064)
  br label %bb.w

bb.t:                                             ; preds = %bb.f
  %i.az = icmp eq i32 %9, 0
  br i1 %i.az, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ba = tail call fastcc i32 @set_str_a_characters_bp(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef null, i32 noundef %3)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bb = tail call fastcc i32 @set_str_d_characters_bp(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef null, i32 noundef %3)
  br label %bb.w

bb.w:                                             ; preds = %bb.e, %bb.d, %bb.u, %bb.v, %bb.r, %bb.s, %bb.m
  %.063 = phi i32 [ -30, %bb.m ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.ax, %bb.r ], [ %i.ay, %bb.s ], [ %i.ba, %bb.u ], [ %i.bb, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i32 %.063
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_date_time(ptr nofree noundef writeonly captures(none) initializes((0, 17)) %0, i64 noundef %1) unnamed_addr #0 {
set_digit.exit:
  %i.a = alloca i64, align 8                      ; 2 uses
  %2 = alloca %struct.tm, align 8                 ; 8 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @tzset() #23
  %i.b = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #23 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %2, align 8, !tbaa !361    ; 2 uses
  %i.g = sdiv i32 %i.f, 10
  %i.h = load i32, ptr %i.c, align 4, !tbaa !355
  %i.i = load <2 x i32>, ptr %i.d, align 4, !tbaa !104
  %i.j = add nsw <2 x i32> %i.i, <i32 0, i32 1>
  %i.k = shufflevector <2 x i32> %i.j, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.l = sdiv <4 x i32> %i.k, <i32 10, i32 1, i32 10, i32 1>
  %i.m = add nsw i32 %i.h, 1900
  %i.n = insertelement <4 x i32> poison, i32 %i.m, i64 0
  %i.o = shufflevector <4 x i32> %i.n, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.p = sdiv <4 x i32> %i.o, <i32 1000, i32 100, i32 10, i32 1>
  %i.q = shufflevector <4 x i32> %i.p, <4 x i32> %i.l, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.r = srem <8 x i32> %i.q, splat (i32 10)
  %i.s = load <2 x i32>, ptr %i.e, align 4, !tbaa !104 ; 2 uses
  %i.t = sdiv <2 x i32> %i.s, splat (i32 10)
  %i.u = shufflevector <2 x i32> %i.t, <2 x i32> %i.s, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %i.v = srem <4 x i32> %i.u, splat (i32 10)
  %i.w = trunc nsw <4 x i32> %i.v to <4 x i8>
  %i.x = insertelement <2 x i32> poison, i32 %i.g, i64 0
  %i.y = insertelement <2 x i32> %i.x, i32 %i.f, i64 1
  %i.z = srem <2 x i32> %i.y, splat (i32 10)
  %i.aa = trunc nsw <2 x i32> %i.z to <2 x i8>
  %i.ab = shufflevector <8 x i32> %i.r, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ac = trunc <16 x i32> %i.ab to <16 x i8>
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.ae = shufflevector <4 x i8> %i.w, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.af = shufflevector <16 x i8> %i.ad, <16 x i8> %i.ae, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.ag = shufflevector <2 x i8> %i.aa, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ah = shufflevector <16 x i8> %i.af, <16 x i8> %i.ag, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.ai = add nsw <16 x i8> %i.ah, splat (i8 48)
  store <16 x i8> %i.ai, ptr %0, align 1, !tbaa !71
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !362
  %i.am = sdiv i64 %i.al, 900
  %i.an = trunc i64 %i.am to i8
  store i8 %i.an, ptr %i.aj, align 1, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @uname(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @set_str_utf16be(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef range(i64 -736, 806) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %spec.store.select = select i1 %i.a, ptr @.str.87, ptr %2 ; 5 uses
  %i.b = and i64 %3, 1
  %.not = icmp eq i64 %i.b, 0
  %i.c = and i64 %3, -2                           ; 4 uses
  %i.d = icmp eq i32 %4, 2
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = load i16, ptr %spec.store.select, align 2, !tbaa !337
  %.not5462 = icmp eq i16 %i.e, 0
  br i1 %.not5462, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #25
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !160
  %i.l = tail call i32 @archive_strncpy_l(ptr noundef nonnull %i.h, ptr noundef nonnull %spec.store.select, i64 noundef %i.i, ptr noundef %i.k) #23
  %.not55 = icmp eq i32 %i.l, 0
  br i1 %.not55, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__errno_location() #26
  %i.n = load i32, ptr %i.m, align 4, !tbaa !104
  %i.o = icmp eq i32 %i.n, 12
  br i1 %i.o, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.48) #23
  br label %bb.m

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.q = load i64, ptr %i.p, align 8, !tbaa !381
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.c) ; 2 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !382
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.r, i64 %spec.select, i1 false)
  br label %bb.e

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.064 = phi ptr [ %i.s, %.lr.ph ], [ %spec.store.select, %.preheader ]
  %.263 = phi i64 [ %i.t, %.lr.ph ], [ 0, %.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %.064, i64 2 ; 2 uses
  %i.t = add i64 %.263, 2                         ; 2 uses
  %i.u = load i16, ptr %i.s, align 2, !tbaa !337
  %.not54 = icmp eq i16 %i.u, 0
  br i1 %.not54, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !383

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.c)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.2.lcssa = phi i64 [ 0, %.preheader ], [ %i.v, %._crit_edge.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %spec.store.select, i64 %.2.lcssa, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.4 = phi i64 [ %spec.select, %bb.d ], [ %.2.lcssa, %._crit_edge ] ; 5 uses
  %.not78 = icmp eq i64 %.4, 0
  br i1 %.not78, label %._crit_edge69, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %bb.e
  %i.w = add i64 %.4, -1                          ; 2 uses
  %i.x = lshr i64 %i.w, 1                         ; 2 uses
  %i.y = add nuw i64 %i.x, 1                      ; 2 uses
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %.lr.ph68.epil.preheader, label %.lr.ph68.preheader.new

.lr.ph68.preheader.new:                           ; preds = %.lr.ph68.preheader
  %unroll_iter = and i64 %i.y, -2
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %joliet_allowed_char.exit.1, %.lr.ph68.preheader.new
  %.04965 = phi ptr [ %1, %.lr.ph68.preheader.new ], [ %i.ar, %joliet_allowed_char.exit.1 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph68.preheader.new ], [ %niter.next.1, %joliet_allowed_char.exit.1 ]
  %i.aa = load i8, ptr %.04965, align 1, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %.04965, i64 1 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !71
  %i.ad = zext i8 %i.aa to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = zext i8 %i.ac to i32
  %i.ag = or disjoint i32 %i.ae, %i.af            ; 2 uses
  %i.ah = icmp samesign ult i32 %i.ag, 32
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph68
  %trunc.i = trunc nuw i32 %i.ag to i16
  switch i16 %trunc.i, label %joliet_allowed_char.exit [
    i16 42, label %bb.g
    i16 47, label %bb.g
    i16 58, label %bb.g
    i16 59, label %bb.g
    i16 63, label %bb.g
    i16 92, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph68, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  store i8 0, ptr %.04965, align 1, !tbaa !71
  store i8 95, ptr %i.ab, align 1, !tbaa !71
  br label %joliet_allowed_char.exit

joliet_allowed_char.exit:                         ; preds = %bb.f, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.04965, i64 2 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !71
  %i.ak = getelementptr inbounds nuw i8, ptr %.04965, i64 3 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !71
  %i.am = zext i8 %i.aj to i32
  %i.an = shl nuw nsw i32 %i.am, 8
  %i.ao = zext i8 %i.al to i32
  %i.ap = or disjoint i32 %i.an, %i.ao            ; 2 uses
  %i.aq = icmp samesign ult i32 %i.ap, 32
  br i1 %i.aq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %joliet_allowed_char.exit
  %trunc.i.1 = trunc nuw i32 %i.ap to i16
  switch i16 %trunc.i.1, label %joliet_allowed_char.exit.1 [
    i16 42, label %bb.i
    i16 47, label %bb.i
    i16 58, label %bb.i
    i16 59, label %bb.i
    i16 63, label %bb.i
    i16 92, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %joliet_allowed_char.exit
  store i8 0, ptr %i.ai, align 1, !tbaa !71
  store i8 95, ptr %i.ak, align 1, !tbaa !71
  br label %joliet_allowed_char.exit.1

joliet_allowed_char.exit.1:                       ; preds = %bb.i, %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.04965, i64 4 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge69.loopexit.unr-lcssa, label %.lr.ph68, !llvm.loop !384

._crit_edge69.loopexit.unr-lcssa:                 ; preds = %joliet_allowed_char.exit.1
  %i.as = and i64 %i.w, 2
  %lcmp.mod.not.not = icmp eq i64 %i.as, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph68.epil.preheader, label %._crit_edge69

.lr.ph68.epil.preheader:                          ; preds = %._crit_edge69.loopexit.unr-lcssa, %.lr.ph68.preheader
  %.04965.epil.init = phi ptr [ %1, %.lr.ph68.preheader ], [ %i.ar, %._crit_edge69.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod16 = trunc i64 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.at = load i8, ptr %.04965.epil.init, align 1, !tbaa !71
  %i.au = getelementptr inbounds nuw i8, ptr %.04965.epil.init, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !71
  %i.aw = zext i8 %i.at to i32
  %i.ax = shl nuw nsw i32 %i.aw, 8
  %i.ay = zext i8 %i.av to i32
  %i.az = or disjoint i32 %i.ax, %i.ay            ; 2 uses
  %i.ba = icmp samesign ult i32 %i.az, 32
  br i1 %i.ba, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph68.epil.preheader
  %trunc.i.epil = trunc nuw i32 %i.az to i16
  switch i16 %trunc.i.epil, label %joliet_allowed_char.exit.epil [
    i16 42, label %bb.k
    i16 47, label %bb.k
    i16 58, label %bb.k
    i16 59, label %bb.k
    i16 63, label %bb.k
    i16 92, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %.lr.ph68.epil.preheader
  store i8 0, ptr %.04965.epil.init, align 1, !tbaa !71
  store i8 95, ptr %i.au, align 1, !tbaa !71
  br label %joliet_allowed_char.exit.epil

joliet_allowed_char.exit.epil:                    ; preds = %bb.k, %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.04965.epil.init, i64 2
  br label %._crit_edge69

._crit_edge69:                                    ; preds = %joliet_allowed_char.exit.epil, %._crit_edge69.loopexit.unr-lcssa, %bb.e
  %.049.lcssa = phi ptr [ %1, %bb.e ], [ %i.ar, %._crit_edge69.loopexit.unr-lcssa ], [ %i.bb, %joliet_allowed_char.exit.epil ] ; 7 uses
  %i.bc = sub i64 %i.c, %.4                       ; 4 uses
  %.not5671 = icmp eq i64 %i.bc, 0
  br i1 %.not5671, label %._crit_edge76, label %iter.check

iter.check:                                       ; preds = %._crit_edge69
  %i.bd = add i64 %.4, 2
  %i.be = sub i64 %i.bd, %i.c
  %5 = mul i64 %i.be, 9223372036854775807         ; 3 uses
  %i.bf = lshr i64 %5, 1
  %i.bg = add nuw i64 %i.bf, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %5, 6
  %6 = trunc i64 %.4 to i1
  %or.cond = or i1 %min.iters.check, %6
  br i1 %or.cond, label %.lr.ph75.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3 = icmp ult i64 %5, 30
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bh = and i64 %i.bg, 12
  %n.vec = and i64 %i.bg, -16                     ; 5 uses
  %i.bi = shl i64 %n.vec, 1
  %i.bj = getelementptr i8, ptr %.049.lcssa, i64 %i.bi ; 2 uses
  %i.bk = shl i64 %n.vec, 1
  %i.bl = sub i64 %i.bc, %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.049.lcssa, i64 %i.bm
  %i.bn = getelementptr i8, ptr %.049.lcssa, i64 %i.bm
  %next.gep4 = getelementptr i8, ptr %i.bn, i64 16
  store <16 x i8> <i8 0, i8 32, i8 0, i8 32, i8 0, i8 32, i8 0, i8 32, i8 0, i8 32, i8 0, i8 32, i8 0, i8 32, i8 0, i8 32>, ptr %next.gep, align 1, !tbaa !71
  store <16 x i8> <i8 0, i8 32, i8 0, i8 32, i8 0, i8 32, i8 0, i8 32, i8 0, i8 32, i8 0, i8 32, i8 0, i8 32, i8 0, i8 32>, ptr %next.gep4, align 1, !tbaa !71
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !385

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %._crit_edge76, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph75.preheader, label %vec.epilog.ph, !prof !386

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec6 = and i64 %i.bg, -4                     ; 4 uses
  %i.bp = shl i64 %n.vec6, 1
  %i.bq = getelementptr i8, ptr %.049.lcssa, i64 %i.bp ; 2 uses
  %i.br = shl i64 %n.vec6, 1
  %i.bs = sub i64 %i.bc, %i.br
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ] ; 2 uses
  %i.bt = shl i64 %index7, 1
  %next.gep8 = getelementptr i8, ptr %.049.lcssa, i64 %i.bt
  store <8 x i8> <i8 0, i8 32, i8 0, i8 32, i8 0, i8 32, i8 0, i8 32>, ptr %next.gep8, align 1, !tbaa !71
  %index.next9 = add nuw i64 %index7, 4           ; 2 uses
  %i.bu = icmp eq i64 %index.next9, %n.vec6
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !387

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.bg, %n.vec6
  br i1 %cmp.n10, label %._crit_edge76, label %.lr.ph75.preheader

.lr.ph75.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.15073.ph = phi ptr [ %.049.lcssa, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  %.15272.ph = phi i64 [ %i.bc, %iter.check ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  br label %.lr.ph75

.lr.ph75:                                         ; preds = %.lr.ph75.preheader, %.lr.ph75
  %.15073 = phi ptr [ %i.bw, %.lr.ph75 ], [ %.15073.ph, %.lr.ph75.preheader ] ; 3 uses
  %.15272 = phi i64 [ %i.bx, %.lr.ph75 ], [ %.15272.ph, %.lr.ph75.preheader ]
  store i8 0, ptr %.15073, align 1, !tbaa !71
  %i.bv = getelementptr inbounds nuw i8, ptr %.15073, i64 1
  store i8 32, ptr %i.bv, align 1, !tbaa !71
  %i.bw = getelementptr inbounds nuw i8, ptr %.15073, i64 2 ; 2 uses
  %i.bx = add i64 %.15272, -2                     ; 2 uses
  %.not56 = icmp eq i64 %i.bx, 0
  br i1 %.not56, label %._crit_edge76, label %.lr.ph75, !llvm.loop !388

._crit_edge76:                                    ; preds = %.lr.ph75, %middle.block, %vec.epilog.middle.block, %._crit_edge69
  %.150.lcssa = phi ptr [ %.049.lcssa, %._crit_edge69 ], [ %i.bq, %vec.epilog.middle.block ], [ %i.bj, %middle.block ], [ %i.bw, %.lr.ph75 ]
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge76
  store i8 0, ptr %.150.lcssa, align 1, !tbaa !71
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge76, %bb.l, %.critedge
  %.148 = phi i32 [ -30, %.critedge ], [ 0, %bb.l ], [ 0, %._crit_edge76 ]
  ret i32 %.148
}

; Function Attrs: nounwind
declare ptr @ctime_r(ptr noundef, ptr noundef) local_unnamed_addr #12

declare void @archive_string_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @set_option_info(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, i32 noundef range(i32 0, 4) %3, ...) unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = load i32, ptr %1, align 4, !tbaa !104
  %i.b = icmp eq i32 %i.a, 0
  %i.c = select i1 %i.b, i8 32, i8 44             ; 4 uses
  call void @llvm.va_start.p0(ptr nonnull %4)
  %i.d = load i32, ptr %4, align 16               ; 9 uses
  %i.e = icmp ult i32 %i.d, 41                    ; 4 uses
  switch i32 %3, label %default.unreachable24 [
    i32 0, label %bb.b
    i32 1, label %bb.f
    i32 2, label %bb.j
    i32 3, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load ptr, ptr %i.f, align 16
  %i.h = zext nneg i32 %i.d to i64
  %i.i = getelementptr i8, ptr %i.g, i64 %i.h
  %i.j = add nuw nsw i32 %i.d, 8
  store i32 %i.j, ptr %4, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  store ptr %i.m, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi ptr [ %i.i, %bb.c ], [ %i.l, %bb.d ]
  %i.o = load i32, ptr %i.n, align 4, !tbaa !104
  %i.p = zext nneg i8 %i.c to i32
  %i.q = icmp eq i32 %i.o, 0
  %i.r = select i1 %i.q, ptr @.str.92, ptr @.str.4
  call void (ptr, ptr, ...) @archive_string_sprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.91, i32 noundef %i.p, ptr noundef nonnull %i.r, ptr noundef %2) #23
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = load ptr, ptr %i.s, align 16
  %i.u = zext nneg i32 %i.d to i64
  %i.v = getelementptr i8, ptr %i.t, i64 %i.u
  %i.w = add nuw nsw i32 %i.d, 8
  store i32 %i.w, ptr %4, align 16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.x, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = phi ptr [ %i.v, %bb.g ], [ %i.y, %bb.h ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !233
  %i.ac = zext nneg i8 %i.c to i32
  call void (ptr, ptr, ...) @archive_string_sprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.93, i32 noundef %i.ac, ptr noundef %2, ptr noundef %i.ab) #23
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = load ptr, ptr %i.ad, align 16
  %i.af = zext nneg i32 %i.d to i64
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.af
  %i.ah = add nuw nsw i32 %i.d, 8
  store i32 %i.ah, ptr %4, align 16
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %i.ai, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.al = phi ptr [ %i.ag, %bb.k ], [ %i.aj, %bb.l ]
  %i.am = load i32, ptr %i.al, align 4, !tbaa !104
  %i.an = zext nneg i8 %i.c to i32
  call void (ptr, ptr, ...) @archive_string_sprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.94, i32 noundef %i.an, ptr noundef %2, i32 noundef %i.am) #23
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ap = load ptr, ptr %i.ao, align 16
  %i.aq = zext nneg i32 %i.d to i64
  %i.ar = getelementptr i8, ptr %i.ap, i64 %i.aq
  %i.as = add nuw nsw i32 %i.d, 8
  store i32 %i.as, ptr %4, align 16
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.assume
!188 = distinct !{!188, !91}
!189 = distinct !{!189, !91}
!190 = distinct !{!190, !91}
!191 = !{!61, !14, i64 168}
!192 = !{!61, !6, i64 184}
!193 = distinct !{!193, !91}
!194 = distinct !{!194, !91}
!195 = !{!29, !6, i64 32}
!196 = !{!29, !6, i64 28}
!197 = !{!20, !6, i64 220}
!198 = !{!20, !6, i64 212}
!199 = !{!20, !6, i64 224}
!200 = !{!20, !6, i64 268}
!201 = !{!20, !6, i64 260}
!202 = !{!20, !6, i64 272}
!203 = !{!20, !6, i64 228}
!204 = !{!20, !6, i64 276}
!205 = !{!20, !6, i64 464}
!206 = !{!20, !6, i64 288}
!207 = !{!82, !6, i64 164}
!208 = !{!82, !6, i64 160}
!209 = !{!61, !64, i64 104}
!210 = !{!82, !6, i64 184}
!211 = distinct !{!211, !91}
!212 = distinct !{!212, !91}
!213 = distinct !{!213, !91}
!214 = !{!84, !6, i64 20}
!215 = distinct !{!215, !91}
!216 = distinct !{!216, !91}
!217 = distinct !{!217, !91, !218, !219}
!218 = !{!"llvm.loop.isvectorized", i32 1}
!219 = !{!"llvm.loop.unroll.runtime.disable"}
!220 = distinct !{!220, !91, !219, !218}
!221 = distinct !{!221, !91}
!222 = distinct !{!222, !91}
!223 = !{!20, !6, i64 280}
!224 = !{!20, !6, i64 284}
!225 = distinct !{!225, !91}
!226 = distinct !{!226, !91}
!227 = distinct !{!227, !91}
!228 = distinct !{!228, !91}
!229 = distinct !{!229, !91}
!230 = !{!82, !16, i64 96}
!231 = !{!82, !16, i64 120}
!232 = !{!16, !16, i64 0}
!233 = !{!14, !14, i64 0}
!234 = distinct !{!234, !91}
!235 = distinct !{!235, !91}
!236 = !{!82, !14, i64 88}
!237 = !{!82, !14, i64 40}
!238 = distinct !{!238, !91}
!239 = distinct !{!239, !91}
!240 = distinct !{!240, !91}
!241 = distinct !{!241, !91}
!242 = !{!20, !16, i64 40}
!243 = !{!82, !14, i64 64}
!244 = !{!245, !67, i64 2056}
!245 = !{!"extr_rec", !6, i64 0, !6, i64 4, !7, i64 8, !67, i64 2056}
!246 = distinct !{!246, !91}
!247 = !{!15, !14, i64 0}
!248 = distinct !{!248, !91}
!249 = !{!183, !24, i64 40}
!250 = !{!20, !6, i64 540}
!251 = !{!20, !6, i64 564}
!252 = !{!20, !16, i64 552}
!253 = !{!20, !16, i64 704}
!254 = !{!20, !16, i64 576}
!255 = !{!20, !14, i64 584}
!256 = !{!20, !6, i64 592}
!257 = !{!20, !16, i64 600}
!258 = !{!20, !16, i64 624}
!259 = distinct !{!259, !91}
!260 = !{!20, !16, i64 66296}
!261 = !{!84, !16, i64 0}
!262 = distinct !{!262, !91}
!263 = !{!33, !14, i64 24}
!264 = !{!33, !6, i64 32}
!265 = !{!33, !16, i64 16}
!266 = !{!33, !14, i64 0}
!267 = !{!33, !6, i64 8}
!268 = distinct !{!268, !91}
!269 = !{!33, !16, i64 40}
!270 = distinct !{!270, !91}
!271 = distinct !{!271, !91}
!272 = !{!20, !16, i64 66304}
!273 = distinct !{!273, !91}
!274 = !{!29, !6, i64 44}
!275 = !{!29, !6, i64 8}
!276 = distinct !{!276, !91}
!277 = distinct !{!277, !91}
!278 = !{!61, !6, i64 160}
!279 = !{!61, !6, i64 156}
!280 = !{!245, !6, i64 0}
!281 = !{!245, !6, i64 4}
!282 = distinct !{!282, !91}
!283 = distinct !{!283, !91}
!284 = distinct !{!284, !91}
!285 = !{!20, !14, i64 296}
!286 = !{!29, !6, i64 36}
!287 = !{!29, !6, i64 40}
!288 = !{!20, !14, i64 416}
!289 = !{!20, !14, i64 368}
!290 = !{!20, !14, i64 440}
!291 = !{!20, !14, i64 392}
!292 = !{!20, !14, i64 320}
!293 = !{!61, !6, i64 136}
!294 = distinct !{!294, !91}
!295 = distinct !{!295, !91}
!296 = distinct !{!296, !91}
!297 = distinct !{!297, !91}
!298 = !{!67, !67, i64 0}
!299 = distinct !{!299, !91}
!300 = distinct !{!300, !91}
!301 = distinct !{!301, !91}
!302 = !{!20, !7, i64 66376}
!303 = !{!20, !14, i64 66384}
!304 = distinct !{!304, !91}
!305 = distinct !{!305, !91}
!306 = !{!307, !308, i64 0}
!307 = !{!"idr", !308, i64 0, !26, i64 8, !309, i64 24, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !7, i64 56}
!308 = !{!"p1 _ZTS6idrent", !13, i64 0}
!309 = !{!"", !308, i64 0, !310, i64 8}
!310 = !{!"p2 _ZTS6idrent", !25, i64 0}
!311 = !{!307, !6, i64 40}
!312 = !{ptr @isoent_gen_iso9660_identifier, ptr @isoent_gen_joliet_identifier}
!313 = !{!314, !22, i64 40}
!314 = !{!"idrent", !62, i64 0, !308, i64 24, !308, i64 32, !22, i64 40, !6, i64 48, !6, i64 52, !6, i64 56}
!315 = distinct !{!315, !91}
!316 = distinct !{!316, !91}
!317 = distinct !{!317, !91}
!318 = distinct !{!318, !91}
!319 = distinct !{!319, !91}
!320 = !{!307, !308, i64 24}
!321 = !{!307, !310, i64 32}
!322 = !{!307, !6, i64 44}
!323 = !{!307, !6, i64 48}
!324 = !{!307, !6, i64 52}
!325 = !{!61, !6, i64 188}
!326 = distinct !{!326, !91}
!327 = distinct !{!327, !91}
!328 = !{!61, !6, i64 176}
!329 = !{!61, !6, i64 180}
!330 = !{!20, !16, i64 104}
!331 = !{!314, !6, i64 48}
!332 = !{!314, !6, i64 52}
!333 = !{!314, !6, i64 56}
!334 = !{!314, !308, i64 32}
!335 = !{!308, !308, i64 0}
!336 = distinct !{!336, !91}
!337 = !{!36, !36, i64 0}
!338 = distinct !{!338, !91}
!339 = distinct !{!339, !91}
!340 = distinct !{!340, !91}
!341 = distinct !{!341, !91}
!342 = distinct !{!342, !91}
!343 = distinct !{!343, !91}
!344 = distinct !{!344, !91}
!345 = distinct !{!345, !91}
!346 = distinct !{!346, !91}
!347 = distinct !{!347, !91}
!348 = distinct !{!348, !91}
!349 = distinct !{!349, !91}
!350 = distinct !{!350, !91}
!351 = distinct !{!351, !91}
!352 = distinct !{!352, !91}
!353 = distinct !{!353, !91}
!354 = distinct !{!354, !91}
!355 = !{!356, !6, i64 20}
!356 = !{!"tm", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !16, i64 40, !14, i64 48}
!357 = !{!356, !6, i64 16}
!358 = !{!356, !6, i64 12}
!359 = !{!356, !6, i64 8}
!360 = !{!356, !6, i64 4}
!361 = !{!356, !6, i64 0}
!362 = !{!356, !16, i64 40}
!363 = !{!61, !6, i64 140}
!364 = !{!365, !14, i64 8}
!365 = !{!"ctl_extr_rec", !6, i64 0, !14, i64 8, !22, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48}
!366 = !{!365, !6, i64 0}
!367 = !{!365, !22, i64 16}
!368 = !{!365, !14, i64 24}
!369 = !{!365, !6, i64 36}
!370 = !{!365, !6, i64 32}
!371 = !{!365, !6, i64 40}
!372 = distinct !{!372, !91}
!373 = !{!82, !14, i64 112}
!374 = distinct !{!374, !91}
!375 = !{!365, !6, i64 48}
!376 = !{!365, !6, i64 44}
!377 = !{!61, !6, i64 144}
!378 = !{!61, !6, i64 148}
!379 = !{!61, !6, i64 152}
!380 = distinct !{!380, !91}
!381 = !{!20, !16, i64 80}
!382 = !{!20, !14, i64 72}
!383 = distinct !{!383, !91}
!384 = distinct !{!384, !91}
!385 = distinct !{!385, !91, !218, !219}
!386 = !{!"branch_weights", i32 4, i32 12}
!387 = distinct !{!387, !91, !218, !219}
!388 = distinct !{!388, !91, !218}
!389 = distinct !{!389, !91}
end_hunk_1
