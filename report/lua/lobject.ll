Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lobject?download=true
inline.NumInlined: 25
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BuffFS = type { ptr, ptr, i64, i64, i32, [219 x i8] }
%struct.TValue = type { %union.Value, i8 }
%union.Value = type { ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@luaO_ceillog2.log_2 = internal unnamed_addr constant [256 x i8] c"\00\01\02\02\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08", align 16
@luai_ctype_ = external hidden local_unnamed_addr constant [257 x i8], align 16
@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"[string \22\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\22]\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c".xXnN\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%.15g\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%.17g\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"-0123456789\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define hidden zeroext i8 @luaO_ceillog2(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -1                           ; 3 uses
  %i.b = icmp ugt i32 %i.a, 255
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi i8 [ %i.c, %.lr.ph ], [ 0, %bb.a ]
  %.067 = phi i32 [ %i.d, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.c = add i8 %.08, 8                           ; 2 uses
  %i.d = lshr i32 %.067, 8                        ; 2 uses
  %i.e = icmp ugt i32 %.067, 65535
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.06.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.d, %.lr.ph ]
  %.0.lcssa = phi i8 [ 0, %bb.a ], [ %i.c, %.lr.ph ]
  %i.f = zext nneg i32 %.06.lcssa to i64
  %i.g = getelementptr inbounds nuw i8, ptr @luaO_ceillog2.log_2, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !9
  %i.i = add i8 %i.h, %.0.lcssa
  ret i8 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define hidden zeroext i8 @luaO_codeparam(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %0, 396799
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw nsw i32 %0, 7
  %i.c = or disjoint i32 %i.b, 96                 ; 2 uses
  %i.d = udiv i32 %i.c, 100                       ; 5 uses
  %i.e = icmp samesign ult i32 %i.c, 1600
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = trunc nuw nsw i32 %i.d to i8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = icmp samesign ugt i32 %0, 199
  br i1 %i.g, label %.lr.ph.i, label %luaO_ceillog2.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.h = lshr i32 %i.d, 8
  %i.i = icmp ugt i32 %0, 51199                   ; 2 uses
  %i.j = lshr i32 %i.d, 16
  %spec.select = select i1 %i.i, i8 16, i8 8
  %spec.select16 = select i1 %i.i, i32 %i.j, i32 %i.h
  br label %luaO_ceillog2.exit

luaO_ceillog2.exit:                               ; preds = %.lr.ph.i, %bb.d
  %.06.lcssa.i = phi i32 [ %i.d, %bb.d ], [ %spec.select16, %.lr.ph.i ]
  %.0.lcssa.i = phi i8 [ 0, %bb.d ], [ %spec.select, %.lr.ph.i ]
  %i.k = zext nneg i32 %.06.lcssa.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr @luaO_ceillog2.log_2, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = add i8 %i.m, %.0.lcssa.i
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = add nsw i32 %i.o, -5
  %i.q = lshr i32 %i.d, %i.p
  %i.r = add nuw nsw i32 %i.q, 240
  %i.s = shl nuw nsw i32 %i.o, 4
  %i.t = add nuw nsw i32 %i.s, 192
  %i.u = or i32 %i.r, %i.t
  %i.v = trunc i32 %i.u to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %luaO_ceillog2.exit, %bb.c
  %.0 = phi i8 [ %i.v, %luaO_ceillog2.exit ], [ %i.f, %bb.c ], [ -1, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i64 @luaO_applyparam(i8 noundef zeroext %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = zext i8 %0 to i32                        ; 2 uses
  %i.b = and i32 %i.a, 15                         ; 2 uses
  %i.c = lshr i32 %i.a, 4                         ; 2 uses
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = or disjoint i32 %i.b, 16
  %i.e = add nsw i32 %i.c, -8
  %.023 = select i1 %.not, i32 %i.b, i32 %i.d     ; 3 uses
  %.0 = select i1 %.not, i32 -7, i32 %i.e         ; 3 uses
  %i.f = icmp sgt i32 %.0, -1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.h = lshr i64 297528130221121800, %i.g
  %i.i = icmp slt i64 %1, %i.h
  br i1 %i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %.023 to i64
  %i.k = mul nsw i64 %1, %i.j
  %i.l = shl i64 %i.k, %i.g
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.m = sub nsw i32 0, %.0                       ; 2 uses
  %i.n = icmp slt i64 %1, 297528130221121800
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = zext nneg i32 %.023 to i64
  %i.p = mul nsw i64 %1, %i.o
  %i.q = zext nneg i32 %i.m to i64
  %i.r = ashr i64 %i.p, %i.q
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.s = zext nneg i32 %i.m to i64
  %i.t = lshr i64 %1, %i.s                        ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, 297528130221121800
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = zext nneg i32 %.023 to i64
  %i.w = mul nuw nsw i64 %i.t, %i.v
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.b, %bb.g, %bb.e, %bb.c
  %.024 = phi i64 [ %i.l, %bb.c ], [ 9223372036854775807, %bb.b ], [ %i.r, %bb.e ], [ %i.w, %bb.g ], [ 9223372036854775807, %bb.f ]
  ret i64 %.024
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @luaO_rawarith(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  switch i32 %1, label %bb.u [
    i32 7, label %bb.b
    i32 8, label %bb.b
    i32 9, label %bb.b
    i32 10, label %bb.b
    i32 11, label %bb.b
    i32 13, label %bb.b
    i32 5, label %bb.j
    i32 4, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !11
  %i.e = icmp eq i8 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %2, align 8, !tbaa !9
  store i64 %i.f, ptr %i.a, align 8, !tbaa !13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = call i32 @luaV_tointegerns(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef 0) #16
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !11
  %i.j = icmp eq i8 %i.i, 3
  br i1 %i.j, label %bb.f, label %bb.g, !prof !29

bb.f:                                             ; preds = %bb.e
  %i.k = load i64, ptr %3, align 8, !tbaa !9      ; 2 uses
  store i64 %i.k, ptr %i.b, align 8, !tbaa !13
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = call i32 @luaV_tointegerns(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i32 noundef 0) #16
  %.not59 = icmp eq i32 %i.l, 0
end_hunk_0
begin_hunk_1_@luaO_str2num:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.t

bb.p:                                             ; preds = %bb.o, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.cj = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #17 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %i.cm = icmp ugt i64 %i.cl, 200
  br i1 %i.cm, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %0) #16 ; 0 uses
  %i.co = call ptr @localeconv() #16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !18
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !9
  %i.cr = ptrtoint ptr %i.cj to i64
  %i.cs = ptrtoint ptr %0 to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = getelementptr inbounds i8, ptr %i.c, i64 %i.ct
  store i8 %i.cq, ptr %i.cu, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.cv = call double @strtod(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #16
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.c
  br i1 %i.cx, label %select.unfold, label %.preheader.i32.i

.preheader.i32.i:                                 ; preds = %bb.r, %.preheader.i32.i
  %i.cy = phi ptr [ %i.df, %.preheader.i32.i ], [ %i.cw, %bb.r ] ; 3 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !9   ; 2 uses
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr @luai_ctype_, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !9
  %i.de = and i8 %i.dd, 8
  %.not.i33.i = icmp eq i8 %i.de, 0
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  br i1 %.not.i33.i, label %bb.s, label %.preheader.i32.i

bb.s:                                             ; preds = %.preheader.i32.i
  %i.dg = icmp eq i8 %i.cz, 0
  br i1 %i.dg, label %l_str2d.exit, label %select.unfold

.critedge.i:                                      ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %l_str2d.exit.thread

select.unfold:                                    ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %l_str2d.exit.thread

l_str2d.exit:                                     ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.dh = ptrtoint ptr %i.cy to i64
  %i.di = ptrtoint ptr %i.c to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = getelementptr inbounds i8, ptr %0, i64 %i.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.t

bb.t:                                             ; preds = %l_str2d.exit.thread24, %l_str2d.exit, %bb.m
  %storemerge = phi double [ %i.bs, %bb.m ], [ %i.bx, %l_str2d.exit.thread24 ], [ %i.cv, %l_str2d.exit ]
  %.sink = phi i8 [ 3, %bb.m ], [ 19, %l_str2d.exit.thread24 ], [ 19, %l_str2d.exit ]
  %.010 = phi ptr [ %.2.i, %bb.m ], [ %i.ca, %l_str2d.exit.thread24 ], [ %i.dk, %l_str2d.exit ]
  store double %storemerge, ptr %1, align 8, !tbaa !9
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %.sink, ptr %i.dl, align 8, !tbaa !11
  %i.dm = ptrtoint ptr %.010 to i64
  %i.dn = ptrtoint ptr %0 to i64
  %reass.sub = sub i64 %i.dm, %i.dn
  %i.do = add i64 %reass.sub, 1
  br label %l_str2d.exit.thread

l_str2d.exit.thread:                              ; preds = %select.unfold, %bb.n, %.critedge.i, %bb.t
  %.0 = phi i64 [ %i.do, %bb.t ], [ 0, %select.unfold ], [ 0, %.critedge.i ], [ 0, %bb.n ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden range(i32 -2147483647, -2147483648) i32 @luaO_utf8esc(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i32 %1, 128
  br i1 %i.a, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 1, %bb.a ] ; 3 uses
  %.015 = phi i32 [ %i.g, %.preheader ], [ %1, %bb.a ] ; 2 uses
  %.0 = phi i32 [ %i.h, %.preheader ], [ 63, %bb.a ]
  %i.b = trunc i32 %.015 to i8
  %i.c = and i8 %i.b, 63
  %i.d = or disjoint i8 %i.c, -128
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.e = sub nsw i64 8, %indvars.iv
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store i8 %i.d, ptr %i.f, align 1, !tbaa !9
  %i.g = lshr i32 %.015, 6                        ; 3 uses
  %i.h = lshr i32 %.0, 1                          ; 3 uses
  %i.i = icmp samesign ugt i32 %i.g, %i.h
  br i1 %i.i, label %.preheader, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.j = trunc nsw i64 %indvars.iv.next to i32
  %i.k = xor i32 %i.h, -1
  %i.l = shl nsw i32 %i.k, 1
  %i.m = or i32 %i.l, %i.g
  %i.n = shl i64 %indvars.iv, 32
  %sext = sub i64 30064771072, %i.n
  %i.o = ashr exact i64 %sext, 32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink31 = phi i64 [ %i.o, %bb.b ], [ 7, %bb.a ]
  %.sink.in = phi i32 [ %i.m, %bb.b ], [ %1, %bb.a ]
  %.1 = phi i32 [ %i.j, %bb.b ], [ 1, %bb.a ]
  %.sink = trunc i32 %.sink.in to i8
  %i.p = getelementptr inbounds i8, ptr %0, i64 %.sink31
  store i8 %.sink, ptr %i.p, align 1, !tbaa !9
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaO_tostringbuff(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !9
  %i.e = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 64, ptr noundef nonnull @.str, i64 noundef %i.d) #16
  br label %tostringbuffFloat.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load double, ptr %0, align 8, !tbaa !9   ; 3 uses
  %i.g = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 64, ptr noundef nonnull @.str.8, double noundef %i.f) #16
  %i.h = tail call double @strtod(ptr noundef nonnull captures(none) %1, ptr noundef null) #16
  %i.i = fcmp une double %i.h, %i.f
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 64, ptr noundef nonnull @.str.9, double noundef %i.f) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i32 [ %i.j, %bb.d ], [ %i.g, %bb.c ] ; 3 uses
  %i.k = tail call i64 @strspn(ptr noundef nonnull %1, ptr noundef nonnull @.str.10) #17
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.f, label %tostringbuffFloat.exit

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @localeconv() #16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9
  %i.r = sext i32 %.0.i to i64
  %i.s = getelementptr inbounds i8, ptr %1, i64 %i.r ; 2 uses
  store i8 %i.q, ptr %i.s, align 1, !tbaa !9
  %i.t = add nsw i32 %.0.i, 2
  %i.u = getelementptr i8, ptr %i.s, i64 1
  store i8 48, ptr %i.u, align 1, !tbaa !9
  br label %tostringbuffFloat.exit

tostringbuffFloat.exit:                           ; preds = %bb.f, %bb.e, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.t, %bb.f ], [ %.0.i, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden void @luaO_tostring(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call i32 @luaO_tostringbuff(ptr noundef %1, ptr noundef nonnull %i.a)
  %i.c = zext i32 %i.b to i64
  %i.d = call ptr @luaS_newlstr(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.c) #16 ; 2 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !21
  %i.g = or i8 %i.f, 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.g, ptr %i.h, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare hidden ptr @luaS_newlstr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden ptr @luaO_pushvfstring(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  %i.c = alloca [64 x i8], align 16               ; 5 uses
  %3 = alloca %struct.BuffFS, align 8             ; 21 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %4 = alloca %struct.TValue, align 8             ; 5 uses
  %5 = alloca %struct.TValue, align 8             ; 5 uses
  %6 = alloca %struct.TValue, align 8             ; 5 uses
  %i.e = alloca [64 x i8], align 16               ; 5 uses
  %i.f = alloca [8 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %0, ptr %3, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 24 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 57 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 33 uses
  store i64 219, ptr %i.i, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 67 uses
  store i64 0, ptr %i.j, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 34 uses
  store i32 0, ptr %i.k, align 8, !tbaa !28
  %i.l = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 37) #17 ; 2 uses
  %.not113 = icmp eq ptr %i.l, null
  br i1 %.not113, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  %i.m = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  br label %bb.en

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %addstr2buff.exit45
  %i.r = phi ptr [ %i.l, %.lr.ph ], [ %i.ne, %addstr2buff.exit45 ] ; 5 uses
  %.0114 = phi ptr [ %1, %.lr.ph ], [ %i.nd, %addstr2buff.exit45 ] ; 3 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %.0114 to i64
  %i.u = sub i64 %i.s, %i.t                       ; 5 uses
  %i.v = load i64, ptr %i.i, align 8, !tbaa !26   ; 3 uses
  %i.w = load i64, ptr %i.j, align 8, !tbaa !27   ; 4 uses
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = load i32, ptr %i.k, align 8, !tbaa !28
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.c, label %addstr2buff.exit

bb.c:                                             ; preds = %bb.b
  %i.z = icmp ugt i64 %i.u, %i.x
  br i1 %i.z, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !25
  br label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.aa = sub i64 4611686018427387903, %i.w
  %i.ab = icmp ugt i64 %i.u, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull readonly align 1 %.0114, i64 %i.x, i1 false)
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !26
  store i64 %i.ae, ptr %i.j, align 8, !tbaa !27
  store i32 2, ptr %i.k, align 8, !tbaa !28
  br label %addstr2buff.exit

bb.f:                                             ; preds = %bb.d
  %i.af = add i64 %i.v, %i.u                      ; 3 uses
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !25  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.g
  %i.ai = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = call ptr @luaM_realloc_(ptr noundef %i.ai, ptr noundef null, i64 noundef 0, i64 noundef %i.af) #16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ak = call ptr @luaM_realloc_(ptr noundef %i.ai, ptr noundef %i.ag, i64 noundef %i.v, i64 noundef %i.af) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.al = phi ptr [ %i.aj, %bb.g ], [ %i.ak, %bb.h ] ; 4 uses
  %.not46.i = icmp eq ptr %i.al, null
  br i1 %.not46.i, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %bb.i
  store i32 1, ptr %i.k, align 8, !tbaa !28
  br label %addstr2buff.exit

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !25  ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.g
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = load i64, ptr %i.j, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr align 1 %i.am, i64 %i.ao, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.al, ptr %i.h, align 8, !tbaa !25
  store i64 %i.af, ptr %i.i, align 8, !tbaa !26
  %.pre47.i = load i64, ptr %i.j, align 8, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i
  %i.ap = phi i64 [ %i.w, %._crit_edge.i ], [ %.pre47.i, %bb.l ]
  %i.aq = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.al, %bb.l ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull readonly align 1 %.0114, i64 %i.u, i1 false)
  %i.as = load i64, ptr %i.j, align 8, !tbaa !27
  %i.at = add i64 %i.as, %i.u
  store i64 %i.at, ptr %i.j, align 8, !tbaa !27
  br label %addstr2buff.exit

addstr2buff.exit:                                 ; preds = %bb.b, %bb.e, %.thread.i, %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9
  switch i8 %i.av, label %bb.eb [
    i8 115, label %bb.n
    i8 99, label %bb.ac
    i8 100, label %bb.ar
    i8 73, label %bb.bg
    i8 102, label %bb.bv
    i8 112, label %bb.ck
    i8 85, label %bb.cz
    i8 37, label %bb.dp
  ]

bb.n:                                             ; preds = %addstr2buff.exit
  %i.aw = load i32, ptr %2, align 8               ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 41
  br i1 %i.ax, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ay = load ptr, ptr %i.o, align 8
  %i.az = zext nneg i32 %i.aw to i64
  %i.ba = getelementptr i8, ptr %i.ay, i64 %i.az
  %i.bb = add nuw nsw i32 %i.aw, 8
  store i32 %i.bb, ptr %2, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bc = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  store ptr %i.bd, ptr %i.n, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.be = phi ptr [ %i.ba, %bb.o ], [ %i.bc, %bb.p ]
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !16 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  %spec.store.select = select i1 %i.bg, ptr @.str.1, ptr %i.bf ; 3 uses
  %i.bh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #17 ; 5 uses
  %i.bi = load i64, ptr %i.i, align 8, !tbaa !26  ; 3 uses
  %i.bj = load i64, ptr %i.j, align 8, !tbaa !27  ; 4 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 2 uses
  %i.bl = load i32, ptr %i.k, align 8, !tbaa !28
  %.not.i38 = icmp eq i32 %i.bl, 0
  br i1 %.not.i38, label %bb.r, label %addstr2buff.exit45

bb.r:                                             ; preds = %bb.q
  %i.bm = icmp ugt i64 %i.bh, %i.bk
  br i1 %i.bm, label %bb.s, label %._crit_edge.i39

._crit_edge.i39:                                  ; preds = %bb.r
  %.pre.i41 = load ptr, ptr %i.h, align 8, !tbaa !25
  br label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bn = sub i64 4611686018427387903, %i.bj
  %i.bo = icmp ugt i64 %i.bh, %i.bn
  br i1 %i.bo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr nonnull readonly align 1 %spec.store.select, i64 %i.bk, i1 false)
  %i.br = load i64, ptr %i.i, align 8, !tbaa !26
  store i64 %i.br, ptr %i.j, align 8, !tbaa !27
  store i32 2, ptr %i.k, align 8, !tbaa !28
  br label %addstr2buff.exit45

bb.u:                                             ; preds = %bb.s
  %i.bs = add i64 %i.bi, %i.bh                    ; 3 uses
  %i.bt = load ptr, ptr %i.h, align 8, !tbaa !25  ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.g
  %i.bv = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  br i1 %i.bu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bw = call ptr @luaM_realloc_(ptr noundef %i.bv, ptr noundef null, i64 noundef 0, i64 noundef %i.bs) #16
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bx = call ptr @luaM_realloc_(ptr noundef %i.bv, ptr noundef %i.bt, i64 noundef %i.bi, i64 noundef %i.bs) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.by = phi ptr [ %i.bw, %bb.v ], [ %i.bx, %bb.w ] ; 4 uses
  %.not46.i42 = icmp eq ptr %i.by, null
  br i1 %.not46.i42, label %.thread.i44, label %bb.y

.thread.i44:                                      ; preds = %bb.x
  store i32 1, ptr %i.k, align 8, !tbaa !28
  br label %addstr2buff.exit45

bb.y:                                             ; preds = %bb.x
  %i.bz = load ptr, ptr %i.h, align 8, !tbaa !25  ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.g
  br i1 %i.ca, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cb = load i64, ptr %i.j, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr align 1 %i.bz, i64 %i.cb, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  store ptr %i.by, ptr %i.h, align 8, !tbaa !25
  store i64 %i.bs, ptr %i.i, align 8, !tbaa !26
  %.pre47.i43 = load i64, ptr %i.j, align 8, !tbaa !27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i39
  %i.cc = phi i64 [ %i.bj, %._crit_edge.i39 ], [ %.pre47.i43, %bb.aa ]
  %i.cd = phi ptr [ %.pre.i41, %._crit_edge.i39 ], [ %i.by, %bb.aa ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr nonnull readonly align 1 %spec.store.select, i64 %i.bh, i1 false)
  %i.cf = load i64, ptr %i.j, align 8, !tbaa !27
  %i.cg = add i64 %i.cf, %i.bh
  store i64 %i.cg, ptr %i.j, align 8, !tbaa !27
  br label %addstr2buff.exit45

bb.ac:                                            ; preds = %addstr2buff.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ch = load i32, ptr %2, align 8               ; 3 uses
  %i.ci = icmp ult i32 %i.ch, 41
  br i1 %i.ci, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cj = load ptr, ptr %i.o, align 8
  %i.ck = zext nneg i32 %i.ch to i64
  %i.cl = getelementptr i8, ptr %i.cj, i64 %i.ck
  %i.cm = add nuw nsw i32 %i.ch, 8
  store i32 %i.cm, ptr %2, align 8
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cn = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 8
  store ptr %i.co, ptr %i.n, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cp = phi ptr [ %i.cl, %bb.ad ], [ %i.cn, %bb.ae ]
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !31
  %i.cr = trunc i32 %i.cq to i8                   ; 2 uses
  store i8 %i.cr, ptr %i.d, align 1, !tbaa !9
  %i.cs = load i64, ptr %i.i, align 8, !tbaa !26  ; 5 uses
  %i.ct = load i64, ptr %i.j, align 8, !tbaa !27  ; 3 uses
  %i.cu = sub nuw nsw i64 %i.cs, %i.ct
  %i.cv = load i32, ptr %i.k, align 8, !tbaa !28
  %.not.i46 = icmp eq i32 %i.cv, 0
  br i1 %.not.i46, label %bb.ag, label %addstr2buff.exit53

bb.ag:                                            ; preds = %bb.af
  %i.cw = icmp eq i64 %i.cs, %i.ct
  br i1 %i.cw, label %bb.ah, label %._crit_edge.i47

._crit_edge.i47:                                  ; preds = %bb.ag
  %.pre.i49 = load ptr, ptr %i.h, align 8, !tbaa !25
  br label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  %i.cx = icmp eq i64 %i.cs, 4611686018427387903
  br i1 %i.cx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4611686018427387903
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr nonnull readonly align 1 %i.d, i64 %i.cu, i1 false)
  store i64 4611686018427387903, ptr %i.j, align 8, !tbaa !27
  store i32 2, ptr %i.k, align 8, !tbaa !28
  br label %addstr2buff.exit53

bb.aj:                                            ; preds = %bb.ah
  %i.da = add i64 %i.cs, 1                        ; 3 uses
  %i.db = load ptr, ptr %i.h, align 8, !tbaa !25  ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.g
  %i.dd = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  br i1 %i.dc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.de = call ptr @luaM_realloc_(ptr noundef %i.dd, ptr noundef null, i64 noundef 0, i64 noundef %i.da) #16
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.df = call ptr @luaM_realloc_(ptr noundef %i.dd, ptr noundef %i.db, i64 noundef %i.cs, i64 noundef %i.da) #16
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dg = phi ptr [ %i.de, %bb.ak ], [ %i.df, %bb.al ] ; 4 uses
  %.not46.i50 = icmp eq ptr %i.dg, null
  br i1 %.not46.i50, label %.thread.i52, label %bb.an

.thread.i52:                                      ; preds = %bb.am
  store i32 1, ptr %i.k, align 8, !tbaa !28
  br label %addstr2buff.exit53

bb.an:                                            ; preds = %bb.am
  %i.dh = load ptr, ptr %i.h, align 8, !tbaa !25  ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.g
  br i1 %i.di, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dj = load i64, ptr %i.j, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr align 1 %i.dh, i64 %i.dj, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  store ptr %i.dg, ptr %i.h, align 8, !tbaa !25
  store i64 %i.da, ptr %i.i, align 8, !tbaa !26
  %.pre47.i51 = load i64, ptr %i.j, align 8, !tbaa !27
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge.i47
  %i.dk = phi i64 [ %i.ct, %._crit_edge.i47 ], [ %.pre47.i51, %bb.ap ]
  %i.dl = phi ptr [ %.pre.i49, %._crit_edge.i47 ], [ %i.dg, %bb.ap ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk
  store i8 %i.cr, ptr %i.dm, align 1
  %i.dn = load i64, ptr %i.j, align 8, !tbaa !27
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.j, align 8, !tbaa !27
  br label %addstr2buff.exit53

addstr2buff.exit53:                               ; preds = %bb.af, %bb.ai, %.thread.i52, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %addstr2buff.exit45

bb.ar:                                            ; preds = %addstr2buff.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.dp = load i32, ptr %2, align 8               ; 3 uses
  %i.dq = icmp ult i32 %i.dp, 41
  br i1 %i.dq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dr = load ptr, ptr %i.o, align 8
  %i.ds = zext nneg i32 %i.dp to i64
  %i.dt = getelementptr i8, ptr %i.dr, i64 %i.ds
  %i.du = add nuw nsw i32 %i.dp, 8
  store i32 %i.du, ptr %2, align 8
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.dv = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 8
  store ptr %i.dw, ptr %i.n, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dx = phi ptr [ %i.dt, %bb.as ], [ %i.dv, %bb.at ]
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !31
  %i.dz = sext i32 %i.dy to i64
  store i64 %i.dz, ptr %4, align 8, !tbaa !9
  store i8 3, ptr %9, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %10 = call i32 @luaO_tostringbuff(ptr noundef nonnull readonly %4, ptr noundef nonnull %i.c)
  %i.ea = zext i32 %10 to i64                     ; 5 uses
  %i.eb = load i64, ptr %i.i, align 8, !tbaa !26  ; 3 uses
  %i.ec = load i64, ptr %i.j, align 8, !tbaa !27  ; 4 uses
  %i.ed = sub i64 %i.eb, %i.ec                    ; 2 uses
  %i.ee = load i32, ptr %i.k, align 8, !tbaa !28
  %.not.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i, label %bb.av, label %addnum2buff.exit

bb.av:                                            ; preds = %bb.au
  %i.ef = icmp ult i64 %i.ed, %i.ea
  br i1 %i.ef, label %bb.aw, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.av
  %.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  br label %bb.bf

bb.aw:                                            ; preds = %bb.av
  %i.eg = sub i64 4611686018427387903, %i.ec
  %i.eh = icmp ult i64 %i.eg, %i.ea
  br i1 %i.eh, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ei = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ec
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ej, ptr nonnull readonly align 16 %i.c, i64 %i.ed, i1 false)
  %i.ek = load i64, ptr %i.i, align 8, !tbaa !26
  store i64 %i.ek, ptr %i.j, align 8, !tbaa !27
  store i32 2, ptr %i.k, align 8, !tbaa !28
  br label %addnum2buff.exit

bb.ay:                                            ; preds = %bb.aw
  %i.el = add i64 %i.eb, %i.ea                    ; 3 uses
  %i.em = load ptr, ptr %i.h, align 8, !tbaa !25  ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.g
  %i.eo = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  br i1 %i.en, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ep = call ptr @luaM_realloc_(ptr noundef %i.eo, ptr noundef null, i64 noundef 0, i64 noundef %i.el) #16
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.eq = call ptr @luaM_realloc_(ptr noundef %i.eo, ptr noundef %i.em, i64 noundef %i.eb, i64 noundef %i.el) #16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.er = phi ptr [ %i.ep, %bb.az ], [ %i.eq, %bb.ba ] ; 4 uses
  %.not46.i.i = icmp eq ptr %i.er, null
  br i1 %.not46.i.i, label %.thread.i.i, label %bb.bc

.thread.i.i:                                      ; preds = %bb.bb
  store i32 1, ptr %i.k, align 8, !tbaa !28
  br label %addnum2buff.exit

bb.bc:                                            ; preds = %bb.bb
  %i.es = load ptr, ptr %i.h, align 8, !tbaa !25  ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.g
  br i1 %i.et, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.eu = load i64, ptr %i.j, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.er, ptr align 1 %i.es, i64 %i.eu, i1 false)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  store ptr %i.er, ptr %i.h, align 8, !tbaa !25
  store i64 %i.el, ptr %i.i, align 8, !tbaa !26
  %.pre47.i.i = load i64, ptr %i.j, align 8, !tbaa !27
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %._crit_edge.i.i
  %i.ev = phi i64 [ %i.ec, %._crit_edge.i.i ], [ %.pre47.i.i, %bb.be ]
  %i.ew = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.er, %bb.be ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ex, ptr nonnull readonly align 16 %i.c, i64 %i.ea, i1 false)
  %i.ey = load i64, ptr %i.j, align 8, !tbaa !27
  %i.ez = add i64 %i.ey, %i.ea
  store i64 %i.ez, ptr %i.j, align 8, !tbaa !27
  br label %addnum2buff.exit

addnum2buff.exit:                                 ; preds = %bb.au, %bb.ax, %.thread.i.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %addstr2buff.exit45

bb.bg:                                            ; preds = %addstr2buff.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.fa = load i32, ptr %2, align 8               ; 3 uses
  %i.fb = icmp ult i32 %i.fa, 41
  br i1 %i.fb, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fc = load ptr, ptr %i.o, align 8
  %i.fd = zext nneg i32 %i.fa to i64
  %i.fe = getelementptr i8, ptr %i.fc, i64 %i.fd
  %i.ff = add nuw nsw i32 %i.fa, 8
  store i32 %i.ff, ptr %2, align 8
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.fg = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 8
  store ptr %i.fh, ptr %i.n, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.fi = phi ptr [ %i.fe, %bb.bh ], [ %i.fg, %bb.bi ]
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !13
  store i64 %i.fj, ptr %5, align 8, !tbaa !9
  store i8 3, ptr %8, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %11 = call i32 @luaO_tostringbuff(ptr noundef nonnull readonly %5, ptr noundef nonnull %i.b)
  %i.fk = zext i32 %11 to i64                     ; 5 uses
  %i.fl = load i64, ptr %i.i, align 8, !tbaa !26  ; 3 uses
  %i.fm = load i64, ptr %i.j, align 8, !tbaa !27  ; 4 uses
  %i.fn = sub i64 %i.fl, %i.fm                    ; 2 uses
  %i.fo = load i32, ptr %i.k, align 8, !tbaa !28
  %.not.i.i54 = icmp eq i32 %i.fo, 0
  br i1 %.not.i.i54, label %bb.bk, label %addnum2buff.exit61

bb.bk:                                            ; preds = %bb.bj
  %i.fp = icmp ult i64 %i.fn, %i.fk
  br i1 %i.fp, label %bb.bl, label %._crit_edge.i.i55

._crit_edge.i.i55:                                ; preds = %bb.bk
  %.pre.i.i57 = load ptr, ptr %i.h, align 8, !tbaa !25
  br label %bb.bu

bb.bl:                                            ; preds = %bb.bk
  %i.fq = sub i64 4611686018427387903, %i.fm
  %i.fr = icmp ult i64 %i.fq, %i.fk
  br i1 %i.fr, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.fs = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ft, ptr nonnull readonly align 16 %i.b, i64 %i.fn, i1 false)
  %i.fu = load i64, ptr %i.i, align 8, !tbaa !26
  store i64 %i.fu, ptr %i.j, align 8, !tbaa !27
  store i32 2, ptr %i.k, align 8, !tbaa !28
  br label %addnum2buff.exit61

bb.bn:                                            ; preds = %bb.bl
  %i.fv = add i64 %i.fl, %i.fk                    ; 3 uses
  %i.fw = load ptr, ptr %i.h, align 8, !tbaa !25  ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.g
  %i.fy = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  br i1 %i.fx, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.fz = call ptr @luaM_realloc_(ptr noundef %i.fy, ptr noundef null, i64 noundef 0, i64 noundef %i.fv) #16
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.ga = call ptr @luaM_realloc_(ptr noundef %i.fy, ptr noundef %i.fw, i64 noundef %i.fl, i64 noundef %i.fv) #16
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.gb = phi ptr [ %i.fz, %bb.bo ], [ %i.ga, %bb.bp ] ; 4 uses
  %.not46.i.i58 = icmp eq ptr %i.gb, null
  br i1 %.not46.i.i58, label %.thread.i.i60, label %bb.br

.thread.i.i60:                                    ; preds = %bb.bq
  store i32 1, ptr %i.k, align 8, !tbaa !28
  br label %addnum2buff.exit61

bb.br:                                            ; preds = %bb.bq
  %i.gc = load ptr, ptr %i.h, align 8, !tbaa !25  ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.g
  br i1 %i.gd, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ge = load i64, ptr %i.j, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gb, ptr align 1 %i.gc, i64 %i.ge, i1 false)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  store ptr %i.gb, ptr %i.h, align 8, !tbaa !25
  store i64 %i.fv, ptr %i.i, align 8, !tbaa !26
  %.pre47.i.i59 = load i64, ptr %i.j, align 8, !tbaa !27
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %._crit_edge.i.i55
  %i.gf = phi i64 [ %i.fm, %._crit_edge.i.i55 ], [ %.pre47.i.i59, %bb.bt ]
  %i.gg = phi ptr [ %.pre.i.i57, %._crit_edge.i.i55 ], [ %i.gb, %bb.bt ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gh, ptr nonnull readonly align 16 %i.b, i64 %i.fk, i1 false)
  %i.gi = load i64, ptr %i.j, align 8, !tbaa !27
  %i.gj = add i64 %i.gi, %i.fk
  store i64 %i.gj, ptr %i.j, align 8, !tbaa !27
  br label %addnum2buff.exit61

addnum2buff.exit61:                               ; preds = %bb.bj, %bb.bm, %.thread.i.i60, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %addstr2buff.exit45

bb.bv:                                            ; preds = %addstr2buff.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.gk = load i32, ptr %i.q, align 4             ; 3 uses
  %i.gl = icmp ult i32 %i.gk, 161
  br i1 %i.gl, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.gm = load ptr, ptr %i.o, align 8
  %i.gn = zext nneg i32 %i.gk to i64
  %i.go = getelementptr i8, ptr %i.gm, i64 %i.gn
  %i.gp = add nuw nsw i32 %i.gk, 16
  store i32 %i.gp, ptr %i.q, align 4
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.gq = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 8
  store ptr %i.gr, ptr %i.n, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %12 = phi ptr [ %i.go, %bb.bw ], [ %i.gq, %bb.bx ]
  %13 = load double, ptr %12, align 8, !tbaa !33
  store double %13, ptr %6, align 8, !tbaa !9
  store i8 19, ptr %7, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %14 = call i32 @luaO_tostringbuff(ptr noundef nonnull readonly %6, ptr noundef nonnull %i.a)
  %i.gs = zext i32 %14 to i64                     ; 5 uses
  %i.gt = load i64, ptr %i.i, align 8, !tbaa !26  ; 3 uses
  %i.gu = load i64, ptr %i.j, align 8, !tbaa !27  ; 4 uses
  %i.gv = sub i64 %i.gt, %i.gu                    ; 2 uses
  %i.gw = load i32, ptr %i.k, align 8, !tbaa !28
  %.not.i.i62 = icmp eq i32 %i.gw, 0
  br i1 %.not.i.i62, label %bb.bz, label %addnum2buff.exit69

bb.bz:                                            ; preds = %bb.by
  %i.gx = icmp ult i64 %i.gv, %i.gs
  br i1 %i.gx, label %bb.ca, label %._crit_edge.i.i63

._crit_edge.i.i63:                                ; preds = %bb.bz
  %.pre.i.i65 = load ptr, ptr %i.h, align 8, !tbaa !25
  br label %bb.cj

bb.ca:                                            ; preds = %bb.bz
  %i.gy = sub i64 4611686018427387903, %i.gu
  %i.gz = icmp ult i64 %i.gy, %i.gs
  br i1 %i.gz, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ha = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hb, ptr nonnull readonly align 16 %i.a, i64 %i.gv, i1 false)
  %i.hc = load i64, ptr %i.i, align 8, !tbaa !26
  store i64 %i.hc, ptr %i.j, align 8, !tbaa !27
  store i32 2, ptr %i.k, align 8, !tbaa !28
  br label %addnum2buff.exit69

bb.cc:                                            ; preds = %bb.ca
  %i.hd = add i64 %i.gt, %i.gs                    ; 3 uses
  %i.he = load ptr, ptr %i.h, align 8, !tbaa !25  ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.g
  %i.hg = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  br i1 %i.hf, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.hh = call ptr @luaM_realloc_(ptr noundef %i.hg, ptr noundef null, i64 noundef 0, i64 noundef %i.hd) #16
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.hi = call ptr @luaM_realloc_(ptr noundef %i.hg, ptr noundef %i.he, i64 noundef %i.gt, i64 noundef %i.hd) #16
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.hj = phi ptr [ %i.hh, %bb.cd ], [ %i.hi, %bb.ce ] ; 4 uses
  %.not46.i.i66 = icmp eq ptr %i.hj, null
  br i1 %.not46.i.i66, label %.thread.i.i68, label %bb.cg

.thread.i.i68:                                    ; preds = %bb.cf
  store i32 1, ptr %i.k, align 8, !tbaa !28
  br label %addnum2buff.exit69

bb.cg:                                            ; preds = %bb.cf
  %i.hk = load ptr, ptr %i.h, align 8, !tbaa !25  ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.g
  br i1 %i.hl, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.hm = load i64, ptr %i.j, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hj, ptr align 1 %i.hk, i64 %i.hm, i1 false)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  store ptr %i.hj, ptr %i.h, align 8, !tbaa !25
  store i64 %i.hd, ptr %i.i, align 8, !tbaa !26
  %.pre47.i.i67 = load i64, ptr %i.j, align 8, !tbaa !27
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %._crit_edge.i.i63
  %i.hn = phi i64 [ %i.gu, %._crit_edge.i.i63 ], [ %.pre47.i.i67, %bb.ci ]
  %i.ho = phi ptr [ %.pre.i.i65, %._crit_edge.i.i63 ], [ %i.hj, %bb.ci ]
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hp, ptr nonnull readonly align 16 %i.a, i64 %i.gs, i1 false)
  %i.hq = load i64, ptr %i.j, align 8, !tbaa !27
  %i.hr = add i64 %i.hq, %i.gs
  store i64 %i.hr, ptr %i.j, align 8, !tbaa !27
  br label %addnum2buff.exit69

addnum2buff.exit69:                               ; preds = %bb.by, %bb.cb, %.thread.i.i68, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %addstr2buff.exit45

bb.ck:                                            ; preds = %addstr2buff.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.hs = load i32, ptr %2, align 8               ; 3 uses
  %i.ht = icmp ult i32 %i.hs, 41
  br i1 %i.ht, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.hu = load ptr, ptr %i.o, align 8
  %i.hv = zext nneg i32 %i.hs to i64
  %i.hw = getelementptr i8, ptr %i.hu, i64 %i.hv
  %i.hx = add nuw nsw i32 %i.hs, 8
  store i32 %i.hx, ptr %2, align 8
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  %i.hy = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 8
  store ptr %i.hz, ptr %i.n, align 8
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.ia = phi ptr [ %i.hw, %bb.cl ], [ %i.hy, %bb.cm ]
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !34
  %i.ic = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 64, ptr noundef nonnull @.str.2, ptr noundef %i.ib) #16
  %i.id = zext i32 %i.ic to i64                   ; 5 uses
  %i.ie = load i64, ptr %i.i, align 8, !tbaa !26  ; 3 uses
  %i.if = load i64, ptr %i.j, align 8, !tbaa !27  ; 4 uses
  %i.ig = sub i64 %i.ie, %i.if                    ; 2 uses
  %i.ih = load i32, ptr %i.k, align 8, !tbaa !28
  %.not.i70 = icmp eq i32 %i.ih, 0
  br i1 %.not.i70, label %bb.co, label %addstr2buff.exit77

bb.co:                                            ; preds = %bb.cn
  %i.ii = icmp ult i64 %i.ig, %i.id
  br i1 %i.ii, label %bb.cp, label %._crit_edge.i71

._crit_edge.i71:                                  ; preds = %bb.co
  %.pre.i73 = load ptr, ptr %i.h, align 8, !tbaa !25
  br label %bb.cy

bb.cp:                                            ; preds = %bb.co
  %i.ij = sub i64 4611686018427387903, %i.if
  %i.ik = icmp ult i64 %i.ij, %i.id
  br i1 %i.ik, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.il = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.if
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.im, ptr nonnull readonly align 16 %i.e, i64 %i.ig, i1 false)
  %i.in = load i64, ptr %i.i, align 8, !tbaa !26
  store i64 %i.in, ptr %i.j, align 8, !tbaa !27
  store i32 2, ptr %i.k, align 8, !tbaa !28
  br label %addstr2buff.exit77

bb.cr:                                            ; preds = %bb.cp
  %i.io = add i64 %i.ie, %i.id                    ; 3 uses
  %i.ip = load ptr, ptr %i.h, align 8, !tbaa !25  ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.g
  %i.ir = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  br i1 %i.iq, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.is = call ptr @luaM_realloc_(ptr noundef %i.ir, ptr noundef null, i64 noundef 0, i64 noundef %i.io) #16
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  %i.it = call ptr @luaM_realloc_(ptr noundef %i.ir, ptr noundef %i.ip, i64 noundef %i.ie, i64 noundef %i.io) #16
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.iu = phi ptr [ %i.is, %bb.cs ], [ %i.it, %bb.ct ] ; 4 uses
  %.not46.i74 = icmp eq ptr %i.iu, null
  br i1 %.not46.i74, label %.thread.i76, label %bb.cv

.thread.i76:                                      ; preds = %bb.cu
  store i32 1, ptr %i.k, align 8, !tbaa !28
  br label %addstr2buff.exit77

bb.cv:                                            ; preds = %bb.cu
  %i.iv = load ptr, ptr %i.h, align 8, !tbaa !25  ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.g
  br i1 %i.iw, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.ix = load i64, ptr %i.j, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iu, ptr align 1 %i.iv, i64 %i.ix, i1 false)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  store ptr %i.iu, ptr %i.h, align 8, !tbaa !25
  store i64 %i.io, ptr %i.i, align 8, !tbaa !26
  %.pre47.i75 = load i64, ptr %i.j, align 8, !tbaa !27
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %._crit_edge.i71
  %i.iy = phi i64 [ %i.if, %._crit_edge.i71 ], [ %.pre47.i75, %bb.cx ]
  %i.iz = phi ptr [ %.pre.i73, %._crit_edge.i71 ], [ %i.iu, %bb.cx ]
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.iy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ja, ptr nonnull readonly align 16 %i.e, i64 %i.id, i1 false)
  %i.jb = load i64, ptr %i.j, align 8, !tbaa !27
  %i.jc = add i64 %i.jb, %i.id
  store i64 %i.jc, ptr %i.j, align 8, !tbaa !27
  br label %addstr2buff.exit77

addstr2buff.exit77:                               ; preds = %bb.cn, %bb.cq, %.thread.i76, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %addstr2buff.exit45

bb.cz:                                            ; preds = %addstr2buff.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.jd = load i32, ptr %2, align 8               ; 3 uses
  %i.je = icmp ult i32 %i.jd, 41
  br i1 %i.je, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.jf = load ptr, ptr %i.o, align 8
  %i.jg = zext nneg i32 %i.jd to i64
  %i.jh = getelementptr i8, ptr %i.jf, i64 %i.jg
  %i.ji = add nuw nsw i32 %i.jd, 8
  store i32 %i.ji, ptr %2, align 8
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  %i.jj = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.jk = getelementptr i8, ptr %i.jj, i64 8
  store ptr %i.jk, ptr %i.n, align 8
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.jl = phi ptr [ %i.jh, %bb.da ], [ %i.jj, %bb.db ]
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !35
  %i.jn = trunc i64 %i.jm to i32                  ; 3 uses
  %i.jo = icmp ult i32 %i.jn, 128
  br i1 %i.jo, label %luaO_utf8esc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.dc, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 1, %bb.dc ] ; 3 uses
  %.015.i = phi i32 [ %i.ju, %.preheader.i ], [ %i.jn, %bb.dc ] ; 2 uses
  %.0.i = phi i32 [ %i.jv, %.preheader.i ], [ 63, %bb.dc ]
  %i.jp = trunc i32 %.015.i to i8
  %i.jq = and i8 %i.jp, 63
  %i.jr = or disjoint i8 %i.jq, -128
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.js = sub nsw i64 8, %indvars.iv.i
  %i.jt = getelementptr inbounds i8, ptr %i.f, i64 %i.js
  store i8 %i.jr, ptr %i.jt, align 1, !tbaa !9
  %i.ju = lshr i32 %.015.i, 6                     ; 3 uses
  %i.jv = lshr i32 %.0.i, 1                       ; 3 uses
  %i.jw = icmp samesign ugt i32 %i.ju, %i.jv
  br i1 %i.jw, label %.preheader.i, label %bb.dd

bb.dd:                                            ; preds = %.preheader.i
  %i.jx = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.jy = xor i32 %i.jv, -1
  %i.jz = shl nsw i32 %i.jy, 1
  %i.ka = or i32 %i.jz, %i.ju
  %i.kb = shl i64 %indvars.iv.i, 32
  %sext.i = sub i64 30064771072, %i.kb
  %i.kc = ashr exact i64 %sext.i, 32
  br label %luaO_utf8esc.exit

luaO_utf8esc.exit:                                ; preds = %bb.dc, %bb.dd
  %.sink31.i = phi i64 [ %i.kc, %bb.dd ], [ 7, %bb.dc ]
  %.sink.in.i = phi i32 [ %i.ka, %bb.dd ], [ %i.jn, %bb.dc ]
  %.1.i = phi i32 [ %i.jx, %bb.dd ], [ 1, %bb.dc ] ; 2 uses
  %.sink.i = trunc i32 %.sink.in.i to i8
  %i.kd = getelementptr inbounds i8, ptr %i.f, i64 %.sink31.i
  store i8 %.sink.i, ptr %i.kd, align 1, !tbaa !9
  %narrow = sub nsw i32 0, %.1.i
  %i.ke = sext i32 %narrow to i64
  %i.kf = getelementptr inbounds i8, ptr %i.p, i64 %i.ke ; 2 uses
  %i.kg = zext i32 %.1.i to i64                   ; 5 uses
  %i.kh = load i64, ptr %i.i, align 8, !tbaa !26  ; 3 uses
  %i.ki = load i64, ptr %i.j, align 8, !tbaa !27  ; 4 uses
  %i.kj = sub i64 %i.kh, %i.ki                    ; 2 uses
  %i.kk = load i32, ptr %i.k, align 8, !tbaa !28
  %.not.i78 = icmp eq i32 %i.kk, 0
  br i1 %.not.i78, label %bb.de, label %addstr2buff.exit85

bb.de:                                            ; preds = %luaO_utf8esc.exit
  %i.kl = icmp ult i64 %i.kj, %i.kg
  br i1 %i.kl, label %bb.df, label %._crit_edge.i79

._crit_edge.i79:                                  ; preds = %bb.de
  %.pre.i81 = load ptr, ptr %i.h, align 8, !tbaa !25
  br label %bb.do

bb.df:                                            ; preds = %bb.de
  %i.km = sub i64 4611686018427387903, %i.ki
  %i.kn = icmp ult i64 %i.km, %i.kg
  br i1 %i.kn, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.ko = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.ki
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kp, ptr nonnull readonly align 1 %i.kf, i64 %i.kj, i1 false)
  %i.kq = load i64, ptr %i.i, align 8, !tbaa !26
  store i64 %i.kq, ptr %i.j, align 8, !tbaa !27
end_hunk_1
