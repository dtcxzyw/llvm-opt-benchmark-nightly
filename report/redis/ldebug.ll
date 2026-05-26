inline.NumInlined: 26
inline.NumDeleted: 14
begin_hunk_0_@lua_sethook:bb.a
  %i.b = icmp eq i32 %2, 0
  %spec.select13 = select i1 %i.b, ptr null, ptr %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %spec.select13, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %3, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %3, ptr %i.e, align 4, !tbaa !21
  %i.f = trunc i32 %2 to i8
  %i.g = select i1 %i.a, i8 0, i8 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 %i.g, ptr %i.h, align 4, !tbaa !22
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @lua_gethook(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 256) i32 @lua_gethookmask(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.b = load i8, ptr %i.a, align 4, !tbaa !22
  %i.c = zext i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @lua_gethookcount(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @lua_getstack(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.023 = phi ptr [ %i.b, %.lr.ph ], [ %i.p, %bb.e ] ; 4 uses
  %.01822 = phi i32 [ %1, %.lr.ph ], [ %.1, %bb.e ]
  %i.f = icmp ugt ptr %.023, %i.e
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %.01822, -1                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.023, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.l = load i8, ptr %i.k, align 2, !tbaa !27
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.023, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28
  %i.o = sub nsw i32 %i.g, %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.g, %bb.c ], [ %i.o, %bb.d ]  ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.023, i64 -40 ; 2 uses
  %i.q = icmp sgt i32 %.1, 0
  br i1 %i.q, label %bb.b, label %.critedge, !llvm.loop !29

.critedge:                                        ; preds = %bb.e, %bb.a
  %.018.lcssa = phi i32 [ %1, %bb.a ], [ %.1, %bb.e ]
  %.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.p, %bb.e ] ; 2 uses
  %i.r = icmp eq i32 %.018.lcssa, 0
  br i1 %i.r, label %bb.f, label %.thread.sink.split

bb.f:                                             ; preds = %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24   ; 2 uses
  %i.u = icmp ugt ptr %.0.lcssa, %i.t
  br i1 %i.u, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.v = ptrtoint ptr %.0.lcssa to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 40
  %i.z = trunc i64 %i.y to i32
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %.critedge, %bb.g
  %.sink = phi i32 [ %i.z, %bb.g ], [ 0, %.critedge ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 116
  store i32 %.sink, ptr %i.aa, align 4, !tbaa !31
  br label %.thread

.thread:                                          ; preds = %bb.b, %.thread.sink.split, %bb.f
  %.017 = phi i32 [ 0, %bb.f ], [ 1, %.thread.sink.split ], [ 0, %bb.b ]
  ret i32 %.017
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @lua_getlocal(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [40 x i8], ptr %i.b, i64 %i.e ; 8 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !25 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !34
  %i.j = icmp eq i32 %i.i, 6
  br i1 %i.j, label %bb.b, label %getluaproto.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %.val.i, align 8, !tbaa !27 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.m = load i8, ptr %i.l, align 2, !tbaa !27
  %.not.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i, label %getluaproto.exit.i, label %getluaproto.exit.thread.i

getluaproto.exit.i:                               ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27   ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %getluaproto.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %getluaproto.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.r = icmp eq ptr %i.f, %i.q
  br i1 %i.r, label %bb.d, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !35
  br label %currentpc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !35
  %.pre9.i.i = load ptr, ptr %.val.i, align 8, !tbaa !27
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre9.i.i, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !27
  br label %currentpc.exit.i

currentpc.exit.i:                                 ; preds = %bb.d, %._crit_edge.i.i
  %i.v = phi ptr [ %i.o, %._crit_edge.i.i ], [ %.pre.i, %bb.d ]
  %i.w = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.t, %bb.d ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !37
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.x, %i.aa
  %i.ac = lshr exact i64 %i.ab, 2
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -1
  %i.af = tail call ptr @luaF_getlocalname(ptr noundef nonnull %i.o, i32 noundef %2, i32 noundef %i.ae) #10 ; 2 uses
  %.not19.i = icmp eq ptr %i.af, null
  br i1 %.not19.i, label %getluaproto.exit.thread.i, label %currentpc.exit.i.select.unfold_crit_edge

currentpc.exit.i.select.unfold_crit_edge:         ; preds = %currentpc.exit.i
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !44
  %.pre13 = sext i32 %2 to i64
  br label %select.unfold

getluaproto.exit.thread.i:                        ; preds = %currentpc.exit.i, %getluaproto.exit.i, %bb.b, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !23
  %i.ai = icmp eq ptr %i.f, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.in.i = select i1 %i.ai, ptr %i.aj, ptr %i.ak
  %i.al = load ptr, ptr %.in.i, align 8, !tbaa !45
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !44  ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %.fr = freeze i64 %i.ap
  %i.aq = ashr i64 %.fr, 4
  %i.ar = sext i32 %2 to i64                      ; 2 uses
  %i.as = icmp sge i64 %i.aq, %i.ar
  %i.at = icmp sgt i32 %2, 0
  %or.cond.i = and i1 %i.at, %i.as
  br i1 %or.cond.i, label %select.unfold, label %findlocal.exit

select.unfold:                                    ; preds = %currentpc.exit.i.select.unfold_crit_edge, %getluaproto.exit.thread.i
  %.pre-phi = phi i64 [ %.pre13, %currentpc.exit.i.select.unfold_crit_edge ], [ %i.ar, %getluaproto.exit.thread.i ]
  %i.au = phi ptr [ %.pre, %currentpc.exit.i.select.unfold_crit_edge ], [ %i.am, %getluaproto.exit.thread.i ]
  %.1.i.ph = phi ptr [ %i.af, %currentpc.exit.i.select.unfold_crit_edge ], [ @.str.6, %getluaproto.exit.thread.i ]
  %i.av = getelementptr [16 x i8], ptr %i.au, i64 %.pre-phi
  %i.aw = getelementptr i8, ptr %i.av, i64 -16
  tail call void @luaA_pushobject(ptr noundef nonnull %0, ptr noundef %i.aw) #10
  br label %findlocal.exit

findlocal.exit:                                   ; preds = %getluaproto.exit.thread.i, %select.unfold
  %.1.i12 = phi ptr [ %.1.i.ph, %select.unfold ], [ null, %getluaproto.exit.thread.i ]
  ret ptr %.1.i12
}

declare hidden void @luaA_pushobject(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @lua_setlocal(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [40 x i8], ptr %i.b, i64 %i.e ; 8 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !25 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !34
  %i.j = icmp eq i32 %i.i, 6
  br i1 %i.j, label %bb.b, label %getluaproto.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %.val.i, align 8, !tbaa !27 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.m = load i8, ptr %i.l, align 2, !tbaa !27
  %.not.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i, label %getluaproto.exit.i, label %getluaproto.exit.thread.i

getluaproto.exit.i:                               ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27   ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %getluaproto.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %getluaproto.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.r = icmp eq ptr %i.f, %i.q
  br i1 %i.r, label %bb.d, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !35
  br label %currentpc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !35
  %.pre9.i.i = load ptr, ptr %.val.i, align 8, !tbaa !27
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre9.i.i, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !27
  br label %currentpc.exit.i

currentpc.exit.i:                                 ; preds = %bb.d, %._crit_edge.i.i
  %i.v = phi ptr [ %i.o, %._crit_edge.i.i ], [ %.pre.i, %bb.d ]
  %i.w = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.t, %bb.d ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !37
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.x, %i.aa
  %i.ac = lshr exact i64 %i.ab, 2
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -1
  %i.af = tail call ptr @luaF_getlocalname(ptr noundef nonnull %i.o, i32 noundef %2, i32 noundef %i.ae) #10 ; 2 uses
  %.not19.i = icmp eq ptr %i.af, null
  br i1 %.not19.i, label %getluaproto.exit.thread.i, label %currentpc.exit.i.select.unfold_crit_edge

currentpc.exit.i.select.unfold_crit_edge:         ; preds = %currentpc.exit.i
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !44
  %.pre18 = sext i32 %2 to i64
  br label %select.unfold

getluaproto.exit.thread.i:                        ; preds = %currentpc.exit.i, %getluaproto.exit.i, %bb.b, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !23
  %i.ai = icmp eq ptr %i.f, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.in.i = select i1 %i.ai, ptr %i.aj, ptr %i.ak
  %i.al = load ptr, ptr %.in.i, align 8, !tbaa !45
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !44  ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %.fr = freeze i64 %i.ap
  %i.aq = ashr i64 %.fr, 4
  %i.ar = sext i32 %2 to i64                      ; 2 uses
  %i.as = icmp sge i64 %i.aq, %i.ar
  %i.at = icmp sgt i32 %2, 0
  %or.cond.i = and i1 %i.at, %i.as
  br i1 %or.cond.i, label %select.unfold, label %findlocal.exit

select.unfold:                                    ; preds = %currentpc.exit.i.select.unfold_crit_edge, %getluaproto.exit.thread.i
  %.pre-phi = phi i64 [ %.pre18, %currentpc.exit.i.select.unfold_crit_edge ], [ %i.ar, %getluaproto.exit.thread.i ]
  %i.au = phi ptr [ %.pre, %currentpc.exit.i.select.unfold_crit_edge ], [ %i.am, %getluaproto.exit.thread.i ]
  %.1.i.ph = phi ptr [ %i.af, %currentpc.exit.i.select.unfold_crit_edge ], [ @.str.6, %getluaproto.exit.thread.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !46 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -16
  %i.ay = getelementptr [16 x i8], ptr %i.au, i64 %.pre-phi ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 -16
  %i.ba = load i64, ptr %i.ax, align 8, !tbaa !27
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !27
  %i.bb = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !34
  %i.bd = getelementptr i8, ptr %i.ay, i64 -8
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !34
  br label %findlocal.exit

findlocal.exit:                                   ; preds = %getluaproto.exit.thread.i, %select.unfold
  %.1.i17 = phi ptr [ %.1.i.ph, %select.unfold ], [ null, %getluaproto.exit.thread.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !46
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -16
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !46
  ret ptr %.1.i17
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @lua_getinfo(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !27
  %i.b = icmp eq i8 %i.a, 62
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !27
  store ptr %i.e, ptr %i.c, align 8, !tbaa !46
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.i = load i32, ptr %i.h, align 4, !tbaa !31   ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %auxgetinfo.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds [40 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.029 = phi ptr [ null, %bb.b ], [ %i.m, %bb.d ] ; 8 uses
  %.028 = phi ptr [ %i.g, %bb.b ], [ %i.p, %bb.d ] ; 7 uses
  %.0 = phi ptr [ %i.f, %bb.b ], [ %1, %bb.d ]    ; 5 uses
  %i.q = icmp eq ptr %.028, null
  br i1 %i.q, label %auxgetinfo.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %.not28.i = icmp eq ptr %.029, null             ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.029, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.029, i64 36
  %i.u = getelementptr inbounds i8, ptr %.029, i64 -40 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.029, i64 -32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.phi.trans.insert.i.i33.i = getelementptr inbounds i8, ptr %.029, i64 -16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.028, i64 11
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.029, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %.028, i64 10
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.028, i64 32 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 56
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %.preheader.i
  %.024.i = phi ptr [ %i.do, %bb.aa ], [ %.0, %.preheader.i ] ; 2 uses
  %.0.i = phi i32 [ %.1.i, %bb.aa ], [ 1, %.preheader.i ] ; 10 uses
  %i.aj = load i8, ptr %.024.i, align 1, !tbaa !27
  switch i8 %i.aj, label %bb.z [
    i8 0, label %auxgetinfo.exit.thread
    i8 83, label %bb.g
    i8 108, label %bb.j
    i8 117, label %bb.q
    i8 110, label %bb.r
    i8 76, label %bb.aa
    i8 102, label %bb.aa
  ]

bb.g:                                             ; preds = %bb.f
  %i.ak = load i8, ptr %i.ac, align 2, !tbaa !27
  %.not.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr @.str.10, ptr %i.ad, align 8, !tbaa !47
  store i32 -1, ptr %i.ae, align 8, !tbaa !48
  br label %funcinfo.exit.i

bb.i:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !49
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  store ptr %i.ao, ptr %i.ad, align 8, !tbaa !47
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !50 ; 2 uses
  store i32 %i.ar, ptr %i.ae, align 8, !tbaa !48
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 100
  %i.au = load i32, ptr %i.at, align 4, !tbaa !51
  %i.av = icmp eq i32 %i.ar, 0
  %i.aw = select i1 %i.av, ptr @.str.12, ptr @.str.13
  br label %funcinfo.exit.i

funcinfo.exit.i:                                  ; preds = %bb.i, %bb.h
  %i.ax = phi ptr [ %i.ao, %bb.i ], [ @.str.10, %bb.h ]
  %.sink.i.i = phi i32 [ %i.au, %bb.i ], [ -1, %bb.h ]
  %.str.11.sink.i.i = phi ptr [ %i.aw, %bb.i ], [ @.str.11, %bb.h ]
  store i32 %.sink.i.i, ptr %i.ag, align 4, !tbaa !52
  store ptr %.str.11.sink.i.i, ptr %i.ah, align 8, !tbaa !53
  tail call void @luaO_chunkid(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ax, i64 noundef 60) #10
  br label %bb.aa

bb.j:                                             ; preds = %bb.f
  br i1 %.not28.i, label %currentline.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %i.s, align 8, !tbaa !25  ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !34
  %i.bb = icmp eq i32 %i.ba, 6
  br i1 %i.bb, label %bb.l, label %currentline.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !27 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 10
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !27
  %.not.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i, label %bb.m, label %currentline.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.bg = icmp eq ptr %.029, %i.bf
  br i1 %i.bg, label %bb.n, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.m
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !35
  br label %currentpc.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bh = load ptr, ptr %i.x, align 8, !tbaa !36  ; 2 uses
  store ptr %i.bh, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !35
  %.pre9.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !27
  br label %currentpc.exit.i.i

currentpc.exit.i.i:                               ; preds = %bb.n, %._crit_edge.i.i.i
  %i.bi = phi ptr [ %i.bc, %._crit_edge.i.i.i ], [ %.pre9.i.i.i, %bb.n ]
  %i.bj = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.bh, %bb.n ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !27 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !37
  %i.bo = ptrtoint ptr %i.bj to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = lshr exact i64 %i.bq, 2                 ; 2 uses
  %i.bs = trunc i64 %i.br to i32
  %i.bt = add nuw nsw i64 %i.br, 4294967295
  %i.bu = icmp slt i32 %i.bs, 1
  br i1 %i.bu, label %currentline.exit.i, label %bb.o

bb.o:                                             ; preds = %currentpc.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !54 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.bw, null
  br i1 %.not.i30.i, label %currentline.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_0
