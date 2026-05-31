begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.stream_s = type { ptr, ptr, ptr, i32, i8, i8, i64, %struct.stream_procs, i32, ptr, ptr, i16, i32 }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr }

@special_ops = dso_local local_unnamed_addr global [7 x ptr] [ptr @zadd, ptr @zdup, ptr @zexch, ptr @zifelse, ptr @zle, ptr @zpop, ptr @zsub], align 16
@ostack = dso_local global [520 x %struct.ref_s] zeroinitializer, align 16
@osbot = dso_local local_unnamed_addr global ptr null, align 8
@osp = dso_local local_unnamed_addr global ptr null, align 8
@ostop = dso_local local_unnamed_addr global ptr null, align 8
@osp_nargs = dso_local local_unnamed_addr global [6 x ptr] zeroinitializer, align 16
@estack = dso_local global [151 x %struct.ref_s] zeroinitializer, align 16
@esp = dso_local local_unnamed_addr global ptr null, align 8
@estop = dso_local local_unnamed_addr global ptr null, align 8
@dstack = dso_local global [20 x %struct.ref_s] zeroinitializer, align 16
@dsp = dso_local local_unnamed_addr global ptr null, align 8
@dstop = dso_local local_unnamed_addr global ptr null, align 8
@name_errordict = external global %struct.ref_s, align 8
@name_ErrorNames = external global %struct.ref_s, align 8
@error_object = dso_local local_unnamed_addr global %struct.ref_s zeroinitializer, align 8
@switch.table.interpret = private unnamed_addr constant [23 x i32] [i32 -25, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 -16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 -5, i32 poison, i32 -3], align 4

declare i32 @zadd(ptr noundef) #0

declare i32 @zdup(ptr noundef) #0

declare i32 @zexch(ptr noundef) #0

declare i32 @zifelse(ptr noundef) #0

declare i32 @zle(ptr noundef) #0

declare i32 @zpop(ptr noundef) #0

declare i32 @zsub(ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @interp_init(i32 noundef %0) local_unnamed_addr #1 {
.preheader.preheader:
  store ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 160), ptr @osbot, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 144), ptr @osp, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 8144), ptr @ostop, align 8, !tbaa !8
  store i16 0, ptr @ostack, align 16, !tbaa !11
  store i16 -4, ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 8), align 8, !tbaa !12
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 16), align 16, !tbaa !11
  store i16 -4, ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 24), align 8, !tbaa !12
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 32), align 16, !tbaa !11
  store i16 -4, ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 40), align 8, !tbaa !12
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 48), align 16, !tbaa !11
  store i16 -4, ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 56), align 8, !tbaa !12
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 64), align 16, !tbaa !11
  store i16 -4, ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 72), align 8, !tbaa !12
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 80), align 16, !tbaa !11
  store i16 -4, ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 88), align 8, !tbaa !12
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 96), align 16, !tbaa !11
  store i16 -4, ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 104), align 8, !tbaa !12
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 112), align 16, !tbaa !11
  store i16 -4, ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 120), align 8, !tbaa !12
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 128), align 16, !tbaa !11
  store i16 -4, ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 136), align 8, !tbaa !12
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 144), align 16, !tbaa !11
  store i16 -4, ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 152), align 8, !tbaa !12
  store ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 160), ptr getelementptr inbounds nuw (i8, ptr @osp_nargs, i64 8), align 8, !tbaa !8
  store ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 176), ptr getelementptr inbounds nuw (i8, ptr @osp_nargs, i64 16), align 16, !tbaa !8
  store ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 192), ptr getelementptr inbounds nuw (i8, ptr @osp_nargs, i64 24), align 8, !tbaa !8
  store ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 208), ptr getelementptr inbounds nuw (i8, ptr @osp_nargs, i64 32), align 16, !tbaa !8
  store ptr getelementptr inbounds nuw (i8, ptr @ostack, i64 224), ptr getelementptr inbounds nuw (i8, ptr @osp_nargs, i64 40), align 8, !tbaa !8
  store ptr @estack, ptr @esp, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw (i8, ptr @estack, i64 2400), ptr @estop, align 8, !tbaa !8
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @dstack, i64 %i.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  store ptr %i.c, ptr @dsp, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw (i8, ptr @dstack, i64 304), ptr @dstop, align 8, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @interp_fix_op(ptr noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 7 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @special_ops, i64 48), align 16, !tbaa !15
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @special_ops, i64 40), align 8, !tbaa !15
  %.not.1 = icmp eq ptr %i.a, %i.c
  br i1 %.not.1, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @special_ops, i64 32), align 16, !tbaa !15
  %.not.2 = icmp eq ptr %i.a, %i.d
  br i1 %.not.2, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @special_ops, i64 24), align 8, !tbaa !15
  %.not.3 = icmp eq ptr %i.a, %i.e
  br i1 %.not.3, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @special_ops, i64 16), align 16, !tbaa !15
  %.not.4 = icmp eq ptr %i.a, %i.f
  br i1 %.not.4, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @special_ops, i64 8), align 8, !tbaa !15
  %.not.5 = icmp eq ptr %i.a, %i.g
  br i1 %.not.5, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = load ptr, ptr @special_ops, align 16, !tbaa !15
  %.not.6 = icmp eq ptr %i.a, %i.h
  br i1 %.not.6, label %.critedge, label %.critedge9

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0.lcssa11.wide = phi i16 [ 89, %bb.a ], [ 85, %bb.b ], [ 81, %bb.c ], [ 77, %bb.d ], [ 73, %bb.e ], [ 69, %bb.f ], [ 65, %bb.g ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.0.lcssa11.wide, ptr %i.i, align 8, !tbaa !12
  br label %.critedge9

.critedge9:                                       ; preds = %bb.g, %.critedge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @interpret(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %2 = alloca %struct.ref_s, align 8              ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr %0, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = load ptr, ptr @esp, align 8, !tbaa !8    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %i.e, ptr @esp, align 8, !tbaa !8
  store ptr @interp_exit, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i16 37, ptr %i.f, align 8, !tbaa !12
  %i.g = tail call i32 @interp(ptr noundef %0)    ; 4 uses
  %i.h = icmp eq i32 %i.g, -100
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.i = load ptr, ptr @osp, align 8, !tbaa !8
  %i.j = load ptr, ptr @osbot, align 8, !tbaa !8
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -16 ; 2 uses
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph.split.us
  store ptr %i.k, ptr @osp, align 8, !tbaa !8
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %i.m = phi i32 [ %i.an, %bb.j ], [ %i.g, %.lr.ph ] ; 9 uses
  %i.n = load ptr, ptr @osp, align 8, !tbaa !8
  %i.o = load ptr, ptr @osbot, align 8, !tbaa !8
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -16 ; 2 uses
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split
  store ptr %i.p, ptr @osp, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split
  %i.r = call i32 @dict_lookup(ptr noundef nonnull @dstack, ptr noundef nonnull @dstack, ptr noundef nonnull @name_errordict, ptr noundef nonnull %i.b) #6
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.u = call i32 @dict_lookup(ptr noundef %i.t, ptr noundef %i.t, ptr noundef nonnull @name_ErrorNames, ptr noundef nonnull %i.c) #6
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %switch.tableidx = add i32 %i.m, 25             ; 3 uses
  %3 = icmp ult i32 %switch.tableidx, 23
  %switch.shifted = lshr i32 5243393, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %3, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = icmp sgt i32 %i.m, -2
  br i1 %i.w, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = sub nsw i32 0, %i.m
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !8    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !16
  %i.ab = zext i16 %i.aa to i32
  %i.ac = icmp samesign ugt i32 %i.x, %i.ab
  br i1 %i.ac, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !11
  %i.af = xor i32 %i.m, -1
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = call i32 @dict_lookup(ptr noundef %i.ad, ptr noundef %i.ad, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.a) #6
  %i.aj = icmp slt i32 %i.ai, 1
  br i1 %i.aj, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !17
  store ptr %2, ptr %i.a, align 8, !tbaa !8
  %i.al = load ptr, ptr @osp, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  store ptr %i.am, ptr @osp, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) @error_object, i64 16, i1 false), !tbaa.struct !17
  %i.an = call i32 @interp(ptr noundef nonnull %2) ; 2 uses
  %i.ao = icmp eq i32 %i.an, -100
  br i1 %i.ao, label %._crit_edge, label %.lr.ph.split

switch.lookup:                                    ; preds = %bb.f
  %4 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.interpret, i64 %4
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %bb.e, %bb.d, %bb.h, %bb.g, %bb.i, %switch.lookup, %bb.b, %.lr.ph.split.us, %bb.a
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ], [ %i.g, %.lr.ph.split.us ], [ %switch.load, %switch.lookup ], [ %i.m, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.d ], [ 0, %bb.j ], [ %i.m, %bb.e ], [ %i.m, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @interp_exit(ptr readnone captures(none) %0) #5 {
bb.a:
  ret i32 -100
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 2, 0) i32 @interp(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.ref_s, align 8              ; 8 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %2 = alloca %struct.stream_s, align 8           ; 9 uses
  %i.c = load ptr, ptr @osp, align 8, !tbaa !8
  %i.d = load ptr, ptr @esp, align 8, !tbaa !8    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.e = load ptr, ptr @estop, align 8, !tbaa !8
  %.not = icmp ult ptr %i.d, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @error_object, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !17
  br label %.thread326

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !17
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %.backedge361

.backedge:                                        ; preds = %.backedge.backedge, %.backedge.preheader
  %.0258 = phi i32 [ %.0258.ph, %.backedge.preheader ], [ %.0258.be, %.backedge.backedge ] ; 32 uses
  %.0253 = phi ptr [ %.0253.ph, %.backedge.preheader ], [ %.0253.be, %.backedge.backedge ] ; 42 uses
  %.0243 = phi ptr [ %.0243.ph, %.backedge.preheader ], [ %.0243.be, %.backedge.backedge ] ; 71 uses
  %.0234 = phi ptr [ %.0234.ph, %.backedge.preheader ], [ %.0234.be, %.backedge.backedge ] ; 50 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0234, i64 8 ; 2 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !12
  %trunc = trunc i16 %i.j to i8
  switch i8 %trunc, label %bb.ca [
    i8 0, label %bb.d
    i8 1, label %bb.d
    i8 8, label %bb.d
    i8 9, label %bb.d
    i8 12, label %bb.d
    i8 13, label %bb.d
    i8 40, label %bb.d
    i8 41, label %bb.d
    i8 52, label %bb.d
    i8 53, label %bb.d
    i8 55, label %bb.bv
    i8 15, label %bb.bo
    i8 29, label %bb.at
    i8 37, label %bb.am
    i8 33, label %.backedge361.backedge
    i8 89, label %bb.ai
    i8 85, label %bb.ae
    i8 81, label %bb.aa
    i8 77, label %bb.q
    i8 73, label %bb.m
    i8 69, label %bb.i
    i8 65, label %bb.e
  ]

bb.d:                                             ; preds = %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge
  store ptr %.0243, ptr @esp, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @error_object, ptr noundef nonnull align 8 dereferenceable(16) %.0234, i64 16, i1 false), !tbaa.struct !17
  br label %.thread326

bb.e:                                             ; preds = %.backedge
  %i.k = call i32 @zadd(ptr noundef %.0253) #6    ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %.0243, ptr @esp, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @error_object, ptr noundef nonnull align 8 dereferenceable(16) %.0234, i64 16, i1 false), !tbaa.struct !17
  br label %.thread326

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds i8, ptr %.0253, i64 -16 ; 2 uses
  %i.n = add nsw i32 %.0258, -1                   ; 2 uses
  %i.o = icmp sgt i32 %.0258, 1
  br i1 %i.o, label %bb.h, label %.thread334

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.0234, i64 16
  br label %.backedge.backedge

bb.i:                                             ; preds = %.backedge
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @osp_nargs, i64 8), align 8, !tbaa !8
  %i.r = icmp ult ptr %.0253, %i.q
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %.0243, ptr @esp, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @error_object, ptr noundef nonnull align 8 dereferenceable(16) %.0234, i64 16, i1 false), !tbaa.struct !17
  br label %.thread326

bb.k:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0253, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %.0253, i64 16, i1 false), !tbaa.struct !17
  %i.t = add nsw i32 %.0258, -1                   ; 2 uses
  %i.u = icmp sgt i32 %.0258, 1
  br i1 %i.u, label %bb.l, label %.thread334

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.0234, i64 16
  br label %.backedge.backedge

bb.m:                                             ; preds = %.backedge
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @osp_nargs, i64 16), align 16, !tbaa !8
  %i.x = icmp ult ptr %.0253, %i.w
  br i1 %i.x, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr %.0243, ptr @esp, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @error_object, ptr noundef nonnull align 8 dereferenceable(16) %.0234, i64 16, i1 false), !tbaa.struct !17
  br label %.thread326

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.0253, i64 16, i1 false), !tbaa.struct !17
  %i.y = getelementptr inbounds i8, ptr %.0253, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0253, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !17
  %i.z = add nsw i32 %.0258, -1                   ; 2 uses
  %i.aa = icmp sgt i32 %.0258, 1
  br i1 %i.aa, label %bb.p, label %.thread334

bb.p:                                             ; preds = %bb.o
  %i.ab = getelementptr inbounds nuw i8, ptr %.0234, i64 16
  br label %.backedge.backedge

bb.q:                                             ; preds = %.backedge
  %i.ac = getelementptr inbounds i8, ptr %.0253, i64 -24
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !12
  %i.ae = and i16 %i.ad, 252
  %.not300 = icmp eq i16 %i.ae, 4
  br i1 %.not300, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %.0243, ptr @esp, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @error_object, ptr noundef nonnull align 8 dereferenceable(16) %.0234, i64 16, i1 false), !tbaa.struct !17
  br label %.thread326

bb.s:                                             ; preds = %bb.q
  %i.af = load ptr, ptr @estop, align 8, !tbaa !8
  %.not301 = icmp ult ptr %.0243, %i.af
  br i1 %.not301, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %.0243, ptr @esp, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @error_object, ptr noundef nonnull align 8 dereferenceable(16) %.0234, i64 16, i1 false), !tbaa.struct !17
  br label %.thread326

bb.u:                                             ; preds = %bb.s
  %i.ag = icmp sgt i32 %.0258, 0
  br i1 %i.ag, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ah = getelementptr inbounds nuw i8, ptr %.0234, i64 16
  store ptr %i.ah, ptr %.0243, align 8, !tbaa !11
  %i.ai = trunc i32 %.0258 to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %.0243, i64 10
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !16
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.ak = getelementptr inbounds i8, ptr %.0253, i64 -48 ; 4 uses
  %i.al = getelementptr inbounds i8, ptr %.0253, i64 -32
  %i.am = load i16, ptr %i.al, align 8, !tbaa !11
  %.not302 = icmp eq i16 %i.am, 0
  %.idx = select i1 %.not302, i64 0, i64 -16
  %i.an = getelementptr inbounds i8, ptr %.0253, i64 %.idx ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !12
  %trunc303 = trunc i16 %i.ap to i8
  switch i8 %trunc303, label %bb.x [
    i8 3, label %bb.y
    i8 43, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.aq = getelementptr inbounds nuw i8, ptr %.0243, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !17
  br label %.backedge.backedge

bb.y:                                             ; preds = %bb.w, %bb.w
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !11 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 10
  %i.at = load i16, ptr %i.as, align 2, !tbaa !16 ; 3 uses
  %i.au = zext i16 %i.at to i32
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
end_hunk_0
