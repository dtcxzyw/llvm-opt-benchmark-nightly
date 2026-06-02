inline.NumInlined: 16
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"JPEGMEM\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@first_pool_slop = internal unnamed_addr constant [2 x i64] [i64 1600, i64 16000], align 16
@extra_pool_slop = internal unnamed_addr constant [2 x i64] [i64 0, i64 5000], align 16

; Function Attrs: nounwind uwtable
define void @jinit_memory_mgr(ptr noundef initializes((8, 16)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [30 x i8], align 16               ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !7
  %i.e = tail call i64 @jpeg_mem_init(ptr noundef %0) #9 ; 2 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !13
  %i.f = tail call ptr @jpeg_get_small(ptr noundef %0, i64 noundef 168) #9 ; 17 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @jpeg_mem_term(ptr noundef nonnull %0) #9
  %i.h = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 56, ptr %i.i, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 0, ptr %i.j, align 4, !tbaa !20
  %i.k = load ptr, ptr %0, align 8, !tbaa !15
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  tail call void %i.l(ptr noundef nonnull %0) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr @alloc_small, ptr %i.f, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @alloc_large, ptr %i.m, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr @alloc_sarray, ptr %i.n, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @alloc_barray, ptr %i.o, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr @request_virt_sarray, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @request_virt_barray, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr @realize_virt_arrays, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr @access_virt_sarray, ptr %i.s, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr @access_virt_barray, ptr %i.t, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr @free_pool, ptr %i.u, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr @self_destruct, ptr %i.v, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i64 1000000000, ptr %i.w, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  store i64 %i.e, ptr %i.x, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, i8 0, i64 48, i1 false)
  store i64 168, ptr %i.z, align 8, !tbaa !39
  store ptr %i.f, ptr %i.d, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.aa = tail call ptr @getenv(ptr noundef nonnull @.str) #9 ; 3 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %GETENV_S.exit.thread49, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #10
  %i.ac = add i64 %i.ab, -30
  %i.ad = icmp ult i64 %i.ac, -31
  br i1 %i.ad, label %GETENV_S.exit.thread49, label %GETENV_S.exit

GETENV_S.exit:                                    ; preds = %bb.d
  %i.ae = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.aa, i64 noundef 30) #9 ; 0 uses
  %char0.pre = load i8, ptr %i.b, align 16
  %i.af = icmp eq i8 %char0.pre, 0
  br i1 %i.af, label %GETENV_S.exit.thread49, label %bb.e

bb.e:                                             ; preds = %GETENV_S.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i8 120, ptr %i.c, align 1, !tbaa !20
  %i.ag = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #9
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = load i8, ptr %i.c, align 1, !tbaa !20
  %i.aj = and i8 %i.ai, -33
  %or.cond = icmp eq i8 %i.aj, 77
  %.pre = load i64, ptr %i.a, align 8, !tbaa !13
  %i.ak = select i1 %or.cond, i64 1000000, i64 1000
  %i.al = mul i64 %i.ak, %.pre
  store i64 %i.al, ptr %i.x, align 8, !tbaa !38
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %GETENV_S.exit.thread49

GETENV_S.exit.thread49:                           ; preds = %bb.d, %bb.c, %bb.g, %GETENV_S.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @jpeg_mem_init(ptr noundef) local_unnamed_addr #2

declare ptr @jpeg_get_small(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @jpeg_mem_term(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal nonnull ptr @alloc_small(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = icmp ugt i64 %2, 1000000000
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 56, ptr %i.e, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 7, ptr %i.f, align 4, !tbaa !20
  %i.g = load ptr, ptr %0, align 8, !tbaa !15
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  tail call void %i.h(ptr noundef nonnull %0) #9, !inline_history !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = add i64 %2, 7
  %i.j = and i64 %i.i, -8                         ; 6 uses
  %i.k = add i64 %i.j, 31                         ; 3 uses
  %i.l = icmp ugt i64 %i.k, 1000000000
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 56, ptr %i.n, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  store i32 1, ptr %i.o, align 4, !tbaa !20
  %i.p = load ptr, ptr %0, align 8, !tbaa !15
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  tail call void %i.q(ptr noundef nonnull %0) #9, !inline_history !40
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i32 15, ptr %i.s, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  store i32 %1, ptr %i.t, align 4, !tbaa !20
  %i.u = load ptr, ptr %0, align 8, !tbaa !15
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  tail call void %i.v(ptr noundef nonnull %0) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.x = sext i32 %1 to i64                       ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %.06374 = load ptr, ptr %i.y, align 8, !tbaa !41 ; 2 uses
  %cond75 = icmp eq ptr %.06374, null
  br i1 %cond75, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %.063 = load ptr, ptr %.06376, align 8, !tbaa !41 ; 2 uses
  %cond = icmp eq ptr %.063, null
  br i1 %cond, label %._crit_edge, label %.lr.ph, !llvm.loop !43

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.06376 = phi ptr [ %.063, %bb.h ], [ %.06374, %bb.g ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.06376, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !45  ; 2 uses
  %.not68 = icmp ult i64 %i.aa, %i.j
  br i1 %.not68, label %bb.h, label %.loopexit.loopexit, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %.062.lcssa = phi ptr [ null, %bb.g ], [ %.06376, %bb.h ] ; 2 uses
  %i.ab = icmp eq ptr %.062.lcssa, null           ; 2 uses
  %.0.in.v = select i1 %i.ab, ptr @first_pool_slop, ptr @extra_pool_slop
  %.0.in = getelementptr inbounds [8 x i8], ptr %.0.in.v, i64 %i.x
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !13
  %i.ac = sub i64 999999969, %i.j
  %.1 = tail call i64 @llvm.umin.i64(i64 %.0, i64 %i.ac) ; 3 uses
  %i.ad = add i64 %.1, %i.k                       ; 2 uses
  %i.ae = tail call ptr @jpeg_get_small(ptr noundef %0, i64 noundef %i.ad) #9 ; 2 uses
  %.not6977 = icmp eq ptr %i.ae, null
  br i1 %.not6977, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %._crit_edge, %bb.j
  %.278 = phi i64 [ %i.af, %bb.j ], [ %.1, %._crit_edge ] ; 2 uses
  %i.af = lshr i64 %.278, 1                       ; 3 uses
  %i.ag = icmp ult i64 %.278, 100
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph80
  %i.ah = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i32 56, ptr %i.ai, align 8, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 44
  store i32 2, ptr %i.aj, align 4, !tbaa !20
  %i.ak = load ptr, ptr %0, align 8, !tbaa !15
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !21
  tail call void %i.al(ptr noundef nonnull %0) #9, !inline_history !40
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph80
  %i.am = add i64 %i.af, %i.k                     ; 2 uses
  %i.an = tail call ptr @jpeg_get_small(ptr noundef %0, i64 noundef %i.am) #9 ; 2 uses
  %.not69 = icmp eq ptr %i.an, null
  br i1 %.not69, label %.lr.ph80, label %._crit_edge81

._crit_edge81:                                    ; preds = %bb.j, %._crit_edge
  %.2.lcssa = phi i64 [ %.1, %._crit_edge ], [ %i.af, %bb.j ]
  %.lcssa71 = phi i64 [ %i.ad, %._crit_edge ], [ %i.am, %bb.j ]
  %.lcssa = phi ptr [ %i.ae, %._crit_edge ], [ %i.an, %bb.j ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !39
  %i.aq = add i64 %i.ap, %.lcssa71
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !39
  %i.ar = add i64 %.2.lcssa, %i.j                 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa, i8 0, i64 16, i1 false)
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !45
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge81
  store ptr %.lcssa, ptr %i.y, align 8, !tbaa !41
  br label %.loopexit

bb.l:                                             ; preds = %._crit_edge81
  store ptr %.lcssa, ptr %.062.lcssa, align 8, !tbaa !47
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.06376, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !48
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.k, %bb.l
  %i.at = phi i64 [ %i.ar, %bb.k ], [ %i.ar, %bb.l ], [ %i.aa, %.loopexit.loopexit ]
  %i.au = phi i64 [ 0, %bb.k ], [ 0, %bb.l ], [ %.pre, %.loopexit.loopexit ] ; 2 uses
  %.164 = phi ptr [ %.lcssa, %bb.k ], [ %.lcssa, %bb.l ], [ %.06376, %.loopexit.loopexit ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.164, i64 24 ; 2 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = and i64 %i.aw, 7                        ; 2 uses
  %.not70 = icmp eq i64 %i.ax, 0
  %i.ay = sub nuw nsw i64 8, %i.ax
  %.061.idx = select i1 %.not70, i64 0, i64 %i.ay
  %.061 = getelementptr inbounds nuw i8, ptr %i.av, i64 %.061.idx
  %i.az = getelementptr inbounds nuw i8, ptr %.164, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.061, i64 %i.au
end_hunk_0
