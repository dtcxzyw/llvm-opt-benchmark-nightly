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
@switch.table.cli_scandesc = private unnamed_addr constant [28 x i8] [i8 1, i8 6, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 2, i8 poison, i8 poison, i8 poison, i8 poison, i8 5, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 3, i8 4], align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @cli_scanbuff(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.cli_ac_data, align 8        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str) #11
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 4 uses
  %switch.tableidx = add i32 %4, -502             ; 3 uses
  %i.d = icmp ult i32 %switch.tableidx, 28
  %switch.shifted = lshr i32 201394179, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.d, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %.thread

switch.lookup:                                    ; preds = %bb.c
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.cli_scandesc, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %switch.ext
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 5 uses
  %.not49 = icmp eq ptr %i.g, null
  br i1 %.not49, label %.thread, label %bb.d

bb.d:                                             ; preds = %switch.lookup
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load i32, ptr %i.h, align 8, !tbaa !14
  %i.j = call i32 @cli_ac_initdata(ptr noundef nonnull %5, i32 noundef %i.i, i8 noundef zeroext 8) #11 ; 2 uses
  %.not50 = icmp eq i32 %i.j, 0
  br i1 %.not50, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.l = load i8, ptr %i.k, align 2, !tbaa !22
  %.not51 = icmp eq i8 %i.l, 0
  br i1 %.not51, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = call i32 @cli_bm_scanbuff(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %i.g, i32 noundef 0, i32 noundef %4, i32 noundef -1) #11
  %.not52 = icmp eq i32 %i.m, 1
  br i1 %.not52, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = call i32 @cli_ac_scanbuff(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %i.g, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %4, i32 noundef -1, ptr noundef null) #11
  %i.o = icmp eq i32 %i.n, 1
  call void @cli_ac_freedata(ptr noundef nonnull %5) #11
  br i1 %i.o, label %bb.l, label %.thread

.critedge:                                        ; preds = %bb.f
  call void @cli_ac_freedata(ptr noundef nonnull %5) #11
  br label %bb.l

.thread:                                          ; preds = %bb.c, %bb.g, %switch.lookup
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.q = load i32, ptr %i.p, align 8, !tbaa !14
  %i.r = call i32 @cli_ac_initdata(ptr noundef nonnull %5, i32 noundef %i.q, i8 noundef zeroext 8) #11 ; 2 uses
  %.not53 = icmp eq i32 %i.r, 0
  br i1 %.not53, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.thread
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.t = load i8, ptr %i.s, align 2, !tbaa !22
  %.not54 = icmp eq i8 %i.t, 0
  br i1 %.not54, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = call i32 @cli_bm_scanbuff(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef %4, i32 noundef -1) #11
  %.not55 = icmp eq i32 %i.u, 1
  br i1 %.not55, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = call i32 @cli_ac_scanbuff(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %4, i32 noundef -1, ptr noundef null) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1 = phi i32 [ %i.v, %bb.j ], [ 1, %bb.i ]
  call void @cli_ac_freedata(ptr noundef nonnull %5) #11
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.g, %.critedge, %bb.d, %bb.k, %bb.b
  %.039 = phi i32 [ -111, %bb.b ], [ %i.j, %bb.d ], [ 1, %bb.g ], [ %.1, %bb.k ], [ 1, %.critedge ], [ %i.r, %.thread ]
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
define dso_local ptr @cli_vermd5(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
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
define dso_local i64 @cli_caloff(ptr nofree noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
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
define dso_local i32 @cli_scandesc(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i8 noundef zeroext %2, i32 noundef %3, i8 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 {
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
  br label %bb.ba

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
  %i.g = icmp ult i32 %switch.tableidx, 28
  %switch.shifted = lshr i32 201394179, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond224 = select i1 %i.g, i1 %switch.lobit, i1 false
  br i1 %or.cond224, label %switch.lookup, label %.loopexit

switch.lookup:                                    ; preds = %bb.e
  %i.h = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.cli_scandesc, i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %switch.ext
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %switch.lookup
  %.0135 = phi ptr [ %i.l, %switch.lookup ], [ null, %bb.e ] ; 8 uses
  %.not169 = icmp eq ptr %.0135, null             ; 2 uses
  br i1 %.not167, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.loopexit
  br i1 %.not169, label %bb.ba, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i16, ptr %.0135, align 8, !tbaa !59
  br label %bb.k

bb.h:                                             ; preds = %.loopexit
  br i1 %.not169, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load i16, ptr %.0135, align 8, !tbaa !59
  %i.o = load i16, ptr %.0136, align 8, !tbaa !59
  %. = tail call i16 @llvm.umax.i16(i16 %i.n, i16 %i.o)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.p = load i16, ptr %.0136, align 8, !tbaa !59
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %.0142.in = phi i16 [ %i.m, %bb.g ], [ %., %bb.i ], [ %i.p, %bb.j ] ; 2 uses
  %.0142 = zext i16 %.0142.in to i32              ; 3 uses
  %i.q = or disjoint i32 %.0142, 131072           ; 2 uses
  %i.r = zext nneg i32 %i.q to i64
  %i.s = tail call ptr @cli_calloc(i64 noundef %i.r, i64 noundef 1) #11 ; 8 uses
  %.not171 = icmp eq ptr %i.s, null
  br i1 %.not171, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13, i32 noundef %i.q) #11
  br label %bb.ba

bb.m:                                             ; preds = %bb.k
  br i1 %.not167, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.t = getelementptr inbounds nuw i8, ptr %.0136, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !14
  %i.v = call i32 @cli_ac_initdata(ptr noundef nonnull %6, i32 noundef %i.u, i8 noundef zeroext 8) #11 ; 2 uses
  %.not172 = icmp eq i32 %i.v, 0
  br i1 %.not172, label %bb.o, label %bb.ba

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not173 = icmp eq ptr %.0135, null             ; 4 uses
  br i1 %.not173, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %.0135, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !14
  %i.y = call i32 @cli_ac_initdata(ptr noundef nonnull %7, i32 noundef %i.x, i8 noundef zeroext 8) #11 ; 2 uses
  %.not174 = icmp eq i32 %i.y, 0
  br i1 %.not174, label %bb.q, label %bb.ba

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not167, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23
  %.not175 = icmp eq ptr %i.ab, null
  br i1 %.not175, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @cli_md5_init(ptr noundef nonnull %8) #11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.ac = zext i16 %.0142.in to i64               ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ac ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 131072
  %i.af = sub nsw i64 0, %i.ac
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af
  %i.ah = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.ad, i32 noundef 131072) #11 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.t
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0135, i64 2
  %i.al = getelementptr inbounds nuw i8, ptr %.0136, i64 2
  %i.am = icmp ne i8 %2, 0
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.am
  %i.an = phi i32 [ %i.ah, %.lr.ph ], [ %i.cc, %bb.am ] ; 3 uses
  %i.ao = phi ptr [ %i.ad, %.lr.ph ], [ %i.ca, %bb.am ]
  %.0138206 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.am ] ; 6 uses
  %.0140205 = phi i32 [ 0, %.lr.ph ], [ %.1141, %bb.am ]
  %.0144204 = phi ptr [ %i.ad, %.lr.ph ], [ %.2146, %bb.am ] ; 8 uses
  %.0148203 = phi i32 [ 0, %.lr.ph ], [ %.2150, %bb.am ] ; 3 uses
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 3 uses
  %.not183 = icmp eq ptr %i.ap, null
  br i1 %.not183, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = lshr i32 %i.an, 12
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = load i64, ptr %i.ap, align 8, !tbaa !61
  %i.at = add i64 %i.as, %i.ar
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !61
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.au = add i32 %i.an, %.0140205                ; 3 uses
  %i.av = icmp eq ptr %.0144204, %i.s
  %i.aw = select i1 %i.av, i32 %.0142, i32 0
  %spec.select = add i32 %i.au, %i.aw             ; 4 uses
  br i1 %.not173, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ax = load i8, ptr %i.ak, align 2, !tbaa !22
  %.not184 = icmp eq i8 %i.ax, 0
  br i1 %.not184, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ay = load ptr, ptr %1, align 8, !tbaa !62
  %i.az = call i32 @cli_bm_scanbuff(ptr noundef %.0144204, i32 noundef %spec.select, ptr noundef %i.ay, ptr noundef nonnull %.0135, i32 noundef %.0138206, i32 noundef %3, i32 noundef %0) #11
  %.not185 = icmp eq i32 %i.az, 1
  br i1 %.not185, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ba = load ptr, ptr %1, align 8, !tbaa !62
  %i.bb = call i32 @cli_ac_scanbuff(ptr noundef %.0144204, i32 noundef %spec.select, ptr noundef %i.ba, ptr noundef nonnull %.0135, ptr noundef nonnull %7, i8 noundef zeroext %2, i32 noundef %.0138206, i32 noundef %3, i32 noundef %0, ptr noundef %5) #11
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %.critedge, label %bb.ac

.critedge:                                        ; preds = %bb.y, %bb.z
  call void @free(ptr noundef nonnull %i.s) #11
  br i1 %.not167, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge
  call void @cli_ac_freedata(ptr noundef nonnull %6) #11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge
  call void @cli_ac_freedata(ptr noundef nonnull %7) #11
  %i.bd = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #11 ; 0 uses
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.bf = call fastcc i32 @cli_checkfp(i32 noundef %0, ptr noundef %i.be)
  %.not190 = icmp eq i32 %i.bf, 0
  %.191 = zext i1 %.not190 to i32
  br label %bb.ba

bb.ac:                                            ; preds = %bb.z, %bb.w
  br i1 %.not167, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.bg = load i8, ptr %i.al, align 2, !tbaa !22
  %.not186 = icmp eq i8 %i.bg, 0
  br i1 %.not186, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bh = load ptr, ptr %1, align 8, !tbaa !62
  %i.bi = call i32 @cli_bm_scanbuff(ptr noundef %.0144204, i32 noundef %spec.select, ptr noundef %i.bh, ptr noundef nonnull %.0136, i32 noundef %.0138206, i32 noundef %3, i32 noundef %0) #11
  %.not187 = icmp eq i32 %i.bi, 1
  br i1 %.not187, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.bj = load ptr, ptr %1, align 8, !tbaa !62
  %i.bk = call i32 @cli_ac_scanbuff(ptr noundef %.0144204, i32 noundef %spec.select, ptr noundef %i.bj, ptr noundef nonnull %.0136, ptr noundef nonnull %6, i8 noundef zeroext %2, i32 noundef %.0138206, i32 noundef %3, i32 noundef %0, ptr noundef %5) #11 ; 3 uses
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %.thread, label %bb.ai

.thread:                                          ; preds = %bb.ae, %bb.af
  call void @free(ptr noundef nonnull %i.s) #11
  call void @cli_ac_freedata(ptr noundef nonnull %6) #11
  br i1 %.not173, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.thread
  call void @cli_ac_freedata(ptr noundef nonnull %7) #11
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread
  %i.bm = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #11 ; 0 uses
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.bo = call fastcc i32 @cli_checkfp(i32 noundef %0, ptr noundef %i.bn)
  %.not189 = icmp eq i32 %i.bo, 0
  %.192 = zext i1 %.not189 to i32
  br label %bb.ba

bb.ai:                                            ; preds = %bb.af
  %i.bp = icmp sgt i32 %i.bk, 499
  %or.cond = and i1 %i.am, %i.bp
  %i.bq = call i32 @llvm.smax.i32(i32 %i.bk, i32 %.0148203)
  %.1149 = select i1 %or.cond, i32 %i.bq, i32 %.0148203 ; 2 uses
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !23
  %.not188 = icmp eq ptr %i.bt, null
  br i1 %.not188, label %bb.ak, label %bb.aj
end_hunk_1
