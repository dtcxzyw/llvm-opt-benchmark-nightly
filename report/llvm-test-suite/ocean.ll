inline.NumInlined: 160
inline.NumDeleted: 21
begin_hunk_0_@_ZN4Cell20getNeighborWithImageEc:bb.a

bb.c:                                             ; preds = %bb.b
  %i.ar = add nuw nsw i32 %.0, 1
  %i.as = zext nneg i32 %.0 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.as
  store ptr %i.an, ptr %i.at, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ %i.ar, %bb.c ], [ %.0, %bb.b ]  ; 3 uses
  %i.au = add i32 %i.af, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !23 ; 2 uses
  %i.ax = urem i32 %i.au, %i.aw
  %i.ay = zext i32 %i.e to i64
  %i.az = getelementptr inbounds nuw [8000 x i8], ptr @cells, i64 %i.ay ; 3 uses
  %i.ba = zext i32 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !11 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !22
  %i.bf = icmp eq i8 %i.be, %1
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = add nuw nsw i32 %.1, 1
  %i.bh = zext nneg i32 %.1 to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bh
  store ptr %i.bc, ptr %i.bi, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %i.bg, %bb.e ], [ %.1, %bb.d ]  ; 4 uses
  %.not.i15 = icmp eq i32 %i.af, 0
  br i1 %.not.i15, label %_ZN4Cell4westEv.exit, label %_ZN4Cell4westEv.exit.thread

_ZN4Cell4westEv.exit:                             ; preds = %bb.f
  %i.bj = add i32 %i.aw, -1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !11 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !22
  %i.bp = icmp eq i8 %i.bo, %1
  br i1 %i.bp, label %.thread23, label %bb.g

_ZN4Cell4westEv.exit.thread:                      ; preds = %bb.f
  %i.bq = add i32 %i.af, -1
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !11 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !22
  %i.bw = icmp eq i8 %i.bv, %1
  br i1 %i.bw, label %.thread23, label %bb.g

.thread23:                                        ; preds = %_ZN4Cell4westEv.exit.thread, %_ZN4Cell4westEv.exit
  %i.bx = phi ptr [ %i.bt, %_ZN4Cell4westEv.exit.thread ], [ %i.bm, %_ZN4Cell4westEv.exit ]
  %i.by = add nuw nsw i32 %.2, 1
  %i.bz = zext nneg i32 %.2 to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bz
  store ptr %i.bx, ptr %i.ca, align 8, !tbaa !11
  br label %bb.h

bb.g:                                             ; preds = %_ZN4Cell4westEv.exit.thread, %_ZN4Cell4westEv.exit
  %.not = icmp eq i32 %.2, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread23, %bb.g
  %.326 = phi i32 [ %i.by, %.thread23 ], [ %.2, %bb.g ]
  %i.cb = add nsw i32 %.326, -1
  %i.cc = tail call i64 @random() #11
  %i.cd = zext nneg i32 %i.cb to i64
  %i.ce = mul nsw i64 %i.cc, %i.cd
  %i.cf = sdiv i64 %i.ce, 2147483647
  %i.cg = and i64 %i.cf, 4294967295
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.011 = phi ptr [ %i.ci, %bb.h ], [ %0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.011
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN4Cell5northEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8    ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @Ocean1, align 8, !tbaa !17
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.in = phi i32 [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %i.g = add i32 %.in, -1
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8000 x i8], ptr @cells, i64 %i.h
  %i.j = load i32, ptr %i.b, align 4, !tbaa !10
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11
  ret ptr %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN4Cell5southEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8
  %i.e = add i32 %i.d, 1
  %i.f = load ptr, ptr @Ocean1, align 8, !tbaa !17
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %i.h = urem i32 %i.e, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8000 x i8], ptr @cells, i64 %i.i
  %i.k = load i32, ptr %i.b, align 4, !tbaa !10
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11
  ret ptr %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN4Cell4eastEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10
  %i.d = add i32 %i.c, 1
  %i.e = load ptr, ptr @Ocean1, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !23
  %i.h = urem i32 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8000 x i8], ptr @cells, i64 %i.k
  %i.m = zext i32 %i.h to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11
  ret ptr %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN4Cell4westEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @Ocean1, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.in = phi i32 [ %i.f, %bb.b ], [ %i.c, %bb.a ]
  %i.g = add i32 %.in, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !8
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8000 x i8], ptr @cells, i64 %i.j
  %i.l = zext i32 %i.g to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6Random14nextIntBetweenEii(ptr noundef nonnull readnone align 4 captures(none) dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i64 @random() #11
  %i.b = sext i32 %2 to i64
  %i.c = mul nsw i64 %i.a, %i.b
  %i.d = sdiv i64 %i.c, 2147483647
  %i.e = trunc i64 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4Cell21getEmptyNeighborCoordEv(ptr dead_on_unwind noalias writable writeonly sret(%class.Coordinate) align 4 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(17) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4Cell20getNeighborWithImageEc(ptr noundef nonnull align 8 dereferenceable(17) %1, i8 noundef signext 45)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = load <2 x i32>, ptr %i.c, align 4, !tbaa !4
  store <2 x i32> %i.d, ptr %0, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4Cell20getPreyNeighborCoordEv(ptr dead_on_unwind noalias writable writeonly sret(%class.Coordinate) align 4 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(17) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4Cell20getNeighborWithImageEc(ptr noundef nonnull align 8 dereferenceable(17) %1, i8 noundef signext 102)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = load <2 x i32>, ptr %i.c, align 4, !tbaa !4
  store <2 x i32> %i.d, ptr %0, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN4Cell9reproduceE10Coordinate(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4Cell, i64 16), ptr %i.a, align 8, !tbaa !24
  %i.b = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #12
          to label %bb.b unwind label %bb.c, !inline_history !26 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = load <2 x i32>, ptr %1, align 4, !tbaa !4
  store <2 x i32> %i.c, ptr %i.b, align 4, !tbaa !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 45, ptr %i.e, align 8, !tbaa !22
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #13
  resume { ptr, i32 } %i.f
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4Cell7displayEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(17) %0) local_unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Prey8moveFromE10CoordinateS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.Coordinate, align 4          ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27
  %i.c = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.c, ptr %i.a, align 4, !tbaa !27
  %i.d = load i32, ptr %2, align 4, !tbaa !10     ; 2 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !10
  %.not.i = icmp eq i32 %i.d, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.g, %i.i
  %narrow.i.not = select i1 %.not.i, i1 true, i1 %i.j
  br i1 %narrow.i.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [8000 x i8], ptr @cells, i64 %i.k
  %i.m = zext i32 %i.d to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11   ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.o) #11
  %.pre = load i32, ptr %i.a, align 4, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.t = phi i32 [ %i.c, %bb.b ], [ %.pre, %bb.c ]
  %i.u = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #12 ; 3 uses
  %i.v = load i32, ptr %2, align 4, !tbaa !10     ; 2 uses
  store i32 %i.v, ptr %i.u, align 4, !tbaa !10
  %i.w = load i32, ptr %i.f, align 4, !tbaa !8    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.w, ptr %i.x, align 4, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.y, align 8, !tbaa !14
  %i.z = zext i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw [8000 x i8], ptr @cells, i64 %i.z
  %i.ab = zext i32 %i.v to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab
  store ptr %0, ptr %i.ac, align 8, !tbaa !11
  %i.ad = icmp slt i32 %i.t, 1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 6, ptr %i.a, align 4, !tbaa !27
  %i.ae = load i32, ptr %1, align 4, !tbaa !10    ; 2 uses
  %i.af = load i32, ptr %i.h, align 4, !tbaa !8   ; 2 uses
  store i32 %i.ae, ptr %3, align 4, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !8
  %i.ah = load ptr, ptr %0, align 8, !tbaa !24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %3)
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.ak = load i32, ptr %1, align 4, !tbaa !10    ; 2 uses
  %i.al = load i32, ptr %i.h, align 4, !tbaa !8   ; 2 uses
  %i.am = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4Cell, i64 16), ptr %i.am, align 8, !tbaa !24
  %i.an = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #12
          to label %bb.g unwind label %bb.h, !inline_history !26 ; 3 uses

bb.g:                                             ; preds = %bb.f
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i8 45, ptr %i.aq, align 8, !tbaa !22
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 24) #13
  resume { ptr, i32 } %i.ar

.sink.split:                                      ; preds = %bb.g, %bb.e
  %.sink23 = phi i32 [ %i.af, %bb.e ], [ %i.al, %bb.g ]
  %.sink21 = phi i32 [ %i.ae, %bb.e ], [ %i.ak, %bb.g ]
  %.sink = phi ptr [ %i.aj, %bb.e ], [ %i.am, %bb.g ]
  %i.as = zext i32 %.sink23 to i64
  %i.at = getelementptr inbounds nuw [8000 x i8], ptr @cells, i64 %i.as
  %i.au = zext i32 %.sink21 to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  store ptr %.sink, ptr %i.av, align 8, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN4Prey9reproduceE10Coordinate(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4Cell, i64 16), ptr %i.a, align 8, !tbaa !24
  %i.b = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #12
          to label %bb.b unwind label %bb.c, !inline_history !29 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = load <2 x i32>, ptr %1, align 4, !tbaa !4
  store <2 x i32> %i.c, ptr %i.b, align 4, !tbaa !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4Prey, i64 16), ptr %i.a, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 6, ptr %i.f, align 4, !tbaa !27
  store i8 102, ptr %i.e, align 8, !tbaa !22
  %i.g = load ptr, ptr @Ocean1, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !30
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !30
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #13
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8Predator7processEv(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.Coordinate, align 8          ; 4 uses
  %2 = alloca %class.Coordinate, align 8          ; 4 uses
  %3 = alloca %class.Coordinate, align 4          ; 3 uses
  %4 = alloca %class.Coordinate, align 4          ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %i.c = add i32 %i.b, -1                         ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !31
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !8    ; 2 uses
  %i.j = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4Cell, i64 16), ptr %i.j, align 8, !tbaa !24
  %i.k = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #12
          to label %bb.c unwind label %bb.d, !inline_history !26 ; 3 uses

bb.c:                                             ; preds = %bb.b
  store i32 %i.g, ptr %i.k, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.i, ptr %i.l, align 4, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %i.m, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i8 45, ptr %i.n, align 8, !tbaa !22
  %i.o = zext i32 %i.i to i64
  %i.p = getelementptr inbounds nuw [8000 x i8], ptr @cells, i64 %i.o
  %i.q = zext i32 %i.g to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  store ptr %i.j, ptr %i.r, align 8, !tbaa !11
  %i.s = load ptr, ptr @Ocean1, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !33
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !33
  %i.w = load ptr, ptr %0, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(28) %0) #11
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 24) #13
  resume { ptr, i32 } %i.z

bb.e:                                             ; preds = %bb.a
  %i.aa = tail call noundef ptr @_ZN4Cell20getNeighborWithImageEc(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 noundef signext 102), !noalias !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !14 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !10, !noalias !34 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8, !noalias !34 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !14 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !10 ; 2 uses
  %.not.i = icmp eq i32 %i.ad, %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = icmp eq i32 %i.af, %i.ak
  %narrow.i.not = select i1 %.not.i, i1 true, i1 %i.al
  br i1 %narrow.i.not, label %_ZN4Prey7processEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr @Ocean1, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !30
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !30
  store i32 6, ptr %i.a, align 8, !tbaa !31
  store i32 %i.ai, ptr %3, align 4, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ak, ptr %i.aq, align 4, !tbaa !8
  store i32 %i.ad, ptr %4, align 4, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.af, ptr %i.ar, align 4, !tbaa !8
  call void @_ZN4Prey8moveFromE10CoordinateS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br label %bb.g

_ZN4Prey7processEv.exit:                          ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.as = tail call noundef ptr @_ZN4Cell20getNeighborWithImageEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext 45), !noalias !37
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !14
  %i.av = load ptr, ptr %i.ag, align 8, !tbaa !14
  %i.aw = load <2 x i32>, ptr %i.av, align 4, !tbaa !4
  store <2 x i32> %i.aw, ptr %1, align 8, !tbaa !4
  %i.ax = load <2 x i32>, ptr %i.au, align 4, !tbaa !4, !noalias !37
  store <2 x i32> %i.ax, ptr %2, align 8, !tbaa !4
  call void @_ZN4Prey8moveFromE10CoordinateS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4Prey7processEv.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Prey7processEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.Coordinate, align 8          ; 2 uses
  %2 = alloca %class.Coordinate, align 8          ; 2 uses
  %i.a = tail call noundef ptr @_ZN4Cell20getNeighborWithImageEc(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 noundef signext 45), !noalias !40
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = load <2 x i32>, ptr %i.e, align 4, !tbaa !4
  store <2 x i32> %i.f, ptr %1, align 8, !tbaa !4
  %i.g = load <2 x i32>, ptr %i.c, align 4, !tbaa !4, !noalias !40
  store <2 x i32> %i.g, ptr %2, align 8, !tbaa !4
  call void @_ZN4Prey8moveFromE10CoordinateS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN8Predator9reproduceE10Coordinate(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #12 ; 8 uses
  %i.b = load <2 x i32>, ptr %1, align 4, !tbaa !4
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4Cell, i64 16), ptr %i.a, align 8, !tbaa !24
  %i.c = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #12
          to label %bb.b unwind label %bb.c, !inline_history !43 ; 2 uses

bb.b:                                             ; preds = %bb.a
  store <2 x i32> %i.b, ptr %i.c, align 4, !tbaa !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 6, ptr %i.f, align 4, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8Predator, i64 16), ptr %i.a, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 6, ptr %i.g, align 8, !tbaa !31
  store i8 83, ptr %i.e, align 8, !tbaa !22
  %i.h = load ptr, ptr @Ocean1, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !33
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !33
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #13
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef float @_ZN6Random8randRealEv(ptr noundef nonnull readnone align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i64 @random() #11
  %i.b = sitofp i64 %i.a to float
  %i.c = fmul nnan float %i.b, f0x30000000
  ret float %i.c
}

; Function Attrs: nounwind
declare i64 @random() local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Ocean10initializeEv(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 20), (24, 32)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #12 ; 2 uses
  store i64 9092445769429, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 750, ptr %i.c, align 8, !tbaa !45
  store <4 x i32> <i32 500, i32 1000, i32 1000, i32 200>, ptr %0, align 8, !tbaa !4
  tail call void @_ZN5Ocean9initCellsEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Ocean9initCellsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZN5Ocean13addEmptyCellsEv.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !23   ; 2 uses
  %.not16.i = icmp eq i32 %i.c, 0
  br i1 %.not16.i, label %_ZN5Ocean13addEmptyCellsEv.exit, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count23.i = zext i32 %i.a to i64
  %wide.trip.count.i = zext i32 %i.c to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %indvars.iv20.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next21.i, %._crit_edge.us.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8000 x i8], ptr @cells, i64 %indvars.iv20.i
  %i.e = trunc nuw i64 %indvars.iv20.i to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.f = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4Cell, i64 16), ptr %i.f, align 8, !tbaa !24
  %i.g = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #12
          to label %bb.c unwind label %.split.us.i, !inline_history !26 ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw i64 %indvars.iv.i to i32
  store i32 %i.h, ptr %i.g, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.e, ptr %i.i, align 4, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.j, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 45, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  store ptr %i.f, ptr %i.l, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.b, !llvm.loop !46

._crit_edge.us.i:                                 ; preds = %bb.c
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next21.i, %wide.trip.count23.i
  br i1 %exitcond24.not.i, label %_ZN5Ocean13addEmptyCellsEv.exit, label %.preheader.us.i, !llvm.loop !48

.split.us.i:                                      ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 24) #13
  resume { ptr, i32 } %i.m

_ZN5Ocean13addEmptyCellsEv.exit:                  ; preds = %._crit_edge.us.i, %bb.a, %.preheader.lr.ph.i
  tail call void @_ZN5Ocean12addObstaclesEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  tail call void @_ZN5Ocean12addPredatorsEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  tail call void @_ZN5Ocean7addPreyEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %0, ptr @Ocean1, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Ocean13addEmptyCellsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge14, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !23   ; 2 uses
  %.not16 = icmp eq i32 %i.c, 0
  br i1 %.not16, label %._crit_edge14, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count23 = zext i32 %i.a to i64
  %wide.trip.count = zext i32 %i.c to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv20 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next21, %._crit_edge.us ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8000 x i8], ptr @cells, i64 %indvars.iv20
  %i.e = trunc nuw i64 %indvars.iv20 to i32
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.f = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4Cell, i64 16), ptr %i.f, align 8, !tbaa !24
  %i.g = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #12
          to label %bb.c unwind label %.split.us, !inline_history !26 ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw i64 %indvars.iv to i32
  store i32 %i.h, ptr %i.g, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.e, ptr %i.i, align 4, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.j, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 45, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store ptr %i.f, ptr %i.l, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !46

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %exitcond24.not = icmp eq i64 %indvars.iv.next21, %wide.trip.count23
  br i1 %exitcond24.not, label %._crit_edge14, label %.preheader.us, !llvm.loop !48

.split.us:                                        ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 24) #13
  resume { ptr, i32 } %i.m

._crit_edge14:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Ocean12addObstaclesEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
