inline.NumInlined: 32
inline.NumDeleted: 4
begin_hunk_0_@u_strFindFirst_78:bb.a
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = and i16 %i.dc, -1024
  %i.de = icmp ne i16 %i.dd, -10240
  %.not10.i = icmp eq ptr %.2101.lcssa, %i.cn
  %or.cond11.i = or i1 %.not10.i, %i.de
  br i1 %or.cond11.i, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.df = load i16, ptr %.2101.lcssa, align 2
  %i.dg = and i16 %i.df, -1024
  %i.dh = icmp eq i16 %i.dg, -9216
  br i1 %i.dh, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit131.thread, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit

.lr.ph179:                                        ; preds = %.preheader143, %bb.ae
  %.298178 = phi ptr [ %i.dl, %bb.ae ], [ %i.bb, %.preheader143 ] ; 2 uses
  %.2101177 = phi ptr [ %i.dk, %bb.ae ], [ %i.cu, %.preheader143 ] ; 2 uses
  %i.di = load i16, ptr %.2101177, align 2
  %i.dj = load i16, ptr %.298178, align 2
  %.not112 = icmp eq i16 %i.di, %i.dj
  br i1 %.not112, label %bb.ae, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit131.thread

bb.ae:                                            ; preds = %.lr.ph179
  %i.dk = getelementptr inbounds nuw i8, ptr %.2101177, i64 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.298178, i64 2 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.bf
  br i1 %i.dm, label %._crit_edge180, label %.lr.ph179, !llvm.loop !13

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit131.thread: ; preds = %.lr.ph179, %bb.ad, %bb.ab, %bb.aa
  %.not = icmp eq ptr %i.cu, %i.co
  br i1 %.not, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit, label %bb.aa, !llvm.loop !14

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit:       ; preds = %bb.f, %.lr.ph, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread, %bb.h, %bb.i, %.lr.ph167, %bb.t, %bb.s, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit131.thread, %bb.ac, %bb.ad, %._crit_edge194, %.loopexit, %.preheader, %.preheader.us, %bb.v, %.preheader154, %.preheader151, %bb.z, %.preheader141, %bb.q, %bb.y, %bb.p, %bb.m, %bb.d, %bb.b, %bb.a
  %.1 = phi ptr [ %0, %bb.m ], [ %0, %bb.a ], [ null, %bb.b ], [ %0, %bb.d ], [ %.2183, %bb.ad ], [ null, %bb.z ], [ null, %bb.y ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread ], [ %.193197.us, %.preheader.us ], [ %0, %.preheader154 ], [ null, %bb.q ], [ null, %.lr.ph167 ], [ %i.bj, %bb.p ], [ null, %.preheader ], [ null, %.preheader141 ], [ null, %.loopexit ], [ %.09.i, %bb.s ], [ null, %.preheader151 ], [ null, %bb.v ], [ %.193197, %._crit_edge194 ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit131.thread ], [ %.2183, %bb.ac ], [ null, %bb.t ], [ %.092170, %bb.i ], [ %.092170, %bb.h ], [ %i.u, %bb.f ], [ null, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @u_strchr_78(ptr noundef readonly captures(address_is_null, ret: address, provenance) %0, i16 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = and i16 %1, -2048
  %i.b = icmp eq i16 %i.a, -10240
  br i1 %i.b, label %bb.b, label %.preheader12

.preheader12:                                     ; preds = %bb.a
  %i.c = load i16, ptr %0, align 2                ; 2 uses
  %i.d = icmp eq i16 %i.c, %1
  br i1 %i.d, label %u_strFindFirst_78.exit, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %u_strFindFirst_78.exit, label %.preheader10.split

.preheader10.split:                               ; preds = %bb.b
  %i.f = load i16, ptr %0, align 2                ; 2 uses
  %.not114.i26 = icmp eq i16 %i.f, 0
  br i1 %.not114.i26, label %u_strFindFirst_78.exit, label %.lr.ph28.preheader

.lr.ph28.preheader:                               ; preds = %.preheader10.split
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.h = icmp eq i16 %i.f, %1
  br i1 %i.h, label %.preheader.peel, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.peel

.preheader.peel:                                  ; preds = %.lr.ph28.preheader
  %i.i = and i16 %1, -9216
  %.not.peel = icmp eq i16 %i.i, -10240
  br i1 %.not.peel, label %bb.c, label %u_strFindFirst_78.exit

bb.c:                                             ; preds = %.preheader.peel
  %i.j = load i16, ptr %i.g, align 2              ; 2 uses
  %i.k = and i16 %i.j, -1024
  %i.l = icmp eq i16 %i.k, -9216
  br i1 %i.l, label %.lr.ph28.peel.next, label %u_strFindFirst_78.exit

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.peel: ; preds = %.lr.ph28.preheader
  %.pr = load i16, ptr %i.g, align 2              ; 2 uses
  %.not114.i.peel = icmp eq i16 %.pr, 0
  br i1 %.not114.i.peel, label %u_strFindFirst_78.exit, label %.lr.ph28.peel.next

.lr.ph28.peel.next:                               ; preds = %bb.c, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.peel
  %i.m = phi i16 [ %.pr, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.peel ], [ %i.j, %bb.c ]
  %i.n = and i16 %1, -9216
  br label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28.peel.next, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread
  %i.o = phi i16 [ %i.y, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread ], [ %i.m, %.lr.ph28.peel.next ]
  %.193.i27 = phi ptr [ %i.p, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread ], [ %i.g, %.lr.ph28.peel.next ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.193.i27, i64 2 ; 3 uses
  %i.q = icmp eq i16 %i.o, %1
  br i1 %i.q, label %.preheader, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.threadthread-pre-split

.preheader:                                       ; preds = %.lr.ph28
  switch i16 %i.n, label %u_strFindFirst_78.exit [
    i16 -9216, label %bb.d
    i16 -10240, label %bb.e
  ]

bb.d:                                             ; preds = %.preheader
  %i.r = getelementptr inbounds i8, ptr %.193.i27, i64 -2
  %i.s = load i16, ptr %i.r, align 2
  %i.t = and i16 %i.s, -1024
  %i.u = icmp eq i16 %i.t, -10240
  br i1 %i.u, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.threadthread-pre-split, label %u_strFindFirst_78.exit

bb.e:                                             ; preds = %.preheader
  %i.v = load i16, ptr %i.p, align 2              ; 2 uses
  %i.w = and i16 %i.v, -1024
  %i.x = icmp eq i16 %i.w, -9216
  br i1 %i.x, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread, label %u_strFindFirst_78.exit

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.threadthread-pre-split: ; preds = %.lr.ph28, %bb.d
  %.pr47 = load i16, ptr %i.p, align 2
  br label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread: ; preds = %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.threadthread-pre-split, %bb.e
  %i.y = phi i16 [ %.pr47, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.threadthread-pre-split ], [ %i.v, %bb.e ] ; 2 uses
  %.not114.i = icmp eq i16 %i.y, 0
  br i1 %.not114.i, label %u_strFindFirst_78.exit, label %.lr.ph28, !llvm.loop !15

.lr.ph:                                           ; preds = %.preheader12, %bb.f
  %i.z = phi i16 [ %i.ac, %bb.f ], [ %i.c, %.preheader12 ]
  %.0517 = phi ptr [ %i.ab, %bb.f ], [ %0, %.preheader12 ]
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %u_strFindFirst_78.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.0517, i64 2 ; 3 uses
  %i.ac = load i16, ptr %i.ab, align 2            ; 2 uses
  %i.ad = icmp eq i16 %i.ac, %1
  br i1 %i.ad, label %u_strFindFirst_78.exit, label %.lr.ph, !llvm.loop !5

u_strFindFirst_78.exit:                           ; preds = %.lr.ph, %bb.f, %bb.d, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread, %bb.e, %.preheader, %.preheader.peel, %bb.c, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.peel, %.preheader12, %.preheader10.split, %bb.b
  %.1 = phi ptr [ null, %.preheader10.split ], [ null, %bb.b ], [ %0, %.preheader12 ], [ %.193.i27, %.preheader ], [ %0, %.preheader.peel ], [ %0, %bb.c ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.peel ], [ %.193.i27, %bb.d ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread ], [ %.193.i27, %bb.e ], [ %i.ab, %bb.f ], [ null, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_(ptr noundef nonnull readnone captures(address) %0, ptr noundef nonnull readonly captures(address) %1, ptr noundef nonnull readonly captures(address) %2, ptr noundef readnone captures(address) %3) unnamed_addr #3 {
bb.a:
  %i.a = load i16, ptr %1, align 2
  %i.b = and i16 %i.a, -1024
  %i.c = icmp ne i16 %i.b, -9216
  %.not = icmp eq ptr %0, %1
  %or.cond = or i1 %.not, %i.c
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %1, i64 -2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = and i16 %i.e, -1024
  %i.g = icmp eq i16 %i.f, -10240
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds i8, ptr %2, i64 -2
  %i.i = load i16, ptr %i.h, align 2
  %i.j = and i16 %i.i, -1024
  %i.k = icmp ne i16 %i.j, -10240
  %.not10 = icmp eq ptr %2, %3
  %or.cond11 = or i1 %.not10, %i.k
  br i1 %or.cond11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i16, ptr %2, align 2
  %i.m = and i16 %i.l, -1024
  %i.n = icmp eq i16 %i.m, -9216
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %.0 = phi i8 [ 1, %bb.e ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @u_strlen_78(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]    ; 3 uses
  %i.a = load i16, ptr %.0, align 2
  %.not = icmp eq i16 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %.0, i64 2
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !9

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %.0 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 1
  %i.g = trunc i64 %i.f to i32
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @u_memchr_78(ptr noundef readonly %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 2 uses
  store i16 %1, ptr %i.a, align 2
  %i.b = icmp slt i32 %2, 1
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i16 %1, -2048
  %i.d = icmp eq i16 %i.c, -10240
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = call ptr @u_strFindFirst_78(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %i.a, i32 noundef 1)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.f = zext nneg i32 %2 to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.f
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.09 = phi ptr [ %0, %bb.d ], [ %i.j, %bb.f ]   ; 3 uses
  %i.h = load i16, ptr %.09, align 2
  %i.i = icmp eq i16 %i.h, %1
  br i1 %i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.09, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.g
  br i1 %.not, label %.loopexit, label %bb.e, !llvm.loop !10

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.a, %bb.c
  %.1 = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ null, %bb.f ], [ %.09, %bb.e ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @u_strstr_78(ptr noundef readonly captures(address, ret: address, provenance) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %u_strFindFirst_78.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %u_strFindFirst_78.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.d = load i16, ptr %1, align 2
  %.fr19 = freeze i16 %i.d                        ; 10 uses
  %i.e = icmp eq i16 %.fr19, 0
  br i1 %i.e, label %u_strFindFirst_78.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i16, ptr %i.c, align 2
  %.fr18 = freeze i16 %i.f                        ; 4 uses
  %i.g = icmp ne i16 %.fr18, 0
  %i.h = and i16 %.fr19, -2048
  %i.i = icmp eq i16 %i.h, -10240
  %or.cond121.i = or i1 %i.i, %i.g
  %i.j = load i16, ptr %0, align 2                ; 7 uses
  br i1 %or.cond121.i, label %.preheader151.i, label %.preheader154.i

.preheader154.i:                                  ; preds = %bb.d
  %i.k = icmp eq i16 %i.j, %.fr19
  br i1 %i.k, label %u_strFindFirst_78.exit, label %.lr.ph.i

.preheader151.i:                                  ; preds = %bb.d
  %.not117169.i = icmp eq i16 %i.j, 0
  br i1 %.not117169.i, label %u_strFindFirst_78.exit, label %.lr.ph171.preheader.i

.lr.ph171.preheader.i:                            ; preds = %.preheader151.i
  %i.l = icmp eq i16 %.fr18, 0
  %i.m = and i16 %.fr19, -1024                    ; 2 uses
  %.not = icmp eq i16 %i.m, -9216                 ; 2 uses
  br i1 %i.l, label %.lr.ph171.preheader.i.split.us, label %.lr.ph171.preheader.i.split

.lr.ph171.preheader.i.split.us:                   ; preds = %.lr.ph171.preheader.i
  br i1 %.not, label %.lr.ph171.i.us.preheader, label %.lr.ph171.i.us.us.preheader

.lr.ph171.i.us.us.preheader:                      ; preds = %.lr.ph171.preheader.i.split.us
  %.not140.i.us.us = icmp eq i16 %i.m, -10240
  br label %.lr.ph171.i.us.us

.lr.ph171.i.us.preheader:                         ; preds = %.lr.ph171.preheader.i.split.us
  %i.n = icmp eq i16 %i.j, %.fr19
  br i1 %i.n, label %u_strFindFirst_78.exit, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.peel

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.peel: ; preds = %.lr.ph171.i.us.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2              ; 2 uses
  %.not117.i.us.peel = icmp eq i16 %i.p, 0
  br i1 %.not117.i.us.peel, label %u_strFindFirst_78.exit, label %.lr.ph171.i.us

.lr.ph171.i.us.us:                                ; preds = %.lr.ph171.i.us.us.preheader, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us
  %i.q = phi i16 [ %i.w, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us ], [ %i.j, %.lr.ph171.i.us.us.preheader ]
  %.092170.i.us.us = phi ptr [ %i.r, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us ], [ %0, %.lr.ph171.i.us.us.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.092170.i.us.us, i64 2 ; 3 uses
  %i.s = icmp eq i16 %i.q, %.fr19
  br i1 %i.s, label %.preheader149.i.us.us, label %.lr.ph171.i.us.us._ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us_crit_edge

.lr.ph171.i.us.us._ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us_crit_edge: ; preds = %.lr.ph171.i.us.us
  %.pre = load i16, ptr %i.r, align 2
  br label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us

.preheader149.i.us.us:                            ; preds = %.lr.ph171.i.us.us
  br i1 %.not140.i.us.us, label %bb.e, label %u_strFindFirst_78.exit

bb.e:                                             ; preds = %.preheader149.i.us.us
  %i.t = load i16, ptr %i.r, align 2              ; 2 uses
  %i.u = and i16 %i.t, -1024
  %i.v = icmp eq i16 %i.u, -9216
  br i1 %i.v, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us, label %u_strFindFirst_78.exit

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us: ; preds = %.lr.ph171.i.us.us._ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us_crit_edge, %bb.e
  %i.w = phi i16 [ %.pre, %.lr.ph171.i.us.us._ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us_crit_edge ], [ %i.t, %bb.e ] ; 2 uses
  %.not117.i.us.us = icmp eq i16 %i.w, 0
  br i1 %.not117.i.us.us, label %u_strFindFirst_78.exit, label %.lr.ph171.i.us.us, !llvm.loop !8

.lr.ph171.i.us:                                   ; preds = %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.peel, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us
  %i.x = phi i16 [ %i.ae, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us ], [ %i.p, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.peel ]
  %.092170.i.us = phi ptr [ %i.y, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us ], [ %i.o, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.peel ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.092170.i.us, i64 2 ; 2 uses
  %i.z = icmp eq i16 %i.x, %.fr19
  br i1 %i.z, label %.preheader149.i.us, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us

.preheader149.i.us:                               ; preds = %.lr.ph171.i.us
  %i.aa = getelementptr inbounds i8, ptr %.092170.i.us, i64 -2
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = and i16 %i.ab, -1024
  %i.ad = icmp eq i16 %i.ac, -10240
  br i1 %i.ad, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us, label %u_strFindFirst_78.exit

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us: ; preds = %.preheader149.i.us, %.lr.ph171.i.us
  %i.ae = load i16, ptr %i.y, align 2             ; 2 uses
  %.not117.i.us = icmp eq i16 %i.ae, 0
  br i1 %.not117.i.us, label %u_strFindFirst_78.exit, label %.lr.ph171.i.us, !llvm.loop !17

.lr.ph171.preheader.i.split:                      ; preds = %.lr.ph171.preheader.i
  br i1 %.not, label %.lr.ph171.i, label %.lr.ph171.i.us5

.lr.ph171.i.us5:                                  ; preds = %.lr.ph171.preheader.i.split, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us9
  %i.af = phi i16 [ %i.as, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us9 ], [ %i.j, %.lr.ph171.preheader.i.split ]
  %.092170.i.us6 = phi ptr [ %i.ag, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us9 ], [ %0, %.lr.ph171.preheader.i.split ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.092170.i.us6, i64 2 ; 3 uses
  %i.ah = icmp eq i16 %i.af, %.fr19
  br i1 %i.ah, label %.lr.ph167.i.us, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us9

.lr.ph167.i.us:                                   ; preds = %.lr.ph171.i.us5, %bb.g
  %i.ai = phi i16 [ %i.an, %bb.g ], [ %.fr18, %.lr.ph171.i.us5 ] ; 2 uses
  %.096166.i.us = phi ptr [ %i.am, %bb.g ], [ %i.c, %.lr.ph171.i.us5 ]
  %.099165.i.us = phi ptr [ %i.al, %bb.g ], [ %i.ag, %.lr.ph171.i.us5 ] ; 2 uses
  %i.aj = load i16, ptr %.099165.i.us, align 2    ; 2 uses
  %i.ak = icmp eq i16 %i.aj, 0
  br i1 %i.ak, label %u_strFindFirst_78.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph167.i.us
  %.not118.i.us = icmp eq i16 %i.aj, %i.ai
  br i1 %.not118.i.us, label %bb.g, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us9

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.099165.i.us, i64 2 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.096166.i.us, i64 2 ; 2 uses
  %i.an = load i16, ptr %i.am, align 2            ; 2 uses
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %._crit_edge.i.loopexit.us, label %.lr.ph167.i.us, !llvm.loop !7

bb.h:                                             ; preds = %._crit_edge.i.loopexit.us
  %i.ap = load i16, ptr %i.al, align 2
  %i.aq = and i16 %i.ap, -1024
  %i.ar = icmp eq i16 %i.aq, -9216
  br i1 %i.ar, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us9, label %u_strFindFirst_78.exit

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us9: ; preds = %bb.f, %bb.h, %.lr.ph171.i.us5
  %i.as = load i16, ptr %i.ag, align 2            ; 2 uses
  %.not117.i.us10 = icmp eq i16 %i.as, 0
  br i1 %.not117.i.us10, label %u_strFindFirst_78.exit, label %.lr.ph171.i.us5, !llvm.loop !8

._crit_edge.i.loopexit.us:                        ; preds = %bb.g
  %i.at = and i16 %i.ai, -1024
  %.not140.i.us8 = icmp eq i16 %i.at, -10240
  br i1 %.not140.i.us8, label %bb.h, label %u_strFindFirst_78.exit

.lr.ph.i:                                         ; preds = %.preheader154.i, %bb.i
  %i.au = phi i16 [ %i.ax, %bb.i ], [ %i.j, %.preheader154.i ]
  %.05.i162.i = phi ptr [ %i.aw, %bb.i ], [ %0, %.preheader154.i ]
  %i.av = icmp eq i16 %i.au, 0
  br i1 %i.av, label %u_strFindFirst_78.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i162.i, i64 2 ; 3 uses
  %i.ax = load i16, ptr %i.aw, align 2            ; 2 uses
  %i.ay = icmp eq i16 %i.ax, %.fr19
  br i1 %i.ay, label %u_strFindFirst_78.exit, label %.lr.ph.i, !llvm.loop !5

.lr.ph171.i:                                      ; preds = %.lr.ph171.preheader.i.split, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i
  %i.az = phi i16 [ %i.br, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i ], [ %i.j, %.lr.ph171.preheader.i.split ]
end_hunk_0
begin_hunk_1_@u_strstr_78:bb.a
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.loopexit
  %i.bc = getelementptr inbounds i8, ptr %.092170.i, i64 -2
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = and i16 %i.bd, -1024
  %i.bf = icmp eq i16 %i.be, -10240
  br i1 %i.bf, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.loopexit
  %i.bg = and i16 %i.bk, -1024
  %.not140.i = icmp eq i16 %i.bg, -10240
  br i1 %.not140.i, label %bb.l, label %u_strFindFirst_78.exit

bb.l:                                             ; preds = %bb.k
  %i.bh = load i16, ptr %i.bn, align 2
  %i.bi = and i16 %i.bh, -1024
  %i.bj = icmp eq i16 %i.bi, -9216
  br i1 %i.bj, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i, label %u_strFindFirst_78.exit

.lr.ph167.i:                                      ; preds = %.lr.ph171.i, %bb.n
  %i.bk = phi i16 [ %i.bp, %bb.n ], [ %.fr18, %.lr.ph171.i ] ; 2 uses
  %.096166.i = phi ptr [ %i.bo, %bb.n ], [ %i.c, %.lr.ph171.i ]
  %.099165.i = phi ptr [ %i.bn, %bb.n ], [ %i.ba, %.lr.ph171.i ] ; 2 uses
  %i.bl = load i16, ptr %.099165.i, align 2       ; 2 uses
  %i.bm = icmp eq i16 %i.bl, 0
  br i1 %i.bm, label %u_strFindFirst_78.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph167.i
  %.not118.i = icmp eq i16 %i.bl, %i.bk
  br i1 %.not118.i, label %bb.n, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %.099165.i, i64 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.096166.i, i64 2 ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2            ; 2 uses
  %i.bq = icmp eq i16 %i.bp, 0
  br i1 %i.bq, label %._crit_edge.i.loopexit, label %.lr.ph167.i, !llvm.loop !7

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i: ; preds = %bb.m, %bb.l, %bb.j, %.lr.ph171.i
  %i.br = load i16, ptr %i.ba, align 2            ; 2 uses
  %.not117.i = icmp eq i16 %i.br, 0
  br i1 %.not117.i, label %u_strFindFirst_78.exit, label %.lr.ph171.i, !llvm.loop !8

u_strFindFirst_78.exit:                           ; preds = %.lr.ph.i, %bb.i, %._crit_edge.i.loopexit.us, %bb.h, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us9, %.lr.ph167.i.us, %bb.k, %bb.l, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i, %.lr.ph167.i, %.preheader149.i.us.us, %bb.e, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us, %.preheader149.i.us, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.peel, %.lr.ph171.i.us.preheader, %bb.a, %bb.b, %bb.c, %.preheader154.i, %.preheader151.i
  %.1.i = phi ptr [ %.092170.i, %bb.l ], [ %0, %bb.a ], [ null, %bb.b ], [ %0, %bb.c ], [ null, %.lr.ph167.i ], [ null, %.preheader151.i ], [ %0, %.preheader154.i ], [ %.092170.i.us, %.preheader149.i.us ], [ null, %.lr.ph167.i.us ], [ %.092170.i.us.us, %bb.e ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us9 ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.peel ], [ %0, %.lr.ph171.i.us.preheader ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us ], [ %.092170.i.us.us, %.preheader149.i.us.us ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i ], [ %.092170.i, %bb.k ], [ %.092170.i.us6, %bb.h ], [ %.092170.i.us6, %._crit_edge.i.loopexit.us ], [ %i.aw, %bb.i ], [ null, %.lr.ph.i ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @u_strchr32_78(ptr noundef readonly captures(address_is_null, ret: address, provenance) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i32 %1, 65536
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw i32 %1 to i16                  ; 9 uses
  %i.c = and i16 %i.b, -2048
  %i.d = icmp eq i16 %i.c, -10240
  br i1 %i.d, label %bb.c, label %.preheader12.i

.preheader12.i:                                   ; preds = %bb.b
  %i.e = load i16, ptr %0, align 2                ; 2 uses
  %i.f = icmp eq i16 %i.e, %i.b
  br i1 %i.f, label %u_strchr_78.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %u_strchr_78.exit, label %.preheader10.split.i

.preheader10.split.i:                             ; preds = %bb.c
  %i.h = load i16, ptr %0, align 2                ; 2 uses
  %.not114.i26.i = icmp eq i16 %i.h, 0
  br i1 %.not114.i26.i, label %u_strchr_78.exit, label %.lr.ph28.preheader.i

.lr.ph28.preheader.i:                             ; preds = %.preheader10.split.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 5 uses
  %i.j = icmp eq i16 %i.h, %i.b
  br i1 %i.j, label %.preheader.peel.i, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.peel.i

.preheader.peel.i:                                ; preds = %.lr.ph28.preheader.i
  %i.k = and i16 %i.b, -9216
  %.not.peel.i = icmp eq i16 %i.k, -10240
  br i1 %.not.peel.i, label %bb.d, label %u_strchr_78.exit

bb.d:                                             ; preds = %.preheader.peel.i
  %i.l = load i16, ptr %i.i, align 2              ; 2 uses
  %i.m = and i16 %i.l, -1024
  %i.n = icmp eq i16 %i.m, -9216
  br i1 %i.n, label %.lr.ph28.i.us25.preheader, label %u_strchr_78.exit

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.peel.i: ; preds = %.lr.ph28.preheader.i
  %.pr.i = load i16, ptr %i.i, align 2            ; 4 uses
  %.not114.i.peel.i = icmp eq i16 %.pr.i, 0
  br i1 %.not114.i.peel.i, label %u_strchr_78.exit, label %.lr.ph28.peel.next.i

.lr.ph28.peel.next.i:                             ; preds = %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.peel.i
  %.pre44 = and i16 %i.b, -9216
  switch i16 %.pre44, label %.lr.ph28.i [
    i16 -9216, label %.lr.ph28.i.us
    i16 -10240, label %.lr.ph28.i.us25.preheader
  ]

.lr.ph28.i.us25.preheader:                        ; preds = %bb.d, %.lr.ph28.peel.next.i
  %.ph = phi i16 [ %i.l, %bb.d ], [ %.pr.i, %.lr.ph28.peel.next.i ]
  br label %.lr.ph28.i.us25

.lr.ph28.i.us:                                    ; preds = %.lr.ph28.peel.next.i, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.threadthread-pre-split.i.us
  %i.o = phi i16 [ %.pr47.i.us, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.threadthread-pre-split.i.us ], [ %.pr.i, %.lr.ph28.peel.next.i ]
  %.193.i27.i.us = phi ptr [ %i.p, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.threadthread-pre-split.i.us ], [ %i.i, %.lr.ph28.peel.next.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.193.i27.i.us, i64 2 ; 2 uses
  %i.q = icmp eq i16 %i.o, %i.b
  br i1 %i.q, label %.preheader.i.us, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.threadthread-pre-split.i.us

.preheader.i.us:                                  ; preds = %.lr.ph28.i.us
  %i.r = getelementptr inbounds i8, ptr %.193.i27.i.us, i64 -2
  %i.s = load i16, ptr %i.r, align 2
  %i.t = and i16 %i.s, -1024
  %i.u = icmp eq i16 %i.t, -10240
  br i1 %i.u, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.threadthread-pre-split.i.us, label %u_strchr_78.exit

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.threadthread-pre-split.i.us: ; preds = %.preheader.i.us, %.lr.ph28.i.us
  %.pr47.i.us = load i16, ptr %i.p, align 2       ; 2 uses
  %.not114.i.i.us = icmp eq i16 %.pr47.i.us, 0
  br i1 %.not114.i.i.us, label %u_strchr_78.exit, label %.lr.ph28.i.us, !llvm.loop !15

.lr.ph28.i.us25:                                  ; preds = %.lr.ph28.i.us25.preheader, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us30
  %i.v = phi i16 [ %i.y, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us30 ], [ %.ph, %.lr.ph28.i.us25.preheader ]
  %.193.i27.i.us26 = phi ptr [ %i.w, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us30 ], [ %i.i, %.lr.ph28.i.us25.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.193.i27.i.us26, i64 2 ; 2 uses
  %i.x = icmp ne i16 %i.v, %i.b
  %i.y = load i16, ptr %i.w, align 2              ; 3 uses
  %i.z = and i16 %i.y, -1024
  %i.aa = icmp eq i16 %i.z, -9216
  %or.cond65 = select i1 %i.x, i1 true, i1 %i.aa
  br i1 %or.cond65, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us30, label %u_strchr_78.exit

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us30: ; preds = %.lr.ph28.i.us25
  %.not114.i.i.us31 = icmp eq i16 %i.y, 0
  br i1 %.not114.i.i.us31, label %u_strchr_78.exit, label %.lr.ph28.i.us25, !llvm.loop !15

.lr.ph28.i:                                       ; preds = %.lr.ph28.peel.next.i, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.threadthread-pre-split.i
  %i.ab = phi i16 [ %.pr47.i, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.threadthread-pre-split.i ], [ %.pr.i, %.lr.ph28.peel.next.i ]
  %.193.i27.i = phi ptr [ %i.ad, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.threadthread-pre-split.i ], [ %i.i, %.lr.ph28.peel.next.i ] ; 2 uses
  %i.ac = icmp eq i16 %i.ab, %i.b
  br i1 %i.ac, label %u_strchr_78.exit, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.threadthread-pre-split.i

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.threadthread-pre-split.i: ; preds = %.lr.ph28.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.193.i27.i, i64 2 ; 2 uses
  %.pr47.i = load i16, ptr %i.ad, align 2         ; 2 uses
  %.not114.i.i = icmp eq i16 %.pr47.i, 0
  br i1 %.not114.i.i, label %u_strchr_78.exit, label %.lr.ph28.i, !llvm.loop !15

.lr.ph.i:                                         ; preds = %.preheader12.i, %bb.e
  %i.ae = phi i16 [ %i.ah, %bb.e ], [ %i.e, %.preheader12.i ]
  %.0517.i = phi ptr [ %i.ag, %bb.e ], [ %0, %.preheader12.i ]
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %u_strchr_78.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0517.i, i64 2 ; 3 uses
  %i.ah = load i16, ptr %i.ag, align 2            ; 2 uses
  %i.ai = icmp eq i16 %i.ah, %i.b
  br i1 %i.ai, label %u_strchr_78.exit, label %.lr.ph.i, !llvm.loop !5

bb.f:                                             ; preds = %bb.a
  %i.aj = icmp ult i32 %1, 1114112
  br i1 %i.aj, label %bb.g, label %u_strchr_78.exit

bb.g:                                             ; preds = %bb.f
  %i.ak = lshr i32 %1, 10
  %i.al = add nuw nsw i32 %i.ak, 55232
  %i.am = and i32 %1, 1023
  %i.an = or disjoint i32 %i.am, 56320
  %i.ao = load i16, ptr %0, align 2               ; 2 uses
  %.not20 = icmp eq i16 %i.ao, 0
  br i1 %.not20, label %u_strchr_78.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %i.ap = phi i16 [ %.pre, %bb.h ], [ %i.ao, %bb.g ]
  %.01221 = phi ptr [ %i.aq, %bb.h ], [ %0, %bb.g ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.01221, i64 2 ; 2 uses
  %i.ar = zext i16 %i.ap to i32
  %i.as = icmp eq i32 %i.al, %i.ar
  %.pre = load i16, ptr %i.aq, align 2            ; 3 uses
  %i.at = zext i16 %.pre to i32
  %i.au = icmp eq i32 %i.an, %i.at
  %or.cond = select i1 %i.as, i1 %i.au, i1 false
  br i1 %or.cond, label %u_strchr_78.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %.not = icmp eq i16 %.pre, 0
  br i1 %.not, label %u_strchr_78.exit, label %.lr.ph, !llvm.loop !18

u_strchr_78.exit:                                 ; preds = %bb.h, %.lr.ph, %bb.e, %.lr.ph.i, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.threadthread-pre-split.i.us, %.preheader.i.us, %.lr.ph28.i, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.threadthread-pre-split.i, %.lr.ph28.i.us25, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us30, %bb.g, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.peel.i, %bb.d, %.preheader.peel.i, %.preheader10.split.i, %bb.c, %.preheader12.i, %bb.f
  %.1 = phi ptr [ null, %bb.f ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.peel.i ], [ null, %bb.g ], [ null, %.preheader10.split.i ], [ null, %bb.c ], [ %0, %.preheader12.i ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us30 ], [ %0, %.preheader.peel.i ], [ %0, %bb.d ], [ null, %.lr.ph.i ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.threadthread-pre-split.i ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.threadthread-pre-split.i.us ], [ %.193.i27.i.us26, %.lr.ph28.i.us25 ], [ %.193.i27.i, %.lr.ph28.i ], [ %.193.i27.i.us, %.preheader.i.us ], [ %i.ag, %bb.e ], [ %.01221, %.lr.ph ], [ null, %bb.h ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @u_memchr32_78(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = icmp ult i32 %1, 65536
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw i32 %1 to i16                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.c, ptr %i.a, align 2
  %i.d = icmp slt i32 %2, 1
  br i1 %i.d, label %u_memchr_78.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i16 %i.c, -2048
  %i.f = icmp eq i16 %i.e, -10240
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = call ptr @u_strFindFirst_78(ptr noundef readonly %0, i32 noundef %2, ptr noundef nonnull %i.a, i32 noundef 1), !inline_history !19
  br label %u_memchr_78.exit

bb.e:                                             ; preds = %bb.c
  %i.h = zext nneg i32 %2 to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.h
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.09.i = phi ptr [ %0, %bb.e ], [ %i.l, %bb.g ] ; 3 uses
  %i.j = load i16, ptr %.09.i, align 2
  %i.k = icmp eq i16 %i.j, %i.c
  br i1 %i.k, label %u_memchr_78.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i, i64 2 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.i
  br i1 %.not.i, label %u_memchr_78.exit, label %bb.f, !llvm.loop !10

u_memchr_78.exit:                                 ; preds = %bb.f, %bb.g, %bb.b, %bb.d
  %.1.i = phi ptr [ null, %bb.b ], [ %i.g, %bb.d ], [ %.09.i, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.h:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %2, 1
  %i.n = icmp ult i32 %1, 1114112
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.o = zext nneg i32 %2 to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -2
  %i.r = lshr i32 %1, 10
  %i.s = add nuw nsw i32 %i.r, 55232
  %i.t = and i32 %1, 1023
  %i.u = or disjoint i32 %i.t, 56320
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.017 = phi ptr [ %0, %bb.i ], [ %i.ac, %bb.l ] ; 4 uses
  %i.v = load i16, ptr %.017, align 2
  %i.w = zext i16 %i.v to i32
  %i.x = icmp eq i32 %i.s, %i.w
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %.017, i64 2
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = zext i16 %i.z to i32
  %i.ab = icmp eq i32 %i.u, %i.aa
  br i1 %i.ab, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %.017, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.q
  br i1 %.not, label %.loopexit, label %bb.j, !llvm.loop !20

.loopexit:                                        ; preds = %bb.k, %bb.l, %bb.h, %u_memchr_78.exit
  %.1 = phi ptr [ %.1.i, %u_memchr_78.exit ], [ null, %bb.h ], [ %.017, %bb.k ], [ null, %bb.l ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @u_strFindLast_78(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp slt i32 %3, -1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  %i.d = icmp slt i32 %1, -1
  %or.cond3 = or i1 %i.c, %i.d
  br i1 %or.cond3, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %3, 0
  br i1 %i.e, label %.preheader79, label %bb.d

.preheader79:                                     ; preds = %bb.c, %.preheader79
  %.0.i = phi ptr [ %i.g, %.preheader79 ], [ %2, %bb.c ] ; 3 uses
  %i.f = load i16, ptr %.0.i, align 2
  %.not.i = icmp eq i16 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  br i1 %.not.i, label %u_strlen_78.exit, label %.preheader79, !llvm.loop !9

u_strlen_78.exit:                                 ; preds = %.preheader79
  %i.h = ptrtoint ptr %.0.i to i64
  %i.i = ptrtoint ptr %2 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 1
  %i.l = trunc i64 %i.k to i32
  br label %bb.d

bb.d:                                             ; preds = %u_strlen_78.exit, %bb.c
  %.054 = phi i32 [ %i.l, %u_strlen_78.exit ], [ %3, %bb.c ] ; 4 uses
  %i.m = icmp eq i32 %.054, 0
  br i1 %i.m, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %.054 to i64
  %.idx = shl nsw i64 %i.n, 1
  %i.o = add nsw i64 %.idx, -2                    ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.o ; 2 uses
  %i.q = load i16, ptr %i.p, align 2              ; 6 uses
  %i.r = add nsw i32 %.054, -1                    ; 3 uses
  %i.s = icmp ne i32 %i.r, 0
  %i.t = and i16 %i.q, -2048
  %i.u = icmp eq i16 %i.t, -10240
  %or.cond63 = select i1 %i.s, i1 true, i1 %i.u
  %i.v = icmp slt i32 %1, 0                       ; 2 uses
  br i1 %or.cond63, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.v, label %.preheader75, label %bb.g

.preheader75:                                     ; preds = %bb.f, %.preheader75
  %.07.i = phi ptr [ %i.z, %.preheader75 ], [ %0, %bb.f ] ; 3 uses
  %.06.i = phi ptr [ %spec.select.i, %.preheader75 ], [ null, %bb.f ]
  %i.w = load i16, ptr %.07.i, align 2            ; 2 uses
  %i.x = icmp eq i16 %i.w, %i.q
  %spec.select.i = select i1 %i.x, ptr %.07.i, ptr %.06.i ; 2 uses
  %i.y = icmp eq i16 %i.w, 0
  %i.z = getelementptr inbounds nuw i8, ptr %.07.i, i64 2
  br i1 %i.y, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit, label %.preheader75, !llvm.loop !21

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp eq i32 %1, 0
  br i1 %i.aa, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = zext nneg i32 %1 to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ab
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.0.i65 = phi ptr [ %i.ac, %bb.h ], [ %i.ad, %bb.j ]
  %i.ad = getelementptr inbounds i8, ptr %.0.i65, i64 -2 ; 4 uses
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = icmp eq i16 %i.ae, %i.q
  br i1 %i.af, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i66 = icmp eq ptr %0, %i.ad
  br i1 %.not.i66, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit, label %bb.i, !llvm.loop !22

bb.k:                                             ; preds = %bb.e
  br i1 %i.v, label %.preheader74, label %bb.l

.preheader74:                                     ; preds = %bb.k, %.preheader74
  %.0.i67 = phi ptr [ %i.ah, %.preheader74 ], [ %0, %bb.k ] ; 3 uses
  %i.ag = load i16, ptr %.0.i67, align 2
  %.not.i68 = icmp eq i16 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i67, i64 2
  br i1 %.not.i68, label %u_strlen_78.exit69, label %.preheader74, !llvm.loop !9

u_strlen_78.exit69:                               ; preds = %.preheader74
  %i.ai = ptrtoint ptr %.0.i67 to i64
  %i.aj = ptrtoint ptr %0 to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = lshr exact i64 %i.ak, 1
  %i.am = trunc i64 %i.al to i32
  br label %bb.l

bb.l:                                             ; preds = %u_strlen_78.exit69, %bb.k
  %.053 = phi i32 [ %i.am, %u_strlen_78.exit69 ], [ %1, %bb.k ] ; 3 uses
  %.not.not = icmp slt i32 %.053, %.054
  br i1 %.not.not, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = sext i32 %.053 to i64
  %i.ao = getelementptr inbounds [2 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = sext i32 %i.r to i64
  %i.aq = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ap
  %.not81 = icmp eq i32 %i.r, %.053
  br i1 %.not81, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.ar = and i16 %i.q, -1024
  %i.as = icmp ne i16 %i.ar, -10240
  %i.at = icmp eq i64 %i.o, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread
  %.05282 = phi ptr [ %i.au, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread ], [ %i.ao, %.lr.ph.preheader ] ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %.05282, i64 -2 ; 5 uses
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = icmp eq i16 %i.av, %i.q
  br i1 %i.aw, label %.preheader.preheader, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread

.preheader.preheader:                             ; preds = %.lr.ph
  br i1 %i.at, label %.preheader._crit_edge, label %.lr.ph111

.preheader:                                       ; preds = %.lr.ph111
  %i.ax = icmp eq ptr %i.bj, %2
  br i1 %i.ax, label %.preheader._crit_edge, label %.lr.ph111, !llvm.loop !23

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %.lcssa = phi i16 [ %i.q, %.preheader.preheader ], [ %i.bi, %.preheader ]
  %.051.lcssa = phi ptr [ %i.au, %.preheader.preheader ], [ %i.bh, %.preheader ] ; 4 uses
  %i.ay = and i16 %.lcssa, -1024
  %i.az = icmp ne i16 %i.ay, -9216
  %.not.i70 = icmp eq ptr %0, %.051.lcssa
  %or.cond.i = or i1 %.not.i70, %i.az
  br i1 %or.cond.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader._crit_edge
  %i.ba = getelementptr inbounds i8, ptr %.051.lcssa, i64 -2
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = and i16 %i.bb, -1024
  %i.bd = icmp eq i16 %i.bc, -10240
  br i1 %i.bd, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n, %.preheader._crit_edge
  %.not10.i = icmp eq ptr %.05282, %i.ao
  %or.cond11.i = or i1 %.not10.i, %i.as
  br i1 %or.cond11.i, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load i16, ptr %.05282, align 2
  %i.bf = and i16 %i.be, -1024
  %i.bg = icmp eq i16 %i.bf, -9216
  br i1 %i.bg, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit

.lr.ph111:                                        ; preds = %.preheader.preheader, %.preheader
  %.050110 = phi ptr [ %i.bj, %.preheader ], [ %i.p, %.preheader.preheader ]
  %.051109 = phi ptr [ %i.bh, %.preheader ], [ %i.au, %.preheader.preheader ]
  %i.bh = getelementptr inbounds i8, ptr %.051109, i64 -2 ; 3 uses
  %i.bi = load i16, ptr %i.bh, align 2            ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.050110, i64 -2 ; 3 uses
  %i.bk = load i16, ptr %i.bj, align 2
  %.not60 = icmp eq i16 %i.bi, %i.bk
  br i1 %.not60, label %.preheader, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread, !llvm.loop !23

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread: ; preds = %.lr.ph111, %bb.p, %bb.n, %.lr.ph
  %.not = icmp eq ptr %i.aq, %i.au
  br i1 %.not, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit, label %.lr.ph, !llvm.loop !24

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit:       ; preds = %bb.j, %bb.i, %.preheader75, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread, %bb.o, %bb.p, %bb.m, %bb.g, %bb.l, %bb.d, %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.d ], [ %0, %bb.a ], [ null, %bb.b ], [ %spec.select.i, %.preheader75 ], [ null, %bb.l ], [ null, %bb.g ], [ null, %bb.m ], [ %.051.lcssa, %bb.p ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread ], [ %.051.lcssa, %bb.o ], [ null, %bb.j ], [ %i.ad, %bb.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @u_strrchr_78(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = and i16 %1, -2048
  %i.b = icmp eq i16 %i.a, -10240
  br i1 %i.b, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %u_strFindLast_78.exit, label %.preheader74.i

.preheader74.i:                                   ; preds = %bb.b, %.preheader74.i
  %.0.i67.i = phi ptr [ %i.e, %.preheader74.i ], [ %0, %bb.b ] ; 3 uses
  %i.d = load i16, ptr %.0.i67.i, align 2
  %.not.i68.i = icmp eq i16 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i67.i, i64 2
  br i1 %.not.i68.i, label %u_strlen_78.exit69.i, label %.preheader74.i, !llvm.loop !9

u_strlen_78.exit69.i:                             ; preds = %.preheader74.i
  %i.f = ptrtoint ptr %.0.i67.i to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = lshr exact i64 %i.h, 1
  %i.j = trunc i64 %i.i to i32
  %.not.not.i = icmp slt i32 %i.j, 1
  br i1 %.not.not.i, label %u_strFindLast_78.exit, label %bb.c

bb.c:                                             ; preds = %u_strlen_78.exit69.i
  %.idx = and i64 %i.h, 4294967294                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 3 uses
  %i.l = and i16 %1, -9216
  switch i16 %i.l, label %.lr.ph.i.us.us [
    i16 -10240, label %.lr.ph.i.us16.preheader
    i16 -9216, label %.lr.ph.i.us
  ]

.lr.ph.i.us.us:                                   ; preds = %bb.c, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us
  %.05282.i.us.us = phi ptr [ %i.m, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us ], [ %i.k, %bb.c ]
  %i.m = getelementptr inbounds i8, ptr %.05282.i.us.us, i64 -2 ; 4 uses
  %i.n = load i16, ptr %i.m, align 2
  %i.o = icmp eq i16 %i.n, %1
  br i1 %i.o, label %u_strFindLast_78.exit, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us: ; preds = %.lr.ph.i.us.us
  %.not.i.us.us = icmp eq ptr %0, %i.m
  br i1 %.not.i.us.us, label %u_strFindLast_78.exit, label %.lr.ph.i.us.us, !llvm.loop !24

.lr.ph.i.us:                                      ; preds = %bb.c, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us
  %.05282.i.us = phi ptr [ %i.p, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us ], [ %i.k, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.05282.i.us, i64 -2 ; 5 uses
  %i.q = load i16, ptr %i.p, align 2
  %i.r = icmp eq i16 %i.q, %1
  br i1 %i.r, label %.preheader.i.preheader.us, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us

bb.d:                                             ; preds = %.preheader.i.preheader.us
  %i.s = getelementptr inbounds i8, ptr %.05282.i.us, i64 -4
  %i.t = load i16, ptr %i.s, align 2
  %i.u = and i16 %i.t, -1024
  %i.v = icmp eq i16 %i.u, -10240
  br i1 %i.v, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us, label %u_strFindLast_78.exit

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us: ; preds = %bb.d, %.lr.ph.i.us
  %.not.i.us = icmp eq ptr %0, %i.p
  br i1 %.not.i.us, label %u_strFindLast_78.exit, label %.lr.ph.i.us, !llvm.loop !24

.preheader.i.preheader.us:                        ; preds = %.lr.ph.i.us
  %.not.i70.i.us = icmp eq ptr %0, %i.p
  br i1 %.not.i70.i.us, label %u_strFindLast_78.exit, label %bb.d

.lr.ph.i.us16.preheader:                          ; preds = %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 -2 ; 3 uses
  %i.x = load i16, ptr %i.w, align 2
  %i.y = icmp eq i16 %i.x, %1
  br i1 %i.y, label %u_strFindLast_78.exit, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18.peel

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18.peel: ; preds = %.lr.ph.i.us16.preheader
  %.not.i.us19.peel = icmp eq i64 %.idx, 2
  br i1 %.not.i.us19.peel, label %u_strFindLast_78.exit, label %.lr.ph.i.us16

.lr.ph.i.us16:                                    ; preds = %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18.peel, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18
  %.05282.i.us17 = phi ptr [ %i.z, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18 ], [ %i.w, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18.peel ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.05282.i.us17, i64 -2 ; 4 uses
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = icmp eq i16 %i.aa, %1
  br i1 %i.ab, label %bb.e, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18

bb.e:                                             ; preds = %.lr.ph.i.us16
  %i.ac = load i16, ptr %.05282.i.us17, align 2
  %i.ad = and i16 %i.ac, -1024
  %i.ae = icmp eq i16 %i.ad, -9216
  br i1 %i.ae, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18, label %u_strFindLast_78.exit

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18: ; preds = %bb.e, %.lr.ph.i.us16
  %.not.i.us19 = icmp eq ptr %0, %i.z
  br i1 %.not.i.us19, label %u_strFindLast_78.exit, label %.lr.ph.i.us16, !llvm.loop !25

.preheader:                                       ; preds = %bb.a, %.preheader
  %.07 = phi ptr [ %i.ai, %.preheader ], [ %0, %bb.a ] ; 3 uses
  %.06 = phi ptr [ %spec.select, %.preheader ], [ null, %bb.a ]
  %i.af = load i16, ptr %.07, align 2             ; 2 uses
  %i.ag = icmp eq i16 %i.af, %1
  %spec.select = select i1 %i.ag, ptr %.07, ptr %.06 ; 2 uses
  %i.ah = icmp eq i16 %i.af, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.07, i64 2
  br i1 %i.ah, label %u_strFindLast_78.exit, label %.preheader, !llvm.loop !21

u_strFindLast_78.exit:                            ; preds = %.preheader, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us, %.preheader.i.preheader.us, %bb.d, %bb.e, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us, %.lr.ph.i.us.us, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18.peel, %.lr.ph.i.us16.preheader, %u_strlen_78.exit69.i, %bb.b
  %.0 = phi ptr [ %i.z, %bb.e ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18.peel ], [ null, %u_strlen_78.exit69.i ], [ null, %bb.b ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us ], [ %i.w, %.lr.ph.i.us16.preheader ], [ %i.m, %.lr.ph.i.us.us ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18 ], [ %0, %.preheader.i.preheader.us ], [ %i.p, %bb.d ], [ %spec.select, %.preheader ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @u_memrchr_78(ptr noundef readonly %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 2 uses
  store i16 %1, ptr %i.a, align 2
  %i.b = icmp slt i32 %2, 1
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i16 %1, -2048
  %i.d = icmp eq i16 %i.c, -10240
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = call ptr @u_strFindLast_78(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %i.a, i32 noundef 1)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.f = zext nneg i32 %2 to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.f
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.f ]
  %i.h = getelementptr inbounds i8, ptr %.0, i64 -2 ; 4 uses
  %i.i = load i16, ptr %i.h, align 2
  %i.j = icmp eq i16 %i.i, %1
  br i1 %i.j, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not = icmp eq ptr %0, %i.h
  br i1 %.not, label %.loopexit, label %bb.e, !llvm.loop !22

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.a, %bb.c
  %.1 = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ null, %bb.f ], [ %i.h, %bb.e ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @u_strrstr_78(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @u_strFindLast_78(ptr noundef %0, i32 noundef -1, ptr noundef %1, i32 noundef -1)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @u_strrchr32_78(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i32 %1, 65536
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw i32 %1 to i16                  ; 7 uses
  %i.c = and i16 %i.b, -2048
  %i.d = icmp eq i16 %i.c, -10240
  br i1 %i.d, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %u_strrchr_78.exit, label %.preheader74.i.i

.preheader74.i.i:                                 ; preds = %bb.c, %.preheader74.i.i
  %.0.i67.i.i = phi ptr [ %i.g, %.preheader74.i.i ], [ %0, %bb.c ] ; 3 uses
  %i.f = load i16, ptr %.0.i67.i.i, align 2
  %.not.i68.i.i = icmp eq i16 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i67.i.i, i64 2
  br i1 %.not.i68.i.i, label %u_strlen_78.exit69.i.i, label %.preheader74.i.i, !llvm.loop !9

u_strlen_78.exit69.i.i:                           ; preds = %.preheader74.i.i
  %i.h = ptrtoint ptr %.0.i67.i.i to i64
  %i.i = ptrtoint ptr %0 to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = lshr exact i64 %i.j, 1
  %i.l = trunc i64 %i.k to i32
  %.not.not.i.i = icmp slt i32 %i.l, 1
  br i1 %.not.not.i.i, label %u_strrchr_78.exit, label %bb.d

bb.d:                                             ; preds = %u_strlen_78.exit69.i.i
  %.idx.i = and i64 %i.j, 4294967294              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i ; 3 uses
  %i.n = and i16 %i.b, -9216
  switch i16 %i.n, label %.lr.ph.i.us.us.i [
    i16 -10240, label %.lr.ph.i.us16.preheader.i
    i16 -9216, label %.lr.ph.i.us.i
  ]

.lr.ph.i.us.us.i:                                 ; preds = %bb.d, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us.i
  %.05282.i.us.us.i = phi ptr [ %i.o, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us.i ], [ %i.m, %bb.d ]
  %i.o = getelementptr inbounds i8, ptr %.05282.i.us.us.i, i64 -2 ; 4 uses
  %i.p = load i16, ptr %i.o, align 2
  %i.q = icmp eq i16 %i.p, %i.b
  br i1 %i.q, label %u_strrchr_78.exit, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us.i

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us.i: ; preds = %.lr.ph.i.us.us.i
  %.not.i.us.us.i = icmp eq ptr %0, %i.o
  br i1 %.not.i.us.us.i, label %u_strrchr_78.exit, label %.lr.ph.i.us.us.i, !llvm.loop !24

.lr.ph.i.us.i:                                    ; preds = %bb.d, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.i
  %.05282.i.us.i = phi ptr [ %i.r, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.i ], [ %i.m, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.05282.i.us.i, i64 -2 ; 5 uses
  %i.s = load i16, ptr %i.r, align 2
  %i.t = icmp eq i16 %i.s, %i.b
  br i1 %i.t, label %.preheader.i.preheader.us.i, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.i

bb.e:                                             ; preds = %.preheader.i.preheader.us.i
  %i.u = getelementptr inbounds i8, ptr %.05282.i.us.i, i64 -4
  %i.v = load i16, ptr %i.u, align 2
  %i.w = and i16 %i.v, -1024
  %i.x = icmp eq i16 %i.w, -10240
  br i1 %i.x, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.i, label %u_strrchr_78.exit

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.i: ; preds = %bb.e, %.lr.ph.i.us.i
  %.not.i.us.i = icmp eq ptr %0, %i.r
  br i1 %.not.i.us.i, label %u_strrchr_78.exit, label %.lr.ph.i.us.i, !llvm.loop !24

.preheader.i.preheader.us.i:                      ; preds = %.lr.ph.i.us.i
  %.not.i70.i.us.i = icmp eq ptr %0, %i.r
  br i1 %.not.i70.i.us.i, label %u_strrchr_78.exit, label %bb.e

.lr.ph.i.us16.preheader.i:                        ; preds = %bb.d
  %i.y = getelementptr inbounds i8, ptr %i.m, i64 -2 ; 3 uses
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = icmp eq i16 %i.z, %i.b
  br i1 %i.aa, label %u_strrchr_78.exit, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18.peel.i

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18.peel.i: ; preds = %.lr.ph.i.us16.preheader.i
  %.not.i.us19.peel.i = icmp eq i64 %.idx.i, 2
  br i1 %.not.i.us19.peel.i, label %u_strrchr_78.exit, label %.lr.ph.i.us16.i

.lr.ph.i.us16.i:                                  ; preds = %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18.peel.i, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18.i
  %.05282.i.us17.i = phi ptr [ %i.ab, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18.i ], [ %i.y, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18.peel.i ] ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.05282.i.us17.i, i64 -2 ; 4 uses
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = icmp eq i16 %i.ac, %i.b
  br i1 %i.ad, label %bb.f, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18.i

bb.f:                                             ; preds = %.lr.ph.i.us16.i
  %i.ae = load i16, ptr %.05282.i.us17.i, align 2
  %i.af = and i16 %i.ae, -1024
  %i.ag = icmp eq i16 %i.af, -9216
  br i1 %i.ag, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18.i, label %u_strrchr_78.exit

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18.i: ; preds = %bb.f, %.lr.ph.i.us16.i
  %.not.i.us19.i = icmp eq ptr %0, %i.ab
  br i1 %.not.i.us19.i, label %u_strrchr_78.exit, label %.lr.ph.i.us16.i, !llvm.loop !25

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.07.i = phi ptr [ %i.ak, %.preheader.i ], [ %0, %bb.b ] ; 3 uses
  %.06.i = phi ptr [ %spec.select.i, %.preheader.i ], [ null, %bb.b ]
  %i.ah = load i16, ptr %.07.i, align 2           ; 2 uses
  %i.ai = icmp eq i16 %i.ah, %i.b
  %spec.select.i = select i1 %i.ai, ptr %.07.i, ptr %.06.i ; 2 uses
  %i.aj = icmp eq i16 %i.ah, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i, i64 2
  br i1 %i.aj, label %u_strrchr_78.exit, label %.preheader.i, !llvm.loop !21

bb.g:                                             ; preds = %bb.a
  %i.al = icmp ult i32 %1, 1114112
  br i1 %i.al, label %bb.h, label %u_strrchr_78.exit

bb.h:                                             ; preds = %bb.g
  %i.am = lshr i32 %1, 10
  %i.an = add nuw nsw i32 %i.am, 55232
  %i.ao = and i32 %1, 1023
  %i.ap = or disjoint i32 %i.ao, 56320
  %i.aq = load i16, ptr %0, align 2               ; 2 uses
  %.not24 = icmp eq i16 %i.aq, 0
  br i1 %.not24, label %u_strrchr_78.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %i.ar = phi i16 [ %.pre, %.lr.ph ], [ %i.aq, %bb.h ]
  %.01326 = phi ptr [ %i.as, %.lr.ph ], [ %0, %bb.h ] ; 2 uses
  %.01425 = phi ptr [ %.1, %.lr.ph ], [ null, %bb.h ]
  %i.as = getelementptr inbounds nuw i8, ptr %.01326, i64 2 ; 2 uses
  %i.at = zext i16 %i.ar to i32
  %i.au = icmp eq i32 %i.an, %i.at
  %.pre = load i16, ptr %i.as, align 2            ; 3 uses
  %i.av = zext i16 %.pre to i32
  %i.aw = icmp eq i32 %i.ap, %i.av
  %i.ax = select i1 %i.au, i1 %i.aw, i1 false
  %.1 = select i1 %i.ax, ptr %.01326, ptr %.01425 ; 2 uses
  %.not = icmp eq i16 %.pre, 0
  br i1 %.not, label %u_strrchr_78.exit, label %.lr.ph, !llvm.loop !26

u_strrchr_78.exit:                                ; preds = %.lr.ph, %.preheader.i, %.preheader.i.preheader.us.i, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.i, %bb.e, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18.i, %bb.f, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us.i, %.lr.ph.i.us.us.i, %bb.h, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18.peel.i, %.lr.ph.i.us16.preheader.i, %u_strlen_78.exit69.i.i, %bb.c, %bb.g
  %.0 = phi ptr [ null, %bb.g ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.i ], [ %i.ab, %bb.f ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18.peel.i ], [ null, %u_strlen_78.exit69.i.i ], [ null, %bb.c ], [ %spec.select.i, %.preheader.i ], [ null, %bb.h ], [ %i.y, %.lr.ph.i.us16.preheader.i ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us.i ], [ %i.o, %.lr.ph.i.us.us.i ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us18.i ], [ %i.r, %bb.e ], [ %0, %.preheader.i.preheader.us.i ], [ %.1, %.lr.ph ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @u_memrchr32_78(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = icmp ult i32 %1, 65536
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw i32 %1 to i16                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.c, ptr %i.a, align 2
  %i.d = icmp slt i32 %2, 1
  br i1 %i.d, label %u_memrchr_78.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i16 %i.c, -2048
  %i.f = icmp eq i16 %i.e, -10240
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = call ptr @u_strFindLast_78(ptr noundef readonly %0, i32 noundef %2, ptr noundef nonnull %i.a, i32 noundef 1), !inline_history !27
  br label %u_memrchr_78.exit

bb.e:                                             ; preds = %bb.c
  %i.h = zext nneg i32 %2 to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.h
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.0.i = phi ptr [ %i.i, %bb.e ], [ %i.j, %bb.g ]
  %i.j = getelementptr inbounds i8, ptr %.0.i, i64 -2 ; 4 uses
  %i.k = load i16, ptr %i.j, align 2
  %i.l = icmp eq i16 %i.k, %i.c
  br i1 %i.l, label %u_memrchr_78.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr %0, %i.j
  br i1 %.not.i, label %u_memrchr_78.exit, label %bb.f, !llvm.loop !22

u_memrchr_78.exit:                                ; preds = %bb.f, %bb.g, %bb.b, %bb.d
  %.1.i = phi ptr [ null, %bb.b ], [ %i.g, %bb.d ], [ %i.j, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.h:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %2, 1
  %i.n = icmp ult i32 %1, 1114112
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.o = zext nneg i32 %2 to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -2
  %i.r = lshr i32 %1, 10
  %i.s = add nuw nsw i32 %i.r, 55232
  %i.t = and i32 %1, 1023
  %i.u = or disjoint i32 %i.t, 56320
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.017 = phi ptr [ %i.q, %bb.i ], [ %i.ac, %bb.l ] ; 4 uses
  %i.v = load i16, ptr %.017, align 2
  %i.w = zext i16 %i.v to i32
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds i8, ptr %.017, i64 -2
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = zext i16 %i.z to i32
  %i.ab = icmp eq i32 %i.s, %i.aa
  br i1 %i.ab, label %.loopexit.loopexit.split.loop.exit, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ac = getelementptr inbounds i8, ptr %.017, i64 -2 ; 2 uses
  %.not = icmp eq ptr %0, %i.ac
  br i1 %.not, label %.loopexit, label %bb.j, !llvm.loop !28

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.k
  %i.ad = getelementptr inbounds i8, ptr %.017, i64 -2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.loopexit.loopexit.split.loop.exit, %bb.h, %u_memrchr_78.exit
  %.1 = phi ptr [ %.1.i, %u_memrchr_78.exit ], [ null, %bb.h ], [ %i.ad, %.loopexit.loopexit.split.loop.exit ], [ null, %bb.l ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @u_strpbrk_78(ptr noundef readonly captures(ret: address, provenance) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL13_matchFromSetPKDsS0_a(ptr noundef %0, ptr noundef %1, i8 noundef signext 1) ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.c
  %.0 = select i1 %i.b, ptr %i.d, ptr null
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @_ZL13_matchFromSetPKDsS0_a(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i8 noundef signext range(i8 0, 2) %2) unnamed_addr #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv152 = phi i32 [ %indvars.iv.next153, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.b = load i16, ptr %i.a, align 2              ; 2 uses
  %.not = icmp eq i16 %i.b, 0
  %i.c = and i16 %i.b, -2048
  %.not87 = icmp eq i16 %i.c, -10240
  %or.cond = or i1 %.not, %.not87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next153 = add nuw i32 %indvars.iv152, 1
  br i1 %or.cond, label %.critedge, label %bb.b, !llvm.loop !29

.critedge:                                        ; preds = %bb.b, %.critedge
  %indvars.iv154 = phi i32 [ %indvars.iv.next155, %.critedge ], [ %indvars.iv152, %bb.b ] ; 2 uses
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %.critedge ], [ %indvars.iv, %bb.b ] ; 4 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv146
  %i.e = load i16, ptr %i.d, align 2
  %.not88 = icmp eq i16 %i.e, 0
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  %indvars.iv.next155 = add nuw i32 %indvars.iv154, 1
  br i1 %.not88, label %.preheader105, label %.critedge, !llvm.loop !30

.preheader105:                                    ; preds = %.critedge
  %i.f = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv146 to i32  ; 4 uses
  %i.h = load i16, ptr %0, align 2                ; 4 uses
  %.not89116 = icmp eq i16 %i.h, 0
  br i1 %.not89116, label %._crit_edge, label %.lr.ph118

.lr.ph118:                                        ; preds = %.preheader105
  %i.i = zext i16 %i.h to i32                     ; 2 uses
  %.not90 = icmp eq i8 %2, 0
  %.not125 = icmp eq i64 %indvars.iv146, 0        ; 2 uses
  %wide.trip.count172 = zext i32 %indvars.iv154 to i64 ; 2 uses
  br i1 %.not90, label %.lr.ph118.split.us, label %.lr.ph118.split

.lr.ph118.split.us:                               ; preds = %.lr.ph118, %.loopexit.us
  %i.j = phi i32 [ %i.az, %.loopexit.us ], [ %i.i, %.lr.ph118 ] ; 5 uses
  %i.k = phi i16 [ %i.ay, %.loopexit.us ], [ %i.h, %.lr.ph118 ]
  %.078117.us = phi i32 [ %.280.us, %.loopexit.us ], [ 0, %.lr.ph118 ] ; 4 uses
  %i.l = add nsw i32 %.078117.us, 1               ; 4 uses
  %i.m = and i32 %i.j, 63488
  %i.n = icmp eq i32 %i.m, 55296
  br i1 %i.n, label %bb.d, label %.preheader99.us

bb.c:                                             ; preds = %.lr.ph114.us
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next169, %wide.trip.count172
  br i1 %exitcond173.not, label %.loopexit100, label %.lr.ph114.us, !llvm.loop !31

.lr.ph114.us:                                     ; preds = %.preheader99.us, %bb.c
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %bb.c ], [ 0, %.preheader99.us ] ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv168
  %i.p = load i16, ptr %i.o, align 2
  %i.q = icmp eq i16 %i.k, %i.p
  br i1 %i.q, label %.loopexit.us, label %bb.c

bb.d:                                             ; preds = %.lr.ph118.split.us
  %i.r = and i32 %i.j, 1024
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %.preheader.us

bb.e:                                             ; preds = %bb.d
  %i.t = sext i32 %i.l to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %0, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2
  %i.w = zext i16 %i.v to i32                     ; 2 uses
  %i.x = and i32 %i.w, 64512
  %i.y = icmp eq i32 %i.x, 56320
  br i1 %i.y, label %bb.f, label %.preheader.us

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %.078117.us, 2
  %i.aa = shl nuw nsw i32 %i.j, 10
  %i.ab = add nsw i32 %i.aa, -56613888
  %i.ac = add nuw nsw i32 %i.ab, %i.w
  br label %.preheader.us

.preheader.us:                                    ; preds = %bb.f, %bb.e, %bb.d
  %.179.us = phi i32 [ %i.z, %bb.f ], [ %i.l, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %.073.us = phi i32 [ %i.ac, %bb.f ], [ %i.j, %bb.e ], [ %i.j, %bb.d ] ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader.us, %bb.k
  %.5.us = phi i32 [ %.7.us, %bb.k ], [ %i.f, %.preheader.us ] ; 4 uses
  %i.ad = icmp slt i32 %.5.us, %i.g
  br i1 %i.ad, label %bb.h, label %.split.us

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %.5.us, 1                   ; 4 uses
  %i.af = sext i32 %.5.us to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %1, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = zext i16 %i.ah to i32                   ; 4 uses
  %i.aj = and i32 %i.ai, 64512
  %i.ak = icmp ne i32 %i.aj, 55296
  %.not92.us = icmp eq i32 %i.ae, %i.g
end_hunk_1
begin_hunk_2_@uprv_strCompare_78:bb.a
  %i.ba = icmp ne i8 %5, 0
  %or.cond6 = and i1 %i.ba, %or.cond4
  br i1 %or.cond6, label %bb.n, label %bb.z

bb.n:                                             ; preds = %.loopexit
  %i.bb = icmp samesign ult i16 %.293, -9216
  br i1 %i.bb, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %.4106, i64 2 ; 2 uses
  %.not134 = icmp eq ptr %i.bc, %.299
  br i1 %.not134, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = and i16 %i.bd, -1024
  %i.bf = icmp eq i16 %i.be, -9216
  br i1 %i.bf, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bg = and i16 %.293, -1024
  %i.bh = icmp ne i16 %i.bg, -9216
  %.not135 = icmp eq ptr %0, %.4106
  %or.cond = or i1 %.not135, %i.bh
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds i8, ptr %.4106, i64 -2
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = and i16 %i.bj, -1024
  %i.bl = icmp eq i16 %i.bk, -10240
  br i1 %i.bl, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bm = add nsw i16 %.293, -10240
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.r, %bb.s
  %.394 = phi i16 [ %.293, %bb.p ], [ %.293, %bb.r ], [ %i.bm, %bb.s ] ; 3 uses
  %i.bn = icmp samesign ult i16 %.2, -9216
  br i1 %i.bn, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %.4112, i64 2 ; 2 uses
  %.not136 = icmp eq ptr %i.bo, %.196
  br i1 %.not136, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = and i16 %i.bp, -1024
  %i.br = icmp eq i16 %i.bq, -9216
  br i1 %i.br, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.bs = and i16 %.2, -1024
  %i.bt = icmp ne i16 %i.bs, -9216
  %.not137 = icmp eq ptr %2, %.4112
  %or.cond138 = or i1 %i.bt, %.not137
  br i1 %or.cond138, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds i8, ptr %.4112, i64 -2
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = and i16 %i.bv, -1024
  %i.bx = icmp eq i16 %i.bw, -10240
  br i1 %i.bx, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.by = add nsw i16 %.2, -10240
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.v, %.loopexit
  %.4 = phi i16 [ %.394, %bb.v ], [ %.394, %bb.x ], [ %.394, %bb.y ], [ %.293, %.loopexit ]
  %.3 = phi i16 [ %.2, %bb.v ], [ %.2, %bb.x ], [ %i.by, %bb.y ], [ %.2, %.loopexit ]
  %i.bz = zext i16 %.4 to i32
  %i.ca = zext i16 %.3 to i32
  %i.cb = sub nsw i32 %i.bz, %i.ca
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.g, %bb.l, %bb.f, %bb.k, %bb.e, %bb.b, %bb.z
  %.1101 = phi i32 [ %.0, %bb.k ], [ %i.cb, %bb.z ], [ 0, %bb.b ], [ %.0, %bb.l ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %.lr.ph ]
  ret i32 %.1101
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @u_strCompareIter_78(ptr noundef %0, ptr noundef %1, i8 noundef signext %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %0, %1
  %or.cond49 = or i1 %i.c, %or.cond
  br i1 %or.cond49, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.l = load ptr, ptr %i.j, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull %0) #13 ; 9 uses
  %i.n = load ptr, ptr %i.k, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull %1) #13 ; 8 uses
  %.not = icmp eq i32 %i.m, %i.o
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i32 %i.m, -1
  br i1 %i.p, label %.loopexit, label %bb.c, !llvm.loop !44

bb.e:                                             ; preds = %bb.c
  %i.q = icmp sgt i32 %i.m, 55295
  %i.r = icmp sgt i32 %i.o, 55295
  %or.cond3 = and i1 %i.q, %i.r
  %i.s = icmp ne i8 %2, 0
  %or.cond5 = and i1 %i.s, %or.cond3
  br i1 %or.cond5, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.t = icmp samesign ult i32 %i.m, 56320
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i32 %i.v(ptr noundef nonnull %0) #13
  %i.x = and i32 %i.w, -1024
  %i.y = icmp eq i32 %i.x, 56320
  br i1 %i.y, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = and i32 %i.m, 2147482624
  %i.aa = icmp eq i32 %i.z, 56320
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef i32 %i.ac(ptr noundef nonnull %0) #13 ; 0 uses
  %i.ae = load ptr, ptr %i.ab, align 8
  %i.af = tail call noundef i32 %i.ae(ptr noundef nonnull %0) #13
  %i.ag = and i32 %i.af, -1024
  %i.ah = icmp eq i32 %i.ag, 55296
  br i1 %i.ah, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = add nsw i32 %i.m, -10240
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.j
  %.043 = phi i32 [ %i.m, %bb.g ], [ %i.m, %bb.i ], [ %i.ai, %bb.j ] ; 3 uses
  %i.aj = icmp samesign ult i32 %i.o, 56320
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i32 %i.al(ptr noundef nonnull %1) #13
  %i.an = and i32 %i.am, -1024
  %i.ao = icmp eq i32 %i.an, 56320
  br i1 %i.ao, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ap = and i32 %i.o, 2147482624
  %i.aq = icmp eq i32 %i.ap, 56320
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef i32 %i.as(ptr noundef nonnull %1) #13 ; 0 uses
  %i.au = load ptr, ptr %i.ar, align 8
  %i.av = tail call noundef i32 %i.au(ptr noundef nonnull %1) #13
  %i.aw = and i32 %i.av, -1024
  %i.ax = icmp eq i32 %i.aw, 55296
  br i1 %i.ax, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ay = add nsw i32 %i.o, -10240
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.e
  %.1 = phi i32 [ %.043, %bb.l ], [ %.043, %bb.n ], [ %.043, %bb.o ], [ %i.m, %bb.e ]
  %.0 = phi i32 [ %i.o, %bb.l ], [ %i.o, %bb.n ], [ %i.ay, %bb.o ], [ %i.o, %bb.e ]
  %i.az = sub nsw i32 %.1, %.0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.p
  %.044 = phi i32 [ %i.az, %bb.p ], [ 0, %bb.a ], [ 0, %bb.d ]
  ret i32 %.044
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -65535, 65536) i32 @u_strCompare_78(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3, i8 noundef signext %4) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %1, -1
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  %i.d = icmp slt i32 %3, -1
  %or.cond5 = or i1 %or.cond3, %i.d
  br i1 %or.cond5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @uprv_strCompare_78(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, i8 noundef signext 0, i8 noundef signext %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -65535, 65536) i32 @u_strcmpCodePointOrder_78(ptr noundef readonly captures(address) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %uprv_strCompare_78.exit, label %.preheader145.i

.preheader145.i:                                  ; preds = %bb.a
  %i.b = load i16, ptr %0, align 2                ; 3 uses
  %i.c = load i16, ptr %1, align 2                ; 2 uses
  %.not133160.i = icmp eq i16 %i.b, %i.c
  br i1 %.not133160.i, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader145.i, %bb.b
  %i.d = phi i16 [ %i.h, %bb.b ], [ %i.b, %.preheader145.i ]
  %.0102162.i = phi ptr [ %i.f, %bb.b ], [ %0, %.preheader145.i ]
  %.0108161.i = phi ptr [ %i.g, %bb.b ], [ %1, %.preheader145.i ]
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %uprv_strCompare_78.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.0102162.i, i64 2 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0108161.i, i64 2 ; 3 uses
  %i.h = load i16, ptr %i.f, align 2              ; 3 uses
  %i.i = load i16, ptr %i.g, align 2              ; 2 uses
  %.not133.i = icmp eq i16 %i.h, %i.i
  br i1 %.not133.i, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !41

.loopexit.i:                                      ; preds = %bb.b, %.preheader145.i
  %.4112.i = phi ptr [ %1, %.preheader145.i ], [ %i.g, %bb.b ] ; 3 uses
  %.4106.i = phi ptr [ %0, %.preheader145.i ], [ %i.f, %bb.b ] ; 3 uses
  %.293.i = phi i16 [ %i.b, %.preheader145.i ], [ %i.h, %bb.b ] ; 7 uses
  %.2.i = phi i16 [ %i.c, %.preheader145.i ], [ %i.i, %bb.b ] ; 7 uses
  %i.j = icmp ugt i16 %.293.i, -10241
  %i.k = icmp ugt i16 %.2.i, -10241
  %or.cond4.i = and i1 %i.j, %i.k
  br i1 %or.cond4.i, label %bb.c, label %bb.m

bb.c:                                             ; preds = %.loopexit.i
  %i.l = icmp samesign ult i16 %.293.i, -9216
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.4106.i, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = and i16 %i.n, -1024
  %i.p = icmp eq i16 %i.o, -9216
  br i1 %i.p, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = and i16 %.293.i, -1024
  %i.r = icmp ne i16 %i.q, -9216
  %.not135.i = icmp eq ptr %0, %.4106.i
  %or.cond.i = or i1 %.not135.i, %i.r
  br i1 %or.cond.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds i8, ptr %.4106.i, i64 -2
  %i.t = load i16, ptr %i.s, align 2
  %i.u = and i16 %i.t, -1024
  %i.v = icmp eq i16 %i.u, -10240
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = add nsw i16 %.293.i, -10240
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.394.i = phi i16 [ %.293.i, %bb.d ], [ %.293.i, %bb.f ], [ %i.w, %bb.g ] ; 3 uses
  %i.x = icmp samesign ult i16 %.2.i, -9216
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.4112.i, i64 2
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = and i16 %i.z, -1024
  %i.ab = icmp eq i16 %i.aa, -9216
  br i1 %i.ab, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = and i16 %.2.i, -1024
  %i.ad = icmp ne i16 %i.ac, -9216
  %.not137.i = icmp eq ptr %1, %.4112.i
  %or.cond138.i = or i1 %.not137.i, %i.ad
  br i1 %or.cond138.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds i8, ptr %.4112.i, i64 -2
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = and i16 %i.af, -1024
  %i.ah = icmp eq i16 %i.ag, -10240
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = add nsw i16 %.2.i, -10240
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i, %.loopexit.i
  %.4.i = phi i16 [ %.394.i, %bb.i ], [ %.394.i, %bb.k ], [ %.394.i, %bb.l ], [ %.293.i, %.loopexit.i ]
  %.3.i = phi i16 [ %.2.i, %bb.i ], [ %.2.i, %bb.k ], [ %i.ai, %bb.l ], [ %.2.i, %.loopexit.i ]
  %i.aj = zext i16 %.4.i to i32
  %i.ak = zext i16 %.3.i to i32
  %i.al = sub nsw i32 %i.aj, %i.ak
  br label %uprv_strCompare_78.exit

uprv_strCompare_78.exit:                          ; preds = %.lr.ph.i, %bb.a, %bb.m
  %.1101.i = phi i32 [ 0, %bb.a ], [ %i.al, %bb.m ], [ 0, %.lr.ph.i ]
  ret i32 %.1101.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -65535, 65536) i32 @u_strncmp_78(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.b = load i16, ptr %0, align 2                ; 2 uses
  %i.c = zext i16 %i.b to i32
  %i.d = load i16, ptr %1, align 2
  %i.e = zext i16 %i.d to i32
  %i.f = sub nsw i32 %i.c, %i.e                   ; 2 uses
  %.not14 = icmp ne i32 %i.f, 0
  %i.g = icmp eq i16 %i.b, 0
  %or.cond15 = or i1 %i.g, %.not14
  br i1 %or.cond15, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.h = add nsw i32 %2, -1                       ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph25

.lr.ph:                                           ; preds = %.lr.ph25
  %i.j = add nsw i32 %i.l, -1                     ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %.lr.ph25, !llvm.loop !45

.lr.ph25:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.l = phi i32 [ %i.j, %.lr.ph ], [ %i.h, %.lr.ph.preheader ]
  %.0111624 = phi ptr [ %i.m, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %.0101723 = phi ptr [ %i.n, %.lr.ph ], [ %1, %.lr.ph.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0111624, i64 2 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0101723, i64 2 ; 2 uses
  %i.o = load i16, ptr %i.m, align 2              ; 2 uses
  %i.p = zext i16 %i.o to i32
  %i.q = load i16, ptr %i.n, align 2
  %i.r = zext i16 %i.q to i32
  %i.s = sub nsw i32 %i.p, %i.r                   ; 2 uses
  %.not = icmp ne i32 %i.s, 0
  %i.t = icmp eq i16 %i.o, 0
  %or.cond = or i1 %i.t, %.not
  br i1 %or.cond, label %..loopexit.loopexit_crit_edge, label %.lr.ph, !llvm.loop !45

..loopexit.loopexit_crit_edge:                    ; preds = %.lr.ph25
  br label %.loopexit, !llvm.loop !45

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %..loopexit.loopexit_crit_edge, %.preheader, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.f, %.preheader ], [ %i.s, %..loopexit.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -65535, 65536) i32 @u_strncmpCodePointOrder_78(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @uprv_strCompare_78(ptr noundef %0, i32 noundef %2, ptr noundef %1, i32 noundef %2, i8 noundef signext 1, i8 noundef signext 1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @u_strcpy_78(ptr noundef returned writeonly captures(ret: address, provenance) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.04 = phi ptr [ %1, %bb.a ], [ %i.a, %bb.b ]   ; 2 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.c, %bb.b ]    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.04, i64 2
  %i.b = load i16, ptr %.04, align 2              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i16 %i.b, ptr %.0, align 2
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !46

bb.c:                                             ; preds = %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @u_strncpy_78(ptr noundef returned writeonly captures(ret: address, provenance) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.058 = phi i32 [ %i.e, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.067 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.b = load i16, ptr %.067, align 2             ; 2 uses
  store i16 %i.b, ptr %.09, align 2
  %.not = icmp ne i16 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %.09, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %.067, i64 2
  %i.e = add nsw i32 %.058, -1
  %i.f = icmp samesign ugt i32 %.058, 1
  %or.cond = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !47

.critedge:                                        ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @u_countChar32_78(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %1, -1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %1, -1
  br i1 %i.c, label %.preheader, label %.preheader30

.preheader30:                                     ; preds = %bb.b
  %i.d = load i16, ptr %0, align 2                ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  %.not34 = icmp eq i32 %1, 0
  br i1 %.not34, label %.loopexit, label %.lr.ph38

.lr.ph38:                                         ; preds = %.preheader, %bb.e
  %.02137 = phi i32 [ %i.f, %bb.e ], [ 0, %.preheader ]
  %.02236 = phi i32 [ %i.p, %bb.e ], [ %1, %.preheader ] ; 2 uses
  %.02435 = phi ptr [ %i.o, %bb.e ], [ %0, %.preheader ] ; 3 uses
  %i.f = add nuw nsw i32 %.02137, 1               ; 2 uses
  %i.g = load i16, ptr %.02435, align 2
  %i.h = and i16 %i.g, -1024
  %i.i = icmp eq i16 %i.h, -10240
  %i.j = icmp ne i32 %.02236, 1
  %or.cond3 = and i1 %i.j, %i.i
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph38
  %i.k = getelementptr inbounds nuw i8, ptr %.02435, i64 2
  %i.l = load i16, ptr %i.k, align 2
  %i.m = and i16 %i.l, -1024
  %i.n = icmp eq i16 %i.m, -9216
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph38
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink48 = phi i64 [ 2, %bb.d ], [ 4, %bb.c ]
  %.sink = phi i32 [ -1, %bb.d ], [ -2, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %.02435, i64 %.sink48
  %i.p = add nsw i32 %.02236, %.sink              ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.loopexit, label %.lr.ph38, !llvm.loop !48

.lr.ph:                                           ; preds = %.preheader30, %bb.g
  %i.q = phi i16 [ %i.z, %bb.g ], [ %i.d, %.preheader30 ]
  %.133 = phi i32 [ %i.s, %bb.g ], [ 0, %.preheader30 ]
  %.22632 = phi ptr [ %.3, %bb.g ], [ %0, %.preheader30 ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.22632, i64 2 ; 3 uses
  %i.s = add nuw nsw i32 %.133, 1                 ; 2 uses
  %i.t = and i16 %i.q, -1024
  %i.u = icmp eq i16 %i.t, -10240
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.v = load i16, ptr %i.r, align 2
  %i.w = and i16 %i.v, -1024
  %i.x = icmp eq i16 %i.w, -9216
  %i.y = getelementptr inbounds nuw i8, ptr %.22632, i64 4
  %spec.select = select i1 %i.x, ptr %i.y, ptr %i.r
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %.3 = phi ptr [ %i.r, %.lr.ph ], [ %spec.select, %bb.f ] ; 2 uses
  %i.z = load i16, ptr %.3, align 2               ; 2 uses
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %.lr.ph, !llvm.loop !49

.loopexit:                                        ; preds = %bb.g, %bb.e, %.preheader30, %.preheader, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.f, %bb.e ], [ 0, %.preheader ], [ 0, %.preheader30 ], [ %i.s, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext range(i8 0, 2) i8 @u_strHasMoreChar32Than_78(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  %i.c = icmp slt i32 %1, -1
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %1, -1
  br i1 %i.d, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.c
  %i.e = load i16, ptr %0, align 2                ; 2 uses
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %.preheader
  %i.g = icmp eq i32 %2, 0
  br i1 %i.g, label %.loopexit, label %.lr.ph81

.lr.ph56:                                         ; preds = %bb.e
  %i.h = add nsw i32 %.0335480, -1                ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph81, !llvm.loop !50

.lr.ph81:                                         ; preds = %.lr.ph56.preheader, %.lr.ph56
  %.0335480 = phi i32 [ %i.h, %.lr.ph56 ], [ %2, %.lr.ph56.preheader ]
  %.0305579 = phi ptr [ %.131, %.lr.ph56 ], [ %0, %.lr.ph56.preheader ] ; 2 uses
  %i.j = phi i16 [ %i.r, %.lr.ph56 ], [ %i.e, %.lr.ph56.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.0305579, i64 2 ; 3 uses
  %i.l = and i16 %i.j, -1024
  %i.m = icmp eq i16 %i.l, -10240
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph81
  %i.n = load i16, ptr %i.k, align 2
  %i.o = and i16 %i.n, -1024
  %i.p = icmp eq i16 %i.o, -9216
  %i.q = getelementptr inbounds nuw i8, ptr %.0305579, i64 4
  %spec.select = select i1 %i.p, ptr %i.q, ptr %i.k
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph81
  %.131 = phi ptr [ %i.k, %.lr.ph81 ], [ %spec.select, %bb.d ] ; 2 uses
  %i.r = load i16, ptr %.131, align 2             ; 2 uses
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %..loopexit.loopexit70_crit_edge, label %.lr.ph56, !llvm.loop !50

bb.f:                                             ; preds = %bb.c
  %i.t = add nuw nsw i32 %1, 1
  %i.u = lshr i32 %i.t, 1
  %i.v = icmp samesign ugt i32 %i.u, %2
  br i1 %i.v, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = sub nsw i32 %1, %2                       ; 2 uses
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = zext nneg i32 %1 to i64
  %.idx = shl nuw nsw i64 %i.y, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.aa = icmp eq i32 %1, 0
  br i1 %i.aa, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
end_hunk_2
begin_hunk_3_@u_strHasMoreChar32Than_78:bb.a
  %.1344774 = phi i32 [ %i.ac, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.2324873 = phi ptr [ %.3, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %.04972 = phi i32 [ %.1, %.lr.ph ], [ %i.w, %.lr.ph.preheader ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.2324873, i64 2 ; 4 uses
  %i.af = load i16, ptr %.2324873, align 2
  %i.ag = and i16 %i.af, -1024
  %i.ah = icmp ne i16 %i.ag, -10240
  %.not = icmp eq ptr %i.ae, %i.z
  %or.cond44 = select i1 %i.ah, i1 true, i1 %.not
  br i1 %or.cond44, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph75
  %i.ai = load i16, ptr %i.ae, align 2
  %i.aj = and i16 %i.ai, -1024
  %i.ak = icmp eq i16 %i.aj, -9216
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %.2324873, i64 4
  %i.am = add nsw i32 %.04972, -1
  %i.an = icmp slt i32 %.04972, 2
  br i1 %i.an, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.lr.ph75
  %.3 = phi ptr [ %i.al, %bb.j ], [ %i.ae, %bb.i ], [ %i.ae, %.lr.ph75 ] ; 2 uses
  %.1 = phi i32 [ %i.am, %bb.j ], [ %.04972, %bb.i ], [ %.04972, %.lr.ph75 ]
  %i.ao = icmp eq ptr %.3, %i.z
  br i1 %i.ao, label %..loopexit.loopexit70_crit_edge, label %.lr.ph, !llvm.loop !51

..loopexit.loopexit70_crit_edge:                  ; preds = %bb.k, %bb.e
  br label %.loopexit, !llvm.loop !51

.loopexit:                                        ; preds = %.lr.ph, %bb.j, %.lr.ph56, %.lr.ph.preheader, %..loopexit.loopexit70_crit_edge, %.lr.ph56.preheader, %bb.h, %.preheader, %bb.f, %bb.g, %bb.b, %bb.a
  %.2 = phi i8 [ 1, %bb.f ], [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.g ], [ 1, %.lr.ph.preheader ], [ 0, %bb.h ], [ 0, %.preheader ], [ 1, %.lr.ph56.preheader ], [ 0, %..loopexit.loopexit70_crit_edge ], [ 1, %.lr.ph56 ], [ 1, %.lr.ph ], [ 0, %bb.j ]
  ret i8 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @u_memcpy_78(ptr noundef returned writeonly captures(ret: address, provenance) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw i32 %2, 1
  %i.c = zext i32 %i.b to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %0, ptr align 2 %1, i64 %i.c, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @u_memmove_78(ptr noundef returned writeonly captures(ret: address, provenance) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw i32 %2, 1
  %i.c = zext i32 %i.b to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %0, ptr align 2 %1, i64 %i.c, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local noundef ptr @u_memset_78(ptr noundef returned writeonly captures(address, ret: address, provenance) %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = shl nuw i32 %2, 1
  %.idx = zext i32 %i.c to i64                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.e = add i64 %i.b, %.idx
  %i.f = add i64 %i.b, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.f)
  %i.g = xor i64 %i.b, -1
  %i.h = add i64 %umax, %i.g                      ; 3 uses
  %i.i = lshr i64 %i.h, 1
  %i.j = add nuw i64 %i.i, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.h, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %i.h, 30
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.j, 12
  %n.vec = and i64 %i.j, -16                      ; 4 uses
  %i.k = shl i64 %n.vec, 1
  %i.l = getelementptr i8, ptr %0, i64 %i.k
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %1, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %0, i64 %i.m  ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2
  store <8 x i16> %broadcast.splat, ptr %i.n, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !55

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %i.j, -4                     ; 3 uses
  %i.p = shl i64 %n.vec12, 1
  %i.q = getelementptr i8, ptr %0, i64 %i.p
  %broadcast.splatinsert13 = insertelement <4 x i16> poison, i16 %1, i64 0
  %broadcast.splat14 = shufflevector <4 x i16> %broadcast.splatinsert13, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 2 uses
  %i.r = shl i64 %index15, 1
  %next.gep16 = getelementptr i8, ptr %0, i64 %i.r
  store <4 x i16> %broadcast.splat14, ptr %next.gep16, align 2
  %index.next17 = add nuw i64 %index15, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next17, %n.vec12
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !56

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %i.j, %n.vec12
  br i1 %cmp.n18, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.ph = phi ptr [ %0, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.09 = phi ptr [ %i.t, %.lr.ph ], [ %.09.ph, %.lr.ph.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.09, i64 2 ; 2 uses
  store i16 %1, ptr %.09, align 2
  %i.u = icmp ult ptr %i.t, %i.d
  br i1 %i.u, label %.lr.ph, label %.loopexit, !llvm.loop !57

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -65535, 65536) i32 @u_memcmp_78(ptr noundef readonly captures(address) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = shl nuw i32 %2, 1
  %.idx = zext i32 %i.b to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.01319 = phi ptr [ %i.i, %bb.b ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.01418 = phi ptr [ %i.j, %bb.b ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.d = load i16, ptr %.01319, align 2
  %i.e = zext i16 %i.d to i32
  %i.f = load i16, ptr %.01418, align 2
  %i.g = zext i16 %i.f to i32
  %i.h = sub nsw i32 %i.e, %i.g                   ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.01319, i64 2 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01418, i64 2
  %i.k = icmp ult ptr %i.i, %i.c
  br i1 %i.k, label %.lr.ph, label %.thread, !llvm.loop !58

.thread:                                          ; preds = %.lr.ph, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.h, %.lr.ph ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -65535, 65536) i32 @u_memcmpCodePointOrder_78(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @uprv_strCompare_78(ptr noundef %0, i32 noundef %2, ptr noundef %1, i32 noundef %2, i8 noundef signext 0, i8 noundef signext 1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 -1, 1084293120) i32 @u_unescapeAt_78(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i32, ptr %1, align 4                ; 5 uses
  %i.c = icmp sgt i32 %i.b, -1
  %.not = icmp slt i32 %i.b, %2
  %or.cond138 = and i1 %i.c, %.not
  br i1 %or.cond138, label %bb.b, label %_ZL8_digit16Ds.exit.thread.thread

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i32 %i.b, 1
  store i32 %i.d, ptr %1, align 4
  %i.e = tail call noundef zeroext i16 %0(i32 noundef %i.b, ptr noundef %3) #13 ; 13 uses
  %i.f = zext i16 %i.e to i32                     ; 6 uses
  switch i16 %i.e, label %bb.g [
    i16 117, label %bb.h
    i16 85, label %bb.c
    i16 120, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.g = load i32, ptr %1, align 4                ; 2 uses
  %i.h = icmp slt i32 %i.g, %2
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noundef zeroext i16 %0(i32 noundef %i.g, ptr noundef %3) #13
  %i.j = icmp eq i16 %i.i, 123
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr %1, align 4
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %1, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.m = and i16 %i.e, -8
  %i.n = icmp eq i16 %i.m, 48
  br i1 %i.n, label %.thread205, label %.critedge.preheader.preheader

.critedge.preheader.preheader:                    ; preds = %bb.g
  %i.o = icmp eq i16 %i.e, 97
  br i1 %i.o, label %bb.z, label %bb.y

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.f, %bb.c
  %.0112 = phi i32 [ 1, %bb.e ], [ 1, %bb.d ], [ 4, %bb.b ], [ 8, %bb.c ], [ 1, %bb.f ] ; 2 uses
  %.0111 = phi i32 [ 2, %bb.e ], [ 2, %bb.d ], [ 4, %bb.b ], [ 8, %bb.c ], [ 8, %bb.f ]
  %.not136 = phi i1 [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.b ], [ true, %bb.c ], [ false, %bb.f ] ; 2 uses
  %i.p = load i32, ptr %1, align 4                ; 2 uses
  %i.q = icmp slt i32 %i.p, %2
  br i1 %i.q, label %.lr.ph.split, label %_ZL8_digit16Ds.exit.thread.thread

.thread205:                                       ; preds = %bb.g
  %i.r = add nsw i32 %i.f, -48                    ; 3 uses
  %i.s = load i32, ptr %1, align 4                ; 2 uses
  %i.t = icmp slt i32 %i.s, %2
  br i1 %i.t, label %.lr.ph.split.us.preheader, label %.thread246

.lr.ph.split.us.preheader:                        ; preds = %.thread205
  %i.u = tail call noundef zeroext i16 %0(i32 noundef %i.s, ptr noundef %3) #13 ; 2 uses
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = add i16 %i.u, -56
  %or.cond182263 = icmp ult i16 %i.w, -8
  br i1 %or.cond182263, label %_ZL8_digit16Ds.exit.thread, label %_ZL8_digit16Ds.exit.thread147.us

.lr.ph.split.us:                                  ; preds = %_ZL8_digit16Ds.exit.thread147.us
  %i.x = tail call noundef zeroext i16 %0(i32 noundef %i.af, ptr noundef %3) #13 ; 2 uses
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = add i16 %i.x, -56
  %or.cond182 = icmp ult i16 %i.z, -8
  br i1 %or.cond182, label %_ZL8_digit16Ds.exit.thread.loopexit, label %_ZL8_digit16Ds.exit.thread147.us, !llvm.loop !59

_ZL8_digit16Ds.exit.thread147.us:                 ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %i.aa = phi i32 [ %i.y, %.lr.ph.split.us ], [ %i.v, %.lr.ph.split.us.preheader ] ; 2 uses
  %.1116159.us265 = phi i32 [ %i.ad, %.lr.ph.split.us ], [ %i.r, %.lr.ph.split.us.preheader ]
  %.1114160.us264 = phi i8 [ %i.ag, %.lr.ph.split.us ], [ 1, %.lr.ph.split.us.preheader ]
  %i.ab = add nsw i32 %i.aa, -48
  %i.ac = shl i32 %.1116159.us265, 3
  %i.ad = or disjoint i32 %i.ab, %i.ac            ; 3 uses
  %i.ae = load i32, ptr %1, align 4
  %i.af = add nsw i32 %i.ae, 1                    ; 3 uses
  store i32 %i.af, ptr %1, align 4
  %i.ag = add i8 %.1114160.us264, 1               ; 4 uses
  %i.ah = icmp slt i32 %i.af, %2
  %i.ai = icmp slt i8 %i.ag, 3
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %i.aj, label %.lr.ph.split.us, label %_ZL8_digit16Ds.exit.thread147.us._ZL8_digit16Ds.exit.thread.loopexit_crit_edge, !llvm.loop !59

.lr.ph.split:                                     ; preds = %bb.h, %_ZL8_digit16Ds.exit.thread147
  %i.ak = phi i32 [ %i.bb, %_ZL8_digit16Ds.exit.thread147 ], [ 0, %bb.h ]
  %i.al = phi i32 [ %i.ay, %_ZL8_digit16Ds.exit.thread147 ], [ %i.p, %bb.h ]
  %.1114160 = phi i8 [ %i.az, %_ZL8_digit16Ds.exit.thread147 ], [ 0, %bb.h ]
  %.1116159 = phi i32 [ %i.aw, %_ZL8_digit16Ds.exit.thread147 ], [ 0, %bb.h ] ; 2 uses
  %i.am = tail call noundef zeroext i16 %0(i32 noundef %i.al, ptr noundef %3) #13 ; 4 uses
  %i.an = zext i16 %i.am to i32                   ; 5 uses
  %i.ao = add i16 %i.am, -48
  %or.cond.i143 = icmp ult i16 %i.ao, 10
  br i1 %or.cond.i143, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split
  %i.ap = add nsw i32 %i.an, -48
  br label %_ZL8_digit16Ds.exit.thread147

bb.j:                                             ; preds = %.lr.ph.split
  %i.aq = add i16 %i.am, -65
  %or.cond5.i = icmp ult i16 %i.aq, 6
  br i1 %or.cond5.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %i.an, -55
  br label %_ZL8_digit16Ds.exit.thread147

bb.l:                                             ; preds = %bb.j
  %i.as = add nsw i32 %i.an, -87
  %i.at = add i16 %i.am, -103
  %or.cond183 = icmp ult i16 %i.at, -6
  br i1 %or.cond183, label %_ZL8_digit16Ds.exit.thread, label %_ZL8_digit16Ds.exit.thread147

_ZL8_digit16Ds.exit.thread147:                    ; preds = %bb.l, %bb.k, %bb.i
  %i.au = phi i32 [ %i.as, %bb.l ], [ %i.ar, %bb.k ], [ %i.ap, %bb.i ]
  %i.av = shl i32 %.1116159, 4
  %i.aw = or i32 %i.au, %i.av                     ; 2 uses
  %i.ax = load i32, ptr %1, align 4
  %i.ay = add nsw i32 %i.ax, 1                    ; 3 uses
  store i32 %i.ay, ptr %1, align 4
  %i.az = add i8 %.1114160, 1                     ; 2 uses
  %i.ba = icmp slt i32 %i.ay, %2
  %i.bb = sext i8 %i.az to i32                    ; 3 uses
  %i.bc = icmp sgt i32 %.0111, %i.bb
  %i.bd = select i1 %i.ba, i1 %i.bc, i1 false
  br i1 %i.bd, label %.lr.ph.split, label %_ZL8_digit16Ds.exit.thread, !llvm.loop !59

_ZL8_digit16Ds.exit.thread147.us._ZL8_digit16Ds.exit.thread.loopexit_crit_edge: ; preds = %_ZL8_digit16Ds.exit.thread147.us
  %i.be = sext i8 %i.ag to i32
  br label %_ZL8_digit16Ds.exit.thread, !llvm.loop !59

_ZL8_digit16Ds.exit.thread.loopexit:              ; preds = %.lr.ph.split.us
  %i.bf = sext i8 %i.ag to i32
  br label %_ZL8_digit16Ds.exit.thread

_ZL8_digit16Ds.exit.thread:                       ; preds = %_ZL8_digit16Ds.exit.thread147, %bb.l, %_ZL8_digit16Ds.exit.thread.loopexit, %.lr.ph.split.us.preheader, %_ZL8_digit16Ds.exit.thread147.us._ZL8_digit16Ds.exit.thread.loopexit_crit_edge
  %.not136218 = phi i1 [ true, %.lr.ph.split.us.preheader ], [ true, %_ZL8_digit16Ds.exit.thread.loopexit ], [ true, %_ZL8_digit16Ds.exit.thread147.us._ZL8_digit16Ds.exit.thread.loopexit_crit_edge ], [ %.not136, %bb.l ], [ %.not136, %_ZL8_digit16Ds.exit.thread147 ]
  %.0112214 = phi i32 [ 1, %.lr.ph.split.us.preheader ], [ 1, %_ZL8_digit16Ds.exit.thread.loopexit ], [ 1, %_ZL8_digit16Ds.exit.thread147.us._ZL8_digit16Ds.exit.thread.loopexit_crit_edge ], [ %.0112, %bb.l ], [ %.0112, %_ZL8_digit16Ds.exit.thread147 ]
  %.1116.lcssa = phi i32 [ %i.r, %.lr.ph.split.us.preheader ], [ %i.ad, %_ZL8_digit16Ds.exit.thread.loopexit ], [ %i.ad, %_ZL8_digit16Ds.exit.thread147.us._ZL8_digit16Ds.exit.thread.loopexit_crit_edge ], [ %.1116159, %bb.l ], [ %i.aw, %_ZL8_digit16Ds.exit.thread147 ] ; 2 uses
  %.lcssa = phi i32 [ 1, %.lr.ph.split.us.preheader ], [ %i.bf, %_ZL8_digit16Ds.exit.thread.loopexit ], [ %i.be, %_ZL8_digit16Ds.exit.thread147.us._ZL8_digit16Ds.exit.thread.loopexit_crit_edge ], [ %i.ak, %bb.l ], [ %i.bb, %_ZL8_digit16Ds.exit.thread147 ]
  %.1103 = phi i32 [ %i.v, %.lr.ph.split.us.preheader ], [ %i.y, %_ZL8_digit16Ds.exit.thread.loopexit ], [ %i.aa, %_ZL8_digit16Ds.exit.thread147.us._ZL8_digit16Ds.exit.thread.loopexit_crit_edge ], [ %i.an, %bb.l ], [ %i.an, %_ZL8_digit16Ds.exit.thread147 ]
  %i.bg = icmp sgt i32 %.0112214, %.lcssa
  br i1 %i.bg, label %_ZL8_digit16Ds.exit.thread.thread, label %bb.m

bb.m:                                             ; preds = %_ZL8_digit16Ds.exit.thread
  br i1 %.not136218, label %.thread246, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not137 = icmp eq i32 %.1103, 125
  br i1 %.not137, label %bb.o, label %_ZL8_digit16Ds.exit.thread.thread

bb.o:                                             ; preds = %bb.n
  %i.bh = load i32, ptr %1, align 4
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %1, align 4
  br label %.thread246

.thread246:                                       ; preds = %.thread205, %bb.o, %bb.m
  %.1116.lcssa244250 = phi i32 [ %.1116.lcssa, %bb.m ], [ %.1116.lcssa, %bb.o ], [ %i.r, %.thread205 ] ; 6 uses
  %or.cond = icmp ugt i32 %.1116.lcssa244250, 1114111
  br i1 %or.cond, label %_ZL8_digit16Ds.exit.thread.thread, label %bb.p

bb.p:                                             ; preds = %.thread246
  %i.bj = load i32, ptr %1, align 4               ; 4 uses
  %i.bk = icmp slt i32 %i.bj, %2
  %i.bl = and i32 %.1116.lcssa244250, 2096128
  %i.bm = icmp eq i32 %i.bl, 55296
  %or.cond140 = and i1 %i.bk, %i.bm
  br i1 %or.cond140, label %bb.q, label %.thread153

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.bn = add nsw i32 %i.bj, 1                    ; 2 uses
  store i32 %i.bn, ptr %i.a, align 4
  %i.bo = tail call noundef zeroext i16 %0(i32 noundef %i.bj, ptr noundef %3) #13 ; 2 uses
  %i.bp = zext i16 %i.bo to i32
  %i.bq = icmp eq i16 %i.bo, 92
  br i1 %i.bq, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.br = icmp slt i32 %i.bn, %2
  br i1 %i.br, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.bs = add nsw i32 %i.bj, 12
end_hunk_3
