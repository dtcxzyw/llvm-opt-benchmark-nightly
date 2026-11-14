Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/lobject?download=true
inline.NumInlined: 7
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.Value = type { ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@luaO_nilobject_ = hidden local_unnamed_addr constant { %union.Value, i32, [4 x i8] } zeroinitializer, align 8, !guid !8
@luaO_log2.log_2 = internal unnamed_addr constant [256 x i8] c"\00\01\02\02\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08", align 16, !guid !9
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !guid !10
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1, !guid !11
@.str.2 = private unnamed_addr constant [3 x i8] c"%p\00", align 1, !guid !12
@.str.3 = private unnamed_addr constant [2 x i8] c"%\00", align 1, !guid !13
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0D\00", align 1, !guid !14
@.str.6 = private unnamed_addr constant [10 x i8] c"[string \22\00", align 1, !guid !15
@.str.7 = private unnamed_addr constant [3 x i8] c"\22]\00", align 1, !guid !16

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define hidden i32 @luaO_int2fb(i32 noundef %0) local_unnamed_addr #0 !guid !28 {
bb.a:
  %i.a = icmp ugt i32 %0, 15
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi i32 [ %i.d, %.lr.ph ], [ 0, %bb.a ]
  %.0810 = phi i32 [ %i.c, %.lr.ph ], [ %0, %bb.a ]
  %i.b = add i32 %.0810, 1                        ; 2 uses
  %i.c = lshr i32 %i.b, 1                         ; 2 uses
  %i.d = add nuw nsw i32 %.011, 1                 ; 2 uses
  %i.e = icmp ugt i32 %i.b, 31
  br i1 %i.e, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !27

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.f = shl i32 %i.d, 3
  %i.g = add i32 %i.f, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.08.lcssa = phi i32 [ %0, %bb.a ], [ %i.c, %._crit_edge.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 8, %bb.a ], [ %i.g, %._crit_edge.loopexit ]
  %i.h = icmp samesign ult i32 %.08.lcssa, 8
  %i.i = add nsw i32 %.08.lcssa, -8
  %i.j = or i32 %.0.lcssa, %i.i
  %.09 = select i1 %i.h, i32 %.08.lcssa, i32 %i.j
  ret i32 %.09
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i32 @luaO_fb2int(i32 noundef %0) local_unnamed_addr #2 !guid !29 {
bb.a:
  %i.a = lshr i32 %0, 3
  %i.b = and i32 %i.a, 31                         ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = and i32 %0, 7
  %i.e = or disjoint i32 %i.d, 8
  %i.f = add nsw i32 %i.b, -1
  %i.g = shl i32 %i.e, %i.f
  %.0 = select i1 %i.c, i32 %0, i32 %i.g
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define hidden range(i32 -2147483640, -2147483648) i32 @luaO_log2(i32 noundef %0) local_unnamed_addr #0 !guid !31 {
bb.a:
  %i.a = icmp ugt i32 %0, 255
  br i1 %i.a, label %.lr.ph.a, label %._crit_edge

.lr.ph.a:                                         ; preds = %bb.a, %.lr.ph.a
  %.07 = phi i32 [ %1, %.lr.ph.a ], [ -1, %bb.a ]
  %.056 = phi i32 [ %2, %.lr.ph.a ], [ %0, %bb.a ] ; 2 uses
  %1 = add nsw i32 %.07, 8                        ; 2 uses
  %2 = lshr i32 %.056, 8                          ; 2 uses
  %3 = icmp ugt i32 %.056, 65535
  br i1 %3, label %.lr.ph.a, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph.a, %bb.a
  %.05.lcssa = phi i32 [ %0, %bb.a ], [ %2, %.lr.ph.a ]
  %.0.lcssa = phi i32 [ -1, %bb.a ], [ %1, %.lr.ph.a ]
  %i.b = zext nneg i32 %.05.lcssa to i64
  %i.c = getelementptr inbounds nuw i8, ptr @luaO_log2.log_2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !18
  %i.e = zext i8 %i.d to i32
  %i.f = add nsw i32 %.0.lcssa, %i.e
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @luaO_rawequalObj(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 !guid !32 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  switch i32 %i.b, label %bb.f [
    i32 0, label %bb.g
    i32 3, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load double, ptr %0, align 8, !tbaa !18
  %i.f = load double, ptr %1, align 8, !tbaa !18
  %i.g = fcmp oeq double %i.e, %i.f
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.h = load i32, ptr %0, align 8, !tbaa !18
  %i.i = load i32, ptr %1, align 8, !tbaa !18
  %i.j = icmp eq i32 %i.h, %i.i
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !18
  %i.l = load ptr, ptr %1, align 8, !tbaa !18
  %i.m = icmp eq ptr %i.k, %i.l
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !18
  %i.o = load ptr, ptr %1, align 8, !tbaa !18
  %i.p = icmp eq ptr %i.n, %i.o
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.shrunk = phi i1 [ %i.m, %bb.e ], [ %i.p, %bb.f ], [ false, %bb.a ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ true, %bb.b ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 0, 2) i32 @luaO_str2d(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #4 !guid !34 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = call double @strtod(ptr noundef %0, ptr noundef nonnull %i.a) #15
  store double %i.b, ptr %1, align 8, !tbaa !22
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.d = icmp eq ptr %i.c, %0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 1, !tbaa !18    ; 2 uses
  switch i8 %i.e, label %bb.d [
    i8 120, label %bb.c
    i8 88, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = call i64 @strtoul(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 16) #15
  %i.g = uitofp i64 %i.f to double
  store double %i.g, ptr %1, align 8, !tbaa !22
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %.pre11 = load i8, ptr %.pre, align 1, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi i8 [ %i.e, %bb.b ], [ %.pre11, %bb.c ]
  %.promoted = phi ptr [ %i.c, %bb.b ], [ %.pre, %bb.c ]
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.j = tail call ptr @__ctype_b_loc() #16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader
  %i.l = phi ptr [ %.promoted, %.preheader ], [ %i.r, %bb.e ] ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !18    ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !37
  %i.q = and i16 %i.p, 8192
  %.not = icmp eq i16 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  br i1 %.not, label %bb.f, label %bb.e, !llvm.loop !33

bb.f:                                             ; preds = %bb.e
  %.not8 = icmp eq i8 %i.m, 0
  %. = zext i1 %.not8 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.a
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ], [ %., %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden nonnull ptr @luaO_pushvfstring(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #7 !guid !38 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %i.b = alloca [40 x i8], align 16               ; 5 uses
  %i.c = alloca [3 x i8], align 1                 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 36 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.f = tail call ptr @luaS_newlstr(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef 0) #15
  store ptr %i.f, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 4, ptr %i.g, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp slt i64 %i.m, 17
  br i1 %i.n, label %bb.b, label %pushstr.exit

bb.b:                                             ; preds = %bb.a
  tail call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 1) #15
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !47
  br label %pushstr.exit

pushstr.exit:                                     ; preds = %bb.a, %bb.b
  %i.o = phi ptr [ %i.j, %bb.a ], [ %.pre.i, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  store ptr %i.p, ptr %i.d, align 8, !tbaa !47
  %i.q = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 37) #17 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %pushstr.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.ak
  %i.y = phi ptr [ %i.p, %.lr.ph ], [ %i.fp, %bb.ak ] ; 2 uses
  %i.z = phi ptr [ %i.q, %.lr.ph ], [ %i.fs, %bb.ak ] ; 3 uses
  %.080 = phi ptr [ %1, %.lr.ph ], [ %i.fr, %bb.ak ] ; 2 uses
  %.05479 = phi i32 [ 1, %.lr.ph ], [ %i.fq, %bb.ak ]
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %.080 to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = call ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef nonnull %.080, i64 noundef %i.ac) #15
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 4, ptr %i.ae, align 8, !tbaa !20
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp slt i64 %i.aj, 17
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 1) #15
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !47
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.al = phi ptr [ %i.ag, %bb.c ], [ %.pre, %bb.d ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 5 uses
  store ptr %i.am, ptr %i.d, align 8, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !18
  switch i8 %i.ao, label %bb.ai [
    i8 115, label %bb.f
    i8 99, label %bb.k
    i8 100, label %bb.p
    i8 102, label %bb.v
    i8 112, label %bb.ab
    i8 37, label %bb.ag
  ]

bb.f:                                             ; preds = %bb.e
  %i.ap = load i32, ptr %2, align 8               ; 3 uses
  %i.aq = icmp ult i32 %i.ap, 41
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.t, align 8
  %i.as = zext nneg i32 %i.ap to i64
  %i.at = getelementptr i8, ptr %i.ar, i64 %i.as
  %i.au = add nuw nsw i32 %i.ap, 8
  store i32 %i.au, ptr %2, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  store ptr %i.aw, ptr %i.s, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = phi ptr [ %i.at, %bb.g ], [ %i.av, %bb.h ]
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !25 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  %spec.store.select = select i1 %i.az, ptr @.str.1, ptr %i.ay ; 2 uses
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %i.bb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #17
  %i.bc = call ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef nonnull %spec.store.select, i64 noundef %i.bb) #15
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 4, ptr %i.bd, align 8, !tbaa !20
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = icmp slt i64 %i.bi, 17
  br i1 %i.bj, label %bb.j, label %pushstr.exit63

bb.j:                                             ; preds = %bb.i
  call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 1) #15
  %.pre.i62 = load ptr, ptr %i.d, align 8, !tbaa !47
  br label %pushstr.exit63

pushstr.exit63:                                   ; preds = %bb.i, %bb.j
  %i.bk = phi ptr [ %i.bf, %bb.i ], [ %.pre.i62, %bb.j ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  store ptr %i.bl, ptr %i.d, align 8, !tbaa !47
  br label %bb.ak

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.bm = load i32, ptr %2, align 8               ; 3 uses
  %i.bn = icmp ult i32 %i.bm, 41
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr %i.t, align 8
  %i.bp = zext nneg i32 %i.bm to i64
  %i.bq = getelementptr i8, ptr %i.bo, i64 %i.bp
  %i.br = add nuw nsw i32 %i.bm, 8
  store i32 %i.br, ptr %2, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bs = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  store ptr %i.bt, ptr %i.s, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bu = phi ptr [ %i.bq, %bb.l ], [ %i.bs, %bb.m ]
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7
  %i.bw = trunc i32 %i.bv to i8
  store i8 %i.bw, ptr %i.a, align 1, !tbaa !18
  store i8 0, ptr %i.v, align 1, !tbaa !18
  %i.bx = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %i.by = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #17
  %i.bz = call ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.by) #15
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 4, ptr %i.ca, align 8, !tbaa !20
  %i.cb = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.cc = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = icmp slt i64 %i.cf, 17
  br i1 %i.cg, label %bb.o, label %pushstr.exit65

bb.o:                                             ; preds = %bb.n
  call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 1) #15
  %.pre.i64 = load ptr, ptr %i.d, align 8, !tbaa !47
  br label %pushstr.exit65

pushstr.exit65:                                   ; preds = %bb.n, %bb.o
  %i.ch = phi ptr [ %i.cc, %bb.n ], [ %.pre.i64, %bb.o ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  store ptr %i.ci, ptr %i.d, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.ak

bb.p:                                             ; preds = %bb.e
  %i.cj = load i32, ptr %2, align 8               ; 3 uses
  %i.ck = icmp ult i32 %i.cj, 41
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cl = load ptr, ptr %i.t, align 8
  %i.cm = zext nneg i32 %i.cj to i64
  %i.cn = getelementptr i8, ptr %i.cl, i64 %i.cm
  %i.co = add nuw nsw i32 %i.cj, 8
  store i32 %i.co, ptr %2, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cp = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  store ptr %i.cq, ptr %i.s, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cr = phi ptr [ %i.cn, %bb.q ], [ %i.cp, %bb.r ]
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !7
  %i.ct = sitofp i32 %i.cs to double
  store double %i.ct, ptr %i.am, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 3, ptr %i.cu, align 8, !tbaa !20
  %i.cv = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = icmp slt i64 %i.cz, 17
  br i1 %i.da, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 1) #15
  %.pre84 = load ptr, ptr %i.d, align 8, !tbaa !47
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.db = phi ptr [ %i.cw, %bb.s ], [ %.pre84, %bb.t ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  store ptr %i.dc, ptr %i.d, align 8, !tbaa !47
  br label %bb.ak

bb.v:                                             ; preds = %bb.e
  %i.dd = load i32, ptr %i.u, align 4             ; 3 uses
  %i.de = icmp ult i32 %i.dd, 161
  br i1 %i.de, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.df = load ptr, ptr %i.t, align 8
  %i.dg = zext nneg i32 %i.dd to i64
  %i.dh = getelementptr i8, ptr %i.df, i64 %i.dg
  %i.di = add nuw nsw i32 %i.dd, 16
  store i32 %i.di, ptr %i.u, align 4
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dj = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  store ptr %i.dk, ptr %i.s, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dl = phi ptr [ %i.dh, %bb.w ], [ %i.dj, %bb.x ]
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !22
  store double %i.dm, ptr %i.am, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 3, ptr %i.dn, align 8, !tbaa !20
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.dp = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = icmp slt i64 %i.ds, 17
  br i1 %i.dt, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 1) #15
  %.pre83 = load ptr, ptr %i.d, align 8, !tbaa !47
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.du = phi ptr [ %i.dp, %bb.y ], [ %.pre83, %bb.z ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  store ptr %i.dv, ptr %i.d, align 8, !tbaa !47
  br label %bb.ak

bb.ab:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.dw = load i32, ptr %2, align 8               ; 3 uses
  %i.dx = icmp ult i32 %i.dw, 41
  br i1 %i.dx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dy = load ptr, ptr %i.t, align 8
  %i.dz = zext nneg i32 %i.dw to i64
  %i.ea = getelementptr i8, ptr %i.dy, i64 %i.dz
  %i.eb = add nuw nsw i32 %i.dw, 8
  store i32 %i.eb, ptr %2, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ec = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 8
  store ptr %i.ed, ptr %i.s, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ee = phi ptr [ %i.ea, %bb.ac ], [ %i.ec, %bb.ad ]
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !49
  %i.eg = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %i.ef) #15 ; 0 uses
  %i.eh = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %i.ei = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #17
  %i.ej = call ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef %i.ei) #15
  store ptr %i.ej, ptr %i.eh, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 4, ptr %i.ek, align 8, !tbaa !20
  %i.el = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.em = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = icmp slt i64 %i.ep, 17
  br i1 %i.eq, label %bb.af, label %pushstr.exit67

bb.af:                                            ; preds = %bb.ae
  call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 1) #15
  %.pre.i66 = load ptr, ptr %i.d, align 8, !tbaa !47
  br label %pushstr.exit67

pushstr.exit67:                                   ; preds = %bb.ae, %bb.af
  %i.er = phi ptr [ %i.em, %bb.ae ], [ %.pre.i66, %bb.af ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  store ptr %i.es, ptr %i.d, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.ak

bb.ag:                                            ; preds = %bb.e
  %i.et = call ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i64 noundef 1) #15
  store ptr %i.et, ptr %i.am, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 4, ptr %i.eu, align 8, !tbaa !20
  %i.ev = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.ew = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = icmp slt i64 %i.ez, 17
  br i1 %i.fa, label %bb.ah, label %pushstr.exit69

bb.ah:                                            ; preds = %bb.ag
  call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 1) #15
  %.pre.i68 = load ptr, ptr %i.d, align 8, !tbaa !47
  br label %pushstr.exit69

pushstr.exit69:                                   ; preds = %bb.ag, %bb.ah
  %i.fb = phi ptr [ %i.ew, %bb.ag ], [ %.pre.i68, %bb.ah ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  store ptr %i.fc, ptr %i.d, align 8, !tbaa !47
  br label %bb.ak

bb.ai:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i8 37, ptr %i.c, align 1, !tbaa !18
  %i.fd = load i8, ptr %i.an, align 1, !tbaa !18
  store i8 %i.fd, ptr %i.w, align 1, !tbaa !18
  store i8 0, ptr %i.x, align 1, !tbaa !18
  %i.fe = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #17
  %i.ff = call ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef %i.fe) #15
  store ptr %i.ff, ptr %i.am, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 4, ptr %i.fg, align 8, !tbaa !20
  %i.fh = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.fi = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = icmp slt i64 %i.fl, 17
  br i1 %i.fm, label %bb.aj, label %pushstr.exit71

bb.aj:                                            ; preds = %bb.ai
  call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 1) #15
  %.pre.i70 = load ptr, ptr %i.d, align 8, !tbaa !47
  br label %pushstr.exit71

pushstr.exit71:                                   ; preds = %bb.ai, %bb.aj
  %i.fn = phi ptr [ %i.fi, %bb.ai ], [ %.pre.i70, %bb.aj ]
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  store ptr %i.fo, ptr %i.d, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.ak

bb.ak:                                            ; preds = %pushstr.exit63, %pushstr.exit65, %bb.u, %bb.aa, %pushstr.exit67, %pushstr.exit69, %pushstr.exit71
  %i.fp = phi ptr [ %i.bl, %pushstr.exit63 ], [ %i.ci, %pushstr.exit65 ], [ %i.dc, %bb.u ], [ %i.dv, %bb.aa ], [ %i.es, %pushstr.exit67 ], [ %i.fc, %pushstr.exit69 ], [ %i.fo, %pushstr.exit71 ] ; 2 uses
  %i.fq = add nuw nsw i32 %.05479, 2              ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.z, i64 2 ; 3 uses
  %i.fs = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.fr, i32 noundef 37) #17 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.ak, %pushstr.exit
  %i.fu = phi ptr [ %i.p, %pushstr.exit ], [ %i.fp, %bb.ak ] ; 2 uses
  %.054.lcssa = phi i32 [ 1, %pushstr.exit ], [ %i.fq, %bb.ak ] ; 2 uses
  %.0.lcssa = phi ptr [ %1, %pushstr.exit ], [ %i.fr, %bb.ak ] ; 2 uses
  %i.fv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.lcssa) #17
  %i.fw = call ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef nonnull %.0.lcssa, i64 noundef %i.fv) #15
  store ptr %i.fw, ptr %i.fu, align 8, !tbaa !18
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store i32 4, ptr %i.fx, align 8, !tbaa !20
  %i.fy = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.fz = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = icmp slt i64 %i.gc, 17
  br i1 %i.gd, label %bb.al, label %pushstr.exit73

bb.al:                                            ; preds = %._crit_edge
  call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 1) #15
  %.pre.i72 = load ptr, ptr %i.d, align 8, !tbaa !47
  br label %pushstr.exit73

pushstr.exit73:                                   ; preds = %._crit_edge, %bb.al
  %i.ge = phi ptr [ %i.fz, %._crit_edge ], [ %.pre.i72, %bb.al ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  store ptr %i.gf, ptr %i.d, align 8, !tbaa !47
  %i.gg = add nuw nsw i32 %.054.lcssa, 1
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !50
  %i.gj = ptrtoint ptr %i.gf to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = lshr exact i64 %i.gl, 4
  %i.gn = trunc i64 %i.gm to i32
  %i.go = add nsw i32 %i.gn, -1
  call void @luaV_concat(ptr noundef nonnull %0, i32 noundef %i.gg, i32 noundef %i.go) #15
  %i.gp = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.gq = zext nneg i32 %.054.lcssa to i64
  %i.gr = sub nsw i64 0, %i.gq
  %i.gs = getelementptr inbounds [16 x i8], ptr %i.gp, i64 %i.gr ; 2 uses
  store ptr %i.gs, ptr %i.d, align 8, !tbaa !47
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !18
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  ret ptr %i.gv
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

declare hidden ptr @luaS_newlstr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare hidden void @luaD_growstack(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare hidden void @luaV_concat(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define hidden nonnull ptr @luaO_pushfstring(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #7 !guid !51 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call ptr @luaO_pushvfstring(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @luaO_chunkid(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #12 !guid !52 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !18
  switch i8 %i.a, label %bb.f [
    i8 61, label %bb.b
    i8 64, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = tail call ptr @strncpy(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %2) #15 ; 0 uses
  %i.d = getelementptr i8, ptr %0, i64 %2
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  store i8 0, ptr %i.e, align 1, !tbaa !18
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.g = add i64 %2, -8                           ; 2 uses
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #17 ; 2 uses
  store i8 0, ptr %0, align 1
  %i.i = icmp ugt i64 %i.h, %i.g
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = sub nuw i64 %i.h, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %strlen41 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %endptr42 = getelementptr inbounds i8, ptr %0, i64 %strlen41
  store i32 3026478, ptr %endptr42, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.033 = phi ptr [ %i.k, %bb.d ], [ %i.f, %bb.c ]
  %i.l = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %.033) #15 ; 0 uses
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.m = tail call i64 @strcspn(ptr noundef nonnull %1, ptr noundef nonnull @.str.5) #17
  %i.n = add i64 %2, -17
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.n) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef nonnull align 1 dereferenceable(10) @.str.6, i64 10, i1 false) #15
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select
  %i.p = load i8, ptr %i.o, align 1, !tbaa !18
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %spec.select) #15 ; 0 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %endptr = getelementptr inbounds i8, ptr %0, i64 %strlen
  store i32 3026478, ptr %endptr, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.r = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #15 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %strlen39 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %endptr40 = getelementptr inbounds i8, ptr %0, i64 %strlen39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr40, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, i64 3, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 6757617665415193218}
!9 = !{i64 -3909327495644384600}
!10 = !{i64 7042686123153407494}
!11 = !{i64 242765467150508438}
!12 = !{i64 -1891883458129685697}
!13 = !{i64 6957353879596585014}
!14 = !{i64 2635433384682897148}
!15 = !{i64 -6128624554079058083}
!16 = !{i64 8389155423028044857}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!5, !5, i64 0}
!19 = !{!"lua_TValue", !5, i64 0, !6, i64 8}
!20 = !{!19, !6, i64 8}
!21 = !{!"double", !5, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"any pointer", !5, i64 0}
!24 = !{!"p1 omnipotent char", !23, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"short", !5, i64 0}
!27 = distinct !{!27, !17}
!28 = !{i64 -5107944236104962193}
!29 = !{i64 -5676815980566112097}
!30 = distinct !{!30, !17}
!31 = !{i64 -5884813234545768577}
!32 = !{i64 -12194470264903288}
!33 = distinct !{!33, !17}
!34 = !{i64 -8867284386859687134}
!35 = !{!"p1 short", !23, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!26, !26, i64 0}
!38 = !{i64 7727606676293860289}
!39 = !{!"p1 _ZTS8GCObject", !23, i64 0}
!40 = !{!"p1 _ZTS10lua_TValue", !23, i64 0}
!41 = !{!"p1 _ZTS12global_State", !23, i64 0}
!42 = !{!"p1 _ZTS8CallInfo", !23, i64 0}
!43 = !{!"p1 int", !23, i64 0}
!44 = !{!"p1 _ZTS11lua_longjmp", !23, i64 0}
!45 = !{!"long", !5, i64 0}
!46 = !{!"lua_State", !39, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !40, i64 16, !40, i64 24, !41, i64 32, !42, i64 40, !43, i64 48, !40, i64 56, !40, i64 64, !42, i64 72, !42, i64 80, !6, i64 88, !6, i64 92, !26, i64 96, !26, i64 98, !5, i64 100, !5, i64 101, !6, i64 104, !6, i64 108, !23, i64 112, !19, i64 120, !19, i64 136, !39, i64 152, !39, i64 160, !44, i64 168, !45, i64 176}
!47 = !{!46, !40, i64 16}
!48 = !{!46, !40, i64 56}
!49 = !{!23, !23, i64 0}
!50 = !{!46, !40, i64 24}
!51 = !{i64 4656770794007196419}
!52 = !{i64 -7802181830000850971}
end_hunk_0
