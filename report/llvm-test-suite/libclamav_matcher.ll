inline.NumInlined: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cli_ac_data = type { i32, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.cli_md5_ctx = type { i32, i32, i32, i32, i32, i32, [64 x i8], [16 x i32] }

@.str = private unnamed_addr constant [30 x i8] c"cli_scanbuff: engine == NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid descriptor\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"SL+%u\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"S%u+%u\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"EOF-\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"cli_validatesig: Can't calculate offset for signature %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Signature offset: %lu, expected: [%lu..%lu] (%s)\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Signature offset: %lu, expected: %lu (%s)\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"cli_scandesc: engine == NULL\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"cli_scandesc(): unable to cli_calloc(%u)\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"Detected false positive MD5 match. Please report.\0A\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"cli_checkfp(): Can't generate MD5 checksum\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"Eliminated false positive match (fp sig: %s)\0A\00", align 1
@switch.table.cli_scandesc = private unnamed_addr constant [28 x i64] [i64 1, i64 6, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 2, i64 poison, i64 poison, i64 poison, i64 poison, i64 5, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 3, i64 4], align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @cli_scanbuff(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.cli_ac_data, align 8        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str) #11
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 4 uses
  %switch.tableidx = add i32 %4, -502             ; 3 uses
  %6 = icmp ult i32 %switch.tableidx, 28
  %switch.shifted = lshr i32 201394179, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %6, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %7 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.cli_scandesc, i64 %7
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %switch.load
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 5 uses
  %.not49 = icmp eq ptr %i.e, null
  br i1 %.not49, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !14
  %i.h = call i32 @cli_ac_initdata(ptr noundef nonnull %5, i32 noundef %i.g, i8 noundef zeroext 8) #11 ; 2 uses
  %.not50 = icmp eq i32 %i.h, 0
  br i1 %.not50, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.j = load i8, ptr %i.i, align 2, !tbaa !22
  %.not51 = icmp eq i8 %i.j, 0
  br i1 %.not51, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = call i32 @cli_bm_scanbuff(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef %4, i32 noundef -1) #11
  %.not52 = icmp eq i32 %i.k, 1
  br i1 %.not52, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = call i32 @cli_ac_scanbuff(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %i.e, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %4, i32 noundef -1, ptr noundef null) #11
  %i.m = icmp eq i32 %i.l, 1
  call void @cli_ac_freedata(ptr noundef nonnull %5) #11
  br i1 %i.m, label %bb.m, label %.thread

.critedge:                                        ; preds = %bb.g
  call void @cli_ac_freedata(ptr noundef nonnull %5) #11
  br label %bb.m

.thread:                                          ; preds = %bb.c, %bb.h, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.o = load i32, ptr %i.n, align 8, !tbaa !14
  %i.p = call i32 @cli_ac_initdata(ptr noundef nonnull %5, i32 noundef %i.o, i8 noundef zeroext 8) #11 ; 2 uses
  %.not53 = icmp eq i32 %i.p, 0
  br i1 %.not53, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.thread
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.r = load i8, ptr %i.q, align 2, !tbaa !22
  %.not54 = icmp eq i8 %i.r, 0
  br i1 %.not54, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = call i32 @cli_bm_scanbuff(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef %4, i32 noundef -1) #11
  %.not55 = icmp eq i32 %i.s, 1
  br i1 %.not55, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = call i32 @cli_ac_scanbuff(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %4, i32 noundef -1, ptr noundef null) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1 = phi i32 [ %i.t, %bb.k ], [ 1, %bb.j ]
  call void @cli_ac_freedata(ptr noundef nonnull %5) #11
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.h, %.critedge, %bb.e, %bb.l, %bb.b
  %.039 = phi i32 [ -111, %bb.b ], [ %i.h, %bb.e ], [ 1, %bb.h ], [ %.1, %bb.l ], [ 1, %.critedge ], [ %i.p, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i32 %.039
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @cli_ac_initdata(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @cli_bm_scanbuff(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cli_ac_scanbuff(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @cli_ac_freedata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @cli_vermd5(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = load i8, ptr %0, align 1, !tbaa !24
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.012 = phi ptr [ %i.n, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.012, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = load i128, ptr %i.h, align 1
  %i.j = load i128, ptr %0, align 1
  %i.k = icmp ne i128 %i.i, %i.j
  %i.l = zext i1 %i.k to i32
  %.not11 = icmp eq i32 %i.l, 0
  br i1 %.not11, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %.012, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %.not10 = icmp eq ptr %i.n, null
  br i1 %.not10, label %.loopexit, label %.preheader, !llvm.loop !29

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  %.08 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %.012, %.preheader ]
  ret ptr %.08
}

; Function Attrs: nounwind uwtable
define dso_local i64 @cli_caloff(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly captures(none) initializes((0, 4)) %4, ptr noundef writeonly captures(none) %5) local_unnamed_addr #0 {
sub_0:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %6 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 0, ptr %4, align 4, !tbaa !4
  %i.c = load i8, ptr %0, align 1
  switch i8 %i.c, label %.fold.split [
    i8 69, label %.tail
    i8 83, label %bb.a
  ]

.tail:                                            ; preds = %sub_0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 80
  br i1 %i.f, label %bb.a, label %.fold.split

bb.a:                                             ; preds = %sub_0, %.tail
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !31
  switch i8 %i.h, label %.fold.split [
    i8 -1, label %bb.b
    i8 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %4, align 4, !tbaa !4
  br label %bb.ai

bb.c:                                             ; preds = %bb.a
  switch i32 %3, label %.fold.split [
    i32 502, label %bb.e
    i32 503, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.062 = phi ptr [ @cli_peheader, %bb.c ], [ @cli_elfheader, %bb.d ]
  %i.i = tail call i64 @lseek(i32 noundef %2, i64 noundef 0, i32 noundef 1) #11 ; 2 uses
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2) #11
  store i32 -1, ptr %4, align 4, !tbaa !4
  store i8 -1, ptr %i.g, align 8, !tbaa !31
  br label %bb.ai

bb.g:                                             ; preds = %bb.e
  %i.k = tail call i64 @lseek(i32 noundef %2, i64 noundef 0, i32 noundef 0) #11 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = tail call i32 %.062(i32 noundef %2, ptr noundef nonnull %i.l) #11, !callees !36
  %.not69 = icmp eq i32 %i.m, 0
  %i.n = tail call i64 @lseek(i32 noundef %2, i64 noundef %i.i, i32 noundef 0) #11 ; 0 uses
  br i1 %.not69, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 -1, ptr %4, align 4, !tbaa !4
  store i8 -1, ptr %i.g, align 8, !tbaa !31
  br label %bb.ai

bb.i:                                             ; preds = %bb.g
  store i8 1, ptr %i.g, align 8, !tbaa !31
  br label %.fold.split

.fold.split:                                      ; preds = %sub_0, %.tail, %bb.c, %bb.a, %bb.i
  %i.o = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 44) #12 ; 2 uses
  %.not70 = icmp eq ptr %i.o, null
  br i1 %.not70, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.fold.split
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.p, ptr noundef null, i32 noundef 10) #11, !inline_history !37
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr %5, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.fold.split
  %i.s = tail call ptr @__ctype_b_loc() #13
end_hunk_0
begin_hunk_1_@cli_caloff:sub_0
  br label %bb.ai

bb.w:                                             ; preds = %bb.u
  %i.bv = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bx = load i16, ptr %i.bw, align 4, !tbaa !43
  %i.by = zext i16 %i.bx to i32
  %.not80 = icmp ult i32 %i.bv, %i.by
  br i1 %.not80, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !42
  %i.cb = zext nneg i32 %i.bv to i64
  %i.cc = getelementptr inbounds nuw [36 x i8], ptr %i.ca, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !44
  %.not81 = icmp eq i32 %i.ce, 0
  br i1 %.not81, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  store i32 -1, ptr %4, align 4, !tbaa !4
  br label %bb.ai

bb.z:                                             ; preds = %bb.x
  %i.cf = load i32, ptr %i.b, align 4, !tbaa !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !46
  %i.ci = add i32 %i.ch, %i.cf
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.t
  %.0.in = phi i32 [ %i.ci, %bb.z ], [ %i.bt, %bb.t ]
  %.0 = zext i32 %.0.in to i64
  br label %bb.ai

.thread111:                                       ; preds = %sub_084, %.tail87, %sub_189, %bb.m
  %i.cj = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.8, i64 noundef 4) #12
  %.not74 = icmp eq i32 %i.cj, 0
  br i1 %.not74, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %.thread111
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.ck = load i64, ptr %1, align 8, !tbaa !47    ; 2 uses
  %.not75 = icmp eq i64 %i.ck, 0
  br i1 %.not75, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.cl = call i32 @fstat(i32 noundef %2, ptr noundef nonnull %6) #11
  %i.cm = icmp eq i32 %i.cl, -1
  br i1 %i.cm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 -1, ptr %4, align 4, !tbaa !4
  store i8 -1, ptr %i.ab, align 8, !tbaa !31
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !48 ; 2 uses
  store i64 %i.co, ptr %1, align 8, !tbaa !47
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %i.cp = phi i64 [ %i.co, %bb.ae ], [ %i.ck, %bb.ab ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cr = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.cq, ptr noundef null, i32 noundef 10) #11, !inline_history !37
  %sext82 = shl i64 %i.cr, 32
  %i.cs = ashr exact i64 %sext82, 32
  %i.ct = sub nsw i64 %i.cp, %i.cs
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %.061 = phi i64 [ %i.ct, %bb.af ], [ 0, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.ai

bb.ah:                                            ; preds = %.thread111
  store i32 -1, ptr %4, align 4, !tbaa !4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.aa, %bb.y, %bb.v, %bb.s, %bb.p, %bb.o, %bb.l, %bb.h, %bb.f, %bb.b
  %.1 = phi i64 [ 0, %bb.b ], [ %i.aa, %bb.l ], [ 0, %bb.v ], [ 0, %bb.y ], [ %.0, %bb.aa ], [ 0, %bb.s ], [ 0, %bb.ah ], [ %.061, %bb.ag ], [ %i.ax, %bb.o ], [ %i.az, %bb.p ], [ 0, %bb.f ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

declare i32 @cli_peheader(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cli_elfheader(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @cli_validatesig(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 0, ptr %i.b, align 4, !tbaa !4
  %i.c = icmp ne ptr %1, null
  %i.d = icmp ne i32 %4, -1
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = call i64 @cli_caloff(ptr noundef nonnull %1, ptr noundef %3, i32 noundef %4, i32 noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 5 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !4
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9, ptr noundef %5) #11
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.b, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp slt i64 %2, %i.e
  %i.j = zext i32 %i.h to i64
  %i.k = add nsw i64 %i.e, %i.j                   ; 2 uses
  %i.l = icmp sgt i64 %2, %i.k
  %or.cond30 = select i1 %i.i, i1 true, i1 %i.l
  br i1 %or.cond30, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10, i64 noundef %2, i64 noundef %i.e, i64 noundef %i.k, ptr noundef %5) #11
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %.not27 = icmp eq i64 %2, %i.e
  br i1 %.not27, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11, i64 noundef %2, i64 noundef %i.e, ptr noundef %5) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.g, %bb.e, %bb.h, %bb.f, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.h ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cli_scandesc(i32 noundef %0, ptr noundef readonly captures(none) %1, i8 noundef zeroext %2, i32 noundef %3, i8 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.cli_ac_data, align 8        ; 7 uses
  %7 = alloca %struct.cli_ac_data, align 8        ; 7 uses
  %8 = alloca %struct.cli_md5_ctx, align 4        ; 5 uses
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %9 = alloca %struct.stat, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51   ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.12) #11
  br label %bb.bb

bb.c:                                             ; preds = %bb.a
  %.not167 = icmp eq i8 %4, 0                     ; 8 uses
  br i1 %.not167, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0136 = phi ptr [ null, %bb.c ], [ %i.f, %bb.d ] ; 6 uses
  %switch.tableidx = add i32 %3, -502             ; 3 uses
  %10 = icmp ult i32 %switch.tableidx, 28
  %switch.shifted = lshr i32 201394179, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond224 = select i1 %10, i1 %switch.lobit, i1 false
  br i1 %or.cond224, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %11 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.cli_scandesc, i64 %11
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %switch.load
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f
  %.0135 = phi ptr [ %i.j, %bb.f ], [ null, %bb.e ] ; 8 uses
  %.not169 = icmp eq ptr %.0135, null             ; 2 uses
  br i1 %.not167, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.loopexit
  br i1 %.not169, label %bb.bb, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load i16, ptr %.0135, align 8, !tbaa !59
  br label %bb.l

bb.i:                                             ; preds = %.loopexit
  br i1 %.not169, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = load i16, ptr %.0135, align 8, !tbaa !59
  %i.m = load i16, ptr %.0136, align 8, !tbaa !59
  %. = tail call i16 @llvm.umax.i16(i16 %i.l, i16 %i.m)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.n = load i16, ptr %.0136, align 8, !tbaa !59
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h
  %.0142.in = phi i16 [ %i.k, %bb.h ], [ %., %bb.j ], [ %i.n, %bb.k ] ; 2 uses
  %.0142 = zext i16 %.0142.in to i32              ; 3 uses
  %i.o = or disjoint i32 %.0142, 131072           ; 2 uses
  %i.p = zext nneg i32 %i.o to i64
  %i.q = tail call ptr @cli_calloc(i64 noundef %i.p, i64 noundef 1) #11 ; 8 uses
  %.not171 = icmp eq ptr %i.q, null
  br i1 %.not171, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13, i32 noundef %i.o) #11
  br label %bb.bb

bb.n:                                             ; preds = %bb.l
  br i1 %.not167, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.r = getelementptr inbounds nuw i8, ptr %.0136, i64 64
  %i.s = load i32, ptr %i.r, align 8, !tbaa !14
  %i.t = call i32 @cli_ac_initdata(ptr noundef nonnull %6, i32 noundef %i.s, i8 noundef zeroext 8) #11 ; 2 uses
  %.not172 = icmp eq i32 %i.t, 0
  br i1 %.not172, label %bb.p, label %bb.bb

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not173 = icmp eq ptr %.0135, null             ; 4 uses
  br i1 %.not173, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.u = getelementptr inbounds nuw i8, ptr %.0135, i64 64
  %i.v = load i32, ptr %i.u, align 8, !tbaa !14
  %i.w = call i32 @cli_ac_initdata(ptr noundef nonnull %7, i32 noundef %i.v, i8 noundef zeroext 8) #11 ; 2 uses
  %.not174 = icmp eq i32 %i.w, 0
  br i1 %.not174, label %bb.r, label %bb.bb

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %.not167, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !23
  %.not175 = icmp eq ptr %i.z, null
  br i1 %.not175, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @cli_md5_init(ptr noundef nonnull %8) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.aa = zext i16 %.0142.in to i64               ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aa ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 131072
  %i.ad = sub nsw i64 0, %i.aa
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %i.ad
  %i.af = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.ab, i32 noundef 131072) #11 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.u
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.0135, i64 2
  %i.aj = getelementptr inbounds nuw i8, ptr %.0136, i64 2
  %i.ak = icmp ne i8 %2, 0
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.an
  %i.al = phi i32 [ %i.af, %.lr.ph ], [ %i.ca, %bb.an ] ; 3 uses
  %i.am = phi ptr [ %i.ab, %.lr.ph ], [ %i.by, %bb.an ]
  %.0138206 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.an ] ; 6 uses
  %.0140205 = phi i32 [ 0, %.lr.ph ], [ %.1141, %bb.an ]
  %.0144204 = phi ptr [ %i.ab, %.lr.ph ], [ %.2146, %bb.an ] ; 8 uses
  %.0148203 = phi i32 [ 0, %.lr.ph ], [ %.2150, %bb.an ] ; 3 uses
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !60 ; 3 uses
  %.not183 = icmp eq ptr %i.an, null
  br i1 %.not183, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ao = lshr i32 %i.al, 12
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = load i64, ptr %i.an, align 8, !tbaa !61
  %i.ar = add i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.an, align 8, !tbaa !61
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.as = add i32 %i.al, %.0140205                ; 3 uses
  %i.at = icmp eq ptr %.0144204, %i.q
  %i.au = select i1 %i.at, i32 %.0142, i32 0
  %spec.select = add i32 %i.as, %i.au             ; 4 uses
  br i1 %.not173, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = load i8, ptr %i.ai, align 2, !tbaa !22
  %.not184 = icmp eq i8 %i.av, 0
  br i1 %.not184, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.aw = load ptr, ptr %1, align 8, !tbaa !62
  %i.ax = call i32 @cli_bm_scanbuff(ptr noundef %.0144204, i32 noundef %spec.select, ptr noundef %i.aw, ptr noundef nonnull %.0135, i32 noundef %.0138206, i32 noundef %3, i32 noundef %0) #11
  %.not185 = icmp eq i32 %i.ax, 1
  br i1 %.not185, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ay = load ptr, ptr %1, align 8, !tbaa !62
  %i.az = call i32 @cli_ac_scanbuff(ptr noundef %.0144204, i32 noundef %spec.select, ptr noundef %i.ay, ptr noundef nonnull %.0135, ptr noundef nonnull %7, i8 noundef zeroext %2, i32 noundef %.0138206, i32 noundef %3, i32 noundef %0, ptr noundef %5) #11
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %.critedge, label %bb.ad

.critedge:                                        ; preds = %bb.z, %bb.aa
  call void @free(ptr noundef nonnull %i.q) #11
  br i1 %.not167, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.critedge
  call void @cli_ac_freedata(ptr noundef nonnull %6) #11
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge
  call void @cli_ac_freedata(ptr noundef nonnull %7) #11
  %i.bb = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #11 ; 0 uses
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.bd = call fastcc i32 @cli_checkfp(i32 noundef %0, ptr noundef %i.bc)
  %.not190 = icmp eq i32 %i.bd, 0
  %.191 = zext i1 %.not190 to i32
  br label %bb.bb

bb.ad:                                            ; preds = %bb.aa, %bb.x
  br i1 %.not167, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %i.be = load i8, ptr %i.aj, align 2, !tbaa !22
  %.not186 = icmp eq i8 %i.be, 0
  br i1 %.not186, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bf = load ptr, ptr %1, align 8, !tbaa !62
  %i.bg = call i32 @cli_bm_scanbuff(ptr noundef %.0144204, i32 noundef %spec.select, ptr noundef %i.bf, ptr noundef nonnull %.0136, i32 noundef %.0138206, i32 noundef %3, i32 noundef %0) #11
  %.not187 = icmp eq i32 %i.bg, 1
  br i1 %.not187, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.bh = load ptr, ptr %1, align 8, !tbaa !62
  %i.bi = call i32 @cli_ac_scanbuff(ptr noundef %.0144204, i32 noundef %spec.select, ptr noundef %i.bh, ptr noundef nonnull %.0136, ptr noundef nonnull %6, i8 noundef zeroext %2, i32 noundef %.0138206, i32 noundef %3, i32 noundef %0, ptr noundef %5) #11 ; 3 uses
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %.thread, label %bb.aj

.thread:                                          ; preds = %bb.af, %bb.ag
  call void @free(ptr noundef nonnull %i.q) #11
  call void @cli_ac_freedata(ptr noundef nonnull %6) #11
  br i1 %.not173, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.thread
  call void @cli_ac_freedata(ptr noundef nonnull %7) #11
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread
  %i.bk = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #11 ; 0 uses
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.bm = call fastcc i32 @cli_checkfp(i32 noundef %0, ptr noundef %i.bl)
  %.not189 = icmp eq i32 %i.bm, 0
  %.192 = zext i1 %.not189 to i32
  br label %bb.bb

bb.aj:                                            ; preds = %bb.ag
  %i.bn = icmp sgt i32 %i.bi, 499
  %or.cond = and i1 %i.ak, %i.bn
  %i.bo = call i32 @llvm.smax.i32(i32 %i.bi, i32 %.0148203)
  %.1149 = select i1 %or.cond, i32 %i.bo, i32 %.0148203 ; 2 uses
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !23
  %.not188 = icmp eq ptr %i.br, null
  br i1 %.not188, label %bb.al, label %bb.ak
end_hunk_1
