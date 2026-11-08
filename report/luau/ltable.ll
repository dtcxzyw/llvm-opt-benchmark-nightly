Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/ltable?download=true
inline.NumInlined: 33
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_TValue = type { %union.Value, [1 x i32], i32 }
%union.Value = type { ptr }

@luaH_dummynode = dso_local constant { %struct.lua_TValue, { %union.Value, [1 x i32], i8, i8, i8, i8 } } zeroinitializer, align 8
@luaO_nilobject_ = external hidden global %struct.lua_TValue, align 8
@.str = private unnamed_addr constant [19 x i8] c"table index is nil\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"table index is NaN\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"table index contains NaN\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"invalid key to 'next'\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"table overflow\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 2) i32 @_Z9luaH_nextP9lua_StateP8LuaTableP10lua_TValue(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  switch i32 %i.b, label %.thread.i [
    i32 0, label %._ZL9findindexP9lua_StateP8LuaTableP10lua_TValue.exit_crit_edge
    i32 3, label %bb.b
  ]

._ZL9findindexP9lua_StateP8LuaTableP10lua_TValue.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %_ZL9findindexP9lua_StateP8LuaTableP10lua_TValue.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load double, ptr %2, align 8, !tbaa !22  ; 2 uses
  %i.d = fptosi double %i.c to i32                ; 4 uses
  %i.e = sitofp i32 %i.d to double
  %i.f = fcmp oeq double %i.c, %i.e
  %i.g = icmp sgt i32 %i.d, 0
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp slt i32 %i.i, %i.d
  br i1 %.not.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.d, -1
  br label %_ZL9findindexP9lua_StateP8LuaTableP10lua_TValue.exit

.thread.i:                                        ; preds = %bb.c, %bb.b, %bb.a
  %i.k = tail call fastcc noundef ptr @_ZL12mainpositionPK8LuaTablePK10lua_TValue(ptr noundef readonly %1, ptr noundef nonnull %2) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = tail call noundef i32 @_Z16luaO_rawequalKeyPK4TKeyPK10lua_TValue(ptr noundef nonnull %i.l, ptr noundef nonnull %2)
  %.not2729.i = icmp eq i32 %i.m, 0
  br i1 %.not2729.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.thread.i, %bb.h
  %i.n = phi ptr [ %i.al, %bb.h ], [ %i.l, %.thread.i ]
  %.030.i = phi ptr [ %i.ak, %bb.h ], [ %i.k, %.thread.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.030.i, i64 28
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = and i32 %i.p, 15
  %i.r = icmp eq i32 %i.q, 14
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = load i32, ptr %i.a, align 4, !tbaa !14
  %i.t = icmp sgt i32 %i.s, 5
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.v = load ptr, ptr %2, align 8, !tbaa !22
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %._crit_edge.i, label %bb.g

._crit_edge.i:                                    ; preds = %bb.h, %bb.f, %.thread.i
  %.0.lcssa.i = phi ptr [ %i.k, %.thread.i ], [ %i.ak, %bb.h ], [ %.030.i, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23
  %i.z = ptrtoint ptr %.0.lcssa.i to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 5
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !21 ; 2 uses
  %i.ag = add nsw i32 %i.af, %i.ad
  br label %_ZL9findindexP9lua_StateP8LuaTableP10lua_TValue.exit

bb.g:                                             ; preds = %bb.f, %bb.e, %.lr.ph.i
  %i.ah = ashr i32 %i.p, 4                        ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds [32 x i8], ptr %.030.i, i64 %i.aj ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.am = tail call noundef i32 @_Z16luaO_rawequalKeyPK4TKeyPK10lua_TValue(ptr noundef nonnull %i.al, ptr noundef nonnull %2)
  %.not27.i = icmp eq i32 %i.am, 0
  br i1 %.not27.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !65

bb.i:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @_Z14luaG_runerrorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.3) #10
  unreachable

_ZL9findindexP9lua_StateP8LuaTableP10lua_TValue.exit: ; preds = %._ZL9findindexP9lua_StateP8LuaTableP10lua_TValue.exit_crit_edge, %bb.d, %._crit_edge.i
  %i.an = phi i32 [ %i.af, %._crit_edge.i ], [ %i.i, %bb.d ], [ %.pre, %._ZL9findindexP9lua_StateP8LuaTableP10lua_TValue.exit_crit_edge ] ; 3 uses
  %.023.i = phi i32 [ %i.ag, %._crit_edge.i ], [ %i.j, %bb.d ], [ -1, %._ZL9findindexP9lua_StateP8LuaTableP10lua_TValue.exit_crit_edge ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ap = sext i32 %.023.i to i64                 ; 2 uses
  %i.aq = sext i32 %i.an to i64                   ; 2 uses
  %3 = add i32 %.023.i, 1
  %4 = sub i32 %3, %i.an                          ; 2 uses
  %indvars.iv.next78 = add nsw i64 %i.ap, 1       ; 3 uses
  %i.ar = icmp slt i64 %indvars.iv.next78, %i.aq
  br i1 %i.ar, label %.lr.ph82.preheader, label %._crit_edge

.lr.ph82.preheader:                               ; preds = %_ZL9findindexP9lua_StateP8LuaTableP10lua_TValue.exit
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !25
  br label %.lr.ph82

bb.j:                                             ; preds = %.lr.ph82
  %indvars.iv.next58 = add i32 %indvars.iv5779, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv.next81, 1 ; 3 uses
  %i.at = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.at, label %.lr.ph82, label %._crit_edge, !llvm.loop !66

.lr.ph82:                                         ; preds = %.lr.ph82.preheader, %bb.j
  %indvars.iv.next81 = phi i64 [ %indvars.iv.next, %bb.j ], [ %indvars.iv.next78, %.lr.ph82.preheader ] ; 4 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %bb.j ], [ %i.ap, %.lr.ph82.preheader ]
  %indvars.iv5779 = phi i32 [ %indvars.iv.next58, %bb.j ], [ %4, %.lr.ph82.preheader ]
  %i.au = getelementptr inbounds [16 x i8], ptr %i.as, i64 %indvars.iv.next81
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !14
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.j, label %bb.k, !llvm.loop !66

bb.k:                                             ; preds = %.lr.ph82
  %i.ay = trunc nsw i64 %indvars.iv80 to i32
  %i.az = add nsw i32 %i.ay, 2
  %i.ba = sitofp i32 %i.az to double
  store double %i.ba, ptr %2, align 8, !tbaa !22
  store i32 3, ptr %i.a, align 4, !tbaa !14
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !25
  %i.bc = getelementptr inbounds [16 x i8], ptr %i.bb, i64 %indvars.iv.next81
  br label %.loopexit.sink.split

._crit_edge:                                      ; preds = %bb.j, %_ZL9findindexP9lua_StateP8LuaTableP10lua_TValue.exit
  %indvars.iv57.lcssa = phi i32 [ %4, %_ZL9findindexP9lua_StateP8LuaTableP10lua_TValue.exit ], [ %indvars.iv.next58, %bb.j ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next78, %_ZL9findindexP9lua_StateP8LuaTableP10lua_TValue.exit ], [ %indvars.iv.next, %bb.j ]
  %i.bd = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.be = sub nsw i32 %i.bd, %i.an
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !26
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = shl nuw i32 1, %i.bh                    ; 2 uses
  %i.bj = icmp slt i32 %i.be, %i.bi
  br i1 %i.bj, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !23
  %i.bm = zext i32 %indvars.iv57.lcssa to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %i.bn = trunc nuw i64 %indvars.iv.next61 to i32
  %i.bo = icmp sgt i32 %i.bi, %i.bn
  br i1 %i.bo, label %bb.m, label %.loopexit, !llvm.loop !67

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv60 = phi i64 [ %i.bm, %.lr.ph ], [ %indvars.iv.next61, %bb.l ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %indvars.iv60 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !29
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.l, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !22
  store i64 %i.bu, ptr %2, align 8, !tbaa !22
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.bx = load i32, ptr %i.bw, align 8
  store i32 %i.bx, ptr %i.bv, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = and i32 %i.bz, 15
  store i32 %i.ca, ptr %i.a, align 4, !tbaa !14
  %i.cb = load ptr, ptr %i.bk, align 8, !tbaa !23
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.cb, i64 %indvars.iv60
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.k, %bb.n
  %.sink72 = phi ptr [ %i.cc, %bb.n ], [ %i.bc, %bb.k ]
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %.sink72, i64 16, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.loopexit.sink.split, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ 1, %.loopexit.sink.split ], [ 0, %bb.l ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_Z16luaH_resizearrayP9lua_StateP8LuaTablei(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = icmp eq ptr %i.b, @luaH_dummynode
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.e = load i8, ptr %i.d, align 2, !tbaa !26
  %i.f = zext nneg i8 %i.e to i32
  %i.g = shl nuw i32 1, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.i = tail call fastcc noundef i32 @_ZL11adjustasizeP8LuaTableiPK10lua_TValue(ptr noundef nonnull %1, i32 noundef %2, ptr noundef null)
  tail call fastcc void @_ZL6resizeP9lua_StateP8LuaTableii(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.i, i32 noundef %i.h)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZL11adjustasizeP8LuaTableiPK10lua_TValue(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not = icmp eq ptr %i.b, @luaH_dummynode       ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21
  %.fr19 = freeze i32 %i.d
  %i.e = icmp slt i32 %1, %.fr19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.fr = phi i1 [ true, %bb.a ], [ %i.e, %bb.b ]
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !14
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load double, ptr %2, align 8, !tbaa !22  ; 2 uses
  %i.j = fptosi double %i.i to i32                ; 2 uses
  %i.k = sitofp i32 %i.j to double
  %i.l = fcmp oeq double %i.i, %i.k
  %i.m = select i1 %i.l, i32 %i.j, i32 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %i.n = phi i32 [ %i.m, %bb.e ], [ -1, %bb.d ], [ -1, %bb.c ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.fr, label %.split.us, label %.critedge.peel

.critedge.peel:                                   ; preds = %bb.f
  %i.r = add nsw i32 %1, 1
  %i.s = icmp eq i32 %i.r, %i.n
  %.0.lcssa = select i1 %i.s, i32 %i.n, i32 %1
  br label %.critedge2

.split.us:                                        ; preds = %bb.f
  %i.t = sext i32 %1 to i64                       ; 2 uses
  br i1 %.not, label %.split.us.split.us, label %.split.us.split

.split.us.split.us:                               ; preds = %.split.us, %.split.us.split.us.backedge
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %.split.us.split.us.backedge ], [ %i.t, %.split.us ] ; 3 uses
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, 1 ; 2 uses
  %i.u = trunc nsw i64 %indvars.iv.next24 to i32
  %i.v = icmp eq i32 %i.n, %i.u
  br i1 %i.v, label %.split.us.split.us.backedge, label %bb.g

bb.g:                                             ; preds = %.split.us.split.us
  %i.w = load i32, ptr %i.o, align 8, !tbaa !21
  %i.x = trunc nsw i64 %indvars.iv23 to i32       ; 2 uses
  %i.y = icmp ugt i32 %i.w, %i.x
  br i1 %i.y, label %bb.h, label %_Z11luaH_getnumP8LuaTablei.exit.us.us

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.z, i64 %indvars.iv23
  br label %_Z11luaH_getnumP8LuaTablei.exit.us.us

_Z11luaH_getnumP8LuaTablei.exit.us.us:            ; preds = %bb.g, %bb.h
  %.1.i.us.us = phi ptr [ %i.aa, %bb.h ], [ @luaO_nilobject_, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.i.us.us, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !14
  %.not17.us.us = icmp eq i32 %i.ac, 0
  br i1 %.not17.us.us, label %.critedge2, label %.split.us.split.us.backedge

.split.us.split.us.backedge:                      ; preds = %_Z11luaH_getnumP8LuaTablei.exit.us.us, %.split.us.split.us
  br label %.split.us.split.us, !llvm.loop !68

.split.us.split:                                  ; preds = %.split.us, %.split.us.split.backedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.split.us.split.backedge ], [ %i.t, %.split.us ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ad = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  %i.ae = icmp eq i32 %i.n, %i.ad
  br i1 %i.ae, label %.split.us.split.backedge, label %bb.i

bb.i:                                             ; preds = %.split.us.split
  %i.af = load i32, ptr %i.o, align 8, !tbaa !21
  %i.ag = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.ah = icmp ugt i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = sitofp i32 %i.ad to double              ; 2 uses
  %.val.i.us = load i8, ptr %i.p, align 2, !tbaa !26
  %i.aj = bitcast double %i.ai to i64             ; 2 uses
  %.0.extract.trunc.i.i.us = trunc i64 %i.aj to i32
  %.4.extract.shift.i.i.us = lshr i64 %i.aj, 32
  %.4.extract.trunc.i.i.us = trunc nuw i64 %.4.extract.shift.i.i.us to i32
  %i.ak = and i32 %.4.extract.trunc.i.i.us, 2147483647 ; 2 uses
  %i.al = lshr i32 %i.ak, 18
  %i.am = xor i32 %i.al, %.0.extract.trunc.i.i.us
  %i.an = mul i32 %i.am, 1540483477               ; 2 uses
  %i.ao = lshr i32 %i.an, 22
  %i.ap = xor i32 %i.ao, %i.ak
  %i.aq = mul i32 %i.ap, 1540483477               ; 2 uses
  %i.ar = lshr i32 %i.aq, 17
  %i.as = xor i32 %i.ar, %i.an
  %i.at = mul i32 %i.as, 1540483477
  %i.au = lshr i32 %i.at, 19
  %i.av = xor i32 %i.au, %i.aq
  %i.aw = mul i32 %i.av, 1540483477
  %i.ax = zext nneg i8 %.val.i.us to i32
  %notmask.i.i.us = shl nsw i32 -1, %i.ax
  %i.ay = xor i32 %notmask.i.i.us, -1
  %i.az = and i32 %i.aw, %i.ay
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ba
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %.0.i.us = phi ptr [ %i.bb, %bb.j ], [ %i.bm, %bb.n ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.us, i64 28
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = and i32 %i.bd, 15
  %i.bf = icmp eq i32 %i.be, 3
end_hunk_0
