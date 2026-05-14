inline.NumInlined: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }

@osp_nargs = external local_unnamed_addr global [6 x ptr], align 16
@esp = external local_unnamed_addr global ptr, align 8
@estop = external local_unnamed_addr global ptr, align 8
@osp = external local_unnamed_addr global ptr, align 8
@ostop = external local_unnamed_addr global ptr, align 8
@estack = external global [0 x %struct.ref_s], align 8
@zcontrol_op_init.my_defs = internal global [13 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zcountexecstack }, %struct.op_def { ptr @.str.1, ptr @zexec }, %struct.op_def { ptr @.str.2, ptr @zexecstack }, %struct.op_def { ptr @.str.3, ptr @zexit }, %struct.op_def { ptr @.str.4, ptr @zif }, %struct.op_def { ptr @.str.5, ptr @zifelse }, %struct.op_def { ptr @.str.6, ptr @zfor }, %struct.op_def { ptr @.str.7, ptr @zloop }, %struct.op_def { ptr @.str.8, ptr @zquit }, %struct.op_def { ptr @.str.9, ptr @zrepeat }, %struct.op_def { ptr @.str.10, ptr @zstop }, %struct.op_def { ptr @.str.11, ptr @zstopped }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [16 x i8] c"0countexecstack\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"1exec\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"0execstack\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"0exit\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"2if\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"3ifelse\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"4for\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"1loop\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"0quit\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"2repeat\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"0stop\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"1stopped\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -17, 2) i32 @zexec(ptr noundef readonly captures(address) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @osp_nargs, align 16, !tbaa !8
  %i.b = icmp ult ptr %0, %i.a
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @esp, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.e = load ptr, ptr @estop, align 8, !tbaa !8
  %i.f = icmp ugt ptr %i.d, %i.e
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr @esp, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !11
  %i.g = load ptr, ptr @osp, align 8, !tbaa !8
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -16
  store ptr %i.h, ptr @osp, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ -17, %bb.a ], [ -5, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 2) i32 @zif(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !15
  %i.c = and i16 %i.b, 252
  %i.d = icmp eq i16 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -16
  %i.f = load i16, ptr %i.e, align 8, !tbaa !12
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @esp, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.i = load ptr, ptr @estop, align 8, !tbaa !8
  %i.j = icmp ugt ptr %i.h, %i.i
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.h, ptr @esp, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.k = load ptr, ptr @osp, align 8, !tbaa !8
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -32
  store ptr %i.l, ptr @osp, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.a, %bb.e
  %.0 = phi i32 [ -20, %bb.a ], [ 1, %bb.e ], [ -5, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 2) i32 @zifelse(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  %i.b = getelementptr inbounds i8, ptr %0, i64 -24
  %i.c = load i16, ptr %i.b, align 8, !tbaa !15
  %i.d = and i16 %i.c, 252
  %i.e = icmp eq i16 %i.d, 4
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @esp, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.h = load ptr, ptr @estop, align 8, !tbaa !8
  %i.i = icmp ugt ptr %i.g, %i.h
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr @esp, align 8, !tbaa !8
  %i.j = load i16, ptr %i.a, align 8, !tbaa !12
  %.not = icmp eq i16 %i.j, 0
  %.sink.idx = select i1 %.not, i64 0, i64 -16
  %.sink = getelementptr inbounds i8, ptr %0, i64 %.sink.idx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %.sink, i64 16, i1 false)
  %i.k = load ptr, ptr @osp, align 8, !tbaa !8
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -48
  store ptr %i.l, ptr @osp, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ -20, %bb.a ], [ 1, %bb.c ], [ -5, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 2) i32 @zfor(ptr noundef %0) #2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.b = tail call i32 @num_params(ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef null) #7 ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @esp, align 8, !tbaa !8    ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load ptr, ptr @estop, align 8, !tbaa !8
  %i.g = icmp ugt ptr %i.e, %i.f
  br i1 %i.g, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i16 2, ptr %i.h, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i16 33, ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 7 uses
  store ptr %i.j, ptr @esp, align 8, !tbaa !8
  %i.k = getelementptr inbounds i8, ptr %0, i64 -48 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  store ptr %i.l, ptr @esp, align 8, !tbaa !8
  %i.m = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  store ptr %i.n, ptr @esp, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr %i.o, ptr @esp, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !11
  %i.p = load ptr, ptr @osp, align 8, !tbaa !8
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -64
  store ptr %i.q, ptr @osp, align 8, !tbaa !8
  %i.r = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  %i.s = icmp eq i32 %i.b, 7
  br i1 %i.s, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.j, align 8, !tbaa !12   ; 3 uses
  %i.u = load i64, ptr %i.l, align 8, !tbaa !12   ; 2 uses
  %i.v = icmp sgt i64 %i.u, -1
  %i.w = load i64, ptr %i.n, align 8, !tbaa !12   ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = icmp sgt i64 %i.t, %i.w
  br i1 %i.x, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.y = icmp slt i64 %i.t, %i.w
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.d, ptr @esp, align 8, !tbaa !8
  br label %bb.x

bb.h:                                             ; preds = %bb.f, %bb.e
  store ptr %i.k, ptr @osp, align 8, !tbaa !8
  %i.z = load ptr, ptr @ostop, align 8, !tbaa !8
  %i.aa = icmp ugt ptr %i.k, %i.z
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.r, ptr @osp, align 8, !tbaa !8
  br label %bb.x

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !11
  %i.ab = add nsw i64 %i.u, %i.t
  store i64 %i.ab, ptr %i.j, align 8, !tbaa !12
  %i.ac = load ptr, ptr @esp, align 8, !tbaa !8   ; 5 uses
  %.sroa.0.0.copyload = load <16 x i8>, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr @for_int_continue, ptr %i.ad, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i16 37, ptr %i.ae, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 26
  store i16 0, ptr %i.af, align 2, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  store ptr %i.ag, ptr @esp, align 8, !tbaa !8
  store <16 x i8> %.sroa.0.0.copyload, ptr %i.ag, align 8
  br label %bb.x

bb.k:                                             ; preds = %bb.c
  %i.ah = and i32 %i.b, 1
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load i64, ptr %i.j, align 8, !tbaa !12
  %i.aj = sitofp i64 %i.ai to float
  store float %i.aj, ptr %i.j, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i16 44, ptr %i.ak, align 8, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.al = and i32 %i.b, 2
  %.not15 = icmp eq i32 %i.al, 0
  br i1 %.not15, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !12
  %i.ao = sitofp i64 %i.an to float
  store float %i.ao, ptr %i.am, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i16 44, ptr %i.ap, align 8, !tbaa !15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aq = and i32 %i.b, 4
  %.not16 = icmp eq i32 %i.aq, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  br i1 %.not16, label %._crit_edge, label %bb.p

._crit_edge:                                      ; preds = %bb.o
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !12
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ar = load i64, ptr %.phi.trans.insert, align 8, !tbaa !12
  %i.as = sitofp i64 %i.ar to float               ; 2 uses
  store float %i.as, ptr %.phi.trans.insert, align 8, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i16 44, ptr %i.at, align 8, !tbaa !15
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.p
  %i.au = phi float [ %.pre, %._crit_edge ], [ %i.as, %bb.p ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.aw = load float, ptr %i.av, align 8, !tbaa !12 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !12 ; 2 uses
  %i.az = fcmp ult float %i.ay, 0.000000e+00
  br i1 %i.az, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = fcmp ogt float %i.aw, %i.au
  br i1 %i.ba, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bb = fcmp olt float %i.aw, %i.au
  br i1 %i.bb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  store ptr %i.d, ptr @esp, align 8, !tbaa !8
  br label %bb.x

bb.u:                                             ; preds = %bb.s, %bb.r
  store ptr %i.k, ptr @osp, align 8, !tbaa !8
  %i.bc = load ptr, ptr @ostop, align 8, !tbaa !8
  %i.bd = icmp ugt ptr %i.k, %i.bc
  br i1 %i.bd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr %i.r, ptr @osp, align 8, !tbaa !8
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !11
  %i.be = fadd float %i.aw, %i.ay
  store float %i.be, ptr %i.av, align 8, !tbaa !12
  %i.bf = load ptr, ptr @esp, align 8, !tbaa !8   ; 5 uses
  %.sroa.022.0.copyload = load <16 x i8>, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr @for_real_continue, ptr %i.bg, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i16 37, ptr %i.bh, align 8, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 26
  store i16 0, ptr %i.bi, align 2, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 2 uses
  store ptr %i.bj, ptr @esp, align 8, !tbaa !8
  store <16 x i8> %.sroa.022.0.copyload, ptr %i.bj, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t, %bb.j, %bb.i, %bb.g, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.j ], [ %i.b, %bb.a ], [ -5, %bb.b ], [ 1, %bb.g ], [ -16, %bb.i ], [ 1, %bb.t ], [ -16, %bb.v ], [ 1, %bb.w ]
  ret i32 %.0
}

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -16, 2) i32 @for_int_continue(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @esp, align 8, !tbaa !8    ; 4 uses
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 -32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !12   ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt i64 %i.c, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = icmp slt i64 %i.c, %i.h
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 -80
  store ptr %i.k, ptr @esp, align 8, !tbaa !8
  br label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.l, ptr @osp, align 8, !tbaa !8
  %i.m = load ptr, ptr @ostop, align 8, !tbaa !8
  %i.n = icmp ugt ptr %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr @osp, align 8, !tbaa !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !11
  %i.o = add nsw i64 %i.e, %i.c
  store i64 %i.o, ptr %i.b, align 8, !tbaa !12
  %i.p = load ptr, ptr @esp, align 8, !tbaa !8    ; 5 uses
  %.sroa.0.0.copyload = load <16 x i8>, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr @for_int_continue, ptr %i.q, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i16 37, ptr %i.r, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 26
  store i16 0, ptr %i.s, align 2, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  store ptr %i.t, ptr @esp, align 8, !tbaa !8
  store <16 x i8> %.sroa.0.0.copyload, ptr %i.t, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ -16, %bb.f ], [ 1, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -16, 2) i32 @for_real_continue(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @esp, align 8, !tbaa !8    ; 4 uses
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -48 ; 3 uses
  %i.c = load float, ptr %i.b, align 8, !tbaa !12 ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 -32
  %i.e = load float, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  %i.f = fcmp ult float %i.e, 0.000000e+00
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.h = load float, ptr %i.g, align 8, !tbaa !12 ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = fcmp ogt float %i.c, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = fcmp olt float %i.c, %i.h
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 -80
  store ptr %i.k, ptr @esp, align 8, !tbaa !8
  br label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.l, ptr @osp, align 8, !tbaa !8
  %i.m = load ptr, ptr @ostop, align 8, !tbaa !8
  %i.n = icmp ugt ptr %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr @osp, align 8, !tbaa !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !11
  %i.o = fadd float %i.c, %i.e
  store float %i.o, ptr %i.b, align 8, !tbaa !12
  %i.p = load ptr, ptr @esp, align 8, !tbaa !8    ; 5 uses
  %.sroa.0.0.copyload = load <16 x i8>, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr @for_real_continue, ptr %i.q, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i16 37, ptr %i.r, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 26
  store i16 0, ptr %i.s, align 2, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  store ptr %i.t, ptr @esp, align 8, !tbaa !8
  store <16 x i8> %.sroa.0.0.copyload, ptr %i.t, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ -16, %bb.f ], [ 1, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 2) i32 @zrepeat(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !15
  %i.d = and i16 %i.c, 252
  %i.e = icmp eq i16 %i.d, 20
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !12
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @esp, align 8, !tbaa !8    ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 3 uses
  %i.j = load ptr, ptr @estop, align 8, !tbaa !8
  %i.k = icmp ugt ptr %i.i, %i.j
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i16 2, ptr %i.l, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i16 33, ptr %i.m, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 4 uses
  store ptr %i.n, ptr @esp, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 3 uses
  store ptr %i.o, ptr @esp, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !11
  %i.p = load ptr, ptr @osp, align 8, !tbaa !8
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -32
  store ptr %i.q, ptr @osp, align 8, !tbaa !8
  %i.r = load i64, ptr %i.n, align 8, !tbaa !12   ; 2 uses
  %i.s = add nsw i64 %i.r, -1
  store i64 %i.s, ptr %i.n, align 8, !tbaa !12
  %i.t = icmp sgt i64 %i.r, 0
  br i1 %i.t, label %bb.e, label %repeat_continue.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr @repeat_continue, ptr %i.u, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i16 37, ptr %i.v, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 74
  store i16 0, ptr %i.w, align 2, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  br label %repeat_continue.exit

repeat_continue.exit:                             ; preds = %bb.d, %bb.e
  %.sink.i = phi ptr [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  store ptr %.sink.i, ptr @esp, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a, %repeat_continue.exit
  %.0 = phi i32 [ -20, %bb.a ], [ -15, %bb.b ], [ 1, %repeat_continue.exit ], [ -5, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @repeat_continue(ptr readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @esp, align 8, !tbaa !8    ; 2 uses
  %.sroa.0.0.copyload = load <16 x i8>, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = add nsw i64 %i.c, -1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !12
  %i.e = icmp sgt i64 %i.c, 0
  %i.f = load ptr, ptr @esp, align 8, !tbaa !8    ; 5 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr @repeat_continue, ptr %i.g, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i16 37, ptr %i.h, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 26
  store i16 0, ptr %i.i, align 2, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store <16 x i8> %.sroa.0.0.copyload, ptr %i.j, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 -48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %i.j, %bb.b ], [ %i.k, %bb.c ]
  store ptr %.sink, ptr @esp, align 8, !tbaa !8
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -17, 2) i32 @zloop(ptr noundef readonly captures(address) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @osp_nargs, align 16, !tbaa !8
  %i.b = icmp ult ptr %0, %i.a
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @esp, align 8, !tbaa !8    ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  %i.e = load ptr, ptr @estop, align 8, !tbaa !8
  %i.f = icmp ugt ptr %i.d, %i.e
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i16 2, ptr %i.g, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i16 33, ptr %i.h, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store ptr %i.i, ptr @esp, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !11
  %i.j = load ptr, ptr @osp, align 8, !tbaa !8
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -16
  store ptr %i.k, ptr @osp, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr @loop_continue, ptr %i.l, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i16 37, ptr %i.m, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 58
  store i16 0, ptr %i.n, align 2, !tbaa !17
  store ptr %i.d, ptr @esp, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ -17, %bb.a ], [ -5, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @loop_continue(ptr readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @esp, align 8, !tbaa !8    ; 5 uses
  %.sroa.0.0.copyload = load <16 x i8>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @loop_continue, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 37, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i16 0, ptr %i.d, align 2, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.e, ptr @esp, align 8, !tbaa !8
  store <16 x i8> %.sroa.0.0.copyload, ptr %i.e, align 8
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -8, 2) i32 @zexit(ptr readnone captures(none) %0) #4 {
bb.a:
  %i.a = load ptr, ptr @esp, align 8, !tbaa !8    ; 2 uses
  %.not6 = icmp ult ptr %i.a, @estack
  br i1 %.not6, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.07 = phi ptr [ %i.f, %bb.d ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.07, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !15
  %i.d = and i16 %i.c, 252
  %i.e = icmp eq i16 %i.d, 32
  %i.f = getelementptr inbounds i8, ptr %.07, i64 -16 ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.g = load i16, ptr %.07, align 8, !tbaa !12
  switch i16 %i.g, label %bb.d [
    i16 2, label %bb.c
    i16 3, label %.loopexit
  ]

bb.c:                                             ; preds = %bb.b
  store ptr %i.f, ptr @esp, align 8, !tbaa !8
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph, %bb.b
  %.not = icmp ult ptr %i.f, @estack
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !18

.loopexit:                                        ; preds = %bb.b, %bb.d, %bb.a, %bb.c
  %.05 = phi i32 [ 1, %bb.c ], [ -8, %bb.a ], [ -8, %bb.d ], [ -8, %bb.b ]
  ret i32 %.05
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -16, 2) i32 @zstop(ptr noundef %0) #5 {
bb.a:
  %i.a = load ptr, ptr @esp, align 8, !tbaa !8    ; 2 uses
  %.not11 = icmp ult ptr %i.a, @estack
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.012 = phi ptr [ %i.m, %bb.f ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.012, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !15
  %i.d = and i16 %i.c, 252
  %i.e = icmp eq i16 %i.d, 32
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.f = load i16, ptr %.012, align 8, !tbaa !12
  %i.g = icmp eq i16 %i.f, 3
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %.012, i64 -16
  store ptr %i.h, ptr @esp, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr @osp, align 8, !tbaa !8
  %i.j = load ptr, ptr @ostop, align 8, !tbaa !8
  %i.k = icmp ugt ptr %i.i, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr @osp, align 8, !tbaa !8
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  store i16 1, ptr %i.i, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 4, ptr %i.l, align 8, !tbaa !15
  br label %.loopexit

bb.f:                                             ; preds = %bb.b, %.lr.ph
  %i.m = getelementptr inbounds i8, ptr %.012, i64 -16 ; 2 uses
  %.not = icmp ult ptr %i.m, @estack
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !20

.loopexit:                                        ; preds = %bb.f, %bb.a, %bb.e, %bb.d
  %.08 = phi i32 [ -16, %bb.d ], [ 1, %bb.e ], [ -8, %bb.a ], [ -8, %bb.f ]
  ret i32 %.08
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -17, 2) i32 @zstopped(ptr noundef readonly captures(address) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @osp_nargs, align 16, !tbaa !8
  %i.b = icmp ult ptr %0, %i.a
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @esp, align 8, !tbaa !8    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.e = load ptr, ptr @estop, align 8, !tbaa !8
  %i.f = icmp ugt ptr %i.d, %i.e
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i16 3, ptr %i.g, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i16 33, ptr %i.h, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i16 0, ptr %i.i, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i16 4, ptr %i.j, align 8, !tbaa !15
  store ptr %i.d, ptr @esp, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !11
  %i.k = load ptr, ptr @osp, align 8, !tbaa !8
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -16
  store ptr %i.l, ptr @osp, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ -17, %bb.a ], [ -5, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -16, 1) i32 @zcountexecstack(ptr noundef %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr @osp, align 8, !tbaa !8
  %i.b = load ptr, ptr @ostop, align 8, !tbaa !8
  %i.c = icmp ugt ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @osp, align 8, !tbaa !8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @esp, align 8, !tbaa !8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = sub i64 %i.e, ptrtoint (ptr @estack to i64)
  %i.g = ashr exact i64 %i.f, 4
  %i.h = add nsw i64 %i.g, 1
  store i64 %i.h, ptr %i.a, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 20, ptr %i.i, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -16, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 2) i32 @zexecstack(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @esp, align 8, !tbaa !8    ; 4 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = sub i64 %i.b, ptrtoint (ptr @estack to i64)
  %i.d = lshr exact i64 %i.c, 4
  %i.e = trunc i64 %i.d to i32
  %i.f = add i32 %i.e, 1                          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i16, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %i.i = zext i16 %i.h to i32                     ; 2 uses
  %i.j = and i32 %i.i, 252
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.l = and i32 %i.i, 256
  %.not.not = icmp eq i32 %i.l, 0
  br i1 %.not.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !17
  %i.o = zext i16 %i.n to i32
  %i.p = icmp sgt i32 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr @estop, align 8, !tbaa !8
  %.not = icmp ugt ptr %i.q, @estack
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = trunc i32 %i.f to i16
  store i16 %i.r, ptr %i.m, align 2, !tbaa !17
  %i.s = or i16 %i.h, -32768
  store i16 %i.s, ptr %i.g, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.t, ptr @esp, align 8, !tbaa !8
  store ptr @continue_execstack, ptr %i.t, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 37, ptr %i.u, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i16 0, ptr %i.v, align 2, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
end_hunk_0
