inline.NumInlined: 26
inline.NumDeleted: 14
begin_hunk_0
@.str.6 = private unnamed_addr constant [13 x i8] c"(*temporary)\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"tail\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"=(tail call)\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"=[C]\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Lua\00", align 1
@luaP_opmodes = external hidden local_unnamed_addr constant [38 x i8], align 16
@.str.14 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"upvalue\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"%s:%d: %s\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @lua_sethook(ptr noundef writeonly captures(none) initializes((100, 101), (104, 120)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
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
  %i.af = tail call ptr @luaF_getlocalname(ptr noundef nonnull %i.o, i32 noundef %2, i32 noundef %i.ae) #11 ; 2 uses
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
  %i.aq = ashr exact i64 %i.ap, 4
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
  tail call void @luaA_pushobject(ptr noundef nonnull %0, ptr noundef %i.aw) #11
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
  %i.af = tail call ptr @luaF_getlocalname(ptr noundef nonnull %i.o, i32 noundef %2, i32 noundef %i.ae) #11 ; 2 uses
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
  %i.aq = ashr exact i64 %i.ap, 4
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
  tail call void @luaO_chunkid(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ax, i64 noundef 60) #11
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
  %i.bx = and i64 %i.bt, 4294967295
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  br label %currentline.exit.i

currentline.exit.i:                               ; preds = %bb.p, %bb.o, %currentpc.exit.i.i, %bb.l, %bb.k, %bb.j
  %i.ca = phi i32 [ -1, %bb.j ], [ -1, %currentpc.exit.i.i ], [ %i.bz, %bb.p ], [ 0, %bb.o ], [ -1, %bb.l ], [ -1, %bb.k ]
  store i32 %i.ca, ptr %i.ab, align 8, !tbaa !55
  br label %bb.aa

bb.q:                                             ; preds = %bb.f
  %i.cb = load i8, ptr %i.z, align 1, !tbaa !27
  %i.cc = zext i8 %i.cb to i32
  store i32 %i.cc, ptr %i.aa, align 4, !tbaa !56
  br label %bb.aa

bb.r:                                             ; preds = %bb.f
  br i1 %.not28.i, label %getfuncname.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = load ptr, ptr %i.s, align 8, !tbaa !25  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !34
  %i.cg = icmp eq i32 %i.cf, 6
  br i1 %i.cg, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !27
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 10
  %i.cj = load i8, ptr %i.ci, align 2, !tbaa !27
  %.not.i37.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i37.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ck = load i32, ptr %i.t, align 4, !tbaa !28
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %getfuncname.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.cm = load ptr, ptr %i.v, align 8, !tbaa !25  ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !34
  %i.cp = icmp eq i32 %i.co, 6
  br i1 %i.cp, label %bb.w, label %getfuncname.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !27 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 10
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !27
  %.not17.i.i = icmp eq i8 %i.cs, 0
  br i1 %.not17.i.i, label %bb.x, label %getfuncname.exit.thread.i

bb.x:                                             ; preds = %bb.w
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !27
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !37 ; 2 uses
  %i.cx = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.cy = icmp eq ptr %i.u, %i.cx
  br i1 %i.cy, label %bb.y, label %._crit_edge.i.i32.i

._crit_edge.i.i32.i:                              ; preds = %bb.x
  %.pre.i.i34.i = load ptr, ptr %.phi.trans.insert.i.i33.i, align 8, !tbaa !35
  br label %currentpc.exit.i35.i

bb.y:                                             ; preds = %bb.x
  %i.cz = load ptr, ptr %i.x, align 8, !tbaa !36  ; 2 uses
  store ptr %i.cz, ptr %.phi.trans.insert.i.i33.i, align 8, !tbaa !35
  %.pre9.i.i36.i = load ptr, ptr %i.cm, align 8, !tbaa !27
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre9.i.i36.i, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !27
  %.phi.trans.insert19.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 24
  %.pre20.i.i = load ptr, ptr %.phi.trans.insert19.i.i, align 8, !tbaa !37
  br label %currentpc.exit.i35.i

currentpc.exit.i35.i:                             ; preds = %bb.y, %._crit_edge.i.i32.i
  %i.da = phi ptr [ %i.cw, %._crit_edge.i.i32.i ], [ %.pre20.i.i, %bb.y ]
  %i.db = phi ptr [ %.pre.i.i34.i, %._crit_edge.i.i32.i ], [ %i.cz, %bb.y ]
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = shl i64 %i.de, 30
  %sext.i.i = add i64 %i.df, -4294967296
  %i.dg = ashr i64 %sext.i.i, 32
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !4  ; 2 uses
  %i.dj = and i32 %i.di, 63
  switch i32 %i.dj, label %getfuncname.exit.thread.i [
    i32 28, label %getfuncname.exit.i
    i32 29, label %getfuncname.exit.i
    i32 33, label %getfuncname.exit.i
  ]

getfuncname.exit.i:                               ; preds = %currentpc.exit.i35.i, %currentpc.exit.i35.i, %currentpc.exit.i35.i
  %i.dk = lshr i32 %i.di, 6
  %i.dl = and i32 %i.dk, 255
  %i.dm = tail call fastcc ptr @getobjname(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.u, i32 noundef %i.dl, ptr noundef nonnull %i.r) ; 2 uses
  store ptr %i.dm, ptr %i.y, align 8, !tbaa !57
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %getfuncname.exit.thread.i, label %bb.aa

getfuncname.exit.thread.i:                        ; preds = %getfuncname.exit.i, %currentpc.exit.i35.i, %bb.w, %bb.v, %bb.u, %bb.r
  store ptr @.str.7, ptr %i.y, align 8, !tbaa !57
  store ptr null, ptr %i.r, align 8, !tbaa !58
  br label %bb.aa

bb.z:                                             ; preds = %bb.f
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %getfuncname.exit.thread.i, %getfuncname.exit.i, %bb.q, %currentline.exit.i, %funcinfo.exit.i, %bb.f, %bb.f
  %.1.i = phi i32 [ 0, %bb.z ], [ %.0.i, %funcinfo.exit.i ], [ %.0.i, %currentline.exit.i ], [ %.0.i, %bb.q ], [ %.0.i, %getfuncname.exit.thread.i ], [ %.0.i, %getfuncname.exit.i ], [ %.0.i, %bb.f ], [ %.0.i, %bb.f ]
  %i.do = getelementptr inbounds nuw i8, ptr %.024.i, i64 1
  br label %bb.f, !llvm.loop !59

auxgetinfo.exit:                                  ; preds = %bb.e, %bb.c
  %.040 = phi ptr [ %.0, %bb.e ], [ %1, %bb.c ]   ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @.str.7, ptr %i.dp, align 8, !tbaa !57
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.7, ptr %i.dq, align 8, !tbaa !58
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @.str.8, ptr %i.dr, align 8, !tbaa !53
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 -1, ptr %i.ds, align 8, !tbaa !55
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 -1, ptr %i.dt, align 8, !tbaa !48
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 -1, ptr %i.du, align 4, !tbaa !52
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @.str.9, ptr %i.dv, align 8, !tbaa !47
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 56
  tail call void @luaO_chunkid(ptr noundef nonnull %i.dw, ptr noundef nonnull @.str.9, i64 noundef 60) #11
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 0, ptr %i.dx, align 4, !tbaa !56
  %i.dy = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.040, i32 noundef 102) #12
  %.not31 = icmp eq ptr %i.dy, null
  br i1 %.not31, label %bb.ag, label %bb.ab

auxgetinfo.exit.thread:                           ; preds = %bb.f
  %i.dz = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0, i32 noundef 102) #12
  %.not3148 = icmp eq ptr %i.dz, null
  br i1 %.not3148, label %.thread65, label %bb.ac

bb.ab:                                            ; preds = %auxgetinfo.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !46 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i32 0, ptr %i.ec, align 8, !tbaa !34
  br label %bb.ad

bb.ac:                                            ; preds = %auxgetinfo.exit.thread
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !46 ; 2 uses
  store ptr %.028, ptr %i.ee, align 8, !tbaa !27
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i32 6, ptr %i.ef, align 8, !tbaa !34
  %.pre = load ptr, ptr %i.ed, align 8, !tbaa !46
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.eg = phi i1 [ false, %bb.ac ], [ true, %bb.ab ]
  %.0394963 = phi ptr [ %.0, %bb.ac ], [ %.040, %bb.ab ]
  %.028365162 = phi ptr [ %.028, %bb.ac ], [ null, %bb.ab ]
  %.023.i5359 = phi i32 [ %.0.i, %bb.ac ], [ 1, %bb.ab ]
  %i.eh = phi ptr [ %.pre, %bb.ac ], [ %i.eb, %bb.ab ]
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !60
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.eh to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = icmp slt i64 %i.en, 17
  br i1 %i.eo, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 1) #11
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.ep = load ptr, ptr %i.ek, align 8, !tbaa !46
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store ptr %i.eq, ptr %i.ek, align 8, !tbaa !46
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %auxgetinfo.exit
  %.023.i54 = phi i32 [ 1, %auxgetinfo.exit ], [ %.023.i5359, %bb.af ] ; 3 uses
  %.0283652 = phi ptr [ null, %auxgetinfo.exit ], [ %.028365162, %bb.af ]
  %.03950 = phi ptr [ %.040, %auxgetinfo.exit ], [ %.0394963, %bb.af ]
  %i.er = phi i1 [ true, %auxgetinfo.exit ], [ %i.eg, %bb.af ]
  %i.es = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.03950, i32 noundef 76) #12
  %.not32 = icmp eq ptr %i.es, null
  br i1 %.not32, label %bb.am, label %bb.ah

.thread65:                                        ; preds = %auxgetinfo.exit.thread
  %i.et = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0, i32 noundef 76) #12
  %.not3269 = icmp eq ptr %i.et, null
  br i1 %.not3269, label %bb.am, label %.thread73

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.er, label %bb.ai, label %.thread73

.thread73:                                        ; preds = %.thread65, %bb.ah
  %.023.i547078 = phi i32 [ %.023.i54, %bb.ah ], [ %.0.i, %.thread65 ] ; 2 uses
  %.02836527276 = phi ptr [ %.0283652, %bb.ah ], [ %.028, %.thread65 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.02836527276, i64 10
  %i.ev = load i8, ptr %i.eu, align 2, !tbaa !27
  %.not.i = icmp eq i8 %i.ev, 0
  br i1 %.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.thread73, %bb.ah
  %.023.i547079 = phi i32 [ %.023.i547078, %.thread73 ], [ %.023.i54, %bb.ah ]
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !46 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 0, ptr %i.ey, align 8, !tbaa !34
  br label %bb.ak

bb.aj:                                            ; preds = %.thread73
  %i.ez = tail call ptr @luaH_new(ptr noundef %0, i32 noundef 0, i32 noundef 0) #11 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.02836527276, i64 32 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !27 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !54
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 84
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !61
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.aj, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.aj ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.i
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !4
  %i.fj = tail call ptr @luaH_setnum(ptr noundef %0, ptr noundef %i.ez, i32 noundef %i.fi) #11 ; 2 uses
  store i32 1, ptr %i.fj, align 8, !tbaa !27
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i32 1, ptr %i.fk, align 8, !tbaa !34
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fl = load ptr, ptr %i.fa, align 8, !tbaa !27
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 84
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !61
  %i.fo = sext i32 %i.fn to i64
  %i.fp = icmp slt i64 %indvars.iv.next.i, %i.fo
  br i1 %i.fp, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !62

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.aj
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !46 ; 2 uses
  store ptr %i.ez, ptr %i.fr, align 8, !tbaa !27
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i32 5, ptr %i.fs, align 8, !tbaa !34
  %.pre.i = load ptr, ptr %i.fq, align 8, !tbaa !46
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i, %bb.ai
  %.023.i547077 = phi i32 [ %.023.i547078, %._crit_edge.i ], [ %.023.i547079, %bb.ai ]
  %i.ft = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ex, %bb.ai ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !60
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = ptrtoint ptr %i.ft to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = icmp slt i64 %i.fy, 17
  br i1 %i.fz, label %bb.al, label %collectvalidlines.exit

bb.al:                                            ; preds = %bb.ak
  tail call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 1) #11
  %.phi.trans.insert41 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre42 = load ptr, ptr %.phi.trans.insert41, align 8, !tbaa !46
  br label %collectvalidlines.exit

collectvalidlines.exit:                           ; preds = %bb.ak, %bb.al
  %i.ga = phi ptr [ %i.ft, %bb.ak ], [ %.pre42, %bb.al ]
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store ptr %i.gc, ptr %i.gb, align 8, !tbaa !46
  br label %bb.am

bb.am:                                            ; preds = %.thread65, %collectvalidlines.exit, %bb.ag
  %.023.i5471 = phi i32 [ %.0.i, %.thread65 ], [ %.023.i547077, %collectvalidlines.exit ], [ %.023.i54, %bb.ag ]
  ret i32 %.023.i5471
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

declare hidden void @luaD_growstack(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @luaG_checkopenop(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = and i32 %0, 63
  switch i32 %i.a, label %bb.c [
    i32 28, label %bb.b
    i32 29, label %bb.b
    i32 30, label %bb.b
    i32 34, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = icmp ult i32 %0, 8388608
  %. = zext i1 %i.b to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %., %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @luaG_checkcode(ptr noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63
  %i.c = tail call fastcc i32 @symbexec(ptr noundef %0, i32 noundef %i.b, i32 noundef 255)
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @symbexec(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.d = load i8, ptr %i.c, align 1, !tbaa !64    ; 2 uses
  %i.e = icmp ult i8 %i.d, -5
  br i1 %i.e, label %bb.b, label %.critedge232

bb.b:                                             ; preds = %bb.a
  %i.f = zext i8 %i.d to i32                      ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.h = load i8, ptr %i.g, align 1, !tbaa !65
  %i.i = zext i8 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.k = load i8, ptr %i.j, align 2, !tbaa !66    ; 2 uses
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = and i32 %i.l, 1
  %i.n = add nuw nsw i32 %i.m, %i.i
  %.not.i = icmp samesign ugt i32 %i.n, %i.f
  %i.o = and i32 %i.l, 5
  %or.cond.i = icmp eq i32 %i.o, 4
  %or.cond22.i = or i1 %or.cond.i, %.not.i
  br i1 %or.cond22.i, label %.critedge232, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load i32, ptr %i.p, align 8, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load i8, ptr %i.r, align 8, !tbaa !68
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %.not19.i = icmp sgt i32 %i.q, %i.t
  br i1 %.not19.i, label %.critedge232, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.v = load i32, ptr %i.u, align 4, !tbaa !61   ; 2 uses
  %i.w = icmp eq i32 %i.v, %i.b
  %i.x = icmp eq i32 %i.v, 0
  %or.cond20.i = or i1 %i.x, %i.w
  %i.y = icmp sgt i32 %i.b, 0
  %or.cond21.i = and i1 %i.y, %or.cond20.i
  br i1 %or.cond21.i, label %precheck.exit, label %.critedge232

precheck.exit:                                    ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !37  ; 5 uses
  %i.ab = zext nneg i32 %i.b to i64
  %i.ac = getelementptr [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = and i32 %i.ae, 63
  %.not = icmp eq i32 %i.af, 30
  br i1 %.not, label %bb.e, label %.critedge232

bb.e:                                             ; preds = %precheck.exit
  %i.ag = add nsw i32 %i.b, -1                    ; 3 uses
  %i.ah = icmp sgt i32 %1, 0
  br i1 %i.ah, label %.lr.ph281, label %._crit_edge282

.lr.ph281:                                        ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not204 = icmp eq i32 %2, 255                  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = and i8 %i.k, 6
  %or.cond230 = icmp eq i8 %i.am, 2
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph281, %bb.bg
  %.0162279 = phi i32 [ 0, %.lr.ph281 ], [ %i.ff, %bb.bg ] ; 31 uses
  %.0168278 = phi i32 [ %i.ag, %.lr.ph281 ], [ %.2170, %bb.bg ] ; 2 uses
  %i.an = sext i32 %.0162279 to i64               ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.an ; 5 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4  ; 7 uses
  %i.aq = and i32 %i.ap, 63                       ; 3 uses
  %i.ar = lshr i32 %i.ap, 6
  %i.as = and i32 %i.ar, 255                      ; 12 uses
  %i.at = icmp samesign ult i32 %i.aq, 38
  %i.au = icmp samesign ult i32 %i.as, %i.f
  %or.cond285 = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond285, label %bb.g, label %.critedge232

bb.g:                                             ; preds = %bb.f
  %i.av = zext nneg i32 %i.aq to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !27  ; 4 uses
  %i.ay = zext i8 %i.ax to i32                    ; 4 uses
  %i.az = and i32 %i.ay, 3
  switch i32 %i.az, label %default.unreachable306 [
    i32 0, label %bb.h
    i32 1, label %bb.s
    i32 2, label %bb.u
    i32 3, label %.critedge
  ]

bb.h:                                             ; preds = %bb.g
  %i.ba = lshr i32 %i.ap, 23                      ; 9 uses
  %3 = and i32 %i.ay, 48
  %4 = sub i32 %3, 0                              ; 2 uses
  %5 = call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 28)
  switch i32 %5, label %default.unreachable.i [
    i32 0, label %bb.i
    i32 3, label %bb.k
    i32 2, label %bb.j
    i32 1, label %checkArgMode.exit
  ]

bb.i:                                             ; preds = %bb.h
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %checkArgMode.exit, label %.critedge232

bb.j:                                             ; preds = %bb.h
  %i.bc = icmp samesign ult i32 %i.ba, %i.f
  br i1 %i.bc, label %checkArgMode.exit, label %.critedge232

bb.k:                                             ; preds = %bb.h
  %.not.i235 = icmp sgt i32 %i.ap, -1
  br i1 %.not.i235, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = and i32 %i.ba, 255
  %i.be = load i32, ptr %i.ai, align 4, !tbaa !69
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %checkArgMode.exit, label %.critedge232

bb.m:                                             ; preds = %bb.k
  %i.bg = icmp samesign ult i32 %i.ba, %i.f
  br i1 %i.bg, label %checkArgMode.exit, label %.critedge232

default.unreachable.i:                            ; preds = %bb.h
  unreachable

checkArgMode.exit:                                ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %bb.h
  %i.bh = lshr i32 %i.ap, 14                      ; 2 uses
  %i.bi = and i32 %i.bh, 511                      ; 8 uses
  %6 = and i8 %i.ax, 12
  %7 = sub i8 %6, 0                               ; 2 uses
  %8 = call i8 @llvm.fshl.i8(i8 %7, i8 %7, i8 6)
  switch i8 %8, label %default.unreachable.i238 [
    i8 0, label %bb.n
    i8 3, label %bb.p
    i8 2, label %bb.o
    i8 1, label %.critedge
  ]

bb.n:                                             ; preds = %checkArgMode.exit
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.critedge, label %.critedge232

bb.o:                                             ; preds = %checkArgMode.exit
  %i.bk = icmp samesign ult i32 %i.bi, %i.f
  br i1 %i.bk, label %.critedge, label %.critedge232

bb.p:                                             ; preds = %checkArgMode.exit
  %.not.i237 = icmp samesign ult i32 %i.bi, 256
  br i1 %.not.i237, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = and i32 %i.bh, 255
  %i.bm = load i32, ptr %i.ai, align 4, !tbaa !69
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %.critedge, label %.critedge232

bb.r:                                             ; preds = %bb.p
  %i.bo = icmp samesign ult i32 %i.bi, %i.f
  br i1 %i.bo, label %.critedge, label %.critedge232

default.unreachable.i238:                         ; preds = %checkArgMode.exit
  unreachable

bb.s:                                             ; preds = %bb.g
  %i.bp = lshr i32 %i.ap, 14                      ; 3 uses
  %i.bq = and i32 %i.ay, 48
  %i.br = icmp eq i32 %i.bq, 48
  br i1 %i.br, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.bs = load i32, ptr %i.ai, align 4, !tbaa !69
  %i.bt = icmp slt i32 %i.bp, %i.bs
  br i1 %i.bt, label %.critedge, label %.critedge232

bb.u:                                             ; preds = %bb.g
  %i.bu = lshr i32 %i.ap, 14
  %i.bv = add nsw i32 %i.bu, -131071              ; 5 uses
  %i.bw = and i32 %i.ay, 48
  %i.bx = icmp eq i32 %i.bw, 32
  br i1 %i.bx, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.by = add nsw i32 %.0162279, 1
  %i.bz = add nsw i32 %i.by, %i.bv                ; 5 uses
  %i.ca = icmp sgt i32 %i.bz, -1
  %i.cb = icmp slt i32 %i.bz, %i.b
  %or.cond256 = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond256, label %bb.w, label %.critedge232

bb.w:                                             ; preds = %bb.v
  %.not194 = icmp eq i32 %i.bz, 0
  br i1 %.not194, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.w
  %i.cc = add i32 %i.bv, %.0162279
  %wide.trip.count = zext nneg i32 %i.bz to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %i.cd = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ce = sub i32 %i.cc, %i.cd
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = and i32 %i.ch, 8372287
  %or.cond221 = icmp eq i32 %i.ci, 34
  br i1 %or.cond221, label %bb.x, label %._crit_edge

bb.x:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.x, %.lr.ph
  %.0178.lcssa.ph = phi i32 [ %i.bz, %bb.x ], [ %i.cd, %.lr.ph ]
  %i.cj = and i32 %.0178.lcssa.ph, 1
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %.critedge, label %.critedge232

default.unreachable306:                           ; preds = %bb.g
  unreachable

.critedge:                                        ; preds = %bb.r, %bb.q, %bb.o, %bb.n, %checkArgMode.exit, %bb.w, %._crit_edge, %bb.u, %bb.s, %bb.t, %bb.g
  %.0180 = phi i32 [ 0, %bb.w ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.g ], [ 0, %bb.u ], [ 0, %._crit_edge ], [ %i.bi, %checkArgMode.exit ], [ 0, %bb.n ], [ %i.bi, %bb.o ], [ %i.bi, %bb.q ], [ %i.bi, %bb.r ] ; 7 uses
  %.0179 = phi i32 [ %i.bv, %bb.w ], [ %i.bp, %bb.t ], [ %i.bp, %bb.s ], [ 0, %bb.g ], [ %i.bv, %bb.u ], [ %i.bv, %._crit_edge ], [ %i.ba, %checkArgMode.exit ], [ %i.ba, %bb.n ], [ %i.ba, %bb.o ], [ %i.ba, %bb.q ], [ %i.ba, %bb.r ] ; 16 uses
  %i.cl = and i8 %i.ax, 64
  %.not197 = icmp ne i8 %i.cl, 0
  %i.cm = icmp eq i32 %i.as, %2
  %or.cond222 = and i1 %i.cm, %.not197
  %.1169 = select i1 %or.cond222, i32 %.0162279, i32 %.0168278 ; 17 uses
  %.not198 = icmp sgt i8 %i.ax, -1
  br i1 %.not198, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.cn = add nsw i32 %.0162279, 2
  %i.co = icmp slt i32 %i.cn, %i.b
  br i1 %i.co, label %bb.z, label %.critedge232

bb.z:                                             ; preds = %bb.y
  %i.cp = getelementptr i8, ptr %i.ao, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !4
  %i.cr = and i32 %i.cq, 63
  %i.cs = icmp eq i32 %i.cr, 22
  br i1 %i.cs, label %bb.aa, label %.critedge232

bb.aa:                                            ; preds = %bb.z, %.critedge
  switch i32 %i.aq, label %bb.bg [
    i32 2, label %bb.ab
    i32 3, label %bb.ae
    i32 4, label %bb.af
    i32 8, label %bb.af
    i32 5, label %bb.ag
    i32 7, label %bb.ag
    i32 11, label %bb.ah
    i32 21, label %bb.aj
    i32 33, label %bb.ak
    i32 31, label %bb.an
    i32 32, label %bb.an
    i32 22, label %bb.ao
    i32 28, label %bb.ap
    i32 29, label %bb.ap
    i32 30, label %bb.au
    i32 34, label %bb.aw
    i32 36, label %bb.az
    i32 37, label %bb.bc
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ct = icmp eq i32 %.0180, 1
  br i1 %i.ct, label %bb.ac, label %bb.bg

bb.ac:                                            ; preds = %bb.ab
  %i.cu = add nsw i32 %.0162279, 2
  %i.cv = icmp slt i32 %i.cu, %i.b
  br i1 %i.cv, label %bb.ad, label %.critedge232

bb.ad:                                            ; preds = %bb.ac
  %i.cw = getelementptr i8, ptr %i.ao, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !4
  %i.cy = and i32 %i.cx, 8372287
  %or.cond223 = icmp eq i32 %i.cy, 34
  br i1 %or.cond223, label %.critedge232, label %bb.bg

bb.ae:                                            ; preds = %bb.aa
  %.not216 = icmp sgt i32 %i.as, %2
  %.not217 = icmp sgt i32 %2, %.0179
  %or.cond224 = select i1 %.not216, i1 true, i1 %.not217
  %spec.select233 = select i1 %or.cond224, i32 %.1169, i32 %.0162279
  br label %bb.bg

bb.af:                                            ; preds = %bb.aa, %bb.aa
  %i.cz = icmp slt i32 %.0179, %i.t
  br i1 %i.cz, label %bb.bg, label %.critedge232

bb.ag:                                            ; preds = %bb.aa, %bb.aa
  %i.da = load ptr, ptr %i.al, align 8, !tbaa !71
  %i.db = sext i32 %.0179 to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr %i.da, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !34
  %i.df = icmp eq i32 %i.de, 4
  br i1 %i.df, label %bb.bg, label %.critedge232

bb.ah:                                            ; preds = %bb.aa
  %i.dg = add nuw nsw i32 %i.as, 1                ; 2 uses
  %i.dh = icmp samesign ult i32 %i.dg, %i.f
  br i1 %i.dh, label %bb.ai, label %.critedge232

bb.ai:                                            ; preds = %bb.ah
  %i.di = icmp eq i32 %2, %i.dg
  %spec.select = select i1 %i.di, i32 %.0162279, i32 %.1169
  br label %bb.bg

bb.aj:                                            ; preds = %bb.aa
  %i.dj = icmp slt i32 %.0179, %.0180
  br i1 %i.dj, label %bb.bg, label %.critedge232

bb.ak:                                            ; preds = %bb.aa
  %.not214 = icmp eq i32 %.0180, 0
  br i1 %.not214, label %.critedge232, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dk = add nuw nsw i32 %i.as, 2                ; 2 uses
  %i.dl = add nuw nsw i32 %.0180, %i.dk
  %i.dm = icmp samesign ult i32 %i.dl, %i.f
  br i1 %i.dm, label %bb.am, label %.critedge232

bb.am:                                            ; preds = %bb.al
  %.not215 = icmp slt i32 %2, %i.dk
  %spec.select225 = select i1 %.not215, i32 %.1169, i32 %.0162279
  br label %bb.bg

bb.an:                                            ; preds = %bb.aa, %bb.aa
  %i.dn = add nuw nsw i32 %i.as, 3
  %i.do = icmp samesign ult i32 %i.dn, %i.f
  br i1 %i.do, label %bb.ao, label %.critedge232

bb.ao:                                            ; preds = %bb.an, %bb.aa
  %i.dp = add nsw i32 %.0162279, 1
  %i.dq = add nsw i32 %i.dp, %.0179               ; 2 uses
  %i.dr = icmp sge i32 %.0162279, %i.dq
  %.not213 = icmp sgt i32 %i.dq, %1
  %i.ds = or i1 %i.dr, %.not213
  %or.cond227 = select i1 %.not204, i1 true, i1 %i.ds
  %i.dt = select i1 %or.cond227, i32 0, i32 %.0179
  %.1163 = add nsw i32 %i.dt, %.0162279
  br label %bb.bg

bb.ap:                                            ; preds = %bb.aa, %bb.aa
  %.not206 = icmp ne i32 %.0179, 0
  %i.du = add nsw i32 %.0179, %i.as
  %.not207 = icmp sgt i32 %i.du, %i.f
  %or.cond257 = select i1 %.not206, i1 %.not207, i1 false
  br i1 %or.cond257, label %.critedge232, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dv = icmp eq i32 %.0180, 0
  br i1 %i.dv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dw = getelementptr i8, ptr %i.ao, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !4  ; 2 uses
  %i.dy = and i32 %i.dx, 63
  switch i32 %i.dy, label %.critedge232 [
    i32 28, label %luaG_checkopenop.exit
    i32 29, label %luaG_checkopenop.exit
    i32 30, label %luaG_checkopenop.exit
    i32 34, label %luaG_checkopenop.exit
  ]

luaG_checkopenop.exit:                            ; preds = %bb.ar, %bb.ar, %bb.ar, %bb.ar
  %i.dz = icmp ugt i32 %i.dx, 8388607
  br i1 %i.dz, label %.critedge232, label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.ea = add nsw i32 %.0180, -1                  ; 2 uses
  %.not208 = icmp ne i32 %i.ea, 0
  %i.eb = add nuw nsw i32 %i.ea, %i.as
  %.not209 = icmp sgt i32 %i.eb, %i.f
  %or.cond258 = select i1 %.not208, i1 %.not209, i1 false
  br i1 %or.cond258, label %.critedge232, label %bb.at

bb.at:                                            ; preds = %bb.as, %luaG_checkopenop.exit
  %.not211 = icmp slt i32 %2, %i.as
  %spec.select228 = select i1 %.not211, i32 %.0168278, i32 %.0162279
  br label %bb.bg

bb.au:                                            ; preds = %bb.aa
  %i.ec = icmp sgt i32 %.0179, 1
  br i1 %i.ec, label %bb.av, label %bb.bg

bb.av:                                            ; preds = %bb.au
  %i.ed = add nsw i32 %i.as, -1
  %i.ee = add nsw i32 %i.ed, %.0179
  %.not205 = icmp sgt i32 %i.ee, %i.f
  br i1 %.not205, label %.critedge232, label %bb.bg

bb.aw:                                            ; preds = %bb.aa
  %i.ef = icmp slt i32 %.0179, 1
  %i.eg = add nuw nsw i32 %.0179, %i.as
  %i.eh = icmp slt i32 %i.eg, %i.f
  %or.cond260 = select i1 %i.ef, i1 true, i1 %i.eh
  br i1 %or.cond260, label %bb.ax, label %.critedge232

bb.ax:                                            ; preds = %bb.aw
  %i.ei = icmp eq i32 %.0180, 0
  br i1 %i.ei, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.ej = add nsw i32 %.0162279, 1                ; 2 uses
  %i.ek = icmp slt i32 %i.ej, %i.ag
  br i1 %i.ek, label %bb.bg, label %.critedge232

bb.az:                                            ; preds = %bb.aa
  %i.el = load i32, ptr %i.aj, align 8, !tbaa !72
  %i.em = icmp slt i32 %.0179, %i.el
  br i1 %i.em, label %bb.ba, label %.critedge232

bb.ba:                                            ; preds = %bb.az
  %i.en = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.eo = sext i32 %.0179 to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !74
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 112
  %i.es = load i8, ptr %i.er, align 8, !tbaa !68  ; 2 uses
  %i.et = zext i8 %i.es to i32                    ; 2 uses
  %i.eu = add nsw i32 %.0162279, %i.et            ; 2 uses
  %i.ev = icmp slt i32 %i.eu, %i.b
  br i1 %i.ev, label %.preheader, label %.critedge232

.preheader:                                       ; preds = %bb.ba
  %.not203274 = icmp eq i8 %i.es, 0
  br i1 %.not203274, label %._crit_edge277, label %.lr.ph276.preheader

.lr.ph276.preheader:                              ; preds = %.preheader
  %i.ew = add nuw nsw i32 %i.et, 1
  %wide.trip.count291 = zext nneg i32 %i.ew to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.aa, i64 %i.an
  br label %.lr.ph276

bb.bb:                                            ; preds = %.lr.ph276
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count291
  br i1 %exitcond292.not, label %._crit_edge277, label %.lr.ph276, !llvm.loop !76

.lr.ph276:                                        ; preds = %.lr.ph276.preheader, %bb.bb
  %indvars.iv288 = phi i64 [ 1, %.lr.ph276.preheader ], [ %indvars.iv.next289, %bb.bb ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv288
  %i.ex = load i32, ptr %gep, align 4, !tbaa !4
  %i.ey = and i32 %i.ex, 59
  %or.cond = icmp eq i32 %i.ey, 0
  br i1 %or.cond, label %bb.bb, label %.critedge232

._crit_edge277:                                   ; preds = %bb.bb, %.preheader
  %spec.select229 = select i1 %.not204, i32 %.0162279, i32 %i.eu
  br label %bb.bg

bb.bc:                                            ; preds = %bb.aa
  br i1 %or.cond230, label %bb.bd, label %.critedge232

bb.bd:                                            ; preds = %bb.bc
  %i.ez = icmp eq i32 %.0179, 0
  br i1 %i.ez, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fa = getelementptr i8, ptr %i.ao, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !4  ; 2 uses
  %i.fc = and i32 %i.fb, 63
  switch i32 %i.fc, label %.critedge232 [
    i32 28, label %luaG_checkopenop.exit243
    i32 29, label %luaG_checkopenop.exit243
    i32 30, label %luaG_checkopenop.exit243
    i32 34, label %luaG_checkopenop.exit243
  ]

luaG_checkopenop.exit243:                         ; preds = %bb.be, %bb.be, %bb.be, %bb.be
  %i.fd = icmp ugt i32 %i.fb, 8388607
  br i1 %i.fd, label %.critedge232, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.fe = add nsw i32 %.0179, -1
  %.old = add nsw i32 %i.fe, %i.as
  %.not202.old = icmp sgt i32 %.old, %i.f
  br i1 %.not202.old, label %.critedge232, label %bb.bg

bb.bg:                                            ; preds = %luaG_checkopenop.exit243, %._crit_edge277, %bb.ae, %bb.at, %bb.am, %bb.ai, %bb.aa, %bb.bf, %bb.ax, %bb.ay, %bb.au, %bb.av, %bb.aj, %bb.ag, %bb.af, %bb.ab, %bb.ad, %bb.ao
  %.2170 = phi i32 [ %.1169, %bb.aa ], [ %.1169, %bb.ad ], [ %.1169, %bb.bf ], [ %.1169, %bb.ab ], [ %.1169, %bb.au ], [ %.1169, %._crit_edge277 ], [ %.1169, %bb.av ], [ %.1169, %bb.af ], [ %.1169, %bb.ag ], [ %.1169, %bb.ax ], [ %spec.select233, %bb.ae ], [ %.1169, %bb.aj ], [ %spec.select, %bb.ai ], [ %.1169, %bb.ay ], [ %.1169, %bb.ao ], [ %spec.select225, %bb.am ], [ %spec.select228, %bb.at ], [ %.1169, %luaG_checkopenop.exit243 ] ; 2 uses
  %.4166 = phi i32 [ %.0162279, %bb.aa ], [ %.0162279, %bb.ad ], [ %.0162279, %bb.bf ], [ %.0162279, %bb.ab ], [ %.0162279, %bb.au ], [ %spec.select229, %._crit_edge277 ], [ %.0162279, %bb.av ], [ %.0162279, %bb.af ], [ %.0162279, %bb.ag ], [ %.0162279, %bb.ax ], [ %.0162279, %bb.ae ], [ %.0162279, %bb.aj ], [ %.0162279, %bb.ai ], [ %i.ej, %bb.ay ], [ %.1163, %bb.ao ], [ %.0162279, %bb.am ], [ %.0162279, %bb.at ], [ %.0162279, %luaG_checkopenop.exit243 ]
  %i.ff = add nsw i32 %.4166, 1                   ; 2 uses
  %i.fg = icmp slt i32 %i.ff, %1
  br i1 %i.fg, label %bb.f, label %._crit_edge282, !llvm.loop !77

._crit_edge282:                                   ; preds = %bb.bg, %bb.e
  %.0168.lcssa = phi i32 [ %i.ag, %bb.e ], [ %.2170, %bb.bg ]
  %i.fh = sext i32 %.0168.lcssa to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !4
  br label %.critedge232

.critedge232:                                     ; preds = %bb.aw, %bb.as, %bb.ap, %bb.be, %bb.ba, %bb.az, %bb.ar, %bb.q, %bb.r, %bb.o, %bb.n, %bb.l, %bb.m, %bb.j, %bb.i, %bb.ac, %bb.z, %bb.ad, %bb.af, %bb.ag, %bb.ah, %bb.ak, %bb.aj, %bb.al, %luaG_checkopenop.exit, %bb.an, %bb.av, %bb.ay, %luaG_checkopenop.exit243, %bb.bc, %bb.y, %._crit_edge, %bb.t, %bb.f, %bb.v, %bb.bf, %.lr.ph276, %bb.b, %bb.a, %bb.c, %bb.d, %precheck.exit, %._crit_edge282
  %.10 = phi i32 [ 0, %precheck.exit ], [ %i.fj, %._crit_edge282 ], [ 0, %.lr.ph276 ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.bf ], [ 0, %bb.v ], [ 0, %bb.f ], [ 0, %bb.t ], [ 0, %._crit_edge ], [ 0, %bb.y ], [ 0, %bb.bc ], [ 0, %luaG_checkopenop.exit243 ], [ 0, %bb.ay ], [ 0, %bb.av ], [ 0, %bb.an ], [ 0, %luaG_checkopenop.exit ], [ 0, %bb.al ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.af ], [ 0, %bb.ad ], [ 0, %bb.z ], [ 0, %bb.ac ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.ar ], [ 0, %bb.az ], [ 0, %bb.ba ], [ 0, %bb.be ], [ 0, %bb.ap ], [ 0, %bb.as ], [ 0, %bb.aw ]
  ret i32 %.10
}

; Function Attrs: nounwind uwtable
define hidden void @luaG_typeerror(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !34
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr @luaT_typenames, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !79   ; 2 uses
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %.lr.ph.i, label %.thread

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.07.i, i64 16 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %.thread, !llvm.loop !80

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.07.i = phi ptr [ %i.m, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.o = icmp eq ptr %1, %.07.i
  br i1 %i.o, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.r = ptrtoint ptr %1 to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 4
  %i.v = trunc i64 %i.u to i32
  %i.w = call fastcc ptr @getobjname(ptr noundef %0, ptr noundef nonnull %i.h, i32 noundef %i.v, ptr noundef nonnull %i.a) ; 2 uses
  %.not15 = icmp eq ptr %i.w, null
  br i1 %.not15, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !78
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef %2, ptr noundef nonnull %i.w, ptr noundef %i.x, ptr noundef %i.f)
  br label %bb.e

.thread:                                          ; preds = %bb.b, %bb.a, %bb.c
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %2, ptr noundef %i.f)
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @getobjname(ptr noundef readonly captures(none) %0, ptr noundef captures(address) %1, i32 noundef %2, ptr noundef writeonly captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.g, %bb.a
  %.tr56 = phi i32 [ %2, %bb.a ], [ %i.am, %bb.g ] ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34
  %i.g = icmp eq i32 %i.f, 6
  br i1 %i.g, label %bb.b, label %.thread

bb.b:                                             ; preds = %tailrecurse
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.j = load i8, ptr %i.i, align 2, !tbaa !27
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 7 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.n = icmp eq ptr %1, %i.m
  br i1 %i.n, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !35
  br label %currentpc.exit

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  store ptr %i.o, ptr %.phi.trans.insert.i, align 8, !tbaa !35
  %.pre9.i = load ptr, ptr %i.d, align 8, !tbaa !27
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre9.i, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !27
  br label %currentpc.exit

currentpc.exit:                                   ; preds = %._crit_edge.i, %bb.d
  %i.p = phi ptr [ %i.l, %._crit_edge.i ], [ %.pre, %bb.d ]
  %i.q = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.o, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 2
  %i.x = trunc i64 %i.w to i32
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  %i.z = add nsw i32 %.tr56, 1
  %i.aa = tail call ptr @luaF_getlocalname(ptr noundef %i.l, i32 noundef %i.z, i32 noundef %i.y) #11 ; 2 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !78
  %.not45 = icmp eq ptr %i.aa, null
  br i1 %.not45, label %bb.e, label %.thread

bb.e:                                             ; preds = %currentpc.exit
  %i.ab = tail call fastcc i32 @symbexec(ptr noundef %i.l, i32 noundef %i.y, i32 noundef %.tr56) ; 9 uses
  %i.ac = and i32 %i.ab, 63
  switch i32 %i.ac, label %.thread [
    i32 5, label %bb.f
    i32 0, label %bb.g
    i32 6, label %bb.h
    i32 4, label %bb.k
    i32 11, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  %i.ad = lshr i32 %i.ab, 14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !71
  %i.ag = zext nneg i32 %i.ad to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  br label %.thread.sink.split

bb.g:                                             ; preds = %bb.e
  %i.ak = lshr i32 %i.ab, 6
  %i.al = and i32 %i.ak, 255
  %i.am = lshr i32 %i.ab, 23                      ; 2 uses
  %.not47 = icmp samesign ult i32 %i.am, %i.al
  br i1 %.not47, label %tailrecurse, label %.thread

bb.h:                                             ; preds = %bb.e
  %i.an = and i32 %i.ab, 4194304
  %.not.i48.not.not = icmp eq i32 %i.an, 0
  br i1 %.not.i48.not.not, label %.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = lshr i32 %i.ab, 14
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !71
  %i.ar = and i32 %i.ao, 255
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !34
  %i.aw = icmp eq i32 %i.av, 4
  br i1 %i.aw, label %bb.j, label %.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  br label %.thread.sink.split

bb.k:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !82 ; 2 uses
  %.not46 = icmp eq ptr %i.ba, null
  br i1 %.not46, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = lshr i32 %i.ab, 23
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !83
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  br label %.thread.sink.split

bb.m:                                             ; preds = %bb.e
  %i.bg = and i32 %i.ab, 4194304
  %.not.i50.not.not = icmp eq i32 %i.bg, 0
  br i1 %.not.i50.not.not, label %.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = lshr i32 %i.ab, 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !71
  %i.bk = and i32 %i.bh, 255
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !34
  %i.bp = icmp eq i32 %i.bo, 4
  br i1 %i.bp, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f
  %.sink = phi ptr [ @.str.17, %bb.h ], [ @.str.17, %bb.k ], [ %i.aj, %bb.f ], [ %i.ay, %bb.j ], [ @.str.17, %bb.i ], [ %i.bf, %bb.l ], [ %i.br, %bb.o ], [ @.str.17, %bb.n ], [ @.str.17, %bb.m ]
  %.3.ph = phi ptr [ @.str.16, %bb.h ], [ @.str.18, %bb.k ], [ @.str.15, %bb.f ], [ @.str.16, %bb.j ], [ @.str.16, %bb.i ], [ @.str.18, %bb.l ], [ @.str.19, %bb.o ], [ @.str.19, %bb.n ], [ @.str.19, %bb.m ]
  store ptr %.sink, ptr %3, align 8, !tbaa !78
  br label %.thread

.thread:                                          ; preds = %currentpc.exit, %tailrecurse, %bb.b, %bb.g, %bb.e, %.thread.sink.split
  %.3 = phi ptr [ %.3.ph, %.thread.sink.split ], [ null, %bb.b ], [ null, %bb.g ], [ null, %bb.e ], [ null, %tailrecurse ], [ @.str.14, %currentpc.exit ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define hidden void @luaG_runerror(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [60 x i8], align 16               ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.b = call ptr @luaO_pushvfstring(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !34
  %i.i = icmp eq i32 %i.h, 6
  br i1 %i.i, label %bb.b, label %addinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.l = load i8, ptr %i.k, align 2, !tbaa !27
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %currentpc.exit.i.i, label %addinfo.exit

currentpc.exit.i.i:                               ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.n, ptr %i.o, align 8, !tbaa !35
  %.pre9.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37
  %i.t = ptrtoint ptr %i.n to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 2                   ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = add nuw nsw i64 %i.w, 4294967295
  %i.z = icmp slt i32 %i.x, 1
  br i1 %i.z, label %getluaproto.exit.i, label %bb.c

bb.c:                                             ; preds = %currentpc.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %getluaproto.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = and i64 %i.y, 4294967295
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  br label %getluaproto.exit.i

getluaproto.exit.i:                               ; preds = %bb.d, %bb.c, %currentpc.exit.i.i
  %.0.i.ph.i = phi i32 [ -1, %currentpc.exit.i.i ], [ 0, %bb.c ], [ %i.ae, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !49
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  call void @luaO_chunkid(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ah, i64 noundef 60) #11
  %i.ai = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef nonnull %0, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.a, i32 noundef %.0.i.ph.i, ptr noundef %i.b) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %addinfo.exit

addinfo.exit:                                     ; preds = %bb.a, %bb.b, %getluaproto.exit.i
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @luaG_errormsg(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaG_concaterror(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !34
  %.off = add i32 %i.c, -3
  %switch = icmp ult i32 %.off, 2
  %spec.select = select i1 %switch, ptr %2, ptr %1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @luaT_typenames, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23   ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !79   ; 2 uses
  %i.n = icmp ult ptr %i.k, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %.thread.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.m
  br i1 %i.p, label %.lr.ph.i.i, label %.thread.i, !llvm.loop !80

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.07.i.i = phi ptr [ %i.o, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  %i.q = icmp eq ptr %spec.select, %.07.i.i
  br i1 %i.q, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81
  %i.t = ptrtoint ptr %spec.select to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 4
  %i.x = trunc i64 %i.w to i32
  %i.y = call fastcc ptr @getobjname(ptr noundef %0, ptr noundef nonnull %i.j, i32 noundef %i.x, ptr noundef nonnull %i.a) ; 2 uses
  %.not15.i = icmp eq ptr %i.y, null
  br i1 %.not15.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !78
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.y, ptr noundef %i.z, ptr noundef %i.h)
  br label %luaG_typeerror.exit

.thread.i:                                        ; preds = %bb.b, %bb.c, %bb.a
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %i.h)
  br label %luaG_typeerror.exit

luaG_typeerror.exit:                              ; preds = %bb.d, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaG_aritherror(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %struct.lua_TValue, align 8         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.b = call ptr @luaV_tonumber(ptr noundef %1, ptr noundef nonnull %3) #11
  %i.c = icmp eq ptr %i.b, null
  %spec.select = select i1 %i.c, ptr %1, ptr %2   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @luaT_typenames, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23   ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !79   ; 2 uses
  %i.n = icmp ult ptr %i.k, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %.thread.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.m
  br i1 %i.p, label %.lr.ph.i.i, label %.thread.i, !llvm.loop !80

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.07.i.i = phi ptr [ %i.o, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  %i.q = icmp eq ptr %spec.select, %.07.i.i
  br i1 %i.q, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81
  %i.t = ptrtoint ptr %spec.select to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 4
  %i.x = trunc i64 %i.w to i32
  %i.y = call fastcc ptr @getobjname(ptr noundef %0, ptr noundef nonnull %i.j, i32 noundef %i.x, ptr noundef nonnull %i.a) ; 2 uses
  %.not15.i = icmp eq ptr %i.y, null
  br i1 %.not15.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !78
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.y, ptr noundef %i.z, ptr noundef %i.h)
  br label %luaG_typeerror.exit

.thread.i:                                        ; preds = %bb.b, %bb.c, %bb.a
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, ptr noundef %i.h)
  br label %luaG_typeerror.exit

luaG_typeerror.exit:                              ; preds = %bb.d, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

declare hidden ptr @luaV_tonumber(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden noundef i32 @luaG_ordererror(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr @luaT_typenames, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !34
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr @luaT_typenames, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !27
  %i.o = icmp eq i8 %i.l, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.e, ptr noundef nonnull %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden void @luaG_errormsg(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i64, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 %i.b ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !34
  %i.h = icmp eq i32 %i.g, 6
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @luaD_throw(ptr noundef nonnull %0, i32 noundef 5) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46   ; 4 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  store i64 %i.l, ptr %i.j, align 8, !tbaa !27
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.n, ptr %i.o, align 8, !tbaa !34
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !46   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -16
  %i.r = load i64, ptr %i.e, align 8, !tbaa !27
  store i64 %i.r, ptr %i.q, align 8, !tbaa !27
  %i.s = load i32, ptr %i.f, align 8, !tbaa !34
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 -8
  store i32 %i.s, ptr %i.t, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !46   ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp slt i64 %i.z, 17
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 1) #11
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !46
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ab = phi ptr [ %i.w, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !46
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -16
  tail call void @luaD_call(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, i32 noundef 1) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  tail call void @luaD_throw(ptr noundef nonnull %0, i32 noundef 2) #11
  ret void
}

declare hidden void @luaD_throw(ptr noundef, i32 noundef) local_unnamed_addr #5

declare hidden void @luaD_call(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

declare hidden ptr @luaO_pushvfstring(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

declare hidden ptr @luaF_getlocalname(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare hidden void @luaO_chunkid(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare hidden ptr @luaH_new(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare hidden ptr @luaH_setnum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare hidden ptr @luaO_pushfstring(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 112}
!9 = !{!"lua_State", !10, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !12, i64 16, !12, i64 24, !13, i64 32, !14, i64 40, !15, i64 48, !12, i64 56, !12, i64 64, !14, i64 72, !14, i64 80, !5, i64 88, !5, i64 92, !16, i64 96, !16, i64 98, !6, i64 100, !6, i64 101, !5, i64 104, !5, i64 108, !11, i64 112, !17, i64 120, !17, i64 136, !10, i64 152, !10, i64 160, !18, i64 168, !19, i64 176}
!10 = !{!"p1 _ZTS8GCObject", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS10lua_TValue", !11, i64 0}
!13 = !{!"p1 _ZTS12global_State", !11, i64 0}
!14 = !{!"p1 _ZTS8CallInfo", !11, i64 0}
!15 = !{!"p1 int", !11, i64 0}
!16 = !{!"short", !6, i64 0}
!17 = !{!"lua_TValue", !6, i64 0, !5, i64 8}
!18 = !{!"p1 _ZTS11lua_longjmp", !11, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!9, !5, i64 104}
!21 = !{!9, !5, i64 108}
!22 = !{!9, !6, i64 100}
!23 = !{!9, !14, i64 40}
!24 = !{!9, !14, i64 80}
!25 = !{!26, !12, i64 8}
!26 = !{!"CallInfo", !12, i64 0, !12, i64 8, !12, i64 16, !15, i64 24, !5, i64 32, !5, i64 36}
!27 = !{!6, !6, i64 0}
!28 = !{!26, !5, i64 36}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!32, !5, i64 116}
!32 = !{!"lua_Debug", !5, i64 0, !33, i64 8, !33, i64 16, !33, i64 24, !33, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !6, i64 56, !5, i64 116}
!33 = !{!"p1 omnipotent char", !11, i64 0}
!34 = !{!17, !5, i64 8}
!35 = !{!26, !15, i64 24}
!36 = !{!9, !15, i64 48}
!37 = !{!38, !15, i64 24}
!38 = !{!"Proto", !10, i64 0, !6, i64 8, !6, i64 9, !12, i64 16, !15, i64 24, !39, i64 32, !15, i64 40, !41, i64 48, !42, i64 56, !43, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !10, i64 104, !6, i64 112, !6, i64 113, !6, i64 114, !6, i64 115}
!39 = !{!"p2 _ZTS5Proto", !40, i64 0}
!40 = !{!"any p2 pointer", !11, i64 0}
!41 = !{!"p1 _ZTS6LocVar", !11, i64 0}
!42 = !{!"p2 _ZTS7TString", !40, i64 0}
!43 = !{!"p1 _ZTS7TString", !11, i64 0}
!44 = !{!26, !12, i64 0}
!45 = !{!12, !12, i64 0}
!46 = !{!9, !12, i64 16}
!47 = !{!32, !33, i64 32}
!48 = !{!32, !5, i64 48}
!49 = !{!38, !43, i64 64}
!50 = !{!38, !5, i64 96}
!51 = !{!38, !5, i64 100}
!52 = !{!32, !5, i64 52}
!53 = !{!32, !33, i64 24}
!54 = !{!38, !15, i64 40}
!55 = !{!32, !5, i64 40}
!56 = !{!32, !5, i64 44}
!57 = !{!32, !33, i64 16}
!58 = !{!32, !33, i64 8}
!59 = distinct !{!59, !30}
!60 = !{!9, !12, i64 56}
!61 = !{!38, !5, i64 84}
!62 = distinct !{!62, !30}
!63 = !{!38, !5, i64 80}
!64 = !{!38, !6, i64 115}
!65 = !{!38, !6, i64 113}
!66 = !{!38, !6, i64 114}
!67 = !{!38, !5, i64 72}
!68 = !{!38, !6, i64 112}
!69 = !{!38, !5, i64 76}
!70 = distinct !{!70, !30}
!71 = !{!38, !12, i64 16}
!72 = !{!38, !5, i64 88}
!73 = !{!38, !39, i64 32}
!74 = !{!75, !75, i64 0}
!75 = !{!"p1 _ZTS5Proto", !11, i64 0}
!76 = distinct !{!76, !30}
!77 = distinct !{!77, !30}
!78 = !{!33, !33, i64 0}
!79 = !{!26, !12, i64 16}
!80 = distinct !{!80, !30}
!81 = !{!9, !12, i64 24}
!82 = !{!38, !42, i64 56}
!83 = !{!43, !43, i64 0}
!84 = !{!9, !19, i64 176}
!85 = !{!9, !12, i64 64}
end_hunk_0
